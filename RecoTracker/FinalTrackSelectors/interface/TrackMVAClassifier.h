#ifndef RecoTracker_FinalTrackSelectors_TrackMVAClassifierBase_h
#define RecoTracker_FinalTrackSelectors_TrackMVAClassifierBase_h


#include "DataFormats/TrackReco/interface/TrackFwd.h"
#include "DataFormats/VertexReco/interface/VertexFwd.h"
#include "DataFormats/BeamSpot/interface/BeamSpot.h"


#include "FWCore/Framework/interface/stream/EDProducer.h"
#include "FWCore/Framework/interface/Event.h"
#include "FWCore/ParameterSet/interface/ParameterSet.h"
#include "FWCore/ParameterSet/interface/ParameterSetDescription.h"
#include "FWCore/ParameterSet/interface/ConfigurationDescriptions.h"

#include "FWCore/Utilities/interface/InputTag.h"

#include "CondFormats/EgammaObjects/interface/GBRForest.h"

#include <vector>
#include <memory>

class TrackMVAClassifierBase : public edm::stream::EDProducer<> {
public:
  explicit TrackMVAClassifierBase( const edm::ParameterSet & cfg );
  ~TrackMVAClassifierBase() override;
protected:

  static void fill( edm::ParameterSetDescription& desc);
 
  
  using MVACollection = std::vector<float>;
  using QualityMaskCollection = std::vector<unsigned char>;

  virtual void initEvent(const edm::EventSetup& es) = 0;

  virtual void computeMVA(reco::TrackCollection const & tracks,
			  reco::BeamSpot const & beamSpot,
			  reco::VertexCollection const & vertices,
			  MVACollection & mvas) const = 0;

private:
  void produce(edm::Event& evt, const edm::EventSetup& es ) final;

  /// source collection label
  edm::EDGetTokenT<reco::TrackCollection> src_;
  edm::EDGetTokenT<reco::BeamSpot> beamspot_;
  edm::EDGetTokenT<reco::VertexCollection> vertices_;

  bool ignoreVertices_;

  // MVA

  // qualitycuts (loose, tight, hp)
  float qualityCuts[3];
  
};

template<typename MVA>
class TrackMVAClassifier : public TrackMVAClassifierBase {
public:
  explicit TrackMVAClassifier( const edm::ParameterSet & cfg ) :
    TrackMVAClassifierBase(cfg),
    mva(cfg.getParameter<edm::ParameterSet>("mva")){}

    static void fillDescriptions(edm::ConfigurationDescriptions& descriptions) {
      edm::ParameterSetDescription desc;
      fill(desc);
      edm::ParameterSetDescription mvaDesc;
      MVA::fillDescriptions(mvaDesc);
      desc.add<edm::ParameterSetDescription>("mva",mvaDesc);
      descriptions.add(MVA::name(), desc);
    }

  
private:
    void beginStream(edm::StreamID) final {
      mva.beginStream();
    }

    void initEvent(const edm::EventSetup& es) final {
      mva.initEvent(es);
    }

    void computeMVA(reco::TrackCollection const & tracks,
		    reco::BeamSpot const & beamSpot,
		    reco::VertexCollection const & vertices,
		    MVACollection & mvas) const final {

      size_t current = 0;
      for (auto const & trk : tracks) {
	mvas[current++]= mva(trk,beamSpot,vertices);
      }
    }

  MVA mva;
};



#endif //  RecoTracker_FinalTrackSelectors_TrackMVAClassifierBase_h

