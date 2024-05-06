%/////////////////////////////////////////////////////////////////////////%
%                                                                         %
%   - Name : Sim_Parameters.m                                             %
%   - Simulation Parameters are defined.                                  %
%                                                                         %
%                                                                         %
%                                                                         %
%/////////////////////////////////////////////////////////////////////////%

%.. Global Variables

    global  UNIT_RAD2DEG    UNIT_DEG2RAD    UNIT_GRAV       UNIT_HP2W    
    global  Init_Pos                Init_Euler      Init_Rate
    global Init_Vel
%.. Unit Conversion 

    UNIT_RAD2DEG        =       180 / pi ;                              	% Radian to Degree
    UNIT_DEG2RAD        =       1 / UNIT_RAD2DEG ;                       	% Degree to Radian
    UNIT_GRAV           =       9.81 ;                                      % Gravity
    UNIT_HP2W           =       745.7 ;                                 	% Horse Power to Watt
    
%.. Setting up Simulation Parameters

    Step_Size           =       0.001 ;                                     % Step_Size for Numerical Integration
    
%.. Initial Conditions 

    Init_Pos            =       [  0.0, 0.0, 0.0] ;                     
    Init_Vel            =       [  12,  0.0,  0.0] ; 
    Init_Euler          =       [  0.0, 0.0, 0.0] ; 
    Init_Rate           =       [  0.0, 0.0, 0.0 ] ; 