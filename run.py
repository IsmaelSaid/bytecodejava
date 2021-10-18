import sys
import subprocess

def print_usage():
    print("Usage: python run.py", end=' ')
    print("<Smali program (.smali) to compile and run>", end=' ')
    print("[optional args]")

##
## A EXECUTER EN MODE ROOT (sudo python run.py)
##

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print_usage()
    else:
        program = sys.argv[1]
        arguments = sys.argv[2:]
        if len(program) < 6:
            print_usage()
        elif program[-6:] != ".smali":
            print_usage()
        else:
            name = program[:-6]
            zip = name + ".zip"
            subprocess.call(["java", "-jar",\
                                 ".\smali-2.5.2.jar",\
                                 "a", program, "-o", "classes.dex"])
            subprocess.call(["zip", zip, "classes.dex"])
            # sur certains emulateurs on ne peut pas lire/ecrire dans /data/local -> /data/local/tmp
            subprocess.call(["adb", "push", zip, "/data/local/tmp/"])
            subprocess.call(["adb", "shell", "dalvikvm", "-cp",\
                                 "/data/local/tmp/" + zip, name] + arguments)
