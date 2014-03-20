# NAME

Lingua::JA::KanjiTable - Kanji properties

# SYNOPSIS

    use Lingua::JA::KanjiTable;
    use utf8;

    '亜' =~ /^\p{InJoyoKanji}$/    ? 1 : 0; # => 1
    '亞' =~ /^\p{InJoyoKanji}$/    ? 1 : 0; # => 0
    '叱' =~ /^\p{InJouyouKanji}$/  ? 1 : 0; # => 0
    '𠮟' =~ /^\p{InJouyouKanji}$/  ? 1 : 0; # => 1
    '固唾' =~ /^\p{InJoyoKanji}+$/ ? 1 : 0; # => 1

    '柊' =~ /^\p{InJinmeiyoKanji}$/ ? 1 : 0; # => 1
    '亞' =~ /^\p{InJinmeiyoKanji}$/ ? 1 : 0; # => 1
    '苺' =~ /^\p{InJinmeiyoKanji}$/ ? 1 : 0; # => 1
    '姦' =~ /^\p{InJinmeiyoKanji}$/ ? 1 : 0; # => 0

    '太郎喜左衛門将時能' =~ /^\p{InJinmei}+$/ ? 1 : 0; # => 1
    '愛子エンジェル'     =~ /^\p{InJinmei}+$/ ? 1 : 0; # => 1
    'み〜こ'             =~ /^\p{InJinmei}+$/ ? 1 : 0; # => 0
    'ニャー'             =~ /^\p{InJinmei}+$/ ? 1 : 0; # => 1

    sub InJinmei
    {
        return <<"END";
    +Lingua::JA::KanjiTable::InJoyoKanji
    +Lingua::JA::KanjiTable::InJinmeiyoKanji
    3041\t3096
    309D
    309E
    30A1\t30FA
    30FC\t30FE
    END
    }

# DESCRIPTION

Lingua::JA::KanjiTable provides user-defined Unicode properties relating to Kanji.

# EXPORTS

- InJoyoKanji - 常用漢字表（平成22年11月30日内閣告示）
- InJouyouKanji - ditto
- InJinmeiyoKanji - 人名用漢字
- InJinmeiyouKanji - ditto

# SEE ALSO

[Jōyō kanji - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/J%C5%8Dy%C5%8D_kanji)

[常用漢字表（平成22年11月30日内閣告示）](http://www.bunka.go.jp/kokugo_nihongo/pdf/jouyoukanjihyou_h22.pdf)

[Jinmeiyō kanji - Wikipedia, the free encyclopedia](http://en.wikipedia.org/wiki/Jinmeiy%C5%8D_kanji)

戸籍法 第50条

戸籍法施行規則 第60条

[人名用漢字表](http://www.moj.go.jp/content/000058122.pdf)

# LICENSE

Copyright (C) pawa.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

pawa <pawa@pawafuru.com>
