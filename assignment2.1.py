#l = [(2, 5), (1, 2), (4, 4), (2, 3), (2, 1)]
l =[]
n = int(input("length of list:"))
for i in range(n):
    k =[]
    for j in range(2):
        k.append(int(input("enter tuple elements")))
    l.append(tuple(k))
print(l)
i =0
j=0
while j < len(l):
    for i in range(len(l)-1):
        if(l[i][1] > l[i+1][1]):
            temp =l[i]
            l[i] = l[i+1]
            l[i+1] = temp
    j+=1
print(l)