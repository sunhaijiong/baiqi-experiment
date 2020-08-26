function fy=anglexy(fx,a,b)
    fa=[sin(-a/180*pi) cos(-a/180*pi)];
    fb=[sin(-b/180*pi) cos(-b/180*pi)];
    fx1=rotatexyz(fx,fa,1);
    fx2=rotatexyz(fx1,fb,2);
    fy=fx2;
end
