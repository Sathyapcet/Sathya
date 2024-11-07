#!/usr/bin/perl
use strict;
use warnings;

# Function to check if a string is a palindrome
sub is_palindrome {
    my ($string) = @_;

    # Remove spaces and convert to lowercase for uniformity
    $string =~ s/\s+//g;      # Remove all whitespace
    $string = lc($string);    # Convert to lowercase

    # Compare the string with its reverse
    return $string eq reverse($string);
}

# Input string
print "Enter a string or number: ";
my $input = <STDIN>;
chomp($input);  # Remove newline character from input

# Check if input is a palindrome
if (is_palindrome($input)) {
    print "'$input' is a palindrome.\n";
} else {
    print "'$input' is not a palindrome.\n";
}
