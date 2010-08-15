my $number = 0;
my $try = 20;
while ($number == 0) {
    say "Trying $try";
    $number = $try if $try %% all(1..20);
    $try++;
}
