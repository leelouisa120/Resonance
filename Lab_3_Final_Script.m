%% Part 1
close all;
clear all;

global gamma;
gamma = 0.02;
w = 0.5;
%initial conditions
a = 0;
b = 0;
n = 0;
distance = 100;

while distance > 0.0001
    global windex
    windex = w;
    period = (2*pi)/w;
    y_init = [a;b];
    time_interval = [n*period, (n+1)*period];

    [time_out,y_out] = ode45(@rhsLab3, time_interval, y_init);

    distance = sqrt((y_init(1)-y_out(end,1))^2 + (y_init(2)-y_out(end,2))^2);

    a = y_out(end,1);
    b = y_out(end,2);
    n = n+1;
end

fprintf('The period of the oscillation is %4.4f.\n',period);
fprintf('The frequency of the oscillation is %4.4f.\n',windex);
fprintf('The initial v value is %4.6f. \n',a);
fprintf('The initial y value is %4.6f. \n',b);

plot(y_out(:,1),y_out(:,2));
title('Phase Plane Plot');
xlabel('voltage');
ylabel('dv/dt');

figure;
plot(time_out(:,1),y_out(:,1));
title('voltage vs. time');
xlabel('time');
ylabel('voltage');

%% Part 1.2
% close all;
% clear all;
% 
% global gamma;
% gamma = 0.02;
% w = 0.5;
% distance = 100;
% 
%     global windex;
%     windex=w;
%     period = (2*pi)/w;
%     y_init = [-0.035942; 0.665521; 0];
%     time_interval = [0, period];
% 
%     [time_out,y_out] = ode45(@rhsLab3, time_interval, y_init);
% 
% fprintf('The period of the oscillation is %4.4f.\n',period);
% fprintf('The frequency of the oscillation is %4.4f.\n',windex);
% fprintf('The initial v value is %4.6f. \n',y_out(end,1));
% fprintf('The initial y value is %4.6f. \n',y_out(end,2));
% fprintf('The area is %4.6f. \n',y_out(end,3));
% 
% 
% plot(y_out(:,1),y_out(:,2));
% figure;
% plot(time_out(:,1),y_out(:,1));

%% Part 1.3

% clear all;
% close all;
% global gamma;
% gamma = 0.02;
% w = 0.5:0.01:1.5;
% a = 0;
% b = 0;
% n = 0;
% distance = 100;
% 
% for ii = 1:length(w)
%     distance = 100;
%     while distance > 0.0001
%         global windex;
%         windex = w(ii);
%         period = (2*pi)/w(ii);
%         y_init = [a;b;0];
%         time_interval = [n*period, (n+1)*period];
% 
%         [time_out,y_out] = ode45(@rhsLab3, time_interval, y_init);
% 
%         distance = sqrt((y_init(1)-y_out(end,1))^2 + (y_init(2)-y_out(end,2))^2);
% 
%         a = y_out(end,1);
%         b = y_out(end,2);
%         n = n+1;
%     end
% 
%     R_analytic(ii) =  1/(sqrt( ((1-windex^2)^2) + ((2*gamma*windex)^2)));
%     Area = y_out(end,3);
%     R_numeric(ii) = sqrt(Area/(pi*windex));
%     n = 0;
% end
% 
% p1 = plot(w,R_analytic);
% hold on;
% p2 = plot(w,R_numeric,'o');
% legend([p1 p2],'Analytic','Numeric');
% xlabel('w');
% ylabel('Amplitude');
% title('Amplitude Response Curve')


%% Part 2
% 
% global gamma;
% gamma = input('Try 0.06, 0.04, 0.02\n')
% global epsilon
% epsilon=0.001;
% 
% w = 0.5:0.01:1.5;
% 
% a = 0;
% b = 0;
% n = 0;
% distance = 100;
% 
% for ii = 1:length(w)
%     distance = 100;
%     while distance > 0.0001
%         global windex;
%         windex = w(ii);
%         period = (2*pi)/w(ii);
%         y_init = [a;b;0];
%         time_interval = [n*period, (n+1)*period];
% 
%         [time_out,y_out] = ode45(@rhsLab3, time_interval, y_init);
% 
%         distance = sqrt((y_init(1)-y_out(end,1))^2 + (y_init(2)-y_out(end,2))^2);
% 
%         a = y_out(end,1);
%         b = y_out(end,2);
%         n = n+1;
%     end
%     Area = y_out(end,3);
%     R_numeric(ii) = sqrt(Area/(pi*windex));
%     n = 0;
% end
% 
% plot(w,R_numeric,'-o');
% xlabel('w');
% ylabel('Amplitude');
% str = sprintf('Amplitude Response Curve for gamma = %4.2f',gamma);
% title(str);
% hold on;
% 
% w = 1.5:-0.01:0.5;
% 
% a = 0;
% b = 0;
% n = 0;
% distance = 100;
% 
% for ii = 1:length(w)
%     distance = 100;
%     while distance > 0.0001
%         global windex;
%         windex = w(ii);
%         period = (2*pi)/w(ii);
%         y_init = [a;b;0];
%         time_interval = [n*period, (n+1)*period];
% 
%         [time_out,y_out] = ode45(@rhsLab3, time_interval, y_init);
% 
%         distance = sqrt((y_init(1)-y_out(end,1))^2 + (y_init(2)-y_out(end,2))^2);
% 
%         a = y_out(end,1);
%         b = y_out(end,2);
%         n = n+1;
%     end
%     Area = y_out(end,3);
%     R_numeric2(ii) = sqrt(Area/(pi*windex));
%     n = 0;
% end
% 
% plot(w,R_numeric2,'-*');
% hold on;
% legend('forward w', 'backward w');

%% Part III
% close all;
% clear all;
% 
% global gamma;
% gamma = 0.09;
% % gamma=50;
% %becomes elliptical in phase plane
% %becomes reminiscent of sine curve
% w = 0.8;
% % w=.01;
% % w=20;
% %when small
% %becomes very steady when small
% %diamond phase-plane
% %when big
% %resonant sine curve??
% %very curvy phase-plane
% global epsilon
% epsilon=800;
% % epsilon=15000;
% %large epsilon has little effect on both the phase plane and Poincare plots
% % epsilon=.02;
% %the smaller the epsilon, the more elliptical and sinusoidal the graphs get
% 
% %initial conditions
% a = 0;
% b = 0;
% n = 0;
% distance = 100;
% 
% while distance > 0.0001
%     global windex
%     windex = w;
%     period = (2*pi)/w;
%     y_init = [a;b];
%     time_interval = [n*period, (n+1)*period];
%     
%     [time_out,y_out] = ode45(@rhsLab3, time_interval, y_init);
%     
%     distance = sqrt((y_init(1)-y_out(end,1))^2 + (y_init(2)-y_out(end,2))^2);
%     
%     a = y_out(end,1);
%     b = y_out(end,2);
%     n = n+1;
% end
% 
% n = 0;
% for ii = 1:501
%     period = (2*pi)/w;
%     y_init = [a;b];
%     
%     time_interval = [n*period, (n+1)*period];
%     [time_out,y_out] = ode45(@rhsLab3, time_interval, y_init);
%     
%     a = y_out(end,1);
%     b = y_out(end,2);
%     
%     v_n(ii) = y_out(end,1);
%     dv_dt_n(ii) = y_out(end,2);
%     n = n+1;
%     
%     plot(y_out(:,1),y_out(:,2),'b-');
%     hold on;
% end
% 
% title('dv/dt vs. v');
% xlabel('v');
% ylabel('dv/dt');
% hold on;
% 
% plot(v_n, dv_dt_n, 'r.');
% legend('phase-plane', 'poincare');
% figure;
% 
% plot(v_n, dv_dt_n, 'r.');
% title('Poincare Plot');
% xlabel('v');
% ylabel('dv/dt');
