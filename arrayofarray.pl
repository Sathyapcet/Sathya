#!/usr/bin/perl
use strict;
use warnings;

# Creating an array of arrays
my @matrix = (
    [1, 2, 3],       # First row (array reference)
    [4, 5, 6],       # Second row
    [7, 8, 9]        # Third row
);

# Accessing elements from the array of arrays
print "Element at [0][0]: $matrix[0][0]\n";   # Output: 1
print "Element at [1][2]: $matrix[1][2]\n";   # Output: 6

# Printing the entire matrix
for my $row (@matrix) {
    print join(" ", @$row), "\n";  # Dereference the array reference
}

# Modifying an element
$matrix[2][1] = 88;

# Printing the modified matrix
print "\nModified matrix:\n";
for my $row (@matrix) {
    print join(" ", @$row), "\n";
}
