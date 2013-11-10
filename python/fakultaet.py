"""
Read integer >=0, compute faculty and write result
"""

print "please give number>=0"

try:
    user_input = int(raw_input())
except:
    print "please give us a number"

while user_input <0:
    print "please give number>=0"
    user_input = int(raw_input())
if user_input>=0:
    n = 1
    for i in range(1,user_input+1):
        n = n*i
        print "{}".format(i), "{}".format(n)
    print "faculty of {} is {}".format(user_input, n)
