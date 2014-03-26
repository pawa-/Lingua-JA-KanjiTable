use strict;
use warnings;
use utf8;
use Lingua::JA::KanjiTable;
use Test::More;

binmode Test::More->builder->$_ => ':utf8'
    for qw/output failure_output todo_output/;

my ($cnt_joyo, $cnt_jinmei);

for my $dec ( hex('0000') .. hex('10FFFF') )
{
    next if hex('D800') <= $dec && $dec <= hex('DBFF'); # High Surrogate Area
    next if hex('DC00') <= $dec && $dec <= hex('DFFF'); # Low  Surrogate Area
    next if hex('FDD0') <= $dec && $dec <= hex('FDEF'); # Noncharacters
    next if sprintf("%04X", $dec) =~ /FFF[EF]$/;        # Noncharacters

    my $chara = chr $dec;
    $cnt_joyo++   if $chara =~ /^\p{InJoyoKanji}$/;
    $cnt_jinmei++ if $chara =~ /^\p{InJinmeiyoKanji}$/;
}

is($cnt_joyo,   2136,   'Joyo Kanji count');
is($cnt_jinmei, 861,    'Jinmei Kanji count');

done_testing;
