
# Python program to explain cv2.cvtColor() method 
   
# importing cv2 
import cv2 
import numpy as np
# path 

   
# Reading an image in default mode
src = cv2.imread('/home/marcosvinicius/Downloads/planta.jpeg')
   
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


# Displaying the image 
cv2.imshow(window_name, green_mask)
cv2.imshow('entrada', src)
cv2.waitKey(0)
cv2.destroyAllWindows()