clear
close all
clc
format long
global k
for i=-19:1:401
    
    k=0.01*(i-1);  
      k 
[T,Res]=newliu_lyapunov(9,@LE_research_system,@ode45,100,100,400,[10^-6 0 0 0 0 0 0 0 0.2],1);%%µ÷ÓÃº¯Êýnewliu_lyapunov
         
Lyapunov1(i+20)=Res(end,1);
Lyapunov2(i+20)=Res(end,2);  
Lyapunov3(i+20)=Res(end,3);
Lyapunov4(i+20)=Res(end,4);
Lyapunov5(i+20)=Res(end,5);
Lyapunov6(i+20)=Res(end,6);
Lyapunov7(i+20)=Res(end,7);  
Lyapunov8(i+20)=Res(end,8);
Lyapunov9(i+20)=Res(end,9);

end 
cc_val=0.01*([-19:1:401]-1);  
figure(1)
plot(cc_val,Lyapunov1(:),'b');hold on
plot(cc_val,Lyapunov2(:),'r--');hold on
plot(cc_val,Lyapunov3(:),'g-.');hold on
plot(cc_val,Lyapunov4(:),'m-');hold on


legend('LE1','LE2','LE3','LE4','LE5','LE6','LE7','LE8','LE9')  
xlabel('$\alpha_2$', 'Interpreter', 'latex', 'FontName', 'Times New Roman', 'FontSize', 18);
ylabel('Lyapunov exponents', 'Interpreter', 'latex', 'FontName', 'Times New Roman', 'FontSize', 18);
drawnow
box on 

