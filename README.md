# ERDOS_EEG_Project

This project is going to look for EEG biomarkers of alcholism. 

The EEG Database on UCI website contains 64-channel electroencephalography (EEG) data from alcoholic and control subjects participating in a visual event-related potential (ERP) experiment.  

Subjects were exposed to three experimental conditions: 
- S1 single visual stimulus
- S2m two matching visual stimuli
- S2n two non-matching visual stimuli.  

Each subject participated in multiple trials (replications) of each experimental condition. Data were recorded at 256 Hz for 1 second following the presentation of the visual stimulus/stimuli.



# Stakeholders

Clinicians


# Figure 1 

Grand-average across subjects, electrodes, and trials for each of the three conditions. 

![image](https://user-images.githubusercontent.com/18429968/118040716-eb7bc200-b33f-11eb-8275-159c13fb5002.png)

# Figure 2 

Grand-average across subjects and trials for each of the three conditions at 3 electrode locations (CZ, FZ, PZ)

![image](https://user-images.githubusercontent.com/18429968/118173508-ac12ab80-b3fb-11eb-94ad-cf302754d793.png)


From above it seems like we should focus on the CZ channel and extract features either from the whole time course or just a slice of time (P300). 

# Figure 3

Correlation matrix betwenn electrodes' voltage for a single trial, for a partcipant belonging to the control group and an alcoholic respectively.


<img src="https://user-images.githubusercontent.com/20558980/118339267-50711c80-b4e6-11eb-9351-b6d029952018.png" width="500">
<img src="https://user-images.githubusercontent.com/20558980/118339269-51a24980-b4e6-11eb-8bf4-fc4ec94e7088.png" width="500">


# Figure 4

The power spectral density of two individual subjects, one from the control group, and the other from the alcoholic group. This was computed via a FFT with a time interval of 3.91 milliseconds.

![PSD_alc](https://user-images.githubusercontent.com/35704788/118384051-2e07fd80-b5d1-11eb-8061-9b308fd141ff.png)
![PSD_cont](https://user-images.githubusercontent.com/35704788/118384062-3d874680-b5d1-11eb-8d46-834a7e069a07.png)

# Features 

Features to be extracted per subject per trial per channel

List of features:

Time Domain Features
 
- Mean
- Standard Deviation
- Power

Frequency Domain Features

- Band Power
- Spectral Entropy

Time-Frequency Domain Features

- Discrete Wavelet Transform (DWT)
- Features calculated from combinations of electrodes

- Differential Asymmetry

- Magnitude Squared Coherence Estimate
