# Solution in 13.3s
sub is-palindrome($test) {
    return $test == $test.flip;
}

my $group-by = 10;
for (0..(1000 / $group-by - 1)).reverse <<*<< $group-by -> $group {
    for (100..999).reverse -> $i {
        for ($group..($group + ($group-by - 1))).reverse -> $j {
            if is-palindrome($i * $j) {
                say $i * $j;
                exit;
            }
        }
    }
}
