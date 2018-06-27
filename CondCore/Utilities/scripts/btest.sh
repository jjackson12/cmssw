#!/bin/bash

rm -r AllPlots-PNG
mkdir AllPlots-PNG

rm -r *.png

#*EcalChannelStatus
#EcalChannelStatusEBMap
#EcalChannelStatusEEMap
#EcalChannelStatusEBDiff
#EcalChannelStatusEEDiff
#EcalChannelStatusSummaryPlot
./getPayloadData.py --plugin pluginEcalChannelStatus_PayloadInspector --plot plot_EcalChannelStatusEBMap --tag EcalChannelStatus_2009_v1_hlt --time_type Run --iovs '{"start_iov": "121265", "end_iov": "121265"}' --db Prod --test
mv *.png plot_EcalChannelStatusEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalChannelStatus_PayloadInspector --plot plot_EcalChannelStatusEEMap --tag EcalChannelStatus_2009_v1_hlt --time_type Run --iovs '{"start_iov": "121265", "end_iov": "121265"}' --db Prod --test
mv *.png plot_EcalChannelStatusEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalChannelStatus_PayloadInspector --plot plot_EcalChannelStatusEBDiff --tag EcalChannelStatus_2009_v1_hlt --time_type Run --iovs '{"start_iov": "121265", "end_iov": "122510"}' --db Prod --test
mv *.png plot_EcalChannelStatusEBDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalChannelStatus_PayloadInspector --plot plot_EcalChannelStatusEEDiff --tag EcalChannelStatus_2009_v1_hlt --time_type Run --iovs '{"start_iov": "121265", "end_iov": "122510"}' --db Prod --test
mv *.png plot_EcalChannelStatusEEDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalChannelStatus_PayloadInspector --plot plot_EcalChannelStatusSummaryPlot --tag EcalChannelStatus_2009_v1_hlt --time_type Run --iovs '{"start_iov": "121265", "end_iov": "121265"}' --db Prod --test
mv *.png plot_EcalChannelStatusSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalDQMChannelStatus
#EcalDQMChannelStatusEBMap
#EcalDQMChannelStatusEEMap
#EcalDQMChannelStatusEBDiff
#EcalDQMChannelStatusEEDiff
./getPayloadData.py --plugin pluginEcalDQMChannelStatus_PayloadInspector --plot plot_EcalDQMChannelStatusEBMap --tag EcalDQMChannelStatus_v1_hlt --time_type Run --iovs '{"start_iov": "297429", "end_iov": "297429"}' --db Prod --test
mv *.png plot_EcalDQMChannelStatusEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalDQMChannelStatus_PayloadInspector --plot plot_EcalDQMChannelStatusEEMap --tag EcalDQMChannelStatus_v1_hlt --time_type Run --iovs '{"start_iov": "297429", "end_iov": "297429"}' --db Prod --test
mv *.png plot_EcalDQMChannelStatusEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalDQMChannelStatus_PayloadInspector --plot plot_EcalDQMChannelStatusEBDiff --tag EcalDQMChannelStatus_v1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "297429"}' --db Prod --test
mv *.png plot_EcalDQMChannelStatusEBDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalDQMChannelStatus_PayloadInspector --plot plot_EcalDQMChannelStatusEEDiff --tag EcalDQMChannelStatus_v1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "297429"}' --db Prod --test
mv *.png plot_EcalDQMChannelStatusEEDiff.png
mv *.png AllPlots-PNG/



#*EcalDQMTowerStatus
#EcalDQMTowerStatusPlot
#EcalDQMTowerStatusDiffPlot
./getPayloadData.py --plugin pluginEcalDQMTowerStatus_PayloadInspector --plot plot_EcalDQMTowerStatusPlot --tag EcalDQMTowerStatus_v1_hlt --time_type Run --iovs '{"start_iov": "123575", "end_iov": "123575"}' --db Prod --test
mv *.png plot_EcalDQMTowerStatusPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalDQMTowerStatus_PayloadInspector --plot plot_EcalDQMTowerStatusDiffPlot --tag EcalDQMTowerStatus_v1_hlt --time_type Run --iovs '{"start_iov": "123575", "end_iov": "194270"}' --db Prod --test
mv *.png plot_EcalDQMTowerStatusDiffPlot.png
mv *.png AllPlots-PNG/



#*EcalGainRatios
#EcalGainRatiosPlot
#EcalGainRatiosDiff
./getPayloadData.py --plugin pluginEcalGainRatios_PayloadInspector --plot plot_EcalGainRatiosPlot --tag EcalGainRatios_TestPulse_v1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalGainRatiosPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalGainRatios_PayloadInspector --plot plot_EcalGainRatiosDiff --tag EcalGainRatios_TestPulse_v1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "164748"}' --db Prod --test
mv *.png plot_EcalGainRatiosDiff.png
mv *.png AllPlots-PNG/


#*EcalIntercalibConstants
#EcalIntercalibConstantsEBMap
#EcalIntercalibConstantsEEMap
#EcalIntercalibConstantsPlot
#EcalIntercalibConstantsDiff
#EcalIntercalibConstantsSummaryPlot
./getPayloadData.py --plugin pluginEcalIntercalibConstants_PayloadInspector --plot plot_EcalIntercalibConstantsEBMap --tag EcalIntercalibConstants_V1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "239579"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstants_PayloadInspector --plot plot_EcalIntercalibConstantsEEMap --tag EcalIntercalibConstants_V1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "239579"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstants_PayloadInspector --plot plot_EcalIntercalibConstantsPlot --tag EcalIntercalibConstants_V1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "239579"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstants_PayloadInspector --plot plot_EcalIntercalibConstantsDiff --tag EcalIntercalibConstants_V1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "239579"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstants_PayloadInspector --plot plot_EcalIntercalibConstantsSummaryPlot --tag EcalIntercalibConstants_V1_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "239579"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalIntercalibConstantsMC
#EcalIntercalibConstantsMCEBMap
#EcalIntercalibConstantsMCEEMap
#EcalIntercalibConstantsMCPlot
#EcalIntercalibConstantsMCDiff
#EcalIntercalibConstantsMCSummaryPlot
./getPayloadData.py --plugin pluginEcalIntercalibConstantsMC_PayloadInspector --plot plot_EcalIntercalibConstantsMCEBMap --tag EcalIntercalibConstantsMC_TL4500_upgrade_8deg_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsMCEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstantsMC_PayloadInspector --plot plot_EcalIntercalibConstantsMCEEMap --tag EcalIntercalibConstantsMC_TL4500_upgrade_8deg_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsMCEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstantsMC_PayloadInspector --plot plot_EcalIntercalibConstantsMCPlot --tag EcalIntercalibConstantsMC_TL4500_upgrade_8deg_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsMCPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstantsMC_PayloadInspector --plot plot_EcalIntercalibConstantsMCDiff --tag EcalIntercalibConstantsMC_TL4500_upgrade_8deg_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsMCDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibConstantsMC_PayloadInspector --plot plot_EcalIntercalibConstantsMCSummaryPlot --tag EcalIntercalibConstantsMC_TL4500_upgrade_8deg_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibConstantsMCSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalIntercalibErrors
#EcalIntercalibErrorsEBMap
#EcalIntercalibErrorsEEMap
#EcalIntercalibErrorsPlot
#EcalIntercalibErrorsDiff
#EcalIntercalibErrorsSummaryPlot
./getPayloadData.py --plugin pluginEcalIntercalibErrors_PayloadInspector --plot plot_EcalIntercalibErrorsEBMap --tag EcalIntercalibErrors_v1_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibErrorsEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibErrors_PayloadInspector --plot plot_EcalIntercalibErrorsEEMap --tag EcalIntercalibErrors_v1_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibErrorsEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibErrors_PayloadInspector --plot plot_EcalIntercalibErrorsPlot --tag EcalIntercalibErrors_v1_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibErrorsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibErrors_PayloadInspector --plot plot_EcalIntercalibErrorsDiff --tag EcalIntercalibErrors_v1_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibErrorsDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalIntercalibErrors_PayloadInspector --plot plot_EcalIntercalibErrorsSummaryPlot --tag EcalIntercalibErrors_v1_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalIntercalibErrorsSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalLaserAPDPNRatios
#EcalLaserAPDPNRatiosEBMap
#EcalLaserAPDPNRatiosEEMap
#EcalLaserAPDPNRatiosPlot
#EcalLaserAPDPNRatiosDiff
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatios_PayloadInspector --plot plot_EcalLaserAPDPNRatiosEBMap --tag EcalLaserAPDPNRatios_20130130_447_p1_v2_run_194533_200519_206859_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatios_PayloadInspector --plot plot_EcalLaserAPDPNRatiosEEMap --tag EcalLaserAPDPNRatios_20130130_447_p1_v2_run_194533_200519_206859_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatios_PayloadInspector --plot plot_EcalLaserAPDPNRatiosPlot --tag EcalLaserAPDPNRatios_20130130_447_p1_v2_run_194533_200519_206859_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatios_PayloadInspector --plot plot_EcalLaserAPDPNRatiosDiff --tag EcalLaserAPDPNRatios_20130130_447_p1_v2_run_194533_200519_206859_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "203768"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosDiff.png
mv *.png AllPlots-PNG/


#*EcalLaserAPDPNRatiosRef
#EcalLaserAPDPNRatiosRefEBMap
#EcalLaserAPDPNRatiosRefEEMap
#EcalLaserAPDPNRatiosRefPlot
#EcalLaserAPDPNRatiosRefDiff
#EcalLaserAPDPNRatiosRefSummaryPlot
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatiosRef_PayloadInspector --plot plot_EcalLaserAPDPNRatiosRefEBMap --tag EcalLaserAPDPNRatiosRef_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosRefEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatiosRef_PayloadInspector --plot plot_EcalLaserAPDPNRatiosRefEEMap --tag EcalLaserAPDPNRatiosRef_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosRefEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatiosRef_PayloadInspector --plot plot_EcalLaserAPDPNRatiosRefPlot --tag EcalLaserAPDPNRatiosRef_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosRefPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatiosRef_PayloadInspector --plot plot_EcalLaserAPDPNRatiosRefDiff --tag EcalLaserAPDPNRatiosRef_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosRefDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAPDPNRatiosRef_PayloadInspector --plot plot_EcalLaserAPDPNRatiosRefSummaryPlot --tag EcalLaserAPDPNRatiosRef_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAPDPNRatiosRefSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalLaserAlphas
#EcalLaserAlphasEBMap
#EcalLaserAlphasEEMap
#EcalLaserAlphasPlot
#EcalLaserAlphasDiff
#EcalLaserAlphasSummaryPlot
./getPayloadData.py --plugin pluginEcalLaserAlphas_PayloadInspector --plot plot_EcalLaserAlphasEBMap --tag EcalLaserAlphas_eflow_EBperchan_EEpereta --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAlphasEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAlphas_PayloadInspector --plot plot_EcalLaserAlphasEEMap --tag EcalLaserAlphas_eflow_EBperchan_EEpereta --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAlphasEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAlphas_PayloadInspector --plot plot_EcalLaserAlphasPlot --tag EcalLaserAlphas_v1_hlt --time_type Run --iovs '{"start_iov": "164677", "end_iov": "164677"}' --db Prod --test
mv *.png plot_EcalLaserAlphasPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAlphas_PayloadInspector --plot plot_EcalLaserAlphasDiff --tag EcalLaserAlphas_eflow_EBperchan_EEpereta --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAlphasDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLaserAlphas_PayloadInspector --plot plot_EcalLaserAlphasSummaryPlot --tag EcalLaserAlphas_eflow_EBperchan_EEpereta --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLaserAlphasSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalLinearCorrections
#EcalLinearCorrectionsPlot
#EcalLinearCorrectionsDiff
./getPayloadData.py --plugin pluginEcalLinearCorrections_PayloadInspector --plot plot_EcalLinearCorrectionsPlot --tag EcalLinearCorrections_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLinearCorrectionsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalLinearCorrections_PayloadInspector --plot plot_EcalLinearCorrectionsDiff --tag EcalLinearCorrections_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalLinearCorrectionsDiff.png
mv *.png AllPlots-PNG/


#*EcalPFRecHitThresholds
#EcalPFRecHitThresholdsEBMap
#EcalPFRecHitThresholdsEEMap
#EcalPFRecHitThresholdsPlot
#EcalPFRecHitThresholdsDiff
#EcalPFRecHitThresholdsSummaryPlot
./getPayloadData.py --plugin pluginEcalPFRecHitThresholds_PayloadInspector --plot plot_EcalPFRecHitThresholdsEBMap --tag EcalPFRecHitThresholds_2018_def_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalPFRecHitThresholdsEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPFRecHitThresholds_PayloadInspector --plot plot_EcalPFRecHitThresholdsEEMap --tag EcalPFRecHitThresholds_2018_def_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalPFRecHitThresholdsEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPFRecHitThresholds_PayloadInspector --plot plot_EcalPFRecHitThresholdsPlot --tag EcalPFRecHitThresholds_2018_def_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalPFRecHitThresholdsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPFRecHitThresholds_PayloadInspector --plot plot_EcalPFRecHitThresholdsDiff --tag EcalPFRecHitThresholds_2018_def_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalPFRecHitThresholdsDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPFRecHitThresholds_PayloadInspector --plot plot_EcalPFRecHitThresholdsSummaryPlot --tag EcalPFRecHitThresholds_2018_def_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalPFRecHitThresholdsSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalPedestals
#EcalPedestalsHist
#EcalPedestalsPlot
#EcalPedestalsDiff
#EcalPedestalsEBMean12Map
#EcalPedestalsEBMean6Map
#EcalPedestalsEBMean1Map
#EcalPedestalsEEMean12Map
#EcalPedestalsEEMean6Map
#EcalPedestalsEEMean1Map
#EcalPedestalsEBRMS12Map
#EcalPedestalsEBRMS6Map
#EcalPedestalsEBRMS1Map
#EcalPedestalsEERMS12Map
#EcalPedestalsEERMS6Map
#EcalPedestalsEERMS1Map
#EcalPedestalsSummaryPlot
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsHist --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsHist.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsPlot --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsDiff --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "300666"}' --db Prod --test
mv *.png plot_EcalPedestalsDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEBMean12Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEBMean12Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEBMean6Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEBMean1Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEBMean1Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEBMean1Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEEMean12Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEEMean12Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEEMean6Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEEMean6Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEEMean1Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEEMean1Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEBRMS12Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEBRMS12Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEBRMS6Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEBRMS6Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEBRMS1Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEBRMS1Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEERMS12Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEERMS12Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEERMS6Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEERMS6Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsEERMS1Map --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsEERMS1Map.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPedestals_PayloadInspector --plot plot_EcalPedestalsSummaryPlot --tag EcalPedestals_hlt --time_type Run --iovs '{"start_iov": "297681", "end_iov": "297681"}' --db Prod --test
mv *.png plot_EcalPedestalsSummaryPlot.png
mv *.png AllPlots-PNG/

#*EcalPulseShapes
#EcalPulseShapesPlot
#EcalPulseShapesProfile
./getPayloadData.py --plugin pluginEcalPulseShapes_PayloadInspector --plot plot_EcalPulseShapesPlot --tag EcalPulseShapes_hlt --time_type Run --iovs '{"start_iov": "256514", "end_iov": "256514"}' --db Prod --test
mv *.png plot_EcalPulseShapesPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPulseShapes_PayloadInspector --plot plot_EcalPulseShapesProfile --tag EcalPulseShapes_hlt --time_type Run --iovs '{"start_iov": "256514", "end_iov": "256514"}' --db Prod --test
mv *.png plot_EcalPulseShapesProfile.png
mv *.png AllPlots-PNG/


#*EcalTPGCrystalStatus
#EcalTPGCrystalStatusPlot
#EcalTPGCrystalStatusDiff
#EcalTPGCrystalStatusSummaryPlot
./getPayloadData.py --plugin pluginEcalTPGCrystalStatus_PayloadInspector --plot plot_EcalTPGCrystalStatusPlot --tag EcalTPGCrystalStatus_v2_hlt --time_type Run --iovs '{"start_iov": "132834", "end_iov": "132834"}' --db Prod --test
mv *.png plot_EcalTPGCrystalStatusPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGCrystalStatus_PayloadInspector --plot plot_EcalTPGCrystalStatusDiff --tag EcalTPGCrystalStatus_v2_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "132834"}' --db Prod --test
mv *.png plot_EcalTPGCrystalStatusDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGCrystalStatus_PayloadInspector --plot plot_EcalTPGCrystalStatusSummaryPlot --tag EcalTPGCrystalStatus_v2_hlt --time_type Run --iovs '{"start_iov": "132834", "end_iov": "132834"}' --db Prod --test
mv *.png plot_EcalTPGCrystalStatusSummaryPlot.png
mv *.png AllPlots-PNG/


#/*EcalTPGFineGrainEBGroup
#EcalTPGFineGrainEBGroupPlot
./getPayloadData.py --plugin pluginEcalTPGFineGrainEBGroup_PayloadInspector --plot plot_EcalTPGFineGrainEBGroupPlot --tag EcalTPGFineGrainEBGroup_v2_hlt --time_type Run --iovs '{"start_iov": "314047", "end_iov": "314047"}' --db Prod --test
mv *.png plot_EcalTPGFineGrainEBGroupPlot.png
mv *.png AllPlots-PNG/


#/*EcalTPGFineGrainEBIdMap
#EcalTPGFineGrainEBIdPlot
./getPayloadData.py --plugin pluginEcalTPGFineGrainEBIdMap_PayloadInspector --plot plot_EcalTPGFineGrainEBIdMapPlot --tag 	EcalTPGFineGrainEBIdMap_v2_hlt --time_type Run --iovs '{"start_iov": "314890", "end_iov": "314890"}' --db Prod --test
mv *.png plot_EcalTPGFineGrainEBIdPlot.png
mv *.png AllPlots-PNG/


#*EcalTPGFineGrainStripEE
#EcalTPGFineGrainStripEEPlot
./getPayloadData.py --plugin pluginEcalTPGFineGrainStripEE_PayloadInspector --plot plot_EcalTPGFineGrainStripEEPlot --tag EcalTPGFineGrainStripEE_v2_hlt --time_type Run --iovs '{"start_iov": "317590", "end_iov": "317590"}' --db Prod --test
mv *.png plot_EcalTPGFineGrainStripEEPlot.png
mv *.png AllPlots-PNG/


#/*EcalTPGFineGrainTowerEE
#EcalTPGFineGrainTowerEEPlot
./getPayloadData.py --plugin pluginEcalTPGFineGrainTowerEE_PayloadInspector --plot plot_EcalTPGFineGrainTowerEEPlot --tag EcalTPGFineGrainTowerEE_hlt --time_type Run --iovs '{"start_iov": "117194", "end_iov": "117194"}' --db Prod --test
mv *.png plot_EcalTPGFineGrainTowerEEPlot.png
mv *.png AllPlots-PNG/


#*EcalTPGLinearizationConst
#EcalTPGLinearizationConstPlot
#EcalTPGLinearizationConstDiff
./getPayloadData.py --plugin pluginEcalTPGLinearizationConst_PayloadInspector --plot plot_EcalTPGLinearizationConstPlot --tag EcalTPGLinearizationConst_hlt --time_type Run --iovs '{"start_iov": "98273", "end_iov": "98273"}' --db Prod --test
mv *.png plot_EcalTPGLinearizationConstPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGLinearizationConst_PayloadInspector --plot plot_EcalTPGLinearizationConstDiff --tag EcalTPGLinearizationConst_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "109418"}' --db Prod --test
mv *.png plot_EcalTPGLinearizationConstDiff.png
mv *.png AllPlots-PNG/


#EcalTPGLutGroup
#EcalTPGLutGroupPlot
./getPayloadData.py --plugin pluginEcalTPGLutGroup_PayloadInspector --plot plot_EcalTPGLutGroupPlot --tag EcalTPGLutGroup_hlt --time_type Run --iovs '{"start_iov": "109418", "end_iov": "109418"}' --db Prod --test
mv *.png plot_EcalTPGLutGroupPlot.png
mv *.png AllPlots-PNG/


#*EcalTPGPedestals
#EcalTPGPedestalsPlot
#EcalTPGPedestalsDiff
./getPayloadData.py --plugin pluginEcalTPGPedestals_PayloadInspector --plot plot_EcalTPGPedestalsPlot --tag EcalTPGPedestals_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTPGPedestalsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGPedestals_PayloadInspector --plot plot_EcalTPGPedestalsDiff --tag EcalTPGPedestals_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "98273"}' --db Prod --test
mv *.png plot_EcalTPGPedestalsDiff.png
mv *.png AllPlots-PNG/


#*EcalTPGStripStatus
#EcalTPGStripStatusPlot
#EcalTPGStripStatusDiff
#EcalTPGStripStatusSummaryPlot
./getPayloadData.py --plugin pluginEcalTPGStripStatus_PayloadInspector --plot plot_EcalTPGStripStatusPlot --tag EcalTPGStripStatus_v3_hlt --time_type Run --iovs '{"start_iov": "307326", "end_iov": "307326"}' --db Prod --test
mv *.png plot_EcalTPGStripStatusPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGStripStatus_PayloadInspector --plot plot_EcalTPGStripStatusDiff --tag EcalTPGStripStatus_v3_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "307326"}' --db Prod --test
mv *.png plot_EcalTPGStripStatusDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGStripStatus_PayloadInspector --plot plot_EcalTPGStripStatusSummaryPlot --tag EcalTPGStripStatus_v3_hlt --time_type Run --iovs '{"start_iov": "307326", "end_iov": "307326"}' --db Prod --test
mv *.png plot_EcalTPGStripStatusSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalTPGTowerStatus
#EcalTPGTowerStatusPlot
#EcalTPGTowerStatusDiff
#EcalTPGTowerStatusSummaryPlot
./getPayloadData.py --plugin pluginEcalTPGTowerStatus_PayloadInspector --plot plot_EcalTPGTowerStatusPlot --tag EcalTPGTowerStatus_hlt_100430V0 --time_type Run --iovs '{"start_iov": "109418", "end_iov": "109418"}' --db Prod --test
mv *.png plot_EcalTPGTowerStatusPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGTowerStatus_PayloadInspector --plot plot_EcalTPGTowerStatusDiff --tag EcalTPGTowerStatus_hlt_100430V0 --time_type Run --iovs '{"start_iov": "1", "end_iov": "109418"}' --db Prod --test
mv *.png plot_EcalTPGTowerStatusDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTPGTowerStatus_PayloadInspector --plot plot_EcalTPGTowerStatusSummaryPlot --tag EcalTPGTowerStatus_hlt_100430V0 --time_type Run --iovs '{"start_iov": "109418", "end_iov": "109418"}' --db Prod --test
mv *.png plot_EcalTPGTowerStatusSummaryPlot.png
mv *.png AllPlots-PNG/


#EcalTPGWeightGroup
#EcalTPGWeightGroupPlot
./getPayloadData.py --plugin pluginEcalTPGWeightGroup_PayloadInspector --plot plot_EcalTPGWeightGroupPlot --tag EcalTPGWeightGroup_hlt --time_type Run --iovs '{"start_iov": "117194", "end_iov": "117194"}' --db Prod --test
mv *.png plot_EcalTPGWeightGroupPlot.png
mv *.png AllPlots-PNG/


#*EcalTimeCalibConstants
#EcalTimeCalibConstantsEBMap
#EcalTimeCalibConstantsEEMap
#EcalTimeCalibConstantsPlot
#EcalTimeCalibConstantsDiff
#EcalTimeCalibConstantsSummaryPlot
./getPayloadData.py --plugin pluginEcalTimeCalibConstants_PayloadInspector --plot plot_EcalTimeCalibConstantsEBMap --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibConstantsEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibConstants_PayloadInspector --plot plot_EcalTimeCalibConstantsEEMap --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibConstantsEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibConstants_PayloadInspector --plot plot_EcalTimeCalibConstantsPlot --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibConstantsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibConstants_PayloadInspector --plot plot_EcalTimeCalibConstantsDiff --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibConstantsDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibConstants_PayloadInspector --plot plot_EcalTimeCalibConstantsSummaryPlot --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibConstantsSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalTimeCalibErrors
#EcalTimeCalibErrorsEBMap
#EcalTimeCalibErrorsEEMap
#EcalTimeCalibErrorsPlot
#EcalTimeCalibErrorsDiff
#EcalTimeCalibErrorsSummaryPlot
./getPayloadData.py --plugin pluginEcalTimeCalibErrors_PayloadInspector --plot plot_EcalTimeCalibErrorsEBMap --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibErrorsEBMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibErrors_PayloadInspector --plot plot_EcalTimeCalibErrorsEEMap --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibErrorsEEMap.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibErrors_PayloadInspector --plot plot_EcalTimeCalibErrorsPlot --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibErrorsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibErrors_PayloadInspector --plot plot_EcalTimeCalibErrorsDiff --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibErrorsDiff.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeCalibErrors_PayloadInspector --plot plot_EcalTimeCalibErrorsSummaryPlot --tag EcalTimeCalibConstants_v3_hlt --time_type Run --iovs '{"start_iov": "189169", "end_iov": "203943"}' --db Prod --test
mv *.png plot_EcalTimeCalibErrorsSummaryPlot.png
mv *.png AllPlots-PNG/


#/*EcalWeightXtalGroups
#EcalWeightXtalGroupsPlot
./getPayloadData.py --plugin pluginEcalWeightXtalGroups_PayloadInspector --plot plot_EcalWeightXtalGroupsPlot --tag EcalWeightXtalGroups_EBEE_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalWeightXtalGroupsPlot.png
mv *.png AllPlots-PNG/



#*EcalPulseCovariances
#EcalPulseCovariancesPlot
#EcalPulseCovariancesMatrix
./getPayloadData.py --plugin pluginEcalPulseCovariances_PayloadInspector --plot plot_EcalPulseCovariancesPlot --tag EcalPulseCovariances_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalPulseCovariancesPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalPulseCovariances_PayloadInspector --plot plot_EcalPulseCovariancesMatrix --tag EcalPulseCovariances_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalPulseCovariancesMatrix.png
mv *.png AllPlots-PNG/


#*EcalTPGPhysicsConst
#EcalTPGPhysicsConstPlot
./getPayloadData.py --plugin pluginEcalTPGPhysicsConst_PayloadInspector --plot plot_EcalTPGPhysicsConstPlot --tag EcalTPGPhysicsConst_v2_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTPGPhysicsConstPlot.png
mv *.png AllPlots-PNG/



#*EcalTPGLutIdMap
#EcalTPGLutIdMapPlot
./getPayloadData.py --plugin pluginEcalTPGLutIdMap_PayloadInspector --plot plot_EcalTPGLutIdMapPlot --tag EcalTPGLutIdMap_v2_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTPGLutIdMapPlot.png
mv *.png AllPlots-PNG/


#*EcalTPGWeightIdMap
#EcalTPGWeightIdMapPlot
./getPayloadData.py --plugin pluginEcalTPGWeightIdMap_PayloadInspector --plot plot_EcalTPGWeightIdMapPlot --tag EcalTPGWeightIdMap_v2_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTPGWeightIdMapPlot.png
mv *.png AllPlots-PNG/


#*EcalTimeOffsetConstant
#EcalTimeOffsetConstantPlot
#EcalTimeOffsetConstantDiff
./getPayloadData.py --plugin pluginEcalTimeOffsetConstant_PayloadInspector --plot plot_EcalTimeOffsetConstantPlot --tag 	EcalTimeOffsetConstant_v01_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTimeOffsetConstantPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeOffsetConstant_PayloadInspector --plot plot_EcalTimeOffsetConstantDiff --tag 	EcalTimeOffsetConstant_v01_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTimeOffsetConstantDiff.png
mv *.png AllPlots-PNG/


#*EcalADCToGeVConstant
#EcalADCToGeVConstantPlot
./getPayloadData.py --plugin pluginEcalADCToGeVConstant_PayloadInspector --plot plot_EcalADCToGeVConstantPlot --tag EcalADCToGeVConstant_V1_hlt --time_type Run --iovs '{"start_iov": "251004", "end_iov": "252036"}' --db Prod --test
mv *.png plot_EcalADCToGeVConstantPlot.png
mv *.png AllPlots-PNG/


#*EcalClusterCrackCorrParameters
#EcalClusterCrackCorrParametersPlot
./getPayloadData.py --plugin pluginEcalClusterCrackCorrParameters_PayloadInspector --plot plot_EcalClusterCrackCorrParametersPlot --tag EcalClusterCrackCorrParameters_may2009_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalClusterCrackCorrParametersPlot.png
mv *.png AllPlots-PNG/


#*EcalClusterEnergyCorrectionObjectSpecificParameters
#EcalClusterEnergyCorrectionObjectSpecificParametersPlot
./getPayloadData.py --plugin pluginEcalClusterEnergyCorrectionObjectSpecificParameters_PayloadInspector --plot plot_EcalClusterEnergyCorrectionObjectSpecificParametersPlot --tag EcalClusterEnergyCorrectionObjectSpecificParameters_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalClusterEnergyCorrectionObjectSpecificParametersPlot.png
mv *.png AllPlots-PNG/


#*EcalClusterEnergyCorrectionParameters
#EcalClusterEnergyCorrectionParametersPlot
./getPayloadData.py --plugin pluginEcalClusterEnergyCorrectionParameters_PayloadInspector --plot plot_EcalClusterEnergyCorrectionParametersPlot --tag EcalClusterEnergyCorrectionParameters_v01_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "164491"}' --db Prod --test
mv *.png plot_EcalClusterEnergyCorrectionParametersPlot.png
mv *.png AllPlots-PNG/


#*EcalClusterEnergyUncertaintyParameters
#EcalClusterEnergyUncertaintyParametersPlot
./getPayloadData.py --plugin pluginEcalClusterEnergyUncertaintyParameters_PayloadInspector --plot plot_EcalClusterEnergyUncertaintyParametersPlot --tag EcalClusterEnergyUncertaintyParameters_may2009_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalClusterEnergyUncertaintyParametersPlot.png
mv *.png AllPlots-PNG/


#*EcalClusterLocalContCorrParameters
#EcalClusterLocalContCorrParametersPlot
./getPayloadData.py --plugin pluginEcalClusterLocalContCorrParameters_PayloadInspector --plot plot_EcalClusterLocalContCorrParametersPlot --tag EcalClusterLocalContCorrParameters_v2_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "220640"}' --db Prod --test
mv *.png plot_EcalClusterLocalContCorrParametersPlot.png
mv *.png AllPlots-PNG/


#*EcalSRSettings
#EcalSRSettingsSummaryPlot
./getPayloadData.py --plugin pluginEcalSRSettings_PayloadInspector --plot plot_EcalSRSettingsSummaryPlot --tag EcalSRSettings_beam2017_option2_zs1_mc --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalSRSettingsSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalTimeBiasCorrections
#EcalTimeBiasCorrectionsPlot
#EcalTimeBiasCorrectionsDiff
./getPayloadData.py --plugin pluginEcalTimeBiasCorrections_PayloadInspector --plot plot_EcalTimeBiasCorrectionsPlot --tag EcalTimeBiasCorrections_data2011 --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTimeBiasCorrectionsPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalTimeBiasCorrections_PayloadInspector --plot plot_EcalTimeBiasCorrectionsDiff --tag EcalTimeBiasCorrections_data2011 --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalTimeBiasCorrectionsDiff.png
mv *.png AllPlots-PNG/


#*EcalWeightSet
#EcalWeightSetPlot


#*EcalSampleMask
#EcalSampleMaskPlot
./getPayloadData.py --plugin pluginEcalSampleMask_PayloadInspector --plot plot_EcalSampleMaskPlot --tag EcalSampleMask_offline --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalSampleMaskPlot.png
mv *.png AllPlots-PNG/


#*EcalSamplesCorrelation
#EcalSamplesCorrelationPlot
#EcalSamplesCorrelationDiff
./getPayloadData.py --plugin pluginEcalSamplesCorrelation_PayloadInspector --plot plot_EcalSamplesCorrelationPlot --tag EcalSamplesCorrelation_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalSamplesCorrelationPlot.png
mv *.png AllPlots-PNG/
./getPayloadData.py --plugin pluginEcalSamplesCorrelation_PayloadInspector --plot plot_EcalSamplesCorrelationDiff --tag EcalSamplesCorrelation_hlt --time_type Run --iovs '{"start_iov": "1", "end_iov": "1"}' --db Prod --test
mv *.png plot_EcalSamplesCorrelationDiff.png
mv *.png AllPlots-PNG/


#*EcalDAQTowerStatus
#EcalDAQTowerStatusSummaryPlot
./getPayloadData.py --plugin pluginEcalDAQTowerStatus_PayloadInspector --plot plot_EcalDAQTowerStatusSummaryPlot --tag EcalDAQTowerStatus_online_100609V0 --time_type Run --iovs '{"start_iov": "121756", "end_iov": "121756"}' --db Prod --test
mv *.png plot_EcalDAQTowerStatusSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalDCSTowerStatus
#EcalDCSTowerStatusSummaryPlot
./getPayloadData.py --plugin pluginEcalDCSTowerStatus_PayloadInspector --plot plot_EcalDCSTowerStatusSummaryPlot --tag EcalDCSTowerStatus_online_100812V0 --time_type Run --iovs '{"start_iov": "136442", "end_iov": "136442"}' --db Prod --test
mv *.png plot_EcalDCSTowerStatusSummaryPlot.png
mv *.png AllPlots-PNG/


#*EcalDCUTemperatures
#EcalDCUTemperaturesPlot


#*EcalPTMTemperatures
#EcalPTMTemperaturesPlot