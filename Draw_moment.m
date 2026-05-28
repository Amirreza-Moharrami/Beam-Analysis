function Draw_moment(z,x,y,r,cc,color)
 if cc==1
            cfun = @(tt) [x+r*cos(tt); y+r*sin(tt)];
            xy = cfun(linspace(0,pi,361));
            hold(z,'on');
            plot(z,xy(1,:),xy(2,:),'color',color,'LineWidth',2);
            % arrows parameters
            m = 1; % number of arrows*1
            h = 2*r/5; % height
            w = r/1.5; % width
            a = [-w/2 0 w/2;
                  h  0 h];
            for k=1:m
                tt = pi*k;
                R = [-cos(tt) sin(tt);    %cc==1 ---> CCW
                     -sin(tt)  -cos(tt)]; %cc==-1 ---> CW
                xy = cfun(tt)+ R*a;
                plot(z,xy(1,:),xy(2,:),'color',color,'LineWidth',2);
            end
 elseif cc==-1
            cfun = @(tt) [-x+r*cos(tt); -y+r*sin(tt)];
            xy = cfun(linspace(-pi,0,361));
            hold(z,'on');
            plot(z,-xy(1,:),-xy(2,:),'color',color,'LineWidth',2);
            % arrows parameters
            m = 1; % number of arrows*1
            h = 2*r/5; % height
            w = r/1.5; % width
            a = [-w/2 0 w/2;
                  -h  0 -h];
            for k=1:m
                tt = pi*k;
                R = -[cos(tt) -sin(tt);    %cc==1 ---> CCW
                     sin(tt)  cos(tt)]; %cc==-1 ---> CW
                xy = cfun(tt)+ R*a;
                plot(z,-xy(1,:),-xy(2,:),'color',color,'LineWidth',2);
            end
end
end