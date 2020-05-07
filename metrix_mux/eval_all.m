%%%             mean-squared error              'MSE'            1
%%%             peak signal-to-noise ratio      'PSNR'           2
%%%             structural similarity index     'SSIM'           3
%%%             multiscale SSIM index           'MSSIM'          4
%%%             visual signal-to-noise ratio    'VSNR'           5
%%%             visual information fidelity     'VIF'            6
%%%             pixel-based VIF                 'VIFP'           7
%%%             universal quality index         'UQI'            8
%%%             image fidelity criterion        'IFC'            9
%%%             noise quality measure           'NQM'            10
%%%             weighted signal-to-noise ratio  'WSNR'           11
%%%             signal-to-noise ratio           'SNR'            12

path_to_lr = '/home/sharjeel/Documents/repos/classical_SR_datasets/Set5/GT/baby.png';
% path_to_hr = '/home/sharjeel/Downloads/baby_SRFBN_x4.png';

path_to_hr = '/home/sharjeel/Documents/repos/classical_SR_datasets/Set5/GT/baby.png';

lr = imread(path_to_lr);
hr = imread(path_to_hr);

MSE   = metrix_mux(hr,lr,'MSE');
PSNR  = metrix_mux(hr,lr,'PSNR');
SSIM  = metrix_mux(hr,lr,'SSIM');
MSSIM = metrix_mux(hr,lr,'MSSIM');
VSNR  = metrix_mux(hr,lr,'VSNR');
VIF   = metrix_mux(hr,lr,'VIF');
VIFP  = metrix_mux(hr,lr,'VIFP');
UQI   = metrix_mux(hr,lr,'UQI');
IFC   = metrix_mux(hr,lr,'IFC');
NQM   = metrix_mux(hr,lr,'NQM');
WSNR  = metrix_mux(hr,lr,'WSNR');
SNR   = metrix_mux(hr,lr,'SNR');

[~,name,ext] = fileparts(path_to_hr);
fprintf('HR img: %s\n', strcat(name,ext));
[~,name,ext] = fileparts(path_to_lr);
fprintf('LR img: %s\n\n', strcat(name,ext));

fprintf('Required metrics:\n')
fprintf('PSNR : %0.4f\n',PSNR)
fprintf('SSIM : %0.4f\n',SSIM)
fprintf('MSSIM: %0.4f\n',MSSIM)
fprintf('VSNR : %0.4f\n',VSNR)
fprintf('VIF  : %0.4f\n',VIF)
fprintf('UQI  : %0.4f\n',UQI)
fprintf('IFC  : %0.4f\n',IFC)
fprintf('NQM  : %0.4f\n',NQM)

fprintf('\nJust a few more:\n')
fprintf('MSE  : %0.4f\n',MSE)
fprintf('VIFP : %0.4f\n',VIFP)
fprintf('WSNR : %0.4f\n',WSNR)
fprintf('SNR  : %0.4f\n',SNR)