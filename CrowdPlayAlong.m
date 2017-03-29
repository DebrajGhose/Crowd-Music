%falling circle

notes = 1;
length = 200;

Axy = [1,200];
figure();


for i = 1:200
    
    Axy = Axy - [0, 1];
    
    plot( Axy(1) , Axy(2) , '.'  , 'MarkerSize', 60);
    
    axis([0, 8, 0, 200]);
    
set(gcf,'GraphicsSmoothing','on')
drawnow
    
end