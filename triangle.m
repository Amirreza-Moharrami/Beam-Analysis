function triangle(a,w,x1,y1)
ar=0.866; % Aspect ratio for equilateral triangle
h=ar*w;%height of triangle
x=[x1 w+x1 w/2+x1];%x coordinates of vertices
y=[y1 y1 h+y1];%y coordinates of vertices
patch(a,x,y,'y') %plotting triangle in white color
% daspect(a,[1 1 1]);%equal data unit length along x and y axis
hold(a,'on');
% xlim([-5 15])
% ylim([-5 15])
end