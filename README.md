complexity
==========

Tools related to Code Complexity

Simple usage of a McCabe complexity analysis tool, CCCC

CCCC is available at http://sourceforge.net/projects/cccc/files/cccc/3.1.4/

This repository is supplementary material to the 
"Code Complexity 101" tutorial at 
http://www.slideshare.net/arunksaha/software-complexity-41004522

It contains two items:

 - simple easy to use and easy to understand wrappers over CCCC

   - mccabe.sh
   - mccabe_extract.py

 - example of some simple (trivial) code and the result of running
   McCabe on them.

Usage Screenshot:

<pre>
$ ./mccabe.sh test
   4 bothNonZero_2() test.c:42
   4 bothNonZero_1() test.c:32
   3 c4_bothtrue() test.c:27
   3 c3_min() test.c:17
   2 c2_min() test.c:12
   2 bothNonZero_3() test.c:50
   1 c1_redirect() test.c:6
   1 c1_direct() test.c:2
</pre>

