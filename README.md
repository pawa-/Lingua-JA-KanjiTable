# NAME

Lingua::JA::KanjiTable - Kanji properties

# SYNOPSIS

    use Lingua::JA::KanjiTable;
    use utf8;

    '亜' =~ /^\p{InJoyoKanji}$/   ? 1 : 0; # => 1
    '亞' =~ /^\p{InJoyoKanji}$/   ? 1 : 0; # => 0
    '叱' =~ /^\p{InJouyouKanji}$/ ? 1 : 0; # => 0
    '𠮟' =~ /^\p{InJouyouKanji}$/ ? 1 : 0; # => 1

# DESCRIPTION

Lingua::JA::KanjiTable provides user-defined Unicode properties relating to Kanji.

# EXPORTS

- InJoyoKanji - 常用漢字表（平成22年11月30日内閣告示）
- InJouyouKanji - ditto

# SEE ALSO

[Jōyō kanji - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/J%C5%8Dy%C5%8D_kanji)

[常用漢字表（平成22年11月30日内閣告示）](http://www.bunka.go.jp/kokugo_nihongo/pdf/jouyoukanjihyou_h22.pdf)

# LICENSE

Copyright (C) pawa.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

pawa <pawa@pawafuru.com>
