# -*- coding: utf-8 -*-
"""
Code by Debraj Ghose. 2017.


"""
import pygame

"""
class Particle:
    
    def __init__(self , (x,y) , size ):
        
"""

	 
background_colour = (0,0,0) #black background

(width, height) = (700, 500)

screen = pygame.display.set_mode((width, height)) #set up the display where your game will happen

pygame.display.set_caption('Crowd Music')#Window caption

screen.fill(background_colour) #fill background color

#-----------------------------
# DRAW THINGS HERE
#-----------------------------           

pygame.draw.circle(screen, (40,40,200) , (150,50), 10, 3 )
           
           
           
           
#---------------------------------------

           
pygame.display.flip() #this updates the screen!

running = True #create flag to indicate that stuff is running

while running:

  for event in pygame.event.get():

    if event.type == pygame.QUIT: #when you hit the x button on the top right, this should quit

      running = False #Set running to false so you can quit this shit
      pygame.quit() #If using an IDE, it's a good idea to put this in so you don't have trouble quitting 
      