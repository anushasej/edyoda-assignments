def fun(x):
    return x[1]
l =[]
n = int(input("length of list:"))
for i in range(n):
    k =[]
    a= int(input("0th"))
    b = int(input("1th"))
    k.extend([a,b])
    l.append(tuple(k))
print(l)
print(sorted(l,key=fun))