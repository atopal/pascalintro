"""
Accept two integers bigger than 0 and compute their gcd
"""

print "Please type in two integers bigger than zero/n"
print "Integer 1: "
num1=int(raw_input())
while num1 <= 0:
    print "please type in an integer bigger than zero"
    num1=int(raw_input())
print "Integer 2: "
num2=int(raw_input())
while num2 <= 0:
    print "please type in an integer bigger than zero"
    num2=int(raw_input())

print "The gcd of {} and {} is".format(num1, num2),

while num1 != num2:
    if num1 > num2:
        num1 = num1-num2
    else:
        num2 = num2-num1
print "{}".format(num2)

