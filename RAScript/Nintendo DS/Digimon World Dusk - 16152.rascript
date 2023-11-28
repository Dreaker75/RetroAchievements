// Digimon World Dusk
// #ID = 16152

// $135BBC: First Unique ID Generated [32 bits]
// $135BC0: Player Name (2 bytes per letter, 12 bytes, with last one being FFFF to mark the end of the string)
name_first_letter = 0x135BC0

// $135BCC: Bits (Game Money) [32 bits] (Max f423f)
// $135BD4: Game Time [32 bits] (Max dbb9fc0 / 999:59:59 hours)
function in_game_time() => dword(0x135BD4)

// $135BE4: Last Unique ID generated [32 bits]
// $135BE8: Party Slots [32 bits] 8 Slots total, from left to right to Relief Digimon. It stores the Digimon's Unique ID.
// $135C10: --------------------------------------------------
//          1st Digimon Info [356 bytes]
//          Unique ID [32 bits]
first_digimon_address = 0x135C10
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

// $135C14: Digimon ID [32 bits]
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

// $135C18: Name (2 bytes per letter, 18 bytes, with last one being FFFF to mark the end of the string)
// $135C2C: Type
//          0x00 = Balance
//          0x01 = Attacker
//          0x02 = Tank
//          0x03 = Technical
//          0x04 = Speed
//          0x05 = HPtype
//          0x06 = MPtype
// $135C2D: Personality
//          0x00 = Lazy
//          0x01 = Energetic
//          0x02 = Scared
//          0x03 = Wild
//          0x04 = Cool
//          0x05 = Prissy
//          0x06 = Obedient
//          0x07 = Graceful
// $135C4C: Current HP [16 bits]
// $135C50: Max HP [16 bits]
// $135C54: Current MP [16 bits]
// $135C56: Max MP [16 bits]
// $135C58: Attack Stat [16 bits]
// $135C5A: Defense Stat [16 bits]
// $135C5C: Spirit Stat [16 bits]
// $135C5E: Speed Stat [16 bits]
// $135C62: Aptitude [16 bits]
// $135C66: 1st Attack ID [16 bits]
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
// $135C68: 2nd Attack ID [16 bits]
//          0xffff = No Attack
// $135C6A: 3rd Attack ID [16 bits]
//          0xffff = No Attack
// $135C6C: 4th Attack ID [16 bits]
//          0xffff = No Attack
// $135C80: Firendship [16 bits]
// $135C86: Level [16 bits]
// $135C88: Holy Species EXP [32 bits]
// $135C8C: Dark Species EXP [32 bits]
// $135C90: Dragon Species EXP [32 bits]
// $135C94: Beast Species EXP [32 bits]
// $135C98: Bird Species EXP [32 bits]
// $135C9C: Machine Species EXP [32 bits]
// $135CA0: Aquan Species EXP [32 bits]
// $135CA4: InsectPlant Species EXP [32 bits]
// $135D74: ----------------------------------------
//          2nd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $135DBC: Attack Stat [16 bits]
// $135DBE: Defense Stat [16 bits]
// $135DC0: Spirit Stat [16 bits]
// $135DC2: Speed Stat [16 bits]
// $135DEA: Level [16 bits]
// $135DEC: Holy Species EXP [32 bits]
// $135DF0: Dark Species EXP [32 bits]
// $135DF4: Dragon Species EXP [32 bits]
// $135DF8: Beast Species EXP [32 bits]
// $135DFC: Bird Species EXP [32 bits]
// $135E00: Machine Species EXP [32 bits]
// $135E04: Aquan Species EXP [32 bits]
// $135E08: InsectPlant Species EXP [32 bits]
// $135ED8: ----------------------------------------
//          3rd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $135F20: Digimon ID [32 bits] - Digimon ?
// $13603C: ----------------------------------------
//          4th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1361A0: ----------------------------------------
//          5th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136304: ----------------------------------------
//          6th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136468: ----------------------------------------
//          7th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1365CC: ----------------------------------------
//          8th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136730: ----------------------------------------
//          9th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136894: ----------------------------------------
//          10th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1369F8: ----------------------------------------
//          11th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136B5C: ----------------------------------------
//          12th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136CC0: ----------------------------------------
//          13th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136E24: ----------------------------------------
//          14th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $136F88: ----------------------------------------
//          15th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1370EC: ----------------------------------------
//          16th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137250: ----------------------------------------
//          17th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1373B4: ----------------------------------------
//          18th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137518: ----------------------------------------
//          19th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13767C: ----------------------------------------
//          20th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1377E0: ----------------------------------------
//          21st Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137944: ----------------------------------------
//          22nd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137AA8: ----------------------------------------
//          23rd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137C0C: ----------------------------------------
//          24th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137D70: ----------------------------------------
//          25th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $137ED4: ----------------------------------------
//          26th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138038: ----------------------------------------
//          27th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13819C: ----------------------------------------
//          28th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138300: ----------------------------------------
//          29th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138464: ----------------------------------------
//          30th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1385C8: ----------------------------------------
//          31st Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13872C: ----------------------------------------
//          32nd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138890: ----------------------------------------
//          33rd Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1389F4: ----------------------------------------
//          34th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138B58: ----------------------------------------
//          35th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138CBC: ----------------------------------------
//          36th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138E20: ----------------------------------------
//          37th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $138F84: ----------------------------------------
//          38th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1390E8: ----------------------------------------
//          39th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $13924C: ----------------------------------------
//          40th Digimon information [356 bytes]
//          Unique ID [32 bits]
// $1393B0: Tamer Rank [32 bits]
//          0x0 = Normal Tamer
//          0x1 = Bronze Tamer
//          0x2 = Silver Tamer
//          0x3 = Gold Tamer
//          0x4 = PlatinumTamer
//          0x5 = Tamer Legend
function tamer_rank() => byte(0x1393B0)
tamer_ranks = {
    "Normal": 0x0,
    "Bronze": 0x1,
    "Silver": 0x2,
    "Gold": 0x3,
    "Platinum": 0x4,
    "Legend": 0x5,
}

// $1393B4: Tamer Points [32 bits]
// $1393BC: 1st Digi-Farm's Unique ID [32 bits]
first_digifarm_address = 0x1393BC
digifarm_offsets = {
    "DPU": 0x23,
    "Memory": 0x24,
    "Terrain Boards Bought": 0x28,
    "BGM Boards Bought": 0x2C,
    "Next Digifarm": 0x78,
}

// $1393C4: 1st Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $1393D8: 1st Digi-Farm's current Terrain Board
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
// $1393D9: 1st Digi-Farm's current BGM Board
//          0x00 = No Board
//          0x01 = Angel Theme
//          0x02 = Devil Theme
//          0x03 = DragonTheme
//          0x04 = Beast Theme
//          0x05 = Bird Theme
//          0x06 = Mech Theme
//          0x07 = Sea Theme
//          0x08 = Forest Theme
// $1393E4: 1st Digi-Farm's Terrain Boards bought [3 bytes]
//          Bit1 = Marble
//          Bit2 = Volcanic
//          Bit3 = Coral
//          Bit4 = Grssland
//          Bit5 = Tropical
//          Bit6 = Machine
//          Bit7 = Desert
// $1393E5: Bit0 = Darkness
//          Bit1 = GlsCstl
//          Bit2 = GlsCrl
//          Bit3 = MgmaCrl
//          Bit4 = MgmaCstl
//          Bit5 = NiteJngl
//          Bit6 = JnglPnel
//          Bit7 = DsrtPnel
// $1393E6: Bit0 = NiteDsrt
// $1393E8: 1st Digi-Farm's BGM Boards bought [16 bits]
//          Bit1 = Angel Theme
//          Bit2 = Devil Theme
//          Bit3 = DragonTheme
//          Bit4 = Beast Theme
//          Bit5 = Bird Theme
//          Bit6 = Mech Theme
//          Bit7 = Sea Theme
// $1393E9: Bit0 = ForestTheme
// $1393EC: 1st Farm Good slot [32 bits] (Uses Unique IDs)
// $13940C: 1st Digimon slot [32 bits] (Uses Unique IDs)
// $13943C: 2nd Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $13945C: 2nd Digi-Farm's Terrain Boards bought [3 bytes]
// $139460: 2nd Digi-Farm's BGM Boards bought [16 bits]
// $1394B4: 3rd Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $1394D4: 3rd Digi-Farm's Terrain Boards bought [3 bytes]
// $1394D8: 3rd Digi-Farm's BGM Boards bought [16 bits]
// $13952C: 4th Digi-Farm's name [4 to 20 bytes]
//          4 bytes per letter, ends in 0xffff. If the name is shorter than 18 bytes, the bytes after 0xffff are stored as 0.
// $13954C: 4th Digi-Farm's Terrain Boards bought [3 bytes]
// $139550: 4th Digi-Farm's BGM Boards bought [16 bits]
// $139A0C: Current Quest [16 bits]
//          Union Quests
//          0x000e = Explore Limit Valley
//          0x000f = Sortie to Loop Swamp
//          0x0010 = Light Fang Assault
//          0x0011 = The Palette Amazon
//          0x0012 = Go to Thriller Ruins
//          0x0013 = Search the DigiArea
//          0x0014 = Merchant of Death
//          0x0015 = The Final Battle
//          0x0016 = Gaia Origin Challenge
//          0x0017 = The Legendary Tamer
//          
//          Dark Quests
//          0x003d = Find the Pink Lipstick
//          0x003e = Refreshing DigiJuice
//          0x003f = Bomber Incident
//          0x0040 = The Balancer
//          0x0041 = The Haunted House
//          0x0042 = Stop the Duel
//          0x0043 = Gorgeous Nuts
//          0x0044 = Cancel the Duel
//          
//          Machine Quests
//          0x0045 = Find the Iron Pillow
//          0x0046 = Water Goggles
//          0x0047 = Digideli-Cake
//          0x0048 = The Magnet Mine
//          0x0049 = ProcessBattle Tourney
//          0x004a = KChessmon's Memory
//          0x004b = The Combat Game
//          0x004c = DigiPendant of Love
//          0x004d = Airdramon's Data
//          
//          Insect/Plant Quests
//          0x004e = Find an L-Mushroom
//          0x004f = Drimogemon the Digger
//          0x0050 = Save Shellmon
//          0x0051 = Loop Swamp Rumor
//          0x0052 = Stop MKabuterimon
//          0x0053 = Tasty Water
//          0x0054 = Minervamon Challenge
//          0x0055 = The Flower Bulb
//          0x0056 = The Stolen Cards
//          
//          Beast Quests
//          0x0057 = Red Shoe Material
//          0x0058 = Interesting DigiComic
//          0x0059 = Apemon's Golden Hair
//          0x005a = The Stolen Awards
//          0x005b = Penguinmon's Lost Item
//          0x005c = The Secret Message
//          0x005d = The Armor Knuckle
//          0x005e = The Ultimate Cuisine
//          0x005f = The 3 Great Demons
//          
//          0xffff = No Quest selected
function active_quest() => word(0x139A0C)

// $139A0E: Max Level [16 bits] (Tamer Info must be opened for this to update)
// $139A12: Top Damage [16 bits] (max 270F)
function top_damage() => word(0x139A12)

// $139A14: Equipment List [3 bytes per equipment * 100 slots]
//          ==========================
//          Unique ID [32 bits]
// $139A18: Equip ID [32 bits]
//          0x0090 = Bronze Blade
//          0x0092 = Gold Blade
//          0x0094 = Kowloon Blade
//          0x0096 = Double Axe
equipment_ids = {
    "Bronze Blade":0x90,
    "Gold Blade":0x92,
    "Kowloon Blade":0x94,
    "Double Axe":0x96,
}

// $139A1C: Equipped Digimon Unique ID [32 bits]
first_equipment_address = 0x139A14
equipment_offsets = {
    "Unique ID": 0x00,
    "ID": 0x04,
    "Digimon ID": 0x08,
    "Next Equipment": 0x0C,
}

// $13A191: Bit1 = Player has done Wireless communications (Unlocks "The Legendary Tamer" Quest)
function connected_wirelessly() => bit1(0x13A191)

// $13A1B7: Event Flags begin here
//          0xc0 = First game scene
// $13A1B8: Bit0 - Bit2 = Events before Kokuwamon fight
//          Bit3 = Kokuwamon defeated
//          Bit4 = Vilemon defeated
//          Bit5 = Before Vilemon double battle
//          Bit6 = Double Vilemon defeated
//          Bit7 = Julia scene in Thriller Ruins
// $13A1B9: Bit0 = Last Thriller Ruins scene
//          Bit1 - Bit4 = Colosseum scenes before Koh's fight
//          Bit5 = Before Koh's fight
//          Bit6 = After Koh's fight
// $13A1BA: Bit0 - Bit2 = Colosseum scenes after Koh's fight
//          Bit3 - Bit4 = Darkmoon City scenes
//          Bit5 - Bit6 = Tamer Home scenes
//          Bit7 = Darkmoon City ??? scenes
// $13A1BB: Bit0 - Bit4 = Darkmoon City ??? scenes
//          Bit5 = Tamer Home scene after ??? appearance
//          Bit6 - Bit7 = Scenes before and after defeating ????
function mysterious_energy_defeated() => bit7(0x13A1BB) == 1

// $13A1BC: Bit6 = Union Room scenes after defeating ????
//          Bit7 = Kapurimon scene before leaving for Sunken Tunnel
// $13A1BD: Bit0 = Scene of Night Crow Tamers heading to Sunken Tunnel
//          Bit1 = First scene in Sunken Tunnel
//          Bit2 - Bit3 = Raremon scenes in Sunken Tunnel
//          Bit5 - Bit7 = All activate upon entering the Union Room after defeating Raremon
// $13A1BF: Bit2 = Explore Limit Valley Quest accepted
//          Bit3 = Quest tutorial scene in Dark Office
//          Bit4 = Quest tutorial scene in Dark Center
//          Bit5 = Explore Limit Valley Quest - Step 1 (Go to Union Room)
//          Bit6 = Defeated Seasarmon, turns off when starting Grimmon fight
//          Bit6 - Bit7 = Grimmon defeated
// $13A1C0: Bit0 = Grimmon defeated
//          Bit4 = Entered Union Room after defeating Grimmon
//          Bit5 = Completed "Explore Limit Valley"
// $13A1C1: Bit6 = "Sortie to Loop Swamp" accepted
//          Bit7 = Entered Union Room
// $13A1C2: Bit0 - Bit1 = SkullBaluchimon defeated
//          Bit2 & Bit6 = Entered Union Room after defeating SkullBaluchimon
//          Bit7 = "Sortie to Loop Swamp" completed
// $13A1C4: Bit2 = "Light Fang Assault" accepted
//          Bit3 = Entered Union Room
//          Bit4 - Bit5 = Defeated Light Fang Tamer in Resistor Jungle
//          Bit6 - Bit7 = Defeated Pulsa in Resistor Jungle
// $13A1C5: Bit0 - Bit1 = Defeated Koh in Resistor Jungle
//          Bit2 = Entered Union Room
//          Bit3 = "Light Fang Assault" completed
// $13A1C6: Bit6 = "The Palette Amazon" accepted
//          Bit7 = Entered Union Room
// $13A1C7: Bit0 = Shine Gate scene
//          Bit1 = Turns on after defeating Fugamon, turns off again after starting the Mercurimon fight
//          Bit1 - Bit3 = Defeated Mercurimon
//          Bit6 = Entered Union Room
//          Bit7 = "The Palette Amazon" completed
// $13A1C9: Bit2 = "Go to Thriller Ruins" accepted
//          Bit3 = Entered Union Room
//          Bit4 = Defeated Tsukaimon, turns off after starting Gaiomon fight
//          Bit4 - Bit6 = Defeated Gaiomon
//          Bit7 = Thriller Ruins scene after Kowloon Co leaves
// $13A1CA: Bit2 = Entered Union Room
//          Bit3 = "Go to Thriller Ruins" completed
// $13A1CB: Bit6 = "Search the DigiArea" accepted
//          Bit7 = Entered Union Room
// $13A1CC: Bit0 = Dark Office scene
//          Bit1 - Bit2 = Tamer Home scenes
//          Bit3 = Access Glacier Boss scene, turns off after starting the ChaosGallantmon fight
//          Bit3 - Bit5 = Defeated ChaosGallantmon
//          Bit6 = Union Room scene
//          Bit7 = "Search the DigiArea" completed
// $13A1CE: Bit2 = "Merchant of Death" accepted
//          Bit3 = Entered Union Room
//          Bit4 = Proxy Island SkullBaluchimon scene
//          Bit5 - Bit6 = Gaiomon defeated
//          Bit7 = Proxy Island boss scene 2
//          Bit5 - Bit7 = Turn off after starting the GranDracmon fight, turn on again after defeating him
proxy_island_gaiomon_defeated = bit5(0x13A1CE)

// $13A1CF: Bit2 = Entered Union Room
//          Bit3 = "Merchant of Death" defeated
// $13A1D0: Bit6 = "The Final Battle" accepted
//          Bit7 = Entered Union Room
// $13A1D1: Bit0 = Dark Office scene
//          Bit1 & Bit2 = Center Bridge scenes
//          Bit4 = Defeated OphanimonC
//          Bit5 = After credits rolled
//          Bit6 = After post credits scene
//          Bit7 = "The Final Battle" completed
// $13A1D3: Bit2 = "Gaia Origin Challenge" accepted
//          Bit3 = Entered Union Room
//          Bit4 = Defeated Gaia Origin
story_checkpoints = {
    "Dark ? Area Restored": bit6(0x13A1C2),
    "Dark 2? Area Restored": bit7(0x13A1C7),
    "Dark 3? Area Restored": bit7(0x13A1CC),
    "Before Game Beaten": bit4(0x13A1D1),
    "Game Beaten": bit5(0x13A1D1),
    "Gaia Origin Started": bit3(0x13A1D3),
    "Gaia Origin Defeated": bit4(0x13A1D3),
}

// $13A1D4: Bit2 = Entered Union Room
//          Bit3 = "Gaia Origin Challenge" completed
// $13A1D5: Bit6 = "The Legendary Tamer" Quest accepted
//          Bit7 = Step 1 (Enter Union Room)
// $13A1D6: Bit0 = Step 2 (Became a Legend Rank Tamer)
//          Bit6 = Enter Union Room after becoming a Legend Rank Tamer
//          Bit7 = "The Legendary Tamer" completed
// $13A20C: Quests Information
//          --------------------------------------
//          Find Tsukaimon - Dark
//          Bit6 = Find Tsukaimon Quest accepted (turning this to 0 doesn't cancel the Quest, that is handled elsewhere)
//          Bit7 = Step 1 (Talked to Pagumon in Dark Plaza)
// $13A20D: Bit5 = Step 2 (Talked to Tsukaimon in Thriller Ruins)
//          Bit6 = Step 3 (Talked to Pagumon in Dark Plaza)
//          Bit7 = Step 4 (Reward claimed) If this bit is on, the Quest registers as cleard and can't be started
//          --------------------------------------------------------------
// $13A20E: --------------------------------------
//          Find the Pink Lipstick - Dark
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Kokomon in Dark Plaza)
//          Bit7 = Step 2 (Defeated Nanimon in Chip Forest)
// $13A20F: Bit0 = Step 3 (Talked to Kokomon in Dark Plaza)
//          Bit1 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Refreshing DigiJuice - Dark
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to Tsukaimon in the farm)
//          Bit4 = Step 2 (Talked to Digitamamon in Thriller Ruins)
//          Bit5 = Step 3 (Get Digian Fruit from Treasure Chest in Thriller Ruins)
// $13A210: Bit1 = Step 4 (Talked to Digitamamon in Thriller Ruins)
//          Bit2 = Step 5 (Talked to Tsukaimon in the farm)
//          Bit3 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Bomber Incident - Dark
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Crescemon in Dark Plaza)
//          Bit6 = Step 2 (Talked to BomberNanimon in Magnet Mine)
// $13A211: Bit3 = Step 3 (Defeated PrinceMamemon in Magnet Mine)
//          Bit4 = Step 4 (Talked to Crescemon in Dark Plaza)
//          Bit5 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Balancer - Dark
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talked to DarkTyrannomon in the farm)
// $13A212: Bit0 = Step 2 (Talked to Machinedramon in ProcessFactory)
//          Bit1 = Step 3 (Talked to Tankmon in ProcessFactory)
//          Bit5 = Step 4 (Defeated Machinedramon in ProcessFactory)
//          Bit6 = Step 5 (Talked to DarkTyrannomon in the farm)
//          Bit7 = Step 6 (Reward claimed)
//          --------------------------------------
// $13A213: --------------------------------------
//          The Haunted House - Dark
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Devimon in Dark Plaza)
//          Bit2 = Step 2 (Defeated Myotismon in Thriller Ruins)
//          Bit7 = Step 3 (Defeated VenomMyotismon in Thriller Ruins)
// $13A214: Bit0 = Step 4 (Talked to Devimon in Dark Plaza)
//          Bit1 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Stop the Duel - Dark
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to Vajramon in the farm)
//          Bit4 = Defeat Mametyramon in AccessGlacier
//          Bit5 = Step 2 (Defeat MetalTyrannomon in AccessGlacier)
//          Bit6 = Step 3 (Talked to ImperialdramonDM in Dark S Area)
// $13A215: Bit1 = Step 4 (Talked to Mametyramon in AccessGlacier)
//          Bit2 = Step 5 (Talked to Vajramon in the farm)
//          Bit3 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Gorgeous Nuts - Dark
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Antylamon in Dark Plaza)
//          Bit6 = Step 2 (Talked to Solarmon in Proxy Island)
//          Bit7 = Step 3 (Talked to Tortamon in Proxy Island)
// $13A216: Bit0 = Step 4 (Defeated Vermilimon in Proxy Island)
//          Bit3 = Step 5 (Talked to Tortamon in Proxy Island)
//          Bit4 = Step 6 (Talked to Antylamon in Dark Plaza)
//          Bit5 = Step 7 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Cancel the Duel - Dark
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Zanbamon in Dark Plaza)
// $13A217: Bit0 = Step 2 (Talked to Devidramon in Shadow Abyss)
//          Bit1 = Step 3 (Talked to SkullGreymon in Shadow Abyss)
//          Bit2 = Step 4 (Defeated DarkLizardmon in Shadow Abyss)
//          Bit3 = Step 5 (Defeated LadyDevimon in Shadow Abyss)
//          Bit5 = Step 6 (Defeated SkullGreymon in Shadow Abyss)
//          Bit6 = Step 7 (Talked to Zanbamon in Dark Plaza)
//          Bit7 = Step 8 (Reward claimed)
//          --------------------------------------
// $13A219: --------------------------------------
//          Find the Iron Pillow - Machine
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talk to Kapurimon in Dark Square)
// $13A21A: Bit1 = Step 2 (Iron Pillow from defeating Gizamon in Sunken Tunnel)
//          Bit2 = Step 3 (Talked to Kapurimon in Dark Square)
//          Bit3 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Water Goggles - Machine
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Guardromon in the farm)
//          Bit6 = Step 2 (Talked to Shurimon in Thriller Ruins)
// $13A21B: Bit3 = Step 3 (Defeated Roachmon in Thriller Ruins)
//          Bit4 = Step 4 (Talked to Guardromon in the farm)
//          Bit5 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Digideli-Cake - Machine
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talk to Kotemon in Dark Square)
// $13A21C: Bit0 = Step 2 (Talked to Sunflowmon in Dark E Area)
//          Bit1 = Step 3 (Defeated Hookmon in Sunken Tunnel)
//          Bit5 = Step 4 (Talked to Sunflowmon in Dark E Area)
//          Bit6 = Step 5 (Talked to Kotemon in Dark Square)
//          Bit7 = Step 6 (Reward claimed)
//          --------------------------------------
// $13A21D: --------------------------------------
//          The Magnet Mine - Machine
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talk to Andromon in the farm)
//          Bit2 = Step 2 (Talked to Researcher in Magnet Mine)
//          Bit3 = Defeated Golemon in Magnet Mine
//          Bit4 = Step 3 (Ancient Key from Treasure Chest in Magnet Mine)
//          Bit7 = Step 4 (Talked to Researcher in Magnet Mine)
// $13A21E: Bit0 = Step 5 (Talk to Andromon in the farm)
//          Bit1 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          ProcessBattle Tourney - Machine
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talk to BishopChessmon in Dark Hall)
//          Bit4 = Step 2 (Talk to BlackRapidmon in ProcessFactory)
//          Bit5 = Step 3 (Defeated Gigadramon in ProcessFactory)
//          Bit6 = Step 4 (Defeated RookChessmon in ProcessFactory)
// $13A21F: Bit1 = Step 5 (Talk to BlackRapidmon in ProcessFactory)
//          Bit2 = Step 6 (Talk to BishopChessmon in Dark Hall)
//          Bit3 = Step 7 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          KChessmon's Memory - Machine
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Mamemon in the farm)
//          Bit6 = Step 2 (Talked to KnightChessmonW in Thriller Ruins)
//          Bit7 = Step 3 (Chess Board from Treasure Chest in Thriller Ruins)
// $13A220: Bit0 = Step 4 (Talked to KnightChessmonW in Thriller Ruins)
//          Bit1 = Step 5 (Defeated KnightChessmonB in Thriller Ruins)
//          Bit3 = Step 6 (Talked to KnightChessmonW in Thriller Ruins)
//          Bit4 = Step 7 (Talked to Mamemon in the farm)
//          Bit5 = Step 8 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Combat Game - Machine
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talked to Megadramon in Dark Hall)
// $13A221: Bit0 = Step 2 (Talked to Vikemon in AccessGlacier)
//          Bit1 = Step 3 (Defeated Zudomon 1 in AccessGlacier)
//          Bit2 = Step 4 (Defeated Zudomon 2 in AccessGlacier)
//          Bit3 = Step 5 (Defeated Zudomon 3 in AccessGlacier)
//          Bit5 = Step 6 (Defeated Vikemon in AccessGlacier)
//          Bit6 = Step 7 (Talked to Megadramon in Dark Hall)
//          Bit7 = Step 8 (Reward claimed)
//          --------------------------------------
// $13A222: --------------------------------------
//          The Combat Game - Machine
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to PrinceMamemon in the farm)
//          Bit2 = Step 2 (Talked to Keramon in Magnet Mine)
//          Bit3 = Step 3 (Defeated Tekkamon in Magnet Mine)
//          Bit7 = Step 4 (Talked to Keramon in Magnet Mine)
// $13A223: Bit0 = Step 5 (Talked to PrinceMamemon in the farm)
//          Bit1 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Airdramon's Data - Machine
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to KingChessmon in the farm)
//          Bit4 = Talked to Piximon in HighlightHaven
//          Bit5 = Talked to Sorcerymon in HighlightHaven
// $13A224: Bit1 = Step 2 (Defeated Phoenixmon in HighlightHaven)
//          Bit2 = Step 3 (Talked to KingChessmon in the farm)
//          Bit3 = Step 4 (Reward claimed)
//          --------------------------------------
// $13A225: --------------------------------------
//          Find an L-Mushroom - Insect/Plant
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talk to Tanemon in Dark Square)
// $13A226: Bit5 = Step 2 (L-Mushroom from Treasure Chest in Chip Forest)
//          Bit6 = Step 3 (Talked to Tanemon in Dark Square)
//          Bit7 = Step 4 (Reward claimed)
//          --------------------------------------
// $13A227: --------------------------------------
//          Drimogemon the Digger - Insect/Plant
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Tentomon in Dark Square)
//          Bit2 = Defeated Drimogemon 1 in Login Mountain
//          Bit3 = Defeated Drimogemon 2 in Login Mountain
//          Bit7 = Step 2 (Defeated Drimogemon 3 in Login Mountain)
// $13A228: Bit0 = Step 3 (Talked to Tentomon in Dark Square)
//          Bit1 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Save Shellmon - Insect/Plant
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to Floramon in the farm)
//          Bit4 = Step 2 (Defeated Shellmon in Loop Swamp)
//          Bit5 = Step 3 (AntidoteFruit from Treasure Chest in Loop Swamp)
// $13A229: Bit1 = Step 4 (Defeated ShogunGekomon in Loop Swamp)
//          Bit2 = Step 5 (Talked to Floramon in the farm)
//          Bit3 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Loop Swamp Rumor - Insect/Plant
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Palmon in Dark Square)
//          Bit6 = Step 2 (Got Katana from Treasure Chest in Loop Swamp)
//          Bit7 = Defeated Kogamon in Loop Swamp
// $13A22A: Bit3 = Step 3 (Defeated Musyamon in Loop Swamp)
//          Bit4 = Step 4 (Talked to Palmon in Dark Square)
//          Bit5 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Stop MKabuterimon - Insect/Plant
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talked to Woodmon in the farm)
// $13A22B: Bit0 = Step 2 (Defeated MegaKabuterimon (Blue) in ResistorJungle)
//          Bit5 = Step 3 (Talked to Sinduramon in ResistorJungle)
//          Bit6 = Step 4 (Talked to Woodmon in the farm)
//          Bit7 = Step 5 (Reward claimed)
//          --------------------------------------
// $13A22C: --------------------------------------
//          Tasty Water - Insect/Plant
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Yanmamon in Dark Square)
//          Bit2 = Step 2 (Talked to ShogunGekomon in Loop Swamp)
//          Bit3 = Step 3 (Get DigiBranch from Treasure Chest in Loop Swamp)
//          Bit7 = Step 4 (Talked to ShogunGekomon in Loop Swamp)
// $13A22D: Bit0 = Step 5 (Talked to Yanmamon in Dark Square)
//          Bit1 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Minervamon Challenge - Insect/Plant
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to Okuwamon in the farm)
//          Bit4 = Step 2 (Talked to Minervamon in Palette Amazon)
//          Bit5 = Step 3 (Defeated Deramon in Palette Amazon)
// $13A22E: Bit1 = Step 4 (Defeated Minervamon in Palette Amazon)
//          Bit2 = Step 5 (Talked to Okuwamon in the farm)
//          Bit3 = Step 6 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Flower Bulb - Insect/Plant
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Snimon in Dark Square)
//          Bit6 = Step 2 (Talked to Gabumon in ResistorJungle)
//          Bit7 = Step 3 (Defeated Woodmon in ResistorJungle)
// $13A22F: Bit0 = Step 4 (Defeated RedVeggiemon in ResistorJungle)
//          Bit1 = Step 5 (Defeated Cherrymon in ResistorJungle)
//          Bit3 = Step 6 (Talked to Lillymon in Dark N Area)
//          Bit4 = Step 7 (Talked to Snimon in Dark Square)
//          Bit5 = Step 8 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Stolen Cards - Insect/Plant
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talked to Lotosmon in Dark Square)
// $13A230: Bit0 = Step 2 (Talked to BlackWarGrowlmon in Shadow Abyss)
//          Bit1 = Step 3 (Talked to Piedmon in Shadow Abyss)
//          Bit2 = Step 4 (Defeated BlackWarGrowlmon in Shadow Abyss)
//          Bit5 = Step 5 (Defeated Piedmon in Shadow Abyss)
//          Bit6 = Step 6 (Talked to Lotosmon in Dark Square)
//          Bit7 = Step 7 (Reward claimed)
//          --------------------------------------
// $13A232: --------------------------------------
//          Red Shoe Material - Beast
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to Armadillomon in Dark Office)
//          Bit4 = Step 2 (Paint Oil in Treasure Chest in Login Mountain)
// $13A233: Bit1 = Step 3 (Bark in Treasure Chest in Login Mountain)
//          Bit2 = Step 4 (Talked to Armadillomon in Dark Office)
//          Bit3 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Interesting DigiComic - Beast
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Ogremon in the farm)
// $13A234: Bit2 = Step 2 (Defeat Kyubimon in Limit Valley)
//          Bit3 = Step 3 (Get DigiComic 2 from Treasure Chest in Limit Valley)
//          Bit4 = Step 4 (Talked to Ogremon in the farm)
//          Bit5 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Apemon's Golden Hair - Beast
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talked to Shamamon in Dark Office)
// $13A235: Bit0 = Step 2 (Talked to Apemon in Limit Valley)
//          Bit1 = Step 3 (Talked to Shamamon in Limit Valley)
//          Bit2 = Step 4 (Defeated Apemon in Limit Valley)
//          Bit3 = Step 5 (Talked to Shamamon in Limit Valley)
//          Bit5 = Step 6 (Talked to Apemon in Limit Valley)
//          Bit6 = Step 7 (Talked to Shamamon in Dark Office)
//          Bit7 = Step 8 (Reward claimed)
//          --------------------------------------
// $13A236: --------------------------------------
//          The Stolen Awards - Beast
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Grizzmon in the farm)
//          Bit2 = Step 2 (Defeated Dokugumon in ResistorJungle)
//          Bit7 = Step 3 (Defeated Arukenimon in ResistorJungle)
// $13A237: Bit0 = Step 4 (Talked to Grizzmon in the farm)
//          Bit1 = Step 5 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          Penguinmon's Lost Item - Beast
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to MachGaogamon in Dark Office)
//          Bit4 = Step 2 (Talked to Muchomon in Palette Amazon)
//          Bit5 = Step 3 (Talked to Penguinmon in Palette Amazon)
//          Bit6 = Step 4 (Defeated Muchomon in Palette Amazon)
// $13A238: Bit1 = Step 5 (Talked to Penguinmon in Palette Amazon)
//          Bit2 = Step 6 (Talked to MachGaogamon in Dark Office)
//          Bit3 = Step 7 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Secret Message - Beast
//          Bit4 = Quest accepted
//          Bit5 = Step 1 (Talked to Leomon in the farm)
// $13A239: Bit3 = Step 2 (Defeated Minervamon in Palette Amazon)
//          Bit4 = Step 3 (Talked to Leomon in the farm)
//          Bit5 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The Armor Knuckle - Beast
//          Bit6 = Quest accepted
//          Bit7 = Step 1 (Talked to GrapLeomon in Dark Office)
// $13A23A: Bit0 = Defeated Mummymon 1 in Thriller Ruins
//          Bit1 = Defeated Mummymon 2 in Thriller Ruins
//          Bit2 = Step 2 (Defeated Mummymon 3 in Thriller Ruins)
//          Bit5 = Step 3 (Defeated Boltmon in Thriller Ruins)
//          Bit6 = Step 4 (Talked to GrapLeomon in Dark Office)
//          Bit7 = Step 5 (Reward claimed)
//          --------------------------------------
// $13A23B: --------------------------------------
//          The Ultimate Cuisine - Beast
//          Bit0 = Quest accepted
//          Bit1 = Step 1 (Talked to Mammothmon in the farm)
//          Bit2 = Defeated Gesomon in Proxy Island
//          Bit7 = Step 2 (Defeated Octomon in Proxy Island)
// $13A23C: Bit0 = Step 3 (Talked to Mammothmon in the farm)
//          Bit1 = Step 4 (Reward claimed)
//          --------------------------------------
//          --------------------------------------
//          The 3 Great Demons - Beast
//          Bit2 = Quest accepted
//          Bit3 = Step 1 (Talked to MegaGargomon in the farm)
//          Bit4 = Defeated Cherubimon (Evil) in HighlightHaven
//          Bit4 = Defeated Creepymon in HighlightHaven
// $13A23D: Bit1 = Step 2 (Defeated Lilithmon in HighlightHaven)
//          Bit2 = Step 3 (Talked to MegaGargomon in the farm)
//          Bit3 = Step 4 (Reward claimed)
//          --------------------------------------
quest_list = {
    "union1" : {"ID":0x000c,"Last Step":bit6(0x13A1BB),"Reward Claimed":bit6(0x13A1BC)},
    "union2" : {"ID":0x000d,"Last Step":bit3(0x13A1BD),"Reward Claimed":bit7(0x13A1BD), "Name":"The Sunken Tunnel"},
    // First 2 Union Quests work differently to the rest as they don't make use of the Quest Counter
    "union3" : {"ID":0x000e,"Last Step":bit4(0x13A1C0),"Reward Claimed":bit5(0x13A1C0), "Name":"Explore Limity Valley"},
    "union4" : {"ID":0x000f,"Last Step":bit6(0x13A1C2),"Reward Claimed":bit7(0x13A1C2), "Name":"Sortie to Loop Swamp"},
    "union5" : {"ID":0x0010,"Last Step":bit2(0x13A1C5),"Reward Claimed":bit3(0x13A1C5), "Name":"Light Fang Assault"},
    "union6" : {"ID":0x0011,"Last Step":bit6(0x13A1C7),"Reward Claimed":bit7(0x13A1C7), "Name":"The Palette Amazon"},
    "union7" : {"ID":0x0012,"Last Step":bit2(0x13A1CA),"Reward Claimed":bit3(0x13A1CA), "Name":"Go to Thriller Ruins"},
    "union8" : {"ID":0x0013,"Last Step":bit6(0x13A1CC),"Reward Claimed":bit7(0x13A1CC), "Name":"Search the DigiArea"},
    "union9" : {"ID":0x0014,"Last Step":bit2(0x13A1CF),"Reward Claimed":bit3(0x13A1CF), "Name":"Merchant of Death"},
    "union10" : {"ID":0x0015,"Last Step":bit6(0x13A1D1),"Reward Claimed":bit7(0x13A1D1), "Name":"The Final Battle"},
    "union11" : {"ID":0x0016,"Last Step":bit2(0x13A1D4),"Reward Claimed":bit3(0x13A1D4), "Name":"Gaia Origin Challenge"},
    "union12" : {"ID":0x0017,"Last Step":bit6(0x13A1D6),"Reward Claimed":bit7(0x13A1D6), "Name":"The Legendary Tamer"},
    "dark1" : {"ID":0x0018,"Last Step":bit6(0x13A20D),"Reward Claimed":bit7(0x13A20D)},
    "dark2" : {"ID":0x0019,"Last Step":bit0(0x13A20F),"Reward Claimed":bit1(0x13A20F)},
    "dark3" : {"ID":0x001a,"Last Step":bit2(0x13A210),"Reward Claimed":bit3(0x13A210)},
    "dark4" : {"ID":0x001b,"Last Step":bit4(0x13A211),"Reward Claimed":bit5(0x13A211)},
    "dark5" : {"ID":0x001c,"Last Step":bit6(0x13A212),"Reward Claimed":bit7(0x13A212)},
    "dark6" : {"ID":0x001d,"Last Step":bit0(0x13A214),"Reward Claimed":bit1(0x13A214)},
    "dark7" : {"ID":0x001e,"Last Step":bit2(0x13A215),"Reward Claimed":bit3(0x13A215)},
    "dark8" : {"ID":0x001f,"Last Step":bit4(0x13A216),"Reward Claimed":bit5(0x13A216)},
    "dark9" : {"ID":0x0020,"Last Step":bit6(0x13A217),"Reward Claimed":bit7(0x13A217)},
    "machine1" : {"ID":0x0021,"Last Step":bit2(0x13A21A),"Reward Claimed":bit3(0x13A21A)},
    "machine2" : {"ID":0x0022,"Last Step":bit4(0x13A21B),"Reward Claimed":bit5(0x13A21B)},
    "machine3" : {"ID":0x0023,"Last Step":bit6(0x13A21C),"Reward Claimed":bit7(0x13A21C)},
    "machine4" : {"ID":0x0024,"Last Step":bit0(0x13A21E),"Reward Claimed":bit1(0x13A21E)},
    "machine5" : {"ID":0x0025,"Last Step":bit2(0x13A21F),"Reward Claimed":bit3(0x13A21F)},
    "machine6" : {"ID":0x0026,"Last Step":bit4(0x13A220),"Reward Claimed":bit5(0x13A220)},
    "machine7" : {"ID":0x0027,"Last Step":bit6(0x13A221),"Reward Claimed":bit7(0x13A221)},
    "machine8" : {"ID":0x0028,"Last Step":bit0(0x13A223),"Reward Claimed":bit1(0x13A223)},
    "machine9" : {"ID":0x0029,"Last Step":bit2(0x13A224),"Reward Claimed":bit3(0x13A224)},
    "insect/plant1" : {"ID":0x002a,"Last Step":bit6(0x13A226),"Reward Claimed":bit7(0x13A226)},
    "insect/plant2" : {"ID":0x002b,"Last Step":bit0(0x13A228),"Reward Claimed":bit1(0x13A228)},
    "insect/plant3" : {"ID":0x002c,"Last Step":bit2(0x13A229),"Reward Claimed":bit3(0x13A229)},
    "insect/plant4" : {"ID":0x002d,"Last Step":bit4(0x13A22A),"Reward Claimed":bit5(0x13A22A)},
    "insect/plant5" : {"ID":0x002e,"Last Step":bit6(0x13A22B),"Reward Claimed":bit7(0x13A22B)},
    "insect/plant6" : {"ID":0x002f,"Last Step":bit0(0x13A22D),"Reward Claimed":bit1(0x13A22D)},
    "insect/plant7" : {"ID":0x0030,"Last Step":bit2(0x13A22E),"Reward Claimed":bit3(0x13A22E)},
    "insect/plant8" : {"ID":0x0031,"Last Step":bit4(0x13A22F),"Reward Claimed":bit5(0x13A22F)},
    "insect/plant9" : {"ID":0x0032,"Last Step":bit6(0x13A230),"Reward Claimed":bit7(0x13A230)},
    "beast1" : {"ID":0x0033,"Last Step":bit2(0x13A233),"Reward Claimed":bit3(0x13A233)},
    "beast2" : {"ID":0x0034,"Last Step":bit4(0x13A234),"Reward Claimed":bit5(0x13A234)},
    "beast3" : {"ID":0x0035,"Last Step":bit6(0x13A235),"Reward Claimed":bit7(0x13A235)},
    "beast4" : {"ID":0x0036,"Last Step":bit0(0x13A237),"Reward Claimed":bit1(0x13A237)},
    "beast5" : {"ID":0x0037,"Last Step":bit2(0x13A238),"Reward Claimed":bit3(0x13A238)},
    "beast6" : {"ID":0x0038,"Last Step":bit4(0x13A239),"Reward Claimed":bit5(0x13A239)},
    "beast7" : {"ID":0x0039,"Last Step":bit6(0x13A23A),"Reward Claimed":bit7(0x13A23A)},
    "beast8" : {"ID":0x003a,"Last Step":bit0(0x13A23C),"Reward Claimed":bit1(0x13A23C)},
    "beast9" : {"ID":0x003b,"Last Step":bit2(0x13A23D),"Reward Claimed":bit3(0x13A23D)},
}

// $13A279: Digimons obtained [64 bytes] (Bitflags, align with Digimon IDs)
// $13A282: Bit0 = Chicchimon
//          Bit1 = Koromon
//          Bit2 = Tsunomon
//          Bit3 = Poyomon
//          Bit4 = Tokomon
//          Bit5 = Tanemon
//          Bit6 = Pagumon
//          Bit7 = Kapurimon
// $13A283: Bit0 = Kuramon
//          Bit1 = Puttimon
//          Bit2 = Chibomon
//          Bit3 = Dorimon
//          Bit4 = Calumon
//          Bit5 = Gigimon
//          Bit6 = Gummymon
//          Bit7 = Kokomon
// $13A284: Bit0 = Tsumemon
//          Bit1 = Minomon
//          Bit2 = Wanyamon
//          Bit3 = Budmon
//          Bit4 = Botamon
//          Bit5 = Sunmon
//          Bit6 = Moonmon
// $13A286: Bit0 = Monodramon
//          Bit1 = Agumon
//          Bit2 = Veemon
//          Bit3 = Guilmon
//          Bit4 = Dorumon
//          Bit5 = Betamon
//          Bit6 = Gabumon
//          Bit7 = Patamon
// $13A287: Bit0 = Biyomon
//          Bit1 = Palmon
//          Bit2 = Tentomon
//          Bit3 = Gotsumon
//          Bit4 = Otamamon
//          Bit5 = Gomamon
//          Bit6 = Tapirmon
//          Bit7 = DemiDevimon
// $13A288: Bit0 = ToyAgumon
//          Bit1 = Hagurumon
//          Bit2 = Salamon
//          Bit3 = Wormmon
//          Bit4 = Hawkmon
//          Bit5 = Armadillomon
//          Bit6 = Terriermon
//          Bit7 = Lopmon
// $13A289: Bit0 = Renamon
//          Bit1 = Impmon
//          Bit2 = Keramon
//          Bit3 = Falcomon
//          Bit4 = Penguinmon
//          Bit5 = Goburimon
//          Bit6 = Kumamon
//          Bit7 = Kotemon
// $13A28A: Bit0 = Shamamon
//          Bit1 = SnowGoburimon
//          Bit2 = Syakomon
//          Bit3 = SnowAgumon
//          Bit4 = BlackAgumon
//          Bit5 = Muchomon
//          Bit6 = Crabmon
//          Bit7 = Floramon
// $13A28B: Bit0 = Gizamon
//          Bit1 = Lalamon
//          Bit2 = Aruraumon
//          Bit3 = ToyAgumon (Black)
//          Bit4 = Tsukaimon
//          Bit5 = PawnChessmon (Black)
//          Bit6 = Gaomon
//          Bit7 = DotFalcomon
// $13A28C: Bit0 = Kudamon
//          Bit1 = Kamemon
//          Bit2 = Dracmon
//          Bit3 = PawnChessmon (White)
//          Bit4 = DotAgumon
//          Bit5 = Kunemon
//          Bit6 = Mushroomon
//          Bit7 = Solarmon
// $13A28D: Bit0 = Candlemon
//          Bit1 = Kokuwamon
//          Bit2 = DoKunemon
//          Bit3 = Coronamon
//          Bit4 = Lunamon
// $13A28E: Bit7 = Mekanorimon
// $13A28F: Bit0 = Greymon
//          Bit1 = Tyrannomon
//          Bit2 = Devimon
//          Bit3 = Airdramon
//          Bit4 = Seadramon
//          Bit5 = Numemon
//          Bit6 = Kabuterimon
//          Bit7 = Garurumon
// $13A290: Bit0 = Angemon
//          Bit1 = Veggiemon
//          Bit2 = Ogremon
//          Bit3 = Bakemon
//          Bit4 = Sukamon
//          Bit5 = Kokatorimon
//          Bit6 = Leomon
//          Bit7 = Kuwagamon
// $13A291: Bit0 = Raremon
//          Bit2 = Gekomon
//          Bit3 = Gatomon
//          Bit4 = Wizardmon
//          Bit5 = Togemon
//          Bit6 = Guardromon
//          Bit7 = ExVeemon
// $13A292: Bit0 = Stingmon
//          Bit1 = Birdramon
//          Bit2 = Ankylomon
//          Bit3 = Gargomon
//          Bit4 = Growlmon
//          Bit5 = Kyubimon
//          Bit6 = Kurisarimon
//          Bit7 = Seasarmon
// $13A293: Bit0 = Vilemon
//          Bit1 = Aquilamon
//          Bit2 = Roachmon
//          Bit3 = Dinohumon
//          Bit4 = Hookmon
//          Bit5 = Grizzmon
//          Bit6 = Dorugamon
//          Bit7 = Reptiledramon
// $13A294: Bit0 = Apemon
//          Bit1 = Starmon
//          Bit2 = BomberNanimon
//          Bit3 = Kiwimon
//          Bit4 = Unimon
//          Bit5 = Sorcerymon
//          Bit6 = DarkTyrannomon
//          Bit7 = Akatorimon
// $13A295: Bit0 = PlatinumSukamon
//          Bit1 = Ikkakumon
//          Bit2 = Minotarumon
//          Bit3 = Icemon
//          Bit4 = DarkLizardmon
//          Bit5 = Flarerizamon
//          Bit6 = GeoGreymon
//          Bit7 = Gaogamon
// $13A296: Bit0 = Diatrymon
//          Bit1 = Reppamon
//          Bit2 = Sunflowmon
//          Bit3 = Gawappamon
//          Bit4 = Sangloupmon
//          Bit5 = Peckmon
//          Bit6 = Drimogemon
//          Bit7 = NiseDrimogemon
// $13A297: Bit0 = MoriShellmon
//          Bit1 = Wendigomon
//          Bit2 = Fugamon
//          Bit3 = Tsuchidarumon
//          Bit4 = Tortamon
//          Bit5 = Ebidramon
//          Bit6 = Octomon
//          Bit7 = Gesomon
// $13A298: Bit0 = Coelamon
//          Bit1 = Shellmon
//          Bit2 = Frigimon
//          Bit3 = Geremon
//          Bit4 = Hyogamon
//          Bit5 = KaratsukiNumemon
//          Bit6 = IceDevimon
//          Bit7 = Dolphmon
// $13A299: Bit0 = Saberdramon
//          Bit1 = Woodmon
//          Bit2 = Snimon
//          Bit3 = Flymon
//          Bit4 = Yanmamon
//          Bit5 = SandYanmamon
//          Bit6 = RedVeggiemon
//          Bit7 = Weedmon
// $13A29A: Bit0 = Ninjamon
//          Bit1 = Kogamon
//          Bit2 = Omekamon
//          Bit3 = Clockmon
//          Bit4 = Thunderballmon
//          Bit5 = Tankmon
//          Bit6 = Nanimon
//          Bit7 = Golemon
// $13A29B: Bit0 = Monochromon
//          Bit1 = Mojyamon
//          Bit2 = JungleMojyamon
//          Bit3 = Deputymon
//          Bit4 = Centarumon
//          Bit5 = Devidramon
//          Bit6 = Dokugumon
//          Bit7 = Veedramon
// $13A29C: Bit0 = Musyamon
//          Bit1 = KnightChessmon (White)
//          Bit2 = KnightChessmon (Black)
//          Bit3 = Firamon
//          Bit4 = Lekismon
// $13A29D: Bit7 = Volcanomon
// $13A29E: Bit0 = MetalGreymon
//          Bit1 = Monzaemon
//          Bit2 = SkullGreymon
//          Bit3 = MetalMamemon
//          Bit4 = Andromon
//          Bit5 = Etemon
//          Bit6 = Megadramon
//          Bit7 = Piximon
// $13A29F: Bit0 = Digitamamon
//          Bit1 = Mammothmon
//          Bit2 = MegaKabuterimon (Blue)
//          Bit3 = Okuwamon
//          Bit4 = ShogunGekomon
//          Bit5 = Angewomon
//          Bit6 = Tylomon
//          Bit7 = Scorpiomon
// $13A2A0: Bit0 = MegaSeadramon
//          Bit1 = Dragomon
//          Bit2 = WereGarurumon (Black)
//          Bit3 = WereGarurumon (Blue)
//          Bit4 = Myotismon
//          Bit5 = LadyDevimon
//          Bit6 = Garudamon
//          Bit7 = Blossomon
// $13A2A1: Bit0 = Lillymon
//          Bit1 = MegaKabuterimon (Red)
//          Bit2 = Datamon
//          Bit3 = Cyberdramon
//          Bit4 = MagnaAngemon
//          Bit5 = Paildramon
//          Bit6 = Dinobeemon
//          Bit7 = Antylamon
// $13A2A2: Bit0 = Arukenimon
//          Bit1 = Mummymon
//          Bit2 = WarGrowlmon
//          Bit3 = Rapidmon
//          Bit4 = Taomon
//          Bit5 = Parrotmon
//          Bit6 = Infermon
//          Bit7 = BlackRapidmon
// $13A2A3: Bit0 = Pandamon
//          Bit1 = MarineDevimon
//          Bit2 = Karatenmon
//          Bit3 = Kyukimon
//          Bit4 = Sinduramon
//          Bit5 = Pipismon
//          Bit6 = DoruGreymon
//          Bit7 = Divermon
// $13A2A4: Bit0 = Kimeramon
//          Bit1 = Triceramon
//          Bit2 = Deramon
//          Bit3 = Silphymon
//          Bit4 = SuperStarmon
//          Bit5 = BlackWarGrowlmon
//          Bit6 = Zudomon
//          Bit7 = Whamon
// $13A2A5: Bit0 = Mamemon
//          Bit1 = Toucanmon
//          Bit2 = Owlmon
//          Bit3 = Meteormon
//          Bit4 = Gigadramon
//          Bit5 = RiseGreymon
//          Bit6 = MachGaogamon
// $13A2A6: Bit0 = Tyilinmon
//          Bit1 = Lilamon
//          Bit2 = Shadramon
//          Bit3 = Matadormon
//          Bit4 = Kabukimon
//          Bit5 = Cherrymon
//          Bit6 = Garbagemon
//          Bit7 = Lucemon (Chaos Mode)
// $13A2A7: Bit0 = Mametyramon
//          Bit1 = Giromon
//          Bit2 = Vademon
//          Bit3 = MetalTyrannomon
//          Bit4 = Tekkamon
//          Bit5 = BigMamemon
//          Bit6 = EXTyrannomon
//          Bit7 = Vermilimon
// $13A2A8: Bit0 = Phantomon
//          Bit1 = Vajramon
//          Bit2 = AeroVeedramon
//          Bit3 = GrapLeomon
//          Bit4 = Knightmon
//          Bit5 = Brachiomon
//          Bit6 = Allomon
//          Bit7 = Lynxmon
// $13A2A9: Bit0 = Shaujinmon
//          Bit1 = Yatagaramon
//          Bit2 = BishopChessmon
//          Bit3 = RookChessmon
//          Bit4 = Flaremon
//          Bit5 = Crescemon
//          Bit6 = Flamedramon
//          Bit7 = Magnamon
// $13A2AA: Bit0 = Prairiemon
//          Bit1 = Kongoumon
//          Bit2 = Seahomon
//          Bit3 = Shurimon
//          Bit4 = Kenkimon
//          Bit5 = Ponchomon
//          Bit6 = Argomon (Ultimate)
//          Bit7 = Shakkoumon
// $13A2AC: Bit0 = Lampmon
//          Bit1 = HerculesKabuterimon
//          Bit2 = SaberLeomon
//          Bit3 = MetalEtemon
//          Bit4 = MarineAngemon
//          Bit5 = GigaSeadramon
//          Bit6 = Piedmon
//          Bit7 = Creepymon
// $13A2AD: Bit0 = Phoenixmon
//          Bit1 = Puppetmon
//          Bit2 = Rosemon
//          Bit3 = WarGreymon
//          Bit4 = MetalGarurumon
//          Bit5 = Machinedramon
//          Bit6 = VenomMyotismon
//          Bit7 = Omnimon
// $13A2AE: Bit0 = Imperialdramon (Dragon Mode)
//          Bit1 = Imperialdramon (Fighter Mode)
//          Bit2 = Imperialdramon (Paladin Mode)
//          Bit3 = Ghoulmon
//          Bit4 = Seraphimon
//          Bit5 = HiAndromon
//          Bit6 = Devitamamon
//          Bit7 = Cherubimon (Good)
// $13A2AF: Bit0 = Cherubimon (Evil)
//          Bit1 = Gallantmon
//          Bit2 = Gallantmon (Crimson Mode)
//          Bit3 = MegaGargomon
//          Bit4 = Sakuyamon
//          Bit5 = Diaboromon
//          Bit6 = Neptunmon
//          Bit7 = Pukumon
// $13A2B0: Bit0 = Gryphonmon
//          Bit1 = Preciomon
//          Bit2 = Armageddemon
//          Bit3 = MaloMyotismon
//          Bit4 = Imperialdramon (Dragon Mode) (Black)
//          Bit5 = Boltmon
//          Bit6 = PrinceMamemon
//          Bit7 = Ophanimon
// $13A2B1: Bit0 = Zanbamon
//          Bit1 = BlackMegaGargomon
//          Bit2 = Jijimon
//          Bit3 = Babamon
//          Bit4 = Anubismon
//          Bit5 = Parasimon
//          Bit6 = Cannondramon
//          Bit7 = SlashAngemon
// $13A2B2: Bit0 = Eaglemon
//          Bit1 = Dorugoramon
//          Bit2 = Beelzemon
//          Bit3 = BantyoLeomon
//          Bit4 = Darkdramon
//          Bit5 = Apocalymon
//          Bit6 = Ebemon
//          Bit7 = Gulfmon
// $13A2B3: Bit0 = Goldramon
//          Bit1 = ZeedMillenniumon
//          Bit2 = Ghoulmon (Black)
//          Bit3 = Kuzuhamon
//          Bit4 = ChaosGallantmon
//          Bit5 = MetalSeadramon
//          Bit6 = Valkyrimon
//          Bit7 = Justimon
// $13A2B4: Bit0 = Vikemon
//          Bit1 = BlackWarGreymon
//          Bit2 = SkullMammothmon
//          Bit3 = GranKuwagamon
//          Bit4 = Pharaohmon
//          Bit5 = Susanoomon
//          Bit6 = Alphamon
//          Bit7 = Magnadramon
// $13A2B5: Bit0 = Millenniumon
//          Bit1 = MoonMillenniumon
//          Bit2 = Megidramon
//          Bit3 = Sleipmon
//          Bit4 = ShineGreymon
//          Bit5 = MirageGaogamon
//          Bit6 = JumboGamemon
//          Bit7 = Ravemon
// $13A2B6: Bit0 = QueenChessmon
//          Bit1 = KingChessmon
//          Bit2 = Chronomon (Holy Mode)
//          Bit3 = Lilithmon
//          Bit4 = Varodurumon
//          Bit5 = Apollomon
//          Bit6 = Dianamon
//          Bit7 = ShineGreymon (Burst Mode)
// $13A2B7: Bit0 = ShineGreymon (Ruin Mode)
//          Bit1 = MirageGaogamon (Burst Mode)
//          Bit2 = Ravemon (Burst Mode)
//          Bit3 = Lotosmon
//          Bit4 = DotShineGreymon
//          Bit5 = DotMirageGaogamon
//          Bit6 = Beelzemon (Burst Mode)
//          Bit7 = Rosemon (Burst Mode)
// $13A2B8: Bit0 = Argomon (Mega)
//          Bit1 = Minervamon
//          Bit2 = Duftmon
//          Bit3 = Chaosmon
//          ----------------------------------------------------------------
//          Digimons seen [63 bytes] (Bitflags, aligns with Digimon IDs)
//          Starts from Bit4
// $13A2C0: Bit4 = Chicchimon
//          Bit5 = Koromon
//          Bit6 = Tsunomon
//          Bit7 = Poyomon
// $13A2C1: Bit0 = Tokomon
//          Bit1 = Tanemon
//          Bit2 = Pagumon
//          Bit3 = Kapurimon
//          Bit4 = Kuramon
//          Bit5 = Puttimon
//          Bit6 = Chibomon
//          Bit7 = Dorimon
// $13A2C2: Bit0 = Calumon
//          Bit1 = Gigimon
//          Bit2 = Gummymon
//          Bit3 = Kokomon
//          Bit4 = Tsumemon
//          Bit5 = Minomon
//          Bit6 = Wanyamon
//          Bit7 = Budmon
// $13A2C3: Bit0 = Botamon
//          Bit1 = Sunmon
//          Bit2 = Moonmon
// $13A2C4: Bit4 = Monodramon
//          Bit5 = Agumon
//          Bit6 = Veemon
//          Bit7 = Guilmon
// $13A2C5: Bit0 = Dorumon
//          Bit1 = Betamon
//          Bit2 = Gabumon
//          Bit3 = Patamon
//          Bit4 = Biyomon
//          Bit5 = Palmon
//          Bit6 = Tentomon
//          Bit7 = Gotsumon
// $13A2C6: Bit0 = Otamamon
//          Bit1 = Gomamon
//          Bit2 = Tapirmon
//          Bit3 = DemiDevimon
//          Bit4 = ToyAgumon
//          Bit5 = Hagurumon
//          Bit6 = Salamon
//          Bit7 = Wormmon
// $13A2C7: Bit0 = Hawkmon
//          Bit1 = Armadillomon
//          Bit2 = Terriermon
//          Bit3 = Lopmon
//          Bit4 = Renamon
//          Bit5 = Impmon
//          Bit6 = Keramon
//          Bit7 = Falcomon
// $13A2C8: Bit0 = Penguinmon
//          Bit1 = Goburimon
//          Bit2 = Kumamon
//          Bit3 = Kotemon
//          Bit4 = Shamamon
//          Bit5 = SnowGoburimon
//          Bit6 = Syakomon
//          Bit7 = SnowAgumon
// $13A2C9: Bit0 = BlackAgumon
//          Bit1 = Muchomon
//          Bit2 = Crabmon
//          Bit3 = Floramon
//          Bit4 = Gizamon
//          Bit5 = Lalamon
//          Bit6 = Aruraumon
//          Bit7 = ToyAgumon (Black)
// $13A2CA: Bit0 = Tsukaimon
//          Bit1 = PawnChessmon (Black)
//          Bit2 = Gaomon
//          Bit3 = DotFalcomon
//          Bit4 = Kudamon
//          Bit5 = Kamemon
//          Bit6 = Dracmon
//          Bit7 = PawnChessmon (White)
// $13A2CB: Bit0 = DotAgumon
//          Bit1 = Kunemon
//          Bit2 = Mushroomon
//          Bit3 = Solarmon
//          Bit4 = Candlemon
//          Bit5 = Kokuwamon
//          Bit6 = DoKunemon
//          Bit7 = Coronamon
// $13A2CC: Bit0 = Lunamon
// $13A2CD: Bit3 = Mekanorimon
//          Bit4 = Greymon
//          Bit5 = Tyrannomon
//          Bit6 = Devimon
//          Bit7 = Airdramon
// $13A2CE: Bit0 = Seadramon
//          Bit1 = Numemon
//          Bit2 = Kabuterimon
//          Bit3 = Garurumon
//          Bit4 = Angemon
//          Bit5 = Veggiemon
//          Bit6 = Ogremon
//          Bit7 = Bakemon
// $13A2CF: Bit0 = Sukamon
//          Bit1 = Kokatorimon
//          Bit2 = Leomon
//          Bit3 = Kuwagamon
//          Bit4 = Raremon
//          Bit6 = Gekomon
//          Bit7 = Gatomon
// $13A2D0: Bit0 = Wizardmon
//          Bit1 = Togemon
//          Bit2 = Guardromon
//          Bit3 = ExVeemon
//          Bit4 = Stingmon
//          Bit5 = Birdramon
//          Bit6 = Ankylomon
//          Bit7 = Gargomon
// $13A2D1: Bit0 = Growlmon
//          Bit1 = Kyubimon
//          Bit2 = Kurisarimon
//          Bit3 = Seasarmon
//          Bit4 = Vilemon
//          Bit5 = Aquilamon
//          Bit6 = Roachmon
//          Bit7 = Dinohumon
// $13A2D2: Bit0 = Hookmon
//          Bit1 = Grizzmon
//          Bit2 = Dorugamon
//          Bit3 = Reptiledramon
//          Bit4 = Apemon
//          Bit5 = Starmon
//          Bit6 = BomberNanimon
//          Bit7 = Kiwimon
// $13A2D3: Bit0 = Unimon
//          Bit1 = Sorcerymon
//          Bit2 = DarkTyrannomon
//          Bit3 = Akatorimon
//          Bit4 = PlatinumSukamon
//          Bit5 = Ikkakumon
//          Bit6 = Minotarumon
//          Bit7 = Icemon
// $13A2D4: Bit0 = DarkLizardmon
//          Bit1 = Flarerizamon
//          Bit2 = GeoGreymon
//          Bit3 = Gaogamon
//          Bit4 = Diatrymon
//          Bit5 = Reppamon
//          Bit6 = Sunflowmon
//          Bit7 = Gawappamon
// $13A2D5: Bit0 = Sangloupmon
//          Bit1 = Peckmon
//          Bit2 = Drimogemon
//          Bit3 = NiseDrimogemon
//          Bit4 = MoriShellmon
//          Bit5 = Wendigomon
//          Bit6 = Fugamon
//          Bit7 = Tsuchidarumon
// $13A2D6: Bit0 = Tortamon
//          Bit1 = Ebidramon
//          Bit2 = Octomon
//          Bit3 = Gesomon
//          Bit4 = Coelamon
//          Bit5 = Shellmon
//          Bit6 = Frigimon
//          Bit7 = Geremon
// $13A2D7: Bit0 = Hyogamon
//          Bit1 = KaratsukiNumemon
//          Bit2 = IceDevimon
//          Bit3 = Dolphmon
//          Bit4 = Saberdramon
//          Bit5 = Woodmon
//          Bit6 = Snimon
//          Bit7 = Flymon
// $13A2D8: Bit0 = Yanmamon
//          Bit1 = SandYanmamon
//          Bit2 = RedVeggiemon
//          Bit3 = Weedmon
//          Bit4 = Ninjamon
//          Bit5 = Kogamon
//          Bit6 = Omekamon
//          Bit7 = Clockmon
// $13A2D9: Bit0 = Thunderballmon
//          Bit1 = Tankmon
//          Bit2 = Nanimon
//          Bit3 = Golemon
//          Bit4 = Monochromon
//          Bit5 = Mojyamon
//          Bit6 = JungleMojyamon
//          Bit7 = Deputymon
// $13A2DA: Bit0 = Centarumon
//          Bit1 = Devidramon
//          Bit2 = Dokugumon
//          Bit3 = Veedramon
//          Bit4 = Musyamon
//          Bit5 = KnightChessmon (White)
//          Bit6 = KnightChessmon (Black)
//          Bit7 = Firamon
// $13A2DB: Bit0 = Lekismon
// $13A2DC: Bit3 = Volcanomon
//          Bit4 = MetalGreymon
//          Bit5 = Monzaemon
//          Bit6 = SkullGreymon
//          Bit7 = MetalMamemon
// $13A2DD: Bit0 = Andromon
//          Bit1 = Etemon
//          Bit2 = Megadramon
//          Bit3 = Piximon
//          Bit4 = Digitamamon
//          Bit5 = Mammothmon
//          Bit6 = MegaKabuterimon (Blue)
//          Bit7 = Okuwamon
// $13A2DE: Bit0 = ShogunGekomon
//          Bit1 = Angewomon
//          Bit2 = Tylomon
//          Bit3 = Scorpiomon
//          Bit4 = MegaSeadramon
//          Bit5 = Dragomon
//          Bit6 = WereGarurumon (Black)
//          Bit7 = WereGarurumon (Blue)
// $13A2DF: Bit0 = Myotismon
//          Bit1 = LadyDevimon
//          Bit2 = Garudamon
//          Bit3 = Blossomon
//          Bit4 = Lillymon
//          Bit5 = MegaKabuterimon (Red)
//          Bit6 = Datamon
//          Bit7 = Cyberdramon
// $13A2E0: Bit0 = MagnaAngemon
//          Bit1 = Paildramon
//          Bit2 = Dinobeemon
//          Bit3 = Antylamon
//          Bit4 = Arukenimon
//          Bit5 = Mummymon
//          Bit6 = WarGrowlmon
//          Bit7 = Rapidmon
// $13A2E1: Bit0 = Taomon
//          Bit1 = Parrotmon
//          Bit2 = Infermon
//          Bit3 = BlackRapidmon
//          Bit4 = Pandamon
//          Bit5 = MarineDevimon
//          Bit6 = Karatenmon
//          Bit7 = Kyukimon
// $13A2E2: Bit0 = Sinduramon
//          Bit1 = Pipismon
//          Bit2 = DoruGreymon
//          Bit3 = Divermon
//          Bit4 = Kimeramon
//          Bit5 = Triceramon
//          Bit6 = Deramon
//          Bit7 = Silphymon
// $13A2E3: Bit0 = SuperStarmon
//          Bit1 = BlackWarGrowlmon
//          Bit2 = Zudomon
//          Bit3 = Whamon
//          Bit4 = Mamemon
//          Bit5 = Toucanmon
//          Bit6 = Owlmon
//          Bit7 = Meteormon
// $13A2E4: Bit0 = Gigadramon
//          Bit1 = RiseGreymon
//          Bit2 = MachGaogamon
//          Bit4 = Tyilinmon
//          Bit5 = Lilamon
//          Bit6 = Shadramon
//          Bit7 = Matadormon
// $13A2E5: Bit0 = Kabukimon
//          Bit1 = Cherrymon
//          Bit2 = Garbagemon
//          Bit3 = Lucemon (Chaos Mode)
//          Bit4 = Mametyramon
//          Bit5 = Giromon
//          Bit6 = Vademon
//          Bit7 = MetalTyrannomon
// $13A2E6: Bit0 = Tekkamon
//          Bit1 = BigMamemon
//          Bit2 = EXTyrannomon
//          Bit3 = Vermilimon
//          Bit4 = Phantomon
//          Bit5 = Vajramon
//          Bit6 = AeroVeedramon
//          Bit7 = GrapLeomon
// $13A2E7: Bit0 = Knightmon
//          Bit1 = Brachiomon
//          Bit2 = Allomon
//          Bit3 = Lynxmon
//          Bit4 = Shaujinmon
//          Bit5 = Yatagaramon
//          Bit6 = BishopChessmon
//          Bit7 = RookChessmon
// $13A2E8: Bit0 = Flaremon
//          Bit1 = Crescemon
//          Bit2 = Flamedramon
//          Bit3 = Magnamon
//          Bit4 = Prairiemon
//          Bit5 = Kongoumon
//          Bit6 = Seahomon
//          Bit7 = Shurimon
// $13A2E9: Bit0 = Kenkimon
//          Bit1 = Ponchomon
//          Bit2 = Argomon (Ultimate)
//          Bit3 = Shakkoumon
// $13A2EA: Bit4 = Lampmon
//          Bit5 = HerculesKabuterimon
//          Bit6 = SaberLeomon
//          Bit7 = MetalEtemon
// $13A2EB: Bit0 = MarineAngemon
//          Bit1 = GigaSeadramon
//          Bit2 = Piedmon
//          Bit3 = Creepymon
//          Bit4 = Phoenixmon
//          Bit5 = Puppetmon
//          Bit6 = Rosemon
//          Bit7 = WarGreymon
// $13A2EC: Bit0 = MetalGarurumon
//          Bit1 = Machinedramon
//          Bit2 = VenomMyotismon
//          Bit3 = Omnimon
//          Bit4 = Imperialdramon (Dragon Mode)
//          Bit5 = Imperialdramon (Fighter Mode)
//          Bit6 = Imperialdramon (Paladin Mode)
//          Bit7 = Ghoulmon
// $13A2ED: Bit0 = Seraphimon
//          Bit1 = HiAndromon
//          Bit2 = Devitamamon
//          Bit3 = Cherubimon (Good)
//          Bit4 = Cherubimon (Evil)
//          Bit5 = Gallantmon
//          Bit6 = Gallantmon (Crimson Mode)
//          Bit7 = MegaGargomon
// $13A2EE: Bit0 = Sakuyamon
//          Bit1 = Diaboromon
//          Bit2 = Neptunmon
//          Bit3 = Pukumon
//          Bit4 = Gryphonmon
//          Bit5 = Preciomon
//          Bit6 = Armageddemon
//          Bit7 = MaloMyotismon
// $13A2EF: Bit0 = Imperialdramon (Dragon Mode) (Black)
//          Bit1 = Boltmon
//          Bit2 = PrinceMamemon
//          Bit3 = Ophanimon
//          Bit4 = Zanbamon
//          Bit5 = BlackMegaGargomon
//          Bit6 = Jijimon
//          Bit7 = Babamon
// $13A2F0: Bit0 = Anubismon
//          Bit1 = Parasimon
//          Bit2 = Cannondramon
//          Bit3 = SlashAngemon
//          Bit4 = Eaglemon
//          Bit5 = Dorugoramon
//          Bit6 = Beelzemon
//          Bit7 = BantyoLeomon
// $13A2F1: Bit0 = Darkdramon
//          Bit1 = Apocalymon
//          Bit2 = Ebemon
//          Bit3 = Gulfmon
//          Bit4 = Goldramon
//          Bit5 = ZeedMillenniumon
//          Bit6 = Ghoulmon (Black)
//          Bit7 = Kuzuhamon
// $13A2F2: Bit0 = ChaosGallantmon
//          Bit1 = MetalSeadramon
//          Bit2 = Valkyrimon
//          Bit3 = Justimon
//          Bit4 = Vikemon
//          Bit5 = BlackWarGreymon
//          Bit6 = SkullMammothmon
//          Bit7 = GranKuwagamon
// $13A2F3: Bit0 = Pharaohmon
//          Bit1 = Susanoomon
//          Bit2 = Alphamon
//          Bit3 = Magnadramon
//          Bit4 = Millenniumon
//          Bit5 = MoonMillenniumon
//          Bit6 = Megidramon
//          Bit7 = Sleipmon
// $13A2F4: Bit0 = ShineGreymon
//          Bit1 = MirageGaogamon
//          Bit2 = JumboGamemon
//          Bit3 = Ravemon
//          Bit4 = QueenChessmon
//          Bit5 = KingChessmon
//          Bit6 = Chronomon (Holy Mode)
//          Bit7 = Lilithmon
// $13A2F5: Bit0 = Varodurumon
//          Bit1 = Apollomon
//          Bit2 = Dianamon
//          Bit3 = ShineGreymon (Burst Mode)
//          Bit4 = ShineGreymon (Ruin Mode)
//          Bit5 = MirageGaogamon (Burst Mode)
//          Bit6 = Ravemon (Burst Mode)
//          Bit7 = Lotosmon
// $13A2F6: Bit0 = DotShineGreymon
//          Bit1 = DotMirageGaogamon
//          Bit2 = Beelzemon (Burst Mode)
//          Bit3 = Rosemon (Burst Mode)
//          Bit4 = Argomon (Mega)
//          Bit5 = Minervamon
//          Bit6 = Duftmon
//          Bit7 = Chaosmon
digimon_list = {
    "Chicchimon":{"obtained_address":bit0(0x13A282), "seen_address":bit4(0x13A2C0), "obtainable":false},
    "Koromon":{"obtained_address":bit1(0x13A282), "seen_address":bit5(0x13A2C0), "obtainable":true},
    "Tsunomon":{"obtained_address":bit2(0x13A282), "seen_address":bit6(0x13A2C0), "obtainable":true},
    "Poyomon":{"obtained_address":bit3(0x13A282), "seen_address":bit7(0x13A2C0), "obtainable":true},
    "Tokomon":{"obtained_address":bit4(0x13A282), "seen_address":bit0(0x13A2C1), "obtainable":true},
    "Tanemon":{"obtained_address":bit5(0x13A282), "seen_address":bit1(0x13A2C1), "obtainable":true},
    "Pagumon":{"obtained_address":bit6(0x13A282), "seen_address":bit2(0x13A2C1), "obtainable":true},
    "Kapurimon":{"obtained_address":bit7(0x13A282), "seen_address":bit3(0x13A2C1), "obtainable":true},
    "Kuramon":{"obtained_address":bit0(0x13A283), "seen_address":bit4(0x13A2C1), "obtainable":true},
    "Puttimon":{"obtained_address":bit1(0x13A283), "seen_address":bit5(0x13A2C1), "obtainable":true},
    "Chibomon":{"obtained_address":bit2(0x13A283), "seen_address":bit6(0x13A2C1), "obtainable":false},
    "Dorimon":{"obtained_address":bit3(0x13A283), "seen_address":bit7(0x13A2C1), "obtainable":true},
    "Calumon":{"obtained_address":bit4(0x13A283), "seen_address":bit0(0x13A2C2), "obtainable":false},
    "Gigimon":{"obtained_address":bit5(0x13A283), "seen_address":bit1(0x13A2C2), "obtainable":false},
    "Gummymon":{"obtained_address":bit6(0x13A283), "seen_address":bit2(0x13A2C2), "obtainable":true},
    "Kokomon":{"obtained_address":bit7(0x13A283), "seen_address":bit3(0x13A2C2), "obtainable":true},
    "Tsumemon":{"obtained_address":bit0(0x13A284), "seen_address":bit4(0x13A2C2), "obtainable":true},
    "Minomon":{"obtained_address":bit1(0x13A284), "seen_address":bit5(0x13A2C2), "obtainable":true},
    "Wanyamon":{"obtained_address":bit2(0x13A284), "seen_address":bit6(0x13A2C2), "obtainable":true},
    "Budmon":{"obtained_address":bit3(0x13A284), "seen_address":bit7(0x13A2C2), "obtainable":true},
    "Botamon":{"obtained_address":bit4(0x13A284), "seen_address":bit0(0x13A2C3), "obtainable":true},
    "Sunmon":{"obtained_address":bit5(0x13A284), "seen_address":bit1(0x13A2C3), "obtainable":false},
    "Moonmon":{"obtained_address":bit6(0x13A284), "seen_address":bit2(0x13A2C3), "obtainable":true},
    
    "Monodramon":{"obtained_address":bit0(0x13A286), "seen_address":bit4(0x13A2C4), "obtainable":true},
    "Agumon":{"obtained_address":bit1(0x13A286), "seen_address":bit5(0x13A2C4), "obtainable":true},
    "Veemon":{"obtained_address":bit2(0x13A286), "seen_address":bit6(0x13A2C4), "obtainable":true},
    "Guilmon":{"obtained_address":bit3(0x13A286), "seen_address":bit7(0x13A2C4), "obtainable":false},
    "Dorumon":{"obtained_address":bit4(0x13A286), "seen_address":bit0(0x13A2C5), "obtainable":true},
    "Betamon":{"obtained_address":bit5(0x13A286), "seen_address":bit1(0x13A2C5), "obtainable":true},
    "Gabumon":{"obtained_address":bit6(0x13A286), "seen_address":bit2(0x13A2C5), "obtainable":true},
    "Patamon":{"obtained_address":bit7(0x13A286), "seen_address":bit3(0x13A2C5), "obtainable":true},
    "Biyomon":{"obtained_address":bit0(0x13A287), "seen_address":bit4(0x13A2C5), "obtainable":true},
    "Palmon":{"obtained_address":bit1(0x13A287), "seen_address":bit5(0x13A2C5), "obtainable":true},
    "Tentomon":{"obtained_address":bit2(0x13A287), "seen_address":bit6(0x13A2C5), "obtainable":true},
    "Gotsumon":{"obtained_address":bit3(0x13A287), "seen_address":bit7(0x13A2C5), "obtainable":true},
    "Otamamon":{"obtained_address":bit4(0x13A287), "seen_address":bit0(0x13A2C6), "obtainable":true},
    "Gomamon":{"obtained_address":bit5(0x13A287), "seen_address":bit1(0x13A2C6), "obtainable":true},
    "Tapirmon":{"obtained_address":bit6(0x13A287), "seen_address":bit2(0x13A2C6), "obtainable":true},
    "DemiDevimon":{"obtained_address":bit7(0x13A287), "seen_address":bit3(0x13A2C6), "obtainable":true},
    "ToyAgumon":{"obtained_address":bit0(0x13A288), "seen_address":bit4(0x13A2C6), "obtainable":true},
    "Hagurumon":{"obtained_address":bit1(0x13A288), "seen_address":bit5(0x13A2C6), "obtainable":true},
    "Salamon":{"obtained_address":bit2(0x13A288), "seen_address":bit6(0x13A2C6), "obtainable":true},
    "Wormmon":{"obtained_address":bit3(0x13A288), "seen_address":bit7(0x13A2C6), "obtainable":true},
    "Hawkmon":{"obtained_address":bit4(0x13A288), "seen_address":bit0(0x13A2C7), "obtainable":true},
    "Armadillomon":{"obtained_address":bit5(0x13A288), "seen_address":bit1(0x13A2C7), "obtainable":true},
    "Terriermon":{"obtained_address":bit6(0x13A288), "seen_address":bit2(0x13A2C7), "obtainable":true},
    "Lopmon":{"obtained_address":bit7(0x13A288), "seen_address":bit3(0x13A2C7), "obtainable":true},
    "Renamon":{"obtained_address":bit0(0x13A289), "seen_address":bit4(0x13A2C7), "obtainable":true},
    "Impmon":{"obtained_address":bit1(0x13A289), "seen_address":bit5(0x13A2C7), "obtainable":true},
    "Keramon":{"obtained_address":bit2(0x13A289), "seen_address":bit6(0x13A2C7), "obtainable":true},
    "Falcomon":{"obtained_address":bit3(0x13A289), "seen_address":bit7(0x13A2C7), "obtainable":true},
    "Penguinmon":{"obtained_address":bit4(0x13A289), "seen_address":bit0(0x13A2C8), "obtainable":true},
    "Goburimon":{"obtained_address":bit5(0x13A289), "seen_address":bit1(0x13A2C8), "obtainable":true},
    "Kumamon":{"obtained_address":bit6(0x13A289), "seen_address":bit2(0x13A2C8), "obtainable":true},
    "Kotemon":{"obtained_address":bit7(0x13A289), "seen_address":bit3(0x13A2C8), "obtainable":true},
    "Shamamon":{"obtained_address":bit0(0x13A28A), "seen_address":bit4(0x13A2C8), "obtainable":true},
    "SnowGoblimon":{"obtained_address":bit1(0x13A28A), "seen_address":bit5(0x13A2C8), "obtainable":true},
    "Syakomon":{"obtained_address":bit2(0x13A28A), "seen_address":bit6(0x13A2C8), "obtainable":true},
    "SnowAgumon":{"obtained_address":bit3(0x13A28A), "seen_address":bit7(0x13A2C8), "obtainable":true},
    "BlackAgumon":{"obtained_address":bit4(0x13A28A), "seen_address":bit0(0x13A2C9), "obtainable":true},
    "Muchomon":{"obtained_address":bit5(0x13A28A), "seen_address":bit1(0x13A2C9), "obtainable":true},
    "Crabmon":{"obtained_address":bit6(0x13A28A), "seen_address":bit2(0x13A2C9), "obtainable":true},
    "Floramon":{"obtained_address":bit7(0x13A28A), "seen_address":bit3(0x13A2C9), "obtainable":true},
    "Gizamon":{"obtained_address":bit0(0x13A28B), "seen_address":bit4(0x13A2C9), "obtainable":true},
    "Lalamon":{"obtained_address":bit1(0x13A28B), "seen_address":bit5(0x13A2C9), "obtainable":true},
    "Aruraumon":{"obtained_address":bit2(0x13A28B), "seen_address":bit6(0x13A2C9), "obtainable":true},
    "ToyAgumonB":{"obtained_address":bit3(0x13A28B), "seen_address":bit7(0x13A2C9), "obtainable":true},
    "Tsukaimon":{"obtained_address":bit4(0x13A28B), "seen_address":bit0(0x13A2CA), "obtainable":true},
    "PawnChessmonB":{"obtained_address":bit5(0x13A28B), "seen_address":bit1(0x13A2CA), "obtainable":true},
    "Gaomon":{"obtained_address":bit6(0x13A28B), "seen_address":bit2(0x13A2CA), "obtainable":true},
    "DotFalcomon":{"obtained_address":bit7(0x13A28B), "seen_address":bit3(0x13A2CA), "obtainable":true},
    "Kudamon":{"obtained_address":bit0(0x13A28C), "seen_address":bit4(0x13A2CA), "obtainable":false},
    "Kamemon":{"obtained_address":bit1(0x13A28C), "seen_address":bit5(0x13A2CA), "obtainable":true},
    "Dracmon":{"obtained_address":bit2(0x13A28C), "seen_address":bit6(0x13A2CA), "obtainable":true},
    "PawnChessmonW":{"obtained_address":bit3(0x13A28C), "seen_address":bit7(0x13A2CA), "obtainable":true},
    "DotAgumon":{"obtained_address":bit4(0x13A28C), "seen_address":bit0(0x13A2CB), "obtainable":false},
    "Kunemon":{"obtained_address":bit5(0x13A28C), "seen_address":bit1(0x13A2CB), "obtainable":true},
    "Mushroomon":{"obtained_address":bit6(0x13A28C), "seen_address":bit2(0x13A2CB), "obtainable":true},
    "Solarmon":{"obtained_address":bit7(0x13A28C), "seen_address":bit3(0x13A2CB), "obtainable":true},
    "Candlemon":{"obtained_address":bit0(0x13A28D), "seen_address":bit4(0x13A2CB), "obtainable":true},
    "Kokuwamon":{"obtained_address":bit1(0x13A28D), "seen_address":bit5(0x13A2CB), "obtainable":true},
    "DoKunemon":{"obtained_address":bit2(0x13A28D), "seen_address":bit6(0x13A2CB), "obtainable":true},
    "Coronamon":{"obtained_address":bit3(0x13A28D), "seen_address":bit7(0x13A2CB), "obtainable":false},
    "Lunamon":{"obtained_address":bit4(0x13A28D), "seen_address":bit0(0x13A2CC), "obtainable":true},

    "Mekanorimon":{"obtained_address":bit7(0x13A28E), "seen_address":bit3(0x13A2CD), "obtainable":true},
    "Greymon":{"obtained_address":bit0(0x13A28F), "seen_address":bit4(0x13A2CD), "obtainable":true},
    "Tyrannomon":{"obtained_address":bit1(0x13A28F), "seen_address":bit5(0x13A2CD), "obtainable":true},
    "Devimon":{"obtained_address":bit2(0x13A28F), "seen_address":bit6(0x13A2CD), "obtainable":true},
    "Airdramon":{"obtained_address":bit3(0x13A28F), "seen_address":bit7(0x13A2CD), "obtainable":false},
    "Seadramon":{"obtained_address":bit4(0x13A28F), "seen_address":bit0(0x13A2CE), "obtainable":true},
    "Numemon":{"obtained_address":bit5(0x13A28F), "seen_address":bit1(0x13A2CE), "obtainable":true},
    "Kabuterimon":{"obtained_address":bit6(0x13A28F), "seen_address":bit2(0x13A2CE), "obtainable":true},
    "Garurumon":{"obtained_address":bit7(0x13A28F), "seen_address":bit3(0x13A2CE), "obtainable":true},
    "Angemon":{"obtained_address":bit0(0x13A290), "seen_address":bit4(0x13A2CE), "obtainable":true},
    "Veggiemon":{"obtained_address":bit1(0x13A290), "seen_address":bit5(0x13A2CE), "obtainable":true},
    "Ogremon":{"obtained_address":bit2(0x13A290), "seen_address":bit6(0x13A2CE), "obtainable":true},
    "Bakemon":{"obtained_address":bit3(0x13A290), "seen_address":bit7(0x13A2CE), "obtainable":true},
    "Sukamon":{"obtained_address":bit4(0x13A290), "seen_address":bit0(0x13A2CF), "obtainable":true},
    "Kokatorimon":{"obtained_address":bit5(0x13A290), "seen_address":bit1(0x13A2CF), "obtainable":true},
    "Leomon":{"obtained_address":bit6(0x13A290), "seen_address":bit2(0x13A2CF), "obtainable":true},
    "Kuwagamon":{"obtained_address":bit7(0x13A290), "seen_address":bit3(0x13A2CF), "obtainable":true},
    "Raremon":{"obtained_address":bit0(0x13A291), "seen_address":bit4(0x13A2CF), "obtainable":true},
    "Gekomon":{"obtained_address":bit2(0x13A291), "seen_address":bit6(0x13A2CF), "obtainable":true},
    "Gatomon":{"obtained_address":bit3(0x13A291), "seen_address":bit7(0x13A2CF), "obtainable":true},
    "Wizardmon":{"obtained_address":bit4(0x13A291), "seen_address":bit0(0x13A2D0), "obtainable":true},
    "Togemon":{"obtained_address":bit5(0x13A291), "seen_address":bit1(0x13A2D0), "obtainable":true},
    "Guardromon":{"obtained_address":bit6(0x13A291), "seen_address":bit2(0x13A2D0), "obtainable":true},
    "ExVeemon":{"obtained_address":bit7(0x13A291), "seen_address":bit3(0x13A2D0), "obtainable":true},
    "Stingmon":{"obtained_address":bit0(0x13A292), "seen_address":bit4(0x13A2D0), "obtainable":true},
    "Birdramon":{"obtained_address":bit1(0x13A292), "seen_address":bit5(0x13A2D0), "obtainable":true},
    "Ankylomon":{"obtained_address":bit2(0x13A292), "seen_address":bit6(0x13A2D0), "obtainable":true},
    "Gargomon":{"obtained_address":bit3(0x13A292), "seen_address":bit7(0x13A2D0), "obtainable":true},
    "Growlmon":{"obtained_address":bit4(0x13A292), "seen_address":bit0(0x13A2D1), "obtainable":false},
    "Kyubimon":{"obtained_address":bit5(0x13A292), "seen_address":bit1(0x13A2D1), "obtainable":true},
    "Kurisarimon":{"obtained_address":bit6(0x13A292), "seen_address":bit2(0x13A2D1), "obtainable":true},
    "Seasarmon":{"obtained_address":bit7(0x13A292), "seen_address":bit3(0x13A2D1), "obtainable":true},
    "Vilemon":{"obtained_address":bit0(0x13A293), "seen_address":bit4(0x13A2D1), "obtainable":true},
    "Aquilamon":{"obtained_address":bit1(0x13A293), "seen_address":bit5(0x13A2D1), "obtainable":true},
    "Roachmon":{"obtained_address":bit2(0x13A293), "seen_address":bit6(0x13A2D1), "obtainable":true},
    "Dinohumon":{"obtained_address":bit3(0x13A293), "seen_address":bit7(0x13A2D1), "obtainable":true},
    "Hookmon":{"obtained_address":bit4(0x13A293), "seen_address":bit0(0x13A2D2), "obtainable":true},
    "Grizzmon":{"obtained_address":bit5(0x13A293), "seen_address":bit1(0x13A2D2), "obtainable":true},
    "Dorugamon":{"obtained_address":bit6(0x13A293), "seen_address":bit2(0x13A2D2), "obtainable":true},
    "Reptiledramon":{"obtained_address":bit7(0x13A293), "seen_address":bit3(0x13A2D2), "obtainable":true},
    "Apemon":{"obtained_address":bit0(0x13A294), "seen_address":bit4(0x13A2D2), "obtainable":true},
    "Starmon":{"obtained_address":bit1(0x13A294), "seen_address":bit5(0x13A2D2), "obtainable":true},
    "BomberNanimon":{"obtained_address":bit2(0x13A294), "seen_address":bit6(0x13A2D2), "obtainable":true},
    "Kiwimon":{"obtained_address":bit3(0x13A294), "seen_address":bit7(0x13A2D2), "obtainable":true},
    "Unimon":{"obtained_address":bit4(0x13A294), "seen_address":bit0(0x13A2D3), "obtainable":true},
    "Sorcerymon":{"obtained_address":bit5(0x13A294), "seen_address":bit1(0x13A2D3), "obtainable":true},
    "DarkTyrannomon":{"obtained_address":bit6(0x13A294), "seen_address":bit2(0x13A2D3), "obtainable":true},
    "Akatorimon":{"obtained_address":bit7(0x13A294), "seen_address":bit3(0x13A2D3), "obtainable":true},
    "PlatinumSukamon":{"obtained_address":bit0(0x13A295), "seen_address":bit4(0x13A2D3), "obtainable":true},
    "Ikkakumon":{"obtained_address":bit1(0x13A295), "seen_address":bit5(0x13A2D3), "obtainable":true},
    "Minotarumon":{"obtained_address":bit2(0x13A295), "seen_address":bit6(0x13A2D3), "obtainable":true},
    "Icemon":{"obtained_address":bit3(0x13A295), "seen_address":bit7(0x13A2D3), "obtainable":true},
    "DarkLizardmon":{"obtained_address":bit4(0x13A295), "seen_address":bit0(0x13A2D4), "obtainable":true},
    "Flarerizamon":{"obtained_address":bit5(0x13A295), "seen_address":bit1(0x13A2D4), "obtainable":true},
    "GeoGreymon":{"obtained_address":bit6(0x13A295), "seen_address":bit2(0x13A2D4), "obtainable":true},
    "Gaogamon":{"obtained_address":bit7(0x13A295), "seen_address":bit3(0x13A2D4), "obtainable":true},
    "Diatrymon":{"obtained_address":bit0(0x13A296), "seen_address":bit4(0x13A2D4), "obtainable":true},
    "Reppamon":{"obtained_address":bit1(0x13A296), "seen_address":bit5(0x13A2D4), "obtainable":false},
    "Sunflowmon":{"obtained_address":bit2(0x13A296), "seen_address":bit6(0x13A2D4), "obtainable":true},
    "Gawappamon":{"obtained_address":bit3(0x13A296), "seen_address":bit7(0x13A2D4), "obtainable":true},
    "Sangloupmon":{"obtained_address":bit4(0x13A296), "seen_address":bit0(0x13A2D5), "obtainable":true},
    "Peckmon":{"obtained_address":bit5(0x13A296), "seen_address":bit1(0x13A2D5), "obtainable":true},
    "Drimogemon":{"obtained_address":bit6(0x13A296), "seen_address":bit2(0x13A2D5), "obtainable":true},
    "NiseDrimogemon":{"obtained_address":bit7(0x13A296), "seen_address":bit3(0x13A2D5), "obtainable":true},
    "MoriShellmon":{"obtained_address":bit0(0x13A297), "seen_address":bit4(0x13A2D5), "obtainable":true},
    "Wendigomon":{"obtained_address":bit1(0x13A297), "seen_address":bit5(0x13A2D5), "obtainable":true},
    "Fugamon":{"obtained_address":bit2(0x13A297), "seen_address":bit6(0x13A2D5), "obtainable":true},
    "Tsuchidarumon":{"obtained_address":bit3(0x13A297), "seen_address":bit7(0x13A2D5), "obtainable":true},
    "Tortamon":{"obtained_address":bit4(0x13A297), "seen_address":bit0(0x13A2D6), "obtainable":true},
    "Ebidramon":{"obtained_address":bit5(0x13A297), "seen_address":bit1(0x13A2D6), "obtainable":true},
    "Octomon":{"obtained_address":bit6(0x13A297), "seen_address":bit2(0x13A2D6), "obtainable":true},
    "Gesomon":{"obtained_address":bit7(0x13A297), "seen_address":bit3(0x13A2D6), "obtainable":true},
    "Coelamon":{"obtained_address":bit0(0x13A298), "seen_address":bit4(0x13A2D6), "obtainable":true},
    "Shellmon":{"obtained_address":bit1(0x13A298), "seen_address":bit5(0x13A2D6), "obtainable":true},
    "Frigimon":{"obtained_address":bit2(0x13A298), "seen_address":bit6(0x13A2D6), "obtainable":true},
    "Geremon":{"obtained_address":bit3(0x13A298), "seen_address":bit7(0x13A2D6), "obtainable":true},
    "Hyogamon":{"obtained_address":bit4(0x13A298), "seen_address":bit0(0x13A2D7), "obtainable":true},
    "KaratsukiNumemon":{"obtained_address":bit5(0x13A298), "seen_address":bit1(0x13A2D7), "obtainable":true},
    "IceDevimon":{"obtained_address":bit6(0x13A298), "seen_address":bit2(0x13A2D7), "obtainable":true},
    "Dolphmon":{"obtained_address":bit7(0x13A298), "seen_address":bit3(0x13A2D7), "obtainable":true},
    "Saberdramon":{"obtained_address":bit0(0x13A299), "seen_address":bit4(0x13A2D7), "obtainable":true},
    "Woodmon":{"obtained_address":bit1(0x13A299), "seen_address":bit5(0x13A2D7), "obtainable":true},
    "Snimon":{"obtained_address":bit2(0x13A299), "seen_address":bit6(0x13A2D7), "obtainable":true},
    "Flymon":{"obtained_address":bit3(0x13A299), "seen_address":bit7(0x13A2D7), "obtainable":true},
    "Yanmamon":{"obtained_address":bit4(0x13A299), "seen_address":bit0(0x13A2D8), "obtainable":true},
    "SandYanmamon":{"obtained_address":bit5(0x13A299), "seen_address":bit1(0x13A2D8), "obtainable":true},
    "RedVeggiemon":{"obtained_address":bit6(0x13A299), "seen_address":bit2(0x13A2D8), "obtainable":true},
    "Weedmon":{"obtained_address":bit7(0x13A299), "seen_address":bit3(0x13A2D8), "obtainable":true},
    "Ninjamon":{"obtained_address":bit0(0x13A29A), "seen_address":bit4(0x13A2D8), "obtainable":true},
    "Kogamon":{"obtained_address":bit1(0x13A29A), "seen_address":bit5(0x13A2D8), "obtainable":true},
    "Omekamon":{"obtained_address":bit2(0x13A29A), "seen_address":bit6(0x13A2D8), "obtainable":true},
    "Clockmon":{"obtained_address":bit3(0x13A29A), "seen_address":bit7(0x13A2D8), "obtainable":true},
    "Thunderballmon":{"obtained_address":bit4(0x13A29A), "seen_address":bit0(0x13A2D9), "obtainable":true},
    "Tankmon":{"obtained_address":bit5(0x13A29A), "seen_address":bit1(0x13A2D9), "obtainable":true},
    "Nanimon":{"obtained_address":bit6(0x13A29A), "seen_address":bit2(0x13A2D9), "obtainable":true},
    "Golemon":{"obtained_address":bit7(0x13A29A), "seen_address":bit3(0x13A2D9), "obtainable":true},
    "Monochromon":{"obtained_address":bit0(0x13A29B), "seen_address":bit4(0x13A2D9), "obtainable":true},
    "Mojyamon":{"obtained_address":bit1(0x13A29B), "seen_address":bit5(0x13A2D9), "obtainable":true},
    "JungleMojyamon":{"obtained_address":bit2(0x13A29B), "seen_address":bit6(0x13A2D9), "obtainable":true},
    "Deputymon":{"obtained_address":bit3(0x13A29B), "seen_address":bit7(0x13A2D9), "obtainable":true},
    "Centarumon":{"obtained_address":bit4(0x13A29B), "seen_address":bit0(0x13A2DA), "obtainable":true},
    "Devidramon":{"obtained_address":bit5(0x13A29B), "seen_address":bit1(0x13A2DA), "obtainable":true},
    "Dokugumon":{"obtained_address":bit6(0x13A29B), "seen_address":bit2(0x13A2DA), "obtainable":true},
    "Veedramon":{"obtained_address":bit7(0x13A29B), "seen_address":bit3(0x13A2DA), "obtainable":true},
    "Musyamon":{"obtained_address":bit0(0x13A29C), "seen_address":bit4(0x13A2DA), "obtainable":true},
    "KnightChessmonW":{"obtained_address":bit1(0x13A29C), "seen_address":bit5(0x13A2DA), "obtainable":true},
    "KnightChessmonB":{"obtained_address":bit2(0x13A29C), "seen_address":bit6(0x13A2DA), "obtainable":true},
    "Firamon":{"obtained_address":bit3(0x13A29C), "seen_address":bit7(0x13A2DA), "obtainable":false},
    "Lekismon":{"obtained_address":bit4(0x13A29C), "seen_address":bit0(0x13A2DB), "obtainable":true},

    "Volcanomon":{"obtained_address":bit7(0x13A29D), "seen_address":bit3(0x13A2DC), "obtainable":true},
    "MetalGreymon":{"obtained_address":bit0(0x13A29E), "seen_address":bit4(0x13A2DC), "obtainable":true},
    "Monzaemon":{"obtained_address":bit1(0x13A29E), "seen_address":bit5(0x13A2DC), "obtainable":true},
    "SkullGreymon":{"obtained_address":bit2(0x13A29E), "seen_address":bit6(0x13A2DC), "obtainable":true},
    "MetalMamemon":{"obtained_address":bit3(0x13A29E), "seen_address":bit7(0x13A2DC), "obtainable":true},
    "Andromon":{"obtained_address":bit4(0x13A29E), "seen_address":bit0(0x13A2DD), "obtainable":true},
    "Etemon":{"obtained_address":bit5(0x13A29E), "seen_address":bit1(0x13A2DD), "obtainable":true},
    "Megadramon":{"obtained_address":bit6(0x13A29E), "seen_address":bit2(0x13A2DD), "obtainable":true},
    "Piximon":{"obtained_address":bit7(0x13A29E), "seen_address":bit3(0x13A2DD), "obtainable":true},
    "Digitamamon":{"obtained_address":bit0(0x13A29F), "seen_address":bit4(0x13A2DD), "obtainable":true},
    "Mammothmon":{"obtained_address":bit1(0x13A29F), "seen_address":bit5(0x13A2DD), "obtainable":true},
    "MegakabuterimonB":{"obtained_address":bit2(0x13A29F), "seen_address":bit6(0x13A2DD), "obtainable":true},
    "Okuwamon":{"obtained_address":bit3(0x13A29F), "seen_address":bit7(0x13A2DD), "obtainable":true},
    "ShogunGekomon":{"obtained_address":bit4(0x13A29F), "seen_address":bit0(0x13A2DE), "obtainable":true},
    "Angewomon":{"obtained_address":bit5(0x13A29F), "seen_address":bit1(0x13A2DE), "obtainable":true},
    "Tylomon":{"obtained_address":bit6(0x13A29F), "seen_address":bit2(0x13A2DE), "obtainable":true},
    "Scorpiomon":{"obtained_address":bit7(0x13A29F), "seen_address":bit3(0x13A2DE), "obtainable":true},
    "MegaSeadramon":{"obtained_address":bit0(0x13A2A0), "seen_address":bit4(0x13A2DE), "obtainable":true},
    "Dragomon":{"obtained_address":bit1(0x13A2A0), "seen_address":bit5(0x13A2DE), "obtainable":true},
    "WarGarurumonBlack":{"obtained_address":bit2(0x13A2A0), "seen_address":bit6(0x13A2DE), "obtainable":true},
    "WarGarurumonBlue":{"obtained_address":bit3(0x13A2A0), "seen_address":bit7(0x13A2DE), "obtainable":true},
    "Myotismon":{"obtained_address":bit4(0x13A2A0), "seen_address":bit0(0x13A2DF), "obtainable":true},
    "LadyDevimon":{"obtained_address":bit5(0x13A2A0), "seen_address":bit1(0x13A2DF), "obtainable":true},
    "Garudamon":{"obtained_address":bit6(0x13A2A0), "seen_address":bit2(0x13A2DF), "obtainable":true},
    "Blossomon":{"obtained_address":bit7(0x13A2A0), "seen_address":bit3(0x13A2DF), "obtainable":true},
    "Lillymon":{"obtained_address":bit0(0x13A2A1), "seen_address":bit4(0x13A2DF), "obtainable":true},
    "MegaKabuterimonR":{"obtained_address":bit1(0x13A2A1), "seen_address":bit5(0x13A2DF), "obtainable":true},
    "Datamon":{"obtained_address":bit2(0x13A2A1), "seen_address":bit6(0x13A2DF), "obtainable":true},
    "Cyberdramon":{"obtained_address":bit3(0x13A2A1), "seen_address":bit7(0x13A2DF), "obtainable":true},
    "MagnaAngemon":{"obtained_address":bit4(0x13A2A1), "seen_address":bit0(0x13A2E0), "obtainable":true},
    "Paildramon":{"obtained_address":bit5(0x13A2A1), "seen_address":bit1(0x13A2E0), "obtainable":true},
    "Dinobeemon":{"obtained_address":bit6(0x13A2A1), "seen_address":bit2(0x13A2E0), "obtainable":true},
    "Antylamon":{"obtained_address":bit7(0x13A2A1), "seen_address":bit3(0x13A2E0), "obtainable":true},
    "Arukenimon":{"obtained_address":bit0(0x13A2A2), "seen_address":bit4(0x13A2E0), "obtainable":true},
    "Mummymon":{"obtained_address":bit1(0x13A2A2), "seen_address":bit5(0x13A2E0), "obtainable":true},
    "WarGrowlmon":{"obtained_address":bit2(0x13A2A2), "seen_address":bit6(0x13A2E0), "obtainable":true},
    "Rapidmon":{"obtained_address":bit3(0x13A2A2), "seen_address":bit7(0x13A2E0), "obtainable":true},
    "Taomon":{"obtained_address":bit4(0x13A2A2), "seen_address":bit0(0x13A2E1), "obtainable":true},
    "Parrotmon":{"obtained_address":bit5(0x13A2A2), "seen_address":bit1(0x13A2E1), "obtainable":true},
    "Infermon":{"obtained_address":bit6(0x13A2A2), "seen_address":bit2(0x13A2E1), "obtainable":true},
    "BlackRapidmon":{"obtained_address":bit7(0x13A2A2), "seen_address":bit3(0x13A2E1), "obtainable":true},
    "Pandamon":{"obtained_address":bit0(0x13A2A3), "seen_address":bit4(0x13A2E1), "obtainable":true},
    "MarineDevimon":{"obtained_address":bit1(0x13A2A3), "seen_address":bit5(0x13A2E1), "obtainable":true},
    "Karatenmon":{"obtained_address":bit2(0x13A2A3), "seen_address":bit6(0x13A2E1), "obtainable":true},
    "Kyukimon":{"obtained_address":bit3(0x13A2A3), "seen_address":bit7(0x13A2E1), "obtainable":true},
    "Sinduramon":{"obtained_address":bit4(0x13A2A3), "seen_address":bit0(0x13A2E2), "obtainable":true},
    "Pipismon":{"obtained_address":bit5(0x13A2A3), "seen_address":bit1(0x13A2E2), "obtainable":true},
    "DoruGreymon":{"obtained_address":bit6(0x13A2A3), "seen_address":bit2(0x13A2E2), "obtainable":true},
    "Divermon":{"obtained_address":bit7(0x13A2A3), "seen_address":bit3(0x13A2E2), "obtainable":true},
    "Kimeramon":{"obtained_address":bit0(0x13A2A4), "seen_address":bit4(0x13A2E2), "obtainable":true},
    "Triceramon":{"obtained_address":bit1(0x13A2A4), "seen_address":bit5(0x13A2E2), "obtainable":true},
    "Deramon":{"obtained_address":bit2(0x13A2A4), "seen_address":bit6(0x13A2E2), "obtainable":true},
    "Silphymon":{"obtained_address":bit3(0x13A2A4), "seen_address":bit7(0x13A2E2), "obtainable":true},
    "SuperStarmon":{"obtained_address":bit4(0x13A2A4), "seen_address":bit0(0x13A2E3), "obtainable":true},
    "BlackWarGrowlmon":{"obtained_address":bit5(0x13A2A4), "seen_address":bit1(0x13A2E3), "obtainable":true},
    "Zudomon":{"obtained_address":bit6(0x13A2A4), "seen_address":bit2(0x13A2E3), "obtainable":true},
    "Whamon":{"obtained_address":bit7(0x13A2A4), "seen_address":bit3(0x13A2E3), "obtainable":true},
    "Mamemon":{"obtained_address":bit0(0x13A2A5), "seen_address":bit4(0x13A2E3), "obtainable":true},
    "Toucanmon":{"obtained_address":bit1(0x13A2A5), "seen_address":bit5(0x13A2E3), "obtainable":true},
    "Owlmon":{"obtained_address":bit2(0x13A2A5), "seen_address":bit6(0x13A2E3), "obtainable":true},
    "Meteormon":{"obtained_address":bit3(0x13A2A5), "seen_address":bit7(0x13A2E3), "obtainable":true},
    "Gigadramon":{"obtained_address":bit4(0x13A2A5), "seen_address":bit0(0x13A2E4), "obtainable":true},
    "RiseGreymon":{"obtained_address":bit5(0x13A2A5), "seen_address":bit1(0x13A2E4), "obtainable":true},
    "MachGaogamon":{"obtained_address":bit6(0x13A2A5), "seen_address":bit2(0x13A2E4), "obtainable":true},
    "Tyilinmon":{"obtained_address":bit0(0x13A2A6), "seen_address":bit4(0x13A2E4), "obtainable":false},
    "Lilamon":{"obtained_address":bit1(0x13A2A6), "seen_address":bit5(0x13A2E4), "obtainable":true},
    "Shadramon":{"obtained_address":bit2(0x13A2A6), "seen_address":bit6(0x13A2E4), "obtainable":true},
    "Matadormon":{"obtained_address":bit3(0x13A2A6), "seen_address":bit7(0x13A2E4), "obtainable":true},
    "Kabukimon":{"obtained_address":bit4(0x13A2A6), "seen_address":bit0(0x13A2E5), "obtainable":true},
    "Cherrymon":{"obtained_address":bit5(0x13A2A6), "seen_address":bit1(0x13A2E5), "obtainable":true},
    "Garbagemon":{"obtained_address":bit6(0x13A2A6), "seen_address":bit2(0x13A2E5), "obtainable":true},
    "LucemonCM":{"obtained_address":bit7(0x13A2A6), "seen_address":bit3(0x13A2E5), "obtainable":true},
    "MameTyramon":{"obtained_address":bit0(0x13A2A7), "seen_address":bit4(0x13A2E5), "obtainable":true},
    "Giromon":{"obtained_address":bit1(0x13A2A7), "seen_address":bit5(0x13A2E5), "obtainable":true},
    "Vademon":{"obtained_address":bit2(0x13A2A7), "seen_address":bit6(0x13A2E5), "obtainable":true},
    "MetalTyrannomon":{"obtained_address":bit3(0x13A2A7), "seen_address":bit7(0x13A2E5), "obtainable":true},
    "Tekkamon":{"obtained_address":bit4(0x13A2A7), "seen_address":bit0(0x13A2E6), "obtainable":true},
    "BigMamemon":{"obtained_address":bit5(0x13A2A7), "seen_address":bit1(0x13A2E6), "obtainable":true},
    "EXTyrannomon":{"obtained_address":bit6(0x13A2A7), "seen_address":bit2(0x13A2E6), "obtainable":true},
    "Vermilimon":{"obtained_address":bit7(0x13A2A7), "seen_address":bit3(0x13A2E6), "obtainable":true},
    "Phantomon":{"obtained_address":bit0(0x13A2A8), "seen_address":bit4(0x13A2E6), "obtainable":true},
    "Vajramon":{"obtained_address":bit1(0x13A2A8), "seen_address":bit5(0x13A2E6), "obtainable":true},
    "AeroVeedramon":{"obtained_address":bit2(0x13A2A8), "seen_address":bit6(0x13A2E6), "obtainable":true},
    "Grapleomon":{"obtained_address":bit3(0x13A2A8), "seen_address":bit7(0x13A2E6), "obtainable":true},
    "Knightmon":{"obtained_address":bit4(0x13A2A8), "seen_address":bit0(0x13A2E7), "obtainable":true},
    "Brachiomon":{"obtained_address":bit5(0x13A2A8), "seen_address":bit1(0x13A2E7), "obtainable":true},
    "Allomon":{"obtained_address":bit6(0x13A2A8), "seen_address":bit2(0x13A2E7), "obtainable":true},
    "Lynxmon":{"obtained_address":bit7(0x13A2A8), "seen_address":bit3(0x13A2E7), "obtainable":true},
    "Shaujinmon":{"obtained_address":bit0(0x13A2A9), "seen_address":bit4(0x13A2E7), "obtainable":true},
    "Yatagaramon":{"obtained_address":bit1(0x13A2A9), "seen_address":bit5(0x13A2E7), "obtainable":true},
    "BishopChessmon":{"obtained_address":bit2(0x13A2A9), "seen_address":bit6(0x13A2E7), "obtainable":true},
    "RookChessmon":{"obtained_address":bit3(0x13A2A9), "seen_address":bit7(0x13A2E7), "obtainable":true},
    "Flaremon":{"obtained_address":bit4(0x13A2A9), "seen_address":bit0(0x13A2E8), "obtainable":false},
    "Crescemon":{"obtained_address":bit5(0x13A2A9), "seen_address":bit1(0x13A2E8), "obtainable":true},
    "Flamedramon":{"obtained_address":bit6(0x13A2A9), "seen_address":bit2(0x13A2E8), "obtainable":true},
    "Magnamon":{"obtained_address":bit7(0x13A2A9), "seen_address":bit3(0x13A2E8), "obtainable":true},
    "Prairiemon":{"obtained_address":bit0(0x13A2AA), "seen_address":bit4(0x13A2E8), "obtainable":true},
    "Kongoumon":{"obtained_address":bit1(0x13A2AA), "seen_address":bit5(0x13A2E8), "obtainable":true},
    "Seahomon":{"obtained_address":bit2(0x13A2AA), "seen_address":bit6(0x13A2E8), "obtainable":true},
    "Shurimon":{"obtained_address":bit3(0x13A2AA), "seen_address":bit7(0x13A2E8), "obtainable":true},
    "Kenkimon":{"obtained_address":bit4(0x13A2AA), "seen_address":bit0(0x13A2E9), "obtainable":true},
    "Ponchomon":{"obtained_address":bit5(0x13A2AA), "seen_address":bit1(0x13A2E9), "obtainable":true},
    "ArgomonU":{"obtained_address":bit6(0x13A2AA), "seen_address":bit2(0x13A2E9), "obtainable":true},
    "Shakkoumon":{"obtained_address":bit7(0x13A2AA), "seen_address":bit3(0x13A2E9), "obtainable":true},

    "Lampmon":{"obtained_address":bit0(0x13A2AC), "seen_address":bit4(0x13A2EA), "obtainable":true},
    "HerculesKabuterimon":{"obtained_address":bit1(0x13A2AC), "seen_address":bit5(0x13A2EA), "obtainable":true},
    "SaberLeomon":{"obtained_address":bit2(0x13A2AC), "seen_address":bit6(0x13A2EA), "obtainable":true},
    "MetalEtemon":{"obtained_address":bit3(0x13A2AC), "seen_address":bit7(0x13A2EA), "obtainable":true},
    "MarineAngemon":{"obtained_address":bit4(0x13A2AC), "seen_address":bit0(0x13A2EB), "obtainable":true},
    "GigaSeadramon":{"obtained_address":bit5(0x13A2AC), "seen_address":bit1(0x13A2EB), "obtainable":true},
    "Piedmon":{"obtained_address":bit6(0x13A2AC), "seen_address":bit2(0x13A2EB), "obtainable":true},
    "Creepymon":{"obtained_address":bit7(0x13A2AC), "seen_address":bit3(0x13A2EB), "obtainable":true},
    "Phoenixmon":{"obtained_address":bit0(0x13A2AD), "seen_address":bit4(0x13A2EB), "obtainable":true},
    "Puppetmon":{"obtained_address":bit1(0x13A2AD), "seen_address":bit5(0x13A2EB), "obtainable":true},
    "Rosemon":{"obtained_address":bit2(0x13A2AD), "seen_address":bit6(0x13A2EB), "obtainable":true},
    "WarGreymon":{"obtained_address":bit3(0x13A2AD), "seen_address":bit7(0x13A2EB), "obtainable":true},
    "MetalGarurumon":{"obtained_address":bit4(0x13A2AD), "seen_address":bit0(0x13A2EC), "obtainable":true},
    "Machinedramon":{"obtained_address":bit5(0x13A2AD), "seen_address":bit1(0x13A2EC), "obtainable":true},
    "VenomMyotismon":{"obtained_address":bit6(0x13A2AD), "seen_address":bit2(0x13A2EC), "obtainable":true},
    "Omnimon":{"obtained_address":bit7(0x13A2AD), "seen_address":bit3(0x13A2EC), "obtainable":true},
    "ImperialdramonDM":{"obtained_address":bit0(0x13A2AE), "seen_address":bit4(0x13A2EC), "obtainable":false},
    "ImperialdramonFM":{"obtained_address":bit1(0x13A2AE), "seen_address":bit5(0x13A2EC), "obtainable":false},
    "ImperialdramonPM":{"obtained_address":bit2(0x13A2AE), "seen_address":bit6(0x13A2EC), "obtainable":false},
    "Ghoulmon":{"obtained_address":bit3(0x13A2AE), "seen_address":bit7(0x13A2EC), "obtainable":true},
    "Seraphimon":{"obtained_address":bit4(0x13A2AE), "seen_address":bit0(0x13A2ED), "obtainable":true},
    "HiAndromon":{"obtained_address":bit5(0x13A2AE), "seen_address":bit1(0x13A2ED), "obtainable":true},
    "Devitamamon":{"obtained_address":bit6(0x13A2AE), "seen_address":bit2(0x13A2ED), "obtainable":true},
    "CherubimonG":{"obtained_address":bit7(0x13A2AE), "seen_address":bit3(0x13A2ED), "obtainable":true},
    "CherubimonE":{"obtained_address":bit0(0x13A2AF), "seen_address":bit4(0x13A2ED), "obtainable":true},
    "Gallantmon":{"obtained_address":bit1(0x13A2AF), "seen_address":bit5(0x13A2ED), "obtainable":false},
    "GallantmonCM":{"obtained_address":bit2(0x13A2AF), "seen_address":bit6(0x13A2ED), "obtainable":false},
    "MegaGargomon":{"obtained_address":bit3(0x13A2AF), "seen_address":bit7(0x13A2ED), "obtainable":true},
    "Sakuyamon":{"obtained_address":bit4(0x13A2AF), "seen_address":bit0(0x13A2EE), "obtainable":true},
    "Diaboromon":{"obtained_address":bit5(0x13A2AF), "seen_address":bit1(0x13A2EE), "obtainable":true},
    "Neptunmon":{"obtained_address":bit6(0x13A2AF), "seen_address":bit2(0x13A2EE), "obtainable":true},
    "Pukumon":{"obtained_address":bit7(0x13A2AF), "seen_address":bit3(0x13A2EE), "obtainable":true},
    "Gryphonmon":{"obtained_address":bit0(0x13A2B0), "seen_address":bit4(0x13A2EE), "obtainable":true},
    "Preciomon":{"obtained_address":bit1(0x13A2B0), "seen_address":bit5(0x13A2EE), "obtainable":true},
    "Armageddemon":{"obtained_address":bit2(0x13A2B0), "seen_address":bit6(0x13A2EE), "obtainable":true},
    "MaloMyotismon":{"obtained_address":bit3(0x13A2B0), "seen_address":bit7(0x13A2EE), "obtainable":true},
    "ImperialdramonDMB":{"obtained_address":bit4(0x13A2B0), "seen_address":bit0(0x13A2EF), "obtainable":true},
    "Boltmon":{"obtained_address":bit5(0x13A2B0), "seen_address":bit1(0x13A2EF), "obtainable":true},
    "PrinceMamemon":{"obtained_address":bit6(0x13A2B0), "seen_address":bit2(0x13A2EF), "obtainable":true},
    "Ophanimon":{"obtained_address":bit7(0x13A2B0), "seen_address":bit3(0x13A2EF), "obtainable":true},
    "Zanbamon":{"obtained_address":bit0(0x13A2B1), "seen_address":bit4(0x13A2EF), "obtainable":true},
    "BlackMegaGargomon":{"obtained_address":bit1(0x13A2B1), "seen_address":bit5(0x13A2EF), "obtainable":true},
    "Jijimon":{"obtained_address":bit2(0x13A2B1), "seen_address":bit6(0x13A2EF), "obtainable":true},
    "Babamon":{"obtained_address":bit3(0x13A2B1), "seen_address":bit7(0x13A2EF), "obtainable":true},
    "Anubismon":{"obtained_address":bit4(0x13A2B1), "seen_address":bit0(0x13A2F0), "obtainable":true},
    "Parasimon":{"obtained_address":bit5(0x13A2B1), "seen_address":bit1(0x13A2F0), "obtainable":true},
    "Cannondramon":{"obtained_address":bit6(0x13A2B1), "seen_address":bit2(0x13A2F0), "obtainable":true},
    "SlashAngemon":{"obtained_address":bit7(0x13A2B1), "seen_address":bit3(0x13A2F0), "obtainable":true},
    "Eaglemon":{"obtained_address":bit0(0x13A2B2), "seen_address":bit4(0x13A2F0), "obtainable":true},
    "Dorugoramon":{"obtained_address":bit1(0x13A2B2), "seen_address":bit5(0x13A2F0), "obtainable":true},
    "Beelzemon":{"obtained_address":bit2(0x13A2B2), "seen_address":bit6(0x13A2F0), "obtainable":true},
    "BantyoLeomon":{"obtained_address":bit3(0x13A2B2), "seen_address":bit7(0x13A2F0), "obtainable":true},
    "Darkdramon":{"obtained_address":bit4(0x13A2B2), "seen_address":bit0(0x13A2F1), "obtainable":true},
    "Apocalymon":{"obtained_address":bit5(0x13A2B2), "seen_address":bit1(0x13A2F1), "obtainable":true},
    "Ebemon":{"obtained_address":bit6(0x13A2B2), "seen_address":bit2(0x13A2F1), "obtainable":true},
    "Gulfmon":{"obtained_address":bit7(0x13A2B2), "seen_address":bit3(0x13A2F1), "obtainable":true},
    "Goldramon":{"obtained_address":bit0(0x13A2B3), "seen_address":bit4(0x13A2F1), "obtainable":false},
    "ZeedMillenniummon":{"obtained_address":bit1(0x13A2B3), "seen_address":bit5(0x13A2F1), "obtainable":true},
    "GhoulmonB":{"obtained_address":bit2(0x13A2B3), "seen_address":bit6(0x13A2F1), "obtainable":true},
    "Kuzuhamon":{"obtained_address":bit3(0x13A2B3), "seen_address":bit7(0x13A2F1), "obtainable":true},
    "ChaosGallantmon":{"obtained_address":bit4(0x13A2B3), "seen_address":bit0(0x13A2F2), "obtainable":true},
    "MetalSeadramon":{"obtained_address":bit5(0x13A2B3), "seen_address":bit1(0x13A2F2), "obtainable":true},
    "Valkyrimon":{"obtained_address":bit6(0x13A2B3), "seen_address":bit2(0x13A2F2), "obtainable":true},
    "Justimon":{"obtained_address":bit7(0x13A2B3), "seen_address":bit3(0x13A2F2), "obtainable":true},
    "Vikemon":{"obtained_address":bit0(0x13A2B4), "seen_address":bit4(0x13A2F2), "obtainable":true},
    "BlackWarGreymon":{"obtained_address":bit1(0x13A2B4), "seen_address":bit5(0x13A2F2), "obtainable":true},
    "SkullMammothmon":{"obtained_address":bit2(0x13A2B4), "seen_address":bit6(0x13A2F2), "obtainable":true},
    "GranKuwagamon":{"obtained_address":bit3(0x13A2B4), "seen_address":bit7(0x13A2F2), "obtainable":true},
    "Pharaohmon":{"obtained_address":bit4(0x13A2B4), "seen_address":bit0(0x13A2F3), "obtainable":true},
    "Susanoomon":{"obtained_address":bit5(0x13A2B4), "seen_address":bit1(0x13A2F3), "obtainable":true},
    "Alphamon":{"obtained_address":bit6(0x13A2B4), "seen_address":bit2(0x13A2F3), "obtainable":true},
    "Magnadramon":{"obtained_address":bit7(0x13A2B4), "seen_address":bit3(0x13A2F3), "obtainable":true},
    "Millenniummon":{"obtained_address":bit0(0x13A2B5), "seen_address":bit4(0x13A2F3), "obtainable":true},
    "MoonMillenniummon":{"obtained_address":bit1(0x13A2B5), "seen_address":bit5(0x13A2F3), "obtainable":true},
    "Megidramon":{"obtained_address":bit2(0x13A2B5), "seen_address":bit6(0x13A2F3), "obtainable":false},
    "Sleipmon":{"obtained_address":bit3(0x13A2B5), "seen_address":bit7(0x13A2F3), "obtainable":false},
    "ShineGreymon":{"obtained_address":bit4(0x13A2B5), "seen_address":bit0(0x13A2F4), "obtainable":true},
    "MirageGaogamon":{"obtained_address":bit5(0x13A2B5), "seen_address":bit1(0x13A2F4), "obtainable":true},
    "JumboGamemon":{"obtained_address":bit6(0x13A2B5), "seen_address":bit2(0x13A2F4), "obtainable":true},
    "Ravemon":{"obtained_address":bit7(0x13A2B5), "seen_address":bit3(0x13A2F4), "obtainable":true},
    "QueenChessmon":{"obtained_address":bit0(0x13A2B6), "seen_address":bit4(0x13A2F4), "obtainable":true},
    "KingChessmon":{"obtained_address":bit1(0x13A2B6), "seen_address":bit5(0x13A2F4), "obtainable":true},
    "ChronomonHM":{"obtained_address":bit2(0x13A2B6), "seen_address":bit6(0x13A2F4), "obtainable":false},
    "Lilithmon":{"obtained_address":bit3(0x13A2B6), "seen_address":bit7(0x13A2F4), "obtainable":true},
    "Varodurumon":{"obtained_address":bit4(0x13A2B6), "seen_address":bit0(0x13A2F5), "obtainable":true},
    "Apollomon":{"obtained_address":bit5(0x13A2B6), "seen_address":bit1(0x13A2F5), "obtainable":false},
    "Dianamon":{"obtained_address":bit6(0x13A2B6), "seen_address":bit2(0x13A2F5), "obtainable":true},
    "ShineGreymonBM":{"obtained_address":bit7(0x13A2B6), "seen_address":bit3(0x13A2F5), "obtainable":false},
    "ShineGreymonRM":{"obtained_address":bit0(0x13A2B7), "seen_address":bit4(0x13A2F5), "obtainable":true},
    "MirageGaogamonBM":{"obtained_address":bit1(0x13A2B7), "seen_address":bit5(0x13A2F5), "obtainable":true},
    "RavemonBM":{"obtained_address":bit2(0x13A2B7), "seen_address":bit6(0x13A2F5), "obtainable":true},
    "Lotosmon":{"obtained_address":bit3(0x13A2B7), "seen_address":bit7(0x13A2F5), "obtainable":true},
    "DotShineGreymon":{"obtained_address":bit4(0x13A2B7), "seen_address":bit0(0x13A2F6), "obtainable":false},
    "DotMirageGaogamon":{"obtained_address":bit5(0x13A2B7), "seen_address":bit1(0x13A2F6), "obtainable":true},
    "BeelzemonBM":{"obtained_address":bit6(0x13A2B7), "seen_address":bit2(0x13A2F6), "obtainable":true},
    "RosemonBM":{"obtained_address":bit7(0x13A2B7), "seen_address":bit3(0x13A2F6), "obtainable":true},
    "ArgomonM":{"obtained_address":bit0(0x13A2B8), "seen_address":bit4(0x13A2F6), "obtainable":true},
    "Minervamon":{"obtained_address":bit1(0x13A2B8), "seen_address":bit5(0x13A2F6), "obtainable":true},
    "Duftmon":{"obtained_address":bit2(0x13A2B8), "seen_address":bit6(0x13A2F6), "obtainable":true},
    "Chaosmon":{"obtained_address":bit3(0x13A2B8), "seen_address":bit7(0x13A2F6), "obtainable":true},
}

// $13A2FF: Miscellaneous Flags
//          Bit7 = Player Gender (0=Boy, 1=Girl)
// $13A319: Bit6 = Turns on while taking any Tamer Rank test, turns off after the test is done
//          Bit7 = Turns on when taking the Bronze Rank Test, turns off after the test is done
// $13A31A: Bit0 = Turns on when taking the Silver Rank Test, turns off after the test is done
//          Bit1 = Turns on when taking the Gold Rank Test, turns off after the test is done
//          Bit2 = Turns on when taking the Platinum Rank Test, turns off after the test is done
function tamer_rank_battle_check(tamer_rank) {
    if (tamer_rank == "Bronze")
        return bit7(0x13A319)
    else if (tamer_rank == "Silver")
        return bit0(0x13A31A)
    else if (tamer_rank == "Gold")
        return bit1(0x13A31A)
    else if (tamer_rank == "Platinum")
        return bit2(0x13A31A)
    return 1
}

// $13A31B: Bit0 = Turns on after becoming a Bronze Tamer
//          Bit1 = Turns on after becoming a Silver Tamer
//          Bit2 = Turns on after becoming a Gold Tamer
//          Bit3 = Turns on after becoming a Platinum Tamer
// $13A31C: Bit0 = 1st Sunken Tunnel valve closed (The one going south)
//          Bit1 = 2nd Sunken Tunnel valve closed (The one going east)
//          Bit2 = 3rd Sunken Tunnel valve closed (The one right before the Gate)
valves = [bit0(0x13A31C), bit1(0x13A31C), bit2(0x13A31C)]

// $13A31D: Bit2 = Tonpei defeated during Sunshine City segment
//          Bit3 = Cheetah defeated during Sunshine City segment
//          Bit4 = Kenpadefeated during Sunshine City segment
// $13A31E: Bit1 = Digi-Farm obtained
//          Bit4 = Digi-Farm obtained (This turns on with Bit1, but only Bit1 is actually checked to start the event to give the player their first Digi-Farm)
function digifarm_claimed() => bit1(0x13A31E) == 1

// $13A331: Darkdramon Flags
//          Bit1 = Digiar150S at 300 Tamer Points
//          Bit2 = Belt Machine at 800 Tamer Points
//          Bit3 = TarotCards at 1500 Tamer Points
//          Bit4 = 10000 "bits" at 2700 Tamer Points
//          Bit5 = Ultimate Ring at 5000 Tamer Points
//          Bit6 = Ultimate Helm at 7500 Tamer Points
//          Bit7 = Ultimate Swd at 9999 Tamer Points
tamer_point_rewards_address = 0x13A331

// $13A334: Password rewards received
//          Bit6 = DotMirageGaogamon
//          Bit7 = Legendary equipment set
DotMirageGaogamon_password = bit6(0x13A334)
legendary_equipment_password = bit7(0x13A334)

// $13A335: Bit0 = Sukamon
//          Bit1 = DotFalcomon
Sukamon_password = bit0(0x13A335)
DotFalcomon_password = bit1(0x13A335)

// $13A354: Password inputted flags
//          These bits are just for visual feedback, they don't actually prevent or allow for the obtaining of the rewards, that is handled in the other Password-related memory
//          
//          Bit1 = DotMirageGaogamon
//          Bit2 = Legendary equipment set
//          Bit3 = Sukamon
//          Bit4 = DotFalcomon
// $13A389: Treasure Chest Flags
//          Bit4 = Chip Forest (Novice Cloak)
//          Bit5 = Chip Forest (Forest Key)
// $13A38A: Bit0 = Chip Forest (Chaos Area) (Digiar150D)
//          Bit3 = Login Mountain (GateDisk)
//          Bit5 = Login Mountain (Digimin80D)
// $13A38B: Bit0 = Login Mountain (Digiar150D)
//          Bit5 = Sunken Tunnel (Digimin80D)
//          Bit6 = Sunken Tunnel (GateDisk)
//          Bit7 = Sunken Tunnel (Tunnel Key)
// $13A38C: Bit0 = Sunken Tunnel (Digiar150S)
//          Bit6 = ResistorJungle (DigiReviverS)
// $13A38D: Bit1 = ResistorJungle (Digimin200D)
//          Bit2 = ResistorJungle (Chaos area) (Kindness DE)
//          Bit3 = Limit Valley (Digiar150D)
//          Bit4 = Limit Valley (Digiar150S)
// $13A38E: Bit0 = Limit Valley (Dark area) (Broad Shield)
//          Bit2 = Limit Valley (Chaos area) (Purity DE)
//          Bit3 = Magnet Mine (Digimin400S)
//          Bit5 = Magnet Mine (AntiSleepD)
//          Bit6 = Magnet Mine (DigiReviverD)
// $13A38F: Bit0 = Magnet Mine (GateDisk)
//          Bit1 = Magnet Mine (MultiRecovrD)
//          Bit5 = Magnet Mine (Chaos area) (Full RepairS)
// $13A390: Bit0 = Loop Swamp (Speed Ring(alpha))
//          Bit2 = Loop Swamp (Full DigiarS)
//          Bit4 = Loop Swamp (Bronze Blade)
//          Bit5 = Loop Swamp (MultiRecovrS)
//          Bit6 = Loop Swamp/Palette Amazon (Chaos area) (Honesty DE)
// $13A391: Bit0 = Palette Amazon (AntiBrainD)
//          Bit1 = Palette Amazon (Digiar600S)
//          Bit2 = Palette Amazon (Amazon Key)
//          Bit4 = Palette Amazon (Digiar600T)
//          Bit6 = Palette Amazon (GateDisk)
//          Bit7 = Palette Amazon (AntiNumbD)
// $13A393: Bit6 = ProcessFactory (Digimin200S)
// $13A394: Bit0 = ProcessFactory (MultiRecovrD)
//          Bit3 = ProcessFactory (ProcessKey1)
//          Bit4 = ProcessFactory (Chaos area) (Digiar600T)
//          Bit6 = AccessGlacier (Digiar600T)
// $13A395: Bit0 = AccessGlacier (Digiar600S)
//          Bit4 = AccessGlacier (Digimin200D)
//          Bit6 = AccessGlacier (Boss area) (Digimin400S)
//          Bit7 = AccessGlacier (Chaos area) (Sniper Ring(alpha))
// $13A396: Bit4 = Macro Sea (Digimin400S)
//          Bit7 = Macro Sea (Macro Key)
// $13A397: Bit6 = Proxy Island (Silver Blade)
// $13A398: Bit1 = Proxy Island (Spirit Ring(beta))
//          Bit3 = Proxy Island (Crit Ring (alpha))
//          Bit4 = Proxy Island (Chaos Area) (Parry Ring(alpha))
// $13A399: Bit1 = HighlightHaven (Full DigiminT)
//          Bit3 = HighlightHaven (Digiar600S)
//          Bit6 = Shadow Abyss (First room) (Digiar600S)
//          Bit7 = Shadow Abyss (Full DigiarD)
// $13A39A: Bit0 = Shadow Abyss (Full DigiarT)
//          Bit2 = Shadow Abyss (Digiar600S)
//          Bit4 = Shadow Abyss (Pltnm Cloak)
//          Bit7 = Shadow Abyss (Full DigiminD)
// $13A39B: Bit1 = Shadow Abyss (Chaos area) (PoisonCore(beta))
//          Bit3 = Chaos Brain (MultiRecoverT)
//          Bit7 = Chaos Brain (Spirit Ring(beta))
// $13A39C: Bit0 = Chaos Brain (Gold Blade)
//          Bit1 = Chaos Brain (Gold Cloak)
//          Bit6 = Chaos Brain (Dash Ring(alpha))
// $13A39D: Bit0 = Transfield (Area 1) (Full DigiarD)
//          Bit3 = Transfield (Area 2) (Magnet Robe(gamma))
//          Bit4 = Transfield (Area 2) (Dark Robe(gamma))
//          Bit5 = Transfield (Area 2) (Full DigiarT)
//          Bit6 = Transfield (Area 2) (EXP Ring (gamma))
// $13A39E: Bit1 = Transfield (Area 3) (Stone Robe(gamma))
//          Bit5 = Transfield (Area 3) (ThunderRb(gamma))
//          Bit6 = Thriller Ruins (Digimin80S)
//          Bit7 = Thirller Ruins (GateDisk)
// $13A39F: Bit2 = Thriller Ruins (PoisonCore(alpha))
//          Bit3 = Thriller Ruins (Chaos area) (Speed Ring(alpha))
//          Bit5 = Thriller Ruins (AntiBrainD)
// $13A3A0: Bit1 = Thriller Ruins (Chaos area) (MultiRecovrT)
//          Bit5 = Chip Forest (Dark Area) (Novice Blade)
// $13A3A1: Bit0 = Chip Forest (Chaos area) (Digiar150T)
//          Bit2 = Login Mountain (Digimin80S)
//          Bit4 = Login Mountain (after dark area) (GateDisk)
//          Bit5 = Login Mountain (after dark area) (Digimin80S)
// $13A3A2: Bit0 = Login Mountain (Chaos area right) (GateDisk)
//          Bit1 = Login Mountain (Chaos area left) (Miracle DE)
//          Bit2 = Sunken Tunnel (AntiPoisonS)
//          Bit4 = Sunken Tunnel (AntiNumbS)
//          Bit6 = Sunken Tunnel (GateDisk - After closing first valve)
// $13A3A3: Bit0 = Sunken Tunnel (Chaos Area) (Light DE)
//          Bit5 = ResistorJungle (GateDisk)
//          Bit6 = ResistorJungle (Jungle Key)
// $13A3A4: Bit5 = Limit Valley (Digiar150T)
//          Bit7 = Limit Valley (Digiar150D)
// $13A3A5: Bit3 = Magnet Mine (Digiar150D)
//          Bit7 = Magnet Mine (AntiSleepS)
// $13A3A6: Bit1 = Magnet Mine (DigiReviverD)
//          Bit3 = Magnet Mine (Chaos area) (GateDisk)
//          Bit4 = Loop Swamp (Bronze Plate)
//          Bit6 = Loop Swamp (GateDisk)
// $13A3A7: Bit3 = Loop Swamp (DigiReviverS)
//          Bit5 = Palette Amazon (Spirit Ring(beta))
//          Bit6 = Palette Amazon (Digimin400D)
// $13A3A8: Bit0 = Palette Amazon (DigiReviverS)
//          Bit3 = Palette Amazon (Courage DE)
//          Bit4 = Palette Amazon (on the way to the Boss screen) (DigiReviverS)
//          Bit6 = Palette Amazon (Silver Cloak)
// $13A3AA: Bit2 = ProcessFactory (ProcessKey3)
//          Bit7 = ProcessFactory (GateDisk)
// $13A3AB: Bit1 = ProcessFactory (ProcessKey2)
//          Bit3 = ProcessFactory (Chaos area) (Full DigiminS)
//          Bit5 = AccessGlacer (FriendshipDE)
//          Bit6 = AccessGlacer (Full DigiminD)
//          Bit7 = AccessGlacer (Digiar600D)
// $13A3AC: Bit0 = AccessGlacier (NumbCore(beta))
//          Bit2 = AccessGlacier (Gold Blade)
//          Bit5 = AccessGlacier (Chaos area) (Health Ring(alpha))
//          Bit7 = AccessGlacier (Chaos area) (Full RepairT)
// $13A3AD: Bit0 = Macro Sea (Dmg Ring (alpha))
//          Bit2 = Macro Sea (Digimin400T)
//          Bit4 = Macro Sea (Digimin400T)
//          Bit7 = Proxy Island (Bit Ring (alpha))
// $13A3AE: Bit0 = Proxy Island (Digiar600T)
//          Bit2 = Proxy Island (Full DigiarS)
//          Bit3 = Proxy Island (Silver Cloak)
//          Bit4 = Proxy Island (AntiNumbT)
// $13A3AF: Bit1 = HighlightHaven (Digimin400T)
//          Bit3 = HighlightHaven (Digiar600T)
//          Bit6 = HighlightHaven (Pltnm Cloak)
//          Bit7 = HighlightHaven (Hallway before final portal) (Digimin400T)
// $13A3B0: Bit1 = HighlightHaven (Chaos area) (DigiReviverT)
//          Bit4 = Shadow Abyss (Digimin400T)
// $13A3B1: Bit1 = Shadow Abyss (Dmg Ring (beta))
//          Bit5 = Chaos Brain (Speed Ring(beta))
// $13A3B2: Bit4 = Chaos Brain (Bit Ring (beta))
//          Bit5 = Chaos Brain (Spirit Ring(beta))
// $13A3B3: Bit1 = Transfield (Area 3) (Bit Ring (gamma))
// $13A3B4: Bit3 = Thriller Ruins (Digimin80S)
// $13A3B5: Bit0 = Thriller Ruins (Chaos area) (Full RepairS)
//          Bit2 = Thriller Ruins (Chaos area) (Digimin400T)
//          Bit4 = Chip Forest (Dark area) (GateDisk)
// $13A3B6: Bit0 = ResistorJungle (Digiar300D)
//          Bit2 = Thriller Ruins (Thriller Key)
//          Bit3 = Thriller Ruins (Spirit Ring(alpha))
treasure_chests = {
    "Chip Forest":[bit4(0x13A389),bit5(0x13A389), bit0(0x13A38A), bit5(0x13A3A0), bit0(0x13A3A1), bit4(0x13A3B5)],
    "Thriller Ruins":[bit6(0x13A39E), bit7(0x13A39E), bit2(0x13A39F), bit3(0x13A39F), bit5(0x13A39F), bit1(0x13A3A0), bit3(0x13A3B4), bit0(0x13A3B5), bit2(0x13A3B5), bit2(0x13A3B6), bit3(0x13A3B6)],
    "Sunken Tunnel":[bit5(0x13A38B), bit6(0x13A38B), bit7(0x13A38B), bit0(0x13A38C), bit2(0x13A3A2), bit4(0x13A3A2), bit6(0x13A3A2), bit0(0x13A3A3)],
    "Login Mountain":[bit3(0x13A38A), bit5(0x13A38A), bit0(0x13A38B), bit2(0x13A3A1), bit4(0x13A3A1), bit5(0x13A3A1), bit0(0x13A3A2), bit1(0x13A3A2)],
    "Limit Valley":[bit3(0x13A38D), bit4(0x13A38D), bit0(0x13A38E), bit2(0x13A38E), bit5(0x13A3A4), bit7(0x13A3A4)],
    "Loop Swamp":[bit0(0x13A390), bit2(0x13A390), bit4(0x13A390), bit5(0x13A390), bit6(0x13A390), bit4(0x13A3A6), bit6(0x13A3A6), bit3(0x13A3A7)],
    "ResistorJungle":[bit6(0x13A38C), bit1(0x13A38D), bit2(0x13A38D), bit5(0x13A3A3), bit6(0x13A3A3), bit0(0x13A3B6)],
    "Magnet Mine":[bit3(0x13A38E), bit5(0x13A38E), bit6(0x13A38E), bit0(0x13A38F), bit1(0x13A38F), bit5(0x13A38F), bit3(0x13A3A5), bit7(0x13A3A5), bit1(0x13A3A6), bit3(0x13A3A6)],
    "Palette Amazon":[bit0(0x13A391), bit1(0x13A391), bit2(0x13A391), bit4(0x13A391), bit6(0x13A391), bit7(0x13A391), bit5(0x13A3A7), bit6(0x13A3A7), bit0(0x13A3A8), bit3(0x13A3A8), bit4(0x13A3A8), bit6(0x13A3A8)],
    "AccessGlacier":[bit6(0x13A394), bit0(0x13A395), bit4(0x13A395), bit6(0x13A395), bit7(0x13A395), bit5(0x13A3AB), bit6(0x13A3AB), bit7(0x13A3AB), bit0(0x13A3AC), bit2(0x13A3AC), bit5(0x13A3AC), bit7(0x13A3AC)],
    "Macro Sea":[bit4(0x13A396), bit7(0x13A396), bit0(0x13A3AD), bit2(0x13A3AD), bit4(0x13A3AD)],
    "ProcessFactory":[bit6(0x13A393), bit0(0x13A394), bit3(0x13A394), bit4(0x13A394), bit2(0x13A3AA), bit7(0x13A3AA)],
    "Proxy Island":[bit6(0x13A397), bit1(0x13A398), bit3(0x13A398), bit4(0x13A398), bit7(0x13A3AD), bit0(0x13A3AE), bit2(0x13A3AE), bit3(0x13A3AE), bit4(0x13A3AE), bit1(0x13A3AB), bit3(0x13A3AB)],
    "Chaos Brain":[bit3(0x13A39B), bit7(0x13A39B), bit0(0x13A39C), bit1(0x13A39C), bit6(0x13A39C), bit5(0x13A3B1), bit4(0x13A3B2), bit5(0x13A3B2)],
    "Transfield":[bit0(0x13A39D), bit3(0x13A39D), bit4(0x13A39D), bit5(0x13A39D), bit6(0x13A39D), bit1(0x13A39E), bit5(0x13A39E), bit1(0x13A3B3)],
    "HighlightHaven":[bit1(0x13A399), bit3(0x13A399), bit1(0x13A3AF), bit3(0x13A3AF), bit6(0x13A3AF), bit7(0x13A3AF), bit1(0x13A3B0)],
    "Shadow Abyss":[bit6(0x13A399), bit7(0x13A399), bit0(0x13A39A), bit2(0x13A39A), bit4(0x13A39A), bit7(0x13A39A), bit1(0x13A39B), bit4(0x13A3B0), bit1(0x13A3B1)]
}

// $13A3B7: Gate Flags
//          Bit5 = Chip Forest
//          Bit6 = Sunken Tunnel
//          Bit7 = Thriller Ruins
// $13A3B8: Bit0 = ResistorJungle
//          Bit2 = Palette Amazon
//          Bit3 = Macro Sea
//          Bit4 = Process Factory (Gate 2) (ProcessKey1)
//          Bit5 = Process Factory (Gate 3) (ProcessKey2)
//          Bit6 = Process Factory (Gate 1) (ProcessKey3)
gates = {
    "Chip Forest": [bit5(0x13A3B7)],
    "Sunken Tunnel": [bit6(0x13A3B7)],
    "Thriller Ruins": [bit7(0x13A3B7)],
    "ResistorJungle": [bit0(0x13A3B8)],
    "Palette Amazon": [bit2(0x13A3B8)],
    "Macro Sea": [bit3(0x13A3B8)],
    "Login Mountain":[],
    "Limit Valley":[],
    "Loop Swamp":[],
    "Magnet Mine":[],
    "AccessGlacier":[],
    "ProcessFactory":[bit4(0x13A3B8), bit5(0x13A3B8), bit6(0x13A3B8)],
    "Proxy Island":[],
    "Chaos Brain":[],
    "Transfield":[],
    "HighlightHaven":[],
    "Shadow Abyss":[]
}

// $13A500: Digimon Info [4 bytes] (Digimon 1: Chicchimon)
//          Bit0 - 1: Unused?
//          Bit2 - 11: Scan % (0x3e7 = 999 Max)
//          Bit12 - 21: Number Defeated (0x9fc = 999 Max)
//          Bit22 - 31: Number Met (0x3e7 = 999 Max)
// $13A554: Sunmon [32 bits]
// $13ABCC: Digimon Info [32 bits] - Last Digimon: Chaosmon
// $13ADE0: Screen IDs [16 bits]
//          ------------
//          Sunshine City
//          0xed - 0xf1
//          0xf2 = Quest Counter
//          0xf3 = Shop
//          0xf4 = Union Room
//          0xf5 = Union Room (Chaos Brain access)
//          ------------
//          Tamer Home (Dawn Only)
//          0xf6 - 0xf7
//          ------------
//          Shine Terminal
//          0xf8
//          0xfa = Shine W Route
//          0xfc = Shine W Area
//          0xfd = Shine S Route
//          0xff = Shine S Area
//          0x100 = Shine N Route
//          0x102 = Shine N Area
//          ------------
//          Darkmoon City
//          0x103 - 0x107
//          0x108 = Quest Counter
//          0x109 = Shop
//          0x10a = Union Room
//          0x10b = Union Room (Chaos Brain access)
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
//          0x11f = SpectatorSeats
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
    0xf5:"in Sunshine City's Union Room",
    0xf6:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0xf7:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0xf8:"in Shine Terminal",
    0xf9:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0xfa:"in Shine Terminal",
    0xfb:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0xfc:"in Shine Terminal",
    0xfd:"in Shine Terminal",
    0xfe:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0xff:"in Shine Terminal",
    0x100:"in Shine Terminal",
    0x101:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x102:"in Shine Terminal",
    0x103:"in Darkmoon City",
    0x104:"in Darkmoon City",
    0x105:"in Darkmoon City",
    0x106:"in Darkmoon City",
    0x107:"in Darkmoon City",
    0x108:"in Darkmoon City",
    0x109:"in Darkmoon City",
    0x10a:"in Darkmoon City's Union Room",
    0x10b:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x10c:"Home",
    0x10d:"Home",
    0x10e:"in the Dark Terminal",
    0x10f:"in the Dark Terminal",
    0x110:"in the Dark E Route",
    0x111:"in the Dark E Route",
    0x112:"in the Dark E Area",
    0x113:"in the Dark S Route",
    0x114:"in the Dark S Route",
    0x115:"in the Dark S Area",
    0x116:"in the Dark N Route",
    0x117:"in the Dark N Route",
    0x118:"in the Dark N Area",
    0x119:"in the Center Bridge",
    0x11a:"in the Center Bridge",
    0x11b:"in the Coliseum Entry",
    0x11c:"in the Coliseum Lobby",
    0x11d:"in the Coliseum's NC Wait Room",
    0x11e:"SENTENCED TO THE DARK AREA FOR CHEATING!",
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
    0x15b:"in Magnet Mine",
    0x15c:"in Magnet Mine",
    0x15d:"in Magnet Mine",
    0x15e:"in Magnet Mine",
    0x15f:"in Magnet Mine",
    0x160:"in Magnet Mine",
    0x161:"in Magnet Mine",
    0x162:"in Magnet Mine",
    0x163:"in Magnet Mine",
    0x164:"in Magnet Mine",
    0x165:"in Magnet Mine",
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
    0x179:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x17a:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x17b:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x17c:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x17d:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x17e:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x17f:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x180:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x181:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x182:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x183:"SENTENCED TO THE DARK AREA FOR CHEATING!",
    0x184:"in ProcessFactory",
    0x185:"in ProcessFactory",
    0x186:"in ProcessFactory",
    0x187:"in ProcessFactory",
    0x188:"in ProcessFactory",
    0x189:"in ProcessFactory",
    0x18a:"in ProcessFactory",
    0x18b:"in ProcessFactory",
    0x18c:"in ProcessFactory",
    0x18d:"in ProcessFactory",
    0x18e:"in ProcessFactory",
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
    "Sunshine City Union Room":0xf4,
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

function current_screen_ID() => word(0x13ADE0)

// $14B20C: In-Game [16 bits]
//          0x0000 = In Title Menu
//          0xffff = In Game
function game_state() => word(0x14B20C)

// $16C76D: Digimon Scan Data obtainable
//          0x00 = No Scan Data obtainable (Used for Boss encounters)
//          0x01 = Scan Data obtainable as normal
function scan_data_obtainable() => byte(0x16C76D)

// $16C770: ID of Enemy Digimon in 1st (left-most) zone [32 bits]
//          Includes all regular Digimon plus the Bosses:
//          0x209 = SkullBaluchimon (0x20a & 0x20b are its left and right areas)
//          0xffffffff = No Digimon in this Zone
// $16C774: ID of Enemy Digimon in 2nd zone [32 bits]
//          0xffffffff = No Digimon in this Zone
// $16C778: ID of Enemy Digimon in 3rd zone [32 bits]
//          0xffffffff = No Digimon in this Zone
// $16C77C: ID of Enemy Digimon in 4th zone [32 bits]
//          0xffffffff = No Digimon in this Zone
// $16C780: ID of Enemy Digimon in 5th (right-most) zone [32 bits]
//          0xffffffff = No Digimon in this Zone
// $16C798: Drop Info [8 bytes]
//          Digimon ID [First 32 bits]
//          Drop type? [Next 8 bytes]
//          Item [Last 8 bytes] (0xffff if no drop)
// $1EEE38: Current SubLocation ID [16 bits]
//          5 = Chaos Brain
//          7 = Login Mountain
//          8 = Magnet Mine
//          2c = Dark Terminal
//          34 = Colosseum
//          ffff = Location Selector
// $1F7E30: Pointer to Convert/Evolution Menu [32 bits]
//          0x02296e28 = On DigiLab menu
//          0x02296e88 = On Special Digivolve menu
//          0x00000000 = Anywhere else
function in_special_evolution_menu(check_previous_frame = false) {
    if (check_previous_frame == true)
        return prev(dword(0x1F7E30)) == 0x02296e88
    else
        return dword(0x1F7E30) == 0x02296e88
}

// $256D20: [Graphic Data]
//          Using these values for HP rather than the real HP makes it so achievements pop after the hit has been dealt, rather than when the attack was used
//          1st Enemy Digimon's Current HP [32 bits]
// $256D2C: [Graphic Data]
//          2nd Enemy Digimon's Current HP [32 bits]
// $256D38: [Graphic Data]
//          3rd Enemy Digimon's Current HP [32 bits]
// $256D44: [Graphic Data]
//          4th Enemy Digimon's Current HP [32 bits]
// $256D50: [Graphic Data]
//          5th Enemy Digimon's Current HP [32 bits]
enemy_hp_graphic_data = [
    dword(0x256D20),
    dword(0x256D2C),
    dword(0x256D38),
    dword(0x256D44),
    dword(0x256D50),
]

// $256D90: In-Battle Pointer? [32 bits]
//          Seems to be the pointer to graphics, could not find the one for data
//          0x00000000 = Not in battle
//          0x02166c00 = In-Battle
function in_battle() => dword(0x256D90) == 0x02166c00

// $25A698: [Battle-only information]
//          1st Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 1st Digimon in party (Will never actually happen in reality)
first_party_digimon_inbattle = 0x25A698
party_digimon_inbattle_offsets = {
    "ID": 0x8,
    "Curr HP": 0x14,
    "Max HP": 0x18,
    "Max MP": 0x20,
    "Attack": 0x68,
    "Defense": 0x6E,
    "Spirit": 0x74,
    "Speed": 0x7A,
    "Next Digimon": 0xD8,
}

// $25A69C: Unique ID [32 bits]
// $25A6A0: Digimon ID [32 bits]
// $25A6AC: Current HP [32 bits]
// $25A6B0: Max HP [32 bits]
// $25A6B4: Current MP [32 bits]
// $25A6B8: Max MP [32 bits]
// $25A6FC: Earth Resistance? [16 bits]
//          This one is weird, because it starts at 0x00ff but transform into another number when hit by an Earth-resistance down move only. The Modification field next to this works as normal
// $25A700: Attack Stat [16 bits] (Includes equipment stats)
// $25A702: Attack Modification [16 bits]
//          Starts at 0 and goes up or down depending on the status inflicted (aka. Attack Up or Attack Down). I think they are just extra stats added to the base stat? But not sure.
// $25A704: Attack Support Buff [16 bits]
//          Amount gained from support traits from other Digimon
// $25A706: Defense Stat [16 bits]
// $25A708: Defense Modification [16 bits]
// $25A70A: Defense Support Buff [16 bits]
// $25A70C: Spirit Stat [16 bits]
// $25A70E: Spirit Modification [16 bits]
// $25A710: Spirit Support Buff [16 bits]
// $25A712: Speed Stat [16 bits]
// $25A714: Speed Modification [16 bits]
// $25A716: Spirit Support Buff [16 bits]
// $25A724: Light Resistance [16 bits]
// $25A72A: Dark Resistance [16 bits]
// $25A730: Fire Resistance [16 bits]
// $25A732: Fire Resistance Modification [16 bits]
//          Goes up to 0x0096 upwards, downwards limit unknown.
// $25A736: Unused Resistance? [16 bits]
//          I feel like something weird happened when coding the Earth resistance and this was suppossed to be where it was stored (see note on Earth resistance)
// $25A73C: Wind Resistance [16 bits]
// $25A742: Steel Resistance [16 bits]
// $25A748: Water Resistance [16 bits]
// $25A74E: Thunder Resistance [16 bits]
// $25A770: --------------------------------------------------------
//          2nd Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 2nd Digimon in party
// $25A774: Unique ID [32 bits]
// $25A778: Digimon ID [32 bits]
// $25A784: Current HP [32 bits]
// $25A788: Max HP [32 bits]
// $25A78C: Current MP [32 bits]
// $25A790: Max MP [32 bits]
// $25A7D8: Attack Stat [16 bits]
// $25A7DE: Defense Stat [16 bits]
// $25A7E4: Spirit Stat [16 bits]
// $25A7EA: Speed Stat [16 bits]
// $25A848: --------------------------------------------------------
//          3rd Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 3rd Digimon in party
// $25A84C: Unique ID [32 bits]
// $25A850: Digimon ID [32 bits]
// $25A85C: Current HP [32 bits]
// $25A860: Max HP [32 bits]
// $25A864: Current MP [32 bits]
// $25A868: Max MP [32 bits]
// $25A8B0: Attack Stat [16 bits]
// $25A8B6: Defense Stat [16 bits]
// $25A8BC: Spirit Stat [16 bits]
// $25A8C2: Speed Stat [16 bits]
// $25A920: 0xff = No 4th Digimon in party
// $25A920: --------------------------------------------------------
//          4th Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 4th Digimon in party
// $25A924: Unique ID [32 bits]
// $25A928: Digimon ID [32 bits]
// $25A934: Current HP [32 bits]
// $25A938: Max HP [32 bits]
// $25A93C: Current MP [32 bits]
// $25A940: Max MP [32 bits]
// $25A988: Attack Stat [16 bits]
// $25A98E: Defense Stat [16 bits]
// $25A994: Spirit Stat [16 bits]
// $25A99A: Speed Stat [16 bits]
// $25A9F8: 0xff = No 5th Digimon in party
// $25A9F8: --------------------------------------------------------
//          5th Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 5th Digimon in party
// $25A9FC: Unique ID [32 bits]
// $25AA00: Digimon ID [32 bits]
// $25AA0C: Current HP [32 bits]
// $25AA10: Max HP [32 bits]
// $25AA14: Current MP [32 bits]
// $25AA18: Max MP [32 bits]
// $25AA60: Attack Stat [16 bits]
// $25AA66: Defense Stat [16 bits]
// $25AA6C: Spirit Stat [16 bits]
// $25AA72: Speed Stat [16 bits]
// $25AAD0: 0xff = No 6th Digimon in party
// $25AAD0: --------------------------------------------------------
//          6th Digimon in party [216 bytes]
//          --------------------------------------------------------
//          0xff = No 6th Digimon in party
// $25AAD4: Unique ID [32 bits]
// $25AAD8: Digimon ID [32 bits]
// $25AAE4: Current HP [32 bits]
// $25AAE8: Max HP [32 bits]
// $25AAEC: Current MP [32 bits]
// $25AAF0: Max MP [32 bits]
// $25AB38: Attack Stat [16 bits]
// $25AB3E: Defense Stat [16 bits]
// $25AB44: Spirit Stat [16 bits]
// $25AB4A: Speed Stat [16 bits]
// $25ABA8: 1st Enemy Digimon Information
//          ---------------------------------------------
first_enemy_digimon = 0x25ABA8
enemy_digimon_info_offsets = {
    "ID": 0x04,
    "CurrHP": 0x10, // Actual HP, use graphic HP so achievement pops in a better place
    "Next Digimon": 0xD8,
}

// $25ABAC: Digimon ID [16 bits]
//          Includes the IDs for all regular Digimon, plus the following special Digimon used as Bosses in different parts of the game:
//          
//          0x1f9 = Ophanimon Core
//          0x1ff = ChaosGrimmon
//          0x202 = ExoGrimmon
//          0x205 = ????
//          0x209 = SkullBaluchimon
//          0x20f = Mercurimon
//          0x212 = Gaiomon
//          0x22b = Grimmon
//          0x23c = ChaosGallantmon
//          
//          Gaia Origin Challenge
//          0x23d = Sleipmon
//          0x23e = Duftmon
//          0x23f = Apocalymon
//          0x240 = Susanoomon
//          0x241 = ZeedMillenniummon
//          0x242 = Alphamon
//          0x243 = Omnimon
//          0x244 = BeelzemonBM
//          0x245 = GallantmonCM
//          
//          0x2a8 = Seasarmon (Grimmon MiniBoss)
//          0x2b0 = Fugamon (Mercurimon MiniBoss)
//          0x2b2 = Tsukaimon (Gaiomon MiniBoss)
//          0x2b3 = Gaiomon (Before GranDracmon Boss)
//          0x2b9 = GranDracmon
//          
//          Tamer Rank fights
//          0x2dc = Apollomon (Legendary Battle 1)
//          0x2dd = ShineGreymon (Legendary Battle 1)
//          0x2de = Angemon (Legendary Battle 1)
//          0x2e2 = GeoGreymon (Legendary Battle 2)
//          0x2e3 = Peckmon (Legendary Battle 2)
//          0x2e4 = Gaogamon (Legendary Battle 2)
//          0x2e5 = RosemonBM (Legendary Battle 3)
//          0x2e6 = RavemonBM (Legendary Battle 3)
//          0x2e7 = ShineGreymonBM (Legendary Battle 4)
//          0x2e8 = MirageGaogamonBM (Legendary Battle 4)
//          0x2e9 = ChronomonHM (Legendary Battle 5)
//          0x2ea = Shadramon (Bronze Battle)
//          0x2eb = Magnamon (Bronze Battle)
//          0x2ec = Parasimon (Silver Battle)
//          0x2ed = MoonMillenniummon (Silver Battle)
//          0x2ee = Vademon (Silver Battle)
//          0x2ef = BantyoLeomon (Gold Battle)
//          0x2f0 = LucemonCM (Gold Battle)
//          0x2f1 = Lampmon (Gold Battle)
//          0x2f2 = Kuramon (Platinum Battle)
//          0x2f3 = ImperialdramonPM (Platinum Battle)
//          0x2f4 = Minomon (Platinum Battle)

boss_digimon_ids = {
    "OphanimonC":0x1f9,
    "ChaosGrimmon":0x1ff,
    "ExoGrimmon":0x202,
    "????":0x205,
    "SkullBaluchimon":0x209,
    "Mercurimon":0x20f,
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
    // "Grimmon":0x22b, // Dawn ID
    "Grimmon":0x22e,
    "ChaosGallantmon":0x23c,
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
    "Seasarmon (Grimmon MiniBoss)":0x2a8,
    "Fugamon (Mercurimon MiniBoss)":0x2b0,
    "Tsukaimon (Gaiomon MiniBoss)":0x2b2,
    "Gaiomon (Before GranDracmon Boss)":0x2b3,
    "GranDracmon":0x2b9,
    // Tamer Rank fights
    "Apollomon (Legendary Battle 1)":0x2dc,
    "ShineGreymon (Legendary Battle 1)":0x2dd,
    "Angemon (Legendary Battle 1)":0x2df,
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

// $25ABBC: 1st Enemy Digimon Information
//          ---------------------------------------------
//          Current HP [16 bits]
// $25ABC0: Max HP [16 bits]
// $25AC0C: Earth Resistance? [16 bits]
// $25AC10: Attack Stat [16 bits]
// $25AC12: Attack Modification [16 bits]
// $25AC16: Defense Stat [16 bits]
// $25AC18: Defense Modification [16 bits]
// $25AC1C: Spirit Stat [16 bits]
// $25AC1E: Spirit Modification [16 bits]
// $25AC22: Speed Stat [16 bits]
// $25AC24: Speed Modification [16 bits]
// $25AC34: Light Resistance [16 bits]
// $25AC3A: Dark Resistance [16 bits]
// $25AC40: Fire Resistance [16 bits]
// $25AC42: Fire Resistance Modification [16 bits]
// $25AC46: Unused Resistance? [16 bits]
// $25AC4C: Wind Resistance [16 bits]
// $25AC52: Steel Resistance [16 bits]
// $25AC58: Water Resistance [16 bits]
// $25AC5E: Thunder Resistance [16 bits]
// $25AC80: 2nd Enemy Digimon Information
//          ---------------------------------------------
//          0xff = No 2nd Enemy Digimon
// $25AC84: Digimon ID [16 bits]
// $25AC94: Curr HP [16 bits]
// $25AC98: Max HP [16 bits]
// $25ACE8: Attack Stat [16 bits]
// $25ACEE: Defense Stat [16 bits]
// $25ACF4: Spirit Stat [16 bits]
// $25ACFA: Speed Stat [16 bits]
// $25AD0C: Light Resistance [16 bits]
// $25AD12: Dark Resistance [16 bits]
// $25AD18: Fire Resistance [16 bits]
// $25AD1E: Unused Resistance? [16 bits]
// $25AD24: Wind Resistance [16 bits]
// $25AD2A: Steel Resistance [16 bits]
// $25AD30: Water Resistance [16 bits]
// $25AD36: Thunder Resistance [16 bits]
// $25AD58: 3rd Enemy Digimon Information
//          ---------------------------------------------
//          0xff = No 3rd Enemy Digimon
// $25AD5C: Digimon ID [16 bits]
// $25AD6C: Curr HP [16 bits]
// $25AD70: Max HP [16 bits]
// $25ADC0: Attack Stat [16 bits]
// $25ADC6: Defense Stat [16 bits]
// $25ADCC: Spirit Stat [16 bits]
// $25ADD2: Speed Stat [16 bits]
// $25ADE4: Light Resistance [16 bits]
// $25ADEA: Dark Resistance [16 bits]
// $25ADF0: Fire Resistance [16 bits]
// $25ADF6: Unused Resistance? [16 bits]
// $25ADFC: Wind Resistance [16 bits]
// $25AE02: Steel Resistance [16 bits]
// $25AE08: Water Resistance [16 bits]
// $25AE0E: Thunder Resistance [16 bits]
// $25AE30: 0xff = No 4th Enemy Digimon
// $25AF08: 0xff = No 5th Enemy Digimon
// $25AFE0: 0xff = No 6th Enemy Digimon? (Enemy field isn't that big, maybe it's used for Player vs Player fights?)
// $25E288: In-Battle option selection
//          0x00 = Fight
//          0x01 = Move
//          0x02 = Item
//          0x03 = Defend
//          0x04 = Flee
// $25E289: In-Battle sub-option selection
//          0x00 = 1st item/Attack/etc
//          0x01 = 2nd Item/Attack/etc
//          ...
// $25E28A: In-Battle Digimon target selection
//          A corresponding bit turns on depending on who the attack/item/etc targets. If it targets more than 1 Digimon at the same time, both bits will turn on.
//          Works for both enemy Digimon and player's Digimon
//          Bit4 = Left-most Digimon
//          ...
//          Bit0 = Right-most Digimon
// $25E298: In-Battle selection states
//          Choosing an attack/item/etc doesn't change the previous state
//          0x1f = Fight selected
//          0x20 = Move selected
//          0x21 = Item selected
//          0x22 = Defend selected
//          0x23 = Flee selected
//          0x24 = Accepted (Attack confirmed/Item used/etc)
//          0x25 = Cacnelled
// $25EB50: Experience points from 1st Digimon [32 bits]
// $25EB54: Experience points from 2nd Digimon [32 bits]
// $25EB58: Experience points from 3rd Digimon [32 bits]
// $25EB5C: Experience points from 4th Digimon [32 bits]
// $25EB60: Experience points from 5th Digimon [32 bits]
// $25EB64: Bits dropped [16 bits]
// $25EB66: Item Dropped 1 [16 bits] (0xffff if none dropped)
//          0x56 = Digiar150S
//          0x57 = Digiar150D
//          0x62 = Digimin80S
//          0xc2 = Wind Robe Alpha
//          0xcf = Wind Robe Beta
// $25EB68: Item Dropped 2 [16 bits] (0xffff if none dropped)
// $25EB6A: Item Dropped 3 [16 bits] (0xffff if none dropped)
// $25EB6C: Item Dropped 4 [16 bits] (0xffff if none dropped)
// $25EB6E: Item Dropped 5 [16 bits] (0xffff if none dropped)
// $25EB70: 1st Enemy Digimon ID [16 bits] (Goes from left to right, ignoring empty spaces)
// $25EB74: 2nd Enemy Digimon ID [16 bits] (Goes from left to right, ignoring empty spaces) 0x0000ffff if only 1 Digimon in battle
// $25EB78: 3rd Enemy Digimon ID [16 bits] (Goes from left to right, ignoring empty spaces) 0x0000ffff if less than 3 Digimon in battle
// $25EB7C: 4th Enemy Digimon ID [16 bits] (Goes from left to right, ignoring empty spaces) 0x0000ffff if less than 4 Digimon in battle
// $25EB80: 5th Enemy Digimon ID [16 bits] (Goes from left to right, ignoring empty spaces) 0x0000ffff if less than 5 Digimon in battle
// $296F94: Pointer to 1st DNA/Armor Digivolving Digimon [32 bits]
function base_dna_armor_digimon() => tbyte(0x296F94)

// $296F9C: Pointer to 2nd DNA Digimon [32 bits]
function second_dna_digimon() => tbyte(0x296F9C)

// $296FFC: DNA/Armor Digimon obtained Digimon ID [16 bits]
function dna_armor_digimon_obtained() => dword(0x296FFC)

// $297015: New Digimon's Personality
// $297034: New Digimon's Curr? HP [32 bits]
// $297038: New Digimon's Max? HP [32 bits]
// $29703C: New Digimon's Curr? MP [16 bits]
// $29703E: New Digimon's Max? MP [16 bits]
// $297040: New Digimon's Attack [16 bits]
// $297042: New Digimon's Defense [16 bits]
// $297044: New Digimon's Spirit [16 bits]
// $297046: New Digimon's Speed [16 bits]
// $29704A: New Digimon's Aptitude [16 bits]
// $2970AC: ID of In-Training Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no In-Training form
// $2970B0: ID of Rookie Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Rookie form
// $2970B4: ID of Champion Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Champion form
// $2970B8: ID of Ultimate Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Ultimate form
// $2970BC: ID of Mega Form of DNA Digimon [32 bits]
//          0xffffffff = Digimon has no or hasn't reached Mega form
// $297100: Light Resistance? [16 bits]
// $297102: Dark Resistance? [16 bits]
// $297104: Fire Resistance? [16 bits]
// $297106: Earth Resistance? [16 bits]
// $297108: Wind Resistance? [16 bits]
// $29710A: Steel Resistance? [16 bits]
// $29710C: Water Resistance? [16 bits]
// $29710E: Thunder Resistance? [16 bits]


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

function no_deaths_in_battle() {
    logic = always_true()

    for i in range (0, 5) {
        current_digimon = first_party_digimon_inbattle + party_digimon_inbattle_offsets["Next Digimon"] * i
        // We need to check if there is a Digimon in the current slot first before we check if someone has died, which is what the 0xff comparison is for
        logic = logic && disable_when(in_battle() && scan_data_obtainable() == 0x00 && byte(current_digimon) != 0xff && dword(current_digimon + party_digimon_inbattle_offsets["Curr HP"]) == 0)
    }

    return logic
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

function has_dna_evolved() {
    // Because of how the DNA evolution works, the first enemy chosen will transform into the DNA objective after the DNA is performed, so we need to check the previous value when comparing to the result digimon so it compares the Digimon before it evolves
    first_digimon_chosen = dword(base_dna_armor_digimon() + digimon_stats_offsets["Species ID"])
    
    // We substract the Digimon obtained from the first Digimon instead of comparing if they're equal so RATools generates the code correctly
    return prev(first_digimon_chosen) - dna_armor_digimon_obtained() != 0 && first_digimon_chosen - dna_armor_digimon_obtained() == 0
}

function has_moves(digimon_address, move_list, move_obtainable_last) {
    prev_logic = always_false()
    logic = always_true()
    moves_logic = []
    moves_prev_logic = []
    num_moves = length(move_list)

    for i in range (0, num_moves - 1) {
        if (num_moves > 4) {
            array_push(moves_logic, word(digimon_address + digimon_stats_offsets["Move 1"]) == move_list[i] && word(digimon_address + digimon_stats_offsets["Move 2"]) == move_list[i] && word(digimon_address + digimon_stats_offsets["Move 3"]) == move_list[i] && word(digimon_address + digimon_stats_offsets["Move 4"]) == move_list[i] && never(dword(digimon_address) == 0))
            if (move_obtainable_last == true) {
                array_push(moves_prev_logic, prev(word(digimon_address + digimon_stats_offsets["Move 1"])) != move_list[i] && prev(word(digimon_address + digimon_stats_offsets["Move 2"])) != move_list[i] && prev(word(digimon_address + digimon_stats_offsets["Move 3"])) != move_list[i] && prev(word(digimon_address + digimon_stats_offsets["Move 4"])) != move_list[i])
            }
        }
        else {
            logic = logic && __ornext((word(digimon_address + digimon_stats_offsets["Move 1"]) == move_list[i] || word(digimon_address + digimon_stats_offsets["Move 2"]) == move_list[i] || word(digimon_address + digimon_stats_offsets["Move 3"]) == move_list[i] || word(digimon_address + digimon_stats_offsets["Move 4"]) == move_list[i]))
            if (move_obtainable_last == true) {
                array_push(moves_prev_logic, prev(word(digimon_address + digimon_stats_offsets["Move 1"])) != move_list[i] && prev(word(digimon_address + digimon_stats_offsets["Move 2"])) != move_list[i] && prev(word(digimon_address + digimon_stats_offsets["Move 3"])) != move_list[i] && prev(word(digimon_address + digimon_stats_offsets["Move 4"])) != move_list[i])
            }
        }
    }

    if (num_moves > 4) {
        if (move_obtainable_last == true)
            return tally(1, moves_prev_logic[0], moves_prev_logic[1], moves_prev_logic[2], moves_prev_logic[3]) && logic
        else
            return tally(4, moves_logic)
    }
    else {
        if (move_obtainable_last == true)
            return tally(1, moves_prev_logic[0], moves_prev_logic[1], moves_prev_logic[2], moves_prev_logic[3]) && logic
        else
            return logic
    }
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

function check_moveset(target_digimon, required_moveset, move_obtainable_last) {
    logic = always_false()

    for i in range(0, 39) {
        current_digimon = first_digimon_address + digimon_stats_offsets["Next Digimon"] * i
        current_digimon_species = current_digimon + digimon_stats_offsets["Species ID"]
        logic = logic || (word(current_digimon_species) == target_digimon && prev(word(current_digimon_species)) != target_digimon && has_moves(current_digimon, required_moveset, move_obtainable_last))
    }

    return logic
}

function count_passwords() {
    return DotMirageGaogamon_password + legendary_equipment_password + Sukamon_password + DotFalcomon_password
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
    word(digimon_address + digimon_stats_offsets["Light"]) == resistanceAmount && word(digimon_address + digimon_stats_offsets["Dark"]) == resistanceAmount && word(digimon_address + digimon_stats_offsets["Fire"]) == resistanceAmount && word(digimon_address + digimon_stats_offsets["Earth"]) == resistanceAmount && word(digimon_address + digimon_stats_offsets["Wind"]) == resistanceAmount && word(digimon_address + digimon_stats_offsets["Steel"]) == resistanceAmount && word(digimon_address + digimon_stats_offsets["Water"]) == resistanceAmount && word(digimon_address + digimon_stats_offsets["Thunder"]) == resistanceAmount
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

// Checks for the player obtaining a specific equipment for the first time. Currently exclusively used to check for obtaining the Kowloon Blade
function check_equipment_obtained(equipment_ID) {
    owned_previously = always_true()
    owned_this_frame = always_false()
    for i in range (0, 98) {
        current_equipment = first_equipment_address + equipment_offsets["Next Equipment"] * i
        owned_this_frame = owned_this_frame || dword(current_equipment + equipment_offsets["ID"]) == equipment_ID
        owned_previously = owned_previously && prev(dword(current_equipment + equipment_offsets["ID"])) != equipment_ID
    }
    return owned_this_frame && owned_previously
}

//////////////////////////////
// - ACHIEVEMENTS CREATION FUNCTION
function create_story_achievement(title, points, quest_number) {
    quest_to_check = quest_list["union" + quest_number]
    achievement(title, format("Complete the \"{0}\" Quest", quest_to_check["Name"]), points, save_protection() && quest_to_check["Last Step"] == 1 && quest_to_check["Reward Claimed"] > prev(quest_to_check["Reward Claimed"]) && prev(active_quest()) == quest_to_check["ID"] && active_quest() == 0xffff)
}

function create_game_beaten_achievement(title, description = "", trigger = false, extra_logic = always_true()) {
    if (trigger == false)
        achievement(title, "Defeat the Final Boss and finish the game" + description, 25, save_protection() && game_beaten() && active_quest() == quest_list["union10"]["ID"] && extra_logic)
    else
        achievement(title, "Defeat the Final Boss and finish the game" + description, 25, save_protection() && trigger_when(game_beaten()) && active_quest() == quest_list["union10"]["ID"] && extra_logic)
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

function create_boss_no_death_challenge_achievement(title, description, points, boss_digimon, boss_area) {
    achievement(title, description, points, (save_protection() && scan_data_obtainable() == 0x00 && bosses_defeated(boss_digimon, true) && no_deaths_in_battle()) && reset_in_alt(current_screen_ID() != boss_area))
}

function create_giant_boss_no_death_challenge_achievement(title, description, points, boss_digimon, boss_area, first_boss_digimon = 0xffff) {
    achievement(title, description, points, (save_protection() && scan_data_obtainable() == 0x00 && giant_boss_defeated(boss_digimon, true, first_boss_digimon) && no_deaths_in_battle()) && reset_in_alt(current_screen_ID() != boss_area))
}

function create_gaia_origin_achievement(title, description, points, extra_logic = always_true()) {
    achievement(title, description, points, save_protection() && gaia_origin_defeated() && extra_logic && reset_in_alt(current_screen_ID() != boss_areas["Transfield Boss Area"]))
}

function create_gaia_origin_puttimon_achievement(title, description, points) {
    achievement(title, description, points, save_protection() && count_digimon(["Puttimon", "Salamon", "Gatomon", "Tylomon", "Lynxmon", "Kabukimon", "Angewomon", "Ophanimon"], "All") == 0 && trigger_when(prev(story_checkpoints["Gaia Origin Defeated"]) == 0 && story_checkpoints["Gaia Origin Defeated"] == 1))
}

function create_solo_win_achievement(title, description, points, target_digimon, own_digimon) {
    achievement(title, description, points, save_protection() && digimon_defeated(target_digimon) && digimon_in_party(own_digimon))
}

function create_moveset_achievement(title, description, points, target_digimon, required_moveset, move_obtainable_last = false) {
    achievement(title, description, points, save_protection() && check_moveset(target_digimon, required_moveset, move_obtainable_last))
}

function create_digimon_owned_achievement(title, description, points, target_digimon) {
    achievement(title, description, points, save_protection() && check_digimon_owned(target_digimon))
}

function create_tamer_rank_challenge_achievement(title, points, rank, stat_limit) {
    achievement(title, format("Beat the {0} Tamer Rank fight [No items in battle, HP/MP <= {1}, Stats <= {2}] (Traits and Equipments' stats count towards the limit)", rank, stat_limit * 10, stat_limit), points, save_protection() && tamer_rank() == tamer_ranks[rank] - 1 && tamer_rank_battle_check(rank) == 0x1 && bosses_defeated(tamer_rank_ids[tamer_ranks[rank] - 1], true) && no_deaths_in_battle() && unless(once(!stat_limits(stat_limit) && in_battle())) && reset_in_alt(current_screen_ID() != 0x120 && prev(current_screen_ID()) == 0x120)) // 0x120 = Colosseum Battle Area
}

function create_tamer_points_rewards_achievement(title, description, num_items){
    achievement(title, description, 1, save_protection() && prev(count_tamer_point_items()) == num_items - 1 && measured(count_tamer_point_items() == num_items))
}


//////////////////////////////
// - ACHIEVEMENTS CREATION
create_story_achievement("Through the Sewers", 5, 2)
create_story_achievement("A Grim Situation", 5, 3)
create_story_achievement("Dizzying Waters", 10, 4)
create_story_achievement("Something's amiss...", 10, 5)
create_story_achievement("An Amazon Encounter", 10, 6)
create_story_achievement("A Thrilling Battle", 10, 7)
create_story_achievement("A Dicy Meeting", 10, 8)
create_story_achievement("Yesterday's Enemies are Today's Allies", 10, 9)
create_game_beaten_achievement("Harmony Restored")
create_game_beaten_achievement("I feel like I'm forgetting something... [m]", " without claiming your Digi-Farm", true, !digifarm_claimed())
create_story_achievement("Prove your worth", 10, 11)

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
create_treasure_achievement("Magnet Mine", 2, "Open all treasure chests in ")
create_treasure_achievement("Palette Amazon", 3, "Open all treasure chests and the gate in ")
create_treasure_achievement("ProcessFactory", 2, "Open all treasure chests and the gate in ")
create_treasure_achievement("AccessGlacier", 3, "Open all treasure chests in ")
create_treasure_achievement("Macro Sea", 2, "Open all treasure chests and the gate in ")
create_treasure_achievement("Proxy Island", 3, "Open all treasure chests in ")
create_treasure_achievement("Chaos Brain", 3, "Open all treasure chests in ")
create_treasure_achievement("Transfield", 3, "Open all treasure chests in ")
create_treasure_achievement("Shadow Abyss", 3, "Open all treasure chests in ")
create_treasure_achievement("HighlightHaven", 3, "Open all treasure chests in ")

create_digimon_achievement("Fake Agumon Expert", "Register 100 Digimon in the Digimon Gallery", 5, 100)
create_digimon_achievement("Terriermon Assitant", "Register 200 Digimon in the Digimon Gallery", 10, 200)
create_digimon_achievement("Agumon Expert", "Register 300 Digimon in the Digimon Gallery", 10, 300)
create_digimon_achievement("Digimon Researcher Kogure", "Register all 370 available Digimon in the Digimon Gallery", 25, 370)
create_digimon_achievement("[Special] Researcher of the World of Dawn", "Register all 27 Digimon usually unavailable in Dusk in the Digimon Gallery", 10, 27, "Trade")

create_free_trial_achievement("Balance", ["Gaomon", "Solarmon", "MachGaogamon", "Clockmon"])
create_free_trial_achievement("Attack", ["BlackAgumon", "Goburimon", "SkullGreymon", "WarGarurumonBlack"])
create_free_trial_achievement("Defense", ["Keramon", "Tentomon", "Kurisarimon", "MegakabuterimonB"])
create_free_trial_achievement("Pretty", ["Kumamon", "Palmon", "Pandamon", "Lillymon"])

create_giant_boss_no_death_challenge_achievement("True Form Revealed [m]", "Defeat Grimmon [No deaths in battle]", 5, boss_digimon_ids["Grimmon"], boss_areas["Limit Valley Boss Area"])
create_giant_boss_no_death_challenge_achievement("Besting the Terror of the Undead [m]", "Defeat SkullBaluchimon [No deaths in battle]", 10, boss_digimon_ids["SkullBaluchimon"], boss_areas["Loop Swamp Boss Area"])
create_giant_boss_no_death_challenge_achievement("A Clash of Speed and Spirits [m]", "Defeat Mercurimon [No deaths in battle]", 10, boss_digimon_ids["Mercurimon"], boss_areas["Palette Amazon Boss Area"])
create_giant_boss_no_death_challenge_achievement("Following the Path of the Samurai [m]", "Defeat Gaiomon in Thriller Ruins [No deaths in battle]", 10, boss_digimon_ids["Gaiomon"], boss_areas["Thriller Ruins Boss Area"])
create_boss_no_death_challenge_achievement("The Misled Knight [m]", "Defeat ChaosGallantmon [No deaths in battle]", 10, [boss_digimon_ids["ChaosGallantmon"]], boss_areas["AccessGlacier Boss Area"])
create_giant_boss_no_death_challenge_achievement("The King of Vampires, Dethroned [m]", "Defeat GranDracmon [No deaths in battle]", 10, boss_digimon_ids["GranDracmon"], boss_areas["Proxy Island Boss Area"])
create_giant_boss_no_death_challenge_achievement("The Corrupted Archangel of Kindness [m]", "Defeat Ophanimon Core [No deaths in battle]", 10, boss_digimon_ids["OphanimonC"], boss_areas["Sunshine City Union Room"])
create_giant_boss_no_death_challenge_achievement("The Real Master of Evolution [m]", "Defeat all of the final boss' forms [No deaths in battle]", 10, boss_digimon_ids["ExoGrimmon"], boss_areas["Chaos Brain Boss Area"], boss_digimon_ids["ChaosGrimmon"])

create_gaia_origin_achievement("Fighting fair and square [m]", "Defeat the Gaia Origin [HP/MP <= 5500, Stats <= 550, No deaths in battle]", 25, no_deaths_in_battle() && unless(once(!stat_limits(550) && in_battle())) && reset_in_alt(current_screen_ID() != prev(current_screen_ID())))
create_gaia_origin_achievement("Night Crow's Strongest Tamer [m]", "Defeat the Gaia Origin with only Dianamon, Lotosmon and MirageGaogamon (Burst Mode) in your party", 10, digimon_in_party([digimon_ids["Dianamon"], digimon_ids["Lotosmon"], digimon_ids["MirageGaogamonBM"]], true) && reset_in_alt(current_screen_ID() != prev(current_screen_ID())))
create_gaia_origin_puttimon_achievement("Developer Oversight [m]", "Defeat the Gaia Origin without obtaining Puttimon or the evolutions it unlocks", 5)

achievement("Best of the best... almost!", "Achieve Platinum Tamer Rank", 10, save_protection() && tamer_rank() == tamer_ranks["Platinum"] && prev(tamer_rank()) == tamer_ranks["Platinum"] - 1)
create_story_achievement("[Special] The Birth of a New Legend", 10, 12)
create_tamer_rank_challenge_achievement("Azulongmon would be proud [m]", 5, "Bronze", 100)
create_tamer_rank_challenge_achievement("Ebonwumon would be proud [m]", 5, "Silver", 150)
create_tamer_rank_challenge_achievement("Baihumon would be proud [m]", 10, "Gold", 300)
create_tamer_rank_challenge_achievement("Zhuqiaomon would be proud [m]", 25, "Platinum", 700)
create_tamer_rank_challenge_achievement("[Special] Master of the Multiverse [m]", 25, "Legend", 850)

create_solo_win_achievement("Partners Till the End", "Defeat a wild Armageddemon in Magnet Mine with only Lunamon in your party", 10, digimon_ids["Armageddemon"], [digimon_ids["Lunamon"]])
create_solo_win_achievement("Baby Flame!", "Defeat a wild Argomon (Ultimate) in Thriller Ruins with only an Agumon in your party", 10, digimon_ids["ArgomonU"], [digimon_ids["Agumon"]])

create_digimon_owned_achievement("[Special] Parallel World Dwellers", "Have Chibomon, Sunmon, Guilmon, Kudamon, DotAgumon, Airdramon and DotShineGreymon in your Digimon List", 5, [digimon_ids["Chibomon"], digimon_ids["Sunmon"], digimon_ids["Guilmon"], digimon_ids["Kudamon"], digimon_ids["DotAgumon"], digimon_ids["Airdramon"], digimon_ids["DotShineGreymon"]])

create_moveset_achievement("I'll become the Digimon Master", "Have a Yanmamon with 4 of the following attacks: Poison Powder, Blizzard, Air Cutter, Mind Reader, Nightmare, Shadow Claw or Thunder", 10, digimon_ids["Yanmamon"], [0xb0, 0x6, 0x18, 0xa6, 0x88, 0x7e, 0x54])
create_moveset_achievement("MagnaSusanoomon", "Obtain a Susanoomon with the attacks Royal Cannon, Glory Thunder, Demon Blast and OmegaR Force", 50, digimon_ids["Susanoomon"], [0x37, 0x56, 0x78, 0x4d])
create_moveset_achievement("Sin of Wrath: Dusk", "Have a Creepymon with the attacks: Electric Rage, RagingMachine, Raging Beast and RagingDarkness", 25, digimon_ids["Creepymon"], [0x99, 0x98, 0x97, 0x96])
create_moveset_achievement("When the Sun and the Moon come together...", "Have a Dianamon with the attacks Burst Counter, Fatal Hand, Fatal Cross and Burst Breath", 50, digimon_ids["Dianamon"], [0xac, 0x40, 0x3d, 0x22])

create_tamer_points_rewards_achievement("Rewards for a Helpful Tamer", "Get all available items from Darkdramon", 5)
create_tamer_points_rewards_achievement("[Special] Rewards from Beyond", "Get the final 2 items from Darkdramon usually unavailable in game", 7)

achievement("Digi-Farming is my Passion", "Buy all Expansions and Boards for all 4 of your Digi-Farms", 5, save_protection() && check_all_digifarm_maxed())
achievement("Coming to an agreement [m]", "Pay GranDracmon for their services and obtain the Kowloon Blade", 1, save_protection() && once(prev(proxy_island_gaiomon_defeated) == 0 && proxy_island_gaiomon_defeated == 1) && never(current_screen_ID() != 0x1ad) && check_equipment_obtained(equipment_ids["Kowloon Blade"])) // 0x1ad = Proxy Island boss area
achievement("Hacking into the Matrix", "Get all password rewards from Valkyrimon", 1, save_protection() && prev(count_passwords()) == 3 && measured(count_passwords() == 4))
achievement("Arrow of Artemis", "Deal 9999 damage in 1 hit", 5, save_protection() && in_battle() && top_damage() == 9999 && prev(top_damage()) < 9999)
achievement("DNA Digivolve to...!", "DNA digivolve a Digimon for the first time", 3, save_protection() && in_special_evolution_menu(true) && has_dna_evolved())
// We check the previous frame of the Special Evolution pointer for Armor Evolutions because it changes to 0 when entering the renaming screen (as opposed to DNA evolution, where it remains the same while renaming the Digimon)
achievement("Ultra Training Regimen", "Have a Digimon with max Stats (Level, HP, MP, Attack, Defense, Spirit, Speed, Friendship)", 10, save_protection() && check_all_digimon_max_stats())
achievement("Nothing Can Faze Me!", "Have a Digimon with all resistances at 800 or higher", 25, save_protection() && check_all_digimon_resistances(800))


//////////////////////////////
// - LEADERBOARD CREATION
leaderboard("Fastest Hero", "Beat the game as fast as possible", save_protection() && story_checkpoints["Before Game Beaten"] == 1 && story_checkpoints["Game Beaten"] == 0, !save_protection(), giant_boss_defeated(boss_digimon_ids["ExoGrimmon"]), in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
leaderboard("Fastest Gaia Origin Slayer", "Beat the Gaia Origin as fast as possible", save_protection() && story_checkpoints["Gaia Origin Started"] == 1 && story_checkpoints["Gaia Origin Defeated"] == 0, !save_protection(), digimon_defeated(digimon_ids["GallantmonCM"]), in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
//leaderboard("Researcher Kogure Speedrun", "Register all available Digimon in the Digimon Gallery as fast as possible (Trade/Dawn-Exclusive Digimon not required)", save_protection() && prev(count_digimon(digimon_list)) < 367, always_false(), count_digimon(digimon_list) == 367, in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
//leaderboard("True Researcher Kogure Speedrun", "Register every Digimon in the Digimon Gallery as fast as possible", save_protection() && prev(count_digimon(digimon_list, "All")) < 397, always_false(), count_digimon(digimon_list, "All") == 397, in_game_time() * 1.5625, format = "MILLISECS", lower_is_better = true)
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
    5:"☄️",
}

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
