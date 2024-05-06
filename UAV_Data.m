%/////////////////////////////////////////////////////////////////////////%
%                                                                         %
%   - Name : UAV_Data.m                                                   %
%   - UAV Parameters are defined.                                         %
%                                                                         %
%                                                                         %
%                                                                         %
%/////////////////////////////////////////////////////////////////////////%

%.. Global Variables

    % global  AR        S               B               CBAR       g
    % global  Mass            I_TENSOR
    % 
    % 
    % global CD_alpha CD_0 CD_alpha_2 CD_beta CD_beta_2 CD_del_e CD_q
    % global  CL_alpha        CL_del_e        CL_q            CL_0
    % global  CY_beta         CY_del_a        CY_p            CY_r        CY_0
    % global  Cl_beta         Cl_del_a        Cl_del_a        Cl_p        Cl_r        Cl_0
    % global  Cm_alpha        Cm_q            Cm_del_e        Cm_0        
    % global  Cn_beta         Cn_del_a        Cn_del_a        Cn_p        Cn_r        Cn_0
    % 
    % global  K_T     K_M        
    % 
    % global  tau_T           Omega_act            zeta_act          
    % 
    % 
    % global K_p_vt K_p_q K_p_theta K_p_roll K_p K_p_r K_p_h
    % global K_I_roll K_I_vt K_I_q K_I_theta K_I K_I_r K_I_h
    % global K_d_roll K_d_vt K_d_q K_d_theta K_d K_d_r K_d_h

    
%.. Gravity
    
    g               =       9.81 ;                                          %Gravity  (m/s^2)
    
%.. UAS Configuration Data

    AR              =       3.68 ;                                          % Aspect Ratio
    S               =       0.22 ;                                          % Wing Area                             (m^2)
    B               =       0.90;                                          % Wing Span                             (m)
    CBAR            =       0.25 ;                                          % Mean Aerodynamic Chord                (m)
    Mass            =       1 ;                                          % UAS Total Mass                        (kg)
   
    I_xx            =       0.023 ;                                         % Moment of Inertia 
    I_yy            =       0.020 ; 
    I_zz            =       0.033 ; 
    I_xz            =       0.006 ; 
    
    I_TENSOR        =       [ I_xx,  0.0, -I_xz ;                           % The inertia tensor 
                               0.0, I_yy,   0.0 ; 
                             -I_xz,  0.0,  I_zz ]; 
%.. UAV Engine Parameters
    
    K_T             =      2.015*10^(-6) ;                                %Kg · m 
    K_M             =      2.444*10^(-10) ;                               %Kg · m^2
    
%.. UAV Actuator Parameters 

    Omega_act       =      9.774 ;                                  % Natural Frequency
    zeta_act        =      0.801 ;                                  % damping ratio
    tau_T           =      0.19 ;                                   % Time Constant of Throttle Serv
    
%.. UAV Autopilot Gains proportional

    K_p_vt            =       1.4665 ;                                           % Proportional Gain of Speed
    K_p_q             =          0.3 ;                                           % Proportional Gain of Pitch Rate
    K_p_theta         =       8.2978 ;                                           % Proportional Gain of Pitch Angle
    K_p_roll          =      22.2973 ;                                           % Proportional Gain of Roll Angle
    K_p               =       0.2631 ;                                           % Proportional Gain of Roll Rate 
    K_p_r             =         1.02 ;                                           % Proportional Gain of Yaw Rate 
    K_p_h             =       0.6879 ;                                           % Proportional Gain of Altitud

%.. UAV Autopilot Gains Integral
    
    K_I_roll          =       0.0329 ;                                           % Integral Gain of Roll Angle
    K_I_vt            =       0.0000 ;                                           % Integral Gain of Speed
    K_I_q             =       7.5000 ;                                           % Integral Gain of Pitch Rate
    K_I_theta         =       0.2536 ;                                           % Integral Gain of Pitch Angle
    K_I               =       5.5033 ;                                           % Integral Gain of Roll Rate 
    K_I_r             =       0.0011 ;                                           % Integral Gain of Yaw Rate 
    K_I_h             =       0.2373 ;                                           % Integral Gain of Altitud


%.. UAV Autopilot Gains derivative
    
    K_d_roll          =       0.7683 ;                                           % derivative Gain of Roll Angle
    K_d_vt            =       0.2171 ;                                           % derivative Gain of Speed
    K_d_q             =       0.0591 ;                                           % derivative Gain of Pitch Rate
    K_d_theta         =       0.1088 ;                                           % derivative Gain of Pitch Angle
    K_d               =       0.0470 ;                                           % derivative Gain of Roll Rate 
    K_d_r             =       0.0000 ;                                           % derivative Gain of Yaw Rate 
    K_d_h             =       0.1282 ;                                           % derivative Gain of Altitud

%.. UAV Aerodynamics Data 

    % Drag Coefficient 
    CD_alpha        =       0.0084 ;
    CD_0            =       0.0208 ;
    CD_alpha_2      =       1.3225 ;
    CD_beta         =       -0.0001 ;
    CD_beta_2       =       0.0796 ;
    CD_del_e        =       0.20 ;
    CD_q            =       0.00 ; 
    
    % Lift Force Coefficient
    CL_alpha        =       3.2684 ;                                     
    CL_del_e        =       0.7237 ;     
    CL_q            =       6.1523 ;
    CL_0            =       0.0389 ;     
      
    % Side Force Coefficient 
    CY_beta         =       -0.1285 ;     
    CY_del_a        =        0.0299 ;     
    CY_p            =       -0.0292 ;
    CY_r            =       -0.0355 ;  
    CY_0            =         0.000 ;
    
    % Rolling Moment Coefficient 
    Cl_beta         =      -0.0345 ;     
    Cl_0            =        0.000 ;     
    Cl_del_a        =        0.182 ;
    Cl_p            =      -0.3318 ;     
    Cl_r            =       0.0304 ;     
      
    % Pitching Moment Coefficient
    Cm_alpha        =       -0.2625 ;     
    Cm_q            =       -1.8522 ;     
    Cm_del_e        =       -0.2845 ;
    Cm_0            =       -0.0112 ;    
      
    % Yawing Moment Coefficient 
	Cn_beta         =        0.0252 ;     
    Cn_0            =        0.0000 ;   
    Cn_del_a        =       -0.0102 ;
    Cn_p            =        0.002 ;     
    Cn_r            =       -0.0192 ; 




    

    
