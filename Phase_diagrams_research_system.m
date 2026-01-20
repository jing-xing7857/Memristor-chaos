function dy = research_system(t,y)
% Function Name: newchaotic
% Function Description: Defines the 9-dimensional chaotic system ordinary differential equations (ODEs)
%                       for numerical solution by MATLAB ODE solvers (e.g., ode45)
% Input Parameters:
%   t  - Scalar, current time step (required by ODE solvers, not explicitly used in equations)
%   y  - 9x1 vector, state variables at time t: [y1; y2; y3; y4; y5; y6; y7; y8; y9]
%        where:
%        y1 = x11, y2 = x12, y3 = x13, y4 = q1
%        y5 = x21, y6 = x22, y7 = x23, y8 = q2
%        y9 = coupling/control parameter
% Output Parameter:
%   dy - 9x1 vector, first-order derivatives of state variables (dy/dt)

% ====================== 1. Initialize Derivative Vector ======================
% Create a 9x1 zero vector to store the derivatives of each state variable
dy = zeros(9,1);

% ====================== 2. Define Global System Parameters ======================
% Declare global variables (shared with other functions if needed)
global alpha1 alpha2 k 

% Set system constant parameters (coupling strength and nonlinear coefficients)
k = 3;             % Coupling strength between the two subsystems
alpha1 = 3.9;      % Nonlinear coefficient for the first subsystem
alpha2 = 2.8;      % Nonlinear coefficient for the second subsystem

% ====================== 3. Define ODE Equations for Chaotic System ======================
% -------- First Subsystem (x11, x12, x13, q1) --------
dy(1) = 3*y(3) - alpha1*(1 - y(4)^2)*y(2);  
    % d(x11)/dt = 3*x13 - α1*(1 - q1²)*x12
dy(2) = y(3);                                
    % d(x12)/dt = x13
dy(3) = -0.5*y(1) - y(3) - k*(y(3) - y(7))*(8 - 4*abs(y(9)));  
    % d(x13)/dt= -0.5*x11 - x13 - k*(x13-x23)*(8-4|y9|)
dy(4) = y(2);                                % d(q1)/dt = x12

% -------- Second Subsystem (x21, x22, x23, q2) --------
dy(5) = 3*y(7) - alpha2*(1 - y(8)^2)*y(6) ;  
    % d(x21)/dt = 3*x23 - α2*(1 - q2²)*x22
dy(6) = y(7);                                
    % d(x22)/dt = x23
dy(7) = -0.5*y(5) - y(7) + k*(y(3) - y(7))*(8 - 4*abs(y(9)));  
    % d(x23)/dt= -0.5*x21 - x23 + k*(x13-x23)*(8-4|y9|)
dy(8) = y(6);                                
    % d(q2)/dt = x22

% -------- Coupling/Control Parameter Dynamics --------
dy(9) = 6*(y(3) - y(7)) - 5*y(9);            
    % d(y9)/dt = 6*(x13 - x23) - 5*y9
