#!/usr/bin/perl
#
# Copyright Brian Ponnampalam 2020
# Author is not held responsible for any damages by this script. 
# Feel free to redistribute and modify the script.
#
#
# Author: brian2004[at] hotmail[dot] com

# problem: a boy takes x amount of flowers to three temples. there are three ponds infront of each temple.
# he must wash the flowers before worshiping the temple. everytime he washes them the flowers doubles.
# he must equally divide them for all three temples. how many flowers did he take initially? and how many put in the altar?

# $i flowers taken initially
# $k flowers left at the temple
# $i must be < $k with multiples of 7 where as $k is multiple of 8

$i=0;
$j=0;
$k=0;
$temple1=0;
$temple2=0;
$temple3=0;

for ($i = 0; $i < 100; $i++) {
    #$j = $i;
    for ($k = 0; $k < 200; $k++) {
       $j = $i;
       $j = ($j * 2) - $k;
       $temple1 = $j;
       $temple2 = ($j * 2) - $k;
       $temple3 = ($temple2 * 2) - $k;
       if ($temple3 == 0) {
          print "Flowers taken initially: $i remainder: $temple1\n";
          print "Flowers taken to the second temple: ".($j * 2)." remainder: $temple2\n";
          print "Flowers taken to the third temple: ".($temple2 * 2)." remainder: $temple3\n";
          print "\n";
       }
    }
}