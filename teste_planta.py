
# Python program to explain cv2.cvtColor() method 
   
# importing cv2 
import cv2 
import numpy as np
from random import randint # vamos utilizar cores aleatórias para exibir os contornos da imagem

# path 

   
# Reading an image in default mode
src = cv2.imread('/home/ocean/Downloads/planta.jpeg')
print('Largura da imagem:',src.shape[1]) 
print('Altura da imagem:',src.shape[0]) 

   
# Window name in which image is displayed
window_name = 'Image'
  
# Using cv2.cvtColor() method
# Using cv2.COLOR_BGR2GRAY color space
# conversion code
mask = cv2.cvtColor(src, cv2.COLOR_BGR2HSV)

low_green = np.array([47, 40, 118])
high_green = np.array([93, 172, 255])
green_mask = cv2.inRange(mask, low_green, high_green)

erodeElement = cv2.getStructuringElement(cv2.MORPH_RECT,(3,3))
dilateElement = cv2.getStructuringElement(cv2.MORPH_RECT,(8,8))
   #erosão de rgb
green_mask = cv2.erode(green_mask,erodeElement)
    #dilatação de rgb
green_mask = cv2.dilate(green_mask,dilateElement)

contours, hierarchy = cv2.findContours(green_mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE) # acha os contornos
for i, c in enumerate(contours): # desenha os contornos na imagem com cores aleatórias para cada contorno
  img_contourn = cv2.drawContours(src, contours, i, (randint(0,255),randint(0,255),randint(0,255)), 3)
cv2.imshow("weqe",img_contourn) # perceba que um contorno é sempre o retangulo mais externo da imagem e existem vários


# Displaying the image 
cv2.imshow(window_name, green_mask)
cv2.imshow('entrada', src)
print('Contorno retangular externo:', contours[0], 'possui %i pontos' % len(contours[0]))
area = cv2.contourArea(contours[0])
print('A área em pixels é de %i pixels.' % area)
cv2.waitKey(0)
cv2.destroyAllWindows()