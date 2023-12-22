// Digimon World Dawn
// #ID = 9443

// $1359FC: First Unique ID Generated [32 bits]
// $135A00: Player Name (2 bytes per letter, 12 bytes, with last one being FFFF to mark the end of the string)
name_first_letter = 0x135A00

// $135A0C: Bits (Game Money) [32 bits] (Max f423f)
// $135A14: Game Time [32 bits] (Max dbb9fc0 / 999:59:59 hours)
function in_game_time() => dword(0x135A14)

// $135A24: Last Unique ID generated [32 bits]
// $135A28: Party Slots [32 bits] 8 Slots total, from left to right to Relief Digimon. It stores the Digimon's Unique ID.
// $135A50: --------------------------------------------------
//          1st Digimon Info [356 bytes]
//          Unique ID [32 bits]
first_digimon_address = 0x135A50
digimon_stats_offsets = {
    "Species ID": 0x4,
    "HP": 0x40,
    "MP": 0x46,
    "Atk": 0x48,
    "Def": 0x4A,
    "Spt": 0x4C,
    "Spd": 0x4E,
    "Move 1": 0x54,
    "Move 2": 0x56,
    "Move 3": 0x58,
    "Move 4": 0x5A,
    "FND": 0x70,
    "Level": 0x76,
    "Light": 0x108,
    "Dark": 0x10A,
    "Fire": 0x10C,
    "Earth": 0x10E,
    "Wind": 0x110,
    "Steel": 0x112,
    "Water": 0x114,
    "Thunder": 0x116,
    "Next Digimon": 0x164,
}

// $135A54: Digimon ID [32 bits]
//          0x41 = Chicchimon
//          0x42 = Koromon
//          0x43 = Tsunomon
//          0x44 = Poyomon
//          0x45 = Tokomon
//          0x46 = Tanemon
//          0x47 = Pagumon
//          0x48 = Kapurimon
//          0x49 = Kuramon
//          0x4a = Puttimon
//          0x4b = Chibomon
//          0x4c = Dorimon
//          0x4d = Calumon
//          0x4e = Gigimon
//          0x4f = Gummymon
//          0x50 = Kokomon
//          0x51 = Tsumemon
//          0x52 = Minomon
//          0x53 = Wanyamon
//          0x54 = Budmon
//          0x55 = Botamon
//          0x56 = Sunmon
//          0x57 = Moonmon
//          0x61 = Monodramon
//          0x62 = Agumon
//          0x63 = Veemon
//          0x64 = Guilmon
//          0x65 = Dorumon
//          0x66 = Betamon
//          0x67 = Gabumon
//          0x68 = Patamon
//          0x69 = Biyomon
//          0x6a = Palmon
//          0x6b = Tentomon
//          0x6c = Gotsumon
//          0x6d = Otamamon
//          0x6e = Gomamon
//          0x6f = Tapirmon
//          0x70 = DemiDevimon
//          0x71 = ToyAgumon
//          0x72 = Hagurumon
//          0x73 = Salamon
//          0x74 = Wormmon
//          0x75 = Hawkmon
//          0x76 = Armadillomon
//          0x77 = Terriermon
//          0x78 = Lopmon
//          0x79 = Renamon
//          0x7a = Impmon
//          0x7b = Keramon
//          0x7c = Falcomon
//          0x7d = Penguinmon
//          0x7e = Goburimon
//          0x7f = Kumamon
//          0x80 = Kotemon
//          0x81 = Shamamon
//          0x82 = SnowGoburimon
//          0x83 = Syakomon
//          0x84 = SnowAgumon
//          0x85 = BlackAgumon
//          0x86 = Muchomon
//          0x87 = Crabmon
//          0x88 = Floramon
//          0x89 = Gizamon
//          0x8a = Lalamon
//          0x8b = Aruraumon
//          0x8c = ToyAgumon (Black)
//          0x8d = Tsukaimon
//          0x8e = PawnChessmon (Black)
//          0x8f = Gaomon
//          0x90 = DotFalcomon
//          0x91 = Kudamon
//          0x92 = Kamemon
//          0x93 = Dracmon
//          0x94 = PawnChessmon (White)
//          0x95 = DotAgumon
//          0x96 = Kunemon
//          0x97 = Mushroomon
//          0x98 = Solarmon
//          0x99 = Candlemon
//          0x9a = Kokuwamon
//          0x9b = DoKunemon
//          0x9c = Coronamon
//          0x9d = Lunamon
//          0xa8 = Mekanorimon
//          0xa9 = Greymon
//          0xaa = Tyrannomon
//          0xab = Devimon
//          0xac = Airdramon
//          0xad = Seadramon
//          0xae = Numemon
//          0xaf = Kabuterimon
//          0xb0 = Garurumon
//          0xb1 = Angemon
//          0xb2 = Veggiemon
//          0xb3 = Ogremon
//          0xb4 = Bakemon
//          0xb5 = Sukamon
//          0xb6 = Kokatorimon
//          0xb7 = Leomon
//          0xb8 = Kuwagamon
//          0xb9 = Raremon
//          0xbb = Gekomon
//          0xbc = Gatomon
//          0xbd = Wizardmon
//          0xbe = Togemon
//          0xbf = Guardromon
//          0xc0 = ExVeemon
//          0xc1 = Stingmon
//          0xc2 = Birdramon
//          0xc3 = Ankylomon
//          0xc4 = Gargomon
//          0xc5 = Growlmon
//          0xc6 = Kyubimon
//          0xc7 = Kurisarimon
//          0xc8 = Seasarmon
//          0xc9 = Vilemon
//          0xca = Aquilamon
//          0xcb = Roachmon
//          0xcc = Dinohumon
//          0xcd = Hookmon
//          0xce = Grizzmon
//          0xcf = Dorugamon
//          0xd0 = Reptiledramon
//          0xd1 = Apemon
//          0xd2 = Starmon
//          0xd3 = BomberNanimon
//          0xd4 = Kiwimon
//          0xd5 = Unimon
//          0xd6 = Sorcerymon
//          0xd7 = DarkTyrannomon
//          0xd8 = Akatorimon
//          0xd9 = PlatinumSukamon
//          0xda = Ikkakumon
//          0xdb = Minotarumon
//          0xdc = Icemon
//          0xdd = DarkLizardmon
//          0xde = Flarerizamon
//          0xdf = GeoGreymon
//          0xe0 = Gaogamon
//          0xe1 = Diatrymon
//          0xe2 = Reppamon
//          0xe3 = Sunflowmon
//          0xe4 = Gawappamon
//          0xe5 = Sangloupmon
//          0xe6 = Peckmon
//          0xe7 = Drimogemon
//          0xe8 = NiseDrimogemon
//          0xe9 = MoriShellmon
//          0xea = Wendigomon
//          0xeb = Fugamon
//          0xec = Tsuchidarumon
//          0xed = Tortamon
//          0xee = Ebidramon
//          0xef = Octomon
//          0xf0 = Gesomon
//          0xf1 = Coelamon
//          0xf2 = Shellmon
//          0xf3 = Frigimon
//          0xf4 = Geremon
//          0xf5 = Hyogamon
//          0xf6 = KaratsukiNumemon
//          0xf7 = IceDevimon
//          0xf8 = Dolphmon
//          0xf9 = Saberdramon
//          0xfa = Woodmon
//          0xfb = Snimon
//          0xfc = Flymon
//          0xfd = Yanmamon
//          0xfe = SandYanmamon
//          0xff = RedVeggiemon
//          0x100 = Weedmon
//          0x101 = Ninjamon
//          0x102 = Kogamon
//          0x103 = Omekamon
//          0x104 = Clockmon
//          0x105 = Thunderballmon
//          0x106 = Tankmon
//          0x107 = Nanimon
//          0x108 = Golemon
//          0x109 = Monochromon
//          0x10a = Mojyamon
//          0x10b = JungleMojyamon
//          0x10c = Deputymon
//          0x10d = Centarumon
//          0x10e = Devidramon
//          0x10f = Dokugumon
//          0x110 = Veedramon
//          0x111 = Musyamon
//          0x112 = KnightChessmon (White)
//          0x113 = KnightChessmon (Black)
//          0x114 = Firamon
//          0x115 = Lekismon
//          0x120 = Volcanomon
//          0x121 = MetalGreymon
//          0x122 = Monzaemon
//          0x123 = SkullGreymon
//          0x124 = MetalMamemon
//          0x125 = Andromon
//          0x126 = Etemon
//          0x127 = Megadramon
//          0x128 = Piximon
//          0x129 = Digitamamon
//          0x12a = Mammothmon
//          0x12b = MegaKabuterimon (Blue)
//          0x12c = Okuwamon
//          0x12d = ShogunGekomon
//          0x12e = Angewomon
//          0x12f = Tylomon
//          0x130 = Scorpiomon
//          0x131 = MegaSeadramon
//          0x132 = Dragomon
//          0x133 = WereGarurumon (Black)
//          0x134 = WereGarurumon (Blue)
//          0x135 = Myotismon
//          0x136 = LadyDevimon
//          0x137 = Garudamon
//          0x138 = Blossomon
//          0x139 = Lillymon
//          0x13a = MegaKabuterimon (Red)
//          0x13b = Datamon
//          0x13c = Cyberdramon
//          0x13d = MagnaAngemon
//          0x13e = Paildramon
//          0x13f = Dinobeemon
//          0x140 = Antylamon
//          0x141 = Arukenimon
//          0x142 = Mummymon
//          0x143 = WarGrowlmon
//          0x144 = Rapidmon
//          0x145 = Taomon
//          0x146 = Parrotmon
//          0x147 = Infermon
//          0x148 = BlackRapidmon
//          0x149 = Pandamon
//          0x14a = MarineDevimon
//          0x14b = Karatenmon
//          0x14c = Kyukimon
//          0x14d = Sinduramon
//          0x14e = Pipismon
//          0x14f = DoruGreymon
//          0x150 = Divermon
//          0x151 = Kimeramon
//          0x152 = Triceramon
//          0x153 = Deramon
//          0x154 = Silphymon
//          0x155 = SuperStarmon
//          0x156 = BlackWarGrowlmon
//          0x157 = Zudomon
//          0x158 = Whamon
//          0x159 = Mamemon
//          0x15a = Toucanmon
//          0x15b = Owlmon
//          0x15c = Meteormon
//          0x15d = Gigadramon
//          0x15e = RiseGreymon
//          0x15f = MachGaogamon
//          0x161 = Tyilinmon
//          0x162 = Lilamon
//          0x163 = Shadramon
//          0x164 = Matadormon
//          0x165 = Kabukimon
//          0x166 = Cherrymon
//          0x167 = Garbagemon
//          0x168 = Lucemon (Chaos Mode)
//          0x169 = Mametyramon
//          0x16a = Giromon
//          0x16b = Vademon
//          0x16c = MetalTyrannomon
//          0x16d = Tekkamon
//          0x16e = BigMamemon
//          0x16f = EXTyrannomon
//          0x170 = Vermilimon
//          0x171 = Phantomon
//          0x172 = Vajramon
//          0x173 = AeroVeedramon
//          0x174 = GrapLeomon
//          0x175 = Knightmon
//          0x176 = Brachiomon
//          0x177 = Allomon
//          0x178 = Lynxmon
//          0x179 = Shaujinmon
//          0x17a = Yatagaramon
//          0x17b = BishopChessmon
//          0x17c = RookChessmon
//          0x17d = Flaremon
//          0x17e = Crescemon
//          0x17f = Flamedramon
//          0x180 = Magnamon
//          0x181 = Prairiemon
//          0x182 = Kongoumon
//          0x183 = Seahomon
//          0x184 = Shurimon
//          0x185 = Kenkimon
//          0x186 = Ponchomon
//          0x187 = Argomon (Ultimate)
//          0x188 = Shakkoumon
//          0x191 = Lampmon
//          0x192 = HerculesKabuterimon
//          0x193 = SaberLeomon
//          0x194 = MetalEtemon
//          0x195 = MarineAngemon
//          0x196 = GigaSeadramon
//          0x197 = Piedmon
//          0x198 = Creepymon
//          0x199 = Phoenixmon
//          0x19a = Puppetmon
//          0x19b = Rosemon
//          0x19c = WarGreymon
//          0x19d = MetalGarurumon
//          0x19e = Machinedramon
//          0x19f = VenomMyotismon
//          0x1a0 = Omnimon
//          0x1a1 = Imperialdramon (Dragon Mode)
//          0x1a2 = Imperialdramon (Fighter Mode)
//          0x1a3 = Imperialdramon (Paladin Mode)
//          0x1a4 = Ghoulmon
//          0x1a5 = Seraphimon
//          0x1a6 = HiAndromon
//          0x1a7 = Devitamamon
//          0x1a8 = Cherubimon (Good)
//          0x1a9 = Cherubimon (Evil)
//          0x1aa = Gallantmon
//          0x1ab = Gallantmon (Crimson Mode)
//          0x1ac = MegaGargomon
//          0x1ad = Sakuyamon
//          0x1ae = Diaboromon
//          0x1af = Neptunemon
//          0x1b0 = Pukumon
//          0x1b1 = Gryphonmon
//          0x1b2 = Plesiomon
//          0x1b3 = Armageddemon
//          0x1b4 = MaloMyotismon
//          0x1b5 = Imperialdramon (Dragon Mode) (Black)
//          0x1b6 = Boltmon
//          0x1b7 = PrinceMamemon
//          0x1b8 = Ophanimon
//          0x1b9 = Zanbamon
//          0x1ba = BlackMegaGargomon
//          0x1bb = Jijimon
//          0x1bc = Babamon
//          0x1bd = Anubismon
//          0x1be = Parasimon
//          0x1bf = Cannondramon
//          0x1c0 = SlashAngemon
//          0x1c1 = Eaglemon
//          0x1c2 = Dorugoramon
//          0x1c3 = Beelzemon
//          0x1c4 = BanchoLeomon
//          0x1c5 = Darkdramon
//          0x1c6 = Apocalymon
//          0x1c7 = Ebemon
//          0x1c8 = Gulfmon
//          0x1c9 = Goldramon
//          0x1ca = ZeedMilleniumon
//          0x1cb = Ghoulmon (Black)
//          0x1cc = Kuzuhamon
//          0x1cd = ChaosGallantmon
//          0x1ce = MetalSeadramon
//          0x1cf = Valkyrimon
//          0x1d0 = Justimon
//          0x1d1 = Vikemon
//          0x1d2 = BlackWarGreymon
//          0x1d3 = SkullMammothmon
//          0x1d4 = GranKuwagamon
//          0x1d5 = Pharaohmon
//          0x1d6 = Susanoomon
//          0x1d7 = Alphamon
//          0x1d8 = Magna Dramon
//          0x1d9 = Millenniummon
//          0x1da = Moon=Milleniummon
//          0x1db = Megidramon
//          0x1dc = Sleipmon
//          0x1dd = ShineGreymon
//          0x1de = MirageGaogamon
//          0x1df = JumboGamemon
//          0x1e0 = Ravemon
//          0x1e1 = QueenChessmon
//          0x1e2 = KingChessmon
//          0x1e3 = Chronomon (Holy Mode)
//          0x1e4 = Lilithmon
//          0x1e5 = Varodurumon
//          0x1e6 = Apollomon
//          0x1e7 = Dianamon
//          0x1e8 = ShineGreymon (Burst Mode)
//          0x1e9 = ShineGreymon (Ruin Mode)
//          0x1ea = MirageGaogamon (Burst Mode)
//          0x1eb = Ravemon (Burst Mode)
//          0x1ec = Lotosmon
//          0x1ed = DotShineGreymon
//          0x1ee = DotMirageGaogamon
//          0x1ef = Beelzemon (Blast Mode)
//          0x1f0 = Rosemon (Burst Mode)
//          0x1f1 = Argomon (Mega)
//          0x1f2 = Minervamon
//          0x1f3 = Duftmon
//          0x1f4 = Chaosmon
digimon_ids = {
    "Chicchimon":0x41,
    "Koromon":0x42,
    "Tsunomon":0x43,
    "Poyomon":0x44,
    "Tokomon":0x45,
    "Tanemon":0x46,
    "Pagumon":0x47,
    "Kapurimon":0x48,
    "Kuramon":0x49,
    "Puttimon":0x4a,
    "Chibomon":0x4b,
    "Dorimon":0x4c,
    "Calumon":0x4d,
    "Gigimon":0x4e,
    "Gummymon":0x4f,
    "Kokomon":0x50,
    "Tsumemon":0x51,
    "Minomon":0x52,
    "Wanyamon":0x53,
    "Budmon":0x54,
    "Botamon":0x55,
    "Sunmon":0x56,
    "Moonmon":0x57,
    "Monodramon":0x61,
    "Agumon":0x62,
    "Veemon":0x63,
    "Guilmon":0x64,
    "Dorumon":0x65,
    "Betamon":0x66,
    "Gabumon":0x67,
    "Patamon":0x68,
    "Biyomon":0x69,
    "Palmon":0x6a,
    "Tentomon":0x6b,
    "Gotsumon":0x6c,
    "Otamamon":0x6d,
    "Gomamon":0x6e,
    "Tapirmon":0x6f,
    "DemiDevimon":0x70,
    "ToyAgumon":0x71,
    "Hagurumon":0x72,
    "Salamon":0x73,
    "Wormmon":0x74,
    "Hawkmon":0x75,
    "Armadillomon":0x76,
    "Terriermon":0x77,
    "Lopmon":0x78,
    "Renamon":0x79,
    "Impmon":0x7a,
    "Keramon":0x7b,
    "Falcomon":0x7c,
    "Penguinmon":0x7d,
    "Goburimon":0x7e,
    "Kumamon":0x7f,
    "Kotemon":0x80,
    "Shamamon":0x81,
    "SnowGoblimon":0x82,
    "Syakomon":0x83,
    "SnowAgumon":0x84,
    "BlackAgumon":0x85,
    "Muchomon":0x86,
    "Crabmon":0x87,
    "Floramon":0x88,
    "Gizamon":0x89,
    "Lalamon":0x8a,
    "Aruraumon":0x8b,
    "ToyAgumonB":0x8c,
    "Tsukaimon":0x8d,
    "PawnChessmonB":0x8e,
    "Gaomon":0x8f,
    "DotFalcomon":0x90,
    "Kudamon":0x91,
    "Kamemon":0x92,
    "Dracmon":0x93,
    "PawnChessmonW":0x94,
    "DotAgumon":0x95,
    "Kunemon":0x96,
    "Mushroomon":0x97,
    "Solarmon":0x98,
    "Candlemon":0x99,
    "Kokuwamon":0x9a,
    "DoKunemon":0x9b,
    "Coronamon":0x9c,
    "Lunamon":0x9d,
    "Mekanorimon":0xa8,
    "Greymon":0xa9,
    "Tyrannomon":0xaa,
    "Devimon":0xab,
    "Airdramon":0xac,
    "Seadramon":0xad,
    "Numemon":0xae,
    "Kabuterimon":0xaf,
    "Garurumon":0xb0,
    "Angemon":0xb1,
    "Veggiemon":0xb2,
    "Ogremon":0xb3,
    "Bakemon":0xb4,
    "Sukamon":0xb5,
    "Kokatorimon":0xb6,
    "Leomon":0xb7,
    "Kuwagamon":0xb8,
    "Raremon":0xb9,
    "Gekomon":0xbb,
    "Gatomon":0xbc,
    "Wizardmon":0xbd,
    "Togemon":0xbe,
    "Guardromon":0xbf,
    "ExVeemon":0xc0,
    "Stingmon":0xc1,
    "Birdramon":0xc2,
    "Ankylomon":0xc3,
    "Gargomon":0xc4,
    "Growlmon":0xc5,
    "Kyubimon":0xc6,
    "Kurisarimon":0xc7,
    "Seasarmon":0xc8,
    "Vilemon":0xc9,
    "Aquilamon":0xca,
    "Roachmon":0xcb,
    "Dinohumon":0xcc,
    "Hookmon":0xcd,
    "Grizzmon":0xce,
    "Dorugamon":0xcf,
    "Reptiledramon":0xd0,
    "Apemon":0xd1,
    "Starmon":0xd2,
    "BomberNanimon":0xd3,
    "Kiwimon":0xd4,
    "Unimon":0xd5,
    "Sorcerymon":0xd6,
    "DarkTyrannomon":0xd7,
    "Akatorimon":0xd8,
    "PlatinumSukamon":0xd9,
    "Ikkakumon":0xda,
    "Minotarumon":0xdb,
    "Icemon":0xdc,
    "DarkLizardmon":0xdd,
    "Flarerizamon":0xde,
    "GeoGreymon":0xdf,
    "Gaogamon":0xe0,
    "Diatrymon":0xe1,
    "Reppamon":0xe2,
    "Sunflowmon":0xe3,
    "Gawappamon":0xe4,
    "Sangloupmon":0xe5,
    "Peckmon":0xe6,
    "Drimogemon":0xe7,
    "NiseDrimogemon":0xe8,
    "MoriShellmon":0xe9,
    "Wendigomon":0xea,
    "Fugamon":0xeb,
    "Tsuchidarumon":0xec,
    "Tortamon":0xed,
    "Ebidramon":0xee,
    "Octomon":0xef,
    "Gesomon":0xf0,
    "Coelamon":0xf1,
    "Shellmon":0xf2,
    "Frigimon":0xf3,
    "Geremon":0xf4,
    "Hyogamon":0xf5,
    "KaratsukiNumemon":0xf6,
    "IceDevimon":0xf7,
    "Dolphmon":0xf8,
    "Saberdramon":0xf9,
    "Woodmon":0xfa,
    "Snimon":0xfb,
    "Flymon":0xfc,
    "Yanmamon":0xfd,
    "SandYanmamon":0xfe,
    "RedVeggiemon":0xff,
    "Weedmon":0x100,
    "Ninjamon":0x101,
    "Kogamon":0x102,
    "Omekamon":0x103,
    "Clockmon":0x104,
    "Thunderballmon":0x105,
    "Tankmon":0x106,
    "Nanimon":0x107,
    "Golemon":0x108,
    "Monochromon":0x109,
    "Mojyamon":0x10a,
    "JungleMojyamon":0x10b,
    "Deputymon":0x10c,
    "Centarumon":0x10d,
    "Devidramon":0x10e,
    "Dokugumon":0x10f,
    "Veedramon":0x110,
    "Musyamon":0x111,
    "KnightChessmonW":0x112,
    "KnightChessmonB":0x113,
    "Firamon":0x114,
    "Lekismon":0x115,
    "Volcanomon":0x120,
    "MetalGreymon":0x121,
    "Monzaemon":0x122,
    "SkullGreymon":0x123,
    "MetalMamemon":0x124,
    "Andromon":0x125,
    "Etemon":0x126,
    "Megadramon":0x127,
    "Piximon":0x128,
    "Digitamamon":0x129,
    "Mammothmon":0x12a,
    "MegakabuterimonB":0x12b,
    "Okuwamon":0x12c,
    "ShogunGekomon":0x12d,
    "Angewomon":0x12e,
    "Tylomon":0x12f,
    "Scorpiomon":0x130,
    "MegaSeadramon":0x131,
    "Dragomon":0x132,
    "WarGarurumonBlack":0x133,
    "WarGarurumonBlue":0x134,
    "Myotismon":0x135,
    "LadyDevimon":0x136,
    "Garudamon":0x137,
    "Blossomon":0x138,
    "Lillymon":0x139,
    "MegaKabuterimonR":0x13a,
    "Datamon":0x13b,
    "Cyberdramon":0x13c,
    "MagnaAngemon":0x13d,
    "Paildramon":0x13e,
    "Dinobeemon":0x13f,
    "Antylamon":0x140,
    "Arukenimon":0x141,
    "Mummymon":0x142,
    "WarGrowlmon":0x143,
    "Rapidmon":0x144,
    "Taomon":0x145,
    "Parrotmon":0x146,
    "Infermon":0x147,
    "BlackRapidmon":0x148,
    "Pandamon":0x149,
    "MarineDevimon":0x14a,
    "Karatenmon":0x14b,
    "Kyukimon":0x14c,
    "Sinduramon":0x14d,
    "Pipismon":0x14e,
    "DoruGreymon":0x14f,
    "Divermon":0x150,
    "Kimeramon":0x151,
    "Triceramon":0x152,
    "Deramon":0x153,
    "Silphymon":0x154,
    "SuperStarmon":0x155,
    "BlackWarGrowlmon":0x156,
    "Zudomon":0x157,
    "Whamon":0x158,
    "Mamemon":0x159,
    "Toucanmon":0x15a,
    "Owlmon":0x15b,
    "Meteormon":0x15c,
    "Gigadramon":0x15d,
    "RiseGreymon":0x15e,
    "MachGaogamon":0x15f,
    "Tyilinmon":0x161,
    "Lilamon":0x162,
    "Shadramon":0x163,
    "Matadormon":0x164,
    "Kabukimon":0x165,
    "Cherrymon":0x166,
    "Garbagemon":0x167,
    "LucemonCM":0x168,
    "MameTyramon":0x169,
    "Giromon":0x16a,
    "Vademon":0x16b,
    "MetalTyrannomon":0x16c,
    "Tekkamon":0x16d,
    "BigMamemon":0x16e,
    "EXTyrannomon":0x16f,
    "Vermilimon":0x170,
    "Phantomon":0x171,
    "Vajramon":0x172,
    "AeroVeedramon":0x173,
    "Grapleomon":0x174,
    "Knightmon":0x175,
    "Brachiomon":0x176,
    "Allomon":0x177,
    "Lynxmon":0x178,
    "Shaujinmon":0x179,
    "Yatagaramon":0x17a,
    "BishopChessmon":0x17b,
    "RookChessmon":0x17c,
    "Flaremon":0x17d,
    "Crescemon":0x17e,
    "Flamedramon":0x17f,
    "Magnamon":0x180,
    "Prairiemon":0x181,
    "Kongoumon":0x182,
    "Seahomon":0x183,
    "Shurimon":0x184,
    "Kenkimon":0x185,
    "Ponchomon":0x186,
    "ArgomonU":0x187,
    "Shakkoumon":0x188,
    "Lampmon":0x191,
    "HerculesKabuterimon":0x192,
    "SaberLeomon":0x193,
    "MetalEtemon":0x194,
    "MarineAngemon":0x195,
    "GigaSeadramon":0x196,
    "Piedmon":0x197,
    "Creepymon":0x198,
    "Phoenixmon":0x199,
    "Puppetmon":0x19a,
    "Rosemon":0x19b,
    "WarGreymon":0x19c,
    "MetalGarurumon":0x19d,
    "Machinedramon":0x19e,
    "VenomMyotismon":0x19f,
    "Omnimon":0x1a0,
    "ImperialdramonDM":0x1a1,
    "ImperialdramonFM":0x1a2,
    "ImperialdramonPM":0x1a3,
    "Ghoulmon":0x1a4,
    "Seraphimon":0x1a5,
    "HiAndromon":0x1a6,
    "Devitamamon":0x1a7,
    "CherubimonG":0x1a8,
    "CherubimonE":0x1a9,
    "Gallantmon":0x1aa,
    "GallantmonCM":0x1ab,
    "MegaGargomon":0x1ac,
    "Sakuyamon":0x1ad,
    "Diaboromon":0x1ae,
    "Neptunmon":0x1af,
    "Pukumon":0x1b0,
    "Gryphonmon":0x1b1,
    "Preciomon":0x1b2,
    "Armageddemon":0x1b3,
    "MaloMyotismon":0x1b4,
    "ImperialdramonDMB":0x1b5,
    "Boltmon":0x1b6,
    "PrinceMamemon":0x1b7,
    "Ophanimon":0x1b8,
    "Zanbamon":0x1b9,
    "BlackMegaGargomon":0x1ba,
    "Jijimon":0x1bb,
    "Babamon":0x1bc,
    "Anubismon":0x1bd,
    "Parasimon":0x1be,
    "Cannondramon":0x1bf,
    "SlashAngemon":0x1c0,
    "Eaglemon":0x1c1,
    "Dorugoramon":0x1c2,
    "Beelzemon":0x1c3,
    "BantyoLeomon":0x1c4,
    "Darkdramon":0x1c5,
    "Apocalymon":0x1c6,
    "Ebemon":0x1c7,
    "Gulfmon":0x1c8,
    "Goldramon":0x1c9,
    "ZeedMillenniummon":0x1ca,
    "GhoulmonB":0x1cb,
    "Kuzuhamon":0x1cc,
    "ChaosGallantmon":0x1cd,
    "MetalSeadramon":0x1ce,
    "Valkyrimon":0x1cf,
    "Justimon":0x1d0,
    "Vikemon":0x1d1,
    "BlackWarGreymon":0x1d2,
    "SkullMammothmon":0x1d3,
    "GranKuwagamon":0x1d4,
    "Pharaohmon":0x1d5,
    "Susanoomon":0x1d6,
    "Alphamon":0x1d7,
    "Magnadramon":0x1d8,
    "Millenniummon":0x1d9,
    "MoonMillenniummon":0x1da,
    "Megidramon":0x1db,
    "Sleipmon":0x1dc,
    "ShineGreymon":0x1dd,
    "MirageGaogamon":0x1de,
    "JumboGamemon":0x1df,
    "Ravemon":0x1e0,
    "QueenChessmon":0x1e1,
    "KingChessmon":0x1e2,
    "ChronomonHM":0x1e3,
    "Lilithmon":0x1e4,
    "Varodurumon":0x1e5,
    "Apollomon":0x1e6,
    "Dianamon":0x1e7,
    "ShineGreymonBM":0x1e8,
    "ShineGreymonRM":0x1e9,
    "MirageGaogamonBM":0x1ea,
    "RavemonBM":0x1eb,
    "Lotosmon":0x1ec,
    "DotShineGreymon":0x1ed,
    "DotMirageGaogamon":0x1ee,
    "BeelzemonBM":0x1ef,
    "RosemonBM":0x1f0,
    "ArgomonM":0x1f1,
    "Minervamon":0x1f2,
    "Duftmon":0x1f3,
    "Chaosmon":0x1f4,
}

// $135A58: Name (2 bytes per letter, 18 bytes, with last one being FFFF to mark the end of the string)
// $135A6C: Type
//          0x00 = Balance
//          0x01 = Attacker
//          0x02 = Tank
//          0x03 = Technical
//          0x04 = Speed
//          0x05 = HPtype
//          0x06 = MPtype
// $135A6D: Personality
//          0x00 = Lazy
//          0x01 = Energetic
//          0x02 = Scared
//          0x03 = Wild
//          0x04 = Cool
//          0x05 = Prissy
//          0x06 = Obedient
//          0x07 = Graceful
// $135A8C: Current HP [16 bits]
// $135A90: Max HP [16 bits]
// $135A94: Current MP [16 bits]
// $135A96: Max MP [16 bits]
// $135A98: Attack Stat [16 bits]
// $135A9A: Defense Stat [16 bits]
// $135A9C: Spirit Stat [16 bits]
// $135A9E: Speed Stat [16 bits]
// $135AA2: Aptitude [16 bits]
// $135AA4: 1st Attack ID [16 bits]
//          0x0 = Charge (Equip Technique)
//          0x1 = Frothy Spit (Special Technique)
//          
//          Equip Techniques
//          0x2 = Ice Blast
//          0x3 = Big Ice Blast
//          0x4 = CrazyIceBlast
//          0x5 = Little Blizzard
//          0x6 = Blizzard
//          0x7 = Royal Blizzard
//          0x8 = Frothier Spit
//          0x9 = Bubble Blow
//          0xa = Rainbow Spit
//          0xb = Hydro Water
//          0xc = Megaton Hydro
//          0xd = Gigaton Hydro
//          0xe = Double Wave
//          0xf = Triple Wave
//          0x10 = Ocean Wave
//          0x11 = GashingBreeze
//          0x12 = DLGashBreeze
//          0x13 = Sonic Voice
//          0x14 = HighSonicVoice
//          0x15 = Small Tornado
//          0x16 = Big Tornado
//          0x17 = Hyper-Tornado
//          0x18 = Air Cutter
//          0x19 = CrescentCutter
//          0x1a = Dbl Crescent
//          0x1b = Wind Claw
//          0x1c = Spiral Claw
//          0x1d = Air Gun
//          0x1e = Top Gun
//          0x1f = TopGun Bomb
//          0x20 = Small Breath
//          0x21 = Giga Breath
//          0x22 = Burst Breath
//          0x23 = Mega Napalm
//          0x24 = VolcanoNapalm
//          0x25 = GeomgmNapalm
//          0x26 = Dramon Claw
//          0x27 = DoubleD Claw
//          0x28 = ScrewD Claw
//          0x29 = Meteor Fall
//          0x2a = MegaMeteoFall
//          0x2b = Tiny Bomb
//          0x2c = Normal Bomb
//          0x2d = Gatling Bomb
//          0x2e = Normal Missile
//          0x2f = Twin Missile
//          0x30 = Giga Missile
//          0x31 = Holy Slash
//          0x32 = Shine Slash
//          0x33 = Royal Slash
//          0x34 = Holy Bolt
//          0x35 = Holy Cannon
//          0x36 = Fatal Cannon
//          0x37 = Royal Cannon
//          0x38 = TinyHolyFlame
//          0x39 = Starlight
//          0x3a = Starlight EX
//          0x3b = Grand Cross
//          0x3c = CelestialCross
//          0x3d = Fatal Cross
//          0x3e = Holy Hand
//          0x3f = Celestial Hand
//          0x40 = Fatal Hand
//          0x41 = Mini Blade
//          0x42 = Normal Blade
//          0x43 = Double Blade
//          0x44 = Laser Blade
//          0x45 = Soulful Kick
//          0x46 = Justice Kick
//          0x47 = Energy Bolt
//          0x48 = Energy Shot
//          0x49 = Energy Cannon
//          0x4a = Boost Tackle
//          0x4b = Burst Tackle
//          0x4c = Rainbow Force
//          0x4d = OmegaR Force
//          0x4e = Tiny Metal
//          0x4f = Heavy Metal
//          0x50 = Rising Ray
//          0x51 = Shining Ray
//          0x52 = Metal Star
//          0x53 = MegaMetalStar
//          0x54 = Thunder
//          0x55 = Air Thunder
//          0x56 = Glory Thunder
//          0x57 = Tiny Blaster
//          0x58 = Double Blaster
//          0x59 = Power Blaster
//          0x5a = ElectroBlaster
//          0x5b = Thunder Claw
//          0x5c = Wild TD Claw
//          0x5d = Stun Whipping
//          0x5e = Drain Whipping
//          0x5f = ElectroWhipping
//          0x60 = Surprise Blow
//          0x61 = UnexpectedBlow
//          0x62 = Instant Blow
//          0x63 = Small Cutter
//          0x64 = Cross Cutter
//          0x65 = Power Cutter
//          0x66 = Sharp Fang
//          0x67 = Forlorn Fang
//          0x68 = Claw Attack
//          0x69 = Sharp Claw
//          0x6a = Cyclone Claw
//          0x6b = Royal Claw
//          0x6c = Pummel Whack
//          0x6d = BeastKing Fist
//          0x6e = Beast Whack
//          0x6f = Gatling Punch
//          0x70 = Winning Punch
//          0x71 = Flash Punch
//          0x72 = Light Tackle
//          0x73 = Middle Tackle
//          0x74 = Heavy Tackle
//          0x75 = Black Blast
//          0x76 = Dark Blast
//          0x77 = Chaos Blast
//          0x78 = Demon Blast
//          0x79 = Dark Crusher
//          0x7a = Pit Crusher
//          0x7b = 01 Crusher
//          0x7c = Death Cannon
//          0x7d = DestroyCannon
//          0x7e = Shadow Claw
//          0x7f = Dark Claw
//          0x80 = Demon Claw
//          0x81 = Cursed Slash
//          0x82 = Chaos Slash
//          0x83 = Demon Slash
//          0x84 = Junk Attack
//          0x85 = Random Poop
//          0x86 = Light Mandala
//          0x87 = Pyramid Power
//          0x88 = Nightmare
//          0x89 = DMag.Square
//          0x8a = Light Coat
//          0x8b = Fire Coat
//          0x8c = Water Coat
//          0x8d = Wind Coat
//          0x8e = Black Coat
//          0x8f = Beast Coat
//          0x90 = Machine Coat
//          0x91 = Electric Coat
//          0x92 = Raging Light
//          0x93 = Raging Flame
//          0x94 = Raging Water
//          0x95 = Raging Wind
//          0x96 = RagingDarkness
//          0x97 = Raging Beast
//          0x98 = RagingMachine
//          0x99 = Electric Rage
//          0x9a = Blazing Power
//          0x9b = Battle Stamp
//          0x9c = Light Wave
//          0x9d = Rain of Pollen
//          0x9e = Hard Shell
//          0x9f = Great Wall
//          0xa0 = Acid Rain
//          0xa1 = Nano Break
//          0xa2 = Lore of Light
//          0xa3 = DarkKnowledge
//          0xa4 = WarningofLight
//          0xa5 = Dark Whisper
//          0xa6 = Mind Reader
//          0xa7 = Boost On
//          0xa8 = Freeze Bolt
//          0xa9 = Shock Net
//          0xaa = Sonic Counter
//          0xab = Dark Counter
//          0xac = Burst Counter
//          0xad = Flash Ray
//          0xae = FTemptation
//          0xaf = Poison Rain
//          0xb0 = Poison Powder
//          0xb1 = Petrifier
//          0xb2 = Pollen Spray
//          0xb3 = Lullaby Bubble
//          0xb4 = Lullaby
//          0xb5 = Healing Spring
//          0xb6 = Saint Heal
//          0xb7 = AbsoluteHealing
//          0xb8 = MedicalSystem
//          0xb9 = Gaia Healing
//          0xba = Mental Cure
//          0xbb = MentalEssence
//          0xbc = PowerofLove
//          0xbd = Water of Life
//          0xbe = Dark Savior
//          0xbf = Electric Shock
//          0xc0 = Healing Air
//          0xc1 = Cure Poison
//          0xc2 = Purification
//          0xc3 = Nanomech Heal
//          
//          Special Techniques
//          0xc4 = Kusanagi
//          0xc6 = Full Bloom
//          0xc7 = Dino Burst
//          0xc8 = Sonic Ears
//          0xc9 = EXT. War
//          0xca = MN Clutch
//          0xcb = TequilaKnuckle
//          0xcc = Thermal Mane
//          0xcd = Popper
//          0xce = Flare Buster
//          0xcf = Fire Rocket
// $135AA6: 2nd Attack ID [16 bits]
//          0xffff = No Attack
// $135AA8: 3rd Attack ID [16 bits]
//          0xffff = No Attack
// $135AAA: 4th Attack ID [16 bits]
//          0xffff = No Attack
// $135AC0: Firendship [16 bits]
// $135AC6: Level [16 bits]
// $135AC8: Holy Species EXP [32 bits]
// $135ACC: Dark Species EXP [32 bits]
// $135AD0: Dragon Species EXP [32 bits]
// $135AD4: Beast Species EXP [32 bits]
// $135AD8: Bird Species EXP [32 bits]
// $135ADC: Machine Species EXP [32 bits]
// $135AE0: Aquan Species EXP [32 bits]
// $135AE4: InsectPlant Species EXP [32 bits]
// $135B58: Light Resistance [16 bits]
// $135B5A: Dark Resistance [16 bits]
// $135B5C: Fire Resistance [16 bits]
// $135B5E: Earth Resistance [16 bits]
// $135B60: Wind Resistance [16 bits]
// $135B62: Steel Resistance [16 bits]
// $135B64: Water Resistance [16 bits]
// $135B66: Thunder Resistance [16 bits]
// $135BB4: ----------------------------------------
//          2nd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $135D18: ----------------------------------------
//          3rd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $135E7C: ----------------------------------------
//          4th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $135FE0: ----------------------------------------
//          5th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136144: ----------------------------------------
//          6th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1362A8: ----------------------------------------
//          7th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13640C: ----------------------------------------
//          8th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136570: ----------------------------------------
//          9th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1366D4: ----------------------------------------
//          10th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136838: ----------------------------------------
//          11th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13699C: ----------------------------------------
//          12th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136B00: ----------------------------------------
//          13th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136C64: ----------------------------------------
//          14th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136DC8: ----------------------------------------
//          15th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136F2C: ----------------------------------------
//          16th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137090: ----------------------------------------
//          17th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1371F4: ----------------------------------------
//          18th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137358: ----------------------------------------
//          19th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1374BC: ----------------------------------------
//          20th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137620: ----------------------------------------
//          21st Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137784: ----------------------------------------
//          22nd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1378E8: ----------------------------------------
//          23rd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137A4C: ----------------------------------------
//          24th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137BB0: ----------------------------------------
//          25th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137D14: ----------------------------------------
//          26th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137E78: ----------------------------------------
//          27th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137FDC: ----------------------------------------
//          28th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138140: ----------------------------------------
//          29th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1382A4: ----------------------------------------
//          30th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138408: ----------------------------------------
//          31st Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13856C: ----------------------------------------
//          32nd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1386D0: ----------------------------------------
//          33rd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138834: ----------------------------------------
//          34th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138998: ----------------------------------------
//          35th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138AFC: ----------------------------------------
//          36th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138C60: ----------------------------------------
//          37th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138DC4: ----------------------------------------
//          38th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138F28: ----------------------------------------
//          39th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13908C: ----------------------------------------
//          40th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1391F0: Tamer Rank [32 bits]
//          0x0 = Normal Tamer
//          0x1 = Bronze Tamer
//          0x2 = Silver Tamer
//          0x3 = Gold Tamer
//          0x4 = PlatinumTamer
//          0x5 = Tamer Legend
function tamer_rank() => byte(0x1391F0)
tamer_ranks = {
    "Normal": 0x0,
    "Bronze": 0x1,
    "Silver": 0x2,
    "Gold": 0x3,
    "Platinum": 0x4,
    "Legend": 0x5,
}

// $1391F4: Tamer Points [32 bits]
// $1391FC: 1st Digi-Farm's Unique ID [32 bits]
first_digifarm_address = 0x1391FC
digifarm_offsets = {
    "DPU": 0x23,
    "Memory": 0x24,
    "Terrain Boards Bought": 0x28,
    "BGM Boards Bought": 0x2C,
    "Next Digifarm": 0x78,
}

// $139204: 1st Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $139218: 1st Digi-Farm's current Terrain Board
//          0x00 = No Board
//          0x01 = Marble
//          0x02 = Volcanic
//          0x03 = Coral
//          0x04 = Grssland
//          0x05 = Tropical
//          0x06 = Machine
//          0x07 = Desert
//          0x08 = Darkness
//          0x09 = GlsCstl
//          0x0a = GlsCrl
//          0x0b = MgmaCrl
//          0x0c = MgmaCstl
//          0x0d = NiteJngl
//          0x0e = JnglPanel
//          0x0f = DsrtPnel
//          0x10 = NiteDsrt
// $139219: 1st Digi-Farm's current BGM Board
//          0x00 = No Board
//          0x01 = Angel Theme
//          0x02 = Devil Theme
//          0x03 = DragonTheme
//          0x04 = Beast Theme
//          0x05 = Bird Theme
//          0x06 = Mech Theme
//          0x07 = Sea Theme
//          0x08 = Forest Theme
// $13921F: 1st Digi-Farm's DPU (Digimon allowed in the farm)
//          Starts at 4 when buying the farm and goes up to 8
// $139220: 1st Digi-Farm's Memory (Space for Farm Goods allowed in the farm)
//          Starts at 8G of memory when buying the farm and goes up to 32G in increments of 8
// $139224: 1st Digi-Farm's Terrain Boards bought [3 bytes]
//          Bit1 = Marble
//          Bit2 = Volcanic
//          Bit3 = Coral
//          Bit4 = Grssland
//          Bit5 = Tropical
//          Bit6 = Machine
//          Bit7 = Desert
// $139225: Bit0 = Darkness
//          Bit1 = GlsCstl
//          Bit2 = GlsCrl
//          Bit3 = MgmaCrl
//          Bit4 = MgmaCstl
//          Bit5 = NiteJngl
//          Bit6 = JnglPnel
//          Bit7 = DsrtPnel
// $139226: Bit0 = NiteDsrt
// $139228: 1st Digi-Farm's BGM Boards bought [16 bits]
//          Bit1 = Angel Theme
//          Bit2 = Devil Theme
//          Bit3 = DragonTheme
//          Bit4 = Beast Theme
//          Bit5 = Bird Theme
//          Bit6 = Mech Theme
//          Bit7 = Sea Theme
// $139229: Bit0 = ForestTheme
// $13922C: 1st Farm Good slot [32 bits] (Uses Unique IDs)
// $13924C: 1st Digimon slot [32 bits] (Uses Unique IDs)
// $139274: 2nd Digi-Farm's Unique ID [32 bits]
// $13927C: 2nd Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $13929C: 2nd Digi-Farm's Terrain Boards bought [3 bytes]
// $1392A0: 2nd Digi-Farm's BGM Boards bought [16 bits]
// $1392EC: 3rd Digi-Farm's Unique ID [32 bits]
// $1392F4: 3rd Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $139314: 3rd Digi-Farm's Terrain Boards bought [3 bytes]
// $139318: 3rd Digi-Farm's BGM Boards bought [16 bits]
// $139364: 4th Digi-Farm's Unique ID [32 bits]
// $13936C: 4th Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $13938C: 4th Digi-Farm's Terrain Boards bought [3 bytes]
// $139390: 4th Digi-Farm's BGM Boards bought [16 bits]
// $13984C: Current Quest [16 bits]
//          Union Quests
//          0x0002 = Explore Limit Valley
//          0x0003 = Sortie to Loop Swamp
//          0x0004 = Night Crow Assault
//          0x0005 = The Palette Amazon
//          0x0006 = Go to Thriller Ruins
//          0x0007 = Search the DigiArea
//          0x0008 = Merchant of Death
//          0x0009 = The Final Battle
//          0x000a = Gaia Origin Challenge
//          
//          Holy Quests
//          0x0018 = Find Tapirmon
//          0x0019 = Dorugamon the Digger
//          0x001a = Refreshing DigiJuice
//          0x001b = The Stolen Awards
//          0x001c = Penguinmon's Lost Item
//          0x001d = The Haunted House
//          0x001e = Stop the Duel
//          0x001f = The Flower Bulb
//          0x0020 = The 3 Archangels
//          
//          Dragon Quests
//          0x0021 = Find the L-Mushroom
//          0x0022 = Interesting DigiComic
//          0x0023 = Save Shellmon
//          0x0024 = Bomber Incident
//          0x0025 = The Assault Balancer
//          0x0026 = KChessmon's Memory
//          0x0027 = Minervamon Challenge
//          0x0028 = DigiLove Ring of Love
//          0x0029 = The Stolen Microphone
//          
//          Bird Quests
//          0x002a = Red Shoe Material
//          0x002b = Find the Pink Lipstick
//          0x002c = Apemon's Golden Hair
//          0x002d = Dig in Task Canyon
//          0x002e = Stop Kabuterimon
//          0x002f = The Secret Letter
//          0x0031 = Gorgeous Nuts
//          0x0032 = Airdramon's Data
//          
//          Aquan Quests
//          0x0033 = Find a Water Pillow
//          0x0034 = Water Goggles
//          0x0035 = Digideli-Cake
//          0x0036 = Loop Swamp Rumor
//          0x0037 = Macrobattle Tourney
//          0x0038 = Tasty Water
//          0x0039 = The Combat Game
//          0x003a = The Ultimate Cuisine
//          0x003b = Cancel the Duel
//          
//          Other
//          0xffff = No Quest selected
function active_quest() => word(0x13984C)

// $139852: Top Damage [16 bits] (max 270F)
function top_damage() => word(0x139852)

// $139FD1: Bit1 = Player has done Wireless communications (Unlocks "The Legendary Tamer" Quest)
function connected_wirelessly() => bit1(0x139FD1)

// $139FD4: Event Flags
//          Bit4 = Pack chosen, play the first scene of the game
//          Bit5 - Bit7 = Colosseum scenes before the fight
// $139FD5: Bit0 = Kokuwamon defeated
//          Bit1 = Gabumon and Mametyramon defeated
//          Bit2 = Golemon, Volcanomon and Mushroomon defeated
//          Bit3 = Colosseum scene before final fight
//          Bit4 = Before Sayo fight
//          Bit5 = Defeated Sayo scene plays
//          Bit6 = Lost to Sayo scene plays
//          Bit7 = After Sayo fight
// $139FD6: Bit0 - Bit1 = Colosseum scenes after Sayo fight
//          Bit2 = Union Room scene
//          Bit3 = Sunshine City scene
//          Bit4 - Bit5 = Tamer Home scenes (turn on at the same time)
//          Bit6 - Bit7 = Sunshine City scenes before ???? fight
// $139FD7: Bit0 - Bit3 = Sunshine City scenes before ???? fight
//          Bit4 = Tamer Home scene before ???? fight
//          Bit5 - Bit6 = ???? defeated (they turn on at the same time)
function mysterious_energy_defeated() => bit6(0x139FD7) == 1

// $139FD9: Bit4 = Union Room scene after defeating ????
//          Bit5 = Gummymon scene before leaving for Login Mountain
//          Bit6 = Scene of Light Fang Tamers heading to Login Mountain
//          Bit7 = First scene in Login Mountain
// $139FDA: Bit0 - Bit1 = After defeating Aquilamon in Login Mountain
//          Bit2 - Bit5 = All turn on upon entering Union Room after defeating Aquilamon
//          Bit4 = Used to mark step 3 in the Union Quest as completed
// $139FDC: Bit0 = Quest "Explore Limit Valley" started
//          Bit1 = Quest Tutorial in Shine Office
//          Bit2 = Quest Tutorial in Shine Center
//          Bit3 = "Explore Limit Valley" step 1 (Enter Union Room)
//          Bit4 = Defeated Seasarmon Mini-Boss in Limit Valley (Turns off again when starting the Grimmon fight)
//          Bit4 - Bit6 = Turn on together after defeating Grimmon
// $139FDD: Bit2 = "Explore Limit Valley" step 3 (Enter Union Room after defeating Grimmon)
//          Bit3 = "Explore Limit Valley" step 4 (Claim rewards)
// $139FDE: Bit6 = Quest "Sortie to Loop Swamp" started
//          Bit7 = "Sortie to Loop Swamp" step 1 (Enter Union Room)
// $139FDF: Bit0 = WaruSeadramon defeated
//          Bit1 = "Sortie to Loop Swamp" step 2 completed (Turns on together with Bit0)
//          Bit2 = Union Room after defeating WaruSeadramon
//          Bit6 = "Sortie to Loop Swamp" step 3 completed (Turns on together with Bit2)
//          Bit7 = "Sortie to Loop Swamp" step 4 completed (received reward)
// $139FE1: Bit2 = Quest "Night Crow Assault" started
//          Bit3 = "Night Crow Assault" step 1 (Enter Union Room)
//          Bit4 - Bit5 = Defeat Night Crow Tamer 1 (Turn on after the same event)
//          Bit6 - Bit7 = Defeat Newton (Turn on after the same event)
// $139FE2: Bit0 - Bit1 = Defeat Sayo (Turn on after the same event)
//          Bit2 = "Night Crow Assault" step 3 (Enter Union Room)
//          Bit3 = "Night Crow Assault" step 4 completed (received reward)
// $139FE3: Bit6 = Quest "The Palette Amazon" started
//          Bit7 = "The Palette Amazon" step 1 (Enter Union Room)
// $139FE4: Bit0 = Shine City scene before going to Palette Amazon
//          Bit1 = Defeated Fugamon
//          Bit2 - Bit3 = Defeated Spinomon
//          Bit6 = Entered Union Room after defeating Spinomon
//          Bit7 = "The Palette Amazon" completed
// $139FE6: Bit2 = "Go to Thriller Ruins" accepted
//          Bit3 = Step 2 (Entered Union Room)
//          Bit4 = Turns on after defeating Tsukaimon, turns off upon starting the Gaiomon fight
//          Bit4 - Bit6 = Defeated Gaiomon
//          Bit7 = Last scene with Sayo on Thriller Ruins
// $139FE7: Bit2 = Enter Union Room after defeating Gaiomon
//          Bit3 = "Go to Thriller Ruins" completed
// $139FE8: Bit6 = "Search the DigiArea" Quest accepted
//          Bit7 = Step 1 (Enter Union Room)
// $139FE9: Bit0 = Shine Square scene after leaving Union Room
//          Bit1 - Bit2 = Tamer Home room scenes (automatic)
//          Bit3 = Access Glacier boss scene
//          Bit4 - Bit5 = Defeated Ophanimon
//          Bit6 = Union Room scene after defeating Ophanimon
//          Bit7 = "Search the DigiArea" completed
// $139FEB: Bit2 = "Merchant of Death" Quest accepted
//          Bit3 = Step 1 (Enter Union Room)
//          Bit4 = WaruSeadramon scene in Proxy Island
//          Bit5 & Bit6 = Defeated Gaiomon
//          Bit7 = GranDracmon scene
// $139FEC: Bit2 = Enter Union Room after getting Kowloon Co. to help
//          Bit3 = "Merchant of Death" Quest completed
// $139FED: Bit6 = "The Final Battle" Quest accepted
//          Bit7 = Step 1 (Enter Union Room)
// $139FEE: Bit0 = Step 2 (Shine Office scene after leaving Union Room)
//          Bit1 = Central Bridge scene
//          Bit2 = Central Bridge Sayo scene
//          Bit3 = Master ID obtained
//          Bit4 = ChronoCore scene after defeating ChaosGallantmonC
//          Bit5 = After credits roll
//          Bit6 = After post-credits scene
//          Bit7 = "The Final Battle" Quest completed
// $139FF0: Bit2 = "Gaia Origin Challenge" Quest accepted
//          Bit3 = Step 1 (Enter Union Room)
//          Bit4 = Step 2 (Defeated the Gaia Origin in Transfield)
story_checkpoints = {
    "Shine W Area Restored": bit6(0x139FDF),
    "Shine S Area Restored": bit7(0x139FE4),
    "Shine N Area Restored": bit7(0x139FE9),
    "Before Game Beaten": bit4(0x139FEE),
    "Game Beaten": bit5(0x139FEE),
    "Gaia Origin Started": bit3(0x139FF0),
    "Gaia Origin Defeated": bit4(0x139FF0),
}

// $139FD1: Bit1 = Player has done Wireless communications (Unlocks "The Legendary Tamer" Quest)
// $139FF1: Bit2 = Enter Union Room after defeating the Gaia Origin
//          Bit3 = "Gaia Origin Challenge" completed
// $139FF2: Bit6 = "The Legendary Tamer" Quest accepted
//          Bit7 = Step 1 (Enter Union Room)
// $139FF3: Bit0 = Step 2 (Became a Legend Rank Tamer)
//          Bit6 = Enter Union Room after becoming a Legend Rank Tamer
//          Bit7 = The Legendary Tamer" completed
// $13A01A: Quests Information
//          ---------------------------------------------------------
//          Find Tapirmon - Holy
//          Bit6 = Quest started (turning this to 0 doesn't cancel the Quest, that is handled elsewhere)
//          Bit7 = Step 1 (Talked to Gummymon in Shine Plaza)
// $13A01B: Bit5 = Step 2 (Talked to Tapirmon in Thriller Ruins)
//          Bit6 = Step 3 (Talked to Gummymon in Shine Plaza)
//          Bit7 = Step 4 (Reward claimed) If this bit is on, the Quest registers as cleard and can't be started
//          ---------------------------------------------------------
// $13A01C: --------------------------------------
//          Dorugamon the Digger - Holy
//          Bit0 = Quest started
//          Bit1 = Step 1 (Talked to Renamon in Shine Plaza)
//          Bit2 = Defeated Dorugamon 1 (Right after the dark area)
//          Bit3 = Defeated Dorugamon 2 (south-most one)
//          Bit7 = Step 2 (Defeated Dorugamon 3 (end of dead end path near the original entrance))
// $13A01D: Bit0 = Step 3 (Talked to Renamon in Shine Plaza)
//          Bit1 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Refreshing DigiJuice - Holy
//          Bit2 = Quest started
//          Bit3 = Step 1 (Talked to Tapirmon in the farm)
//          Bit4 = Step 2 (Talked to Digitamamon in Thriller Ruins)
//          Bit5 = Step 3 (Get Digian Fruit from Treasure Chest in Thriller Ruins)
// $13A01E: Bit1 = Step 4 (Talked to Digitamamon in Thriller Ruins)
//          Bit2 = Step 5 (Talked to Tapirmon in the farm)
//          Bit3 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Stolen Awards - Holy
//          Bit4 = Quest started
//          Bit5 = Step 1 (Talked to Kyubimon in Shine Plaza)
//          Bit6 = Step 2 (Cool Medal from Dokugumon in Resistor Jungle)
// $13A01F: Bit3 = Step 3 (Cool Trophy from Arukenimon in Resistor Jungle)
//          Bit4 = Step 4 (Talked to Kyubimon in Shine Plaza)
//          Bit5 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Penguinmon's Lost Item - Holy
//          Bit6 = Quest started
//          Bit7 = Step 1 (Talked to Starmon in the Digi-Farm)
// $13A020: Bit0 = Step 2 (Talk to Muchomon in Palette Amazon)
//          Bit1 = Step 3 (Talk to Penguinmon in Palette Amazon)
//          Bit2 = Step 4 (Defeated Muchomon in Palette Amazon)
//          Bit5 = Step 5 (Talk to Penguinmon in Palette Amazon)
//          Bit6 = Step 6 (Talked to Starmon in the Digi-Farm)
//          Bit7 = Step 7 (Reward claimed)
//          --------------------------------------
// $13A021: --------------------------------------
//          The Haunted House - Holy
//          Bit0 = Quest started
//          Bit1 = Step 1 (Talked to Digitamamon in Shine Plaza)
//          Bit2 = Step 2 (Defeat Myotismon in Thriller Ruins)
//          Bit7 = Step 3 (Defeat VenomMyotismon in Thriller Ruins)
// $13A022: Bit0 = Step 4 (Talked to Digitamamon in Shine Plaza)
//          Bit1 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Stop the Duel - Holy
//          Bit2 = Quest started
//          Bit3 = Step 1 (Talked to Monzaemon in Digi-Farm)
//          Bit4 = Defeated Mametyramon in AccessGlacier
//          Bit5 = Step 2 (Defeated MetalTyrannomon in AccessGlacier)
//          Bit6 = Step 3 (Talked to ImperialdramonDM in Shine S Area)
// $13A023: Bit1 = Step 4 (Talked to Mametyramon in Access Glacier)
//          Bit2 = Step 5 (Talked to Monzaemon in Digi-Farm)
//          Bit3 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Flower Bulb - Holy
//          Bit4 = Quest started
//          Bit5 = Step 1 (Talked to Unimon in Shine Plaza)
//          Bit6 = Step 2 (Talk to Gabumon in Resistor Jungle)
//          Bit7 = Step 3 (Defeat Woodmon in Resistor Jungle)
// $13A024: Bit0 = Step 4 (Defeat RedVegiemon in Resistor Jungle)
//          Bit1 = Step 5 (Defeat Cherrymon in Resistor Jungle)
//          Bit3 = Step 6 (Talked to Lillymon in Shine N Area)
//          Bit4 = Step 7 (Talked to Unimon in Shine Plaza)
//          Bit5 = Step 8 (Reward claimed)
//          ---------------------------------------------------------
//          ---------------------------------------------------------
//          The 3 Archangels - Holy
//          Bit6 = Quest started
//          Bit7 = Step 1 (Talked to SlashAngemon in Shine Plaza)
// $13A025: Bit0 = Defeat Cherubimon (Good) in HighlightHaven
//          Bit1 = Defeat Seraphimon in HighlightHaven
//          Bit5 = Step 2 (Defeat Ophanimon in HighlightHaven)
//          Bit6 = Step 3 (Talked to SlashAngemon in Shine Plaza)
//          Bit7 = Step 4 (Reward claimed)
//          ---------------------------------------------------------
// $13A027: ---------------------------------------------------------
//          Find the L-Mushroom - Dragon
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talk to Veemon in Shine Square)
// $13A028: Bit1 = Step 2 (L-Mushroom from Treasure Chest in Chip Forest)
//          Bit2 = Step 3 (Talked to Veemon in Shine Square)
//          Bit3 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Interesting DigiComic - Dragon
//          Bit4 = Quest started
//          Bit5 = Step 1 (Talked to Veedramon in the farm)
// $13A029: Bit2 = Step 2 (Defeated Kyubimon in Limit Valley)
//          Bit3 = Step 3 (Get DigiComic 2 from Treasure Chest in Limit Valley)
//          Bit4 = Step 4 (Talked to Veedramon in the farm)
//          Bit5 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Save Shellmon - Dragon
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talk to Agumon in Shine Square)
// $13A02A: Bit0 = Step 2 (Battle Shellmon in Loop Swamp)
//          Bit1 = Step 3 (AntidoteFruit from Treasure Chest in Loop Swamp)
//          Bit5 = Step 4 (Battle ShogunGekomon in Loop Swamp)
//          Bit6 = Step 5 (Talked to Agumon in Shine Square)
//          Bit7 = Step 6 (Reward claimed)
//          ---------------------------------------------------------
// $13A02B: --------------------------------------
//          Bomber Incident - Dragon
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Growlmon in the farm)
//          Bit2 = Step 2 (Talked to BomberNanimon in Task Canyon)
//          Bit7 = Step 3 (Defeated Gryphonmon in Task Canyon)
// $13A02C: Bit0 = Step 4 (Talked to Growlmon in the farm)
//          Bit1 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Assault Balancer - Dragon
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to WarGrowlmon in Shine Hall)
//          Bit4 = Step 2 (Talked to MarineDevimon in Macro Sea)
//          Bit5 = Step 3 (Talked to Divermon in Macro Sea)
// $13A02D: Bit1 = Step 4 (Get Assault Balancer from MarineDevimon in Macro Sea) (Battle)
//          Bit2 = Step 5 (Talked to WarGrowlmon in Shine Hall)
//          Bit3 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          KChessmon's Memory - Dragon
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to MetalGreymon in the farm)
//          Bit6 = Step 2 (Talked to KnightChessmonW in Thriller Ruins)
//          Bit7 = Step 3 (Get Chess Board from Treasure Chest in Thriller Ruins)
// $13A02E: Bit0 = Step 4 (Talked to KnightChessmonW in Thriller Ruins)
//          Bit1 = Step 5 (Defeated KnightChessmonB in Thriller Ruins)
//          Bit3 = Step 6 (Talked to KnightChessmonW in Thriller Ruins)
//          Bit4 = Step 7 (Talked to MetalGreymon in the farm)
//          Bit5 = Step 8 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Minervamon Challenge - Dragon
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talked to Triceramon in Shine Hall)
// $13A02F: Bit0 = Step 2 (Talked to Minervamon in Palette Amazon)
//          Bit1 = Step 3 (Defeat Deramon in Palette Amazon)
//          Bit5 = Step 4 (Defeat Minervamon in Palette Amazon)
//          Bit6 = Step 5 (Talked to Triceramon in Shine Hall)
//          Bit7 = Step 6 (Reward claimed)
//          ---------------------------------------------------------
// $13A030: --------------------------------------
//          DigiLove Ring of Love - Dragon
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Dinohumon in the farm)
//          Bit2 = Step 2 (Talked to Guilmon in Task Canyon)
//          Bit3 = Step 3 (Defeated AeroVeedramon in Task Canyon)
//          Bit7 = Step 4 (Talked to Guilmon in Task Canyon)
// $13A031: Bit0 = Step 5 (Talked to Dinohumon in the Farm)
//          Bit1 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Stolen Microphone - Dragon
//          Bit2 = Quest started
//          Bit3 = Step 1 (Talked to Megidramon in the Farm)
//          Bit4 = Step 2 (Talked to BlackWarGrowlmon in Shadow Abyss)
//          Bit5 = Step 3 (Talked to Volcanomon in Shadow Abyss)
//          Bit6 = Step 4 (Defeated BlackWarGrowlmon in Shadow Abyss)
// $13A032: Bit1 = Step 5 (Defeated Volcanomon in Shadow Abyss)
//          Bit2 = Step 6 (Talked to Megidramon in the Farm)
//          Bit3 = Step 7 (Reward claimed)
//          ---------------------------------------------------------
// $13A033: --------------------------------------
//          Red Shoe Material - Bird
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talk to Patamon in Shine Square)
// $13A034: Bit0 = Step 2 (Paint Oil in Treasure Chest in Login Mountain)
//          Bit5 = Step 3 (Bark in Treasure Chest in Login Mountain)
//          Bit6 = Step 4 (Talked to Patamon in Shine Square)
//          Bit7 = Step 5 (Reward claimed)
//          --------------------------------------
// $13A035: --------------------------------------
//          Find the Pink Lipstick- Bird
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talk to Biyomon in Shine Square)
//          Bit7 = Step 2 (Get Pink Lipstick from Flymon in Chip Forest (Dark area 1))
// $13A036: Bit0 = Step 3 (Talked to Biyomon in Shine Square)
//          Bit1 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Apemon's Golden Hair - Bird
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talk to Peckmon in the farm)
//          Bit4 = Step 2 (Talk to Apemon in Limit Valley)
//          Bit5 = Step 3 (Talk to Peckmon in Limit Valley)
//          Bit6 = Step 4 (Defeated Apemon in Limit Valley)
//          Bit7 = Step 5 (Talk to Peckmon in Limit Valley)
// $13A037: Bit1 = Step 6 (Talk to Apemon in Limit Valley)
//          Bit2 = Step 7 (Talk to Peckmon in the farm)
//          Bit3 = Step 8 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Dig in Task Canyon - Bird
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talk to Garudamon in Shine Square)
//          Bit6 = Step 2 (Talk to Researcher in Task Canyon)
//          Bit7 = Defeated Shakkoumon in Task Canyon
// $13A038: Bit0 = Step 3 (Ancient Key from Treasure Chest in Task Canyon)
//          Bit3 = Step 4 (Talked to Researcher in Task Canyon)
//          Bit4 = Step 5 (Talked to Garudamon in Shine Square)
//          Bit5 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Stop Kabuterimon - Bird
//          Bit6 = Quest started
//          Bit7 = Step 1 (Talked to Saberdramon in the farm)
// $13A039: Bit0 = Step 2 (Defeated Kabuterimon in ResistorJungle)
//          Bit5 = Step 3 (Talked to Sinduramon in ResistorJungle)
//          Bit6 = Step 4 (Talked to Saberdramon in the farm)
//          Bit7 = Step 5 (Reward claimed)
//          --------------------------------------
// $13A03A: --------------------------------------
//          The Secret Letter - Bird
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talk to Akatorimon in Shine Square)
//          Bit7 = Step 2 (Defeat Lilamon in Palette Amazon)
// $13A03B: Bit0 = Step 3 (Talked to Akatorimon in Shine Square)
//          Bit1 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Monk Sword - Bird
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talk to Karatenmon in the farm)
//          Bit4 = Defeated Mummymon in Thriller Ruins
//          Bit5 = Defeated Mummymon in Thriller Ruins (Chaos area)
//          Bit6 = Step 2 (Defeated Mummymon in Thriller Ruins)
// $13A03C: Bit1 = Step 3 (Defeated Pharaohmon in Thriller Ruins)
//          Bit2 = Step 4 (Talk to Karatenmon in the farm)
//          Bit3 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Gorgeous Nuts - Bird
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talk to Deramon in Shine Square)
//          Bit6 = Step 2 (Talk to Solarmon in Proxy Island)
//          Bit7 = Step 3 (Talk to Tortamon in Proxy Island)
// $13A03D: Bit0 = Step 4 (Defeat Vermilimon in Proxy Island)
//          Bit3 = Step 5 (Talked to Tortamon in Proxy Island)
//          Bit4 = Step 6 (Talked to Deramon in Shine Square)
//          Bit5 = Step 7 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Airdramon's Data - Bird
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talk to Phoenixmon in Shine Square)
// $13A03E: Bit0 = Talked to Piximon in HighlightHaven
//          Bit1 = Talked to Sorcerymon in HighlightHaven
//          Bit5 = Step 2 (Defeated Goldramon in HighlightHaven)
//          Bit6 = Step 3 (Talked to Phoenixmon in Shine Square)
//          Bit7 = Step 4 (Reward claimed)
//          --------------------------------------
// $13A040: ---------------------------------------------------------
//          Find a Water Pillow - Aquan
//          Bit2 = Quest started
//          Bit3 = Step 1 (Talk to Betamon in Shine Office)
// $13A041: Bit1 = Step 2 (Iron Pillow from defeating Gizamon in Sunken Tunnel)
//          Bit2 = Step 3 (Talked to Betamon in Shine Office)
//          Bit3 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Water Goggles - Aquan
//          Bit4 = Quest started
//          Bit5 = Step 1 (Talked to Octomon in the farm)
//          Bit6 = Step 2 (Talked to Shurimon in Thriller Ruins)
// $13A042: Bit3 = Step 3 (Defeated Bakemon in Thriller Ruins)
//          Bit4 = Step 4 (Talked to Octomon in the farm)
//          Bit5 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Digidel-Cake - Aquan
//          Bit6 = Quest started
//          Bit7 = Step 1 (Talk to Gizamon in Shine Office)
// $13A043: Bit0 = Step 2 (Talked to Sunflowmon in Shine W Area)
//          Bit1 = Step 3 (Get SP DigiMilk from Hookmon in Sunken Tunnel)
//          Bit5 = Step 4 (Talked to Sunflowmon in Shine W Area)
//          Bit6 = Step 5 (Talk to Gizamon in Shine Office)
//          Bit7 = Step 6 (Reward claimed)
//          ---------------------------------------------------------
// $13A044: ---------------------------------------------------------
//          Loop Swamp Rumor - Aquan
//          Bit0 = Quest started
//          Bit1 = Step 1 (Talk to Gomamon in the farm)
//          Bit2 = Step 2 (Get Katana from Treasure Chest in Loop Swamp)
//          Bit3 = Defeat Kogamon in Loop Swamp
//          Bit7 = Step 3 (Defeat Musyamon in Loop Swamp)
// $13A045: Bit0 = Step 4 (Talk to Gomamon in the farm)
//          Bit1 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Macrobattle Tourney - Aquan
//          Bit2 = Quest started
//          Bit3 = Step 1 (Talk to Ebidramon in Shine Office)
//          Bit4 = Step 2 (Talk to Dragomon in Macro Sea)
//          Bit5 = Step 3 (Defeat Pukumon in Macro Sea)
//          Bit6 = Step 4 (Defeat MetalSeadramon in Macro Sea)
// $13A046: Bit1 = Step 5 (Talked to Dragomon in Macro Sea)
//          Bit2 = Step 6 (Talked to Ebidramon in Shine Office)
//          Bit3 = Step 7 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Tasty Water - Aquan
//          Bit4 = Quest started
//          Bit5 = Step 1 (Talked to Gawappamon in the farm)
//          Bit6 = Step 2 (Talked to Blossomon in Loop Swamp)
//          Bit7 = Step 3 (Get DigiBranch from Treasure Chest in Loop Swamp)
// $13A047: Bit3 = Step 4 (Talked to Blossomon in Loop Swamp)
//          Bit4 = Step 5 (Talked to Gawappamon in the farm)
//          Bit5 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Combat Game - Aquan
//          Bit6 = Quest started
//          Bit7 = Step 1 (Talk to Hyogamon in Shine Office)
// $13A048: Bit0 = Step 2 (Talked to Vikemon in Access Glacier)
//          Bit1 = Step 3 (Defeat Zudomon 1 in Access Glacier)
//          Bit2 = Step 4 (Defeat Zudomon 2 in Access Glacier)
//          Bit3 = Step 5 (Defeat Zudomon 3 in Access Glacier)
//          Bit5 = Step 6 (Defeat Vikemon in Access Glacier)
//          Bit6 = Step 7 (Talked to Hyogamon in Shine Office)
//          Bit7 = Step 8 (Reward claimed)
//          ---------------------------------------------------------
// $13A049: --------------------------------------
//          The Ultimate Cuisine - Aquan
//          Bit0 = Quest started
//          Bit1 = Step 1 (Talk to ShogunGekomon in the farm)
//          Bit2 = Defeat Gesomon in Proxy Island
//          Bit7 = Step 2 (Defeat Octomon in Proxy Island)
// $13A04A: Bit0 = Step 3 (Talked to ShogunGekomon in the farm)
//          Bit1 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Cancel the Duel - Aquan
//          Bit2 = Quest started
//          Bit3 = Step 1 (Talked to Vikemon in the farm)
//          Bit4 = Step 2 (Talked to Devidramon in Shadow Abyss)
//          Bit5 = Step 3 (Talked to Zanbamon in Shadow Abyss)
//          Bit6 = Step 4 (Defeated DarkLizardmon in Shadow Abyss)
//          Bit7 = Step 5 (Defeated LadyDevimon in Shadow Abyss)
// $13A04B: Bit1 = Step 6 (Defeated Zanbamon in Shadow Abyss)
//          Bit2 = Step 7 (Talked to Vikemon in the farm)
//          Bit3 = Step 8 (Reward claimed)
//          --------------------------------------
quest_list = {
    "union1" : {"ID":0x0000,"Last Step":bit6(0x139FD7),"Reward Claimed":bit4(0x139FD9)},
    "union2" : {"ID":0x0001,"Last Step":bit1(0x139FDA),"Reward Claimed":bit5(0x139FDA), "Name":"Fly to Login Mountain"},
    // First 2 Union Quests work differently to the rest as they don't make use of the Quest Counter
    "union3" : {"ID":0x0002,"Last Step":bit2(0x139FDD),"Reward Claimed":bit3(0x139FDD), "Name":"Explore Limity Valley"},
    "union4" : {"ID":0x0003,"Last Step":bit6(0x139FDF),"Reward Claimed":bit7(0x139FDF), "Name":"Sortie to Loop Swamp"},
    "union5" : {"ID":0x0004,"Last Step":bit2(0x139FE2),"Reward Claimed":bit3(0x139FE2), "Name":"Night Crow Assault"},
    "union6" : {"ID":0x0005,"Last Step":bit6(0x139FE4),"Reward Claimed":bit7(0x139FE4), "Name":"The Palette Amazon"},
    "union7" : {"ID":0x0006,"Last Step":bit2(0x139FE7),"Reward Claimed":bit3(0x139FE7), "Name":"Go to Thriller Ruins"},
    "union8" : {"ID":0x0007,"Last Step":bit6(0x139FE9),"Reward Claimed":bit7(0x139FE9), "Name":"Search the DigiArea"},
    "union9" : {"ID":0x0008,"Last Step":bit2(0x139FEC),"Reward Claimed":bit3(0x139FEC), "Name":"Merchant of Death"},
    "union10" : {"ID":0x0009,"Last Step":bit6(0x139FEE),"Reward Claimed":bit7(0x139FEE), "Name":"The Final Battle"},
    "union11" : {"ID":0x000a,"Last Step":bit2(0x139FF1),"Reward Claimed":bit3(0x139FF1), "Name":"Gaia Origin Challenge"},
    "union12" : {"ID":0x000b,"Last Step":bit6(0x139FF3),"Reward Claimed":bit7(0x139FF3), "Name":"The Legendary Tamer"},
    "holy1" : {"ID":0x0018,"Last Step":bit6(0x13A01B),"Reward Claimed":bit7(0x13A01B)},
    "holy2" : {"ID":0x0019,"Last Step":bit0(0x13A01D),"Reward Claimed":bit1(0x13A01D)},
    "holy3" : {"ID":0x001a,"Last Step":bit2(0x13A01E),"Reward Claimed":bit3(0x13A01E)},
    "holy4" : {"ID":0x001b,"Last Step":bit4(0x13A01F),"Reward Claimed":bit5(0x13A01F)},
    "holy5" : {"ID":0x001c,"Last Step":bit6(0x13A020),"Reward Claimed":bit7(0x13A020)},
    "holy6" : {"ID":0x001d,"Last Step":bit0(0x13A022),"Reward Claimed":bit1(0x13A022)},
    "holy7" : {"ID":0x001e,"Last Step":bit2(0x13A023),"Reward Claimed":bit3(0x13A023)},
    "holy8" : {"ID":0x001f,"Last Step":bit4(0x13A024),"Reward Claimed":bit5(0x13A024)},
    "holy9" : {"ID":0x0020,"Last Step":bit6(0x13A025),"Reward Claimed":bit7(0x13A025)},
    "dragon1" : {"ID":0x0021,"Last Step":bit2(0x13A028),"Reward Claimed":bit3(0x13A028)},
    "dragon2" : {"ID":0x0022,"Last Step":bit4(0x13A029),"Reward Claimed":bit5(0x13A029)},
    "dragon3" : {"ID":0x0023,"Last Step":bit6(0x13A02A),"Reward Claimed":bit7(0x13A02A)},
    "dragon4" : {"ID":0x0024,"Last Step":bit0(0x13A02C),"Reward Claimed":bit1(0x13A02C)},
    "dragon5" : {"ID":0x0025,"Last Step":bit2(0x13A02D),"Reward Claimed":bit3(0x13A02D)},
    "dragon6" : {"ID":0x0026,"Last Step":bit4(0x13A02E),"Reward Claimed":bit5(0x13A02E)},
    "dragon7" : {"ID":0x0027,"Last Step":bit6(0x13A02F),"Reward Claimed":bit7(0x13A02F)},
    "dragon8" : {"ID":0x0028,"Last Step":bit0(0x13A031),"Reward Claimed":bit1(0x13A031)},
    "dragon9" : {"ID":0x0029,"Last Step":bit2(0x13A032),"Reward Claimed":bit3(0x13A032)},
    "bird1" : {"ID":0x002a,"Last Step":bit6(0x13A034),"Reward Claimed":bit7(0x13A034)},
    "bird2" : {"ID":0x002b,"Last Step":bit0(0x13A036),"Reward Claimed":bit1(0x13A036)},
    "bird3" : {"ID":0x002c,"Last Step":bit2(0x13A037),"Reward Claimed":bit3(0x13A037)},
    "bird4" : {"ID":0x002d,"Last Step":bit4(0x13A038),"Reward Claimed":bit5(0x13A038)},
    "bird5" : {"ID":0x002e,"Last Step":bit6(0x13A039),"Reward Claimed":bit7(0x13A039)},
    "bird6" : {"ID":0x002f,"Last Step":bit0(0x13A03B),"Reward Claimed":bit1(0x13A03B)},
    "bird7" : {"ID":0x0030,"Last Step":bit2(0x13A03C),"Reward Claimed":bit3(0x13A03C)},
    "bird8" : {"ID":0x0031,"Last Step":bit4(0x13A03D),"Reward Claimed":bit5(0x13A03D)},
    "bird9" : {"ID":0x0032,"Last Step":bit6(0x13A03E),"Reward Claimed":bit7(0x13A03E)},
    "aquan1" : {"ID":0x0033,"Last Step":bit2(0x13A041),"Reward Claimed":bit3(0x13A041)},
    "aquan2" : {"ID":0x0034,"Last Step":bit4(0x13A042),"Reward Claimed":bit5(0x13A042)},
    "aquan3" : {"ID":0x0035,"Last Step":bit6(0x13A043),"Reward Claimed":bit7(0x13A043)},
    "aquan4" : {"ID":0x0036,"Last Step":bit0(0x13A045),"Reward Claimed":bit1(0x13A045)},
    "aquan5" : {"ID":0x0037,"Last Step":bit2(0x13A046),"Reward Claimed":bit3(0x13A046)},
    "aquan6" : {"ID":0x0038,"Last Step":bit4(0x13A047),"Reward Claimed":bit5(0x13A047)},
    "aquan7" : {"ID":0x0039,"Last Step":bit6(0x13A048),"Reward Claimed":bit7(0x13A048)},
    "aquan8" : {"ID":0x003a,"Last Step":bit0(0x13A04A),"Reward Claimed":bit1(0x13A04A)},
    "aquan9" : {"ID":0x003b,"Last Step":bit2(0x13A04B),"Reward Claimed":bit3(0x13A04B)},
}
// $13A0B9: Digimons obtained [64 bytes] (Bitflags, align with Digimon IDs)
// $13A0C2: Bit0 = Chicchimon
//          Bit1 = Koromon
//          Bit2 = Tsunomon
//          Bit3 = Poyomon
//          Bit4 = Tokomon
//          Bit5 = Tanemon
//          Bit6 = Pagumon
//          Bit7 = Kapurimon
// $13A0C3: Bit0 = Kuramon
//          Bit1 = Puttimon
//          Bit2 = Chibomon
//          Bit3 = Dorimon
//          Bit4 = Calumon
//          Bit5 = Gigimon
//          Bit6 = Gummymon
//          Bit7 = Kokomon
// $13A0C4: Bit0 = Tsumemon
//          Bit1 = Minomon
//          Bit2 = Wanyamon
//          Bit3 = Budmon
//          Bit4 = Botamon
//          Bit5 = Sunmon
//          Bit6 = Moonmon
// $13A0C6: Bit0 = Monodramon
//          Bit1 = Agumon
//          Bit2 = Veemon
//          Bit3 = Guilmon
//          Bit4 = Dorumon
//          Bit5 = Betamon
//          Bit6 = Gabumon
//          Bit7 = Patamon
// $13A0C7: Bit0 = Biyomon
//          Bit1 = Palmon
//          Bit2 = Tentomon
//          Bit3 = Gotsumon
//          Bit4 = Otamamon
//          Bit5 = Gomamon
//          Bit6 = Tapirmon
//          Bit7 = DemiDevimon
// $13A0C8: Bit0 = ToyAgumon
//          Bit1 = Hagurumon
//          Bit2 = Salamon
//          Bit3 = Wormmon
//          Bit4 = Hawkmon
//          Bit5 = Armadillomon
//          Bit6 = Terriermon
//          Bit7 = Lopmon
// $13A0C9: Bit0 = Renamon
//          Bit1 = Impmon
//          Bit2 = Keramon
//          Bit3 = Falcomon
//          Bit4 = Penguinmon
//          Bit5 = Goburimon
//          Bit6 = Kumamon
//          Bit7 = Kotemon
// $13A0CA: Bit0 = Shamamon
//          Bit1 = SnowGoburimon
//          Bit2 = Syakomon
//          Bit3 = SnowAgumon
//          Bit4 = BlackAgumon
//          Bit5 = Muchomon
//          Bit6 = Crabmon
//          Bit7 = Floramon
// $13A0CB: Bit0 = Gizamon
//          Bit1 = Lalamon
//          Bit2 = Aruraumon
//          Bit3 = ToyAgumon (Black)
//          Bit4 = Tsukaimon
//          Bit5 = PawnChessmon (Black)
//          Bit6 = Gaomon
//          Bit7 = DotFalcomon
// $13A0CC: Bit0 = Kudamon
//          Bit1 = Kamemon
//          Bit2 = Dracmon
//          Bit3 = PawnChessmon (White)
//          Bit4 = DotAgumon
//          Bit5 = Kunemon
//          Bit6 = Mushroomon
//          Bit7 = Solarmon
// $13A0CD: Bit0 = Candlemon
//          Bit1 = Kokuwamon
//          Bit2 = DoKunemon
//          Bit3 = Coronamon
//          Bit4 = Lunamon
// $13A0CE: Bit7 = Mekanorimon
// $13A0CF: Bit0 = Greymon
//          Bit1 = Tyrannomon
//          Bit2 = Devimon
//          Bit3 = Airdramon
//          Bit4 = Seadramon
//          Bit5 = Numemon
//          Bit6 = Kabuterimon
//          Bit7 = Garurumon
// $13A0D0: Bit0 = Angemon
//          Bit1 = Veggiemon
//          Bit2 = Ogremon
//          Bit3 = Bakemon
//          Bit4 = Sukamon
//          Bit5 = Kokatorimon
//          Bit6 = Leomon
//          Bit7 = Kuwagamon
// $13A0D1: Bit0 = Raremon
//          Bit2 = Gekomon
//          Bit3 = Gatomon
//          Bit4 = Wizardmon
//          Bit5 = Togemon
//          Bit6 = Guardromon
//          Bit7 = ExVeemon
// $13A0D2: Bit0 = Stingmon
//          Bit1 = Birdramon
//          Bit2 = Ankylomon
//          Bit3 = Gargomon
//          Bit4 = Growlmon
//          Bit5 = Kyubimon
//          Bit6 = Kurisarimon
//          Bit7 = Seasarmon
// $13A0D3: Bit0 = Vilemon
//          Bit1 = Aquilamon
//          Bit2 = Roachmon
//          Bit3 = Dinohumon
//          Bit4 = Hookmon
//          Bit5 = Grizzmon
//          Bit6 = Dorugamon
//          Bit7 = Reptiledramon
// $13A0D4: Bit0 = Apemon
//          Bit1 = Starmon
//          Bit2 = BomberNanimon
//          Bit3 = Kiwimon
//          Bit4 = Unimon
//          Bit5 = Sorcerymon
//          Bit6 = DarkTyrannomon
//          Bit7 = Akatorimon
// $13A0D5: Bit0 = PlatinumSukamon
//          Bit1 = Ikkakumon
//          Bit2 = Minotarumon
//          Bit3 = Icemon
//          Bit4 = DarkLizardmon
//          Bit5 = Flarerizamon
//          Bit6 = GeoGreymon
//          Bit7 = Gaogamon
// $13A0D6: Bit0 = Diatrymon
//          Bit1 = Reppamon
//          Bit2 = Sunflowmon
//          Bit3 = Gawappamon
//          Bit4 = Sangloupmon
//          Bit5 = Peckmon
//          Bit6 = Drimogemon
//          Bit7 = NiseDrimogemon
// $13A0D7: Bit0 = MoriShellmon
//          Bit1 = Wendigomon
//          Bit2 = Fugamon
//          Bit3 = Tsuchidarumon
//          Bit4 = Tortamon
//          Bit5 = Ebidramon
//          Bit6 = Octomon
//          Bit7 = Gesomon
// $13A0D8: Bit0 = Coelamon
//          Bit1 = Shellmon
//          Bit2 = Frigimon
//          Bit3 = Geremon
//          Bit4 = Hyogamon
//          Bit5 = KaratsukiNumemon
//          Bit6 = IceDevimon
//          Bit7 = Dolphmon
// $13A0D9: Bit0 = Saberdramon
//          Bit1 = Woodmon
//          Bit2 = Snimon
//          Bit3 = Flymon
//          Bit4 = Yanmamon
//          Bit5 = SandYanmamon
//          Bit6 = RedVeggiemon
//          Bit7 = Weedmon
// $13A0DA: Bit0 = Ninjamon
//          Bit1 = Kogamon
//          Bit2 = Omekamon
//          Bit3 = Clockmon
//          Bit4 = Thunderballmon
//          Bit5 = Tankmon
//          Bit6 = Nanimon
//          Bit7 = Golemon
// $13A0DB: Bit0 = Monochromon
//          Bit1 = Mojyamon
//          Bit2 = JungleMojyamon
//          Bit3 = Deputymon
//          Bit4 = Centarumon
//          Bit5 = Devidramon
//          Bit6 = Dokugumon
//          Bit7 = Veedramon
// $13A0DC: Bit0 = Musyamon
//          Bit1 = KnightChessmon (White)
//          Bit2 = KnightChessmon (Black)
//          Bit3 = Firamon
//          Bit4 = Lekismon
// $13A0DD: Bit7 = Volcanomon
// $13A0DE: Bit0 = MetalGreymon
//          Bit1 = Monzaemon
//          Bit2 = SkullGreymon
//          Bit3 = MetalMamemon
//          Bit4 = Andromon
//          Bit5 = Etemon
//          Bit6 = Megadramon
//          Bit7 = Piximon
// $13A0DF: Bit0 = Digitamamon
//          Bit1 = Mammothmon
//          Bit2 = MegaKabuterimon (Blue)
//          Bit3 = Okuwamon
//          Bit4 = ShogunGekomon
//          Bit5 = Angewomon
//          Bit6 = Tylomon
//          Bit7 = Scorpiomon
// $13A0E0: Bit0 = MegaSeadramon
//          Bit1 = Dragomon
//          Bit2 = WereGarurumon (Black)
//          Bit3 = WereGarurumon (Blue)
//          Bit4 = Myotismon
//          Bit5 = LadyDevimon
//          Bit6 = Garudamon
//          Bit7 = Blossomon
// $13A0E1: Bit0 = Lillymon
//          Bit1 = MegaKabuterimon (Red)
//          Bit2 = Datamon
//          Bit3 = Cyberdramon
//          Bit4 = MagnaAngemon
//          Bit5 = Paildramon
//          Bit6 = Dinobeemon
//          Bit7 = Antylamon
// $13A0E2: Bit0 = Arukenimon
//          Bit1 = Mummymon
//          Bit2 = WarGrowlmon
//          Bit3 = Rapidmon
//          Bit4 = Taomon
//          Bit5 = Parrotmon
//          Bit6 = Infermon
//          Bit7 = BlackRapidmon
// $13A0E3: Bit0 = Pandamon
//          Bit1 = MarineDevimon
//          Bit2 = Karatenmon
//          Bit3 = Kyukimon
//          Bit4 = Sinduramon
//          Bit5 = Pipismon
//          Bit6 = DoruGreymon
//          Bit7 = Divermon
// $13A0E4: Bit0 = Kimeramon
//          Bit1 = Triceramon
//          Bit2 = Deramon
//          Bit3 = Silphymon
//          Bit4 = SuperStarmon
//          Bit5 = BlackWarGrowlmon
//          Bit6 = Zudomon
//          Bit7 = Whamon
// $13A0E5: Bit0 = Mamemon
//          Bit1 = Toucanmon
//          Bit2 = Owlmon
//          Bit3 = Meteormon
//          Bit4 = Gigadramon
//          Bit5 = RiseGreymon
//          Bit6 = MachGaogamon
// $13A0E6: Bit0 = Tyilinmon
//          Bit1 = Lilamon
//          Bit2 = Shadramon
//          Bit3 = Matadormon
//          Bit4 = Kabukimon
//          Bit5 = Cherrymon
//          Bit6 = Garbagemon
//          Bit7 = Lucemon (Chaos Mode)
// $13A0E7: Bit0 = Mametyramon
//          Bit1 = Giromon
//          Bit2 = Vademon
//          Bit3 = MetalTyrannomon
//          Bit4 = Tekkamon
//          Bit5 = BigMamemon
//          Bit6 = EXTyrannomon
//          Bit7 = Vermilimon
// $13A0E8: Bit0 = Phantomon
//          Bit1 = Vajramon
//          Bit2 = AeroVeedramon
//          Bit3 = GrapLeomon
//          Bit4 = Knightmon
//          Bit5 = Brachiomon
//          Bit6 = Allomon
//          Bit7 = Lynxmon
// $13A0E9: Bit0 = Shaujinmon
//          Bit1 = Yatagaramon
//          Bit2 = BishopChessmon
//          Bit3 = RookChessmon
//          Bit4 = Flaremon
//          Bit5 = Crescemon
//          Bit6 = Flamedramon
//          Bit7 = Magnamon
// $13A0EA: Bit0 = Prairiemon
//          Bit1 = Kongoumon
//          Bit2 = Seahomon
//          Bit3 = Shurimon
//          Bit4 = Kenkimon
//          Bit5 = Ponchomon
//          Bit6 = Argomon (Ultimate)
//          Bit7 = Shakkoumon
// $13A0EC: Bit0 = Lampmon
//          Bit1 = HerculesKabuterimon
//          Bit2 = SaberLeomon
//          Bit3 = MetalEtemon
//          Bit4 = MarineAngemon
//          Bit5 = GigaSeadramon
//          Bit6 = Piedmon
//          Bit7 = Creepymon
// $13A0ED: Bit0 = Phoenixmon
//          Bit1 = Puppetmon
//          Bit2 = Rosemon
//          Bit3 = WarGreymon
//          Bit4 = MetalGarurumon
//          Bit5 = Machinedramon
//          Bit6 = VenomMyotismon
//          Bit7 = Omnimon
// $13A0EE: Bit0 = Imperialdramon (Dragon Mode)
//          Bit1 = Imperialdramon (Fighter Mode)
//          Bit2 = Imperialdramon (Paladin Mode)
//          Bit3 = Ghoulmon
//          Bit4 = Seraphimon
//          Bit5 = HiAndromon
//          Bit6 = Devitamamon
//          Bit7 = Cherubimon (Good)
// $13A0EF: Bit0 = Cherubimon (Evil)
//          Bit1 = Gallantmon
//          Bit2 = Gallantmon (Crimson Mode)
//          Bit3 = MegaGargomon
//          Bit4 = Sakuyamon
//          Bit5 = Diaboromon
//          Bit6 = Neptunmon
//          Bit7 = Pukumon
// $13A0F0: Bit0 = Gryphonmon
//          Bit1 = Preciomon
//          Bit2 = Armageddemon
//          Bit3 = MaloMyotismon
//          Bit4 = Imperialdramon (Dragon Mode) (Black)
//          Bit5 = Boltmon
//          Bit6 = PrinceMamemon
//          Bit7 = Ophanimon
// $13A0F1: Bit0 = Zanbamon
//          Bit1 = BlackMegaGargomon
//          Bit2 = Jijimon
//          Bit3 = Babamon
//          Bit4 = Anubismon
//          Bit5 = Parasimon
//          Bit6 = Cannondramon
//          Bit7 = SlashAngemon
// $13A0F2: Bit0 = Eaglemon
//          Bit1 = Dorugoramon
//          Bit2 = Beelzemon
//          Bit3 = BantyoLeomon
//          Bit4 = Darkdramon
//          Bit5 = Apocalymon
//          Bit6 = Ebemon
//          Bit7 = Gulfmon
// $13A0F3: Bit0 = Goldramon
//          Bit1 = ZeedMillenniumon
//          Bit2 = Ghoulmon (Black)
//          Bit3 = Kuzuhamon
//          Bit4 = ChaosGallantmon
//          Bit5 = MetalSeadramon
//          Bit6 = Valkyrimon
//          Bit7 = Justimon
// $13A0F4: Bit0 = Vikemon
//          Bit1 = BlackWarGreymon
//          Bit2 = SkullMammothmon
//          Bit3 = GranKuwagamon
//          Bit4 = Pharaohmon
//          Bit5 = Susanoomon
//          Bit6 = Alphamon
//          Bit7 = Magnadramon
// $13A0F5: Bit0 = Millenniumon
//          Bit1 = MoonMillenniummon
//          Bit2 = Megidramon
//          Bit3 = Sleipmon
//          Bit4 = ShineGreymon
//          Bit5 = MirageGaogamon
//          Bit6 = JumboGamemon
//          Bit7 = Ravemon
// $13A0F6: Bit0 = QueenChessmon
//          Bit1 = KingChessmon
//          Bit2 = Chronomon (Holy Mode)
//          Bit3 = Lilithmon
//          Bit4 = Varodurumon
//          Bit5 = Apollomon
//          Bit6 = Dianamon
//          Bit7 = ShineGreymon (Burst Mode)
// $13A0F7: Bit0 = ShineGreymon (Ruin Mode)
//          Bit1 = MirageGaogamon (Burst Mode)
//          Bit2 = Ravemon (Burst Mode)
//          Bit3 = Lotosmon
//          Bit4 = DotShineGreymon
//          Bit5 = DotMirageGaogamon
//          Bit6 = Beelzemon (Burst Mode)
//          Bit7 = Rosemon (Burst Mode)
// $13A0F8: Bit0 = Argomon (Mega)
//          Bit1 = Minervamon
//          Bit2 = Duftmon
//          Bit3 = Chaosmon
//          ----------------------------------------------------------------
//          Digimons seen [63 bytes] (Bitflags, aligns with Digimon IDs)
//          Starts from Bit4
// $13A100: Bit4 = Chicchimon
//          Bit5 = Koromon
//          Bit6 = Tsunomon
//          Bit7 = Poyomon
// $13A101: Bit0 = Tokomon
//          Bit1 = Tanemon
//          Bit2 = Pagumon
//          Bit3 = Kapurimon
//          Bit4 = Kuramon
//          Bit5 = Puttimon
//          Bit6 = Chibomon
//          Bit7 = Dorimon
// $13A102: Bit0 = Calumon
//          Bit1 = Gigimon
//          Bit2 = Gummymon
//          Bit3 = Kokomon
//          Bit4 = Tsumemon
//          Bit5 = Minomon
//          Bit6 = Wanyamon
//          Bit7 = Budmon
// $13A103: Bit0 = Botamon
//          Bit1 = Sunmon
//          Bit2 = Moonmon
// $13A104: Bit4 = Monodramon
//          Bit5 = Agumon
//          Bit6 = Veemon
//          Bit7 = Guilmon
// $13A105: Bit0 = Dorumon
//          Bit1 = Betamon
//          Bit2 = Gabumon
//          Bit3 = Patamon
//          Bit4 = Biyomon
//          Bit5 = Palmon
//          Bit6 = Tentomon
//          Bit7 = Gotsumon
// $13A106: Bit0 = Otamamon
//          Bit1 = Gomamon
//          Bit2 = Tapirmon
//          Bit3 = DemiDevimon
//          Bit4 = ToyAgumon
//          Bit5 = Hagurumon
//          Bit6 = Salamon
//          Bit7 = Wormmon
// $13A107:	Bit0 = Hawkmon
//          Bit1 = Armadillomon
//          Bit2 = Terriermon
//          Bit3 = Lopmon
//          Bit4 = Renamon
//          Bit5 = Impmon
//          Bit6 = Keramon
//          Bit7 = Falcomon
// $13A108:	Bit0 = Penguinmon
//          Bit1 = Goburimon
//          Bit2 = Kumamon
//          Bit3 = Kotemon
//          Bit4 = Shamamon
//          Bit5 = SnowGoburimon
//          Bit6 = Syakomon
//          Bit7 = SnowAgumon
// $13A109:	Bit0 = BlackAgumon
//          Bit1 = Muchomon
//          Bit2 = Crabmon
//          Bit3 = Floramon
//          Bit4 = Gizamon
//          Bit5 = Lalamon
//          Bit6 = Aruraumon
//          Bit7 = ToyAgumon (Black)
// $13A10A: Bit0 = Tsukaimon
//          Bit1 = PawnChessmon (Black)
//          Bit2 = Gaomon
//          Bit3 = DotFalcomon
//          Bit4 = Kudamon
//          Bit5 = Kamemon
//          Bit6 = Dracmon
//          Bit7 = PawnChessmon (White)
// $13A10B:	Bit0 = DotAgumon
//          Bit1 = Kunemon
//          Bit2 = Mushroomon
//          Bit3 = Solarmon
//          Bit4 = Candlemon
//          Bit5 = Kokuwamon
//          Bit6 = DoKunemon
//          Bit7 = Coronamon
// $13A10C:	Bit0 = Lunamon
// $13A10D:	Bit3 = Mekanorimon
//          Bit4 = Greymon
//          Bit5 = Tyrannomon
//          Bit6 = Devimon
//          Bit7 = Airdramon
// $13A10E:	Bit0 = Seadramon
//          Bit1 = Numemon
//          Bit2 = Kabuterimon
//          Bit3 = Garurumon
//          Bit4 = Angemon
//          Bit5 = Veggiemon
//          Bit6 = Ogremon
//          Bit7 = Bakemon
// $13A10F:	Bit0 = Sukamon
//          Bit1 = Kokatorimon
//          Bit2 = Leomon
//          Bit3 = Kuwagamon
//          Bit4 = Raremon
//          Bit6 = Gekomon
//          Bit7 = Gatomon
// $13A110:	Bit0 = Wizardmon
//          Bit1 = Togemon
//          Bit2 = Guardromon
//          Bit3 = ExVeemon
//          Bit4 = Stingmon
//          Bit5 = Birdramon
//          Bit6 = Ankylomon
//          Bit7 = Gargomon
// $13A111:	Bit0 = Growlmon
//          Bit1 = Kyubimon
//          Bit2 = Kurisarimon
//          Bit3 = Seasarmon
//          Bit4 = Vilemon
//          Bit5 = Aquilamon
//          Bit6 = Roachmon
//          Bit7 = Dinohumon
// $13A112:	Bit0 = Hookmon
//          Bit1 = Grizzmon
//          Bit2 = Dorugamon
//          Bit3 = Reptiledramon
//          Bit4 = Apemon
//          Bit5 = Starmon
//          Bit6 = BomberNanimon
//          Bit7 = Kiwimon
// $13A113:	Bit0 = Unimon
//          Bit1 = Sorcerymon
//          Bit2 = DarkTyrannomon
//          Bit3 = Akatorimon
//          Bit4 = PlatinumSukamon
//          Bit5 = Ikkakumon
//          Bit6 = Minotarumon
//          Bit7 = Icemon
// $13A114:	Bit0 = DarkLizardmon
//          Bit1 = Flarerizamon
//          Bit2 = GeoGreymon
//          Bit3 = Gaogamon
//          Bit4 = Diatrymon
//          Bit5 = Reppamon
//          Bit6 = Sunflowmon
//          Bit7 = Gawappamon
// $13A115:	Bit0 = Sangloupmon
//          Bit1 = Peckmon
//          Bit2 = Drimogemon
//          Bit3 = NiseDrimogemon
//          Bit4 = MoriShellmon
//          Bit5 = Wendigomon
//          Bit6 = Fugamon
//          Bit7 = Tsuchidarumon
// $13A116:	Bit0 = Tortamon
//          Bit1 = Ebidramon
//          Bit2 = Octomon
//          Bit3 = Gesomon
//          Bit4 = Coelamon
//          Bit5 = Shellmon
//          Bit6 = Frigimon
//          Bit7 = Geremon
// $13A117:	Bit0 = Hyogamon
//          Bit1 = KaratsukiNumemon
//          Bit2 = IceDevimon
//          Bit3 = Dolphmon
//          Bit4 = Saberdramon
//          Bit5 = Woodmon
//          Bit6 = Snimon
//          Bit7 = Flymon
// $13A118:	Bit0 = Yanmamon
//          Bit1 = SandYanmamon
//          Bit2 = RedVeggiemon
//          Bit3 = Weedmon
//          Bit4 = Ninjamon
//          Bit5 = Kogamon
//          Bit6 = Omekamon
//          Bit7 = Clockmon
// $13A119:	Bit0 = Thunderballmon
//          Bit1 = Tankmon
//          Bit2 = Nanimon
//          Bit3 = Golemon
//          Bit4 = Monochromon
//          Bit5 = Mojyamon
//          Bit6 = JungleMojyamon
//          Bit7 = Deputymon
// $13A11A:	Bit0 = Centarumon
//          Bit1 = Devidramon
//          Bit2 = Dokugumon
//          Bit3 = Veedramon
//          Bit4 = Musyamon
//          Bit5 = KnightChessmon (White)
//          Bit6 = KnightChessmon (Black)
//          Bit7 = Firamon
// $13A11B:	Bit0 = Lekismon
// $13A11C:	Bit3 = Volcanomon
//          Bit4 = MetalGreymon
//          Bit5 = Monzaemon
//          Bit6 = SkullGreymon
//          Bit7 = MetalMamemon
// $13A11D:	Bit0 = Andromon
//          Bit1 = Etemon
//          Bit2 = Megadramon
//          Bit3 = Piximon
//          Bit4 = Digitamamon
//          Bit5 = Mammothmon
//          Bit6 = MegaKabuterimon (Blue)
//          Bit7 = Okuwamon
// $13A11E:	Bit0 = ShogunGekomon
//          Bit1 = Angewomon
//          Bit2 = Tylomon
//          Bit3 = Scorpiomon
//          Bit4 = MegaSeadramon
//          Bit5 = Dragomon
//          Bit6 = WereGarurumon (Black)
//          Bit7 = WereGarurumon (Blue)
// $13A11F:	Bit0 = Myotismon
//          Bit1 = LadyDevimon
//          Bit2 = Garudamon
//          Bit3 = Blossomon
//          Bit4 = Lillymon
//          Bit5 = MegaKabuterimon (Red)
//          Bit6 = Datamon
//          Bit7 = Cyberdramon
// $13A120:	Bit0 = MagnaAngemon
//          Bit1 = Paildramon
//          Bit2 = Dinobeemon
//          Bit3 = Antylamon
//          Bit4 = Arukenimon
//          Bit5 = Mummymon
//          Bit6 = WarGrowlmon
//          Bit7 = Rapidmon
// $13A121: Bit0 = Taomon
//          Bit1 = Parrotmon
//          Bit2 = Infermon
//          Bit3 = BlackRapidmon
//          Bit4 = Pandamon
//          Bit5 = MarineDevimon
//          Bit6 = Karatenmon
//          Bit7 = Kyukimon
// $13A122:	Bit0 = Sinduramon
//          Bit1 = Pipismon
//          Bit2 = DoruGreymon
//          Bit3 = Divermon
//          Bit4 = Kimeramon
//          Bit5 = Triceramon
//          Bit6 = Deramon
//          Bit7 = Silphymon
// $13A123:	Bit0 = SuperStarmon
//          Bit1 = BlackWarGrowlmon
//          Bit2 = Zudomon
//          Bit3 = Whamon
//          Bit4 = Mamemon
//          Bit5 = Toucanmon
//          Bit6 = Owlmon
//          Bit7 = Meteormon
// $13A124:	Bit0 = Gigadramon
//          Bit1 = RiseGreymon
//          Bit2 = MachGaogamon
//          Bit4 = Tyilinmon
//          Bit5 = Lilamon
//          Bit6 = Shadramon
//          Bit7 = Matadormon
// $13A125:	Bit0 = Kabukimon
//          Bit1 = Cherrymon
//          Bit2 = Garbagemon
//          Bit3 = Lucemon (Chaos Mode)
//          Bit4 = Mametyramon
//          Bit5 = Giromon
//          Bit6 = Vademon
//          Bit7 = MetalTyrannomon
// $13A126:	Bit0 = Tekkamon
//          Bit1 = BigMamemon
//          Bit2 = EXTyrannomon
//          Bit3 = Vermilimon
//          Bit4 = Phantomon
//          Bit5 = Vajramon
//          Bit6 = AeroVeedramon
//          Bit7 = GrapLeomon
// $13A127:	Bit0 = Knightmon
//          Bit1 = Brachiomon
//          Bit2 = Allomon
//          Bit3 = Lynxmon
//          Bit4 = Shaujinmon
//          Bit5 = Yatagaramon
//          Bit6 = BishopChessmon
//          Bit7 = RookChessmon
// $13A128:	Bit0 = Flaremon
//          Bit1 = Crescemon
//          Bit2 = Flamedramon
//          Bit3 = Magnamon
//          Bit4 = Prairiemon
//          Bit5 = Kongoumon
//          Bit6 = Seahomon
//          Bit7 = Shurimon
// $13A129:	Bit0 = Kenkimon
//          Bit1 = Ponchomon
//          Bit2 = Argomon (Ultimate)
//          Bit3 = Shakkoumon
// $13A12A:	Bit4 = Lampmon
//          Bit5 = HerculesKabuterimon
//          Bit6 = SaberLeomon
//          Bit7 = MetalEtemon
// $13A12B:	Bit0 = MarineAngemon
//          Bit1 = GigaSeadramon
//          Bit2 = Piedmon
//          Bit3 = Creepymon
//          Bit4 = Phoenixmon
//          Bit5 = Puppetmon
//          Bit6 = Rosemon
//          Bit7 = WarGreymon
// $13A12C:	Bit0 = MetalGarurumon
//          Bit1 = Machinedramon
//          Bit2 = VenomMyotismon
//          Bit3 = Omnimon
//          Bit4 = Imperialdramon (Dragon Mode)
//          Bit5 = Imperialdramon (Fighter Mode)
//          Bit6 = Imperialdramon (Paladin Mode)
//          Bit7 = Ghoulmon
// $13A12D:	Bit0 = Seraphimon
//          Bit1 = HiAndromon
//          Bit2 = Devitamamon
//          Bit3 = Cherubimon (Good)
//          Bit4 = Cherubimon (Evil)
//          Bit5 = Gallantmon
//          Bit6 = Gallantmon (Crimson Mode)
//          Bit7 = MegaGargomon
// $13A12E:	Bit0 = Sakuyamon
//          Bit1 = Diaboromon
//          Bit2 = Neptunmon
//          Bit3 = Pukumon
//          Bit4 = Gryphonmon
//          Bit5 = Preciomon
//          Bit6 = Armageddemon
//          Bit7 = MaloMyotismon
// $13A12F:	Bit0 = Imperialdramon (Dragon Mode) (Black)
//          Bit1 = Boltmon
//          Bit2 = PrinceMamemon
//          Bit3 = Ophanimon
//          Bit4 = Zanbamon
//          Bit5 = BlackMegaGargomon
//          Bit6 = Jijimon
//          Bit7 = Babamon
// $13A130:	Bit0 = Anubismon
//          Bit1 = Parasimon
//          Bit2 = Cannondramon
//          Bit3 = SlashAngemon
//          Bit4 = Eaglemon
//          Bit5 = Dorugoramon
//          Bit6 = Beelzemon
//          Bit7 = BantyoLeomon
// $13A131:	Bit0 = Darkdramon
//          Bit1 = Apocalymon
//          Bit2 = Ebemon
//          Bit3 = Gulfmon
//          Bit4 = Goldramon
//          Bit5 = ZeedMillenniumon
//          Bit6 = Ghoulmon (Black)
//          Bit7 = Kuzuhamon
// $13A132:	Bit0 = ChaosGallantmon
//          Bit1 = MetalSeadramon
//          Bit2 = Valkyrimon
//          Bit3 = Justimon
//          Bit4 = Vikemon
//          Bit5 = BlackWarGreymon
//          Bit6 = SkullMammothmon
//          Bit7 = GranKuwagamon
// $13A133:	Bit0 = Pharaohmon
//          Bit1 = Susanoomon
//          Bit2 = Alphamon
//          Bit3 = Magnadramon
//          Bit4 = Millenniumon
//          Bit5 = MoonMillenniumon
//          Bit6 = Megidramon
//          Bit7 = Sleipmon
// $13A134:	Bit0 = ShineGreymon
//          Bit1 = MirageGaogamon
//          Bit2 = JumboGamemon
//          Bit3 = Ravemon
//          Bit4 = QueenChessmon
//          Bit5 = KingChessmon
//          Bit6 = Chronomon (Holy Mode)
//          Bit7 = Lilithmon
// $13A135:	Bit0 = Varodurumon
//          Bit1 = Apollomon
//          Bit2 = Dianamon
//          Bit3 = ShineGreymon (Burst Mode)
//          Bit4 = ShineGreymon (Ruin Mode)
//          Bit5 = MirageGaogamon (Burst Mode)
//          Bit6 = Ravemon (Burst Mode)
//          Bit7 = Lotosmon
// $13A136:	Bit0 = DotShineGreymon
//          Bit1 = DotMirageGaogamon
//          Bit2 = Beelzemon (Burst Mode)
//          Bit3 = Rosemon (Burst Mode)
//          Bit4 = Argomon (Mega)
//          Bit5 = Minervamon
//          Bit6 = Duftmon
//          Bit7 = Chaosmon
digimon_list = {
    "Chicchimon":{"obtained_address":bit0(0x13A0C2), "seen_address":bit4(0x13A100), "obtainable":false},
    "Koromon":{"obtained_address":bit1(0x13A0C2), "seen_address":bit5(0x13A100), "obtainable":true},
    "Tsunomon":{"obtained_address":bit2(0x13A0C2), "seen_address":bit6(0x13A100), "obtainable":true},
    "Poyomon":{"obtained_address":bit3(0x13A0C2), "seen_address":bit7(0x13A100), "obtainable":true},
    "Tokomon":{"obtained_address":bit4(0x13A0C2), "seen_address":bit0(0x13A101), "obtainable":true},
    "Tanemon":{"obtained_address":bit5(0x13A0C2), "seen_address":bit1(0x13A101), "obtainable":true},
    "Pagumon":{"obtained_address":bit6(0x13A0C2), "seen_address":bit2(0x13A101), "obtainable":true},
    "Kapurimon":{"obtained_address":bit7(0x13A0C2), "seen_address":bit3(0x13A101), "obtainable":true},
    "Kuramon":{"obtained_address":bit0(0x13A0C3), "seen_address":bit4(0x13A101), "obtainable":false},
    "Puttimon":{"obtained_address":bit1(0x13A0C3), "seen_address":bit5(0x13A101), "obtainable":true},
    "Chibomon":{"obtained_address":bit2(0x13A0C3), "seen_address":bit6(0x13A101), "obtainable":true},
    "Dorimon":{"obtained_address":bit3(0x13A0C3), "seen_address":bit7(0x13A101), "obtainable":true},
    "Calumon":{"obtained_address":bit4(0x13A0C3), "seen_address":bit0(0x13A102), "obtainable":false},
    "Gigimon":{"obtained_address":bit5(0x13A0C3), "seen_address":bit1(0x13A102), "obtainable":true},
    "Gummymon":{"obtained_address":bit6(0x13A0C3), "seen_address":bit2(0x13A102), "obtainable":true},
    "Kokomon":{"obtained_address":bit7(0x13A0C3), "seen_address":bit3(0x13A102), "obtainable":true},
    "Tsumemon":{"obtained_address":bit0(0x13A0C4), "seen_address":bit4(0x13A102), "obtainable":false},
    "Minomon":{"obtained_address":bit1(0x13A0C4), "seen_address":bit5(0x13A102), "obtainable":true},
    "Wanyamon":{"obtained_address":bit2(0x13A0C4), "seen_address":bit6(0x13A102), "obtainable":true},
    "Budmon":{"obtained_address":bit3(0x13A0C4), "seen_address":bit7(0x13A102), "obtainable":true},
    "Botamon":{"obtained_address":bit4(0x13A0C4), "seen_address":bit0(0x13A103), "obtainable":true},
    "Sunmon":{"obtained_address":bit5(0x13A0C4), "seen_address":bit1(0x13A103), "obtainable":true},
    "Moonmon":{"obtained_address":bit6(0x13A0C4), "seen_address":bit2(0x13A103), "obtainable":false},

    "Monodramon":{"obtained_address":bit0(0x13A0C6), "seen_address":bit4(0x13A104), "obtainable":true},
    "Agumon":{"obtained_address":bit1(0x13A0C6), "seen_address":bit5(0x13A104), "obtainable":true},
    "Veemon":{"obtained_address":bit2(0x13A0C6), "seen_address":bit6(0x13A104), "obtainable":true},
    "Guilmon":{"obtained_address":bit3(0x13A0C6), "seen_address":bit7(0x13A104), "obtainable":true},
    "Dorumon":{"obtained_address":bit4(0x13A0C6), "seen_address":bit0(0x13A105), "obtainable":true},
    "Betamon":{"obtained_address":bit5(0x13A0C6), "seen_address":bit1(0x13A105), "obtainable":true},
    "Gabumon":{"obtained_address":bit6(0x13A0C6), "seen_address":bit2(0x13A105), "obtainable":true},
    "Patamon":{"obtained_address":bit7(0x13A0C6), "seen_address":bit3(0x13A105), "obtainable":true},
    "Biyomon":{"obtained_address":bit0(0x13A0C7), "seen_address":bit4(0x13A105), "obtainable":true},
    "Palmon":{"obtained_address":bit1(0x13A0C7), "seen_address":bit5(0x13A105), "obtainable":true},
    "Tentomon":{"obtained_address":bit2(0x13A0C7), "seen_address":bit6(0x13A105), "obtainable":true},
    "Gotsumon":{"obtained_address":bit3(0x13A0C7), "seen_address":bit7(0x13A105), "obtainable":true},
    "Otamamon":{"obtained_address":bit4(0x13A0C7), "seen_address":bit0(0x13A106), "obtainable":true},
    "Gomamon":{"obtained_address":bit5(0x13A0C7), "seen_address":bit1(0x13A106), "obtainable":true},
    "Tapirmon":{"obtained_address":bit6(0x13A0C7), "seen_address":bit2(0x13A106), "obtainable":true},
    "DemiDevimon":{"obtained_address":bit7(0x13A0C7), "seen_address":bit3(0x13A106), "obtainable":true},
    "ToyAgumon":{"obtained_address":bit0(0x13A0C8), "seen_address":bit4(0x13A106), "obtainable":true},
    "Hagurumon":{"obtained_address":bit1(0x13A0C8), "seen_address":bit5(0x13A106), "obtainable":true},
    "Salamon":{"obtained_address":bit2(0x13A0C8), "seen_address":bit6(0x13A106), "obtainable":true},
    "Wormmon":{"obtained_address":bit3(0x13A0C8), "seen_address":bit7(0x13A106), "obtainable":true},
    "Hawkmon":{"obtained_address":bit4(0x13A0C8), "seen_address":bit0(0x13A107), "obtainable":true},
    "Armadillomon":{"obtained_address":bit5(0x13A0C8), "seen_address":bit1(0x13A107), "obtainable":true},
    "Terriermon":{"obtained_address":bit6(0x13A0C8), "seen_address":bit2(0x13A107), "obtainable":true},
    "Lopmon":{"obtained_address":bit7(0x13A0C8), "seen_address":bit3(0x13A107), "obtainable":true},
    "Renamon":{"obtained_address":bit0(0x13A0C9), "seen_address":bit4(0x13A107), "obtainable":true},
    "Impmon":{"obtained_address":bit1(0x13A0C9), "seen_address":bit5(0x13A107), "obtainable":true},
    "Keramon":{"obtained_address":bit2(0x13A0C9), "seen_address":bit6(0x13A107), "obtainable":false},
    "Falcomon":{"obtained_address":bit3(0x13A0C9), "seen_address":bit7(0x13A107), "obtainable":true},
    "Penguinmon":{"obtained_address":bit4(0x13A0C9), "seen_address":bit0(0x13A108), "obtainable":true},
    "Goburimon":{"obtained_address":bit5(0x13A0C9), "seen_address":bit1(0x13A108), "obtainable":true},
    "Kumamon":{"obtained_address":bit6(0x13A0C9), "seen_address":bit2(0x13A108), "obtainable":true},
    "Kotemon":{"obtained_address":bit7(0x13A0C9), "seen_address":bit3(0x13A108), "obtainable":true},
    "Shamamon":{"obtained_address":bit0(0x13A0CA), "seen_address":bit4(0x13A108), "obtainable":true},
    "SnowGoblimon":{"obtained_address":bit1(0x13A0CA), "seen_address":bit5(0x13A108), "obtainable":true},
    "Syakomon":{"obtained_address":bit2(0x13A0CA), "seen_address":bit6(0x13A108), "obtainable":true},
    "SnowAgumon":{"obtained_address":bit3(0x13A0CA), "seen_address":bit7(0x13A108), "obtainable":true},
    "BlackAgumon":{"obtained_address":bit4(0x13A0CA), "seen_address":bit0(0x13A109), "obtainable":true},
    "Muchomon":{"obtained_address":bit5(0x13A0CA), "seen_address":bit1(0x13A109), "obtainable":true},
    "Crabmon":{"obtained_address":bit6(0x13A0CA), "seen_address":bit2(0x13A109), "obtainable":true},
    "Floramon":{"obtained_address":bit7(0x13A0CA), "seen_address":bit3(0x13A109), "obtainable":true},
    "Gizamon":{"obtained_address":bit0(0x13A0CB), "seen_address":bit4(0x13A109), "obtainable":true},
    "Lalamon":{"obtained_address":bit1(0x13A0CB), "seen_address":bit5(0x13A109), "obtainable":true},
    "Aruraumon":{"obtained_address":bit2(0x13A0CB), "seen_address":bit6(0x13A109), "obtainable":true},
    "ToyAgumonB":{"obtained_address":bit3(0x13A0CB), "seen_address":bit7(0x13A109), "obtainable":true},
    "Tsukaimon":{"obtained_address":bit4(0x13A0CB), "seen_address":bit0(0x13A10A), "obtainable":true},
    "PawnChessmonB":{"obtained_address":bit5(0x13A0CB), "seen_address":bit1(0x13A10A), "obtainable":true},
    "Gaomon":{"obtained_address":bit6(0x13A0CB), "seen_address":bit2(0x13A10A), "obtainable":true},
    "DotFalcomon":{"obtained_address":bit7(0x13A0CB), "seen_address":bit3(0x13A10A), "obtainable":false},
    "Kudamon":{"obtained_address":bit0(0x13A0CC), "seen_address":bit4(0x13A10A), "obtainable":true},
    "Kamemon":{"obtained_address":bit1(0x13A0CC), "seen_address":bit5(0x13A10A), "obtainable":true},
    "Dracmon":{"obtained_address":bit2(0x13A0CC), "seen_address":bit6(0x13A10A), "obtainable":true},
    "PawnChessmonW":{"obtained_address":bit3(0x13A0CC), "seen_address":bit7(0x13A10A), "obtainable":true},
    "DotAgumon":{"obtained_address":bit4(0x13A0CC), "seen_address":bit0(0x13A10B), "obtainable":true},
    "Kunemon":{"obtained_address":bit5(0x13A0CC), "seen_address":bit1(0x13A10B), "obtainable":true},
    "Mushroomon":{"obtained_address":bit6(0x13A0CC), "seen_address":bit2(0x13A10B), "obtainable":true},
    "Solarmon":{"obtained_address":bit7(0x13A0CC), "seen_address":bit3(0x13A10B), "obtainable":true},
    "Candlemon":{"obtained_address":bit0(0x13A0CD), "seen_address":bit4(0x13A10B), "obtainable":true},
    "Kokuwamon":{"obtained_address":bit1(0x13A0CD), "seen_address":bit5(0x13A10B), "obtainable":true},
    "DoKunemon":{"obtained_address":bit2(0x13A0CD), "seen_address":bit6(0x13A10B), "obtainable":true},
    "Coronamon":{"obtained_address":bit3(0x13A0CD), "seen_address":bit7(0x13A10B), "obtainable":true},
    "Lunamon":{"obtained_address":bit4(0x13A0CD), "seen_address":bit0(0x13A10C), "obtainable":false},

    "Mekanorimon":{"obtained_address":bit7(0x13A0CE), "seen_address":bit3(0x13A10D), "obtainable":true},
    "Greymon":{"obtained_address":bit0(0x13A0CF), "seen_address":bit4(0x13A10D), "obtainable":true},
    "Tyrannomon":{"obtained_address":bit1(0x13A0CF), "seen_address":bit5(0x13A10D), "obtainable":true},
    "Devimon":{"obtained_address":bit2(0x13A0CF), "seen_address":bit6(0x13A10D), "obtainable":true},
    "Airdramon":{"obtained_address":bit3(0x13A0CF), "seen_address":bit7(0x13A10D), "obtainable":true},
    "Seadramon":{"obtained_address":bit4(0x13A0CF), "seen_address":bit0(0x13A10E), "obtainable":true},
    "Numemon":{"obtained_address":bit5(0x13A0CF), "seen_address":bit1(0x13A10E), "obtainable":true},
    "Kabuterimon":{"obtained_address":bit6(0x13A0CF), "seen_address":bit2(0x13A10E), "obtainable":true},
    "Garurumon":{"obtained_address":bit7(0x13A0CF), "seen_address":bit3(0x13A10E), "obtainable":true},
    "Angemon":{"obtained_address":bit0(0x13A0D0), "seen_address":bit4(0x13A10E), "obtainable":true},
    "Veggiemon":{"obtained_address":bit1(0x13A0D0), "seen_address":bit5(0x13A10E), "obtainable":true},
    "Ogremon":{"obtained_address":bit2(0x13A0D0), "seen_address":bit6(0x13A10E), "obtainable":true},
    "Bakemon":{"obtained_address":bit3(0x13A0D0), "seen_address":bit7(0x13A10E), "obtainable":true},
    "Sukamon":{"obtained_address":bit4(0x13A0D0), "seen_address":bit0(0x13A10F), "obtainable":true},
    "Kokatorimon":{"obtained_address":bit5(0x13A0D0), "seen_address":bit1(0x13A10F), "obtainable":true},
    "Leomon":{"obtained_address":bit6(0x13A0D0), "seen_address":bit2(0x13A10F), "obtainable":true},
    "Kuwagamon":{"obtained_address":bit7(0x13A0D0), "seen_address":bit3(0x13A10F), "obtainable":true},
    "Raremon":{"obtained_address":bit0(0x13A0D1), "seen_address":bit4(0x13A10F), "obtainable":true},
    "Gekomon":{"obtained_address":bit2(0x13A0D1), "seen_address":bit6(0x13A10F), "obtainable":true},
    "Gatomon":{"obtained_address":bit3(0x13A0D1), "seen_address":bit7(0x13A10F), "obtainable":true},
    "Wizardmon":{"obtained_address":bit4(0x13A0D1), "seen_address":bit0(0x13A110), "obtainable":true},
    "Togemon":{"obtained_address":bit5(0x13A0D1), "seen_address":bit1(0x13A110), "obtainable":true},
    "Guardromon":{"obtained_address":bit6(0x13A0D1), "seen_address":bit2(0x13A110), "obtainable":true},
    "ExVeemon":{"obtained_address":bit7(0x13A0D1), "seen_address":bit3(0x13A110), "obtainable":true},
    "Stingmon":{"obtained_address":bit0(0x13A0D2), "seen_address":bit4(0x13A110), "obtainable":true},
    "Birdramon":{"obtained_address":bit1(0x13A0D2), "seen_address":bit5(0x13A110), "obtainable":true},
    "Ankylomon":{"obtained_address":bit2(0x13A0D2), "seen_address":bit6(0x13A110), "obtainable":true},
    "Gargomon":{"obtained_address":bit3(0x13A0D2), "seen_address":bit7(0x13A110), "obtainable":true},
    "Growlmon":{"obtained_address":bit4(0x13A0D2), "seen_address":bit0(0x13A111), "obtainable":true},
    "Kyubimon":{"obtained_address":bit5(0x13A0D2), "seen_address":bit1(0x13A111), "obtainable":true},
    "Kurisarimon":{"obtained_address":bit6(0x13A0D2), "seen_address":bit2(0x13A111), "obtainable":false},
    "Seasarmon":{"obtained_address":bit7(0x13A0D2), "seen_address":bit3(0x13A111), "obtainable":true},
    "Vilemon":{"obtained_address":bit0(0x13A0D3), "seen_address":bit4(0x13A111), "obtainable":true},
    "Aquilamon":{"obtained_address":bit1(0x13A0D3), "seen_address":bit5(0x13A111), "obtainable":true},
    "Roachmon":{"obtained_address":bit2(0x13A0D3), "seen_address":bit6(0x13A111), "obtainable":true},
    "Dinohumon":{"obtained_address":bit3(0x13A0D3), "seen_address":bit7(0x13A111), "obtainable":true},
    "Hookmon":{"obtained_address":bit4(0x13A0D3), "seen_address":bit0(0x13A112), "obtainable":true},
    "Grizzmon":{"obtained_address":bit5(0x13A0D3), "seen_address":bit1(0x13A112), "obtainable":true},
    "Dorugamon":{"obtained_address":bit6(0x13A0D3), "seen_address":bit2(0x13A112), "obtainable":true},
    "Reptiledramon":{"obtained_address":bit7(0x13A0D3), "seen_address":bit3(0x13A112), "obtainable":true},
    "Apemon":{"obtained_address":bit0(0x13A0D4), "seen_address":bit4(0x13A112), "obtainable":true},
    "Starmon":{"obtained_address":bit1(0x13A0D4), "seen_address":bit5(0x13A112), "obtainable":true},
    "BomberNanimon":{"obtained_address":bit2(0x13A0D4), "seen_address":bit6(0x13A112), "obtainable":true},
    "Kiwimon":{"obtained_address":bit3(0x13A0D4), "seen_address":bit7(0x13A112), "obtainable":true},
    "Unimon":{"obtained_address":bit4(0x13A0D4), "seen_address":bit0(0x13A113), "obtainable":true},
    "Sorcerymon":{"obtained_address":bit5(0x13A0D4), "seen_address":bit1(0x13A113), "obtainable":true},
    "DarkTyrannomon":{"obtained_address":bit6(0x13A0D4), "seen_address":bit2(0x13A113), "obtainable":true},
    "Akatorimon":{"obtained_address":bit7(0x13A0D4), "seen_address":bit3(0x13A113), "obtainable":true},
    "PlatinumSukamon":{"obtained_address":bit0(0x13A0D5), "seen_address":bit4(0x13A113), "obtainable":true},
    "Ikkakumon":{"obtained_address":bit1(0x13A0D5), "seen_address":bit5(0x13A113), "obtainable":true},
    "Minotarumon":{"obtained_address":bit2(0x13A0D5), "seen_address":bit6(0x13A113), "obtainable":true},
    "Icemon":{"obtained_address":bit3(0x13A0D5), "seen_address":bit7(0x13A113), "obtainable":true},
    "DarkLizardmon":{"obtained_address":bit4(0x13A0D5), "seen_address":bit0(0x13A114), "obtainable":true},
    "Flarerizamon":{"obtained_address":bit5(0x13A0D5), "seen_address":bit1(0x13A114), "obtainable":true},
    "GeoGreymon":{"obtained_address":bit6(0x13A0D5), "seen_address":bit2(0x13A114), "obtainable":true},
    "Gaogamon":{"obtained_address":bit7(0x13A0D5), "seen_address":bit3(0x13A114), "obtainable":true},
    "Diatrymon":{"obtained_address":bit0(0x13A0D6), "seen_address":bit4(0x13A114), "obtainable":true},
    "Reppamon":{"obtained_address":bit1(0x13A0D6), "seen_address":bit5(0x13A114), "obtainable":true},
    "Sunflowmon":{"obtained_address":bit2(0x13A0D6), "seen_address":bit6(0x13A114), "obtainable":true},
    "Gawappamon":{"obtained_address":bit3(0x13A0D6), "seen_address":bit7(0x13A114), "obtainable":true},
    "Sangloupmon":{"obtained_address":bit4(0x13A0D6), "seen_address":bit0(0x13A115), "obtainable":true},
    "Peckmon":{"obtained_address":bit5(0x13A0D6), "seen_address":bit1(0x13A115), "obtainable":true},
    "Drimogemon":{"obtained_address":bit6(0x13A0D6), "seen_address":bit2(0x13A115), "obtainable":true},
    "NiseDrimogemon":{"obtained_address":bit7(0x13A0D6), "seen_address":bit3(0x13A115), "obtainable":true},
    "MoriShellmon":{"obtained_address":bit0(0x13A0D7), "seen_address":bit4(0x13A115), "obtainable":true},
    "Wendigomon":{"obtained_address":bit1(0x13A0D7), "seen_address":bit5(0x13A115), "obtainable":true},
    "Fugamon":{"obtained_address":bit2(0x13A0D7), "seen_address":bit6(0x13A115), "obtainable":true},
    "Tsuchidarumon":{"obtained_address":bit3(0x13A0D7), "seen_address":bit7(0x13A115), "obtainable":false},
    "Tortamon":{"obtained_address":bit4(0x13A0D7), "seen_address":bit0(0x13A116), "obtainable":true},
    "Ebidramon":{"obtained_address":bit5(0x13A0D7), "seen_address":bit1(0x13A116), "obtainable":true},
    "Octomon":{"obtained_address":bit6(0x13A0D7), "seen_address":bit2(0x13A116), "obtainable":true},
    "Gesomon":{"obtained_address":bit7(0x13A0D7), "seen_address":bit3(0x13A116), "obtainable":true},
    "Coelamon":{"obtained_address":bit0(0x13A0D8), "seen_address":bit4(0x13A116), "obtainable":true},
    "Shellmon":{"obtained_address":bit1(0x13A0D8), "seen_address":bit5(0x13A116), "obtainable":true},
    "Frigimon":{"obtained_address":bit2(0x13A0D8), "seen_address":bit6(0x13A116), "obtainable":true},
    "Geremon":{"obtained_address":bit3(0x13A0D8), "seen_address":bit7(0x13A116), "obtainable":true},
    "Hyogamon":{"obtained_address":bit4(0x13A0D8), "seen_address":bit0(0x13A117), "obtainable":true},
    "KaratsukiNumemon":{"obtained_address":bit5(0x13A0D8), "seen_address":bit1(0x13A117), "obtainable":true},
    "IceDevimon":{"obtained_address":bit6(0x13A0D8), "seen_address":bit2(0x13A117), "obtainable":true},
    "Dolphmon":{"obtained_address":bit7(0x13A0D8), "seen_address":bit3(0x13A117), "obtainable":true},
    "Saberdramon":{"obtained_address":bit0(0x13A0D9), "seen_address":bit4(0x13A117), "obtainable":true},
    "Woodmon":{"obtained_address":bit1(0x13A0D9), "seen_address":bit5(0x13A117), "obtainable":true},
    "Snimon":{"obtained_address":bit2(0x13A0D9), "seen_address":bit6(0x13A117), "obtainable":true},
    "Flymon":{"obtained_address":bit3(0x13A0D9), "seen_address":bit7(0x13A117), "obtainable":true},
    "Yanmamon":{"obtained_address":bit4(0x13A0D9), "seen_address":bit0(0x13A118), "obtainable":true},
    "SandYanmamon":{"obtained_address":bit5(0x13A0D9), "seen_address":bit1(0x13A118), "obtainable":true},
    "RedVeggiemon":{"obtained_address":bit6(0x13A0D9), "seen_address":bit2(0x13A118), "obtainable":true},
    "Weedmon":{"obtained_address":bit7(0x13A0D9), "seen_address":bit3(0x13A118), "obtainable":true},
    "Ninjamon":{"obtained_address":bit0(0x13A0DA), "seen_address":bit4(0x13A118), "obtainable":true},
    "Kogamon":{"obtained_address":bit1(0x13A0DA), "seen_address":bit5(0x13A118), "obtainable":true},
    "Omekamon":{"obtained_address":bit2(0x13A0DA), "seen_address":bit6(0x13A118), "obtainable":true},
    "Clockmon":{"obtained_address":bit3(0x13A0DA), "seen_address":bit7(0x13A118), "obtainable":true},
    "Thunderballmon":{"obtained_address":bit4(0x13A0DA), "seen_address":bit0(0x13A119), "obtainable":true},
    "Tankmon":{"obtained_address":bit5(0x13A0DA), "seen_address":bit1(0x13A119), "obtainable":true},
    "Nanimon":{"obtained_address":bit6(0x13A0DA), "seen_address":bit2(0x13A119), "obtainable":true},
    "Golemon":{"obtained_address":bit7(0x13A0DA), "seen_address":bit3(0x13A119), "obtainable":true},
    "Monochromon":{"obtained_address":bit0(0x13A0DB), "seen_address":bit4(0x13A119), "obtainable":true},
    "Mojyamon":{"obtained_address":bit1(0x13A0DB), "seen_address":bit5(0x13A119), "obtainable":true},
    "JungleMojyamon":{"obtained_address":bit2(0x13A0DB), "seen_address":bit6(0x13A119), "obtainable":true},
    "Deputymon":{"obtained_address":bit3(0x13A0DB), "seen_address":bit7(0x13A119), "obtainable":true},
    "Centarumon":{"obtained_address":bit4(0x13A0DB), "seen_address":bit0(0x13A11A), "obtainable":true},
    "Devidramon":{"obtained_address":bit5(0x13A0DB), "seen_address":bit1(0x13A11A), "obtainable":true},
    "Dokugumon":{"obtained_address":bit6(0x13A0DB), "seen_address":bit2(0x13A11A), "obtainable":true},
    "Veedramon":{"obtained_address":bit7(0x13A0DB), "seen_address":bit3(0x13A11A), "obtainable":true},
    "Musyamon":{"obtained_address":bit0(0x13A0DC), "seen_address":bit4(0x13A11A), "obtainable":true},
    "KnightChessmonW":{"obtained_address":bit1(0x13A0DC), "seen_address":bit5(0x13A11A), "obtainable":true},
    "KnightChessmonB":{"obtained_address":bit2(0x13A0DC), "seen_address":bit6(0x13A11A), "obtainable":true},
    "Firamon":{"obtained_address":bit3(0x13A0DC), "seen_address":bit7(0x13A11A), "obtainable":true},
    "Lekismon":{"obtained_address":bit4(0x13A0DC), "seen_address":bit0(0x13A11B), "obtainable":false},

    "Volcanomon":{"obtained_address":bit7(0x13A0DD), "seen_address":bit3(0x13A11C), "obtainable":true},
    "MetalGreymon":{"obtained_address":bit0(0x13A0DE), "seen_address":bit4(0x13A11C), "obtainable":true},
    "Monzaemon":{"obtained_address":bit1(0x13A0DE), "seen_address":bit5(0x13A11C), "obtainable":true},
    "SkullGreymon":{"obtained_address":bit2(0x13A0DE), "seen_address":bit6(0x13A11C), "obtainable":false},
    "MetalMamemon":{"obtained_address":bit3(0x13A0DE), "seen_address":bit7(0x13A11C), "obtainable":true},
    "Andromon":{"obtained_address":bit4(0x13A0DE), "seen_address":bit0(0x13A11D), "obtainable":true},
    "Etemon":{"obtained_address":bit5(0x13A0DE), "seen_address":bit1(0x13A11D), "obtainable":true},
    "Megadramon":{"obtained_address":bit6(0x13A0DE), "seen_address":bit2(0x13A11D), "obtainable":true},
    "Piximon":{"obtained_address":bit7(0x13A0DE), "seen_address":bit3(0x13A11D), "obtainable":true},
    "Digitamamon":{"obtained_address":bit0(0x13A0DF), "seen_address":bit4(0x13A11D), "obtainable":true},
    "Mammothmon":{"obtained_address":bit1(0x13A0DF), "seen_address":bit5(0x13A11D), "obtainable":true},
    "MegakabuterimonB":{"obtained_address":bit2(0x13A0DF), "seen_address":bit6(0x13A11D), "obtainable":true},
    "Okuwamon":{"obtained_address":bit3(0x13A0DF), "seen_address":bit7(0x13A11D), "obtainable":true},
    "ShogunGekomon":{"obtained_address":bit4(0x13A0DF), "seen_address":bit0(0x13A11E), "obtainable":true},
    "Angewomon":{"obtained_address":bit5(0x13A0DF), "seen_address":bit1(0x13A11E), "obtainable":true},
    "Tylomon":{"obtained_address":bit6(0x13A0DF), "seen_address":bit2(0x13A11E), "obtainable":true},
    "Scorpiomon":{"obtained_address":bit7(0x13A0DF), "seen_address":bit3(0x13A11E), "obtainable":true},
    "MegaSeadramon":{"obtained_address":bit0(0x13A0E0), "seen_address":bit4(0x13A11E), "obtainable":true},
    "Dragomon":{"obtained_address":bit1(0x13A0E0), "seen_address":bit5(0x13A11E), "obtainable":true},
    "WarGarurumonBlack":{"obtained_address":bit2(0x13A0E0), "seen_address":bit6(0x13A11E), "obtainable":true},
    "WarGarurumonBlue":{"obtained_address":bit3(0x13A0E0), "seen_address":bit7(0x13A11E), "obtainable":true},
    "Myotismon":{"obtained_address":bit4(0x13A0E0), "seen_address":bit0(0x13A11F), "obtainable":true},
    "LadyDevimon":{"obtained_address":bit5(0x13A0E0), "seen_address":bit1(0x13A11F), "obtainable":true},
    "Garudamon":{"obtained_address":bit6(0x13A0E0), "seen_address":bit2(0x13A11F), "obtainable":true},
    "Blossomon":{"obtained_address":bit7(0x13A0E0), "seen_address":bit3(0x13A11F), "obtainable":true},
    "Lillymon":{"obtained_address":bit0(0x13A0E1), "seen_address":bit4(0x13A11F), "obtainable":true},
    "MegaKabuterimonR":{"obtained_address":bit1(0x13A0E1), "seen_address":bit5(0x13A11F), "obtainable":true},
    "Datamon":{"obtained_address":bit2(0x13A0E1), "seen_address":bit6(0x13A11F), "obtainable":true},
    "Cyberdramon":{"obtained_address":bit3(0x13A0E1), "seen_address":bit7(0x13A11F), "obtainable":true},
    "MagnaAngemon":{"obtained_address":bit4(0x13A0E1), "seen_address":bit0(0x13A120), "obtainable":true},
    "Paildramon":{"obtained_address":bit5(0x13A0E1), "seen_address":bit1(0x13A120), "obtainable":true},
    "Dinobeemon":{"obtained_address":bit6(0x13A0E1), "seen_address":bit2(0x13A120), "obtainable":true},
    "Antylamon":{"obtained_address":bit7(0x13A0E1), "seen_address":bit3(0x13A120), "obtainable":true},
    "Arukenimon":{"obtained_address":bit0(0x13A0E2), "seen_address":bit4(0x13A120), "obtainable":true},
    "Mummymon":{"obtained_address":bit1(0x13A0E2), "seen_address":bit5(0x13A120), "obtainable":true},
    "WarGrowlmon":{"obtained_address":bit2(0x13A0E2), "seen_address":bit6(0x13A120), "obtainable":true},
    "Rapidmon":{"obtained_address":bit3(0x13A0E2), "seen_address":bit7(0x13A120), "obtainable":true},
    "Taomon":{"obtained_address":bit4(0x13A0E2), "seen_address":bit0(0x13A121), "obtainable":true},
    "Parrotmon":{"obtained_address":bit5(0x13A0E2), "seen_address":bit1(0x13A121), "obtainable":true},
    "Infermon":{"obtained_address":bit6(0x13A0E2), "seen_address":bit2(0x13A121), "obtainable":true},
    "BlackRapidmon":{"obtained_address":bit7(0x13A0E2), "seen_address":bit3(0x13A121), "obtainable":true},
    "Pandamon":{"obtained_address":bit0(0x13A0E3), "seen_address":bit4(0x13A121), "obtainable":false},
    "MarineDevimon":{"obtained_address":bit1(0x13A0E3), "seen_address":bit5(0x13A121), "obtainable":true},
    "Karatenmon":{"obtained_address":bit2(0x13A0E3), "seen_address":bit6(0x13A121), "obtainable":true},
    "Kyukimon":{"obtained_address":bit3(0x13A0E3), "seen_address":bit7(0x13A121), "obtainable":true},
    "Sinduramon":{"obtained_address":bit4(0x13A0E3), "seen_address":bit0(0x13A122), "obtainable":true},
    "Pipismon":{"obtained_address":bit5(0x13A0E3), "seen_address":bit1(0x13A122), "obtainable":true},
    "DoruGreymon":{"obtained_address":bit6(0x13A0E3), "seen_address":bit2(0x13A122), "obtainable":true},
    "Divermon":{"obtained_address":bit7(0x13A0E3), "seen_address":bit3(0x13A122), "obtainable":true},
    "Kimeramon":{"obtained_address":bit0(0x13A0E4), "seen_address":bit4(0x13A122), "obtainable":false},
    "Triceramon":{"obtained_address":bit1(0x13A0E4), "seen_address":bit5(0x13A122), "obtainable":true},
    "Deramon":{"obtained_address":bit2(0x13A0E4), "seen_address":bit6(0x13A122), "obtainable":true},
    "Silphymon":{"obtained_address":bit3(0x13A0E4), "seen_address":bit7(0x13A122), "obtainable":true},
    "SuperStarmon":{"obtained_address":bit4(0x13A0E4), "seen_address":bit0(0x13A123), "obtainable":true},
    "BlackWarGrowlmon":{"obtained_address":bit5(0x13A0E4), "seen_address":bit1(0x13A123), "obtainable":true},
    "Zudomon":{"obtained_address":bit6(0x13A0E4), "seen_address":bit2(0x13A123), "obtainable":true},
    "Whamon":{"obtained_address":bit7(0x13A0E4), "seen_address":bit3(0x13A123), "obtainable":true},
    "Mamemon":{"obtained_address":bit0(0x13A0E5), "seen_address":bit4(0x13A123), "obtainable":true},
    "Toucanmon":{"obtained_address":bit1(0x13A0E5), "seen_address":bit5(0x13A123), "obtainable":true},
    "Owlmon":{"obtained_address":bit2(0x13A0E5), "seen_address":bit6(0x13A123), "obtainable":true},
    "Meteormon":{"obtained_address":bit3(0x13A0E5), "seen_address":bit7(0x13A123), "obtainable":true},
    "Gigadramon":{"obtained_address":bit4(0x13A0E5), "seen_address":bit0(0x13A124), "obtainable":true},
    "RiseGreymon":{"obtained_address":bit5(0x13A0E5), "seen_address":bit1(0x13A124), "obtainable":true},
    "MachGaogamon":{"obtained_address":bit6(0x13A0E5), "seen_address":bit2(0x13A124), "obtainable":true},
    "Tyilinmon":{"obtained_address":bit0(0x13A0E6), "seen_address":bit4(0x13A124), "obtainable":true},
    "Lilamon":{"obtained_address":bit1(0x13A0E6), "seen_address":bit5(0x13A124), "obtainable":true},
    "Shadramon":{"obtained_address":bit2(0x13A0E6), "seen_address":bit6(0x13A124), "obtainable":true},
    "Matadormon":{"obtained_address":bit3(0x13A0E6), "seen_address":bit7(0x13A124), "obtainable":true},
    "Kabukimon":{"obtained_address":bit4(0x13A0E6), "seen_address":bit0(0x13A125), "obtainable":true},
    "Cherrymon":{"obtained_address":bit5(0x13A0E6), "seen_address":bit1(0x13A125), "obtainable":true},
    "Garbagemon":{"obtained_address":bit6(0x13A0E6), "seen_address":bit2(0x13A125), "obtainable":true},
    "LucemonCM":{"obtained_address":bit7(0x13A0E6), "seen_address":bit3(0x13A125), "obtainable":true},
    "MameTyramon":{"obtained_address":bit0(0x13A0E7), "seen_address":bit4(0x13A125), "obtainable":true},
    "Giromon":{"obtained_address":bit1(0x13A0E7), "seen_address":bit5(0x13A125), "obtainable":true},
    "Vademon":{"obtained_address":bit2(0x13A0E7), "seen_address":bit6(0x13A125), "obtainable":true},
    "MetalTyrannomon":{"obtained_address":bit3(0x13A0E7), "seen_address":bit7(0x13A125), "obtainable":true},
    "Tekkamon":{"obtained_address":bit4(0x13A0E7), "seen_address":bit0(0x13A126), "obtainable":true},
    "BigMamemon":{"obtained_address":bit5(0x13A0E7), "seen_address":bit1(0x13A126), "obtainable":true},
    "EXTyrannomon":{"obtained_address":bit6(0x13A0E7), "seen_address":bit2(0x13A126), "obtainable":true},
    "Vermilimon":{"obtained_address":bit7(0x13A0E7), "seen_address":bit3(0x13A126), "obtainable":true},
    "Phantomon":{"obtained_address":bit0(0x13A0E8), "seen_address":bit4(0x13A126), "obtainable":true},
    "Vajramon":{"obtained_address":bit1(0x13A0E8), "seen_address":bit5(0x13A126), "obtainable":true},
    "AeroVeedramon":{"obtained_address":bit2(0x13A0E8), "seen_address":bit6(0x13A126), "obtainable":true},
    "Grapleomon":{"obtained_address":bit3(0x13A0E8), "seen_address":bit7(0x13A126), "obtainable":true},
    "Knightmon":{"obtained_address":bit4(0x13A0E8), "seen_address":bit0(0x13A127), "obtainable":true},
    "Brachiomon":{"obtained_address":bit5(0x13A0E8), "seen_address":bit1(0x13A127), "obtainable":true},
    "Allomon":{"obtained_address":bit6(0x13A0E8), "seen_address":bit2(0x13A127), "obtainable":true},
    "Lynxmon":{"obtained_address":bit7(0x13A0E8), "seen_address":bit3(0x13A127), "obtainable":true},
    "Shaujinmon":{"obtained_address":bit0(0x13A0E9), "seen_address":bit4(0x13A127), "obtainable":true},
    "Yatagaramon":{"obtained_address":bit1(0x13A0E9), "seen_address":bit5(0x13A127), "obtainable":true},
    "BishopChessmon":{"obtained_address":bit2(0x13A0E9), "seen_address":bit6(0x13A127), "obtainable":true},
    "RookChessmon":{"obtained_address":bit3(0x13A0E9), "seen_address":bit7(0x13A127), "obtainable":true},
    "Flaremon":{"obtained_address":bit4(0x13A0E9), "seen_address":bit0(0x13A128), "obtainable":true},
    "Crescemon":{"obtained_address":bit5(0x13A0E9), "seen_address":bit1(0x13A128), "obtainable":false},
    "Flamedramon":{"obtained_address":bit6(0x13A0E9), "seen_address":bit2(0x13A128), "obtainable":true},
    "Magnamon":{"obtained_address":bit7(0x13A0E9), "seen_address":bit3(0x13A128), "obtainable":true},
    "Prairiemon":{"obtained_address":bit0(0x13A0EA), "seen_address":bit4(0x13A128), "obtainable":true},
    "Kongoumon":{"obtained_address":bit1(0x13A0EA), "seen_address":bit5(0x13A128), "obtainable":true},
    "Seahomon":{"obtained_address":bit2(0x13A0EA), "seen_address":bit6(0x13A128), "obtainable":true},
    "Shurimon":{"obtained_address":bit3(0x13A0EA), "seen_address":bit7(0x13A128), "obtainable":true},
    "Kenkimon":{"obtained_address":bit4(0x13A0EA), "seen_address":bit0(0x13A129), "obtainable":true},
    "Ponchomon":{"obtained_address":bit5(0x13A0EA), "seen_address":bit1(0x13A129), "obtainable":true},
    "ArgomonU":{"obtained_address":bit6(0x13A0EA), "seen_address":bit2(0x13A129), "obtainable":false},
    "Shakkoumon":{"obtained_address":bit7(0x13A0EA), "seen_address":bit3(0x13A129), "obtainable":true},

    "Lampmon":{"obtained_address":bit0(0x13A0EC), "seen_address":bit4(0x13A12A), "obtainable":true},
    "HerculesKabuterimon":{"obtained_address":bit1(0x13A0EC), "seen_address":bit5(0x13A12A), "obtainable":true},
    "SaberLeomon":{"obtained_address":bit2(0x13A0EC), "seen_address":bit6(0x13A12A), "obtainable":true},
    "MetalEtemon":{"obtained_address":bit3(0x13A0EC), "seen_address":bit7(0x13A12A), "obtainable":true},
    "MarineAngemon":{"obtained_address":bit4(0x13A0EC), "seen_address":bit0(0x13A12B), "obtainable":true},
    "GigaSeadramon":{"obtained_address":bit5(0x13A0EC), "seen_address":bit1(0x13A12B), "obtainable":true},
    "Piedmon":{"obtained_address":bit6(0x13A0EC), "seen_address":bit2(0x13A12B), "obtainable":false},
    "Creepymon":{"obtained_address":bit7(0x13A0EC), "seen_address":bit3(0x13A12B), "obtainable":true},
    "Phoenixmon":{"obtained_address":bit0(0x13A0ED), "seen_address":bit4(0x13A12B), "obtainable":true},
    "Puppetmon":{"obtained_address":bit1(0x13A0ED), "seen_address":bit5(0x13A12B), "obtainable":true},
    "Rosemon":{"obtained_address":bit2(0x13A0ED), "seen_address":bit6(0x13A12B), "obtainable":true},
    "WarGreymon":{"obtained_address":bit3(0x13A0ED), "seen_address":bit7(0x13A12B), "obtainable":true},
    "MetalGarurumon":{"obtained_address":bit4(0x13A0ED), "seen_address":bit0(0x13A12C), "obtainable":true},
    "Machinedramon":{"obtained_address":bit5(0x13A0ED), "seen_address":bit1(0x13A12C), "obtainable":true},
    "VenomMyotismon":{"obtained_address":bit6(0x13A0ED), "seen_address":bit2(0x13A12C), "obtainable":true},
    "Omnimon":{"obtained_address":bit7(0x13A0ED), "seen_address":bit3(0x13A12C), "obtainable":true},
    "ImperialdramonDM":{"obtained_address":bit0(0x13A0EE), "seen_address":bit4(0x13A12C), "obtainable":true},
    "ImperialdramonFM":{"obtained_address":bit1(0x13A0EE), "seen_address":bit5(0x13A12C), "obtainable":true},
    "ImperialdramonPM":{"obtained_address":bit2(0x13A0EE), "seen_address":bit6(0x13A12C), "obtainable":true},
    "Ghoulmon":{"obtained_address":bit3(0x13A0EE), "seen_address":bit7(0x13A12C), "obtainable":true},
    "Seraphimon":{"obtained_address":bit4(0x13A0EE), "seen_address":bit0(0x13A12D), "obtainable":true},
    "HiAndromon":{"obtained_address":bit5(0x13A0EE), "seen_address":bit1(0x13A12D), "obtainable":true},
    "Devitamamon":{"obtained_address":bit6(0x13A0EE), "seen_address":bit2(0x13A12D), "obtainable":true},
    "CherubimonG":{"obtained_address":bit7(0x13A0EE), "seen_address":bit3(0x13A12D), "obtainable":true},
    "CherubimonE":{"obtained_address":bit0(0x13A0EF), "seen_address":bit4(0x13A12D), "obtainable":true},
    "Gallantmon":{"obtained_address":bit1(0x13A0EF), "seen_address":bit5(0x13A12D), "obtainable":true},
    "GallantmonCM":{"obtained_address":bit2(0x13A0EF), "seen_address":bit6(0x13A12D), "obtainable":true},
    "MegaGargomon":{"obtained_address":bit3(0x13A0EF), "seen_address":bit7(0x13A12D), "obtainable":true},
    "Sakuyamon":{"obtained_address":bit4(0x13A0EF), "seen_address":bit0(0x13A12E), "obtainable":true},
    "Diaboromon":{"obtained_address":bit5(0x13A0EF), "seen_address":bit1(0x13A12E), "obtainable":false},
    "Neptunmon":{"obtained_address":bit6(0x13A0EF), "seen_address":bit2(0x13A12E), "obtainable":true},
    "Pukumon":{"obtained_address":bit7(0x13A0EF), "seen_address":bit3(0x13A12E), "obtainable":true},
    "Gryphonmon":{"obtained_address":bit0(0x13A0F0), "seen_address":bit4(0x13A12E), "obtainable":true},
    "Preciomon":{"obtained_address":bit1(0x13A0F0), "seen_address":bit5(0x13A12E), "obtainable":true},
    "Armageddemon":{"obtained_address":bit2(0x13A0F0), "seen_address":bit6(0x13A12E), "obtainable":false},
    "MaloMyotismon":{"obtained_address":bit3(0x13A0F0), "seen_address":bit7(0x13A12E), "obtainable":true},
    "ImperialdramonDMB":{"obtained_address":bit4(0x13A0F0), "seen_address":bit0(0x13A12F), "obtainable":true},
    "Boltmon":{"obtained_address":bit5(0x13A0F0), "seen_address":bit1(0x13A12F), "obtainable":true},
    "PrinceMamemon":{"obtained_address":bit6(0x13A0F0), "seen_address":bit2(0x13A12F), "obtainable":true},
    "Ophanimon":{"obtained_address":bit7(0x13A0F0), "seen_address":bit3(0x13A12F), "obtainable":true},
    "Zanbamon":{"obtained_address":bit0(0x13A0F1), "seen_address":bit4(0x13A12F), "obtainable":true},
    "BlackMegaGargomon":{"obtained_address":bit1(0x13A0F1), "seen_address":bit5(0x13A12F), "obtainable":true},
    "Jijimon":{"obtained_address":bit2(0x13A0F1), "seen_address":bit6(0x13A12F), "obtainable":true},
    "Babamon":{"obtained_address":bit3(0x13A0F1), "seen_address":bit7(0x13A12F), "obtainable":true},
    "Anubismon":{"obtained_address":bit4(0x13A0F1), "seen_address":bit0(0x13A130), "obtainable":true},
    "Parasimon":{"obtained_address":bit5(0x13A0F1), "seen_address":bit1(0x13A130), "obtainable":true},
    "Cannondramon":{"obtained_address":bit6(0x13A0F1), "seen_address":bit2(0x13A130), "obtainable":true},
    "SlashAngemon":{"obtained_address":bit7(0x13A0F1), "seen_address":bit3(0x13A130), "obtainable":true},
    "Eaglemon":{"obtained_address":bit0(0x13A0F2), "seen_address":bit4(0x13A130), "obtainable":true},
    "Dorugoramon":{"obtained_address":bit1(0x13A0F2), "seen_address":bit5(0x13A130), "obtainable":true},
    "Beelzemon":{"obtained_address":bit2(0x13A0F2), "seen_address":bit6(0x13A130), "obtainable":true},
    "BantyoLeomon":{"obtained_address":bit3(0x13A0F2), "seen_address":bit7(0x13A130), "obtainable":false},
    "Darkdramon":{"obtained_address":bit4(0x13A0F2), "seen_address":bit0(0x13A131), "obtainable":true},
    "Apocalymon":{"obtained_address":bit5(0x13A0F2), "seen_address":bit1(0x13A131), "obtainable":false},
    "Ebemon":{"obtained_address":bit6(0x13A0F2), "seen_address":bit2(0x13A131), "obtainable":true},
    "Gulfmon":{"obtained_address":bit7(0x13A0F2), "seen_address":bit3(0x13A131), "obtainable":true},
    "Goldramon":{"obtained_address":bit0(0x13A0F3), "seen_address":bit4(0x13A131), "obtainable":true},
    "ZeedMillenniummon":{"obtained_address":bit1(0x13A0F3), "seen_address":bit5(0x13A131), "obtainable":false},
    "GhoulmonB":{"obtained_address":bit2(0x13A0F3), "seen_address":bit6(0x13A131), "obtainable":true},
    "Kuzuhamon":{"obtained_address":bit3(0x13A0F3), "seen_address":bit7(0x13A131), "obtainable":true},
    "ChaosGallantmon":{"obtained_address":bit4(0x13A0F3), "seen_address":bit0(0x13A132), "obtainable":false},
    "MetalSeadramon":{"obtained_address":bit5(0x13A0F3), "seen_address":bit1(0x13A132), "obtainable":true},
    "Valkyrimon":{"obtained_address":bit6(0x13A0F3), "seen_address":bit2(0x13A132), "obtainable":true},
    "Justimon":{"obtained_address":bit7(0x13A0F3), "seen_address":bit3(0x13A132), "obtainable":true},
    "Vikemon":{"obtained_address":bit0(0x13A0F4), "seen_address":bit4(0x13A132), "obtainable":true},
    "BlackWarGreymon":{"obtained_address":bit1(0x13A0F4), "seen_address":bit5(0x13A132), "obtainable":true},
    "SkullMammothmon":{"obtained_address":bit2(0x13A0F4), "seen_address":bit6(0x13A132), "obtainable":true},
    "GranKuwagamon":{"obtained_address":bit3(0x13A0F4), "seen_address":bit7(0x13A132), "obtainable":true},
    "Pharaohmon":{"obtained_address":bit4(0x13A0F4), "seen_address":bit0(0x13A133), "obtainable":true},
    "Susanoomon":{"obtained_address":bit5(0x13A0F4), "seen_address":bit1(0x13A133), "obtainable":true},
    "Alphamon":{"obtained_address":bit6(0x13A0F4), "seen_address":bit2(0x13A133), "obtainable":true},
    "Magnadramon":{"obtained_address":bit7(0x13A0F4), "seen_address":bit3(0x13A133), "obtainable":true},
    "Millenniummon":{"obtained_address":bit0(0x13A0F5), "seen_address":bit4(0x13A133), "obtainable":false},
    "MoonMillenniummon":{"obtained_address":bit1(0x13A0F5), "seen_address":bit5(0x13A133), "obtainable":false},
    "Megidramon":{"obtained_address":bit2(0x13A0F5), "seen_address":bit6(0x13A133), "obtainable":true},
    "Sleipmon":{"obtained_address":bit3(0x13A0F5), "seen_address":bit7(0x13A133), "obtainable":true},
    "ShineGreymon":{"obtained_address":bit4(0x13A0F5), "seen_address":bit0(0x13A134), "obtainable":true},
    "MirageGaogamon":{"obtained_address":bit5(0x13A0F5), "seen_address":bit1(0x13A134), "obtainable":true},
    "JumboGamemon":{"obtained_address":bit6(0x13A0F5), "seen_address":bit2(0x13A134), "obtainable":true},
    "Ravemon":{"obtained_address":bit7(0x13A0F5), "seen_address":bit3(0x13A134), "obtainable":true},
    "QueenChessmon":{"obtained_address":bit0(0x13A0F6), "seen_address":bit4(0x13A134), "obtainable":true},
    "KingChessmon":{"obtained_address":bit1(0x13A0F6), "seen_address":bit5(0x13A134), "obtainable":true},
    "ChronomonHM":{"obtained_address":bit2(0x13A0F6), "seen_address":bit6(0x13A134), "obtainable":false},
    "Lilithmon":{"obtained_address":bit3(0x13A0F6), "seen_address":bit7(0x13A134), "obtainable":true},
    "Varodurumon":{"obtained_address":bit4(0x13A0F6), "seen_address":bit0(0x13A135), "obtainable":true},
    "Apollomon":{"obtained_address":bit5(0x13A0F6), "seen_address":bit1(0x13A135), "obtainable":true},
    "Dianamon":{"obtained_address":bit6(0x13A0F6), "seen_address":bit2(0x13A135), "obtainable":false},
    "ShineGreymonBM":{"obtained_address":bit7(0x13A0F6), "seen_address":bit3(0x13A135), "obtainable":true},
    "ShineGreymonRM":{"obtained_address":bit0(0x13A0F7), "seen_address":bit4(0x13A135), "obtainable":true},
    "MirageGaogamonBM":{"obtained_address":bit1(0x13A0F7), "seen_address":bit5(0x13A135), "obtainable":true},
    "RavemonBM":{"obtained_address":bit2(0x13A0F7), "seen_address":bit6(0x13A135), "obtainable":true},
    "Lotosmon":{"obtained_address":bit3(0x13A0F7), "seen_address":bit7(0x13A135), "obtainable":true},
    "DotShineGreymon":{"obtained_address":bit4(0x13A0F7), "seen_address":bit0(0x13A136), "obtainable":true},
    "DotMirageGaogamon":{"obtained_address":bit5(0x13A0F7), "seen_address":bit1(0x13A136), "obtainable":false},
    "BeelzemonBM":{"obtained_address":bit6(0x13A0F7), "seen_address":bit2(0x13A136), "obtainable":false},
    "RosemonBM":{"obtained_address":bit7(0x13A0F7), "seen_address":bit3(0x13A136), "obtainable":true},
    "ArgomonM":{"obtained_address":bit0(0x13A0F8), "seen_address":bit4(0x13A136), "obtainable":false},
    "Minervamon":{"obtained_address":bit1(0x13A0F8), "seen_address":bit5(0x13A136), "obtainable":true},
    "Duftmon":{"obtained_address":bit2(0x13A0F8), "seen_address":bit6(0x13A136), "obtainable":true},
    "Chaosmon":{"obtained_address":bit3(0x13A0F8), "seen_address":bit7(0x13A136), "obtainable":true},
}

// $13A13F: Miscellaneous Flags
//          Bit7 = Player Gender (0=Boy, 1=Girl)
// $13A14B: Bit7 = Turns on after becoming a Bronze Rank Tamer
// $13A150: Bit1 = Turns on upon starting the battle against Duftmon & Sleipmon, turns off after the Gaia Origin Challenge is over?
// $13A152: Bit0 = Turns on when starting a Quest / Turns off when finishing a Quest (Except "The 3 Archangels")
// $13A159: Bit6 = Turns on while taking any Tamer Rank test, turns off after the test is done
//          Bit7 = Turns on when taking the Bronze Rank Test, turns off after the test is done
// $13A15A: Bit0 = Turns on when taking the Silver Rank Test, turns off after the test is done
//          Bit1 = Turns on when taking the Gold Rank Test, turns off after the test is done
//          Bit2 = Turns on when taking the Platinum Rank Test, turns off after the test is done
function tamer_rank_battle_check(tamer_rank) {
    if (tamer_rank == "Bronze")
        return bit7(0x13A159)
    else if (tamer_rank == "Silver")
        return bit0(0x13A15A)
    else if (tamer_rank == "Gold")
        return bit1(0x13A15A)
    else if (tamer_rank == "Platinum")
        return bit2(0x13A15A)
    return 1
}

// $13A15B: Bit0 = Turns on after becoming a Bronze Tamer
//          Bit1 = Turns on after becoming a Silver Tamer
//          Bit2 = Turns on after becoming a Gold Tamer
//          Bit3 = Turns on after becoming a Platinum Tamer
// $13A15C: Bit0 = 1st Sunken Tunnel valve closed (The one going south)
//          Bit1 = 2nd Sunken Tunnel valve closed (The one going east)
//          Bit2 = 3rd Sunken Tunnel valve closed (The one right before the Gate)
//          Bit7 = Ponch defeated during Darkmoon City segment
valves = [bit0(0x13A15C), bit1(0x13A15C), bit2(0x13A15C)]

// $13A15D: Bit0 = Gutts defeated during Darkmoon City segment
//          Bit1 = Barone defeated during Darkmoon City segment
// $13A15E: Bit1 = Digi-Farm obtained
//          Bit4 = Digi-Farm obtained (This turns on with Bit1, but only Bit1 is actually checked to start the event to give the player their first Digi-Farm)
function digifarm_claimed() => bit1(0x13A15E) == 1

// $13A160: Bit5 = Turns on after talking to Megidramon in the Farm for the Quest "The Stolen Microphone"
// $13A168: Bit1 = Turns on after completing "The 3 Archangels"
//          Bit2 = Turns on after completing "Search the DigiArea"
//          Bit3 = Turns on after completing "The Assault Balancer"
// $13A16C: Bit4 = Tamer Home scene after beating the game
// $13A171: Darkdramon Flags
//          Bit1 = Digiar150S at 300 Tamer Points
//          Bit2 = Belt Machine at 800 Tamer Points
//          Bit3 = TarotCards at 1500 Tamer Points
//          Bit4 = 10000 "bits" at 2700 Tamer Points
//          Bit5 = Ultimate Ring at 5000 Tamer Points
//          Bit6 = Ultimate Helm at 7500 Tamer Points
//          Bit7 = Ultimate Swd at 9999 Tamer Points
tamer_point_rewards_address = 0x13A171

// $13A172: BantyoLeomon rewards
//          Bit3 = Bronze Rank Reward (5000 "bits")
//          Bit4 = Silver Rank Reward (10000 "bits")
//          Bit5 = Gold Rank Reward (25000 "bits")
//          Bit6 = Platinum Rank Reward (50000 "bits")
// $13A174: Password rewards received
//          Bit6 = DotShineGreymon
//          Bit7 = Legendary equipment set
DotShineGreymon_password = bit6(0x13A174)
legendary_equipment_password = bit7(0x13A174)

// $13A175: Bit0 = Numemon
//          Bit1 = DotAgumon
Numemon_password = bit0(0x13A175)
DotAgumon_password = bit1(0x13A175)

// $13A194: Password inputted flags
//          These bits are just for visual feedback, they don't actually prevent or allow for the obtaining of the rewards, that is handled in the other Password-related memory
//          
//          Bit 1 = Scan Data For DotShineGreymon
//          Bit 2 = Legendary equipment
//          Bit 3 = Scan Data For Numemon
//          Bit 4 = Scan Data For DotAgumon
// $13A19F: Bit6 & Bit7 = Turn on after starting the Quest "Minervamon Challenge" and turn off after completing it
// $13A1A0: Bit7 = Turns off after completing the Quest "The Combat Game"
// $13A1A2: Bit0 = Turns off after completing the Quest "Go to Thriller Ruins"
// $13A1A3: Bit0 and Bit6 = Turn off after completing the Quest "The Combat Game"
// $13A1A4: Bit2 = Turns on when starting the Quest "Gorgeous Nuts", turns off after completing it
//          Bit6 = Turns off after completing the Quest "Airdramon's Data"
// $13A1A5: Bit1 = Turns off after completing "The 3 Archangels"
//          Bit2, Bit3 & Bit6 = Turn on after starting the Quest "The Stolen Microphone"
// $13A1A7: Bit4 = Turns on when starting the Quest "The Stolen Awards", Turns off when finishing the Quest
// $13A1A8: Bit5 = Turns on after accepting the Quest "Gaia Origin Challenge", turns off after completing it?
// $13A1A9: Bit6 = Turns on when starting the Quest "The Palette Amazon"
//          Bit7 = Turns off when starting the Quest "The Flower Bulb", turns on again after completing it
// $13A1AA: Bit3 = Turns on when starting the Quest "The Palette Amazon"
//          Bit5 = Turns off after accepting the Quest "Gaia Origin Challenge", turns on after completing it?
// $13A1AB: Bit0 & Bit1 = Turn off when accepting the Quest "Search the DigiArea", then turn on again
//          Bit2 = Turns off when accepting the Quest "Merchant of Death" or "Gorgeous Nuts", turns on after completing it
//          Bit3 = Turns on after completing "The 3 Archangels" / Turns off after starting "Airdramon's Data", then turns back on when completed
// $13A1AC: Bit6 = Turns on when starting the Quest "The Stolen Awards"
// $13A1AE: Bit1 - Bit7 = Turn on after accepting the Quest "Gaia Origin Challenge"
// $13A1AF: Bit0 = Turns on after accepting the Quest "Gaia Origin Challenge"
// $13A1C3: Bit1 & Bit6 = Turn on after completing the Quest "The Palette Amazon"
// $13A1C6: Bit1 = Turns on when finishing the Quest "The Stolen Awards"
// $13A1C9: Treasure Chest Flags
//          -----------------------------------------------------
//          Bit4 = Chip Forest (Novice Cloak)
//          Bit5 = Chip Forest (Forest Key)
// $13A1CA: Bit0 = Chip Forest (Chaos Area) (Digiar150D)
//          Bit3 = Login Mountain (GateDisk)
//          Bit5 = Login Mountain (Digimin80D)
// $13A1CB: Bit0 = Login Mountain (Final screen) (Digiar150D)
//          Bit5 = Sunken Tunnel (Digimin80D)
//          Bit6 = Sunken Tunnel (GateDisk)
//          Bit7 = Sunken Tunnel (After first valve block) (Tunnel Key)
// $13A1CC: Bit0 = Sunken Tunnel (After gate) (Digiar150S)
//          Bit6 = ResistorJungle (DigiReviverS)
// $13A1CD: Bit1 = ResistorJungle (Digimin200D)
//          Bit2 = ResistorJungle (Chaos Area) (Kindness DE)
//          Bit3 = Limit Valley (Digiar150D)
//          Bit4 = Limit Valley (Digiar150S)
// $13A1CE: Bit0 = Limit Valley (Dark area) (Broad Shield)
//          Bit2 = Limit Valley (Chaos Area) (Purity DE)
// $13A1D0: Bit0 = Loop Swamp (Speed Ring(alpha))
//          Bit2 = Loop Swamp (Full DigiarS)
//          Bit4 = Loop Swamp (Bronze Blade)
//          Bit5 = Loop Swamp (MultiRecovrS)
//          Bit6 = Loop Swamp/Palette Amazon (Chaos Area) (Honesty DE)
// $13A1D1: Bit0 = Palette Amazon (AntiBrainD)
//          Bit1 = Palette Amazon (Digiar600S)
//          Bit2 = Palette Amazon (Amazon Key)
//          Bit4 = Palette Amazon (Digiar600T)
//          Bit6 = Palette Amazon (GateDisk)
//          Bit7 = Palette Amazon (AntiNumbD)
// $13A1D2: Bit5 = Task Canyon (Digimin200D)
// $13A1D3: Bit0 = Task Canyon (DigiReviverD)
// $13A1D4: Bit6 = AccessGlacier (Digiar600T)
// $13A1D5: Bit0 = AccessGlacier (Digiar600S)
//          Bit4 = AccessGlacier (Digimin200D)
//          Bit6 = AccessGlacier (Boss Room) (Digimin400S)
//          Bit6 = AccessGlacier (Chaos Area) (Sniper Ring(alpha))
// $13A1D6: Bit4 = Macro Sea (Digimin400S)
//          Bit7 = Macro Sea (Macro Key)
// $13A1D7: Bit6 = Proxy Island (Silver Blade)
// $13A1D8: Bit1 = Proxy Island (Spirit Ring(beta))
//          Bit3 = Proxy Island (Crit Ring (alpha))
//          Bit4 = Proxy Island (Chaos area) (Parry Ring(alpha))
// $13A1D9: Bit1 = HighlightHaven (Full DigiminT)
//          Bit3 = HighlightHaven (Digiar600S)
//          Bit6 = Shadow Abyss (Digiar600S)
//          Bit7 = Shadow Abyss (Full DigiarD)
// $13A1DA: Bit0 = Shadow Abyss (Full DigiarT)
//          Bit2 = Shadow Abyss (Digiar600S)
//          Bit4 = Shadow Abyss (Pltnm Cloak)
//          Bit7 = Shadow Abyss (Full DigiminD)
// $13A1DB: Bit1 = Shadow Abyss (Chaos Area) (Poison Core(beta))
//          Bit3 = Chaos Brain (MultiRecovrT)
//          Bit7 = Chaos Brain (Spirit Ring(beta))
// $13A1DC: Bit0 = Chaos Brain (Gold Blade)
//          Bit1 = Chaos Brain (Gold Cloak)
//          Bit6 = Chaos Brain (Dash Ring(alpha))
// $13A1DD: Bit0 = Transfield (Area 1) (Full DigiarD)
//          Bit2 = Transfield (Area 1) (Wind Robe(gamma))
//          Bit5 = Transfield (Area 2) (Full DigiarT)
//          Bit6 = Transfield (Area 2) (EXP Ring (gamma))
// $13A1DE: Bit4 = Transfield (Area 4) (Fire Robe (gamma))
//          Bit6 = Thriller Ruins (1st screen) (Digimin80S)
//          Bit7 = Thriller Ruins (GateDisk)
// $13A1DF: Bit2 = Thriller Ruins (PoisonCore(alpha))
//          Bit3 = Thriller Ruins (Chaos ares) (Speed Ring(alpha))
//          Bit5 = Thriller Ruins (Temple) (AntiBrainD)
// $13A1E0: Bit1 = Thriller Ruins (Chaos Area Temple side) (MultiRecovrT)
//          Bit5 = Chip Forest (Dark area 1) (Novice Blade)
// $13A1E1: Bit0 = Chip Forest (Chaos Area) (Digiar150T)
//          Bit2 = Login Mountain (Digimin80S)
//          Bit4 = Login Mountain (After dark area) (GateDisk)
//          Bit5 = Login Mountain (After dark area) (Digimin80S)
// $13A1E2: Bit0 = Login Mountain (Chaos Area (right)) (GateDisk)
//          Bit1 = Login Mountain (Chaos Area (left)) (Miracle DE)
//          Bit2 = Sunken Tunnel (AntiPoisonS)
//          Bit4 = Sunken Tunnel (AntiNumbS)
//          Bit6 = Sunken Tunnel (After first valve block) (GateDisk)
// $13A1E3: Bit0 = Sunken Tunnel (Chaos area) (Light DE)
//          Bit5 = ResistorJungle (GateDisk)
//          Bit6 = ResistorJungle (Jungle Key)
// $13A1E4: Bit5 = Limit Valley (Digiar150T)
//          Bit7 = Limit Valley (Area behind Grimmon) (Digiar150D)
// $13A1E6: Bit4 = Loop Swamp (Bronze Plate)
//          Bit6 = Loop Swamp (GateDisk)
// $13A1E7: Bit3 = Loop Swamp (DigiReviverS)
//          Bit5 = Palette Amazon (Spirit Ring(beta))
//          Bit6 = Palette Amazon (Digimin400D)
// $13A1E8: Bit0 = Palette Amazon (DigiReviverS)
//          Bit3 = Palette Amazon (Courage DE)
//          Bit4 = Palette Amazon (right-most path from south exit)(DigiReviverS)
//          Bit6 = Palette Amazon (Silver Cloak)
//          Bit7 = Task Canyon (AntiNumbD)
// $13A1E9: Bit0 = Task Canyon (Digimin200S)
//          Bit5 = Task Canyon (Gorgon)
//          Bit7 = Task Canyon (Silver Blade)
// $13A1EA: Bit0 = Task Canyon (Chaos Area) (Silver Plate)
//          Bit1 = Task Canyon (Chaos Area) (Digiar300D)
// $13A1EB: Bit5 = AccessGlacier (FriendshipDE)
//          Bit6 = AccessGlacier (Full DigiminD)
//          Bit7 = AccessGlacier (Digiar600D)
// $13A1EC: Bit0 = AccessGlacier (NumbCore(Beta))
//          Bit2 = AccessGlacier (Gold Blade)
//          Bit5 = AccessGlacier (Chaos Area) (Health Ring(alpha))
//          Bit7 = AccessGlacier (Chaos Area) (Full RepairT)
// $13A1ED: Bit0 = Macro Sea (Dmg Ring (alpha))
//          Bit2 = Macro Sea (Digimin400T) (MarineDevimon screen)
//          Bit4 = Macro Sea (Digimin400T)
//          Bit7 = Proxy Island (Bit Ring(alpha))
// $13A1EE: Bit0 = Proxy Island (Digiar600T)
//          Bit2 = Proxy Island (Full DigiarS)
//          Bit3 = Proxy Island (Silver Cloak)
//          Bit4 = Proxy Island (AntiNumbT)
// $13A1EF: Bit1 = HighlightHaven (Digimin400T) (First screen)
//          Bit3 = HighlightHaven (Digiar600T)
//          Bit6 = HighlightHaven (Pltnm Cloak)
//          Bit7 = HighlightHaven (Digimin400T)
// $13A1F0: Bit1 = HighlightHaven (Chaos Area) (DigiReviverT)
//          Bit4 = Shadow Abyss (Digimin400T)
// $13A1F1: Bit1 = Shadow Abyss (Dmg Ring (beta))
//          Bit5 = Chaos Brain (Speed Ring(beta))
// $13A1F2: Bit4 = Chaos Brain (Bit Ring (beta))
//          Bit5 = Chaos Brain (Spirit Ring(beta))
// $13A1F3: Bit0 = Transfield (Area 2) (Light Robe(gamma))
//          Bit1 = Transfield (Area 3) (Bit Ring (gamma))
//          Bit3 = Transfield (Area 3) (Ice Robe (gamma))
// $13A1F4: Bit3 = Thriller Ruins (Dead end screen) (Digimin80S)
// $13A1F5: Bit0 = Thriller Ruins (Chaos Area Temple side) (Full RepairS)
//          Bit2 = Thriller Ruins (Chaos Area Temple side) (Digimin400T)
//          Bit4 = Chip Forest (Dark area 1) (GateDisk)
// $13A1F6: Bit0 = ResistorJungle (Digiar300D)
//          Bit2 = Thriller Ruins (Thriller Key)
//          Bit3 = Thriller Ruins (Spirit Ring(alpha))
treasure_chests = {
    "Chip Forest":[bit4(0x13A1C9),bit5(0x13A1C9), bit0(0x13A1CA), bit5(0x13A1E0), bit0(0x13A1E1), bit4(0x13A1F5)],
    "Thriller Ruins":[bit6(0x13A1DE), bit7(0x13A1DE), bit2(0x13A1DF), bit3(0x13A1DF), bit5(0x13A1DF), bit1(0x13A1E0), bit3(0x13A1F4), bit0(0x13A1F5), bit2(0x13A1F5), bit2(0x13A1F6), bit3(0x13A1F6)],
    "Sunken Tunnel":[bit5(0x13A1CB), bit6(0x13A1CB), bit7(0x13A1CB), bit0(0x13A1CC), bit2(0x13A1E2), bit4(0x13A1E2), bit6(0x13A1E2), bit0(0x13A1E3)],
    "Login Mountain":[bit3(0x13A1CA), bit5(0x13A1CA), bit0(0x13A1CB), bit2(0x13A1E1), bit4(0x13A1E1), bit5(0x13A1E1), bit0(0x13A1E2), bit1(0x13A1E2)],
    "Limit Valley":[bit3(0x13A1CD), bit4(0x13A1CD), bit0(0x13A1CE), bit2(0x13A1CE), bit5(0x13A1E4), bit7(0x13A1E4)],
    "Loop Swamp":[bit0(0x13A1D0), bit2(0x13A1D0), bit4(0x13A1D0), bit5(0x13A1D0), bit6(0x13A1D0), bit4(0x13A1E6), bit6(0x13A1E6), bit3(0x13A1E7)],
    "ResistorJungle":[bit6(0x13A1CC), bit1(0x13A1CD), bit2(0x13A1CD), bit5(0x13A1E3), bit6(0x13A1E3), bit0(0x13A1F6)],
    "Task Canyon":[bit5(0x13A1D2), bit0(0x13A1D3), bit7(0x13A1E8), bit0(0x13A1E9), bit5(0x13A1E9), bit7(0x13A1E9), bit0(0x13A1EA), bit1(0x13A1EA)],
    "Palette Amazon":[bit0(0x13A1D1), bit1(0x13A1D1), bit2(0x13A1D1), bit4(0x13A1D1), bit6(0x13A1D1), bit7(0x13A1D1), bit5(0x13A1E7), bit6(0x13A1E7), bit0(0x13A1E8), bit3(0x13A1E8), bit4(0x13A1E8), bit6(0x13A1E8)],
    "AccessGlacier":[bit6(0x13A1D4), bit0(0x13A1D5), bit4(0x13A1D5), bit6(0x13A1D5), bit7(0x13A1D5), bit5(0x13A1EB), bit6(0x13A1EB), bit7(0x13A1EB), bit0(0x13A1EC), bit2(0x13A1EC), bit5(0x13A1EC), bit7(0x13A1EC)],
    "Macro Sea":[bit4(0x13A1D6), bit7(0x13A1D6), bit0(0x13A1ED), bit2(0x13A1ED), bit4(0x13A1ED)],
    "Proxy Island":[bit6(0x13A1D7), bit1(0x13A1D8), bit3(0x13A1D8), bit4(0x13A1D8), bit7(0x13A1ED), bit0(0x13A1EE), bit2(0x13A1EE), bit3(0x13A1EE), bit4(0x13A1EE)],
    "Chaos Brain":[bit3(0x13A1DB), bit7(0x13A1DB), bit0(0x13A1DC), bit1(0x13A1DC), bit6(0x13A1DC), bit5(0x13A1F1), bit4(0x13A1F2), bit5(0x13A1F2)],
    "Transfield":[bit0(0x13A1DD), bit2(0x13A1DD), bit5(0x13A1DD), bit6(0x13A1DD), bit4(0x13A1DE), bit0(0x13A1F3), bit1(0x13A1F3), bit3(0x13A1F3)],
    "HighlightHaven":[bit1(0x13A1D9), bit3(0x13A1D9), bit1(0x13A1EF), bit3(0x13A1EF), bit6(0x13A1EF), bit7(0x13A1EF), bit1(0x13A1F0)],
    "Shadow Abyss":[bit6(0x13A1D9), bit7(0x13A1D9), bit0(0x13A1DA), bit2(0x13A1DA), bit4(0x13A1DA), bit7(0x13A1DA), bit1(0x13A1DB), bit4(0x13A1F0), bit1(0x13A1F1)]
}

//          -----------------------------------------------------
// $13A1F7: Gate Flags
//          -----------------------------------------------------
//          Bit5 = Chip Forest
//          Bit6 = Sunken Tunnel
//          Bit7 = Thriller Ruins
// $13A1F8: Bit0 = ResistorJungle
//          Bit2 = Palette Amazon
//          Bit3 = Macro Sea
//          -----------------------------------------------------
gates = {
    "Chip Forest": [bit5(0x13A1F7)],
    "Sunken Tunnel": [bit6(0x13A1F7)],
    "Thriller Ruins": [bit7(0x13A1F7)],
    "ResistorJungle": [bit0(0x13A1F8)],
    "Palette Amazon": [bit2(0x13A1F8)],
    "Macro Sea": [bit3(0x13A1F8)],
    "Login Mountain":[],
    "Limit Valley":[],
    "Loop Swamp":[],
    "Task Canyon":[],
    "AccessGlacier":[],
    "Proxy Island":[],
    "Chaos Brain":[],
    "Transfield":[],
    "HighlightHaven":[],
    "Shadow Abyss":[]
}

// $13AC20: Screen IDs [16 bits]
//          ------------
//          Sunshine City
//          0xed - 0xf1
//          0xf2 = Quest Counter
//          0xf3 = Shop
//          0xf4 = Union Room
//          0xf5 = Union Room (Path to Chaos Brain) (Dusk Only)
//          ------------
//          Tamer Home (Dawn Only)
//          0xf6 - 0xf7
//          ------------
//          Shine Terminal
//          0xf8
//          0xf9 = Shine Terminal (Before fixing)
//          0xfa = Shine W Route
//          0xfb = Shine W Route (Before Fixing)
//          0xfc = Shine W Area
//          0xfd = Shine S Route
//          0xfe = Shine S Route (Before fixing)
//          0xff = Shine S Area
//          0x100 = Shine N Route
//          0x101 = Shine N Route (Before fixing)
//          0x102 = Shine N Area
//          0x119 = Center Bridge
//          0x11a = Center Bridge (Before fixing)
//          ------------
//          Darkmoon City
//          0x103 - 0x107
//          0x108 = Quest Counter
//          0x109 = Shop
//          0x10a = Union Room
//          0x10b = Union Room (Path to Chaos Brain) (Dawn Only)
//          -------------
//          Tamer Home (Dusk Only)
//          0x010c - 0x010d
//          ------------
//          Dark Terminal
//          0x10e
//          0x10f = Dark Terminal (Before fixing)
//          0x110 = Dark E Route
//          0x111 = Dark E Route (Before fixing)
//          0x112 = Dark E Area
//          0x113 = Dark S Route
//          0x114 = Dark S Route (Before fixing)
//          0x115 = Dark S Area
//          0x116 = Dark N Route
//          0x117 = Dark N Route (Before fixing)
//          0x118 = Dark N Area
//          0x119 = Center Bridge
//          0x11a = Center Bridge (Before fixing)
//          ------------
//          Coliseum
//          0x11b = Coliseum Entry
//          0x11c = Coliseum Lobby
//          0x11d = NC Wait Room
//          0x11e = LF Wait Room
//          0x11f = SpectatorSeats
//          0x120 = Colosseum Battle Area
//          ------------
//          Chip Forest
//          0x132 - 0x139
//          0x138 - 0x139 = Chaos Area
//          ------------
//          Login Mountain
//          0x13a - 0x142
//          0x141 - 0x142 = Chaos Area
//          ------------
//          Sunken Tunnel
//          0x143 - 0x14a
//          0x14a = Chaos Area
//          ------------
//          ResistorJungle
//          0x14b - 0x152
//          0x152 = Chaos Area
//          ------------
//          Limit Valley
//          0x153 - 15a
//          0x15a = Chaos Area
//          ------------
//          Magnet Mine (Dusk Only)
//          0x15b - 0x165
//          0x165 = Chaos Area
//          ------------
//          Loop Swamp
//          0x166 - 0x16e
//          0x16e = Chaos Area
//          ------------
//          Palette Amazon
//          0x16f - 0x178
//          ------------
//          Task Canyon (Dawn Only)
//          0x179 - 0x183
//          0x182 - 0x183 = Chaos Area
//          ------------
//          ProcessFactory (Dusk Only)
//          0x184 - 0x18e
//          0x18d - 0x18e = Chaos Area
//          ------------
//          AccessGlacier
//          0x18f - 0x19a
//          0x197 = Boss Area
//          0x198 - 0x19a = Chaos Area
//          ------------
//          Macro Sea
//          0x19b - 0x1a1
//          ------------
//          Proxy Island
//          0x1a2 - 0x1ae
//          0x1ad = Boss Area
//          0x1ae = Chaos Area
//          ------------
//          HighlightHaven
//          0x1af - 0x1b8
//          0x1b8 = Chaos Area
//          ------------
//          Shadow Abyss
//          0x1b9 - 0x1c5
//          0x1c4 = ProcessFactory Area
//          0x1c5 = Chaos Area
//          ------------
//          Chaos Brain
//          0x1c6 - 0x1d3
//          ------------
//          Transfield
//          0x1d4 - 0x1d7 = Area 1
//          0x1d8 - 0x1db = Area 2
//          0x1dc - 0x1df = Area 3
//          0x1e0 - 0x1e3 = Area 4 (0x1e3 = Final Room)
//          ------------
//          Thriller Ruins
//          0x1e5 - 0x1f4
//          0x1eb - 0x1ec = Ruins to Temple Chaos Area
//          0x1ed - 0x1f1 = Temple area
//          0x1f2 - 0x1f4 = Temple Chaos area 
location_areas = {
    0xed:"in Sunshine City",
    0xee:"in Sunshine City",
    0xef:"in Sunshine City",
    0xf0:"in Sunshine City",
    0xf1:"in Sunshine City",
    0xf2:"in Sunshine City",
    0xf3:"in Sunshine City",
    0xf4:"in Sunshine City's Union Room",
    0xf5:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0xf6:"Home",
    0xf7:"Home",
    0xf8:"in Shine Terminal",
    0xf9:"in Shine Terminal",
    0xfa:"in Shine Terminal",
    0xfb:"in Shine Terminal",
    0xfc:"in Shine Terminal",
    0xfd:"in Shine Terminal",
    0xfe:"in Shine Terminal",
    0xff:"in Shine Terminal",
    0x100:"in Shine Terminal",
    0x101:"in Shine Terminal",
    0x102:"in Shine Terminal",
    0x103:"in Darkmoon City",
    0x104:"in Darkmoon City",
    0x105:"in Darkmoon City",
    0x106:"in Darkmoon City",
    0x107:"in Darkmoon City",
    0x108:"in Darkmoon City",
    0x109:"in Darkmoon City",
    0x10a:"in Darkmoon City's Union Room",
    0x10b:"in Darkmoon City's Union Room",
    0x10c:"in Sayo's Home",
    0x10d:"in Sayo's Home",
    0x10e:"in the Dark Terminal",
    0x10f:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x110:"in the Dark E Route",
    0x111:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x112:"in the Dark E Area",
    0x113:"in the Dark S Route",
    0x114:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x115:"in the Dark S Area",
    0x116:"in the Dark N Route",
    0x117:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x118:"in the Dark N Area",
    0x119:"in the Center Bridge",
    0x11a:"in the Center Bridge",
    0x11b:"in the Coliseum Entry",
    0x11c:"in the Coliseum Lobby",
    0x11d:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x11e:"in the Coliseum's LF Wait Room",
    0x11f:"in the Coliseum's Spectator Seats",
    0x120:"in the Coliseum's Battle Area",
    0x132:"in Chip Forest",
    0x133:"in Chip Forest",
    0x134:"in Chip Forest",
    0x135:"in Chip Forest",
    0x136:"in Chip Forest",
    0x137:"in Chip Forest",
    0x138:"in Chip Forest",
    0x139:"in Chip Forest",
    0x13a:"in Login Mountain",
    0x13b:"in Login Mountain",
    0x13c:"in Login Mountain",
    0x13d:"in Login Mountain",
    0x13e:"in Login Mountain",
    0x13f:"in Login Mountain",
    0x140:"in Login Mountain",
    0x141:"in Login Mountain",
    0x142:"in Login Mountain",
    0x143:"in Sunken Tunnel",
    0x144:"in Sunken Tunnel",
    0x145:"in Sunken Tunnel",
    0x146:"in Sunken Tunnel",
    0x147:"in Sunken Tunnel",
    0x148:"in Sunken Tunnel",
    0x149:"in Sunken Tunnel",
    0x14a:"in Sunken Tunnel",
    0x14b:"in ResistorJungle",
    0x14c:"in ResistorJungle",
    0x14d:"in ResistorJungle",
    0x14e:"in ResistorJungle",
    0x14f:"in ResistorJungle",
    0x150:"in ResistorJungle",
    0x151:"in ResistorJungle",
    0x152:"in ResistorJungle",
    0x153:"in Limit Valley",
    0x154:"in Limit Valley",
    0x155:"in Limit Valley",
    0x156:"in Limit Valley",
    0x157:"in Limit Valley",
    0x158:"in Limit Valley",
    0x159:"in Limit Valley",
    0x15a:"in Limit Valley",
    0x15b:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x15c:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x15d:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x15e:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x15f:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x160:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x161:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x162:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x163:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x164:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x165:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x166:"in Loop Swamp",
    0x167:"in Loop Swamp",
    0x168:"in Loop Swamp",
    0x169:"in Loop Swamp",
    0x16a:"in Loop Swamp",
    0x16b:"in Loop Swamp",
    0x16c:"in Loop Swamp",
    0x16d:"in Loop Swamp",
    0x16e:"in Loop Swamp",
    0x16f:"in Palette Amazon",
    0x170:"in Palette Amazon",
    0x171:"in Palette Amazon",
    0x172:"in Palette Amazon",
    0x173:"in Palette Amazon",
    0x174:"in Palette Amazon",
    0x175:"in Palette Amazon",
    0x176:"in Palette Amazon",
    0x177:"in Palette Amazon",
    0x178:"in Palette Amazon",
    0x179:"in Task Canyon",
    0x17a:"in Task Canyon",
    0x17b:"in Task Canyon",
    0x17c:"in Task Canyon",
    0x17d:"in Task Canyon",
    0x17e:"in Task Canyon",
    0x17f:"in Task Canyon",
    0x180:"in Task Canyon",
    0x181:"in Task Canyon",
    0x182:"in Task Canyon",
    0x183:"in Task Canyon",
    0x184:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x185:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x186:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x187:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x188:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x189:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x18a:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x18b:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x18c:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x18d:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x18e:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x18f:"in AccessGlacier",
    0x190:"in AccessGlacier",
    0x191:"in AccessGlacier",
    0x192:"in AccessGlacier",
    0x193:"in AccessGlacier",
    0x194:"in AccessGlacier",
    0x195:"in AccessGlacier",
    0x196:"in AccessGlacier",
    0x197:"in AccessGlacier",
    0x198:"in AccessGlacier",
    0x199:"in AccessGlacier",
    0x19a:"in AccessGlacier",
    0x19b:"in Macro Sea",
    0x19c:"in Macro Sea",
    0x19d:"in Macro Sea",
    0x19e:"in Macro Sea",
    0x19f:"in Macro Sea",
    0x1a0:"in Macro Sea",
    0x1a1:"in Macro Sea",
    0x1a2:"in Proxy Island",
    0x1a3:"in Proxy Island",
    0x1a4:"in Proxy Island",
    0x1a5:"in Proxy Island",
    0x1a6:"in Proxy Island",
    0x1a7:"in Proxy Island",
    0x1a8:"in Proxy Island",
    0x1a9:"in Proxy Island",
    0x1aa:"in Proxy Island",
    0x1ab:"in Proxy Island",
    0x1ac:"in Proxy Island",
    0x1ad:"in Proxy Island",
    0x1ae:"in Proxy Island",
    0x1af:"in HighlightHaven",
    0x1b0:"in HighlightHaven",
    0x1b1:"in HighlightHaven",
    0x1b2:"in HighlightHaven",
    0x1b3:"in HighlightHaven",
    0x1b4:"in HighlightHaven",
    0x1b5:"in HighlightHaven",
    0x1b6:"in HighlightHaven",
    0x1b7:"in HighlightHaven",
    0x1b8:"in HighlightHaven",
    0x1b9:"in Shadow Abyss",
    0x1ba:"in Shadow Abyss",
    0x1bb:"in Shadow Abyss",
    0x1bc:"in Shadow Abyss",
    0x1bd:"in Shadow Abyss",
    0x1be:"in Shadow Abyss",
    0x1bf:"in Shadow Abyss",
    0x1c0:"in Shadow Abyss",
    0x1c1:"in Shadow Abyss",
    0x1c2:"in Shadow Abyss",
    0x1c3:"in Shadow Abyss",
    0x1c4:"in Shadow Abyss",
    0x1c5:"in Shadow Abyss",
    0x1c6:"in Chaos Brain",
    0x1c7:"in Chaos Brain",
    0x1c8:"in Chaos Brain",
    0x1c9:"in Chaos Brain",
    0x1ca:"in Chaos Brain",
    0x1cb:"in Chaos Brain",
    0x1cc:"in Chaos Brain",
    0x1cd:"in Chaos Brain",
    0x1ce:"in Chaos Brain",
    0x1cf:"in Chaos Brain",
    0x1d0:"in Chaos Brain",
    0x1d1:"in Chaos Brain",
    0x1d2:"in Chaos Brain",
    0x1d3:"in Chaos Brain",
    0x1d4:"in Transfield",
    0x1d5:"in Transfield",
    0x1d6:"in Transfield",
    0x1d7:"in Transfield",
    0x1d8:"in Transfield",
    0x1d9:"in Transfield",
    0x1da:"in Transfield",
    0x1db:"in Transfield",
    0x1dc:"in Transfield",
    0x1dd:"in Transfield",
    0x1de:"in Transfield",
    0x1df:"in Transfield",
    0x1e0:"in Transfield",
    0x1e1:"in Transfield",
    0x1e2:"in Transfield",
    0x1e3:"in Transfield",
    0x1e5:"in Thriller Ruins",
    0x1e6:"in Thriller Ruins",
    0x1e7:"in Thriller Ruins",
    0x1e8:"in Thriller Ruins",
    0x1e9:"in Thriller Ruins",
    0x1ea:"in Thriller Ruins",
    0x1eb:"in Thriller Ruins",
    0x1ec:"in Thriller Ruins",
    0x1ed:"in Thriller Ruins",
    0x1ee:"in Thriller Ruins",
    0x1ef:"in Thriller Ruins",
    0x1f0:"in Thriller Ruins",
    0x1f1:"in Thriller Ruins",
    0x1f2:"in Thriller Ruins",
    0x1f3:"in Thriller Ruins",
    0x1f4:"in Thriller Ruins",
}

boss_areas = {
    "Darkmoon City Union Room":0x10a,
    "Coliseum Battle Area":0x120,
    "Limit Valley Boss Area":0x158,
    "Loop Swamp Boss Area":0x16d,
    "Palette Amazon Boss Area":0x178,
    "AccessGlacier Boss Area":0x197,
    "Proxy Island Boss Area":0x1ad,
    "Chaos Brain Boss Area":0x1d3,
    "Transfield Boss Area":0x1e3,
    "Thriller Ruins Boss Area":0x1ef,
}

function current_screen_ID() => word(0x13AC20)

// $14B04C: In-Game [16 bits]
//          0x0000 = In Title Menu
//          0xffff = In Game
function game_state() => word(0x14B04C)

// $159FC2: In-Game 2 [16 bits]
//          (Other seems safer, but this one changes at the same time)
//          0x0000 = In Title Menu
//          0x1085 = In Game
// $16C5AD: Digimon Scan Data obtained
//          0x00 = No Scan Data obtained (Used for Boss encounters)
//          0x01 = Scan Data obtained as normal
function scan_data_obtainable() => byte(0x16C5AD)

// $16C5D4: Information for Digimon found in the area starts here
//          Information loads after triggering a battle in a location
// $1EFC34: Title Screen [8-bit]
//          0x00 New
//          0x01 Continue
//          0x02 Wi-fi Connection
//          0x03 Back
// $1EFE28: Title Screen [8-bit]
//          0x00 New
//          0x01 Continue
//          0x02 Wi-fi Connection
//          0x03 Back
// $1F05DF: [Digilab?] [8 bit]
//          
//          00 = Digiconvert
//          01 or Bit 0 = Digivolve Or Degenerate
//          02 or Bit 1 = Special Digivolve
//          
//          If you enter the digivolve or special evolution menu and exit, the value will automatically be 00 since the cursor is automatically placed in digiconvert
// $1F7C30: Pointer to Convert/Evolution Menu [32 bits]
//          0x02296c48 = On DigiLab menu
//          0x02296ca8 = On Special Digivolve menu
//          0x00000000 = Anywhere else
function in_special_evolution_menu(check_previous_frame = false) {
    if (check_previous_frame == true)
        return prev(dword(0x1F7C30)) == 0x02296ca8
    else
        return dword(0x1F7C30) == 0x02296ca8
}

// $256B20: [Graphic Data]
//          Using these values for HP rather than the real HP makes it so achievements pop after the hit has been dealt, rather than when the attack was used
//          1st Enemy Digimon's Current HP [32 bits]
// $256B2C: [Graphic Data]
//          2nd Enemy Digimon's Current HP [32 bits]
// $256B38: [Graphic Data]
//          3rd Enemy Digimon's Current HP [32 bits]
// $256B44: [Graphic Data]
//          4th Enemy Digimon's Current HP [32 bits]
// $256B50: [Graphic Data]
//          5th Enemy Digimon's Current HP [32 bits]
enemy_hp_graphic_data = [
    dword(0x256B20),
    dword(0x256B2C),
    dword(0x256B38),
    dword(0x256B44),
    dword(0x256B50),
]

// $256B90: In-Battle Pointer? [32 bits]
//          Seems to be the pointer to graphics, could not find the one for data
//          0x00000000 = Not in battle
//          0x02166a40 = In-Battle
function in_battle() => dword(0x256B90) == 0x02166a40

// $25A498: [Battle-only information]
//          1st Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 1st Digimon in party (Will never actually happen in reality)
first_party_digimon_inbattle = 0x25A498
party_digimon_inbattle_offsets = {
    "Unique ID": 0x4,
    "ID": 0x8,
    "Curr HP": 0x14,
    "Max HP": 0x18,
    "Max MP": 0x20,
    "Technique 1": 0x24,
    "Attack": 0x68,
    "Defense": 0x6E,
    "Spirit": 0x74,
    "Speed": 0x7A,
    "Next Digimon": 0xD8,
    "Technique Offset": 0x6,
}

// $25A49C: Unique ID [32 bits]
// $25A4A0: Digimon ID [32 bits]
// $25A4AC: Current HP [32 bits]
// $25A4B0: Max HP [32 bits]
// $25A4B4: Current MP [32 bits]
// $25A4B8: Max MP [32 bits]
// $25A4FC: Earth Resistance? [16 bits]
//          This one is weird, because it starts at 0x00ff but transform into another number when hit by an Earth-resistance down move only. The Modification field next to this works as normal
// $25A500: Attack Stat [16 bits] (Includes equipment stats)
// $25A502: Attack Modification [16 bits]
//          Starts at 0 and goes up or down depending on the status inflicted (aka. Attack Up or Attack Down). I think they are just extra stats added to the base stat? But not sure.
// $25A506: Defense Stat [16 bits]
// $25A508: Defense Modification [16 bits]
// $25A50C: Spirit Stat [16 bits]
// $25A50E: Spirit Modification [16 bits]
// $25A512: Speed Stat [16 bits]
// $25A514: Speed Modification [16 bits]
// $25A524: Light Resistance [16 bits]
// $25A52A: Dark Resistance [16 bits]
// $25A530: Fire Resistance [16 bits]
// $25A532: Fire Resistance Modification [16 bits]
//          Goes up to 0x0096 upwards, downwards limit unknown.
// $25A536: Unused Resistance? [16 bits]
//          I feel like something weird happened when coding the Earth resistance and this was suppossed to be where it was stored (see note on Earth resistance)
// $25A53C: Wind Resistance [16 bits]
// $25A542: Steel Resistance [16 bits]
// $25A548: Water Resistance [16 bits]
// $25A54E: Thunder Resistance [16 bits]
// $25A570: --------------------------------------------------------
//          2nd Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 2nd Digimon in party
// $25A574: Unique ID [32 bits]
// $25A578: Digimon ID [32 bits]
// $25A584: Current HP [32 bits]
// $25A588: Max HP [32 bits]
// $25A58C: Current MP [32 bits]
// $25A590: Max MP [32 bits]
// $25A5D8: Attack Stat [16 bits]
// $25A5DE: Defense Stat [16 bits]
// $25A5E4: Spirit Stat [16 bits]
// $25A5EA: Speed Stat [16 bits]
// $25A648: --------------------------------------------------------
//          3rd Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 3rd Digimon in party
// $25A64C: Unique ID [32 bits]
// $25A650: Digimon ID [32 bits]
// $25A65C: Current HP [32 bits]
// $25A660: Max HP [32 bits]
// $25A664: Current MP [32 bits]
// $25A668: Max MP [32 bits]
// $25A6B0: Attack Stat [16 bits]
// $25A6B6: Defense Stat [16 bits]
// $25A6BC: Spirit Stat [16 bits]
// $25A6C2: Speed Stat [16 bits]
// $25A720: --------------------------------------------------------
//          4th Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 4th Digimon in party
// $25A724: Unique ID [32 bits]
// $25A728: Digimon ID [32 bits]
// $25A734: Current HP [32 bits]
// $25A738: Max HP [32 bits]
// $25A73C: Current MP [32 bits]
// $25A740: Max MP [32 bits]
// $25A788: Attack Stat [16 bits]
// $25A78E: Defense Stat [16 bits]
// $25A794: Spirit Stat [16 bits]
// $25A79A: Speed Stat [16 bits]
// $25A7F8: --------------------------------------------------------
//          5th Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 5th Digimon in party
// $25A7FC: Unique ID [32 bits]
// $25A800: Digimon ID [32 bits]
// $25A80C: Current HP [32 bits]
// $25A810: Max HP [32 bits]
// $25A814: Current MP [32 bits]
// $25A818: Max MP [32 bits]
// $25A860: Attack Stat [16 bits]
// $25A866: Defense Stat [16 bits]
// $25A86C: Spirit Stat [16 bits]
// $25A872: Speed Stat [16 bits]
// $25A8D0: --------------------------------------------------------
//          6th Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 6th Digimon in party
// $25A8D4: Unique ID [32 bits]
// $25A8D8: Digimon ID [32 bits]
// $25A8E4: Current HP [32 bits]
// $25A8E8: Max HP [32 bits]
// $25A8EC: Current MP [32 bits]
// $25A8F0: Max MP [32 bits]
// $25A938: Attack Stat [16 bits]
// $25A93E: Defense Stat [16 bits]
// $25A944: Spirit Stat [16 bits]
// $25A94A: Speed Stat [16 bits]

// $25A9A8: 1st Enemy Digimon Information
//          ---------------------------------------------
first_enemy_digimon = 0x25A9A8
enemy_digimon_info_offsets = {
    "ID": 0x04,
    "CurrHP": 0x10, // Actual HP, use graphic HP so achievement pops in a better place
    "Next Digimon": 0xD8,
}

boss_digimon_ids = {
    "ChaosGallantmonC":0x1fc,
    "ChaosGrimmon":0x1ff,
    "ExoGrimmon":0x202,
    "????":0x205,
    "WaruSeadramon":0x206,
    "Spinomon":0x20c,
    "Gaiomon":0x212,
    "Kokuwamon": 0x21e, // Normal Tournament Fight 1
    "Gabumon": 0x21f, // Normal Tournament Fight 2
    "Mametyramon": 0x220, // Normal Tournament Fight 2
    "Rockmon": 0x221, // Normal Tournament Fight 3
    "Volcanomon": 0x222, // Normal Tournament Fight 3
    "Mushroomon": 0x223, // Normal Tournament Fight 3
    "Lilamon": 0x224, // Normal Tournament Fight 4
    "MachGaogamon": 0x225, // Normal Tournament Fight 4
    "Lunamon": 0x226, // Normal Tournament Fight 4
    "Grimmon":0x22b,
    // "Grimmon":0x22e, // Dusk ID
    "Ophanimon":0x23b,
    // Gaia Origin Challenge
    "Sleipmon":0x23d,
    "Duftmon":0x23e,
    "Apocalymon":0x23f,
    "Susanoomon":0x240,
    "ZeedMillenniummon":0x241,
    "Alphamon":0x242,
    "Omnimon":0x243,
    "BeelzemonBM":0x244,
    "GallantmonCM":0x245,
    // Boss fights before bosses
    "Fugamon (Spinomon MiniBoss)":0x2af,
    "Tsukaimon (Gaiomon MiniBoss)":0x2b1,
    "Gaiomon (Before GranDracmon Boss)":0x2b3,
    "GranDracmon":0x2b9,
    // Tamer Rank fights
    "Dianamon (Legendary Battle 1)":0x2df,
    "MirageGaogamon (Legendary Battle 1)":0x2e0,
    "Lotosmon (Legendary Battle 1)":0x2e1,
    "GeoGreymon (Legendary Battle 2)":0x2e2,
    "Peckmon (Legendary Battle 2)":0x2e3,
    "Gaogamon (Legendary Battle 2)":0x2e4,
    "RosemonBM (Legendary Battle 3)":0x2e5,
    "RavemonBM (Legendary Battle 3)":0x2e6,
    "ShineGreymonBM (Legendary Battle 4)":0x2e7,
    "MirageGaogamonBM (Legendary Battle 4)":0x2e8,
    "ChronomonHM (Legendary Battle 5)":0x2e9,
    "Shadramon (Bronze Battle)":0x2ea,
    "Magnamon (Bronze Battle)":0x2eb,
    "Parasimon (Silver Battle)":0x2ec,
    "MoonMillenniummon (Silver Battle)":0x2ed,
    "Vademon (Silver Battle)":0x2ee,
    "BantyoLeomon (Gold Battle)":0x2ef,
    "LucemonCM (Gold Battle)":0x2f0,
    "Lampmon (Gold Battle)":0x2f1,
    "Kuramon (Platinum Battle)":0x2f2,
    "ImperialdramonPM (Platinum Battle)":0x2f3,
    "Minomon (Platinum Battle)":0x2f4,
}

// $25A9AC: Digimon ID [16 bits]
// $25A9B0: Digimon ID [16 bits]
// $25A9BC: Current HP [16 bits]
// $25A9C0: Max HP [16 bits]
// $25AA0C: Earth Resistance? [16 bits]
// $25AA10: Attack Stat [16 bits]
// $25AA12: Attack Modification [16 bits]
// $25AA16: Defense Stat [16 bits]
// $25AA18: Defense Modification [16 bits]
// $25AA1C: Spirit Stat [16 bits]
// $25AA1E: Spirit Modification [16 bits]
// $25AA22: Speed Stat [16 bits]
// $25AA24: Speed Modification [16 bits]
// $25AA34: Light Resistance [16 bits]
// $25AA3A: Dark Resistance [16 bits]
// $25AA40: Fire Resistance [16 bits]
// $25AA42: Fire Resistance Modification [16 bits]
// $25AA46: Unused Resistance? [16 bits]
// $25AA4C: Wind Resistance [16 bits]
// $25AA52: Steel Resistance [16 bits]
// $25AA58: Water Resistance [16 bits]
// $25AA5E: Thunder Resistance [16 bits]
// $25AA80: 2nd Enemy Digimon Information
//          ---------------------------------------------
//          0xff = No 2nd Enemy Digimon
// $25AA84: Digimon ID [16 bits]
// $25AA88: Digimon ID [16 bits]
// $25AA94: Curr HP [16 bits]
// $25AA98: Max HP [16 bits]
// $25AB50: Digimon ID [16 bits]
// $25AB58: 3rd Enemy Digimon Information
//          ---------------------------------------------
//          0xff = No 3rd Enemy Digimon
// $25AB5C: Digimon ID [16 bits]
// $25AB6C: Curr HP [16 bits]
// $25AB70: Max HP [16 bits]
// $25AC30: 4th Enemy Digimon Information
//          ---------------------------------------------
//          0xff = No 4th Enemy Digimon
// $25AC34: Digimon ID [16 bits]
// $25AC44: Curr HP [16 bits]
// $25AD08: 5th Enemy Digimon Information
//          ---------------------------------------------
//          0xff = No 5th Enemy Digimon
// $25AD0C: Digimon ID [16 bits]
// $25AD1C: Curr HP [16 bits]
// $25ADE0: 6th Enemy Digimon Information
//          ---------------------------------------------
//          0xff = No 6th Enemy Digimon? (Enemy field isn't that big, maybe it's used for Player vs Player fights?)

// $25E088: In-Battle option selection
//          0x00 = Fight
//          0x01 = Move
//          0x02 = Item
//          0x03 = Defend
//          0x04 = Flee
// $25E089: In-Battle sub-option selection
//          0x00 = 1st item/Attack/etc
//          0x01 = 2nd Item/Attack/etc
//          ...
// $25E08A: In-Battle Digimon target selection
//          A corresponding bit turns on depending on who the attack/item/etc targets. If it targets more than 1 Digimon at the same time, both bits will turn on.
//          Works for both enemy Digimon and player's Digimon
//          Bit4 = Left-most Digimon
//          ...
//          Bit0 = Right-most Digimon
// $25E098: In-Battle selection states
//          Choosing an attack/item/etc doesn't change the previous state
//          0x1f = Fight selected
//          0x20 = Move selected
//          0x21 = Item selected
//          0x22 = Defend selected
//          0x23 = Flee selected
//          0x24 = Accepted (Attack confirmed/Item used/etc)
//          0x25 = Cacnelled
function in_battle_selection_state() => byte(0x25E098)
fight_state = 0x1f
move_state = 0x20
item_state = 0x21
defend_state = 0x22
flee_state = 0x23
accepted_state = 0x24
cancelled_state = 0x25

// $296DB4: Pointer to 1st DNA/Armor Digivolving Digimon [32 bits]
function base_dna_armor_digimon() => tbyte(0x296DB4)

// $296DBC: Pointer to 2nd DNA Digimon [32 bits]
function second_dna_digimon() => tbyte(0x296DBC)

// $296E1C: DNA/Armor Digimon obtained Digimon ID [16 bits]
function dna_armor_digimon_obtained() => dword(0x296E1C)

// $296E35: New Digimon's Personality
// $296E54: New Digimon's Curr? HP [32 bits]
// $296E58: New Digimon's Max? HP [32 bits]
// $296E5C: New Digimon's Curr? MP [16 bits]
// $296E5E: New Digimon's Max? MP [16 bits]
// $296E60: New Digimon's Attack [16 bits]
// $296E62: New Digimon's Defense [16 bits]
// $296E64: New Digimon's Spirit [16 bits]
// $296E66: New Digimon's Speed [16 bits]
// $296E6A: New Digimon's Aptitude [16 bits]
// $296ECC: ID of In-Training Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no In-Training form
// $296ED0: ID of Rookie Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Rookie form
// $296ED4: ID of Champion Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Champion form
// $296ED8: ID of Ultimate Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Ultimate form
// $296EDC: ID of Mega Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Mega form
// $296F20: Light Resistance? [16 bits]
// $296F22: Dark Resistance? [16 bits]
// $296F24: Fire Resistance? [16 bits]
// $296F26: Earth Resistance? [16 bits]
// $296F28: Wind Resistance? [16 bits]
// $296F2A: Steel Resistance? [16 bits]
// $296F2C: Water Resistance? [16 bits]
// $296F2E: Thunder Resistance? [16 bits]


//////////////////////////////
// - HELPER VARIABLES

gaia_origin_ids = [
    [boss_digimon_ids["Duftmon"], boss_digimon_ids["Sleipmon"]],
    [boss_digimon_ids["Apocalymon"]],
    [boss_digimon_ids["Susanoomon"]],
    [boss_digimon_ids["ZeedMillenniummon"]],
    [boss_digimon_ids["Alphamon"], boss_digimon_ids["Omnimon"]],
    [boss_digimon_ids["BeelzemonBM"]],
    [boss_digimon_ids["GallantmonCM"]],
]

tamer_rank_ids = [
    [boss_digimon_ids["Shadramon (Bronze Battle)"], boss_digimon_ids["Magnamon (Bronze Battle)"]],
    [boss_digimon_ids["Parasimon (Silver Battle)"], boss_digimon_ids["MoonMillenniummon (Silver Battle)"], boss_digimon_ids["Vademon (Silver Battle)"]],
    [boss_digimon_ids["BantyoLeomon (Gold Battle)"], boss_digimon_ids["LucemonCM (Gold Battle)"], boss_digimon_ids["Lampmon (Gold Battle)"]],
    [boss_digimon_ids["Minomon (Platinum Battle)"], boss_digimon_ids["ImperialdramonPM (Platinum Battle)"], boss_digimon_ids["Kuramon (Platinum Battle)"]],
    [boss_digimon_ids["ChronomonHM (Legendary Battle 5)"]],
]

armor_evolutions = {
    digimon_ids["Veemon"]: [digimon_ids["Flamedramon"], digimon_ids["Magnamon"]],
    digimon_ids["Wormmon"]: [digimon_ids["Owlmon"], digimon_ids["Shadramon"], digimon_ids["Kongoumon"]],
    digimon_ids["Hawkmon"]: [digimon_ids["Toucanmon"], digimon_ids["Allomon"], digimon_ids["Shurimon"]],
    digimon_ids["Armadillomon"]: [digimon_ids["Kenkimon"], digimon_ids["Seahomon"]],
    digimon_ids["Patamon"]: [digimon_ids["Pipismon"], digimon_ids["Ponchomon"], digimon_ids["Prairiemon"]],
    digimon_ids["Gatomon"]: [digimon_ids["Tylomon"], digimon_ids["Kabukimon"], digimon_ids["Lynxmon"]],
}

//////////////////////////////
// - HELPER FUNCTIONS

function save_protection(){
    return __ornext(game_state() == 0xffff || prev(game_state()) == 0xffff)
}

function reset_in_alt(reset_condition) {
    return (always_false() || never(reset_condition))
}

function game_beaten() {
    return story_checkpoints["Game Beaten"] > prev(story_checkpoints["Game Beaten"])
}

function quests_last_step_completed(){
    total = 0
    for quest in quest_list {
        // Ignore Union Quest 12, normally only obtainable by connecting to another game
        if (quest != "union12")
            total = total + quest_list[quest]["Last Step"]
    }
    return total
}

function quests_completed() {
    total = 0
    for quest in quest_list{
        // Ignore Union Quest 12, normally only obtainable by connecting to another game
        if (quest != "union12")
            total = total + quest_list[quest]["Reward Claimed"]
    }
    return total
}

function chests_opened(location){
    opened_last_frame = 0
    opened_this_frame = 0
    total_to_open = 0
    for chest in treasure_chests[location] {
        opened_last_frame = opened_last_frame + prev(chest)
        opened_this_frame = opened_this_frame + chest
        total_to_open = total_to_open + 1
    }
    for gate in gates[location] {
        opened_last_frame = opened_last_frame + prev(gate)
        opened_this_frame = opened_this_frame + gate
        total_to_open = total_to_open + 1
    }
    if (location == "Sunken Tunnel") {
        for valve in valves {
            opened_last_frame = opened_last_frame + prev(valve)
            opened_this_frame = opened_this_frame + valve
        total_to_open = total_to_open + 1
        }
    }
    
    return opened_last_frame == total_to_open - 1 && measured(opened_this_frame == total_to_open)
}

// digimon_to_check: specifies whether to count Digimon without connecting to another game only ("In-Game"), Digimon that require connection to another game ("Trade"), or every Digimon ("All")
function count_digimon(digimon_to_count, digimon_to_check = "In-Game", type = "obtained"){
    digimon_count = 0
    availability_to_check = digimon_to_check == "In-Game"
    for digimon in digimon_to_count {
        if (digimon_to_check == "All" || digimon_list[digimon]["obtainable"] == availability_to_check) {
            digimon_count = digimon_count + digimon_list[digimon][type + "_address"]
        }
    }
    return digimon_count
}

// boss_id is for when a giant boss has a mini-boss fight before them, so the limitations apply only to the boss
function no_deaths_in_battle(boss_id = 0xffff) {
    logic = always_true()

    for i in range (0, 5) {
        current_digimon = first_party_digimon_inbattle + party_digimon_inbattle_offsets["Next Digimon"] * i
        if(boss_id == 0xffff){
            // We need to check if there is a Digimon in the current slot first before we check if someone has died, which is what the 0xff comparison is for
            logic = logic && disable_when(in_battle() && scan_data_obtainable() == 0x00 && byte(current_digimon) != 0xff && dword(current_digimon + party_digimon_inbattle_offsets["Curr HP"]) == 0)
        }
        else {
        // Check the second Digimon because that's the main part for giant Digimon
        enemyID = first_enemy_digimon + enemy_digimon_info_offsets["Next Digimon"] + enemy_digimon_info_offsets["ID"]
            logic = logic && disable_when(in_battle() && scan_data_obtainable() == 0x00 && word(enemyID) == boss_id && byte(current_digimon) != 0xff && dword(current_digimon + party_digimon_inbattle_offsets["Curr HP"]) == 0)
        }
    }

    return logic
}

// boss_id is for when a giant boss has a mini-boss fight before them, so the limitations don't apply to that fight
function no_items_in_battle(boss_id = 0xffff) {
    if (boss_id == 0xffff){
        return disable_when(in_battle() && scan_data_obtainable() == 0x00 && prev(in_battle_selection_state()) == item_state && in_battle_selection_state() == accepted_state)
    }
    else {
        // Check the second Digimon because that's the main part for giant Digimon
        enemyID = first_enemy_digimon + enemy_digimon_info_offsets["Next Digimon"] + enemy_digimon_info_offsets["ID"]
        return disable_when(in_battle() && scan_data_obtainable() == 0x00 && word(enemyID) == boss_id && prev(in_battle_selection_state()) == item_state && in_battle_selection_state() == accepted_state)
    }
}

function bosses_defeated(bosses_ids, add_trigger) {
    delta_check = always_false()
    logic_check = always_true()
    for i in range(0, length(bosses_ids) - 1) {
        enemy = first_enemy_digimon + enemy_digimon_info_offsets["Next Digimon"] * i
        enemyID = enemy + enemy_digimon_info_offsets["ID"]
        enemyHP = enemy_hp_graphic_data[i]
        delta_check = delta_check || prev(enemyHP) > 0
        if (add_trigger == true){
            logic_check = logic_check && trigger_when(word(enemyID) == bosses_ids[i] && enemyHP == 0)
        }
        else{
            logic_check = logic_check && word(enemyID) == bosses_ids[i] && enemyHP == 0
        }
    }
    return in_battle() && __ornext(delta_check) && logic_check
}

// Checks if the passed in Digimon is one of the enemies
function check_enemy_digimon(digimon_to_check) {
    logic_check = always_false()
    for i in range(0, 4) {
        logic_check = logic_check || (word(first_enemy_digimon + enemy_digimon_info_offsets["Next Digimon"] * i + enemy_digimon_info_offsets["ID"]) == digimon_to_check)
    }
    return logic_check
}

function giant_boss_defeated(boss_id, trigger = false, first_boss = 0xffff) {
    // For giant bosses, the first and third enemies are extensions of the main body and don't actually have hp (it's set to 0xFFFFFFFF)
    //  The HP for the boss is stored in the middle zone, which correlates to the second enemy Digimon
    enemy = first_enemy_digimon + enemy_digimon_info_offsets["Next Digimon"]
    enemyID = enemy + enemy_digimon_info_offsets["ID"]
    enemyHP = enemy_hp_graphic_data[1]
    if (trigger == true){
        if (first_boss == 0xffff){
            return in_battle() && word(enemyID) == boss_id && prev(enemyHP) > 0 && trigger_when(enemyHP == 0)
        }
        else {
            return once(in_battle() && check_enemy_digimon(first_boss)) && trigger_when(prev(enemyHP) > 0 && enemyHP == 0 && word(enemyID) == boss_id)
        }
    }
    else
        return in_battle() && word(enemyID) == boss_id && prev(enemyHP) > 0 && enemyHP == 0
}

function gaia_origin_defeated(){
    logic = story_checkpoints["Gaia Origin Defeated"] == 0 && trigger_when(scan_data_obtainable() == 0x00)
    return logic && once(in_battle() && check_enemy_digimon(gaia_origin_ids[0][0])) && trigger_when(bosses_defeated(gaia_origin_ids[length(gaia_origin_ids) - 1], false))
}

function stat_limits(amount) {
    logic = always_true()

    for i in range (0, 5) {
        current_digimon = first_party_digimon_inbattle + party_digimon_inbattle_offsets["Next Digimon"] * i
        logic = logic && (dword(current_digimon + party_digimon_inbattle_offsets["Max HP"]) <= amount * 10 && dword(current_digimon + party_digimon_inbattle_offsets["Max MP"]) <= amount * 10 && word(current_digimon + party_digimon_inbattle_offsets["Attack"]) <= amount && word(current_digimon + party_digimon_inbattle_offsets["Defense"]) <= amount && word(current_digimon + party_digimon_inbattle_offsets["Spirit"]) <= amount && word(current_digimon + party_digimon_inbattle_offsets["Speed"]) <= amount)
    }

    return logic
}

// check_once is for when specific party is required in a boss rush, so the trigger icon displays properly
function digimon_in_party(digimon_ids, check_once = false) {
    logic = always_true()
    // Needed to be able to check that multiple different Digimon are in the player's party (First check if Digimon 1 is anywhere in the party and && it to the rest of the logic, then do the same for Digimon 2, etc)
    single_digimon_logic = always_false()

    // First, loop to check for each Digimon
    for i in range (0, length(digimon_ids) - 1) {
        single_digimon_logic = always_false()
        // Then, loop to check for each party slot, which should always be the same as the number of Digimon, as they're filled in order
        for j in range (0, length(digimon_ids) - 1) {
            single_digimon_logic = single_digimon_logic || word(first_party_digimon_inbattle + party_digimon_inbattle_offsets["ID"] + party_digimon_inbattle_offsets["Next Digimon"] * j) == digimon_ids[i]
        }
        if(check_once == true){
            single_digimon_logic = once(single_digimon_logic)
        }
        logic = logic && single_digimon_logic
    }

    // If the achievement doesn't ask for a full party, make sure the rest of the slots are empty. Checking the next one in line is enough, since they're populated in order
    if (length(digimon_ids) < 6){
        if(check_once == true){
            logic = logic && once(in_battle() && byte(first_party_digimon_inbattle + party_digimon_inbattle_offsets["Next Digimon"] * length(digimon_ids)) == 0xff)
        }
        else
            logic = logic && (in_battle() && byte(first_party_digimon_inbattle + party_digimon_inbattle_offsets["Next Digimon"] * length(digimon_ids)) == 0xff)
    }

    return logic
}

// Function checks for a single enemy Digimon, multiple digimon not needed
function digimon_defeated(digimon_id) {
    logic_check = always_false()
    // Note: Enemy ID information is an integer that is equivalent to the memory it's stored at to let us do math with it
    //  Enemy HP is a memory address to the graphic data, since it's stored in a different part of memory
    for i in range(0, 4) {
        enemy = first_enemy_digimon + enemy_digimon_info_offsets["Next Digimon"] * i
        enemyID = enemy + enemy_digimon_info_offsets["ID"]
        enemyHP = enemy_hp_graphic_data[i]
        logic_check = logic_check || (word(enemyID) == digimon_id && enemyHP == 0 && prev(enemyHP) > 0)
    }
    return in_battle() && logic_check
}

function has_armored_evolved() {
    logic = always_false()
    digimon_logic = always_true()
    evolution_logic = always_false()
    
    for digimon in armor_evolutions {
        digimon_logic = prev(dword(base_dna_armor_digimon() + digimon_stats_offsets["Species ID"])) == digimon
        for evolution in armor_evolutions[digimon] {
            evolution_logic = evolution_logic || dna_armor_digimon_obtained() == evolution
        }
        logic = logic || (digimon_logic && evolution_logic)
        evolution_logic = always_false()
    }

    return logic && dword(base_dna_armor_digimon() + digimon_stats_offsets["Species ID"]) - dna_armor_digimon_obtained() == 0 && base_dna_armor_digimon() == prev(base_dna_armor_digimon())
}

function has_moves(digimon_address, target_digimon, move_list, last_move_obtainable) {
    prev_logic = always_false()
    logic = always_true()

    move1 = word(digimon_address + digimon_stats_offsets["Move 1"])
    move2 = word(digimon_address + digimon_stats_offsets["Move 2"])
    move3 = word(digimon_address + digimon_stats_offsets["Move 3"])
    move4 = word(digimon_address + digimon_stats_offsets["Move 4"])

    // Make sure the current Digimon is the target Digimon
    logic = logic && word(digimon_address + digimon_stats_offsets["Species ID"]) == target_digimon
    
    // Check whether the Digimon has been evolved last frame. This can always be the last condition to change unless the achievement asks for 4 moves the Digimon can learn
    prev_logic = prev_logic || prev(word(digimon_address + digimon_stats_offsets["Species ID"])) != target_digimon

    // Check that all the moves in the move_list show up in any of the 4 move slots (Works as long as the achievement asks for exactly 4 attacks. For more moves the logic would have to be changed)    
    for move in move_list {
        logic = logic && __ornext(move == move1 || move == move2 || move == move3 || move == move4)
    }

    // Delta check which move was obtained last, if applicable (Only applies to Susanoomon's Glory Thunder in Dusk). Add this check to the previous Digimon species check, as the move could be obtained from another Digimon and then evolved into the target Digimon
    if (last_move_obtainable != 0xffff){
        prev_logic = prev_logic || prev(move1) != last_move_obtainable && prev(move2) != last_move_obtainable && prev(move3) != last_move_obtainable && prev(move4) != last_move_obtainable
    }

    // Return all the delta checks in an ornext chain (so it doesn't generate extra alt groups) and the logic
    return __ornext(prev_logic) && logic
}

function check_digimon_owned(target_digimon) {
    digimon_logic = always_false()
    delta_logic = always_false()
    logic = always_true()

    for digimon in target_digimon {
        digimon_logic = always_false()
        for i in range(0, 39) {
            current_digimon = first_digimon_address + digimon_stats_offsets["Next Digimon"] * i
            current_digimon_species = current_digimon + digimon_stats_offsets["Species ID"]
            digimon_logic = digimon_logic || word(current_digimon_species) == digimon
            //digimon_logic = digimon_logic || (word(current_digimon_species) == digimon && prev(word(current_digimon_species)) != digimon)
        }
        logic = logic && digimon_logic
    }
    
    for i in range(0, 39) {
        delta_logic = delta_logic || word(first_digimon_address + digimon_stats_offsets["Next Digimon"] * i + digimon_stats_offsets["Species ID"]) != prev(word(first_digimon_address + digimon_stats_offsets["Next Digimon"] * i + digimon_stats_offsets["Species ID"]))
    }

    return logic && delta_logic
}

function check_moveset(target_digimon, required_moveset, last_move_obtainable) {
    logic = always_false()

    for i in range(0, 39) {
        current_digimon = first_digimon_address + digimon_stats_offsets["Next Digimon"] * i
        logic = logic || has_moves(current_digimon, target_digimon, required_moveset, last_move_obtainable)
    }

    return logic
}

function count_passwords() {
    return DotShineGreymon_password + legendary_equipment_password + Numemon_password + DotAgumon_password
}

function count_tamer_point_items() {
    return bitcount(tamer_point_rewards_address) - bit0(tamer_point_rewards_address)
}

function check_digimon_max_stats(digimon_address) {
    return __ornext(prev(word(digimon_address + digimon_stats_offsets["Level"])) < 99 || prev(word(digimon_address + digimon_stats_offsets["FND"])) < 100 || prev(word(digimon_address + digimon_stats_offsets["HP"])) < 9999 || prev(word(digimon_address + digimon_stats_offsets["MP"])) < 9999 || prev(word(digimon_address + digimon_stats_offsets["Atk"])) < 999 || prev(word(digimon_address + digimon_stats_offsets["Def"])) < 999 || prev(word(digimon_address + digimon_stats_offsets["Spt"])) < 999 || prev(word(digimon_address + digimon_stats_offsets["Spd"])) < 999) &&
    word(digimon_address + digimon_stats_offsets["Level"]) == 99 && word(digimon_address + digimon_stats_offsets["FND"]) == 100 && word(digimon_address + digimon_stats_offsets["HP"]) == 9999 && word(digimon_address + digimon_stats_offsets["MP"]) == 9999 && word(digimon_address + digimon_stats_offsets["Atk"]) == 999 && word(digimon_address + digimon_stats_offsets["Def"]) == 999 && word(digimon_address + digimon_stats_offsets["Spt"]) == 999 && word(digimon_address + digimon_stats_offsets["Spd"]) == 999
}

function check_all_digimon_max_stats() {
    logic = always_false()
    for i in range (0, 39) {
        logic = logic || check_digimon_max_stats(first_digimon_address + digimon_stats_offsets["Next Digimon"] * i)
    }
    return logic
}

function check_digimon_resistances(digimon_address, resistanceAmount) {
    return __ornext(prev(word(digimon_address + digimon_stats_offsets["Light"])) < resistanceAmount || prev(word(digimon_address + digimon_stats_offsets["Dark"])) < resistanceAmount || prev(word(digimon_address + digimon_stats_offsets["Fire"])) < resistanceAmount || prev(word(digimon_address + digimon_stats_offsets["Earth"])) < resistanceAmount || prev(word(digimon_address + digimon_stats_offsets["Wind"])) < resistanceAmount || prev(word(digimon_address + digimon_stats_offsets["Steel"])) < resistanceAmount || prev(word(digimon_address + digimon_stats_offsets["Water"])) < resistanceAmount || prev(word(digimon_address + digimon_stats_offsets["Thunder"])) < resistanceAmount) &&
    word(digimon_address + digimon_stats_offsets["Light"]) >= resistanceAmount && word(digimon_address + digimon_stats_offsets["Dark"]) >= resistanceAmount && word(digimon_address + digimon_stats_offsets["Fire"]) >= resistanceAmount && word(digimon_address + digimon_stats_offsets["Earth"]) >= resistanceAmount && word(digimon_address + digimon_stats_offsets["Wind"]) >= resistanceAmount && word(digimon_address + digimon_stats_offsets["Steel"]) >= resistanceAmount && word(digimon_address + digimon_stats_offsets["Water"]) >= resistanceAmount && word(digimon_address + digimon_stats_offsets["Thunder"]) >= resistanceAmount
}

function check_all_digimon_resistances(resistanceAmount) {
    logic = always_false()
    for i in range (0, 39) {
        logic = logic || check_digimon_resistances(first_digimon_address + digimon_stats_offsets["Next Digimon"] * i, resistanceAmount)
    }
    return logic
}

function count_farm_boards(digifarm_address) {
    count = 0
    bgm_boards_address = digifarm_address + digifarm_offsets["BGM Boards Bought"]
    terrain_boards_address = digifarm_address + digifarm_offsets["Terrain Boards Bought"]
    for i in range (1, 16) {
        if (i <= 8) {
            count = count + bit(i % 8, bgm_boards_address + i / 8)
        }
        count = count + bit(i % 8, terrain_boards_address + i / 8)
    }
    return count
}

function check_all_digifarm_maxed() {
    owned_last_frame = always_false()
    owned_this_frame = always_true()
    for i in range (0, 3) {
        current_digifarm = first_digifarm_address + digifarm_offsets["Next Digifarm"] * i
        owned_this_frame = owned_this_frame && count_farm_boards(current_digifarm) == 24 && byte(current_digifarm + digifarm_offsets["DPU"]) == 8 && byte(current_digifarm + digifarm_offsets["Memory"]) == 32
        owned_last_frame = owned_last_frame || count_farm_boards(current_digifarm) == 23 || prev(byte(current_digifarm + digifarm_offsets["DPU"])) == 7 || prev(byte(current_digifarm + digifarm_offsets["Memory"])) == 24
    }
    return owned_this_frame && owned_last_frame
}

//////////////////////////////
// - ACHIEVEMENTS CREATION FUNCTION
function create_story_achievement(title, points, quest_number) {
    quest_to_check = quest_list["union" + quest_number]
    achievement(title, format("Complete the \"{0}\" Quest", quest_to_check["Name"]), points, save_protection() && quest_to_check["Last Step"] == 1 && quest_to_check["Reward Claimed"] > prev(quest_to_check["Reward Claimed"]) && prev(active_quest()) == quest_to_check["ID"] && active_quest() == 0xffff)
}

function create_game_beaten_achievement(title, description = "", extra_logic = always_true()) {
    achievement(title, "Defeat the Final Boss and finish the game" + description, 25, save_protection() && game_beaten() && active_quest() == quest_list["union10"]["ID"] && extra_logic)
}

function create_quest_achievement(title, description, points, quest_target){
    achievement(title, description, points, save_protection() && quests_last_step_completed() == quest_target && prev(quests_completed()) == quest_target - 1 && measured(quests_completed() == quest_target))
}

function create_treasure_achievement(location, points, description){
    achievement("Looting " + location, description + location, points, save_protection() && chests_opened(location))
}

function create_digimon_achievement(title, description, points, target_amount, available_in_game = "In-Game", type = "obtained") {
    achievement(title, description, points, save_protection() && prev(count_digimon(digimon_list, available_in_game, type)) == target_amount - 1 && measured(count_digimon(digimon_list, available_in_game, type) == target_amount))
}

function create_free_trial_achievement(pack, pack_digimon) {
    achievement(format("Free Trial of {0}",pack), format("Defeat ???? in Union Room choosing the {0} Pack",pack), 2, save_protection() && bosses_defeated([boss_digimon_ids["????"]], false) && count_digimon(digimon_list) == 5 && count_digimon(pack_digimon) == 4)
}

function create_boss_no_item_challenge_achievement(title, description, points, boss_digimon, boss_area) {
    achievement(title, description, points, (save_protection() && scan_data_obtainable() == 0x00 && bosses_defeated(boss_digimon, true) && no_items_in_battle()) && reset_in_alt(current_screen_ID() != boss_area))
}

function create_giant_boss_no_item_challenge_achievement(title, description, points, boss_digimon, boss_area, first_boss_digimon = 0xffff) {
    // If the battle only takes into account the final boss, make it so the no_items_in_battle limitation only happens during that boss fight
    if (first_boss_digimon == 0xffff){
        achievement(title, description, points, (save_protection() && scan_data_obtainable() == 0x00 && giant_boss_defeated(boss_digimon, true, first_boss_digimon) && no_items_in_battle(boss_digimon)) && reset_in_alt(current_screen_ID() != boss_area))
    }
    else {
        achievement(title, description, points, (save_protection() && scan_data_obtainable() == 0x00 && giant_boss_defeated(boss_digimon, true, first_boss_digimon) && no_items_in_battle()) && reset_in_alt(current_screen_ID() != boss_area))
    }
}

function create_gaia_origin_achievement(title, description, points, extra_logic = always_true(), id = 0) {
    achievement(title, description, points, save_protection() && gaia_origin_defeated() && extra_logic && reset_in_alt(current_screen_ID() != boss_areas["Transfield Boss Area"] && prev(current_screen_ID()) == boss_areas["Transfield Boss Area"]), id)
}

function create_solo_win_achievement(title, description, points, target_digimon, own_digimon) {
    achievement(title, description, points, save_protection() && digimon_defeated(target_digimon) && digimon_in_party(own_digimon))
}

function create_moveset_achievement(title, description, points, target_digimon, required_moveset, last_move_obtainable = 0xffff) {
    achievement(title, description, points, save_protection() && check_moveset(target_digimon, required_moveset, last_move_obtainable))
}

function create_digimon_owned_achievement(title, description, points, target_digimon) {
    achievement(title, description, points, save_protection() && check_digimon_owned(target_digimon))
}

function create_tamer_rank_challenge_achievement(title, points, rank, extra_description = "", extra_logic = always_true()) {
    achievement(title, format("Beat the {0} Tamer Rank fight {1}", rank, extra_description), points, save_protection() && tamer_rank() == tamer_ranks[rank] - 1 && tamer_rank_battle_check(rank) == 0x1 && trigger_when(bosses_defeated(tamer_rank_ids[tamer_ranks[rank] - 1], false)) && extra_logic)
}

function create_tamer_points_rewards_achievement(title, description, num_items){
    achievement(title, description, 1, save_protection() && prev(count_tamer_point_items()) == num_items - 1 && measured(count_tamer_point_items() == num_items))
}


//////////////////////////////
// - ACHIEVEMENTS CREATION
create_story_achievement("Sky High", 5, 2)
create_story_achievement("A Grim Situation", 5, 3)
create_story_achievement("Dizzying Waters", 10, 4)
create_story_achievement("Something's amiss...", 10, 5)
create_story_achievement("An Amazon Encounter", 10, 6)
create_story_achievement("A Thrilling Battle", 10, 7)
create_story_achievement("A Dicy Meeting", 10, 8)
create_story_achievement("Yesterday's Enemies are Today's Allies", 10, 9)
create_game_beaten_achievement("Harmony Restored")
create_game_beaten_achievement("I feel like I'm forgetting something...", " without claiming your Digi-Farm", !digifarm_claimed())
create_story_achievement("Trial of the strongest", 10, 11)

create_quest_achievement("Rookie Helper", "Completed 12 Quests", 5, 12)
create_quest_achievement("Friend of Digimon", "Completed 24 Quests", 5, 24)
create_quest_achievement("Helping Hand of the Tamer Union", "Completed 36 Quests", 10, 36)
create_quest_achievement("Digital World at Peace", "Completed all available Quests", 10, 47)

create_treasure_achievement("Chip Forest", 2, "Open all treasure chests and the gate in ")
create_treasure_achievement("Thriller Ruins", 3, "Open all treasure chests and the gate in ")
create_treasure_achievement("Sunken Tunnel", 2, "Open all treasure chests and the gate, and close all the valves in ")
create_treasure_achievement("Login Mountain", 2, "Open all treasure chests in ")
create_treasure_achievement("Limit Valley", 2, "Open all treasure chests in ")
create_treasure_achievement("Loop Swamp", 2, "Open all treasure chests in ")
create_treasure_achievement("ResistorJungle", 2, "Open all treasure chests and the gate in ")
create_treasure_achievement("Task Canyon", 3, "Open all treasure chests in ")
create_treasure_achievement("Palette Amazon", 3, "Open all treasure chests and the gate in ")
create_treasure_achievement("AccessGlacier", 3, "Open all treasure chests in ")
create_treasure_achievement("Macro Sea", 2, "Open all treasure chests and the gate in ")
create_treasure_achievement("Proxy Island", 3, "Open all treasure chests in ")
create_treasure_achievement("Chaos Brain", 3, "Open all treasure chests in ")
create_treasure_achievement("Transfield", 3, "Open all treasure chests in ")
create_treasure_achievement("HighlightHaven", 3, "Open all treasure chests in ")
create_treasure_achievement("Shadow Abyss", 3, "Open all treasure chests in ")

create_digimon_achievement("Fake Agumon Expert", "Register 100 Digimon in the Digimon Gallery", 5, 100)
create_digimon_achievement("Terriermon Assistant", "Register 200 Digimon in the Digimon Gallery", 10, 200)
create_digimon_achievement("Agumon Expert", "Register 300 Digimon in the Digimon Gallery", 10, 300)
create_digimon_achievement("Digimon Researcher Kogure", "Register all 367 available Digimon in the Digimon Gallery", 25, 367)
create_digimon_achievement("[Special] Researcher of the World of Dusk", "Register all 30 Digimon usually unavailable in Dawn in the Digimon Gallery", 10, 30, "Trade")

create_free_trial_achievement("Balance", ["Agumon", "Salamon", "RiseGreymon", "Angewomon"])
create_free_trial_achievement("Attack", ["Guilmon", "SnowAgumon", "Growlmon", "MegaSeadramon"])
create_free_trial_achievement("Speed", ["Monodramon", "Muchomon", "Airdramon", "Sinduramon"])
create_free_trial_achievement("Japanese", ["Kudamon", "Biyomon", "Reppamon", "Karatenmon"])

create_giant_boss_no_item_challenge_achievement("True Form Revealed", "Defeat Grimmon [No items in battle]", 5, boss_digimon_ids["Grimmon"], boss_areas["Limit Valley Boss Area"])
create_giant_boss_no_item_challenge_achievement("Besting the Wicked Lightning of the Sea", "Defeat WaruSeadramon [No items in battle]", 10, boss_digimon_ids["WaruSeadramon"], boss_areas["Loop Swamp Boss Area"])
create_giant_boss_no_item_challenge_achievement("A Clash of Blades and Fire", "Defeat Spinomon [No items in battle]", 10, boss_digimon_ids["Spinomon"], boss_areas["Palette Amazon Boss Area"])
create_giant_boss_no_item_challenge_achievement("Following the Path of the Samurai", "Defeat Gaiomon in Thriller Ruins [No items in battle]", 10, boss_digimon_ids["Gaiomon"], boss_areas["Thriller Ruins Boss Area"])
create_boss_no_item_challenge_achievement("The Misled Archangel", "Defeat Ophanimon [No items in battle]", 10, [boss_digimon_ids["Ophanimon"]], boss_areas["AccessGlacier Boss Area"])
create_giant_boss_no_item_challenge_achievement("The King of Vampires, Dethroned", "Defeat GranDracmon [No items in battle]", 10, boss_digimon_ids["GranDracmon"], boss_areas["Proxy Island Boss Area"])
create_giant_boss_no_item_challenge_achievement("The Corrupted Gallant Knight", "Defeat ChaosGallantmon Core [No items in battle]", 10, boss_digimon_ids["ChaosGallantmonC"], boss_areas["Darkmoon City Union Room"])
create_giant_boss_no_item_challenge_achievement("The Real Master of Evolution", "Defeat all of the final boss' forms [No items in battle]", 10, boss_digimon_ids["ExoGrimmon"], boss_areas["Chaos Brain Boss Area"], boss_digimon_ids["ChaosGrimmon"])

create_gaia_origin_achievement("Proving your worth", "Defeat the Gaia Origin [No items in battle]", 10, no_items_in_battle(), 368010)
create_gaia_origin_achievement("Light Fang's Strongest Tamer", "Defeat the Gaia Origin with only Apollomon, Seraphimon and ShineGreymon (Burst Mode) in your party", 10, digimon_in_party([digimon_ids["Apollomon"], digimon_ids["Seraphimon"], digimon_ids["ShineGreymonBM"]], true))

// ACHIEVEMENT IDEAS
// Bronze: Flamedramon & Kongoumon
// Silver: Datamon, RedVegiemon and Nanimon, no items
// Gold: Antylamon only
// Platinum: no deaths, no items
// Platinum (Ideal): no deaths, using only Holy/Fire/Water/Wind attacks
// Legend: GallantmonCM, no items
// Legend (Ideal): GallantmonCM, no items, using only Holy/Fire attacks

achievement("Best of the best... almost!", "Achieve Platinum Tamer Rank", 10, save_protection() && tamer_rank() == tamer_ranks["Platinum"] && prev(tamer_rank()) == tamer_ranks["Platinum"] - 1 && current_screen_ID() == boss_areas["Coliseum Battle Area"])
create_story_achievement("[Special] The Birth of a New Legend", 10, 12)
create_tamer_rank_challenge_achievement("Azulongmon would be proud", 10, "Bronze", "with only Flamedramon and Kongoumon in your party", digimon_in_party([digimon_ids["Flamedramon"], digimon_ids["Kongoumon"]]) && current_screen_ID() == boss_areas["Coliseum Battle Area"])
create_tamer_rank_challenge_achievement("Ebonwumon would be proud", 10, "Silver", "with only Datamon, RedVeggiemon and Nanimon in your party [No items in battle]", digimon_in_party([digimon_ids["RedVeggiemon"], digimon_ids["Datamon"], digimon_ids["Nanimon"]]) && no_items_in_battle() && reset_in_alt(current_screen_ID() != boss_areas["Coliseum Battle Area"] && prev(current_screen_ID()) == boss_areas["Coliseum Battle Area"]))
create_tamer_rank_challenge_achievement("Baihumon would be proud", 10, "Gold", "with only Antylamon in your party", digimon_in_party([digimon_ids["Antylamon"]]) && current_screen_ID() == boss_areas["Coliseum Battle Area"])
create_tamer_rank_challenge_achievement("Zhuqiaomon would be proud", 10, "Platinum", "[No deaths in battle, No items in battle]", no_deaths_in_battle() && no_items_in_battle() && reset_in_alt(current_screen_ID() != boss_areas["Coliseum Battle Area"] && prev(current_screen_ID()) == boss_areas["Coliseum Battle Area"]))
create_tamer_rank_challenge_achievement("[Special] Master of the Multiverse", 25, "Legend", "with only Gallantmon (Crimson Mode) in your party [No items in battle]", digimon_in_party([digimon_ids["GallantmonCM"]], true) && no_items_in_battle() && reset_in_alt(current_screen_ID() != boss_areas["Coliseum Battle Area"] && prev(current_screen_ID()) == boss_areas["Coliseum Battle Area"]))

create_solo_win_achievement("Partners Till the End", "Defeat a wild Imperialdramon (Fighter Mode) in Task Canyon with only Coronamon in your party", 10, digimon_ids["ImperialdramonFM"], [digimon_ids["Coronamon"]])
create_solo_win_achievement("GeoGrey Sword!", "Defeat a wild Darkdramon in Access Glacier with only a ShineGreymon in your party", 5, digimon_ids["Darkdramon"], [digimon_ids["ShineGreymon"]])

create_digimon_owned_achievement("[Special] Parallel World Dwellers", "Have Kuramon, Moonmon, Keramon, DotFalcomon, Tsuchidarumon, SkullGreymon, Piedmon and DotMirageGaogamon in your Digimon List", 5, [digimon_ids["Kuramon"], digimon_ids["Moonmon"], digimon_ids["Keramon"], digimon_ids["DotFalcomon"], digimon_ids["Tsuchidarumon"], digimon_ids["SkullGreymon"], digimon_ids["Piedmon"], digimon_ids["DotMirageGaogamon"]])

create_moveset_achievement("I'll become the Digimon Master", "Have a Seadramon with the attacks Blizzard, Mind Reader, Nightmare and Thunder", 25, digimon_ids["Seadramon"], [0x6, 0xa6, 0x88, 0x54])
create_moveset_achievement("KaiserSusanoomon", "Obtain a Susanoomon with the attacks MegaMeteoFall, Royal Blizzard, Beast Whack and Dbl Crescent", 25, digimon_ids["Susanoomon"], [0x2a, 0x7, 0x6e, 0x1a])
create_moveset_achievement("Sin of Wrath: Dawn", "Have a Creepymon with the attacks Raging Flame, Raging Water, Raging Wind and Raging Light", 50, digimon_ids["Creepymon"], [0x93, 0x94, 0x95, 0x92])
create_moveset_achievement("...a new galaxy is born", "Have an Apollomon with the attacks CrazyIceBlast, 01 Crusher, DMag.Square and Demon Slash", 50, digimon_ids["Apollomon"], [0x4, 0x7b, 0x89, 0x83])

create_tamer_points_rewards_achievement("Rewards for a Helpful Tamer", "Get all available Items from Darkdramon", 5)
create_tamer_points_rewards_achievement("[Special] Rewards from Beyond", "Get the final 2 items from Darkdramon usually unavailable in game", 7)

achievement("Digi-Farming is my Passion", "Buy all Expansions and Boards for all 4 of your Digi-Farms", 5, save_protection() && check_all_digifarm_maxed())
achievement("Hacking into the Matrix", "Get all password rewards from Valkyrimon", 1, save_protection() && prev(count_passwords()) == 3 && measured(count_passwords() == 4))
achievement("Phobeus Blow", "Deal 9999 damage in 1 hit", 5, save_protection() && in_battle() && top_damage() == 9999 && prev(top_damage()) < 9999)
achievement("DNA Degeneration Gone Wrong", "DNA Degenerate a Cannondramon with a Monochromon", 5, save_protection() && in_special_evolution_menu() && prev(dword(base_dna_armor_digimon() + digimon_stats_offsets["Species ID"])) == digimon_ids["Cannondramon"] && dword(second_dna_digimon() + digimon_stats_offsets["Species ID"]) == digimon_ids["Monochromon"] && dna_armor_digimon_obtained() == digimon_ids["Myotismon"] && dword(base_dna_armor_digimon() + digimon_stats_offsets["Species ID"]) == digimon_ids["Myotismon"] && base_dna_armor_digimon() == prev(base_dna_armor_digimon()))
// We check the previous frame of the Special Evolution pointer for Armor Evolutions because it changes to 0 when entering the renaming screen (as opposed to DNA evolution, where it remains the same while renaming the Digimon)
achievement("DigiArmor Energize!", "Armor digivolve a Digimon for the first time", 3, save_protection() && in_special_evolution_menu(true) && has_armored_evolved())
achievement("No Time to Waste", "Reach the Boss room during the \"Search the DigiArea\" Quest without going through Access Glacier. [One session, starting from Shine Terminal]", 5, save_protection() && active_quest() == quest_list["union8"]["ID"] && once(prev(current_screen_ID()) == 0xf9 && current_screen_ID() == 0x19b) && trigger_when(current_screen_ID() == 0x197) && unless(once(current_screen_ID() >= 0x18f && current_screen_ID() <= 0x19a && current_screen_ID() != 0x197)) && reset_in_alt(current_screen_ID() == 0xf9)) // 0xf9: Shine Terminal before being fully fixed
achievement("Ultra Training Regimen", "Have a Digimon with max Stats (Level, HP, MP, Attack, Defense, Spirit, Speed, Friendship)", 10, save_protection() && check_all_digimon_max_stats())
achievement("Nothing Can Faze Me!", "Have a Digimon with all resistances at 800 or higher", 25, save_protection() && check_all_digimon_resistances(800))

//unobtainable_digimon_list = ["Chicchimon", "Kuramon", "Calumon", "Tsumemon", "Moonmon", "Keramon", "DotFalcomon", "Lunamon", "Kurisarimon", "Tsuchidarumon", "Lekismon", "SkullGreymon", "Pandamon", "Kimeramon",
// "Crescemon", "ArgomonU", "Piedmon", "Diaboromon", "Armageddemon", "BantyoLeomon", "Apocalymon", "ZeedMillenniummon", "ChaosGallantmon", "Millenniummon", "MoonMillenniummon", "ChronomonHM", "Dianamon", "DotMirageGaogamon",
// "BeelzemonBM", "ArgomonM"]


//////////////////////////////
// - LEADERBOARD CREATION
leaderboard("Fastest Hero", "Beat the game as fast as possible", save_protection() && story_checkpoints["Before Game Beaten"] == 1 && story_checkpoints["Game Beaten"] == 0, !save_protection(), giant_boss_defeated(boss_digimon_ids["ExoGrimmon"]), in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
leaderboard("Fastest Gaia Origin Slayer", "Beat the Gaia Origin as fast as possible", save_protection() && story_checkpoints["Gaia Origin Started"] == 1 && story_checkpoints["Gaia Origin Defeated"] == 0, !save_protection(), digimon_defeated(boss_digimon_ids["GallantmonCM"]), in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
//leaderboard("Professor Kogure Speedrun", "Register all available Digimon in the Digimon Gallery as fast as possible (Trade/Dusk-Exclusive Digimon not required)", save_protection() && prev(count_digimon(digimon_list)) < 367, always_false(), count_digimon(digimon_list) == 367, in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
//leaderboard("True Professor Kogure Speedrun", "Register every Digimon in the Digimon Gallery as fast as possible", save_protection() && prev(count_digimon(digimon_list, "All")) < 397, always_false(), count_digimon(digimon_list, "All") == 397, in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
leaderboard("No Use for Weaklings", "Beat the game registering as few Digimon as possible in the Digimon Gallery", save_protection() && story_checkpoints["Before Game Beaten"] == 1 && story_checkpoints["Game Beaten"] == 0, !save_protection(), giant_boss_defeated(boss_digimon_ids["ExoGrimmon"]), count_digimon(digimon_list, "All"), format = "VALUE", lower_is_better = true)

//////////////////////////////
// - RICH PRESENCE CREATION
characters = {
    0:"",
    1:"0",
    2:"1",
    3:"2",
    4:"3",
    5:"4",
    6:"5",
    7:"6",
    8:"7",
    9:"8",
    0xa:"9",
    0xb:"/",
//    0xc:"%"   // Unselectable
//    0xd:":"   // Unselectable
    0xe:"'",
    0xf:"\"",
    0x10:"·",
    0x11:",",
    0x12:".",
    0x13:"!",
    0x14:"?",
//    0x15:"("   // Unselectable
//    0x16:")"   // Unselectable
//    0x17:"+"   // Unselectable
    0x18:"-",
//    0x19:"="   // Unselectable
    0x20:"A",
    0x21:"B",
    0x22:"C",
    0x23:"D",
    0x24:"E",
    0x25:"F",
    0x26:"G",
    0x27:"H",
    0x28:"I",
    0x29:"J",
    0x2a:"K",
    0x2b:"L",
    0x2c:"M",
    0x2d:"N",
    0x2e:"O",
    0x2f:"P",
    0x30:"Q",
    0x31:"R",
    0x32:"S",
    0x33:"T",
    0x34:"U",
    0x35:"V",
    0x36:"W",
    0x37:"X",
    0x38:"Y",
    0x39:"Z",
    0x3a:"a",
    0x3b:"b",
    0x3c:"c",
    0x3d:"d",
    0x3e:"e",
    0x3f:"f",
    0x40:"g",
    0x41:"h",
    0x42:"i",
    0x43:"j",
    0x44:"k",
    0x45:"l",
    0x46:"m",
    0x47:"n",
    0x48:"o",
    0x49:"p",
    0x4a:"q",
    0x4b:"r",
    0x4c:"s",
    0x4d:"t",
    0x4e:"u",
    0x4f:"v",
    0x50:"w",
    0x51:"x",
    0x52:"y",
    0x53:"z",
//    0x54:"*"   // Unselectable
    0x68:"★",
}

tamer_rank_icons = {
    1:"🥉",
    2:"🥈",
    3:"🥇",
    4:"💎",
    5:"🌠",
}

// function get_player_name() {
//     player_name = []
//     curr_letter = 0
//     for curr_letter in range(0, 5) {
// //    while (word(name_first_letter + curr_letter * 2) != 0xFFFF) {
// //        if (word(name_first_letter + curr_letter * 2) != 0xFFFF) {
//         array_push(player_name, word(name_first_letter + curr_letter * 2))
// //        }
//     }
//     return player_name
// //    return word(name_first_letter) && word(name_first_letter + 2) && word(name_first_letter + 4) && word(name_first_letter + 6) && word(name_first_letter + 8) 
// }

rich_presence_conditional_display(game_state() == 0, "In the Title Screen")
rich_presence_display("{0} {1}{2}{3}{4}{5} is {6} [🔍{7}/397] [🔵{8}/397]",
    rich_presence_lookup("Rank", tamer_rank(), tamer_rank_icons),
    rich_presence_lookup("Letter 1", word(name_first_letter), characters),
    rich_presence_lookup("Letter 2", word(name_first_letter + 2), characters),
    rich_presence_lookup("Letter 3", word(name_first_letter + 4), characters),
    rich_presence_lookup("Letter 4", word(name_first_letter + 6), characters),
    rich_presence_lookup("Letter 5", word(name_first_letter + 8), characters),
    rich_presence_lookup("Location", current_screen_ID(), location_areas, "somewhere in the Digital World"),
    rich_presence_value("Seen", count_digimon(digimon_list, "All", "seen")),
    rich_presence_value("Obtained", count_digimon(digimon_list, "All"))
)