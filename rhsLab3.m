function yp = rhsLab3 (time,y)
% global gamma;
% global windex;
% 
% v = y(1,1);
% y = y(2,1);
% 
% dy = sin(windex*time) - (v) - (2*gamma*y);
% dv = y;
% %Part1.2
% % dA = (1/2)*(y^2 - v*dy);
% 
% yp(1,1) = dv;
% yp(2,1) = dy;
% %Part 1.2
% % yp(3,1) = dA;

%% Part II-III
% global gamma;
% global windex;
% global epsilon;
% v = y(1,1);
% y = y(2,1);
% 
% dy = sin(windex*time) - (v) - (2*gamma*y) - epsilon*v^3;
% dv = y;
% %PartII
% dA = (1/2)*(y^2 - v*dy);
% 
% yp(1,1) = dv;
% yp(2,1) = dy;
% %Part II
% yp(3,1) = dA;


end