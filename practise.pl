#!/usr/bin/perl
my @input_numbers = (1, 2, 4, 8, 16, 32, 64);
my @bigger_than_10 = grep $_ > 10, @input_numbers;

# print @bigger_than_10;

my @end_in_4 = grep /4$/, @input_numbers;

# print @end_in_4;

sub digit_sum_is_odd {
    my $input = shift;
    my @digits = split//, $input;
    my $sum;
    $sum += $_ for @digits;
    return $sum % 2;
}

my @odd_digit_sum = grep digit_sum_is_odd($_), @input_numbers;

my $out = join "\n", @odd_digit_sum;
print "$out\n";
