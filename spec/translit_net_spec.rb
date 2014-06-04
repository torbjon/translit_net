# coding: utf-8
require 'translit_net'

describe 'TranslitNet' do

  it "should return ru_en transliterated text" do
    ru = "АаБбВвГгДдЕеЁёЖжЗзИиЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчЩщШшЫыЬьЪъЭэЮюЯя"
    en = "AaBbVvGgDdEeJojoZhzhZzIiJjKkLlMmNnOoPpRrSsTtUuFfHhCcChchShhshhShshYy'''###JejeJujuJaja"
    expect(ru.translit({from: 'ru', to: 'en'})).to eq(en)
  end

  it "should return ua_en transliterated_text" do
    ua = "АаБбВвГгҐґДдЕеЄєЖжЗзИиІіЇїЙйКкЛлМмНнОоПпРрСсТтУуФфХхЦцЧчШшЩщЬьЮюЯя"
    en = "AaBbVvGgG'g'DdEeJejeZhzhZzYyIiI'i'JjKkLlMmNnOoPpRrSsTtUuFfHhCcChchShshShhshh'''JujuJaja"
    expect(ua.translit({from: 'ua', to: 'en'})).to eq(en)
  end

end
