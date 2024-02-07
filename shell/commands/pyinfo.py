import sys
import platform
import os
import subprocess
import argparse

def getEnvInfo():
    print("Python Environment Information:\n-------------------------------")
    print(f"Python Version:                 {platform.python_version()}")
    print(f"Python Interpreter Location:    {sys.executable}")
    print(f"System Platform:                {platform.system()}")
    print(f"Platform Release:               {platform.release()}")
    print(f"Platform Version:               {platform.version()}")
    print(f"Platform Architecture:          {platform.architecture()[0]}")
    print(f"Processor:                      {platform.processor()}")

def getInstalledPackages():
    """Get a list of installed pip packages."""
    try:
        installed_packages = subprocess.check_output([sys.executable, '-m', 'pip', 'list']).decode('utf-8')
    except subprocess.CalledProcessError:
        installed_packages = "Failed to retrieve package list."
    return installed_packages

def getEnvironmentVars():
    """Get a list of environment variables."""
    for key, value in os.environ.items():
        if "PYTHON" in key.upper():
            print(f"{key}: {value}")

def getVirtualEnvInfo():
    print("\nVirtual Environment:")
    print(" Active" if 'VIRTUAL_ENV' in os.environ else "   Not active")
    
    # If the virtual environment is active, print the path
    if 'VIRTUAL_ENV' in os.environ:
        print(f"Virtual Environment Path: {os.environ['VIRTUAL_ENV']}")
        
def getSystemEncoding():
    print(f"\nSystem Encoding: {sys.getdefaultencoding()}")

def getBuild():
    print(f"\nPython Build: {platform.python_build()}")
    
def pipInfo():
    print(f"\npip Version: {subprocess.check_output([sys.executable, '-m', 'pip', '--version']).decode('utf-8')}")

if __name__ == "__main__":
    args = argparse.ArgumentParser()
    args.add_argument("-e", "--env", help="Prints the environment information", action="store_true")
    args.add_argument("-pkg", "--packages", help="Prints the list of installed packages", action="store_true")
    args.add_argument("--vars", help="Prints the environment variables", action="store_true")
    args.add_argument("-v", "--virtualenv", help="Prints the virtual environment information", action="store_true")
    args.add_argument("--encoding", help="Prints the system encoding", action="store_true")
    args.add_argument("--build", help="Prints the Python build information", action="store_true")
    args.add_argument("--pip", help="Prints pip information", action="store_true")
    args.add_argument("-a","--all", help="Prints all information", action="store_true")
    args = args.parse_args()
    
    # If no args provide only environment information
    if not any(vars(args).values()):
        args.env = True
    
    if args.all:
        getEnvInfo()
        getEnvironmentVars()
        getVirtualEnvInfo()
        getSystemEncoding()
        getBuild()
        pipInfo()
        print("\n", getInstalledPackages())
    else:
        if args.env:
            getEnvInfo()
        if args.vars:
            getEnvironmentVars()
        if args.virtualenv:
            getVirtualEnvInfo()
        if args.encoding:
            getSystemEncoding()
        if args.build:
            getBuild()
        if args.pip:
            pipInfo()
        if args.packages:
            print("\n", getInstalledPackages())