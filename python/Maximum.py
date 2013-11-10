"""
Take a certain number of integers return the biggest one
"""
maxnumbers=4
print "Please type {} integers: ".format(max)
print "1. number: "
user_input = int(raw_input())
max=user_input

for i in range(2,maxnumbers+1):
    print "{}. number: ".format(i)
    user_input = int(raw_input())
    if user_input > max:
        max=user_input
print "Biggest number is {}".format(max)


