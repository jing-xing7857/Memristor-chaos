global alpha2 
t0=[0 400]; 
for alpha2=-1:0.3:5
alpha2 
[t,y]=ode45('Bifurcation_research_system',t0,[10^-6 0 0 0 0 0 0 0 0.2]);
[Xmax]=getmax(y(:,4));

[Ymax]=getmax(y(:,8));
plot(alpha2,Xmax,'.b','markersize',1); hold on 
plot(alpha2,Ymax,'.r','markersize',1); hold on 

ylim([-3 3])
xlim([-1 5])

xlabel('$\alpha_{2}$', 'Interpreter', 'latex', 'FontName', 'Times New Roman', 'FontSize', 18);
ylabel('$q_1$ ($q_{2}$)', 'Interpreter', 'latex', 'FontName', 'Times New Roman', 'FontSize', 18);
drawnow
box on 
end




