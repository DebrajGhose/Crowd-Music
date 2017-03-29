%Generate notation that a crowd can play along to

clear all
close all

%set up video writing stuff

video = VideoWriter('Test.avi');
open(video);

figure1 = figure('Position', [0 , 0 , 2300 , 1400 ]);

%Set up simulation parameters

notes = 1;
length = 200; %size of your domain
lowerby = 20/30; %amount by which you want the notes to be lowered
shapesize = 1000;


%define arrays to hold your notes

C = [] ; D = []; E = []; F = []; G = []; A = []; B = []; C1 = [];

%load input array

input = [ 1 0 1 0 0 0 1 1 ; 1 0 0 0 0 0 1 1 ; 0 1 0 0 0 0 1 1 ; 1 1 1 1 1 1 1 1 ];

% loop to generate your video

limit = numel(input(:,1)); %number of things that are going to be fed

for i = 1:(limit + round(length/lowerby))
    
    if i <= limit %input note into arrays
        
        for m = 1:numel(input(i,:)) %input notes into arrays
            
            switch m
                
                case 1
                    
                    if input(i,m) == 1, C = [C ; [1,length] ]; end
                    
                case 2
                    
                    if input(i,m) == 1, D = [D ; [2,length] ]; end
                    
                case 3
                    
                    if input(i,m) == 1, E = [E ; [3,length] ]; end
                    
                case 4
                    
                    if input(i,m) == 1, F = [F ; [4,length] ]; end
                    
                case 5
                    
                    if input(i,m) == 1, G = [G ; [5,length] ]; end
                    
                case 6
                    
                    if input(i,m) == 1, A = [A ; [6,length] ]; end
                    
                case 7
                    
                    if input(i,m) == 1, B = [B ; [7,length] ]; end
                    
                case 8
                    
                    if input(i,m) == 1, C1 = [C1 ; [8,length] ]; end
                    
            end
            
            
            
            
        end
        
        
    end %if statement to put feed input data into notes
    
    for loweri = 1:30
        
        %lower notes in the domain y
        
        if ~isempty(C), C = C - [0,lowerby]; end
        if ~isempty(D), D = D - [0,lowerby]; end
        if ~isempty(E), E = E - [0,lowerby]; end
        if ~isempty(F), F = F - [0,lowerby]; end
        if ~isempty(G), G = G - [0,lowerby]; end
        if ~isempty(A), A = A - [0,lowerby]; end
        if ~isempty(B), B = B - [0,lowerby]; end
        if ~isempty(C1), C1 = C1 - [0,lowerby]; end
        
        %disp(C)
        
        %plot things
        hold off
        %plot line
        
        plot([0:10] , 5*ones(1,11) ,'r' , 'LineWidth',2 );
        
        
        hold on
        
        
        if ~isempty(C)
            for ploti = 1:numel(C( :, 1  )), scatter( C(ploti,1) , C(ploti,2) , shapesize ,'fill' , 'd' , 'MarkerFaceColor' , [ 0.4 0.9 0.9] ); end
        end
        
        if ~isempty(D)
            for ploti = 1:numel(D( :, 1  )), scatter( D(ploti,1) , D(ploti,2) , shapesize, 'fill' ,  's' , 'MarkerFaceColor' , [ 0.9 0.4 0.9]  ); end
        end
        
        if ~isempty(E)
            for ploti = 1:numel(E( :, 1  )), scatter( E(ploti,1) , E(ploti,2) , shapesize , 'fill' ,  'o' , 'MarkerFaceColor' , [ 0.9 0.9 0.4]  ); end
        end
        
        if ~isempty(F)
            for ploti = 1:numel(F( :, 1  )), scatter( F(ploti,1) , F(ploti,2) , shapesize ,  'fill' ,  '^' , 'MarkerFaceColor' , [ 0.4 0.9 0.4] ); end
        end
        
        if ~isempty(G)
            for ploti = 1:numel(G( :, 1  )), scatter( G(ploti,1) , G(ploti,2) , shapesize, 'fill' ,  'p' , 'MarkerFaceColor' , [ 0.9 0.4 0.4] ); end
        end
        
        if ~isempty(A)
            for ploti = 1:numel(A( :, 1  )), scatter( A(ploti,1) , A(ploti,2) , shapesize , 'fill' ,  'h' , 'MarkerFaceColor' , [ 0.5 0.7 0.9] ); end
        end
        
        if ~isempty(B)
            for ploti = 1:numel(B( :, 1  )), scatter( B(ploti,1) , B(ploti,2) , shapesize , 'fill' , 'o' , 'MarkerFaceColor' , [ 0.9 0.1 0.5] ); end
        end
        
        if ~isempty(C1)
            for ploti = 1:numel(C1( :, 1  )), scatter( C1(ploti,1) , C1(ploti,2) , shapesize , 'fill' ,  '>' , 'MarkerFaceColor' , [ 0.3 0.9 0.5] ); end
        end
        
        %plot properties
        
        axis([ 0 , 10 , 0 , length    ]) ;
        %axis off
        set(gca,'Color','k' , 'YTick', [] , 'XTick',[] )
        drawnow
        
        %write into video file
         writeVideo(video, getframe(figure1) );

    end
end

close(video);