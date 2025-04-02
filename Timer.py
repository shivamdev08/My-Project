import time

def timer(t):
    while (t > 0):
        minute, second = divmod(t, 60)
        count = "{:02d}:{:02d}".format(minute, second)
        print(count, end="\r")
        time.sleep(1)
        t -= 1
print("Time's Up")

t = int(input("Enter time for second : "))
timer(t)