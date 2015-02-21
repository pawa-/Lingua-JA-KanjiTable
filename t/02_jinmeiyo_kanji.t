use strict;
use warnings;
use utf8;
use Lingua::JA::KanjiTable qw/InJinmeiyoKanji InJinmeiyouKanji InJinmeiyoKanji20101130 InJinmeiyouKanji20101130 InJinmeiyoKanji20150107 InJinmeiyouKanji20150107/;
use Test::More;

binmode Test::More->builder->$_ => ':utf8'
    for qw/output failure_output todo_output/;

# 2010年11月30日版の861字
$_ = "丑丞乃之乎也云亘亙些亦亥亨亮仔伊伍伽佃佑伶侃侑俄俠俣俐倭俱倦倖偲傭儲允兎兜其冴凌凜凛凧凪凰凱函劉劫勁勺勿匁匡廿卜卯卿厨厩叉叡叢叶只吾吞吻哉哨啄哩喬喧喰喋嘩嘉嘗噌噂圃圭坐尭堯坦埴堰堺堵塙壕壬夷奄奎套娃姪姥娩嬉孟宏宋宕宥寅寓寵尖尤屑峨峻崚嵯嵩嶺巌巖已巳巴巷巽帖幌幡庄庇庚庵廟廻弘弛彗彦彪彬徠忽怜恢恰恕悌惟惚悉惇惹惺惣慧憐戊或戟托按挺挽掬捲捷捺捧掠揃摑摺撒撰撞播撫擢孜敦斐斡斧斯於旭昂昊昏昌昴晏晃晄晒晋晟晦晨智暉暢曙曝曳朋朔杏杖杜李杭杵杷枇柑柴柘柊柏柾柚桧檜栞桔桂栖桐栗梧梓梢梛梯桶梶椛梁棲椋椀楯楚楕椿楠楓椰楢楊榎樺榊榛槙槇槍槌樫槻樟樋橘樽橙檎檀櫂櫛櫓欣欽歎此殆毅毘毬汀汝汐汲沌沓沫洸洲洵洛浩浬淵淳渚渚淀淋渥湘湊湛溢滉溜漱漕漣澪濡瀕灘灸灼烏焰焚煌煤煉熙燕燎燦燭燿爾牒牟牡牽犀狼猪猪獅玖珂珈珊珀玲琢琢琉瑛琥琶琵琳瑚瑞瑶瑳瓜瓢甥甫畠畢疋疏皐皓眸瞥矩砦砥砧硯碓碗碩碧磐磯祇祢禰祐祐祷禱禄祿禎禎禽禾秦秤稀稔稟稜穣穰穹穿窄窪窺竣竪竺竿笈笹笙笠筈筑箕箔篇篠簞簾籾粥粟糊紘紗紐絃紬絆絢綺綜綴緋綾綸縞徽繫繡纂纏羚翔翠耀而耶耽聡肇肋肴胤胡脩腔脹膏臥舜舵芥芹芭芙芦苑茄苔苺茅茉茸茜莞荻莫莉菅菫菖萄菩萌萠萊菱葦葵萱葺萩董葡蓑蒔蒐蒼蒲蒙蓉蓮蔭蔣蔦蓬蔓蕎蕨蕉蕃蕪薙蕾蕗藁薩蘇蘭蝦蝶螺蟬蟹蠟衿袈袴裡裟裳襖訊訣註詢詫誼諏諄諒謂諺讃豹貰賑赳跨蹄蹟輔輯輿轟辰辻迂迄辿迪迦這逞逗逢遥遙遁遼邑祁郁鄭酉醇醐醍醬釉釘釧銑鋒鋸錘錐錆錫鍬鎧閃閏閤阿陀隈隼雀雁雛雫霞靖鞄鞍鞘鞠鞭頁頌頗顚颯饗馨馴馳駕駿驍魁魯鮎鯉鯛鰯鱒鱗鳩鳶鳳鴨鴻鵜鵬鷗鷲鷺鷹麒麟麿黎黛鼎亞惡爲逸榮衞謁圓緣薗應櫻奧橫溫價禍悔海壞懷樂渴卷陷寬漢氣祈器僞戲虛峽狹響曉勤謹駈勳薰惠揭鷄藝擊縣儉劍險圈檢顯驗嚴廣恆黃國黑穀碎雜祉視兒濕實社者煮壽收臭從澁獸縱祝暑署緖諸敍將祥涉燒奬條狀乘淨剩疊孃讓釀神眞寢愼盡粹醉穗瀨齊靜攝節專戰纖禪祖壯爭莊搜巢曾裝僧層瘦騷增憎藏贈臟卽帶滯瀧單嘆團彈晝鑄著廳徵聽懲鎭轉傳都嶋燈盜稻德突難拜盃賣梅髮拔繁晚卑祕碑賓敏冨侮福拂佛勉步峯墨飜每萬默埜彌藥與搖樣謠來賴覽欄龍虜凉綠淚壘類禮曆歷練鍊郞朗廊錄";

is(length $_, 861, '861 kanji');

for my $char ( split(//) )
{
    ok( $char =~ /^\p{InJinmeiyoKanji}$/, "$char: U+" . sprintf("%04X", ord $char) );
}

ok(/^\p{InJinmeiyouKanji}+$/,         'Jinmeiyou Kanji latest');
ok(/^\p{InJinmeiyoKanji20101130}+$/,   'Jinmeiyo Kanji 2010-11-30');
ok(/^\p{InJinmeiyouKanji20101130}+$/, 'Jinmeiyou Kanji 2010-11-30');
ok(/^\p{InJinmeiyoKanji20150107}+$/,   'Jinmeiyo Kanji 2015-01-07');
ok(/^\p{InJinmeiyouKanji20150107}+$/, 'Jinmeiyou Kanji 2010-01-07');

ok('a' !~ /^\p{InJinmeiyouKanji}+$/, 'not Jinmeiyou Kanji');


$_ .= '巫'; # Added on 01/07/2015
is(length $_, 862, '862 kanji');

for my $char ( split(//) )
{
    ok( $char =~ /^\p{InJinmeiyoKanji}$/, "$char: U+" . sprintf("%04X", ord $char) );
}

ok(/^\p{InJinmeiyouKanji}+$/,             'Jinmeiyou Kanji latest');
ok( ! /^\p{InJinmeiyoKanji20101130}+$/,   '"巫" is not in Jinmeiyo Kanji 2010-11-30');
ok( ! /^\p{InJinmeiyouKanji20101130}+$/,  '"巫" is not in Jinmeiyou Kanji 2010-11-30');
ok(/^\p{InJinmeiyoKanji20150107}+$/,      'Jinmeiyo Kanji 2015-01-07');
ok(/^\p{InJinmeiyouKanji20150107}+$/,     'Jinmeiyou Kanji 2015-01-07');

done_testing;
