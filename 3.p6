# Solved in 9.3s
sub factor_one($number) {
    for 2 .. sqrt $number -> $n {
        return $n if $number %% $n;
    }
}

my $number = 600851475143;
my $max = sqrt $number;

$number /= factor_one($number) while $number > $max;

say $number;
