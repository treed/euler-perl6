# Solved in 1.5s
my $sum-of-squares = [+] (1..100).map({$_ * $_});
my $square-of-sums = ([+] (1..100)) ** 2;
say $square-of-sums - $sum-of-squares;
