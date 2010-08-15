# Solution in 34.6s
sub get-c($a, $b) {
    return sqrt($a ** 2 + $b ** 2);
}

sub test-pair($a, $b) {
    my $c = get-c($a, $b);
    my $result = [+] $a, $b, $c;
    return $result <=> 1000;
}

for (1..500).reverse -> $i {
    for ($i+1)..501 -> $j {
        my $result = test-pair($i, $j);
        last if $result == 1;
        next if $result == -1;
        say [*] $i,$j,get-c($i, $j);
        exit;
    }
}
