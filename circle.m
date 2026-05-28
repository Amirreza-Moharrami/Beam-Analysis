function circle(h, x, y, r, c)
th = 0:pi/50:2*pi;
x_circle = r * cos(th) + x;
y_circle = r * sin(th) + y;
plot(h,x_circle, y_circle);
fill(h,x_circle, y_circle, c);
grid(h,'on')
hold(h,'on');
end