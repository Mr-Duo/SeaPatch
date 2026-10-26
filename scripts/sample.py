import math

file = 'images.txt'
images = []
with open(file, 'r') as f:
    images = f.readlines()
    images.sort()
    
m = math.floor(float(len(images) / 20))
chosen = []
for i in range(20):
    print(len(images) - i * m)
    chosen.append(images[len(images) - i * m - 1])

chosen.sort()    
with open(f"chosen_{file}", "w") as f:
    f.writelines(chosen)