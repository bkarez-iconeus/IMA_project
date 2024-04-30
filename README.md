%% STEPS :

% preLocalization 

input : IQ data with shape z,x,t
dx : IQ voxel size in mm
dz : IQ voxel size in mm
ultrasound freq

pre localization

-> Spatial interpolation Lanczos method to upscale IQ frames
-> Jerman masking method to isolate bubbles

final localization
-> get maxima of interpolated image
-> compute correlations btw local maxima in the IQ and PSF 
-> interpolated coordinates of the local maxima of INPUTIMAGES spotted in MAXPOSITIONS . 
