#! /usr/bin/tclsh

# bigdigits reads a number entered on the command line (as a string), and
# outputs the same number onto the console using "big" digits.
# That is, digits in the style of old big 20th century line printers that
# used to print the job numbers and other identification in "big" digits
# on the cover page.
#
# The idea for this program is taken from the book "Programming in GO"
# It is an attempt to translate the GO program into tcl.

set bigdigits [list \
	[list 			\
		"  000  "	\
    	" 0   0 "	\
    	"0     0"	\
    	"0     0"	\
    	"0     0"	\
    	" 0   0 "	\
    	"  000  "]	\
    [list			\
		" 1 "		\
    	"11 "		\
    	" 1 "		\
    	" 1 "		\
    	" 1 "		\
    	" 1 "		\
    	"111"    ]	\
    [list			\
    	" 222 "		\
    	"2   2"		\
    	"   2 "		\
    	"  2  "		\
    	" 2   "		\
    	"2    "		\
    	"22222"  ]	\
    [list			\
    	" 333 "		\
    	"3   3"		\
    	"    3"		\
    	"  33 "		\
    	"    3"		\
    	"3   3"		\
    	" 333 "  ]	\
    [list 			\
    	"   4  "	\
    	"  44  "	\
    	" 4 4  "	\
    	"4  4  "	\
    	"444444"	\
    	"   4  "	\
    	"   4  " ]	\
    [list 			\
    	"55555"		\
    	"5    "		\
    	"5    "		\
    	" 555 "		\
    	"    5"		\
    	"5   5"		\
    	" 555 "  ]	\
    [list 			\
    	" 666 "		\
    	"6    "		\
    	"6    "		\
    	"6666 "		\
    	"6   6"		\
    	"6   6"		\
    	" 666 "  ]	\
    [list 			\
    	"77777"		\
    	"    7"		\
    	"   7 "		\
    	"  7  "		\
    	" 7   "		\
     	"7    "		\
    	"7    "  ]	\
    [list 			\
    	" 888 "		\
    	"8   8"		\
    	"8   8"		\
    	" 888 "		\
    	"8   8"		\
    	"8   8"		\
    	" 888 "  ]	\
    [list			\
    	" 9999"		\
    	"9   9"		\
    	"9   9"		\
    	" 9999"		\
    	"    9"		\
    	"    9"		\
    	"    9"  ]	\
]

if {$argc == 0} {
	puts "usage: $argv0 <whole-number>"
	exit
}

set digits $argv

for {set row 0} {$row < [llength [lindex $bigdigits 0]]} {incr row} {
	for {set col 0} {$col < [string length $digits]} {incr col} {
		set digit [string index $digits $col]
		if {[string is integer $digit]} {
			puts -nonewline "[lindex $bigdigits $digit $row] "
		} else {
			puts "invalid whole number"
			exit
		}
	}
	puts ""
}