close all
clear
clc
format long eng

% ===== Simulation timing =====
stop_time = 1;
fs = 4e6;
Ts = 1/fs;

% ===== Carrier / code parameters =====
fB = 1.5e6;
fb = fB;
fL1 = 1575.42e6;
fc = 1.023e6;
Tc = 1/fc;

% ===== Integration settings =====
PIT = 0.010;

% ===== test settings =====
ferr = 0;
perr_rad = 0;
fll = 1;

% ===== SNR / amplitude =====
SNR = -28;
A_ca = sqrt(2);
SNR_ratio = 10^(SNR/10);
Ps = A_ca^2/2;
Pn = Ps / SNR_ratio;

% ===== Repeat/data parameters =====
code_repeat = 0.001;
fdata = 50;
Tdata = 1/fdata;
data_repeat = 30;

% ===== Time / delay / Doppler parameters =====
dt_rec = 0.001;
r_true_t0 = 20e6;
df_Dop = 0;      
dt_iono = 0;
dt_tropo = 0;
dt_sv = 0;
c = 299792458;

% ===== signal settings =====
ca_code = 1;
nav_data = 1;

% ===== compatibility variables =====
PRN = 1;