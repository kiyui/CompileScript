CompileScript
=============
**What is it?**
A simple script that makes me even lazier
with it's ability to easily compile code
based on the file extension, clear working
files in the directory, paste a makefile
and pipe text to test the output of a program.

**Usage**

```
Lazy compile script
Syntax:
Compile a file:
> compile file.{c,cpp,java,pl}
Place a makefile in working directory:
> compile make
List all object files to add to makefile:
> compile makeline
Clean working directory:
> compile clean
Pipe file to an executable:
> compile pipe file.txt file.bin
Time an executable:
> compile time file.bin
Time and pipe to an executable:
> compile  pipetime file.txt file.bin
Test executable for memory leaks:
> compile mem file.bin
```

**Configuration**
Users can set their own compile flags for various languages by creating the file:
> ~/.compilerc

```
#CompileScript config file
# GCC compilation flags
GCC_FLAGS="-std=c99"
# G++ compilation flags
GPP_FLAGS="-std=c++11"
# JAVAC compilation flags
JAVAC_FLAGS=""
# RUSTC compilation flags
RUSTC_FLAGS=""
# File types for cleaning mode
clean_files="*.out *.bin *~ *.o *.pyc"
# File types for recursive cleaning mode
vlean_files="*~"
# Recursive cleaning mode rm options
vrm_options="-i"
```


**Why is this necessary?**
It isn't, but typing this:
> compile mycode.cpp

is a lot easier than this:
> g++ mycode.cpp -o mycode.bin -std=c++0x

Also, this:
> compile pipe input.txt mycode.bin

is a lot easier than this:
> cat input.txt | ./mycode.bin

By now, you should get the point.

**Are you really that lazy??!**
Yes, my .bashrc has an alias 'l' for 'ls'
