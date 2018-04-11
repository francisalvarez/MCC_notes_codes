% Francis Alvarez
% Boyce Diprima DE 10th Edition 
% 7.5 Matrix Node Analysis
% ------------------------------------------------
% Created to add plots to notes. 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%            Problem #2 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clear
% clc 
% clf
% 
% [x1, x2] = meshgrid(-4:0.4:4, -4:0.4:4);
% t = (-8:.1:8);
% x1dot = 1*x1 + -2*x2;
% x2dot = 3*x1-4*x2;
% quiver(x1,x2,x1dot,x2dot,1.5,'k')
% axis([-4 4 -4 4])
% title('Problem #2')
% xlabel('x1')
% ylabel('x2')
% axis tight
% hold on
% plot(t,t,'r','linewidth',2)
% plot(2*t,3*t,'m','linewidth',2)
% 
% xy = [-4 -4; -3 -3; -2 -2];
% uv = [1 1; 1 1; 1 1];
% quiver(-xy(:,1), -xy(:,2) ,-uv(:,1), -uv(:,1),'linewidth',2.5,'Color','r','Autoscale','off');
% quiver(xy(:,1), xy(:,2) ,uv(:,1), uv(:,2),'linewidth',2.5,'Color','r','Autoscale','off');
% 
% 
% xy2 = [-3 -9/2; -2 -6/2]
% uv2 = [1 3/2; 1 3/2];
% quiver(xy2(:,1), xy2(:,2) ,uv2(:,1), uv2(:,2),'linewidth',2.5,'Color','m','Autoscale','off');
% quiver(-xy2(:,1), -xy2(:,2) ,-uv2(:,1), -uv2(:,2),'linewidth',2.5,'Color','m','Autoscale','off');
% 
% legend({'Direction Field','\xi_1 = [1 1]^{t}, e^{-t} ', '\xi_1 = [2 3]^{t}, e^{-2t} '},'FontSize',14,'Location','northwest')
% fpath = '/Users/francisalvarez/Documents/MiraCosta Work/Tex Problems/DE';
% saveas(1, fullfile(fpath,'direcfield2'), 'epsc');
% t = (0:.1:10);
% for c1 = -6:4:6
%     for c2 = -6:4:6
% solx1 = c1*exp(-t) + c2*2*exp(-2*t);
% solx2 = c1*exp(-t) + c2*3*exp(-2*t);
% plot(solx1,solx2,'linewidth',1.1);
%     end
% end
% fpath = '/Users/francisalvarez/Documents/MiraCosta Work/Tex Problems/DE';
% saveas(1, fullfile(fpath,'direcfield2traj'), 'epsc');



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%     Problem #4
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clc 
% clf 
% [x1, x2] = meshgrid(-8:0.5:8, -8:0.5:8);
% t = (-8:.1:8);
% x1dot = 1*x1 + 1*x2;
% x2dot = 4*x1-2*x2;
% quiver(x1,x2,x1dot,x2dot,1.5,'k')
% % axis([-4 4 -4 4])
% title('Problem #4')
% xlabel('x1')
% ylabel('x2')
% axis tight
% hold on
% plot(t,-4*t,'r','linewidth',2)
% plot(t,t,'m','linewidth',2)
% legend({'Direction Field','\xi_1 = [1 -4]^{t}, e^{-3t} ', '\xi_1 = [1 1]^{t}, e^{2t} '},'FontSize',14,'Location','northwest')
% 
% xy = 2*[-2 -2; -1 -1; 0 0];
% uv = 2*[1 1; 1 1; 1 1];
% quiver(-xy(:,1), -xy(:,2) ,uv(:,1), uv(:,1),'linewidth',2.5,'Color','m','Autoscale','off');
% quiver(xy(:,1), xy(:,2) ,-uv(:,1), -uv(:,2),'linewidth',2.5,'Color','m','Autoscale','off');
% 
% xy2 = [-2 8; -5/4 5];
% uv2 = [3/4 -3; 3/4 -3]
% quiver(xy2(:,1), xy2(:,2) ,uv2(:,1), uv2(:,2),'linewidth',2.5,'Color','r','Autoscale','off');
% quiver(-xy2(:,1), -xy2(:,2) ,-uv2(:,1), -uv2(:,2),'linewidth',2.5,'Color','r','Autoscale','off');
% 
% fpath = '/Users/francisalvarez/Documents/MiraCosta Work/Tex Problems/DE';
% saveas(1, fullfile(fpath,'direcfield4'), 'epsc');
% 
% t = (0:.1:10);
% for c1 = [-6 -1 1 6]
%     for c2 = [-6 -1 1 6]
% solx1 = c1*1*exp(-3*t) + c2*1*exp(2*t);
% solx2 = c1*-4*exp(-3*t) + c2*1*exp(2*t);
% plot(solx1,solx2,'linewidth',1.1);
%     end
% end
% 
% fpath = '/Users/francisalvarez/Documents/MiraCosta Work/Tex Problems/DE';
% saveas(1, fullfile(fpath,'direcfield4traj'), 'epsc');
% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%      Problem #6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc 
clf
[x1, x2] = meshgrid(-8:0.8:8, -8:0.8:8);
t = (-10:.1:10);
x1dot = 5/4*x1 + 3/4*x2;
x2dot = 3/4*x1 + 5/4*x2;
quiver(x1,x2,x1dot,x2dot,1.5,'k')
% axis([-4 4 -4 4])
title('Problem #6')
xlabel('x1')
ylabel('x2')
axis tight
hold on
plot(t,-t,'r','linewidth',2)
plot(t,t,'m','linewidth',2)
legend({'Direction Field','\xi_1 = [1 -1]^{t}, e^{t/2} ', '\xi_1 = [1 1]^{t}, e^{2t} '},'FontSize',14,'Location','northwest')
hold on 

xy = [-6 -6; -4 -4; -2 -2; 0 0];
uv = [2 2; 2 2; 2 2; 2 2];
quiver(xy(:,1), xy(:,2) ,-uv(:,1), -uv(:,1),'linewidth',2.5,'Color','m','Autoscale','off');
quiver(-xy(:,1), -xy(:,2) ,uv(:,1), uv(:,1),'linewidth',2.5,'color','m','Autoscale','off');

uv2 = [2 2; 2 2; 2 2; 2 2];
quiver(xy(:,1), -xy(:,2) ,-uv2(:,1), uv(:,1),'linewidth',2.5,'Color','r','Autoscale','off');
quiver(-xy(:,1), xy(:,2) ,uv(:,1), -uv(:,1),'linewidth',2.5,'color','r','Autoscale','off');

fpath = '/Users/francisalvarez/Documents/MiraCosta Work/Tex Problems/DE';
saveas(1, fullfile(fpath,'direcfield6'), 'epsc');


t = (-5:.1:10);
for c1 = [-6 -2 2 6]
    for c2 = [-6 -2 2 6]
solx1 = c1*1*exp(t/2) + c2*1*exp(2*t);
solx2 = c1*-1*exp(t/2) + c2*1*exp(2*t);
plot(solx1,solx2,'linewidth',1.1);
    end
end

fpath = '/Users/francisalvarez/Documents/MiraCosta Work/Tex Problems/DE';
saveas(1, fullfile(fpath,'direcfield6traj'), 'epsc');
