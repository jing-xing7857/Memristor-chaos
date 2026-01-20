function research_methodology
% Function Name: newchaotic_phase
% Function Description: Solve the differential equations of the newchaotic chaotic system 
%                      and plot its phase portraits (phase trajectories)

% ====================== 1. Set Simulation Parameters ======================
% Define time range and step size: from 0 to 400 seconds with 0.01s step
tspan = 0:0.01:400;

% Define initial condition vector for differential equations
% Y0 = [x11, x12, x13, q1, x21, x22, x23, q2, parameter] 
% 9 initial values corresponding to 9 state variables/parameters of the chaotic system
Y0 = [0.1 0 0 0 0 0 0 0 0.2];

% ====================== 2. Solve Differential Equations ======================
% Solve ordinary differential equations using ode45 (4/5th order Runge-Kutta method)
% Input: ODE function name 'newchaotic', time span tspan, initial conditions Y0
% Output: t - time vector, y - state variable matrix (each row = one time point, each column = one state variable)
[t,y] = ode45('research_system',tspan,Y0);

% ====================== 3. Plot Settings & Phase Portrait Drawing ======================
% Hold current plot window to prevent overwriting by subsequent plots
hold on;

% Create/activate figure window numbered 1
figure(1);

% Set global font style to Times New Roman (for axis labels and text)
set(0,'DefaultAxesFontName', 'Times New Roman');
set(0,'DefaultTextFontName', 'Times New Roman'); 

% Plot the first phase trajectory: x11 vs q1 (skip first 10000 points to eliminate transients, only show steady-state chaotic behavior)
% y(10000:end,1) - Column 1 variable (x11) from 10000th point to the end
% y(10000:end,4) - Column 4 variable (q1) from 10000th point to the end
% Color set to blue [0 0 1], line width 1
plot(y(10000:end,1), y(10000:end,4), 'Color', [0 0 1], 'LineWidth', 1); 

% Plot the second phase trajectory: x21 vs q2
% y(10000:end,5) - Column 5 variable (x21)
% y(10000:end,8) - Column 8 variable (q2)
% Color set to red [1 0 0], line width 1
plot(y(10000:end,5), y(10000:end,8), 'Color', [1 0 0], 'LineWidth', 1);

% Redundant hold on (no impact, ensures subsequent plots do not overwrite)
hold on;

% Set x-axis label (use LaTeX interpreter for subscript display, font size 20)
xlabel('$x_{11}$ ($x_{21}$)', 'Interpreter', 'latex', 'FontSize', 20);

% Set y-axis label (use LaTeX interpreter for subscript display, font size 20)
ylabel('$q_{1}$ ($q_{2}$)', 'Interpreter', 'latex', 'FontSize', 20);

% Set font size of current axes to 20
set(gca,'FontSize',20);

% Add legend (use LaTeX interpreter, turn off legend box, position at northwest (top-left corner))
legend('$\it{x}_{\mathrm{11}}$-$\it{q}_{\mathrm{1}}$', '$\it{x}_{\mathrm{21}}$-$\it{q}_{\mathrm{2}}$', ...
    'Interpreter', 'latex', 'Box', 'off', 'Location', 'northwest');

% Display axis box
box on;

end % End of function 
