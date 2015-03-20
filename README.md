CompileScript
=============
**What is it?**
A simple script that makes me even lazier
with it's ability to easily compile code
based on the file extension, clear working
files in the directory, paste a makefile
and pipe text to test the output of a program.

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
