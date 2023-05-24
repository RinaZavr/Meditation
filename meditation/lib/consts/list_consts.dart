import 'package:meditation/main_screen/album_screen/view/album_view.dart';
import 'package:meditation/main_screen/player_screen/view/player_view.dart';
import 'package:meditation/main_screen/playlist_screen/view/playlist_view.dart';

const List widgetSelect = [
  AlbumView(),
  PlaylistView(),
  PlayerView(),
];

const List audiosSleep = [
  ['Медитация перед сном', 'https://s157vlx.storage.yandex.net/get-mp3/8bf7491f0796a29947b277aecd033226/0005fc41573c2bda/rmusic/U2FsdGVkX1_Ik3EjwFb4J0UpmB1e9dav-k1PEG-OZSUuLrggfbTSholVUGil6vaxSDtmmNCWqECfgVwNrCNqAR9J53O-PiFN8IRy_IDGw9M/5c7e9db86aa35d65dbeb4b414059d7ae76db6d55c5267fa560a9231d7f600be2/36943?track-id=104513325&play=false'],
  ['Улучшение сна', 'https://s474vla.storage.yandex.net/get-mp3/4bb9ba88b4fa8cbbecf29e1fe72ea196/0005fc3ad91202df/rmusic/U2FsdGVkX1-SwOFrQF5bf2Dwf5WasRAot6A58Z2gQJhJbORAYDX5X8ZkUgLTGQZnnoIzED7zfX9GooD84FGQVRuEClEA1Z3EcOWxMJeATx8/a504637c969a0613e50400b0e933b702963c844be7447a216ad3cbba5a090685/111759?track-id=66853477&play=false'],
  ['Бессоница', 'https://s228iva.storage.yandex.net/get-mp3/04edb5193134f530f658fa18c1e7bd04/0005fc3adcbec5b5/rmusic/U2FsdGVkX1_vcexp2ALDIYGJJV2ICKZIrFbiX6iqS2IptU5GDl8lknBuMcD4TGp85gfTyyZEOBU-i6TRZTnSfjGSCftDjgoFr_6mOaomuUY/11cc4a876053127eedb20e07a9d37e5f404cdead9506ad0c1f6f9cb4062f768a/122587?track-id=66853476&play=false'],
];

const List audiosStress = [
  ['Медитация для исцеления', 'https://s124iva.storage.yandex.net/get-mp3/28ac9a26a4aaaafac7216c8c94acb931/0005fc3accf60f1d/rmusic/U2FsdGVkX1_at7kx2lPCAyjzTLUugq87tCiiFFkcxgadFzf89yhGy9KzQefTuGeppJZKwro_0bC8_I57rvG2sv7piD3ENXFJS7iPSwfsJC8/3b427c7cce465daa6ec39361673b9a66f37b7653351339420967d973cc7fee57?track-id=51413486&play=false'],
  ['Духовная академия', 'https://s27vla.storage.yandex.net/get-mp3/b100048b41b1643ad279f0f7bae0f63d/0005fc3ad302f096/rmusic/U2FsdGVkX18cG0vDzQzlXzeJcUWgkkaFNF22WrPDVoi4BVsortnpAajVlhDWimyjnhwPCiirhbyJJZrGrELSjPi56dwJicnU8o5Y09muQE8/503d9813ff740146a47f81e356afeee48712e86e3aef6141fc6d1c16b0fb21ed?track-id=44816410&play=false'],
  ['Академия глубокой релаксации', 'https://s193iva.storage.yandex.net/get-mp3/ba4f8484af9638fadd28ab68a64acaf0/0005fc3ad5409bf6/rmusic/U2FsdGVkX18BKHY5MduGqA2QF0vI7Mee6D2GetHwN6gQIZRbZOPu2xgJ2LinBV-PJ7xjN-XdPUPILRtkJmgEZzZ3JhzHX3UBfA7BMgeyi08/f6df64130bf83125aa839916347c2e5fb0c0268c73e624fa9bb1c0dd934b38ab/33443?track-id=94777182&play=false'],
];

const List audiosDay = [
  ['Восстановление сил', 'https://s226vlx.storage.yandex.net/get-mp3/251e709ce971a7986a8f54d214afbc90/0005fc3adf607c0b/rmusic/U2FsdGVkX18I75edJeMVecqLpQUXtb1HObSB-zftigPmlu8rRWFljpgU9XTcg6oOIup_-ln_kKNibFMgBvbWFiw2Rxt9xx1hQ228RZmEuZ0/8df0b5e80c5353c7895326bb881b42af02fb113ee2897edd55d321936215e89c/31783?track-id=104513310&play=false'],
  ['Равновесие', 'https://s486vla.storage.yandex.net/get-mp3/7590bbe26f55be145511fea729aec678/0005fc3ae104c0bc/rmusic/U2FsdGVkX19r8uraE3WVz6fZTRo8iV_8SZbxaDKKZ_M7WzHHVxYJLSwcGZYM1SjI6doAH-x_60fd4W7MM-TUNYhTmP17N8ycCVGsb5yFMO0/ee2b74aa2ddcff862b5e6602c03826cf668eee6623e11cf41407a19436e204d9/37059?track-id=104513323&play=false'],
  ['Расслабление', 'https://s157vlx.storage.yandex.net/get-mp3/3b50c464b1185bd7dfc2cba0c9d2bef3/0005fc3ae24e119f/rmusic/U2FsdGVkX1-vMHJ2ot_koPnrqi1TwNN9Dxz7fMYilkffL9nt5oiEA1WbZD2N-H27mALNnDWzaAyg5h9d9Ob8ww-plKs6xXdJ33g-JxPFQnY/e4c6905989deb671ad80b7f363e167c60af3cc7c561805196d84432ad876e894/36943?track-id=104513325&play=false'],
];