function [S,L,ustar]=caculate1(us,vs,ws,thetas,theta,z0)
    % constants
    k=0.4; % von Karman constant
    g=9.8; % gravitational acceleration  

    % friction velocity
    ustar=(mean(us.*ws).^2+mean(vs.*ws).^2).^(0.25);
    ustar=ustar./100;

    % Monin-Obukhov length
    L=-(mean(theta).*(ustar.^3))./(k.*g.*mean(ws.*thetas));

    % stability
    S=z0./L;
end