function ReturnTeleportLocations(cont)
if cont == "EK_N" then
  return {
    ["Alterac Mountains"] = {
      ["Chillwind Point"] = ".go 322.373138 -1487.853882 43.720089 0",
      ["Dalaran Ruins"] = ".go 386.938 212.299 43.6994 0",
      ["Dandred's Fold"] = ".go 1239.12 -286.705 42.4764 0",
      ["Horde Entrance"] = ".go 417.003540 -1015.843079 111.708763 0",
      ["Lordamere Internment Camp"] = ".go -74.6376 201.212 53.2755 0",
      ["Ruins of Alterac"] = ".go 522.608 -275.392 150.689 0",
      ["Strahnbrad"] = ".go 679.813 -965.173 164.598 0",
      ["The Headland"] = ".go 13.726011 -342.187592 130.998840 0",
      ["The Uplands"] = ".go 1030.781616 -741.709534 111.849434 0",
    },
    ["Arathi Highlands"] = {
      ["Boulderfist Hall"] = ".go -1969.08 -2789.04 81.2105 0",
      ["Circle of East Binding"] = ".go -842.604 -3270.04 78.3588 0",
      ["Circle of Inner Binding"] = ".go -1531.026733 -2170.594238 17.371519 0",
      ["Circle of Outer Binding"] = ".go -1354.4 -2738.07 58.9657 0",
      ["Circle of West Binding"] = ".go -863.118 -1784.72 39.6118 0",
      ["Dabyrie's Farmstead"] = ".go -1065.89 -2905.56 42.0958 0",
      ["Faldir's Cove"] = ".go -2086.88 -2074.57 5.72927 0",
      ["Go'Shek Farm"] = ".go -1505.51 -3030.52 12.627 0",
      ["Hammerfall"] = ".go -1020.820496 -3542.908203 56.442707 0",
      ["Northfold Manor"] = ".go -797.235 -2068.95 33.8337 0",
      ["Refuge Pointe"] = ".go -1262.79 -2521.75 20.8021 0",
      ["Stromgarde Keep"] = ".go -1661.42 -1804.2 83.0723 0",
      ["The Drowned Reef"] = ".go -2169.797852 -1696.053833 0.380001 0",
      ["Thoradin's Wall"] = ".go -839.599 -1590.32 54.1962 0",
      ["Witherbark Village"] = ".go -1763.862061 -3396.339355 44.561058 0",
    },
    ["Eastern Plaguelands"] = {
      ["Arc"] = ".go 2953.424805 -4013.082520 101.429352 0",
      ["Blackwood Lake"] = ".go 2515.843018 -4251.861328 76.356834 0",
      ["Corin's Crossing"] = ".go 2039.727173 -4511.625000 73.621826 0",
      ["Crown Guard Tower"] = ".go 1868.662354 -3678.965332 155.231430 0",
      ["Darrowshire"] = ".go 1444.842163 -3697.169434 77.026146 0",
      ["Eastwall Tower"] = ".go 2545.236328 -4773.797852 107.254280 0",
      ["Light's Hope Chapel"] = ".go 2278.364258 -5311.157227 87.200989 0",
      ["Mazra'Alor"] = ".go 3452.83 -4992.61 196.981 0",
      ["Northdale"] = ".go 3011.487793 -4941.438965 103.585503 0",
      ["Northpass Tower"] = ".go 3181.779785 -4331.392090 137.688721 0",
      ["Plaguewood"] = ".go 3130.170654 -3401.760986 139.477997 0",
      ["Quel'Lithien Lodge"] = ".go 3369.37 -4236.1 156.468628 0",
      ["Terrordale"] = ".go 2929.86 -2866.845 98.42 0",
      ["Terrorweb Tunnel"] = ".go 2741.584717 -2471.744141 74.780006 0",
      ["The Fungal Vale"] = ".go 2448.253174 -3703.935791 179.083074 0",
      ["The Marris Stead"] = ".go 1868.959961 -3223.389893 123.065002 0",
      ["The Noxious Glade"] = ".go 2714.320801 -5455.482910 159.145081 0",
      ["The Undercroft"] = ".go 1718.679565 -3281.455322 89.658745 0",
      ["Tyr's Hand"] = ".go 1612.63 -5524.9 111.148 0",
      ["Zul'Mashar"] = ".go 3386.860107 -4931.453125 161.093033 0",
    },	
    ["Eversong Woods"] = {
      ["Azurebreeze Coast"] = ".go 9619.29 -8049.84 0.474619 530",
      ["Dawning Lane"] = ".go 9709.5 -6649.06 6.3826 530",
      ["Duskwither Grounds"] = ".go 9499.94 -7868.79 16.1281 530",
      ["Duskwither Spire"] = ".go 9340.228516 -7886.672852 158.445007 530",
      ["East Sanctum"] = ".go 8748.17 -7078.31 37.276 530",
      ["Elrendar Falls"] = ".go 8616.9 -7683.13 155.867 530",
      ["Fairbreeze Village"] = ".go 8739.75 -6681.23 69.7043 530",
      ["Falconwing Square"] = ".go 9517.79 -6829.8 16.4922 530",
      ["Falthrien Academy"] = ".go 10151.3 -6005.09 110.155 530",
      ["Farstrider Retreat"] = ".go 8988.34 -7505.51 83.2519 530",
      ["Golden Strand"] = ".go 8647.31 -5716.3 4.57673 530",
      ["Goldenbough Pass"] = ".go 8413.79 -6153.24 61.2879 530",
      ["Lake Elrendar"] = ".go 8449.5 -7751.33 144.762 530",
      ["North Sanctum"] = ".go 9294.53 -6684.55 22.4344 530",
      ["Runestone Falithas"] = ".go 8219.1 -6690.42 86.5563 530",
      ["Runestone Shan'dor"] = ".go 8244.43 -7195.02 138.042 530",
      ["Saltheril's Haven"] = ".go 8661.52 -6381.21 53.3425 530",
      ["Shrine of Dath'Remar"] = ".go 10401.6 -5950.57 41.0888 530",
      ["Stillwhisper Pond"] = ".go 9248.45 -7229.35 15.2742 530",
      ["Sunsail Anchorage"] = ".go 8803.98 -6101.4 20.2007 530",
      ["Sunstrider Isle"] = ".go 10240.7 -6173.45 17.9731 530",
      ["The Dead Scar"] = ".go 9246.32 -6964.86 5.18719 530",
      ["The Living Wood"] = ".go 8683.03 -7398.45 111.437 530",
      ["The Scorched Grove"] = ".go 8214.1 -6303.71 64.5067 530",
      ["The Sunspire"] = ".go 10350.1 -6379.74 38.2836 530",
      ["Thuron's Livery"] = ".go 9261.38 -7489.79 37.3408 530",
      ["Tor'Watha"] = ".go 8540.4 -7986.56 155.066 530",
      ["Tranquil Shore"] = ".go 9059.83 -5925.45 0.860355 530",
      ["West Sanctum"] = ".go 9124.94 -6240.55 19.0641 530",
      ["Zeb'Watha"] = ".go 8472.87 -7628.39 152.199 530",
    },
    ["Ghostlands"] = {
      ["Amani Catacombs"] = ".go 7636.13 -7359.08 162.328 530",
      ["Amani Pass"] = ".go 6847.64 -7750.87 122.616 530",
      ["An'daroth"] = ".go 7911.228027 -6507.747070 46.816975 530",
      ["An'owyn"] = ".go 6832.454102 -7190.099609 25.314520 530",
      ["An'telas"] = ".go 7449.607422 -7295.749512 95.320755 530",
      ["Andilien Estate"] = ".go 7018.29 -6817.43 42.0335 530",
      ["Bleeding Ziggurat"] = ".go 7185.268066 -6417.099609 59.166920 530",
      ["Dawnstar Spire"] = ".go 7830.53 -7830.51 170.331 530",
      ["Deatholme"] = ".go 6611.1 -6437.03 29.2441 530",
      ["Elrendar Crossing"] = ".go 8014.27 -6880.58 62.554 530",
      ["Farstrider Enclave"] = ".go 7601.218262 -7670.812012 153.996811 530",
      ["Goldenmist Village"] = ".go 7878.45 -6197.75 20.3104 530",
      ["Howling Ziggurat"] = ".go 7208.86 -6624.84 60.9238 530",
      ["Isle of Tribulations"] = ".go 8043.15 -7550.81 150.272 530",
      ["Sanctum of the Moon"] = ".go 7543.69 -6415.14 12.1095 530",
      ["Sanctum of the Sun"] = ".go 7158.18 -7076.86 55.1808 530",
      ["Shalandis Isle"] = ".go 7702.02 -5731.72 3.77456 530",
      ["Suncrown Village"] = ".go 7973.19 -7253.08 137.147 530",
      ["Sungraze Peak"] = ".go 7585.01 -7054.7 391.455 530",
      ["Thalassian Pass"] = ".go 6350.64 -6848.76 100.518 530",
      ["Tower of the Damned"] = ".go 6445.69 -6388.24 55.1793 530",
      ["Tranquillien"] = ".go 7579.28 -6822.69 86.5291 530",
      ["Underlight Mines"] = ".go 7193.34 -6199.83 19.8381 530",
      ["Windrunner Spire"] = ".go 7019.71 -5731.64 106.167 530",
      ["Windrunner Village"] = ".go 7254.07 -5901.66 15.4899 530",
      ["Zeb'Nowa"] = ".go 6735.99 -7373.32 51.8893 530",
      ["Zeb'Sora"] = ".go 8019.15 -7825.86 172.797 530",
      ["Zeb'Tela"] = ".go 7395.92 -7816.13 147.894 530",
    },
    ["Hillsbrad Foothills"] = {
      ["Azurelode Mine"] = ".go -870.601 233.102 9.93092 0",
      ["Dun Garok"] = ".go -1266.15 -1198.95 40.1765 0",
      ["Durnholde Keep"] = ".go -490.499786 -1386.086304 53.214191 0",
      ["Eastern Strand"] = ".go -1234.91 -943.205 8.62585 0",
      ["Hillsbrad Fields"] = ".go -500.219147 88.575188 59.058201 0",
      ["Nethander Stead"] = ".go -898.266 -1044.33 30.3478 0",
      ["Purgation Isle"] = ".go -1310.100708 567.087524 106.401627 0",
      ["Southshore Harbor Town"] = ".go -821.604 -544.654 15.0387 0",
      ["Tarren Mill"] = ".go -28.1484 -899.243 56.0704 0",
      ["Western Strand"] = ".go -1019.67 -359.442 5.13463 0",
    },
    ["Hinterlands"] = {
      ["Aerie Peak"] = ".go 326.992401 -1963.878052 197.087585 0",
      ["Agol'whata"] = ".go 339.304169 -3469.386963 118.433319 0",
      ["Jintha'Alor"] = ".go -678.757 -4018.61 238.351 0",
      ["Quel'Danil Lodge"] = ".go 266.941 -2751.41 122.544 0",
      ["Revantusk Village"] = ".go -586 -4571 9.3 0",
      ["Seradane"] = ".go 717.52 -4021.67 98.7913 0",
      ["Shadra'Alor"] = ".go -464.208 -2837.23 110.073 0",
      ["Shaol'whata"] = ".go 224.255676 -4306.305664 117.799438 0",
      ["Skulk Rock Outside"] = ".go 369.041779 -3790.741699 171.096252 0",
      ["Skull Rock Inside"] = ".go 362.287842 -3795.859863 111.379333 0",
      ["The Altar of Zul"] = ".go -294.213501 -3464.629395 193.955597 0",
      ["The Overlook Cliffs"] = ".go -142.342499 -4423.840820 138.086807 0",
      ["Zun'watha"] = ".go -35.7245 -2479.51 120.423 0",
    },
    ["Isle of Quel'Danas"] = {
      ["Dawnstar Village"] = ".go 12699.45 -6730.75 3.51 530",
      ["Greengill Coast - North"] = ".go 12571.16 -7281.09 0.11 530",
      ["Greengill Coast - South"] = ".go 11947.14 -7250.33 8.33 530",
      ["Isle of Quel'Danas - North Coast"] = ".go 12672.27 -6386.68 5.47 530",
      ["Isle of Quel'Danas - South Coast"] = ".go 11853.82 -6840.03 1.96 530",
      ["Magisters' Terrace - Outside"] = ".go 12885.49 -7311.92 65.52 530",
      ["Shattered Sun Staging Area"] = ".go 12915.85 -6862.04 7.68 530",
      ["Silvermoon's Pride"] = ".go 12817.34 -7099.74 5.05 530",
      ["Sun's Reach Armory"] = ".go 12689.51 -6953.27 15.55 530",
      ["Sun's Reach Harbor"] = ".go 13001.69 -6908.31 9.58 530",
      ["Sunwell Plateau - Outside"] = ".go 12593.9 -6776.8 14.64 530",
      ["The Dawning Square"] = ".go 12599.51 -6913.87 4.60 530",
      ["The Dead Scar - Q'D"] = ".go 11616.88 -7085.5 2.29 530",
      ["The Sin'loren"] = ".go 13204.00 -7048.03 3.66 530",
    },
    ["Silvermoon City"] = {
      ["Bottom of Sunfury Spire"] = ".go 9934.885742 -7127.350098 -169.862839 530",
      ["Court of the Sun"] = ".go 9885.69 -7182.04 31.0402 530",
      ["Farstrider's Square"] = ".go 9850.64 -7420.26 13.3159 530",
      ["Inner Sanctum"] = ".go 10012.5 -7024.4 50.1389 530",
      ["Murder Row"] = ".go 9734.24 -7321.84 24.4116 530",
      ["Silvermoon City Inn"] = ".go 9676.69 -7370.14 11.9329 530",
      ["Sunfury Spire"] = ".go 9975.58 -7072.82 46.483 530",
      ["The Bazaar"] = ".go 9596.21 -7136.33 14.2872 530",
      ["The Royal Exchange"] = ".go 9683.59 -7437.63 13.2941 530",
      ["The Sanctum (Murder Row)"] = ".go 9793.64 -7311.46 14.6056 530",
      ["The Sanctum (The Bazaar)"] = ".go 9752.66 -7081.91 4.79387 530",
      ["The Shepherd's Gate"] = ".go 9413.53 -7277.82 14.2026 530",
      ["Walk of Elders"] = ".go 9514.42 -7299.97 14.4582 530",
      ["Wayfarer's Rest"] = ".go 9561.29 -7217.88 16.2117 530",
    },
    ["Silverpine Forest"] = {
      ["Ambermill"] = ".go -126.954 815.624 66.0224 0",
      ["Deep Elem Mine"] = ".go 374.222 1083.9 106.509 0",
      ["Fenris Isle"] = ".go 736.939758 727.849304 36.550575 0",
      ["Malden's Orchard"] = ".go 1414.28 1073.22 52.4649 0",
      ["North Tide's Hollow"] = ".go 873.391 1852.5 5.0548 0",
      ["North Tide's Run"] = ".go 412.022827 1848.040405 11.825706 0",
      ["Olsen's Farthing"] = ".go 134.209 1496.64 114.394 0",
      ["Pyrewood Village"] = ".go -416.466 1543.87 17.5941 0",
      ["South Tide's Run"] = ".go -577.865 1807.08 8.2492 0",
      ["The Dawning Isles"] = ".go 982.34 201.239 34.9509 0",
      ["The Dead Field"] = ".go 1035.91 1540.85 30.525 0",
      ["The Decrepit Fairy"] = ".go 675.697998 974.873 34.8849 0",
      ["The Greymane Wall"] = ".go -757.376 1527.28 17.2465 0",
      ["The Ivar Patch"] = ".go 1285.69 1242.33 52.6914 0",
      ["The Sepulcher"] = ".go 507.784 1611.33 124.921 0",
      ["The Skittering Dark"] = ".go 1293.65 1957.71 19.5619 0",
      ["Valgan's Field"] = ".go 964.877 1238.75 48.0979 0",
    },
    ["Tirisfal Glades"]= {
      ["Agamand Mills"] = ".go 2803.27 847.119 111.841 0",
      ["Balnir Farmstead"] = ".go 2032.01 -432.954 35.4329 0",
      ["Brightwater Lake"] = ".go 2685.13 -198.851 31.4095 0",
      ["Brill"] = ".go 2260.64 289.021 34.1291 0",
      ["Cold Hearth Manor"] = ".go 2146.99 658.485 33.59 0",
      ["Deathknell"] = ".go 1871.14 1587.91 91.2143 0",
      ["Garren's Haunt"] = ".go 2861.67 398.526 21.1504 0",
      ["Gunther's Retreat"] = ".go 2563.98 -51.7975 31.7441 0",
      ["Night Web's Hollow"] = ".go 2019.349365 1904.359375 105.144447 0",
      ["Scarlet Monastery Entrance"] = ".go 2843.565918 -692.133789 139.330215 0",
      ["Crusader's Outpost"] = ".go 3040.8 -552.374 122.216 0",
      ["Solliden Farmstead"] = ".go 2272.028076 1331.154663 33.411724 0",
      ["The Bulwark"] = ".go 1716.02 -788.217 56.844 0",
      ["The North Coast"] = ".go 2955.79 99.8215 3.32947 0",
      ["Whispering Shore"] = ".go 2538.92 1407.01 5.69061 0",
    },
    ["Undercity"] = {
      ["Sewers"] = ".go 1614.68 643.289 37.0547 0",
      ["Magic Quarter"] = ".go 1770.690552 62.809605 -46.321289 0",
      ["Rogue's Quarter"] = ".go 1466.11 49.6445 -62.2932 0",
      ["Royal Quarter"] = ".go 1299.992188 330.006256 -60.083107 0",
      ["Sewers Entrance"] = ".go 1652.901367 732.490906 80.336517 0",
      ["The Apothecarium"] = ".go 1410.31 430.512 -80.3588 0",
      ["The Throne Room"] = ".go 1628.3 239.925 64.5006 0",
      ["Trade Quarter"] = ".go 1586.48 239.562 -52.149 0",
      ["Ruins of Lordaeron"] = ".go 1831.26 238.53 60.52 0",
      ["War Quarter"] = ".go 1658.95 303.76 -42.6923 0",
    },
    ["Western Plaguelands"] = {
      ["Caer Darrow"] = ".go 1025.586060 -2516.998535 59.141575 0",
      ["Chillwind Camp"] = ".go 953.8 -1430 63.822098 0",
      ["Dalson's Tears"] = ".go 1835.04 -1568.1 59.1818 0",
      ["Darrowmere Lake"] = ".go 1234.83 -2118.49 50.8011 0",
      ["Felstone Field"] = ".go 1782.26 -1211.93 59.4057 0",
      ["Gahrron's Withering"] = ".go 1738.52 -2319.93 59.5751 0",
      ["Hearthglen"] = ".go 2918.72 -1439.39 150.782 0",
      ["Northridge Lumber Camp"] = ".go 2423.42 -1646.44 103.390152 0",
      ["Ruins of Andorhal"] = ".go 1316.355591 -1408.410034 46.360283 0",
      ["Sorrow Hill"] = ".go 1064.09 -1718.04 61.1348 0",
      ["The Writhing Haunt"] = ".go 1487.77 -1884.87 59.2039 0",
      ["The Weeping Cave"] = ".go 2259.010010 -2393.852539 59.938824 0",
      ["Thondroril Tiver - House"] = ".go 2682.639893 -2465.773682 71.964378 0",
      ["Uther's Tomb"] = ".go 981.477 -1821.84 80.4872 0",
    },

  }
elseif cont == "EK_S" then
  return {
    ["Badlands"] = {
      ["Agmond's End"] = ".go -7027.81 -3330.11 241.51 0",
      ["Angor Fortress"] = ".go -6380.77 -3139.89 301.111 0",
      ["Apocryphan's Rest"] = ".go -6894.29 -2465.82 247.978 0",
      ["Camp Boff"] = ".go -7033.94 -3669.89 245.91 0",
      ["Camp Cagg"] = ".go -7147.67 -2430.87 240.51 0",
      ["Camp Kosh"] = ".go -6247.73 -3776.6 249.06 0",
      ["Hammertoe's Digsite"] = ".go -6411.58 -3409.85 241.537 0",
      ["Kargath"] = ".go -6675.96 -2188.29 246.152 0",
      ["Lethlor Ravine"] = ".go -6935.86 -4092.06 285.906 0",
      ["The Maker's Terrace"] = ".go -6092.32 -3214.55 262.727 0",
    },
    ["Blasted Lands"] = {
      ["The Tainted Scar - Altar"] = ".go -11685.248047 -2384.635254 -0.191840 0",
      ["Altar of Storms Blasted Lands"] = ".go -11272.8 -2547.59 102.02 0",
      ["Dreadmaul Hold"] = ".go -10859 -2663.38 7.80049 0",
      ["Dreadmaul Post"] = ".go -11528.205078 -2863.730713 9.992482 0",
      ["Nethergarde Keep"] = ".go -10998.8 -3402.74 61.9031 0",
      ["The Dark Portal"] = ".go -11894.80 -3206.52 -14.62 0",
      ["The Tainted Scar"] = ".go -12238.253906 -2475.102539 -2.823309 0",
    },
    ["Burning Steppes"] = {
      ["Altar of Storms Burning Steppes"] = ".go -7613.13 -761.492 190.807 0",
      ["Blackrock Mountain North Entrance"] = ".go -7813.246094 -1133.333008 214.069138 0",
      ["Blackrock Pass"] = ".go -8547.529297 -2560.760010 133.148727 0",
      ["Blackrock Stronghold"] = ".go -7728.115234 -1504.216675 132.836838 0",
      ["Draco'dar"] = ".go -8222.078125 -1174.151498 142.556854 0",
      ["Dreadmaul Rock"] = ".go -7924.68 -2624.44 220.958 0",
      ["Flame Crest"] = ".go -7494.010254 -2181.415039 165.573975 0",
      ["Morgan's Vigil"] = ".go -8381.298828 -2757.463135 187.853745 0",
      ["Pillar of Ash"] = ".go -8068.392578 -1603.971191 139.572449 0",
      ["Ruins of Thaurissan"] = ".go -7798.315430 -2171.406982 133.010.437 0",
      ["Slither Rock"] = ".go -7657.360840 -3001.405762 136.292435 0",
      ["Terror Wing Path"] = ".go -7884.634277 -2901.770996 133.091278 0",
    },
    ["Deadwind Pass"] = {
      ["Ariden's Camp"] = ".go -10443.619141 -2140.790283 90.779533 0",
      ["Deadman's Crossing"] = ".go -10460.589844 -1717.501831 83.596916 0",
      ["Karazhan Crypt"] = ".go -11086.6 -1792.89 52.7427 0",
      ["Karazhan Entrance"] = ".go -11127.624023 -2042.982788 47.075230 0",
      ["Karazhan Gryphons"] = ".go -11054.3 -1987.25 231.245 0",
      ["Morgan's Plot"] = ".go -11110.3 -1832.12 71.8645 0",
      ["Sleeping Gorge"] = ".go -10592.526367 -2131.213135 91.470261 0",
      ["The Vice"] = ".go -10889.762695 -2291.202637 117.131104 0",
    },
    ["Dun Morogh"] = {
      ["Anvilmar"] = ".go -6110.8 388.517 395.542 0",
      ["Brewnall Village"] = ".go -5368.81 319.498 394.123 0",
      ["Coldridge Valley"] = ".go -6325.7 294.835 379.791 0",
      ["Frostmane Hold"] = ".go -5584.206543 759.832153 384.290161 0",
      ["Gnomeregan Entrance"] = ".go -5189.218750 524.796143 388.106781 0",
      ["Gol'Bolar Quarry"] = ".go -5826.35 -1586.57 364.269 0",
      ["Helm's Bed Lake"] = ".go -5602.846191 -1982.595459 396.115204 0",
      ["Iceflow Lake"] = ".go -5259.74 107.593 392.567 0",
      ["Ironforge Airport"] = ".go -4630.872559 -1680.196777 504.015686 0",
      ["Ironforge Flag"] = ".go -4804.580078 -998.508423 892.372620 0",
      ["Kharanos"] = ".go -5582.32 -463.982 402 0",
      ["Misty Pine Refuge"] = ".go -5353.18 -1043.02 394.772 0",
      ["North Gate Outpost"] = ".go -5231.950195 -2366.979980 398.952820 0",
      ["South Gate Outpost"] = ".go -5476.500000 -2423.586182 413.454987 0",
      ["Steelgrill's Depot"] = ".go -5470.37 -662.312 392.674 0",
    },
    ["Duskwood"] = {
      ["Addle's Stead"] = ".go -10992.6 268.794 27.510 0",
      ["Beggar's Haunt"] = ".go -10359.9 -1531.75 91.5352 0",
      ["Brightwood Grove"] = ".go -10649.7 -884.01 50.8196 0",
      ["Darkshire"] = ".go -10556.147461 -1168.075073 27.752821 0",
      ["Forlorn Rowe"] = ".go -10316.7 342.295 59.6454 0",
      ["Raven Hill"] = ".go -10750.1 323.644 38.0417 0",
      ["The Darkened Bank"] = ".go -10015.901367 -575.456543 42.751480 0",
      ["The Rotting Orchard"] = ".go -11069.3 -927.315 63.502 0",
      ["The Yorgen Farmstead"] = ".go -11105.4 -500.791 32.8518 0",
      ["Tranquil Gardens Cemetery"] = ".go -10991.994141 -1326.914429 51.857361 0",
      ["Twilight Grove"] = ".go -10385 -424.696 63.534 0",
    },
    ["Elwynn Forest"] = {
      ["Brackwell Pumpkin Patch"] = ".go -9764.944336 -836.307190 39.463924 0",
      ["Crystal Lake"] = ".go -9462.99 -161.312 60.7274 0",
      ["Eastvale Logging Camp"] = ".go -9549 -1407.04 54.7673 0",
      ["Fargodeep Mine"] = ".go -9811.76 130.16 6.86 0",
      ["Goldshire"] = ".go -9443.45 59.8944 56.0704 0",
      ["Hero's Vigil"] = ".go -9129.383789 -1037.879395 71.682266 0",
      ["Jasperlode Mine"] = ".go -9079.139648 -547.624146 59.514854 0",
      ["Mirror Lake Orchard"] = ".go -9476.871094 464.737366 51.607323 0",
      ["Northshire Valley"] = ".go -9015.916016 -79.441109 87.119759 0",
      ["Stone Cairn Lake"] = ".go -9325.33 -1038.92 65.3535 0",
      ["The Maclure Vineyards"] = ".go -9881.4 88.8972 33.3196 0",
      ["The Stonefield Farm"] = ".go -9964.72 391.509 35.6555 0",
      ["Thunder Falls"] = ".go -9302.16 709.659 130.996 0",
      ["Tower of Azora"] = ".go -9527.475586 -686.063782 62.250217 0",
      ["Westbrook Garrison"] = ".go -9646.46 679.589 37.4136 0",
    },
    ["Ironforge"] = {
      ["Deeprun Tram North"] = ".go 69.254242 10.256980 -4.296640 369",
      ["Hall of Explorers"] = ".go -4697.586914 -1229.278076 501.659302 0",
      ["Ironforge"] = ".go -4981.25 -881.542 501.66 0",
      ["Old Ironforge"] = ".go -4843.747559 -1064.113159 502.190155 0",
      ["The Commons"] = ".go -4920.611816 -955.967468 501.509644 0",
      ["The Forlorn Cavern"] = ".go -4637.038086 -1101.532227 501.280670 0",
      ["The Great Forge"] = ".go -4795.882324 -1113.264648 498.807220 0",
      ["The Military Ward"] = ".go -4983.661133 -1223.249512 501.675049 0",
      ["The Mystic Ward"] = ".go -4678.188477 -968.720642 501.659424 0",
      ["Tinkertown"] = ".go -4830.766113 -1271.904663 501.867798 0",
    },
    ["Loch Modan"] = {
      ["Algaz Station"] = ".go -4909.516113 -2726.763672 329.060089 0",
      ["Ironband's Excavation Site"] = ".go -5755.53 -3998.42 330.436 0",
      ["Mo'Grosh Stronghold"] = ".go -4871.78 -4025.77 313.141 0",
      ["Stonesplinter Valley"] = ".go -5930.616699 -2939.032227 369.490936 0",
      ["Stonewrought Dam"] = ".go -4757.194336 -3330.838135 310.257172 0",
      ["The Farstrider Lodge"] = ".go -5675.42 -4244.87 407.002 0",
      ["The Loch Islands"] = ".go -4939.1 -3423.74 305.595 0",
      ["The Loch Lake"] = ".go -5201.86 -3136.59 298.761 0",
      ["Thelsamar"] = ".go -5346.463379 -2973.036133 324.246033 0",
      ["Valley of Kings"] = ".go -5840.930664 -2577.821777 310.545868 0",
    },
    ["Redridge Mountains"] = {
      ["Alther's Mill"] = ".go -9168.66 -2726.31 90.0426 0",
      ["Lake Everstill"] = ".go -9319 -1937.94 58.0698 0",
      ["Lakeshire"] = ".go -9277.857422 -2285.332275 67.740242 0",
      ["Render's Rock"] = ".go -8687.39 -2330.38 155.916 0",
      ["Render's Valley"] = ".go -9713.805664 -3188.386963 58.683464 0",
      ["Stonewatch"] = ".go -9385.46 -3039.27 139.437 0",
      ["Stonewatch Falls"] = ".go -9482.566406 -3325.852783 8.742759 0",
      ["Tower of Ilgalar"] = ".go -9281.937500 -3332.111328 115.565613 0",
    },
    ["Searing Gorge"] = {
      ["Blackrock Mountain South Entrance"] = ".go -7317.34 -1072.33 277.06 0",
      ["Dustfire Valley"] = ".go -6634.275391 -1876.377319 244.143814 0",
      ["Firewatch Ridge"] = ".go -6646.511719 -829.166199 244.161072 0",
      ["Grimeslit Dig Site"] = ".go -6986.92 -1705.54 241.667 0",
      ["Stonewrought Pass"] = ".go -6181.394531 -2300.549072 285.692139 0",
      ["Stonewrought Pass Entrance"] = ".go -6356.700195 -2079.106445 243.570541 0",
      ["The Cauldron"] = ".go -6888.953125 -1336.459961 239.923050 0",
      ["Thorium Point"] = ".go -6490.542969 -1019.240234 341.075958 0",
    },
    ["Stormwind"] = {
      ["Bank"] = ".go -8912.08 624.23 99.53 0",
      ["Canals"] = ".go -8675.39 635.774 96.9275 0",
      ["Cathedral Square"] = ".go -8624.118164 774.103516 96.650604 0",
      ["Cathedral of Light"] = ".go -8561.540039 823.382996 106.518997 0",
      ["Champions' Hall"] = ".go -0.094474 9.5494 -0.227239 449",
      ["Deeprun Tram South"] = ".go 68.3 2490.91 -4.296 369",
      ["Dwarven District"] = ".go -8434.686523 605.974548 94.966866 0",
      ["Mage Quarter"] = ".go -8896.36 834.148 99.5207 0",
      ["Old Town"] = ".go -8662.9 498.212 100.833 0",
	  ["Stormwind City"] = ".go -8913.23 554.633 93.7944 0",
      ["Stormwind Keep"] = ".go -8491.708984 397.007629 108.385765 0",
      ["The Park"] = ".go -8755.550781 1094.032959 95.403732 0",
      ["Trade District"] = ".go -8852.03 652.878 96.46 0",
      ["Valley of Heroes"] = ".go -8951.62 524.373 96.6275 0",
      ["Wizard's Sanctum"] = ".go -9019.160156 887.596313 29.620623 0",
      ["Wizard's Sanctum Entrance"] = ".go -9007.65 870.424 148.618 0",
    },
    ["Strangelthorn Vale"] = {
      ["Bal'lal Ruins"] = ".go -11977.4 332.254 3.20626 0",
      ["Bloodsail Compound"] = ".go -13274.4 769.951 1.677078 0",
      ["Booty Bay"] = ".go -14406.6 419.353 22.3907 0",
      ["Grom'gol Base Camp"] = ".go -12373.730469 210.770599 3.038381 0",
      ["Gurubashi Arena"] = ".go -13162.989258 328.639191 42.980099 0",
      ["Jaguero Isle"] = ".go -14740.7 -432.482 4.00624 0",
      ["Janeiro's Point"] = ".go -14177.322266 713.910339 28.596790 0",
      ["Kurzen's Compound"] = ".go -11586.5 -657.662 32.9941 0",
      ["Nesingwary's Expedition"] = ".go -11624.311523 -56.059643 10.963597 0",
      ["Rebel Camp"] = ".go -11311.5 -195.19 76.3198 0",
      ["Ruins of Jubuwal"] = ".go -13382.6 2.10815 21.8683 0",
      ["Ruins of Zul'Kunda"] = ".go -11693.9 702.532 49.9689 0",
      ["The Vile Reef"] = ".go -12258.9 621.105 -68.3247 0",
      ["Venture Co. Base Camp"] = ".go -12026.053711 -524.548828 10.881814 0",
      ["Wild Shore"] = ".go -14692.4 506.162 1.78241 0",
      ["Yojamba Isle"] = ".go -11822.6 1237.81 1.21 0",
      ["Ziata'jai Ruins"] = ".go -12697.103516 -462.156708 29.978767 0",
      ["Zuuldaia Ruins"] = ".go -11683.1 925.209 3.64735 0",
    },
    ["Swamp of Sorrows"] = {
      ["Fallow Sanctuary"] = ".go -9980.38 -3568.28 22.0569 0",
      ["Misty Valley"] = ".go -10103.4 -2431.61 28.4491 0",
      ["Misty Reed Strand"] = ".go -10022.2 -4266.67 7.26064 0",
      ["Pool of Tears"] = ".go -10303.5 -3972.28 20.2882 0",
      ["Splinterspear Junction"] = ".go -10382.543945 -2605.098877 21.684938 0",
      ["Stonard"] = ".go -10452.5 -3263.59 20.1782 0",
      ["Sunken Temple"] = ".go -10318.029297 -3867.723633 -40.303104 0",
    },
    ["Westfall"] = {
      ["Alexston Farmstead"] = ".go -10644.8 1681.3 42.0338 0",
      ["Furlbrow's Pumpkin Patch"] = ".go -9903.53 1245.26 42.0563 0",
      ["Longshore"] = ".go -10513.9 2075.23 12.1819 0",
      ["Moonbrook"] = ".go -11018.4 1513.69 43.0152 0",
      ["Saldean's Farm"] = ".go -10171.8 1195.41 36.4345 0",
      ["Sentinel Hill"] = ".go -10510 1046.89 60.518 0",
      ["The Dagger Hills"] = ".go -11275.535156 1448.203979 89.078476 0",
      ["The Dead Acre"] = ".go -10776.184570 881.871765 33.919949 0",
      ["The Deadmines - Cave"] = ".go -11156.758789 1528.991821 19.410166 0",
      ["The Dust Plains"] = ".go -11113.986328 627.597961 36.585629 0",
      ["Westfall Lighthouse"] = ".go -11399.2 1947.85 10.1451 0",
    },
    ["Wetlands"] = {
      ["The Lost Fleet"] = ".go -2955 -1022.21 10.082010 0",
      ["Bluegill Marsh"] = ".go -3179.248535 -1233.863647 9.521787 0",
      ["Direforge Hill"] = ".go -2833.448242 -2880.430664 32.886501 0",
      ["Dragonmaw Gates"] = ".go -3465.16 -3727.56 64.5778 0",
      ["Dun Algaz"] = ".go -4231.86 -2361.37 204.069 0",
      ["Dun Algaz Entrance"] = ".go -4088.668213 -2663.705811 35.115078 0",
      ["Dun Modr"] = ".go -2605.21 -2341.09 83.3551 0",
      ["Grim Batol"] = ".go -4053.99 -3450.62 283.383 0",
      ["Ironbeard's Tomb"] = ".go -2849.21 -2220.06 31.3835 0",
      ["Menethil Bay"] = ".go -3754.19 -1087.3 -1.71875 0",
      ["Menethil Harbor"] = ".go -3740.29 -755.08 10.9643 0",
      ["Raptor Ridge"] = ".go -3142.503906 -3239.810059 62.461185 0",
      ["Sundown Marsh"] = ".go -2868.028076 -1485.686401 9.929937 0",
      ["Thandol Span"] = ".go -2336.47 -2509.82 85.2212 0",
      ["The Three Corners"] = ".go -3239.780762 -2461.007568 15.600349 0",
      ["Whelgar's Excavation Site"] = ".go -3522.96 -1848.58 25.1502 0",
    },

  }
elseif cont == "K" then
  return {
     ["Ashenvale"] = {
      ["Astranaar"] = ".go 2745.85 -378.33 108.253 1",
      ["Bough Shadow"] = ".go 3141.823730 -3707.343262 121.049583 1",
      ["Demon Fall Canyon"] = ".go 1626.91 -3057.36 89.4942 1",
      ["Falfarren River"] = ".go 1685.909546 -1729.628174 101.213547 1",
      ["Felfire Hill"] = ".go 1992.850952 -2989.656494 107.110558 1",
      ["Forest Song"] = ".go 2957.463867 -3262.809814 160.133804 1",
      ["Greenpaw Village"] = ".go 2265.585693 -1475.328369 90.808235 1",
      ["Maestra's Point"] = ".go 3229.989746 198.252319 8.061512 1",
      ["Nightsong Woods"] = ".go 2046.821045 -1874.254639 98.503624 1",
      ["Raynewood Retreat"] = ".go 2673.51 -1859.72 188.112 1",
      ["Ruins of Stardust"] = ".go 2178.007324 -288.449829 97.349899 1",
      ["Satyrnaar"] = ".go 2757.590088 -2967.58 143.882 1",
      ["Silverwind Refuge"] = ".go 2135.270020 -1189.903320 98.820641 1",
      ["Splintertree Post"] = ".go 2188.609863 -2514.278564 81.024620 1",
      ["The Dor'Danil Barrow Den"] = ".go 1775.1 -2679.19 111.666 1",
      ["The Master's Glaive"] = ".go 4577.61 419.307 33.7161 1",
      ["The Shrine of Aessina"] = ".go 2681.045166 377.692535 67.860809 1",
      ["The Talondeep Path"] = ".go 1943.135132 -741.766113 113.109909 1",
      ["The Zoram Strand"] = ".go 3652.24 928.308 7.01517 1",
      ["Warsong Lumber Camp"] = ".go 2442.092285 -3470.109131 91.967857 1",
      ["Xavian"] = ".go 2867.03 -2595.67 219.911 1",
      ["Zoram'gar Outpost"] = ".go 3361 1007 3.766 1",
    },
    ["Azshara"] = {
      ["Bitter Reaches"] = ".go 4623.242188 -7239.781738 169.330292 1",
      ["Forlorn Ridge"] = ".go 3230.835449 -4735.763184 142.399078 1",
      ["Haldarr Encampment"] = ".go 3306.000244 -4319.978027 128.709229 1",
      ["Hetaera's Clutch"] = ".go 3554.121338 -6232.785156 44.276176 1",
      ["Jagged Reef East"] = ".go 4815.409180 -7616.796875 49.077629 1",
      ["Jagged Reef West"] = ".go 5026.466797 -6746.182617 7.429204 1",
      ["Lake Mennar"] = ".go 2647.066895 -5373.742676 78.616829 1",
      ["Legash Encampment"] = ".go 4539.822266 -6290.512695 114.273201 1",
      ["On Ravencrest Monument"] = ".go 2449.459473 -6953.133789 238.022369 1",
      ["Ravencrest Monument"] = ".go 2403.753906 -6786.962402 142.771896 1",
      ["Rethress Sanctum"] = ".go 2209.154541 -6439.119141 1.823270 1",
      ["Scalebeard's Cave"] = ".go 3705.1 -6043.45 2.508 1",
      ["Shadowsong Shrine"] = ".go 2905.621582 -4035.082031 144.921371 1",
      ["Southridge Beach"] = ".go 2946.593750 -6036.697754 3.806004 1",
      ["Talrendis Point"] = ".go 2706.663086 -3877.953125 105.175400 1",
      ["Temple of Arkkoran"] = ".go 4060.069092 -7258.750000 7.643451 1",
      ["Temple of Zin-Malor"] = ".go 3546.8 -5287.96 109.935 1",
      ["Thalassian Base Camp"] = ".go 4370.713867 -6246.862793 96.659889 1",
      ["The Ruined Reaches"] = ".go 2089.575439 -6625.696777 4.423138 1",
      ["The Shattered Strand"] = ".go 4266.963379 -6277.396973 92.9008711",
      ["Timbermaw Hold"] = ".go 4192.953125 -5287.344238 129.046387 1",
      ["Tower of Eldara"] = ".go 4212.527832 -7824.383301 11.125220 1",
      ["Ursolan"] = ".go 4219.368652 -5609.947754 118.165573 1",
      ["Valormok"] = ".go 3595.803711 -4412.858887 113.286484 1",
    },
    ["Azuremyst Isle"] = {
      ["Ammen Fields"] = ".go -4156.72 -13486 46.1999 530",
      ["Ammen Ford"] = ".go -4240.31 -13036.1 -0.275967 530",
      ["Ammen Vale"] = ".go -3967.45 -13657.6 60.3977 530",
      ["Azure Watch"] = ".go -4183.3 -12515 44.377 530",
      ["Bristlelimb Village"] = ".go -4615.48 -11599.4 18.3033 530",
      ["Crash Site"] = ".go -4115.04 -13754.8 73.5094 530",
      ["Emberglade"] = ".go -3266.68 -12911.1 11.6274 530",
      ["Fairbridge Strand"] = ".go -2921.27 -12431.4 7.6453 530",
      ["Geezle's Camp"] = ".go -4591.81 -12861.3 4.99909 530",
      ["Menagerie Wreckage"] = ".go -3370.93 -12742 12.9584 530",
      ["Moongraze Woods"] = ".go -3936.39 -12613.8 66.1739 530",
      ["Moonwing Den"] = ".go -5046.52 -11033.7 25.9131 530",
      ["Nestlewood Hills"] = ".go -4561.63 -13935.8 84.3531 530",
      ["Nestlewood Thicket"] = ".go -4405.96 -13751.4 53.3686 530",
      ["Odesyu's Landing"] = ".go -4720.54 -12413.8 11.1227 530",
      ["Pod Cluster"] = ".go -4391.11 -11967.4 17.2576 530",
      ["Pod Wreckage"] = ".go -4441.42 -12639.3 16.928 530",
      ["Shadow Ridge"] = ".go -4520.24 -13300 77.474 530",
      ["Silting Shore"] = ".go -3075.84 -12006.9 1.1227 530",
      ["Silverline Lake"] = ".go -4429.04 -13579.7 40.7926 530",
      ["Silvermyst Isle"] = ".go -4925.04 -11288.1 25.5329 530",
      ["Stillpine Hold"] = ".go -3433.91 -12363.3 13.9108 530",
      ["The Sacred Grove"] = ".go -3787.38 -13363 79.966 530",
      ["Tides' Hollow"] = ".go -4877.5 -11604.2 5.95179 530",
      ["Traitor's Cove"] = ".go -5073.15 -11251.4 0.946581 530",
      ["Valaar's Berth"] = ".go -4254.31 -11439.4 9.91663 530",
      ["Wildwind Path"] = ".go -3551.03 -11572 21.7675 530",
      ["Wildwind Peak"] = ".go -3771.735107 -11438.273438 319.723480 530",
      ["Wrathscale Point"] = ".go -4886.84 -11846.2 18.5994 530",
    },
    ["Bloodmyst Isle"] = {
      ["Amberweb Pass"] = ".go -1631.36 -10671.5 143.441 530",
      ["Axxarien"] = ".go -1504.03 -11406.3 67.8893 530",
      ["Beryl Coast"] = ".go -2677.72 -12363.2 0.345755 530",
      ["Blacksilt Shore"] = ".go -2831.77 -11294.6 2.31774 530",
      ["Bladewood"] = ".go -1785.28 -11611 35.4213 530",
      ["Blood Watch"] = ".go -1987.23 -11839 52.6508 530",
      ["Bloodcurse Isle"] = ".go -1818.28 -12778.7 3.91112 530",
      ["Bristlelimb Enclave"] = ".go -2503.26 -12222.4 28.9453 530",
      ["Kessel's Crossing"] = ".go -2665.15 -12143.8 16.7086 530",
      ["Middenvale"] = ".go -2405.61 -11767.2 17.6714 530",
      ["Mystwood"] = ".go -2589.49 -11543.5 34.5919 530",
      ["Nazzivian"] = ".go -2377.31 -11309.2 31.9433 530",
      ["Ragefeather Ridge"] = ".go -1483.05 -11881.7 27.9084 530",
      ["Ruins of Loreth'Aran"] = ".go -1713.49 -12137.1 11.8676 530",
      ["Talon Stand"] = ".go -1209.8 -12445.7 94.4462 530",
      ["Tel'athion's Camp"] = ".go -1644.25 -10918 58.8257 530",
      ["The Bloodcursed Reef"] = ".go -1256.27 -12791.7 0.574507 530",
      ["The Bloodwash"] = ".go -1283.63 -11357.6 20.8564 530",
      ["The Crimson Reach"] = ".go -1990.22 -12340.6 0.392534 530",
      ["The Cryo-Core"] = ".go -2099.68 -11380.2 63.7418 530",
      ["The Foul Pool"] = ".go -1551.48 -10982.1 58.7619 530",
      ["The Hidden Reef"] = ".go -1164.27 -11090.6 -75.719 530",
      ["The Lost Fold"] = ".go -2553.08 -11979.4 25.5455 530",
      ["The Vector Coil"] = ".go -1923.64 -10561.2 177.182 530",
      ["The Warp Piston"] = ".go -1220.95 -11794.1 2.88458 530",
      ["Veridian Point"] = ".go -1002.08 -12513.4 14.6995 530",
      ["Vindicator's Rest"] = ".go -1767.2 -11062.8 76.7134 530",
      ["Wrathscale Lair"] = ".go -2240.01 -12265.2 45.0781 530",
      ["Wyrmscar Island"] = ".go -1302.21 -12279.5 16.4967 530",
    },
    ["Darkshore"] = {
      ["Ameth'Aran"] = ".go 5732.531738 116.359367 31.568090 1",
      ["Auberdine"] = ".go 6441.729004 485.862885 7.691852 1",
      ["Bashal'Aran"] = ".go 6735.43 6.71422 42.7028 1",
      ["Blackwood Den"] = ".go 4641.189941 55.380100 66.630699 1",
      ["Cliffspring River"] = ".go 6937.024414 -569.622131 44.463989 1",
      ["Grove of the Ancients"] = ".go 4995.94 82.9197 54.3857 1",
      ["Mist's Edge"] = ".go 7742.92 -769.867 5.22102 1",
      ["Remtravel's Excavation"] = ".go 4690.467773 559.935486 25.875835 1",
      ["Ruins of Mathystra"] = ".go 7373.38 -938.331 32.6196 1",
      ["Shatterspear Village"] = ".go 7433.971191 -1558.314697 187.763184 1",
      ["Tower of Althalaxx"] = ".go 7177.46 -761.607 59.6101 1",
      ["Twilight Shore"] = ".go 5028.14 534.745 7.28397 1",
      ["Twilight Vale"] = ".go 4891.003418 331.903168 37.495338 1",
    },
    ["Darnassus"] = {
      ["Cenarion Enclave"] = ".go 10118.433594 2538.496094 1321.517090 1",
      ["Craftsmen's Terrace"] = ".go 10094.301758 2319.444092 1329.172119 1",
      ["Darnassus"] = ".go 9978.111328 2036 1328.065674 1",
      ["Temple of the Moon"] = ".go 9674.555664 2524.820801 1333.899292 1",
      ["The Temple Gardens"] = ".go 9935.339844 2506.108643 1317.824219 1",
      ["Tradesmen's Terrace"] = ".go 9764.547852 2313.619141 1327.683228 1",
      ["Warrior's Terrace"] = ".go 9951.548828 2279.601807 1341.393311 1",
    },
    ["Desolace"] = {
      ["Gelkis Village"] = ".go -2221.79 2519.69 59.1523 1",
      ["Ghost Walker Post"] = ".go -1156.34 1894.49 88.869186 1",
      ["Kodo Graveyard"] = ".go -1305.19 1837.56 55.731 1",
      ["Kolkar Village"] = ".go -939.786987 1091.400024 88.240654 1",
      ["Magram Village"] = ".go -1754.33 967.89 92.5626 1",
      ["Mannoroc Coven"] = ".go -1879.28 1745.49 78.8892 1",
      ["Nijel's Point"] = ".go 147.011230 1231.578979 165.476013 1",
      ["Sar'theris Strand"] = ".go .go -628.915649 2563.067627 34.792370 1",
      ["Sargeron"] = ".go -242.347 764.848 98.7113 1",
      ["Shadowprey Village"] = ".go -1659 3092 30.5 1",
      ["Thunder Axe Fortress"] = ".go -437.79950 1709.347534 126.153435 1",
      ["Valley of Spears"] = ".go -1270.565674 2849.625488 113.745155 1",
    },						
    ["Durotar"] = {
      ["Bladefist Bay"] = ".go 1350.107666 -4988.86164 0.751682 1",
      ["Deadeye Shore"] = ".go 918.715027 -5115.689941 -1.654380",
      ["Dustwind Cave"] = ".go 815.332214 -4751.076660 36.294128 1",
      ["Echo Isles"] = ".go -1124.19 -5535.02 8.62076 1",
      ["Hidden Path"] = ".go -844.332825 -4217.060547 88.668396 1",
      ["Kolkar Crag"] = ".go -1028.63 -4599.8 25.5756 1",
      ["Razor Hill"] = ".go 304.762 -4734.97 9.30458 1",
      ["Razorwind Canyon"] = ".go 900.676941 -4634.824219 17.787638 1",
      ["Scuttle Coast"] = ".go 242.548004 -5151.459961 -0.149807 1",
      ["Sen'Jin Village"] = ".go -844.586 -4924.29 20.8708 1",
      ["Shrine of the Dormant Flame"] = ".go -243.400070 -4016.529785 187.302170 1",
      ["Skull Rock"] = ".go 1452.830078 -4877.144043 11.878830 1",
      ["Southfury River"] = ".go 114.769 -3758.95 17.8907 1",
      ["Spirit Rock"] = ".go -861.456604 -4283.674805 77.799149 1",
      ["Thunder Ridge"] = ".go 925.127 -4038.29 -13.338 1",
      ["Tiragarde Keep"] = ".go -247.846176 -5074.713379 24.005226 1",
      ["Valley of Trials"] = ".go -636.469 -4243.52 38.1339 1",
    },
    ["Dustwallow Marsh"] = {
      ["Alcaz Island"] = ".go -2657.629395 -4896.053223 21.372576 1",
      ["Beezil's Wreck"] = ".go -4006.19 -3777.83 40.6804 1",
      ["Brackenwall Village"] = ".go -3129.38 -2864.51 34.8711 1",
      ["Dreadmurk Shore"] = ".go -3012.719971 -4345.509766 6.619055 1",
      ["Lost Point"] = ".go -3922.24 -2839.21 44.6212 1",
      ["North Point Tower"] = ".go -2855.96 -3422.66 36.7473 1",
      ["Sentry Point"] = ".go -3459.39 -4130.3 16.3786 1",
      ["Shady Rest Inn"] = ".go -3719.26 -2530.63 69.58 1",
      ["Stonemaul Ruins"] = ".go -4354.46 -3275.34 46.0475 1",
      ["The Den of Flame"] = ".go -4336.82 -3018.67 33.1744 1",
      ["The Dragonmurk"] = ".go -4197.56 -2873.76 44.6771 1",
      ["Theramore Isle"] = ".go -3729.36 -4421.41 30.4474 1",
      ["Theramore Isle Lighthouse"] = ".go -3688.18 -4760.14 0.909682 1",
      ["Wyrmbog"] = ".go -4682.968262 -3607.629883 58.450016 1",
    },
    ["Felwood"] = {
      ["Bloodvenom Falls"] = ".go 5280.025879 -713.610046 346.128693 1",
      ["Bloodvenom Post"] = ".go 5118.258789 -354.041016 356.596802 1",
      ["Deadwood Village"] = ".go 3578.008789 -1172.682739 220.337448 1",
      ["Emerald Sanctuary"] = ".go 3989.177979 -1292.131470 251.131149 1",
      ["Irontree Woods"] = ".go 6200 -1035 387.416138 1",
      ["Jadefire Run"] = ".go 6336.779785 -770.389648 500.871124 1",
      ["Jaedenar"] = ".go 4878.319336 -614.219360 306.391052 1",
      ["Morlos' Aran"] = ".go 3791.512695 -1693.279419 255.695404 1",
      ["Ruins of Constellas"] = ".go 4523.880859 -535.869080 304.190094 1",
      ["Shatter Scar Vale"] = ".go 5483.899902 -749.880981 334.621002 1",
      ["Talonbranch Glade"] = ".go 6210.600586 -1932.148193 569.309265 1",
      ["Timbermaw Hold Tunnel"] = ".go 6794.399414 -2076.202393 624.164917 1",
    },
    ["Feralas"] = {
      ["Camp Mojache"] = ".go -4369.68 242.294 25.4133 1",
      ["Dream Bough"] = ".go -2913.268799 1901.910156 34.741295 1",
      ["Feathermoon Stronghold"] = ".go -4411.091309 3228.021484 12.129439 1",
      ["Isle of Dread"] = ".go -6498.465332 3011.379639 7.430540 1",
      ["On Eastern Colossal"] = ".go -3289.27 2013.32 244.467 1",
      ["On West Colossal"] = ".go -3151.457520 2412.532715 255.137741 1",
      ["Oneiros"] = ".go -3143.33 1723.14 48.809 1",
      ["Ruins of Isildien"] = ".go -5566.04 1449.82 20.1135 1",
      ["Ruins of Ravenwind"] = ".go -2858.35 2611.48 58.3777 1",
      ["Ruins of Solarsal"] = ".go -4861.194336 3516.695068 22.865936 1",
      ["Thalanaar"] = ".go -4528.033691 -780.598450 -41.580246 1",
      ["The Forgotten Coast"] = ".go -4522.22 2038.54 50.1436 1",
      ["The Twin Colossals"] = ".go -3220.28 2215.06 33.5292 1",
      ["The Writhing Deep"] = ".go -5262.158203 242.167282 55.089455 1",
    },
    ["Hyjal"] = {
      ["Crater"] = ".go 5430.490723 -2805.697266 1463.441162 1",
      ["Hyjal"] = ".go 4674.88 -3638.37 965.264 1",
      ["Inside Cave"] = ".go 4858 -1840 1143.644043 1",
      ["Outside Cave"] = ".go 4817 -1742 1158.251099 1",
      ["The World Tree/Blizzard Construction Co"] = ".go 5475.553223 -3728.483887 1593.443848 1",
    },
    ["Moonglade"] = {
      ["Nighthaven"] = ".go 7978.947754 -2501.133789 488.986420 1",
      ["Shrine of Remulos"] = ".go 7849.782227 -2196.984375 473.578766 1",
      ["Stormrage Barrow Dens"] = ".go 7565.919922 -2898.293701 460.125610 1",
    },
    ["Mulgore"] = {
      ["Bael'dun Digsite"] = ".go -1897.98 400.675 133.817780 1",
      ["Bloodhoof Village"] = ".go -2321.74 -378.941 -8.568934 1",
      ["Brambleblade Ravine"] = ".go -2933.37 -963.993 58.2343 1",
      ["Camp Narache"] = ".go -2914.248779 -252.656601 52.940720 1",
      ["Red Cloud Mesa"] = ".go -2943.382324 -25.958216 189.293289 1",
      ["Red Rocks"] = ".go -1010.122192 -1109.219360 44.415627 1",
      ["The Venture Co. Mine"] = ".go -1445.533936 -1064.138306 144.047150 1",
      ["The Venture Co. Mine Entrance"] = ".go -1915.66 -1107.44 87.572 1",
      ["Thunderhorn Water Well"] = ".go -1829.212036 -231.982346 -9.424808 1",
      ["Wildmane Water Well"] = ".go -762.610962 -142.772247 -29.088270 1",
      ["Winterhoof Water Well"] = ".go -2537.384033 -705.907227 -8.480825 1",
    },
    ["Orgrimmar"] = {
      ["Cleft of Shadow"] = ".go 1805.406006 -4337.110352 -11.187704 1",
      ["Grommash Hold"] = ".go 1926.922119 -4220.349609 40.946449 1",
      ["Hall of Legends"] = ".go 242.91675 84.9821 25.81 450",
	  ["Ogrimmar"] = ".go 1403.081177 -4367.187988 25.235533 1", 
      ["Second Entrance"] = ".go 1719.052124 -3948.284912 49.056252 1",
      ["The Drag"] = ".go 1860.462280 -4513.910645 23.657042 1",
      ["Valley of Honor"] = ".go 2002.989502 -4698.967285 24.646027 1",
      ["Valley of Spirits"] = ".go 1550.972900 -4179.396973 40.295380 1",
      ["Valley of Strength"] = ".go 1502.711060 -4415.416016 21.551229 1",
      ["Valley of Wisdom"] = ".go 1931.810303 -4282.285156 29.067131 1",
    },
    ["Silithus"] = {
      ["Bronzebeard Encampment"] = ".go -8023.919922 1106.651489 3.306695 1",
      ["Cenarion Hold"] = ".go -6831.205078 762.235291 43.255608 1",
      ["Gates of Ahn'Qiraj"] = ".go -8249.400391 1484.793213 4.587234 1",
      ["Hive'Ashi"] = ".go -6543.318359 800.876709 2.608259 1",
      ["Hive'Regal"] = ".go -7681.918945 795.931946 -3.053955 1",
      ["Hive'Zora"] = ".go -7250.486816 1472.884155 -3.975542 1",
      ["Ravaged Twilight Camp"] = ".go -6158.899902 1779.536377 28.599594 1",
      ["Southwind Village"] = ".go -7200.202637 392.123505 24.907322 1",
      ["The Crystal Vale"] = ".go -6322.533203 1680.257324 14.482635 1",
	  ["The Scarab Wall"] = ".go -7990.291504 1555.718018 4.641033 1",
      ["Twilight Base Camp"] = ".go -7006.766113 1156.217285 10.367116 1",
      ["Twilight Post"] = ".go -6750.621582 1593.255127 6.716227 1",
      ["Valor's Rest"] = ".go -6379.740234 -304.356720 -1.866578 1",
    },
    ["Stonetalon Mountains"] = {
      ["Boulderslide Cavern"] = ".go -122.390999 388.013000 94.485603 1",
      ["Cragpool Lake"] = ".go 1623.811523 140.768951 104.884270 1",
      ["Camp Aparaje"] = ".go -87.382401 -565.776001 -34.129974 1",
      ["Greatwood Vale Entrance"] = ".go -239.089 -809.973 8.78944 1",
      ["Malaka'jin"] = ".go -191.886597 -303.172791 11.54709 1",
      ["Mirkfallon Lake"] = ".go 1570.635132 1030.234375 138.019287 1",
      ["Sishir Canyon"] = ".go 472.76 644.68 68.25 1",
      ["Stonetalon Peak"] = ".go 2506.3 1470.14 262.722 1",
      ["Sun Rock Retreat"] = ".go 948.365417 955.290466 104.506050 1",
      ["The Charred Vale"] = ".go 821.99 1599.07 -21.1896 1",
      ["Webwinder Path"] = ".go 591.835754 327.223175 46.658012 1",
      ["Windshear Crag"] = ".go 1160.25 51.3229 1.072 1",
    },
    ["Tanaris"] = {
      ["Abyssal Sands"] = ".go -8109.339844 -3067.478760 38.977333 1",
      ["Burning Alliance Ship"] = ".go -7089.578613 -5425.417969 14.268480 1",
      ["Burning Pirate Ship"] = ".go -7194.435547 -5388.833984 12.874940 1",
      ["Caverns of Time"] = ".go -8195.938477 -4500.128418 8.608192 1",
      ["Dunemaul Compound"] = ".go -8492.540039 -3022.386963 9.373973 1",
      ["Eastmoon Ruins"] = ".go -8867.710938 -3435.858398 13.351532 1",
      ["Gadgetzan"] = ".go -7124.131836 -3818.932129 8.410748 1",
      ["Land's End Beach"] = ".go -10135.932617 -4253.151367 0.216330 1",
      ["Lost Rigger Cove"] = ".go -8033.514160 -5337.061035 8.040646 1",
      ["Noonshade Ruins"] = ".go -6919.98 -4307.53 24.699 1",
      ["Sandsorrow Watch"] = ".go -7164.642578 -3142.552979 11.071997 1",
      ["Southern Islands"] = ".go -11295.981445 -4697.325195 4.760623 1",
      ["Southmoon Ruins"] = ".go -9206.04 -3014.04 23.394 1",
      ["Steamwheedle Port"] = ".go -6942.47 -4847.1 0.667853 1",
      ["The Gaping Chasm"] = ".go -9296.55406 -3947.277100 11.020032 1",
      ["The Noxious Lair"] = ".go -8038.416504 -2530.460693 11.034169 1",
      ["Thistleshrub Valley"] = ".go -8875.11 -2262.54 32.3471 1",
      ["Valley of the Watchers"] = ".go -9418.250977 -2761.614502 19.963856 1",
      ["Zalashji's Den"] = ".go -7353.049316 -4890.124023 0.596876 1",
    },
    ["Teldrassil"] = {
      ["Aldrassil"] = ".go 10455.7 798.455 1346.75 1",
      ["Gnarlpine Hold"] = ".go 9114.65 1846.06 1327.5 1",
      ["Lake Al'Ameth"] = ".go 9477.19 1005.74 1249.01 1",
      ["Pools of Arilthrien"] = ".go 9561.33 1743 1291.91 1",
      ["Rut'theran Village"] = ".go 8697.154297 954.137939 12.482889 1",
      ["Shadowglen"] = ".go 10699.8 738.73 1325.881 1",
      ["Starbreeze Village"] = ".go 9881.339844 448.189240 1302.783569 1",
      ["The Oracle Glade"] = ".go 10661.183594 1875.747314 1323.455933 1",
      ["Wellspring Lake"] = ".go 10376.837891 1625.690552 1288.906250 1",
    },
	["The Barrens"] = {
      ["Bael Modan"] = ".go -4095.7 -2305.74 124.914 1",
      ["Camp Taurajo"] = ".go -2388.95 -1918.82 96.7422 1",
      ["Field of Giants"] = ".go -3120.86 -2327.89 93.1243 1",
      ["Fray Island"] = ".go -1675.317383 -4325,567383 2.787689 1",
      ["Lushwater Oasis"] = ".go -961.271729 -2038.54478 81.615005 1",
      ["Northwatch Hold"] = ".go -1986.584106 -3688.249756 18.316187 1",
      ["Ratchet"] = ".go -939.315674 -3720.405273 8.502710 1",
      ["Razorfen Downs Entrance"] = ".go -4323.557129 -2110/74385 77.923454 1",
      ["The Crossroads"] = ".go -456.263 -2652.7 95.615 1",
      ["The Forgotten Pools"] = ".go 90.100304 -1943.439941 79.472702 1",
      ["The Great Lift"] = ".go -4619.15 -1850.91 86.0563 1",
      ["The Merchant Cost"] = ".go -1719.08 -3824.99 12.0836 1",
      ["The Sludge Fen"] = ".go 1059.54 -3003.53 91.6441 1",
      ["The Stagnant Oasis"] = ".go -1330.17 -3120.07 91.6667 1",
    },
    ["The Exodar"] = {
      ["Seat of the Naaru"] = ".go -3826.68 -11686.9 -107.044 530",
      ["The Crystal Hall"] = ".go -3816.96 -11478.1 -138.462 530",
      ["The Vault of Lights"] = ".go -4061.72 -11445.4 -141.364 530",
      ["Traders Tier"] = ".go -4115.37 -11688.3 -142.789 530",
    },
    ["Thousand Needles"] = {
      ["Camp E'thok"] = ".go -4620.84 -1251.18 -52.53 1",
      ["Darkcloud Pinnacle"] = ".go -5096.018555 -1945.140015 88.737549 1",
      ["Freewind Post"] = ".go -5437.4 -2437.47 89.3083 1",
      ["Highperch"] = ".go -5000.46 -940.209 -5.58816 1",
      ["Mirage Raceway"] = ".go -6202.16 -3901.68 -60.2858 1",
      ["Roguefeather Den"] = ".go -5462.63 -1636.89 29.0246 1",
      ["Splithoof Crag"] = ".go -5082.59 -2305.29 -53.9398 1",
      ["Tahonda Ruins"] = ".go -6540.3 -3851.91 -58.7496 1",
      ["The Rustmaul Dig Site"] = ".go -6495.56 -3472.69 -58.7786 1",
      ["The Screeching Canyon"] = ".go -5422.122559 -1659.868652 -50.243587 1",
      ["The Weathered Nook"] = ".go -5214.83 -2794.5 -7.06175 1",
      ["Weazel's Crater"] = ".go -5878.111816 -3864.679199 -61.086304 1",
      ["Whitereach Post"] = ".go -4897.81 -1375.06 -52.7751 1",
      ["Windbreak Canyon"] = ".go -5348.14 -2825 -53.7082 1",
    },
    ["Thunder Bluff"] = {
      ["Elder Rise"] = ".go -1056.809448 -239.941910 159.030350 1",
      ["First Level"] = ".go -1277.308594 118.811172 131.153946 1",
      ["Hunter Rise"] = ".go -1403.111328 -78.527832 158.934814 1",
      ["Second Level"] = ".go -1134.911499 32.515255 143.354950 1",
      ["Spirit Rise"] = ".go -1009.292664 231.282547 134.587311 1",
      ["The Pools of Vision"] = ".go -1003.419006 261.579132 112.153397 1",
      ["Third Level"] = ".go -1208.590698 -63.392506 157.572891 1",
	  ["Thunder Bluff Lift"] = ".go -1303.685669 204.982956 68.681450 1",
    },
    ["Un'Goro Crater"] = {
      ["Fire Plume Ridge"] = ".go -7171.677246 -1279.850220 -184.423508 1",
      ["Fungal Rock"] = ".go -6401.514160 -1755.861938 -272.255737 1",
      ["Golakka Hot Springs"] = ".go -7196.365234 -630.694885 -233.639542 1",
      ["Lakkari Tar Pits"] = ".go -6478.205566 -1129.330933 -275.908661 1",
      ["Marshal's Refuge"] = ".go -6186.573730 -1106.830322 -217.059799 1",
      ["Tanaris Entrance"] = ".go -7932.488281 -2139.605469 -230.728043 1",
      ["Terror Run"] = ".go -7866.75 -630.03 -260.563 1",
      ["The Marshlands"] = ".go -7286.009766 -2125.060059 -272.114014 1",
      ["The Slithering Scar"] = ".go -7872.519043 -1344.782959 -275.458618 1",
    },
    ["Winterspring"] = {
      ["Darkwhisper Gorge"] = ".go 5018.910156 -4563.939941 851.750000 1",
      ["Everlook"] = ".go 6721.442383 -4659.089355 720.892578 1",
      ["Frostfire Hot Springs"] = ".go 6831.958984 -2494.926758 558.434021 1",
      ["Frostsaber Rock"] = ".go 8070.178711 -3859.557373 688.782166 1",
      ["Frostwhisper Gorge"] = ".go 5274.147461 -4712.205078 691.123596 1",
      ["Hyjal Entrance"] = ".go 4541.943848 -3983.917725 941.822388 1",
      ["Mazthoril"] = ".go 6155.213867 -4444.948242 659.788025 1",
      ["Owl Wing Thicket"] = ".go 5671.608887 -4963.664063 806.428711 1",
      ["Starfall Village"] = ".go 7166.167480 -3986.871094 742.711975 1",
      ["The Hidden Grove"] = ".go 7641.779297 -4935.770020 696.609314 1",
      ["The Ruins of Kel'Theril"] = ".go 6476.201172 -4255.868652 665.202881 1",
      ["Timbermaw Post"] = ".go 6485.091797 -3158.416016 570.607422 1",
      ["Winterfall Village"] = ".go 6897.565918 -5057.175781 688.782532 1",
    },

  }
elseif cont == "Ou" then
  return {
    ["Blade's Edge Mountains"] = {
      ["Bash'ir Landing"] = ".go 3751.623751.620117 6129.13 266.810547 530",
      ["Blackwing Coven"] = ".go 3200.73 7116.56 173.922 530",
      ["Blade Tooth Canyon"] = ".go 1046.98 7109.86 111.879 530",
      ["Bladed Gulch"] = ".go 3196.89 4980.86 264.966 530",
      ["Blades' Run"] = ".go 950.657 5967.92 122.97 530",
      ["Bladespire Grounds"] = ".go 2526.65 6270.69 14.1942 530",
      ["Bladespire Hold"] = ".go 2459.05 6588.59 0.726269 530",
      ["Bladespire Outpost"] = ".go 2347.28 5738.29 274.065 530",
      ["Bloodmaul Camp"] = ".go 3433.18 5782.34 -0.921853 530",
      ["Bloodmaul Outpost"] = ".go 1637.28 6363.59 -5.30995 530",
      ["Bloodmaul Ravine"] = ".go 1945.96 6388.7 -10.3385 530",
      ["Boulder'mok"] = ".go 3607.37 7164.28 141.338 530",
      ["Broken Wilds"] = ".go 3546.411621 4603.393555 221.336060 530",
      ["Churning Gulch"] = ".go 2875.19 6241.72 12.7987 530",
      ["Circle of Blood Arena"] = ".go 2838.5 5929.38 11.1157 530",
      ["Crystal Spine"] = ".go 4007.5 4976.03 267.921 530",
      ["Cursed Hollow"] = ".go 2680.11 5665.06 -13.8795 530",
      ["Daggermaw Canyon"] = ".go 3249.71 5802.41 14.281 530",
      ["Death's Door"] = ".go 2267.82 5396.15 145.739 530",
      ["Draenethyst Mine"] = ".go 1400.01 6545.57 8.50813 530",
      ["Dragon's End"] = ".go 2643.13 5881.1 3.68066 530",
      ["Evergrove"] = ".go 3027.23 5475.45 146.62 530",
      ["Felstorm Point"] = ".go 3999.97 5496.07 267.214905 530",
      ["Forge Camp: Anger"] = ".go 2946.4 4837.72 277.624 530",
      ["Forge Camp: Terror"] = ".go 1506.86 7303.65 367.062 530",
      ["Forge Camp: Wrath"] = ".go 2943.3 6962.01 365.407 530",
      ["Grishnath"] = ".go 3650.78 6602.99 132.293 530",
      ["Gruul's Lair Entrance"] = ".go 3621.37 5310.96 -21.8619 530",
      ["Jagged Ridge"] = ".go 2038.04 6046.85 146.237 530",
      ["Mok'Nathal Village"] = ".go 2158.07 4795.25 165.322 530",
      ["Raazan's Landing"] = ".go 2854.76 5234.88 268.939 530",
      ["Raven's Wood"] = ".go 3430.84 7098.49 153.864 530",
      ["Razor Ridge"] = ".go 2467.87 5320.79 264.548 530",
      ["Ruuan Weald"] = ".go 3166.08 5570.9 141.385 530",
      ["Scalewing Shelf"] = ".go 2009.69 5146.08 265.365 530",
      ["Singing Ridge"] = ".go 1604.28 5446.96 266.042 530",
      ["Skald"] = ".go 3698.41 4956.87 274.24 530",
      ["Sylvanaar"] = ".go 2058.87 6851.6 172.596 530",
      ["The Living Grove"] = ".go 1757.930054 6748.3999902 136.220139 530",
      ["Thunderlord Stronghold"] = ".go 2382.8 6044.77 139.549 530",
      ["Toshley's Station"] = ".go 1907.43 5562.55 262.439 530",
      ["Trogma's Claim"] = ".go 1717.83 4956.1 170.844 530",
      ["Veil Lashh"] = ".go 1590.84 6924.01 157.576 530",
      ["Veil Ruuan"] = ".go 3249.64 5335.43 144.992 530",
      ["Veil Vekh"] = ".go 1697.13 4607.79 143.439 530",
      ["Vekhaar Stand"] = ".go 1874.74 4812.07 157.949 530",
      ["Vortex Pinnacle - Ogri'la"] = ".go 2310.71 7286.12 365.513 530",
      ["Wyrmskull Bridge"] = ".go 3033.6 5956.77 130.779 530",
      ["Wyrmskull Tunnel"] = ".go 3206.68 6283.51 124.194 530",
    },
    ["Hellfire Peninsula"] = {
      ["Broken Hill"] = ".go -542.231 3480.55 44.7438 530",
      ["Cenarion Post"] = ".go -324.06 4722.37 18.647 530",
      ["Den of Haal'esh"] = ".go -1101.28 4207.32 56.2386 530",
      ["Dustquill Ravine"] = ".go -816.221 4385.29 69.9742 530",
      ["East Supply Caravan"] = ".go -603.306 2368.99 38.5942 530",
      ["Expedition Armory"] = ".go -1229.93 2674.9 2.69016 530",
      ["Expedition Point"] = ".go -657.06 1866.18 68.3987 530",
      ["Falcon Watch"] = ".go -607.069 4100.84 90.3678 530",
      ["Fallen Sky Ridge"] = ".go 39.0318 4667.51 48.7238 530",
      ["Felspark Ravine"] = ".go 214.231 2301.33 56.4926 530",
      ["Forge Camp: Mageddon"] = ".go 382.59 2186.89 118.38 530",
      ["Forge Camp: Rage"] = ".go 398.865 2501.62 148.81 530",
      ["Gor'gaz Outpost"] = ".go -1103.97 3219.42 65.1654 530",
      ["Haal'eshi Gorge"] = ".go -1233.74 4071.68 73.697 530",
      ["Hellfire Citadel Entrance"] = ".go -297.644 3034.8 -3.62105 530",
      ["Honor Hold"] = ".go -679.361 2668.36 89.7899 530",
      ["Invasion Point: Annihilator"] = ".go 538.373 2766.97 214.837 530",
      ["Mag'har Grounds"] = ".go 378.528 3681.59 185.678 530",
      ["Mag'har Post"] = ".go 520.606 3884.38 190.436 530",
      ["Northern Rampart"] = ".go -7.00015 3182.38 50.3071 530",
      ["Pools of Aggonar"] = ".go 347.318 3398.97 64.442 530",
      ["Razorthorn Trail"] = ".go -1561.37 3565.05 35.0661 530",
      ["Reaver's Fall"] = ".go -37.482 2141.88 110.16 530",
      ["Ruins of Sha'naar"] = ".go -635.146 4801.16 43.9434 530",
      ["Sha'naari Wastes"] = ".go -464.254 4800.6 23.5454 530",
      ["Shatter Point"] = ".go 268.793 1469.49 -15.4438 530",
      ["Southern Rampart"] = ".go -1124.73 3278.55 116.206 530",
      ["Spinebreaker Mountains"] = ".go -1420.42 2306.1 261.402 530",
      ["Spinebreaker Pass"] = ".go -831.647 1765.21 100.529 530",
      ["Spinebreaker Post"] = ".go -1301.21 2386.12 82.2112 530",
      ["Stonescythe Canyon"] = ".go 474.021 3085.24 24.4566 530",
      ["Supply Caravan"] = ".go 57.5923 2539.6 64.4756 530",
      ["Temple of Telhamat"] = ".go 142.815 4332.57 106.292 530",
      ["The Abyssal Shelf"] = ".go 870.646973 1792.910034 126.774414 530",
      ["The Great Fissure"] = ".go -614.095 3749.35 39.3266 530",
      ["The Legion Front"] = ".go -486.408 1769.5 48.9397 530",
      ["The Overlook"] = ".go -161.759 3487.72 57.7898 530",
      ["The Path of Anguish"] = ".go -502.054 2052.85 81.97 530",
      ["The Stadium"] = ".go -293.132 3703.44 58.4293 530",
      ["The Stair of Destiny"] = ".go -250.245 1046.48 54.3177 530",
      ["The Warp Fields"] = ".go -1403.47 3078.09 23.9806 530",
      ["Thornfang Hill"] = ".go -255.753 5122.85 89.1986 530",
      ["Thrallmar"] = ".go 143.151 2673.19 85.676 530",
      ["Throne of Kil'jaeden"] = ".go 783.361 2294.61 281.369 530",
      ["Valley of Bones"] = ".go -887.171 2322.67 -4.11074 530",
      ["Void Ridge"] = ".go -859.009 1522.18 43.0446 530",
      ["Zeppelin Crash"] = ".go -1072.59 2993.79 7.98099 530",
      ["Zeth'Gor"] = ".go -1034.76 2030.43 66.9408 530",
    },
    ["Nagrand"] = {
      ["Abandoned Armory"] = ".go -2067.7 7463.56 -18.9913 530",
      ["Aeris Landing"] = ".go -2063.72 8574.01 23.2349 530",
      ["Ancestral Grounds"] = ".go -2208.06 8849.93 23.824 530",
      ["Burning Blade Ruins"] = ".go -2518.16 6267.89 27.2888 530",
      ["Clan Watch"] = ".go -2303.18 6835.65 -4.25749 530",
      ["Elemental Plateau"] = ".go -726.09 6639.09 178.318 530",
      ["Forge Camp: Fear"] = ".go -1845.69 9245.25 70.5025 530",
      ["Forge Camp: Hate"] = ".go -1317.73 8929.64 53.6931 530",
      ["Garadar"] = ".go -1319.78 7213.66 33.6459 530",
      ["Halaa"] = ".go -1571.2 7952.93 -22.6595 530",
      ["Halaani Basin"] = ".go -1519.82 7802.22 -99.0745 530",
      ["Kil'sorrow Fortress"] = ".go -2911.18 6363.71 86.4169 530",
      ["Lake Sunspring"] = ".go -1640.69 8219.43 -21.7978 530",
      ["Laughing Skull Courtyard"] = ".go -845.807 7715.86 34.5427 530",
      ["Laughing Skull Ruins"] = ".go -820.565 7785.62 35.3922 530",
      ["Mag'hari Procession"] = ".go -1280.52658 8502.278320 17.635380 530",
      ["Nesingwary Safari"] = ".go -1439.85 6345.17 38.4342 530",
      ["Northwind Cleft"] = ".go -1215.07 8046.9 -85.7564 530",
      ["Oshu'gun"] = ".go -2582.45 8315.35 -51.2936 530",
      ["Skysong Lake"] = ".go -876.407 7304.17 33.2939 530",
      ["Southwind Cleft"] = ".go -2018.94 7585.89 -90.6735 530",
      ["Spirit Fields"] = ".go -2371.53 8099.73 -43.4541 530",
      ["Sunspring Post"] = ".go -1515.82 8517.78 0.880106 530",
      ["Telaar"] = ".go -2623.44 7290.77 20.9015 530",
      ["Telaari Basin"] = ".go -1878.22 7158.61 -85.3587 530",
      ["The Barrier Hills (West)"] = ".go -1711.55 6115.41 235.458 530",
      ["The High Path"] = ".go -1982.059326 5975.375488 156.739456 530",
      ["The Low Path"] = ".go -2739.93 6041 35.8475 530",
      ["The Ring of Blood"] = ".go -724.325 7907.29 51.2203 530",
      ["The Ring of Trials"] = ".go -1980.66 6561.14 11.132 530",
      ["The Twilight Ridge"] = ".go -1464.66 9725.42 200.786 530",
      ["Throne of the Elements"] = ".go -827.015 6969.24 34.4419 530",
      ["Warmaul Hill"] = ".go -765.803 8843.22 183.244 530",
      ["Windyreed Pass"] = ".go -1269.51 6247.06 49.702 530",
      ["Windyreed Village"] = ".go -1895.57 6344.91 47.0875 530",
      ["Zangar Ridge"] = ".go -586.042 8445.2 64.499 530",
    },
    ["Netherstorm"] = {
      ["Access Shaft Zeon"] = ".go 3747.68 2081.86 148.836 530",
      ["Area 52"] = ".go 3049.15 3686.12 142.387 530",
      ["Arklon Ruins"] = ".go 2747.64 3184.87 151.746 530",
      ["Arklonis Ridge"] = ".go 2935.15 3220.2 155.999 530",
      ["Camp of Boom"] = ".go 3220.87 3542.53 123.954 530",
      ["Celestial Ridge"] = ".go 4021.99 1464.19 -120.737 530",
      ["Cosmowrench"] = ".go 2965.75 1788.97 139.122 530",
      ["Eco-Dome Farfield"] = ".go 5017.62 2959.78 104.552 530",
      ["Eco-Dome Midrealm"] = ".go 3543.11 2869.01 148.592 530",
      ["Eco-Dome Skyperch"] = ".go 4050.13 3262.46 145.843 530",
      ["Eco-Dome Sutheron"] = ".go 4450.18 2838.68 140.776 530",
      ["Ethereum Staging Grounds"] = ".go 3950.33 2372.75 112.328 530",
      ["Forge Base: Gehenna"] = ".go 4635.56 3220.84 158.043 530",
      ["Forge Base: Oblivion"] = ".go 4456.36 3414.98 162.638 530",
      ["Gyro-Plank Bridge"] = ".go 3379.03 4293.63 120.417 530",
      ["Invasion Point: Destroyer"] = ".go 3047.31 2708.38 114.323 530",
      ["Invasion Point: Overlord"] = ".go 4744.37 3428.96 102.822 530",
      ["Kirin'Var Village"] = ".go 2297.48 2285.89 96.1685 530",
      ["Manaforge Ara"] = ".go 3948.4 3855.48 181.19 530",
      ["Manaforge B'naar"] = ".go 2970.8 4046.41 151.434 530",
      ["Manaforge Coruu"] = ".go 2428.34 2892.05 131.243 530",
      ["Manaforge Duro"] = ".go 3116.33 2232.21 153.034 530",
      ["Manaforge Ultris"] = ".go 3920.12 1854.29 254.842 530",
      ["Midrealm Post"] = ".go 3370.87 2879.48 143.598 530",
      ["Netherstone"] = ".go 4819.37 2738.71 87.6118 530",
      ["Protectorate Watch Post"] = ".go 4266.11 2185.46 136.77 530",
      ["Ruins of Enkaat"] = ".go 3475.52 3637.31 157.739 530",
      ["Ruins of Farahlon"] = ".go 4694.89 2553.49 230.037 530",
      ["Socrethar's Seat"] = ".go 4844.85 3756.3 216.358 530",
      ["Sunfury Hold"] = ".go 2483.05 2426.97 134.128 530",
      ["Tempest Keep Entrance"] = ".go 3100.08 1531.53 190.3 530",
      ["The Heap"] = ".go 2568.19 3805.79 145.584 530",
      ["The Proving Grounds"] = ".go 3098.48 3392.36 105.081 530",
      ["The Scrap Field"] = ".go 3329.13 2669.15 157.369 530",
      ["The Stormspire"] = ".go 4120.93 2976.24 351.318 530",
      ["The Tempest Rift"] = ".go 3214.44 1695.73 113.926 530",
      ["The Vortex Fields"] = ".go 3131.32 1906 144.265 530",
      ["Trelleum Mine"] = ".go 3801.91 4013.88 121.677 530",
      ["Voidwind Plateau"] = ".go 3973.41 1685.69 149.611 530",
    },
    ["Shadowmoon Valley"] = {
      ["Altar of Sha'tar"] = ".go -3062.3 833.73 -10.235 530",
      ["Ata'mal Terrace"] = ".go -3293.46 339.434 120.505 530",
      ["Coilskar Cistern"] = ".go -2942.27 1320.54 7.71726 530",
      ["Coilskar Point"] = ".go -3005.02 1718.1 73.8551 530",
      ["Dragonmaw Fortress"] = ".go -4183.1 491.2 29.2762 530",
      ["Eclipse Point"] = ".go -4480.32 1671.1 163.446 530",
      ["Illidari Point"] = ".go -3791.75 2558.65 91.5121 530",
      ["Invasion Point: Cataclysm"] = ".go -2741.3 2414.56 93.2346 530",
      ["Legion Hold"] = ".go -3265.96 2869.74 121.091 530",
      ["Netherwing Fields"] = ".go -4063.69 830.97 3.62364 530",
      ["Netherwing Ledge"] = ".go -5076.26 325.088 169.758 530",
      ["Ruins of Baa'ri"] = ".go -3334.4 1021.28 52.8839 530",
      ["Ruins of Karabor"] = ".go -3835.97 342.959 120.621 530",
      ["Sanctum of the Stars"] = ".go -4084.38 1107.48 41.012 530",
      ["Shadowmoon Village"] = ".go -3061.65 2541.14 62.325 530",
      ["Shattered Plains"] = ".go -2495.02 1052.73 51.1218 530",
      ["Sketh'lon Wreckage"] = ".go -3057.82 2158.12 76.811 530",
      ["Slag Watch"] = ".go -3345.54 2113.45 102.377 530",
      ["The Altar of Damnation"] = ".go -3601.85 1910.88 47.3681 530",
      ["The Black Temple Entrance"] = ".go -3568.9 -114.119 299.77 530",
      ["The Deathforge"] = ".go -3341.68 2010.15 32.3508 530",
      ["The Fel Pits"] = ".go -3818.74 1520.83 44.1776 530",
      ["The Fetid Pool"] = ".go -3426.68 2800.7 124.373 530",
      ["The Hand of Gul'dan"] = ".go -3572.58 1391.82 418.579 530",
      ["The Path of Conquest"] = ".go -4383.71 1317.36 84.786 530",
      ["Warden's Cage"] = ".go -3782.55 1076.13 70.6543 530",
      ["Wildhammer Stronghold"] = ".go -3959.63 2187.07 101.764 530",
    },
    ["Shattrath City"] = {
      ["Aldor Rise Inn"] = ".go -1897.82 5768.27 131.414 530",
      ["Aldor Rise"] = ".go -1795.21 5635.89 130.676 530",
      ["Bank"] = ".go -2011.76 5356.12 -9.35028 530",
      ["Lower City"] = ".go -1679.5 5223.07 -48.852 530",
      ["Scryer's Tier Inn"] = ".go -2181.39 5403.09 51.8837 530",
      ["Scryer's Tier"] = ".go -2064.58 5497.26 54.3005 530",
      ["Shrine of Unending Light"] = ".go -1735.84 5813.33 148.658 530",
      ["Terrace of Light"] = ".go -1849.42 5401.46 -12.4279 530",
      ["The Seer's Library"] = ".go -2265.29 5564.47 67.0103 530",
      ["World's End Tavern"] = ".go -1755.85 5153.99 -37.2047 530",
    },
    ["Terokkar Forest"] = {
      ["Allerian Post"] = ".go -2580.94 3331.18 -0.314187 530",
      ["Allerian Stronghold"] = ".go -2943.1 3972.2 -0.572005 530",
      ["Blackwind Lake"] = ".go -3899.45 3625.72 273.339 530",
      ["Blackwind Valley"] = ".go -3578.28 3525.53 276.438 530",
      ["Bleeding Hollow Ruins"] = ".go -3273.07 5979.14 -3.80411 530",
      ["Bonechewer Ruins"] = ".go -2960.66 3543.82 -9.50304 530",
      ["Carrion Hill"] = ".go -2821.48 4737.51 -6.40475 530",
      ["Cenarion Thicket"] = ".go -1846.57 4691.23 8.62077 530",
      ["Firewing Point"] = ".go -2346.83 3277.95 -0.996195 530",
      ["Grangol'var Village"] = ".go -2459 5005.4 28.3576 530",
      ["Lake Ere'Noru"] = ".go -3203.56 3915.38 59.6416 530",
      ["Lake Jorune"] = ".go -2441.26 4638.13 158.083 530",
      ["Netherweb Ridge"] = ".go -3943.36 4182.61 1.92239 530",
      ["Raastok Glade"] = ".go -2521.73 3878.92 10.2101 530",
      ["Razorthorn Shelf"] = ".go -1720.78 4078.5 63.6511 530",
      ["Refugee Caravan"] = ".go -2828.712891 5097.352539 -15.616056 530",
      ["Ring of Observance"] = ".go -3327.000244 4928.075195 -100.723274 530",
      ["Shadow Tomb"] = ".go -2895.93 5391.01 -9.06354 530",
      ["Shattrath City Entrance"] = ".go -1539.62 5225.71 28.4726 530",
      ["Silmyr Lake"] = ".go -1379.79 4836.43 -6.38123 530",
      ["Blackwind Landing"] = ".go -3353.29 3648.75 284.845184 530",
      ["Skettis"] = ".go -4084.68 3234.97 304.998 530",
      ["Derelict Caravan"] = ".go -3692.34 4766.32 -21.2209 530",
      ["Stonebreaker Camp"] = ".go -2531.38 3675.46 1.49751 530",
      ["Stonebreaker Hold"] = ".go -2620.85 4392.7 34.3789 530",
      ["The Barrier Hills (East)"] = ".go -1404.78 5882.58 185.805 530",
      ["The Bone Wastes"] = ".go -2856.94 4900.05 -5.73148 530",
      ["Tomb of Lights"] = ".go -2998.21 4544.82 -21.8332 530",
      ["Tuurem"] = ".go -2149.82 4196.83 7.54166 530",
      ["Veil Lithic"] = ".go -3599.66 5796.43 -5.38142 530",
      ["Veil Reskk"] = ".go -1558.15 4405.5 38.1586 530",
      ["Veil Rhaze"] = ".go -3098.46 5634.93 -5.15098 530",
      ["Veil Shalas"] = ".go -3420.87 4022.06 66.8922 530",
      ["Veil Shienor"] = ".go -1903.59 3905.13 -2.53555 530",
      ["Veil Skith"] = ".go -2548.53 5411.64 0.064068 530",
      ["Wayne's Refuge"] = ".go -2390.73 2902.69 -55.4983 530",
      ["Writhing Mound"] = ".go -3432.42 4411.98 -14.2245 530",
    },
    ["Zangarmarsh"] = {
      ["Ango'rosh Grounds"] = ".go 1145.41 8529.24 22.3858 530",
      ["Ango'rosh Stronghold"] = ".go 1628.33 8540.92 6.14228 530",
      ["Bloodscale Enclave"] = ".go 505.486 8132.6 19.6888 530",
      ["Bloodscale Grounds"] = ".go 600.804 6321.17 23.6119 530",
      ["Boha'mu Ruins"] = ".go -345.449 7257.28 46.3662 530",
      ["Cenarion Refuge"] = ".go -212.626 5490.12 21.7828 530",
      ["Cenarion Watchpost"] = ".go -272.983 8315.52 21.0438 530",
      ["Coilfang Reservoir Entrance"] = ".go 733.647 6866.08 -69.7854 530",
      ["Daggerfen Village"] = ".go 1147.78 8269.75 19.9422 530",
      ["Darkcrest Enclave"] = ".go -370.855 6290.88 19.0443 530",
      ["Darkcrest Shore"] = ".go -900.916 5814.41 23.7239 530",
      ["Feralfen Village"] = ".go -71.195 7162.71 18.7955 530",
      ["Funggor Cavern"] = ".go -1122.96 5710.54 58.5347 530",
      ["Hewn Bog"] = ".go 879.804 7740.66 23.3612 530",
      ["Marshlight Lake"] = ".go 542.911 8406.15 21.4549 530",
      ["Orebor Harborage"] = ".go 923.286 7383.09 20.0104 530",
      ["Portal Clearing"] = ".go 571.396 8659.65 19.9545 530",
      ["Quagg Ridge"] = ".go -171.239 7991.97 41.5366 530",
      ["Serpent Lake"] = ".go 408.988 7118.52 23.4518 530",
      ["Sporeggar"] = ".go 235.37 8511 23.1364 530",
      ["Sporewind Lake"] = ".go 209.715 8774.04 23.093 530",
      ["Swamprat Post"] = ".go 100.846 5209.63 21.6868 530",
      ["Telredor"] = ".go 280.384 6041.81 130.286 530",
      ["The Dead Mire"] = ".go 423.378 5376.2 19.8496 530",
      ["The Lagoon"] = ".go -116.222 6490.34 20.1127 530",
      ["The Spawning Glen"] = ".go -98.3028 8726.11 20.708 530",
      ["Twin Spire Ruins"] = ".go 224.994 6953.51 23.4443 530",
      ["Umbrafen Lake"] = ".go -220.87 5791.59 23.1452 530",
      ["Umbrafen Village"] = ".go -855.415 5222.56 18.4855 530",
      ["Zabra'jin"] = ".go 261.398 7859.78 23.3885 530",
    },

  }
elseif cont == "BG" then
  return {
    ["Alterac Valley - BG"] = {
      ["Dun Baldar"] = ".go 617.276672 -42.834068 42.289104 30",
      ["Dun Baldar Pass"] = ".go 757.831421 -489.321869 95.844093 30",
      ["Field of Strife"] = ".go -187.385788 -293.948486 6.667531 30",
      ["Frostwolf Keep"] = ".go -1326.625000 -297.883942 90.536034 30",
      ["Frostwolf Village"] = ".go -1201.051392 -366.443909 54.097630 30",
      ["Iceblood Garrison"] = ".go -476.417297 -196.085754 54.793446 30",
      ["Icewing Bunker"] = ".go 234.481064 -395.527832 43.235931 30",
      ["Icewing Pass"] = ".go 281.567810 46.170521 19.191322 30",
      ["Rock of Durotan"] = ".go -896.410400 -525.779968 54.231255 30",
      ["Stonehearth Outpost"] = ".go 23.982540 -298.187042 14.389221 30",
      ["Tower Point"] = ".go -695.935974 -427.200562 87.997581 30",
      ["Wildpaw Ridge"] = ".go -419.024719 -532.699402 84.013458 30",
      ["Winterax Hold"] = ".go -149.652313 26.635336 77.206711 30",
    },
    ["Arena/Battlegrounds"] = {
      ["Arena - Nagrand - BC"] = ".go 4071.92 2926.85 12.856189 559",
      ["Arena - Blade's Edge - BC"] = ".go 6237.64 260.659 11.0744 562",
      ["Arena - Ruins Of Lordaeron - BC"] = ".go 1285.810547 1667.896851 39.464172 572",
      ["Battle - Eye of the Storm - BC"] = ".go 2174.23 1569.57 1159.959595 566",
      ["Battle - Arathi Basin - Alliance"] = ".go 1292.41 1288.80 -13.64 529",
      ["Battle - Arathi Basin - Horde"] = ".go 699.03 700.18 -15.16 529",
      ["Battle - Warsong - Alliance"] = ".go 1458.6 1545.07 343.04 489",
      ["Battle - Warsong - Horde"] = ".go 992.81 1424.03 345.22 489",
    },
  }
elseif cont == "I_EK" then
  return {
    ["Blackrock Depths"] = {
      ["Detention Block"] = ".go 459.455994 27.085884 -70.655228 230",
	},
	["Blackrock Spire - Upper"] = {
	  ["Hall of Blackhand"] = ".go 79.99 -233.34 52.02 229",
	},
	["Blackwing Lair"] = {
      ["Blackwing Lair"] = ".go -7653.554688 -1093.969116 404.183105 469",
	 },
	["The Deadmines"] = {
      ["The Deadmines"] = ".go -16.40 -383.07 61.78 36",
	},
	  ["Gnomeregan"] = {
	  ["The Clockwerk Run"] = ".go -337.437408 -0.258742 -152.845917 90",
      ["Gnomeregan Train Depot"] = ".go -4858.270020 756.434875 244.922714 0",
	},
	["Karazhan"] = {
	  ["The Gatehouse"] = ".go -11109.36 -2002.97 49.9 532",
	  ["Karazhan Netherspace Tower"] = ".go -10844.8 -2271.81 424.578 532",
    },
	["Magisters' Terrace"] = {
	  ["Magisters' Terrace - Inside"] = ".go 7.090000 -0.450000 -2.800000 585",
    },
	["Molten Core"] = {
      ["The Molten Core"] = ".go 1071.902954 -488.489014 -108.219124 409",
	},
  	["Naxxramas"] = {
	  ["Naxxramas"] = ".go 3005.870 -3435.010 293.882 533",
      ["Naxxramas - Sapphiron's Lair"] = ".go 3498.270 -5349.450 144.968 533",
	},
	["Scholomance"] = {
	  ["Scholomance"] = ".go 199.427017 126.463890 134.911682 289",
	},
	["Shadowfang Keep"] = {
	  ["Shadowfang Keep"] = ".go -228.19 2110.56 76.89 33",
	},
	["Scarlet Monastery Armory"] = {
	  ["Scarlet Monastery Armory"] = ".go 1608.380005 -320.500000 18.670000 189",
	},
	["Scarlet Monastery Cathedral"] = {
      ["Scarlet Monastery Cathedral"] = ".go 855.109985 1320.760010 18.670000 189",
	},
	["Scarlet Monastery Graveyard"] = {
      ["Scarlet Monastery Graveyard"] = ".go 1688.57 1052.42 18.68 189",
	},
	["Scarlet Monastery Library"] = {
      ["Scarlet Monastery Library"] = ".go 254.989990 -206.820007 18.677361 189",
	},
	["The Stockade"] = {
	  ["Stormwind Stockade"] = ".go 49.821239 0.870144 -16.713627 34",
	},
	["Stratholme"] = {
	  ["Stratholme"] = ".go 3593.15 -3646.56 138.50 329",
    },
	["Temple of Atal'Hakkar"] = {
	  ["Temple of Atal'Hakkar"] = ".go -314.229004 99.879997 -131.848694 109",
	},
	["Sunwell Plateau"] = {
	  ["Parhelion Plaza"] = ".go 1788.095459 924.653748 15.271888 580",
	},
	["Uldaman"] = {
	  ["Hall of the Keepers"] = ".go -228.192993 46.160198 -46.018631 70",
	},
	["Zul'Aman"] = {
	  ["Zul'Aman"] = ".go 120 1772 43.441681 568",
	},
	["Zul'Gurub"] = {
	  ["Zul'Gurub"] = ".go -11916.095703 -1239.402832 92.287262 309",
	},
  }
elseif cont == "I_K" then
  return {
    ["Caverns of Time"] = {
	  ["Caverns of Time"] = ".go -8195.938477 -4500.128418 8.608192 1",
      ["Caverns of Time End"] = ".go -8481.9 -4312.3 -208.442 1",
      ["Hyjal Summit - Entrance"] = ".go -8186.544922 -4211.952148 -174.163620 1",
      ["Hyjal Summit - Alliance Base"] = ".go 5033.57 -1780.95 1321.83 534",
      ["Hyjal Summit - Horde Encampment"] = ".go 5413.55 -2852.26 1512.13 534",
      ["Hyjal Summit - Night Elf Village"] = ".go 5186.87 -3389.84 1636.79 534",
      ["Hyjal Summit - Nordrassil"] = ".go 5441.94 -3598.37 1561.63 534",
      ["Hyjal Summit - Undead Base"] = ".go 5134 -1430.04 1348.98 534",
      ["Old Hillsbrad Foothills - Durnholde Keep"] = ".go 2179.86 145.185 88.2163 560",
      ["Old Hillsbrad Foothills - Entrance"] = ".go -8389.935547 -4056.831543 -208.585831 1",
      ["Old Hillsbrad Foothills - Strahnbrad"] = ".go 3353 641 164 560",
      ["Old Hillsbrad Foothills - Tarren Mill"] = ".go 2637.37 681.769 54.7522 560",
      ["Old Hillsbrad Foothills - Southshore"] = ".go 1810.65 1067.53 9.71897 560",
      ["The Black Morass - Dark Portal"] = ".go -2033.498413 7120.973633 22.664389 269",
      ["The Black Morass - Entrance"] = ".go -8732.529297 -4220.262695 -209.499771 1",
    },
    ["Blackfathom Deeps"] = {
	  ["Blackfathom Deeps"] = ".go -152.983551 106.329994 -40.095310 48",
	  },
    ["Dire Maul East"] = {
	  ["Warpwood Quarter"] = ".go 47.629997 -155.270004 -2.714379 429",
	  },
    ["Dire Maul North"] = {
      ["Dire Maul North"] = ".go 254.588248 -24.739523 -2.560616 429",
	  },
    ["Dire Maul West"] = {
      ["Capital Gardens"] = ".go 34.35 160.70 -3.47 429",
	  },
	["Maraudon"] = {
	  ["Foulspore Cavern"] = ".go 1019.69 -458.31 -43.43 349",
	  },
    ["Onyxia's Lair"] = {
	  ["Onyxia's Lair"] = ".go 29.454847 -68.960884 -6.984023 249",
	  },
    ["Ragefire Chasm"] = {
      ["Ragefire Chasm"] = ".go 1.784903 -14.368461 -17.553291 389",
	},
    ["Razorfen Downs "] = {
	  ["Razorfen Downs "] = ".go 2591.989502 1101.246460 51.859333 129",
	  },
	["Razorfen Kraul"] = {
	  ["Razorfen Kraul"] = ".go 1941.789551 1543.693604 81.661453 47",
	  },
	["Ahn'Qiraj"] = {
	  ["Ahn'Qiraj"] = ".go -8231.330078 2010.599976 129.330505 531",
	  ["Ruins of Ahn'Qiraj"] = ".go -8429.743164 1512.136475 31.907234 509",
	  },
	["The Wailing Caverns"] = {
	  ["The Wailing Caverns"] = ".go -160.004120 131.63653 -74.079254 43",
	  },
	  ["Zul'Farrak"] = {
	  ["Zul'Farrak"] = ".go 1221.820557 840.745728 8.976474 209",
	  },
	  }
elseif cont == "I_O" then
  return {
	["Auchindoun"] = {
      ["Auchenai Crypts"] = ".go 0 0 0 558",
      ["Mana-Tombs"] = ".go 0.013477 0.930826 -0.954333 557",
      ["Sethekk Halls"] = ".go 0 0 0.006213 556",
      ["Shadow Labyrinth"] = ".go 0 0 -1.12795 555",
	  },
	["Azshara"] = {
      ["Alliance Entrance"] = ".go 1064.89 -16.6092 317.148 37",
      ["Horde Entrance"] = ".go -124.097 856.033 298.296 37",
	  },
	["The Black Temple"] = {
      ["Karabor Sewers"] = ".go 97.688789 1002.600830 -86.826843 564",
      ["Chamber of Command"] = ".go 647.760559 314.342865 271.678192 564",
	  },
	["Coilfang Reservoir"] = {
      ["Serpentshrine Cavern"] = ".go 42.980713 -27.924601 -70.534996 548",
      ["The Slave Pens"] = ".go 0 0 -1.09796 547",
      ["The Steamvault"] = ".go 0 0 -4.19087 545",
      ["The Underbog"] = ".go 0 0 -2.75242 546",
	  },
	["Gruul's Lair"] = {
      ["Gruul's Lair"] = ".go 65.5905 41.0931 -4.77545 565",
	  },
	["Hellfire Citadel"] = {
      ["Hellfire Ramparts"] = ".go -1348.61 1651.06 68.8195 543",
      ["Magtheridon's Lair"] = ".go 188.158 25.3929 67.933 544",
      ["The Blood Furnace"] = ".go -3.41257 2.00423 -44.2242 542",
      ["The Shattered Halls"] = ".go -0.509273 3.83735 -13.1962 540",
	  },
	["Tempest Keep"] = {
      ["The Arcatraz"] = ".go 12.879066 0.525871 -0.205504 552",
      ["The Botanica"] = ".go 0 0 -1.59128 553",
      ["The Phoenix Hall"] = ".go 0 0 -2.42833 550",
      ["The Mechanaar"] = ".go 0 0 -1.81282 554",
  },
  }
elseif cont == "J" then
  return {
    ["Jails"] = {
      ["Alliance"] = ".go -98.0155 149.8360 -40.3827 35",
      ["Horde"] = ".go -11139.1845 -1742.4421 -29.7365 0",
      ["Official"] = ".go 16228.170898 16403.404297 -63.895161 1",
    },

  }
elseif cont == "Ot" then
  return {
  		-- ["[City]"] 
  		-- ["[Eastern Kingdom]"]
  		-- ["[Kalimdor]"]
  		-- ["[OutLand]"]
      ["그리폰마스터"] = {                                                                           		-- ["0-Gryphon Master"]
      ["[대도시]스톰윈드"] = ".go -8835.76 490.084 109.799 0",                                           	-- ["[CT]StormWind"]
      ["[대도시]아이언포지"] = ".go -4821.13 -1152.4 502.295 0",                                           	-- ["[CT]Ironforge"]
      ["[동부왕국]서부몰락지대/감시의 언덕"] = ".go -10628.3 1037.27 34.1915 0",                   			-- ["[EK]Westfall/Sentinel Hill"]
      ["[동부왕국]붉은마루 산맥"] = ".go -9435.21 -2234.88 69.1882 0",                    					-- ["[EK]Redridge Mountains"]
      ["[동부왕국]저습지/메네실 항구"] = ".go -3793.2 -782.052 9.19773 0",                 					-- ["[EK]Wetlands/Menethil Harbor"]
      ["[동부왕국]모단호수/텔사마"] = ".go -5424.85 -2929.87 347.645 0",                    				-- ["[EK]Loch Modan/Thelsamar"]
      ["[동부왕국]불타는 평원/모건의 망루"] = ".go -8365.08 -2736.93 185.691 0",          					-- ["[EK]Burning Steppes/Morgan's Vigil"]
      ["[동부왕국]그늘숲/다크샤이어"] = ".go -10513.8 -1258.79 41.5138 0",                      			-- ["[EK]Duskwood/Darkshire"]
      ["[동부왕국]힐스브래드 구릉지/사우스쇼어"] = ".go -715.146 -512.134 26.6278 0",          				-- ["[EK]Hillsbrad Foothills/Southshore"]
      ["[동부왕국]아라시 고원/임시 주둔지"] = ".go -1240.76 -2514.04 21.8581 0",           					-- ["[EK]Arathi Highlands/Refuge Point"]
      ["[동부왕국]가시덤블 골짜기/무법항"] = ".go -14477.9 464.101 36.4656 0",             					-- ["[EK]Stranglethorn Vale/Booty Bay"]
      ["[동부왕국]이글거리는 협곡/토륨 조합 거점"] = ".go -6559.06 -1169.38 309.861 0",             		-- ["[EK]Searing Gorge/Thorium Point"]
      ["[동부왕국]동부 내륙지/맹금의 봉우리"] = ".go 282.096 -2001.28 194.823 0",                   		-- ["[EK]Hinterlands/Aerie Peak"]
      ["[동부왕국]저주받은 땅/네더가드 요새"] = ".go -11110.2 -3437.1 79.282 0",            				-- ["[EK]Blasted Lands/Nethergarde Keep"]
      ["[동부왕국]서부 역병지대/서리바람 야영지"] = ".go 928.273 -1429.08 64.8343 0",       				-- ["[EK]Western Plaguelands/Chillwind Camp"]
      ["[동부왕국]동부 역병지대/희망의 빛 예배당"] = ".go 2269.85 -5345.39 87.1242 0", 						-- ["[EK]Eastern Plaguelands/Light's Hope Chapel"]
      ["[동부왕국]가시덤블 골짜기/반란군 야영지"] = ".go -11340.5 -218.939 75.2148 0",         				-- ["[EK]Stranglethorn Vale/Rebel Camp"]
      ["[칼림도어]먼지진흙 습지대/테라모어 섬"] = ".go -3828.88 -4517.51 10.7437 1",                		-- ["[KL]Dustwallow Marsh/Theramore Isle"]
      ["[칼림도어]타나리스/가젯잔"] = ".go -7224.87 -3738.27 8.6198 1",                               		-- ["[KL]Tanaris/Gadgetzan"]
      ["[아웃랜드]지옥불 반도/명예의 요새"] = ".go -665.804 2715.48 94.2981 530",                  			-- ["[OT]Hellfire Peninsula/Honor Hold"]
      ["[아웃랜드]테로카르 숲/알레리아 성채"] = ".go -2995.4 3873.27 9.72478 530",             				-- ["[OT]Terokkar Forest/Allerian Stronghold"]
      ["[아웃랜드]지옥불 반도/운명의 계단"] = ".go -323.81 1027.61 54.2399 530",         					-- ["[OT]Hellfire Peninsula/The Stair of Destiny"]
      ["[아웃랜드]어둠달 골짜기/와이들해머 성채"] = ".go -3980.97 2156.29 105.333 530",        				-- ["[OT]Shadowmoon Valley/Wildhammer Stronghold"]
      ["[아웃랜드]칼날 산맥/토쉴리의 연구기지"] = ".go 1860.73 5528.27 276.838 530",        				-- ["[OT]Blade's Edge Mountains/Toshley's Station"]
    },
     ["히포그리프마스터"] = {                                                                    			-- ["0-Hippogryph Master"]
      ["[대도시]루테란 마을"] = ".go 8640.58 841.118 23.3464 1",                                   			-- ["[CT]Rut'theran Village"]
      ["[대도시]엑소다르"] = ".go -4058.45 -11789.7 9.23392 530",                                       	-- ["[CT]The Exodar"]
      ["[칼림도어]어둠의 해안/아우버다인"] = ".go 6343.2 561.651 16.1047 1",                               	-- ["[KL]Darkshore/Auberdine"]
      ["[칼림도어]잿빛 골짜기/아스트라나르"] = ".go 2828.38 -284.25 106.76 1",                              -- ["[KL]Ashenvale/Astranaar"]
      ["[칼림도어]페랄라스/탈라나르"] = ".go -4491.12 -778.347 -40.1193 1",                             	-- ["[KL]Feralas/Thalanaar"]
      ["[칼림도어]돌발톱 산맥/돌발톱 봉우리"] = ".go 2682.83 1466.45 233.792 1",             				-- ["[KL]Stonetalon Mountains/Stonetalon Peak"]
      ["[칼림도어]잊혀진 땅/나이젤의 야영지"] = ".go 136.218 1326.33 193.582 1",                           	-- ["[KL]Desolace/Nijel's Point"]
      ["[칼림도어]페랄라스/페더문 요새"] = ".go -4370.54 3340.11 12.4993 1",                  				-- ["[KL]Feralas/Feathermoon Stronghold"]
      ["[칼림도어]달의 숲"] = ".go 7454.85 -2491.61 462.699 1",                                       		-- ["[KL]Moonglade"]
      ["[칼림도어]여명의 설원/눈망루 마을"] = ".go 6800.54 -4742.35 701.581 1",                 			-- ["[KL]Winterspring/Winterfall Village"]
      ["[칼림도어]아즈샤라/탈렌드리스 초소]"] = ".go 2718.18 -3880.75 101.641 1",                        	-- ["[KL]Azshara/Talrendis Point]"]
      ["[칼림도어]악령의 숲/갈퀴가지 숲"] = ".go 6203.9 -1951.78 571.316 1",                           		-- ["[KL]Felwood/Irontree Woods"]
      ["[칼림도어]실리더스/세나리온 요새"] = ".go -6758.55 775.594 89.2046 1",                          	-- ["[KL]Silithus/Cenarion Hold"]
      ["[칼림도어]잿빛 골짜기/숲의 노래"] = ".go 3002.62 -3207.08 190.053 1",                         		-- ["[KL]Ashenvale/Forest Song"]
      ["[칼림도어]핏빛안개 섬/핏빛 감시초소"] = ".go -1930.02 -11956.8 57.4743 530",                 		-- ["[KL]Bloodmyst Isle/Blood Watch"]
      ["[아웃랜드]지옥불 반도/텔하마트 사원"] = ".go 199.061 4238.42 121.91 530",          					-- ["[OT]Hellfire Peninsula/Temple of Telhamat"]
      ["[아웃랜드]장가르 습지대/텔레도르"] = ".go 210.492 6065.09 148.496 530",                            	-- ["[OT]Zangarmarsh/Telredor"]
      ["[아웃랜드]나그란드/텔라아르"] = ".go -2723.1 7302.84 88.8157 530",                                  -- ["[OT]Nagrand/Telaar"]
      ["[아웃랜드]칼날산맥/실바나르"] = ".go 2187.88 6794 183.513 530",                   					-- ["[OT]Blade's Edge Mountains/Sylvanaar"]
      ["[아웃랜드]장가르 습지대/오레보르 피난처"] = ".go 963.428 7399.58 29.4317 530",                    	-- ["[OT]Zangarmarsh/Orebor Harborage"]
    },
    ["윈드라이더마스터"] = {                                                                         		-- ["0-Wind Rider Master"]
      ["[대도시]썬더 블로프"] = ".go -1196.75 26.0777 177.033 1",                                       	-- ["[CT]Thunder Bluff"]
      ["[대도시]오그리마"] = ".go 1676.25 -4313.45 61.7176 1",                                           	-- ["[CT]Orgrimmar"]
      ["[동부왕국]가시덤블 골짜기/그롬골 주둔지"] = ".go -12417.5 144.474 3.36881 0",    					-- ["[EK]Stranglethorn Vale/Grom'gol Base Camp"]
      ["[동부왕국]아라시 고원/해머폴"] = ".go -916.868 -3495.36 70.4501 0",             					-- ["[EK]Arathi Highlands/Hammerfall"]
      ["[동부왕국]가시덤블 골짜기/무법항"] = ".go -14443.4 502.872 27.9469 0",             					-- ["[EK]Stranglethorn Vale/Booty Bay"]
      ["[동부왕국]황야의 땅/카르가스"] = ".go -6632.22 -2178.42 244.227 0",                        			-- ["[EK]Badlands/Kargath"]
      ["[동부왕국]이글거리는 협곡/토륨 조합 거점"] = ".go -6559.31 -1100.25 310.372 0",             		-- ["[EK]Searing Gorge/Thorium Point"]
      ["[동부왕국]동부 내륙지/레반터스크 마을"] = ".go -631.736 -4720.6 5.48226 0",            				-- ["[EK]Hinterlands/Revantusk Village"]
      ["[동부왕국]슬픔의 늪/스토나드"] = ".go -10459.2 -3279.76 21.5445 0",                					-- ["[EK]Swamp of Sorrows/Stonard"]
      ["[동부왕국]불타는 평원/화염 마루"] = ".go -7504.06 -2190.77 165.302 0",             					-- ["[EK]Burning Steppes/Flame Crest"]
      ["[칼림도어]불모의 땅/크로스로드"] = ".go -437.137 -2596 95.8708 1",                            		-- ["[KL]Barrens/The Crossroads"]
      ["[칼림도어]돌발톱 산맥/해바위 야영지"] = ".go 968.077 1042.29 104.563 1",            				-- ["[KL]Stonetalon Mountains/Sun Rock Retreat"]
      ["[칼림도어]버섯구름 봉우리/높새바람 봉우리"] = ".go -5407.12 -2419.61 89.7094 1",              		-- ["[KL]Thousand Needles/Windbreak Canyon"]
      ["[칼림도어]잊혀진 땅/그늘수렵 마을"] = ".go -1770.37 3262.19 5.10852 1",                     		-- ["[KL]Desolace/Shadowprey Village"]
      ["[칼림도어]타나리스/가젯잔"] = ".go -7045.24 -3779.4 10.3158 1",                               		-- ["[KL]Tanaris/Gadgetzan"]
      ["[칼림도어]페랄라스/모자케 야영지"] = ".go -4421.94 198.146 25.1863 1",                            	-- ["[KL]Feralas/Camp Mojache"]
      ["[칼림도어]아즈사라/발로르모크"] = ".go 3664.02 -4390.45 113.169 1",                                	-- ["[KL]Azshara/Valormok"]
      ["[칼림도어]불모의 땅/타우라조 야영지"] = ".go -2384.08 -1880.94 95.9336 1",                          -- ["[KL]Barrens/Camp Taurajo"]
      ["[칼림도어]여명의 설원/눈망루 마을"] = ".go 6815.12 -4610.12 710.759 1",                 			-- ["[KL]Winterspring/Winterfall Village"]
      ["[칼림도어]먼지진흙 습지대/담쟁이 마을"] = ".go -3149.14 -2842.13 34.6649 1",                     	-- ["[KL]Ashenvale/Greenpaw Village"]
      ["[칼림도어]악령의 숲/피멍울 초소"] = ".go 5064.72 -338.845 367.463 1",                         		-- ["[KL]Felwood/Bloodvenom Post"]
      ["[칼림도어]잿빛 골짜기/조람가르 전초기지"] = ".go 3373.69 994.351 5.47043 1",                      	-- ["[KL]Ashenvale/Zoram'gar Outpost"]
      ["[칼림도어]잿빛 골짜기/토막나무 주둔지"] = ".go 2305.64 -2520.15 103.893 1",                   		-- ["[KL]Ashenvale/Warsong Lumber Camp"]
      ["[칼림도어]달의 숲"] = ".go 7466.15 -2122.08 492.427 1",                                       		-- ["[KL]Moonglade"]
      ["[칼림도어]실리더스/세나리온 요새"] = ".go -6810.2 841.704 49.8481 1",                           	-- ["[KL]Silithus/Cenarion Hold"]
      ["[아웃랜드]지옥불 반도/스랄마"] = ".go 233.137 2632.3 88.3007 530",                     				-- ["[OT]Hellfire Peninsula/Thrallmar"]
      ["[아웃랜드]장가르 습지대/자브라진"] = ".go 223.468 7812.55 22.6859 530",                           	-- ["[OT]Zangarmarsh/Zabra'jin"]
      ["[아웃랜드]테로카르 숲/돌망치 요새"] = ".go -2563.19 4426.77 39.4383 530",              				-- ["[OT]Terokkar Forest/Stonebreaker Hold"]
      ["[아웃랜드]나그란드/가라다르"] = ".go -1256.63 7136.17 57.3484 530",                                	-- ["[OT]Nagrand/Garadar"]
      ["[아웃랜드]지옥불 반도/운명의 계단"] = ".go -176.42 1028.53 54.2562 530",         					-- ["[OT]Hellfire Peninsula/The Stair of Destiny"]
      ["[아웃랜드]지옥불 반도/매의 감시탑"] = ".go -584.367 4104.07 91.5878 530",                			-- ["[OT]Hellfire Peninsula/Falcon Watch"]
      ["[아웃랜드]칼날 산맥/천둥군주 요새"] = ".go 2451.06 6022.06 154.839 530",   							-- ["[OT]Blade's Edge Mountains/Thunderlord Stronghold"]
      ["[아웃랜드]어둠달 골짜기/어둠달 마을"] = ".go -3018.25 2556.32 79.1621 530",           				-- ["[OT]Shadowmoon Valley/Shadowmoon Village"]
      ["[아웃랜드]지옥불 반도/해골망치 초소"] = ".go -1314.93 2355.39 89.0385 530",           				-- ["[OT]Hellfire Peninsula/Spinebreaker Post"]
      ["[아웃랜드]장가르 습지대/늪쥐 감시초소"] = ".go 87.9806 5213.79 23.3282 530",                   		-- ["[OT]Zangarmarsh/Cenarion Watchpos"]
    },
    ["뱃마스터"] = {                                                                                		-- ["0-Bat Handler"]
      ["[대도시]언더씨티"] = ".go 1567.12 266.345 -43.0194 0",                                           	-- ["[CT]Undercity"]
      ["[대도시]영원노래 숲/실버문"] = ".go 9376.4 -7164.92 9.01938 530",                          			-- ["[CT]Eversong Woods/Silvermoon"]
      ["[동부왕국]은빛소나무 숲/공동묘지"] = ".go 473.939 1533.95 131.96 0",            					-- ["[EK]Silverpine Forest/The Sepulcher"]
      ["[동부왕국]힐스브래드 구릉지/타렌 밀농장"] = ".go 2.67556 -857.919 58.8572 0",          				-- ["[EK]Hillsbrad Foothills/Tarren Mill"]
      ["[동부왕국]동부 역병지대/희망의 빛 예배당"] = ".go 2328.48 -5290.72 81.9957 0",  					-- ["[EK]Eastern Plaguelands/Light's Hope Chapel"]
      ["[동부왕국]유령의 땅/트랜퀄리엔"] = ".go 7595.16 -6782.24 86.878 530",                 				-- ["[EK]Ghostlands/Tranquillien"]
    },                                                                                                                                            
    ["제플린마스터"] = {                                                                					-- ["0-Zeppelin Master"]
      ["[동부왕국]티리스팔 숲"] = ".go 2054.57 241.679 99.8521 0",                           				-- ["[EK]Tirisfal Glades"]
      ["[칼림도어]듀로타"] = ".go 1331.11 -4649.45 53.6269 1",                                         		-- ["[KL]Durotar"]
    },
    ["노스랜드얼라"] = {                                                                    		-- ["0-NorthLand Alla"]
    ["스톰윈드/항구"] = ".go -8338.3603 1107.0100 57.2599 0",                                       -- ["스톰윈드/항구"] = "          
    ["아케루스/칠흙의요새"] = ".go 2352.3701 -5666.9101 382.2399 0",                                -- ["아케루스/칠흙의요새"] = "          
    ["아케루스/칠흙의요새_끝"] = ".go 2356.5100 -5664.1801 382.25 609",                             -- ["아케루스/칠흙의요새_끝"] = "          
    ["아케루스/죽음의틈_끝"] = ".go 2431 -5730.2099 157.9400 609",                                  -- ["아케루스/죽음의틈_끝"] = "          
    ["겨울손아귀/용맹의주둔지"] = ".go 5100.8100 2185.6499 365.6199 571",                           -- ["겨울손아귀/용맹의주둔지"] = "          
    ["울부짖는협만/카마구아"] = ".go 787.755 -2889.060 6.5919 571",                            		-- ["울부짖는협만/카마구아"] = "          
    ["울부짖는협만/발가드"] = ".go 567.4149 -5012.5800 11.6673 571",                          		-- ["울부짖는협만/발가드"] = ".          
    ["울부짖는협만/서부경비대성채"] = ".go 1343.0976 -3288.1374 174.4545 571",                   	-- ["울부짖는협만/서부경비대성채"]           
    ["울부짖는협만/빌더바르요새"] = ".go 2467.521 -5028.960 283.6737 571",                       	-- ["울부짖는협만/빌더바르요새"] =          
    ["북풍의땅/변위의보호막"] = ".go 3573.8999 6661.0698 195.3630 571",                        		-- ["북풍의땅/변위의보호막"] = "          
    ["북풍의땅/우누페"] = ".go 2917.2099 4043.4399 1.9677 571",                             		-- ["북풍의땅/우누페"] = ".go          
    ["북풍의땅/용맹의성채"] = ".go 2272.9799 5171.8198 11.3460 571",                          		-- ["북풍의땅/용맹의성채"] = ".          
    ["북풍의땅/피즈크랭크비행장"] = ".go 4126.7109 5309.6601 28.7086 571",                       	-- ["북풍의땅/피즈크랭크비행장"] =          
    ["회색구릉지/호박빛소나무오두막"] = ".go 3447.812 -2754.3974 199.3689 571",                  	-- ["회색구릉지/호박빛소나무오두막"]          
    ["회색구릉지/서부몰락지대여단"] = ".go 4582.6298 -4254.8598 182.2910 571",                   	-- ["회색구릉지/서부몰락지대여단"]           
    ["줄드락/은빛십자군격전지"] = ".go 5523.6801 -2674.9699 304.1369 571",                      	-- ["줄드락/은빛십자군격전지"] =           
    ["줄드락/짐토르가"] = ".go 5780.8398 -3598.1599 387.2380 571",                          		-- ["줄드락/짐토르가"] = ".go          
    ["줄드락/빛의틈"] = ".go 5189.6699 -2206.8500 239.3999 571",                          		    -- ["줄드락/빛의틈"] = ".go          
    ["줄드락/두브라진"] = ".go 6897.6499 -4118.2299	467.3500 571",                          		-- ["줄드락/두브라진"] = ".go          
    ["줄드락/칠흑의감시초소"] = ".go 5218.8999 -1302.2199 242.1600 571",                          	-- ["줄드락/칠흑의감시초소"] = ".go          
    ["숄라자르분지/네싱워리주둔지"] = ".go 5590.0297 5828.5600 -68.1586 571",                      	-- ["숄라자르분지/네싱워리주둔지"] =          
    ["숄라자르분지/호반의정박지"] = ".go 5506.2299 4748.1000 -194.4299 571",                      	-- ["숄라자르분지/호반의정박지"] =          
    ["수정노래숲/윈드러너전망대"] = ".go 5033.1699 -521.2290 225.9449 571",                      	-- ["수정노래숲/윈드러너전망대"] =          
    ["얼음왕관/은빛십자군선봉기지"] = ".go 6162.6201 -62.0920 388.3640 571",                     	-- ["얼음왕관/은빛십자군선봉기지"]           
    ["얼음왕관/죽음의마루"] = ".go 7430.9399 4211.9902 314.1099 571",                      		    -- ["얼음왕관/죽음의마루"] = "          
    ["얼음왕관/어둠의무기고"] = ".go 8412.0634 2693.3571 655.0952 571",                      		-- ["얼음왕관/어둠의무기고"] = "          
    ["용의안식처/모아키항구"] = ".go 2793.1899 906.3599 22.6437 571",                          		-- ["용의안식처/모아키항구"] = "          
    ["용의안식처/고룡쉼터사원"] = ".go 3647.2600 244.0509 52.4397 571",                         	-- ["용의안식처/고룡쉼터사원"] =           
    ["용의안식처/고룡쉼터사원1"] = ".go 3547.2199 381.4899 52.2599 571",                         	-- ["용의안식처/고룡쉼터사원1"] =           
    ["용의안식처/윈터가드성채"] = ".go 3713.0559 -691.9813 215.5497 571",                       	-- ["용의안식처/윈터가드성채"] =           
    ["용의안식처/폴드라곤요새"] = ".go 4606.0898 1410.7099 194.9310 571",                       	-- ["용의안식처/폴드라곤요새"] =           
    ["용의안식처/별의쉼터"] = ".go 3506.0700 1990.4200 65.3657 571",                          		-- ["용의안식처/별의쉼터"] = ".          
    ["달라란/크라서스착륙장"] = ".go 5813.3701 453.4030 658.9340 571",                         		-- ["달라란/크라서스착륙장"] = "          
    ["폭풍우봉우리/K3"] = ".go 6188.9702 -1056.5300 410.0060 571",                         			-- ["폭풍우봉우리/K3"] = ".g          
    ["폭풍우봉우리/서리요새"] = ".go 6672.8779 -256.9667 962.0960 571",                        		-- ["폭풍우봉우리/서리요새"] = "          
    ["폭풍우봉우리/울드아르"] = ".go 8862.4443 -1323.7862 1033.1953 571",                      		-- ["폭풍우봉우리/울드아르"] = "          
    ["폭풍우봉우리/바울더크랙의은신처"] = ".go 8474.9316 -335.2430 906.1583 571",                   -- ["폭풍우봉우리/바울더크랙의은신처"] = "          
    },                                                                              
    ["노스랜드호드"] = {                                                                    		-- ["0-NorthLand Hord"]
    ["아케루스/칠흙의요새"] = ".go 2352.3701 -5666.9101 382.2399 0",                                -- ["아케루스/칠흙의요새"] = "          
    ["아케루스/칠흙의요새_끝"] = ".go 2356.5100 -5664.1801 382.25 609",                             -- ["아케루스/칠흙의요새_끝"] = "          
    ["아케루스/죽음의틈_끝"] = ".go 2431 -5730.2099 157.9400 609",                                  -- ["아케루스/죽음의틈_끝"] = "          
    ["겨울손아귀/얼어붙은수렁"] = ".go 5024.9902 3685.5500 362.9400 571",                           -- ["겨울손아귀/얼어붙은수렁"] = "          
    ["울부짖는협만/카마구아"] = ".go 787.755 -2889.060 6.5919 571",                            		-- ["울부짖는협만/카마구아"] = "          
    ["울부짖는협만/복수의상륙지"] = ".go 1919.0300 -6176.7202 24.6655 571",                      	-- ["울부짖는협만/복수의상륙지"] =          
    ["울부짖는협만/신아가만드"] = ".go 400.2497 -4542.5307 244.9554 571",                       	-- ["울부짖는협만/신아가만드"] =           
    ["울부짖는협만/연금술사야영지"] = ".go 2106.0500 -2968.8100 148.7669 571",                   	-- ["울부짖는협만/연금술사야영지"]           
    ["울부짖는협만/겨울발굽야영지"] = ".go 2649.2700 -4394.5000 283.4880 571",                   	-- ["울부짖는협만/겨울발굽야영지"]           
    ["북풍의땅/보르고로크전초기지"] = ".go 4473.2402 5708.7900 81.4462 571",                     	-- ["북풍의땅/보르고로크전초기지"]           
    ["북풍의땅/변위의보호막"] = ".go 3573.8999 6661.0698 195.3630 571",                        		-- ["북풍의땅/변위의보호막"] = "          
    ["북풍의땅/우누페"] = ".go 2917.2099 4043.4399 1.9677 571",                             		-- ["북풍의땅/우누페"] = ".go          
    ["북풍의땅/타운카르마을"] = ".go 3446.1101 4088.4099 16.9603 571",                         		-- ["북풍의땅/타운카르마을"] = "          
    ["북풍의땅/전쟁노래부족요새"] = ".go 2920.2900 6242.8500 208.8000 571",                         -- ["북풍의땅/전쟁노래부족요새"] = "          
    ["회색구릉지/정복의요새"] = ".go 3261.520 -2265.4499 114.2809 571",                        		-- ["회색구릉지/정복의요새"] = "          
    ["회색구릉지/원크와야영지"] = ".go 3874.2121 -4520.4833 217.0700 571",                      	-- ["회색구릉지/원크와야영지"] =           
    ["줄드락/은빛십자군격전지"] = ".go 5523.6801 -2674.9699 304.1369 571",                      	-- ["줄드락/은빛십자군격전지"] =           
    ["줄드락/짐토르가"] = ".go 5780.8398 -3598.1599 387.2380 571",                          		-- ["줄드락/짐토르가"] = ".go          
    ["줄드락/빛의틈"] = ".go 5189.6699 -2206.8500 239.3999 571",                          		    -- ["줄드락/빛의틈"] = ".go          
    ["줄드락/두브라진"] = ".go 6897.6499 -4118.2299	467.3500 571",                          		-- ["줄드락/두브라진"] = ".go          
    ["줄드락/칠흑의감시초소"] = ".go 5218.8999 -1302.2199 242.1600 571",                          	-- ["줄드락/칠흑의감시초소"] = ".go          
    ["숄라자르분지/네싱워리주둔지"] = ".go 5590.0297 5828.5600 -68.1586 571",                      	-- ["숄라자르분지/네싱워리주둔지"] =          
    ["숄라자르분지/호반의정박지"] = ".go 5506.2299 4748.1000 -194.4299 571",                      	-- ["숄라자르분지/호반의정박지"] =          
    ["수정노래숲/선리버지휘초소"] = ".go 5587.2597 -694.6900 206.8099 571",                      	-- ["수정노래숲/선리버지휘초소"] =          
    ["얼음왕관/은빛십자군선봉기지"] = ".go 6162.6201 -62.0920 388.3640 571",                     	-- ["얼음왕관/은빛십자군선봉기지"]           
    ["얼음왕관/죽음의마루"] = ".go 7430.9399 4211.9902 314.1099 571",                      		    -- ["얼음왕관/죽음의마루"] = "          
    ["얼음왕관/어둠의무기고"] = ".go 8412.0634 2693.3571 655.0952 571",                      		-- ["얼음왕관/어둠의무기고"] = "          
    ["용의안식처/모아키항구"] = ".go 2793.1899 906.3599 22.6437 571",                          		-- ["용의안식처/모아키항구"] = "          
    ["용의안식처/고룡쉼터사원"] = ".go 3647.2600 244.0509 52.4397 571",                         	-- ["용의안식처/고룡쉼터사원"] =           
    ["용의안식처/고룡쉼터사원1"] = ".go 3547.2199 381.4899 52.2599 571",                         	-- ["용의안식처/고룡쉼터사원1"] =           
    ["용의안식처/코르크론선봉기지"] = ".go 4941.5898 1167.9499 239.5019 571",                    	-- ["용의안식처/코르크론선봉기지"]           
    ["용의안식처/아그마르의망치"] = ".go 3863.6298 1523.1099 90.3258 571",                       	-- ["용의안식처/아그마르의망치"] =          
    ["용의안식처/원한의초소"] = ".go 3242.9599 -666.1599 166.7899 571",                       	    -- ["용의안식처/원한의초소"] =          
    ["달라란/크라서스착륙장"] = ".go 5813.3701 453.4030 658.9340 571",                         		-- ["달라란/크라서스착륙장"] = "          
    ["폭풍우봉우리/K3"] = ".go 6188.9702 -1056.5300 410.0060 571",                         			-- ["폭풍우봉우리/K3"] = ".g          
    ["폭풍우봉우리/크롬아쉬추락지점"] = ".go 7857.2998 -735.0200 1177.1500 571",                 	-- ["폭풍우봉우리/크롬아쉬추락지점"]
    ["폭풍우봉우리/울드아르"] = ".go 8862.4443 -1323.7862 1033.1953 571",                      		-- ["폭풍우봉우리/울드아르"] = "          
    ["폭풍우봉우리/바울더크랙의은신처"] = ".go 8474.9316 -335.2430 906.1583 571",                   -- ["폭풍우봉우리/바울더크랙의은신처"] = "          
    ["폭풍우봉우리/툰카로 야영지"] = ".go 7793.8500 -2810.0900 1217.0300 571",                      -- ["폭풍우봉우리/툰카로 야영지"] = "          
    },
    ["노스랜드인스턴스"] = {                                                                    	-- ["0-NorthLand Instance"]
    ["아케루스1_2"] = ".go 2359.1201 -5659.9501 382.2619 609",                            	        -- ["아케루스1_2"] = "          
    ["아케루스2_3"] = ".go 2465.7099 -5566.7099 550.2210 609",                            	        -- ["아케루스2_3"] = "          
    ["아케루스3_2"] = ".go 2476.1101 -5515.0400 420.6366 609",                            	        -- ["아케루스3_2"] = "          
    ["겨울손아귀/아카본석실"] = ".go -503.5889 -103.4430 156.0875 624",                            	-- ["아카본석실"] = "          
    ["용의안식처/정복당한왕들의전당"] = ".go 333.3510 -1109.9399 69.7720 619",                      -- ["정복당한왕들의전당"] = "          
    ["용의안식처/흑요석성소"] = ".go 3228.5800 385.8599 65.5490 615",                            	-- ["흑요석성소"] = "          
    ["용의안식처/빛나는관문"] = ".go 413.314 795.968 831.351 601",                            	    -- ["빛나는관문"] = "          
    ["용의안식처/낙스라마스_1"] = ".go 3005.68 -3447.77 293.93 533",                         	    -- ["낙스라마스_1"] = "          
    ["용의안식처/낙스라마스_2"] = ".go 3019.34 -3434.36 293.99 533",                         	    -- ["낙스라마스_2"] = "          
    ["용의안식처/낙스라마스_3"] = ".go 3005.9 -3420.58 294.11 533",                         	    -- ["낙스라마스_3"] = "          
    ["용의안식처/낙스라마스_4"] = ".go 2992.5 -3434.42 293.94 533",                         	    -- ["낙스라마스_4"] = "          
    ["달라란/보랏빛요새"] = ".go 1808.8199 803.9299 44.3639 608",                            	    -- ["보랏빛요새"] = "          
    ["줄드락/군드락_남"] = ".go 1891.84 832.169 176.669 604",                            	        -- ["군드락_남"] = "          
    ["줄드락/군드락_북"] = ".go 1894.58 652.713 176.666 604",                            	        -- ["군드락_북"] = "          
    ["회색구릉지/출사의전당"] = ".go -517.343 -487.976 11.01 600",                            	    -- ["출사의전당"] = "          
    ["폭풍우봉우리/고대선조의전당"] = ".go 1153.24 806.164 195.937 599",                         	-- ["고대선조의전당"] = "          
    ["폭풍우봉우리/번개의전당"] = ".go 1331.47 259.619 53.398 602",                            	    -- ["번개의전당"] = "          
    ["북풍의땅/변화의고리"] = ".go 1048.16 1108.3 361.07 578",                         	            -- ["변화의고리"] = "          
    ["북풍의땅/마력의탑"] = ".go 145.87 -10.554 -16.636 576",                         	            -- ["마력의탑"] = "          
    ["울부짖는협만/우트가드첨탑"] = ".go 584.117 -327.974 110.138 575",                         	-- ["우트가드첨탑"] = "          
    ["울부짖는협만/우트가드성채"] = ".go 153.789 -86.548 12.551 574",                         	    -- ["우트가드성채"] = "          
    ["타나리스/옛스트라솔름"] = ".go 1431.1 556.92 36.69 595",                         	            -- ["옛스트라솔름"] = "          
    },
  ["Other"] = {
      ["Ahn'Qiraj - Backlands"] = ".go -9479 1783 49.94 1",
      ["Blackchar Cave"] = ".go -7347 -642 294.586121 0",
      ["Blackwing Lair Outside"] = ".go -7394.303711 -1074.987549 589.391235 469",
      ["Deadmines Strange Place"] = ".go -1464.339 500.941 0.000 36",
      ["Deeprun Tram Deeprun Divers"] = ".go 78.911476 1167.338257 -106.266212 369",
      ["Deeprun Tram Nessy"] = ".go -129.416702 1212.989502 -103.033546 369",
      ["Deeprun Tram Underwater Location"] = ".go -33.273006 1234.087402 -126.101425 369",
      ["Designer Island - Will Crash"] = ".go 16303.5 -16173.5 40.4365 451",
      ["GM Island"] = ".go 16222.1 16252.1 12.5872 1",
      ["Gillijim's Isle"] = ".go -13693.5 2806.3 -1.595302 0",
      ["Karazhan Crypts"] = ".go -11069 -1795 53.731037 0",
      ["Newman's Landing"] = ".go -6379.61 1260.49 7.18831 0",
      ["Ortell's Hideout"] = ".go  -5314 -2512 484.233185 0",
      ["Outside Alterac Valley A"] = ".go 605 -1040.9 264.755127 30",
      ["Outside Alterac Valley B"] = ".go 669.224 346.28 139.2 30",
      ["Outside Naxxramas"] = ".go 3598 -4523 198.864639 533",
      ["Programmer Isle - Will Crash"] = ".go 16304.20 16318.10 69.44 451",
      ["Ruins of Lordaeron (PvP Zone) Stable "] = ".go 1135 1586 33.792591 572",
      ["Ruins of Lordaeron (PvP Zone) Crypt "] = ".go 422 2244 57.423981 572",
      ["Ruins of Lordaeron (PvP Zone) Pyrewood Village "] = ".go 1470 1544 17 572",
      ["Ruins of Lordaeron (PvP Zone) Toolshed"] = ".go 2240 1104 106.326881 572",
      ["Shadowfang Keep Silverpine Forest"] = ".go -202.557 1666.88 79.7641 0",
      ["Stratholme Outside"] = ".go 3176.634277 -4039.275879 105.463600 329",
      ["Testing - Small Box(Old Jail)"] = ".go 0 0 -.277778 13",
      ["Testing - Big Box"] = ".go 0 0 -144.70 13",
      ["Top of Blackrock Mountain"] = ".go -7468 -1082 896.8 0",
      ["Wetlands Hidden spot"] = ".go -3857 -3485 579.640198 0",
      ["Zul'Gurub - Alter of storms"] = ".go -12029 -2584 -29.641342 309",
      ["Zul'Gurub Stranglethorn Vale"] = ".go -12332.519531 -1859.805664 130.321091 0",
      },

    ["Unfinished Regions"] = {
	  ["Arathi Dwarven Farm"] = ".go -1850.22 -4149.4 9.76771 0",
	  ["badlands - Unfinished Zone"] = ".go -7122 -4122 463.018860 0",
      ["Behind The Greymane Wall"] = ".go -987.449 1585.69 53.4298 0",
      ["Dalaran Inside the Dome"] = ".go 258 351 41.9076 0",
      ["Eastern Plaguelands Unfinished Region"] = ".go 3653.67 -3609.77 45.050037 0",
      ["Emerald Forest Statue"] = ".go 3105.41 3096.78 27.0032 169",
      ["Emerald Forest Trees"] = ".go 2732.93 -3319.63 101.284 169",
      ["Gilneas"] = ".go -1275.483765 1525.656738 189.224091 0",
      ["Grim Batol Watch Post"] = ".go -4072.695068 -3379.799316 372.380432 0",
      ["Islands in Unknown Region"] = ".go -9392.479492 -4855.384766 300.868011 0",
      ["Quel'Thalas"] = ".go 3617 -2821 177.193909 0",
      ["Quel'Thalas Tower"] = ".go 4299.212402 -2761.831299 16.694981 0",
      ["Silithus Southern Farm"] = ".go -10736.7 2445 7.531 1",
      ["Silithus Unfinished Region"] = ".go -9678.11 1530.11 19.302420 1",
      ["Stranglethorn Vale Unfinished Region"] = ".go -13010.2 -1617.82 143.272476 0",
      ["The Verdant Fields"] = ".go -2128.12 -1005.89 132.213 169",
      ["Tirisfal Glades Unfinished Region"] = ".go 2231.971191 2242.839111 99.736877 0",
      ["Wetlands Dwarven Village"] = ".go -4028.98 -1411.2 156.564 0",
    },
  }

 end 
end
