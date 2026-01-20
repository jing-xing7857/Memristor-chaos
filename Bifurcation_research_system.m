function dy=Bifurcation_research_system(t,y)
dy=zeros(9,1);
global k alpha1 alpha2 

k=3;
alpha1=3.9;
% % alpha2=2.8;

dy(1)=3*y(3) - alpha1*(1 - y(4)^2)*y(2);
dy(2)=y(3);
dy(3)=-0.5*y(1) - y(3) - k*(y(3) - y(7))*(8 - 4*abs(y(9)));
dy(4)=y(2);
dy(5)=3*y(7) - alpha2*(1 - y(8)^2)*y(6) ;
dy(6)=y(7);
dy(7)=-0.5*y(5) - y(7)+ k*(y(3) - y(7))*(8 - 4*abs(y(9)));
dy(8)=y(6);
dy(9)=6*(y(3) - y(7)) - 5*y(9);