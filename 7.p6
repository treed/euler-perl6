my $primes_to = 500000; 
sub get_primes($to) {
    say "getting primes to $to";
    my @primes = Array.new($to + 1);
    @primes[0..1] = 1,1;

    for 2 .. sqrt $to -> $i {
        next if @primes[$i];
        say "Clearing multiples of $i";
        loop (my $j = $i + $i; $j <= $to; $j += $i) {
            @primes[$j] = 1;
        }
    }
    return @primes;
}

my @not_prime = get_primes($primes_to);
my @primes; 

sub is_prime($number) {
    return not defined(@not_prime[$number]);
}

for 2 .. $primes_to -> $number {
    @primes.push($number) if is_prime($number);
}

say "done generating primes";

say @primes.elems;
