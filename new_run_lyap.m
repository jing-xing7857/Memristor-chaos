
[T,Res]=newliu_lyapunov(9,@newliu_ext,@ode45,0,0.02,400,[10^-6 0 0 0 0 0 0 0 0.2],10);
plot(T,Res(1:end,1),'r');hold on
plot(T,Res(1:end,2),'g');hold on
plot(T,Res(1:end,3),'b');hold on
plot(T,Res(1:end,4),'r');hold on
plot(T,Res(1:end,5),'g');hold on
plot(T,Res(1:end,6),'b');hold on
plot(T,Res(1:end,7),'r');hold on
plot(T,Res(1:end,8),'g');hold on
plot(T,Res(1:end,9),'b');
title('Dynamics of Lyapunov exponents');
xlabel('Time'); ylabel('Lyapunov exponents');

