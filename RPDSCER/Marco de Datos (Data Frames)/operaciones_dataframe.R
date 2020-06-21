# Operaciones Básicas con un Marco de Datos(Dataframe)
datos <- read.csv("DatosDemograficos.csv")
datos

# Ver conjuntos de filas
datos[3:9,]
#                Nombre.Pais Codigo.Pais Tasa.Natalidad
# 3               Angola         AGO         45.985
# 4              Albania         ALB         12.877
# 5 United Arab Emirates         ARE         11.044
# 6            Argentina         ARG         17.716
# 7              Armenia         ARM         13.308
# 8  Antigua and Barbuda         ATG         16.447
# 9            Australia         AUS         13.200

#   Penetracion.Internet     Grupo.Ingresos
# 3                 19.1 Ingreso medio alto
# 4                 57.2 Ingreso medio alto
# 5                 88.0       Ingreso alto
# 6                 59.9       Ingreso alto
# 7                 41.9 Ingreso medio bajo
# 8                 63.4       Ingreso alto
# 9                 83.0       Ingreso alto
datos[c(4,100),]
#         Nombre.Pais Codigo.Pais Tasa.Natalidad
# 4       Albania         ALB         12.877
# 100     Lebanon         LBN         13.426

#      Penetracion.Internet     Grupo.Ingresos
# 4                   57.2 Ingreso medio alto
# 100                 70.5 Ingreso medio alto

datos[1,]
#       Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet
# 1       Aruba         ABW         10.244                 78.9
#    Grupo.Ingresos
# 1   Ingreso alto


# Verificar si un conjunto de datos es un dataframe:
is.data.frame(datos[1,]) # TRUE
# Nótese la diferencia con las matrices que ahí una
# matriz de una sola fila es un vector


# Veamos los elementos de la columna de un dataframe:
datos[,1]
# [1] Aruba                         
# [2] Afghanistan                   
# [3] Angola                        
# [4] Albania                       
# [5] United Arab Emirates          
# [6] Argentina                     
# [7] Armenia                       
# [8] Antigua and Barbuda           
# [9] Australia                     
# [10] Austria                       
# [11] Azerbaijan                    
# [12] Burundi                       
# [13] Belgium                       
# [14] Benin                         
# [15] Burkina Faso                  
# [16] Bangladesh                    
# [17] Bulgaria                      
# [18] Bahrain                       
# [19] Bahamas, The                  
# [20] Bosnia and Herzegovina        
# [21] Belarus                       
# [22] Belize                        
# [23] Bermuda                       
# [24] Bolivia                       
# [25] Brazil                        
# [26] Barbados                      
# [27] Brunei Darussalam             
# [28] Bhutan                        
# [29] Botswana                      
# [30] Central African Republic      
# [31] Canada                        
# [32] Switzerland                   
# [33] Chile                         
# [34] China                         
# [35] Cote d'Ivoire                 
#  [36] Cameroon                      
#  [37] Congo, Dem. Rep.              
#  [38] Congo, Rep.                   
#  [39] Colombia                      
#  [40] Comoros                       
#  [41] Cabo Verde                    
#  [42] Costa Rica                    
#  [43] Cuba                          
#  [44] Cayman Islands                
#  [45] Cyprus                        
#  [46] Czech Republic                
#  [47] Germany                       
#  [48] Djibouti                      
#  [49] Denmark                       
#  [50] Dominican Republic            
#  [51] Algeria                       
#  [52] Ecuador                       
#  [53] Egypt, Arab Rep.              
#  [54] Eritrea                       
#  [55] Spain                         
#  [56] Estonia                       
#  [57] Ethiopia                      
#  [58] Finland                       
#  [59] Fiji                          
#  [60] France                        
#  [61] Micronesia, Fed. Sts.         
#  [62] Gabon                         
#  [63] United Kingdom                
#  [64] Georgia                       
#  [65] Ghana                         
#  [66] Guinea                        
#  [67] Gambia, The                   
#  [68] Guinea-Bissau                 
#  [69] Equatorial Guinea             
#  [70] Greece                        
#  [71] Grenada                       
#  [72] Greenland                     
#  [73] Guatemala                     
#  [74] Guam                          
#  [75] Guyana                        
#  [76] Hong Kong SAR, China          
#  [77] Honduras                      
#  [78] Croatia                       
#  [79] Haiti                         
#  [80] Hungary                       
#  [81] Indonesia                     
#  [82] India                         
#  [83] Ireland                       
#  [84] Iran, Islamic Rep.            
#  [85] Iraq                          
#  [86] Iceland                       
#  [87] Israel                        
#  [88] Italy                         
#  [89] Jamaica                       
#  [90] Jordan                        
#  [91] Japan                         
#  [92] Kazakhstan                    
#  [93] Kenya                         
#  [94] Kyrgyz Republic               
#  [95] Cambodia                      
#  [96] Kiribati                      
#  [97] Korea, Rep.                   
#  [98] Kuwait                        
#  [99] Lao PDR                       
# [100] Lebanon                       
# [101] Liberia                       
# [102] Libya                         
# [103] St. Lucia                     
# [104] Liechtenstein                 
# [105] Sri Lanka                     
# [106] Lesotho                       
# [107] Lithuania                     
# [108] Luxembourg                    
# [109] Latvia                        
# [110] Macao SAR, China              
# [111] Morocco                       
# [112] Moldova                       
# [113] Madagascar                    
# [114] Maldives                      
# [115] Mexico                        
# [116] Macedonia, FYR                
# [117] Mali                          
# [118] Malta                         
# [119] Myanmar                       
# [120] Montenegro                    
# [121] Mongolia                      
# [122] Mozambique                    
# [123] Mauritania                    
# [124] Mauritius                     
# [125] Malawi                        
# [126] Malaysia                      
# [127] Namibia                       
# [128] New Caledonia                 
# [129] Niger                         
# [130] Nigeria                       
# [131] Nicaragua                     
# [132] Netherlands                   
# [133] Norway                        
# [134] Nepal                         
# [135] New Zealand                   
# [136] Oman                          
# [137] Pakistan                      
# [138] Panama                        
# [139] Peru                          
# [140] Philippines                   
# [141] Papua New Guinea              
# [142] Poland                        
# [143] Puerto Rico                   
# [144] Portugal                      
# [145] Paraguay                      
# [146] West Bank and Gaza            
# [147] French Polynesia              
# [148] Qatar                         
# [149] Romania                       
# [150] Russian Federation            
# [151] Rwanda                        
# [152] Saudi Arabia                  
# [153] Sudan                         
# [154] Senegal                       
# [155] Singapore                     
# [156] Solomon Islands               
# [157] Sierra Leone                  
# [158] El Salvador                   
# [159] Somalia                       
# [160] Serbia                        
# [161] South Sudan                   
# [162] Sao Tome and Principe         
# [163] Suriname                      
# [164] Slovak Republic               
# [165] Slovenia                      
# [166] Sweden                        
# [167] Swaziland                     
# [168] Seychelles                    
# [169] Syrian Arab Republic          
# [170] Chad                          
# [171] Togo                          
# [172] Thailand                      
# [173] Tajikistan                    
# [174] Turkmenistan                  
# [175] Timor-Leste                   
# [176] Tonga                         
# [177] Trinidad and Tobago           
# [178] Tunisia                       
# [179] Turkey                        
# [180] Tanzania                      
# [181] Uganda                        
# [182] Ukraine                       
# [183] Uruguay                       
# [184] United States                 
# [185] Uzbekistan                    
# [186] St. Vincent and the Grenadines
# [187] Venezuela, RB                 
# [188] Virgin Islands (U.S.)         
# [189] Vietnam                       
# [190] Vanuatu                       
# [191] Samoa                         
# [192] Yemen, Rep.                   
# [193] South Africa                  
# [194] Zambia                        
# [195] Zimbabwe                      
# 195 Levels: Afghanistan Albania Algeria ... Zimbabwe

# Se aprecia que es un vector
is.data.frame(datos[,1]) # FALSE
# Ocurre por las misma razones que apra una matriz con 
# matrices de la misma dimensión que un vector.

# Corrección
datos[,1,drop=F]
Nombre.Pais
# 1                            Aruba
# 2                      Afghanistan
# 3                           Angola
# 4                          Albania
# 5             United Arab Emirates
# 6                        Argentina
# 7                          Armenia
# 8              Antigua and Barbuda
# 9                        Australia
# 10                         Austria
# 11                      Azerbaijan
# 12                         Burundi
# 13                         Belgium
# 14                           Benin
# 15                    Burkina Faso
# 16                      Bangladesh
# 17                        Bulgaria
# 18                         Bahrain
# 19                    Bahamas, The
# 20          Bosnia and Herzegovina
# 21                         Belarus
# 22                          Belize
# 23                         Bermuda
# 24                         Bolivia
# 25                          Brazil
# 26                        Barbados
# 27               Brunei Darussalam
# 28                          Bhutan
# 29                        Botswana
# 30        Central African Republic
# 31                          Canada
# 32                     Switzerland
# 33                           Chile
# 34                           China
# 35                   Cote d'Ivoire
# 36                        Cameroon
# 37                Congo, Dem. Rep.
# 38                     Congo, Rep.
# 39                        Colombia
# 40                         Comoros
# 41                      Cabo Verde
# 42                      Costa Rica
# 43                            Cuba
# 44                  Cayman Islands
# 45                          Cyprus
# 46                  Czech Republic
# 47                         Germany
# 48                        Djibouti
# 49                         Denmark
# 50              Dominican Republic
# 51                         Algeria
# 52                         Ecuador
# 53                Egypt, Arab Rep.
# 54                         Eritrea
# 55                           Spain
# 56                         Estonia
# 57                        Ethiopia
# 58                         Finland
# 59                            Fiji
# 60                          France
# 61           Micronesia, Fed. Sts.
# 62                           Gabon
# 63                  United Kingdom
# 64                         Georgia
# 65                           Ghana
# 66                          Guinea
# 67                     Gambia, The
# 68                   Guinea-Bissau
# 69               Equatorial Guinea
# 70                          Greece
# 71                         Grenada
# 72                       Greenland
# 73                       Guatemala
# 74                            Guam
# 75                          Guyana
# 76            Hong Kong SAR, China
# 77                        Honduras
# 78                         Croatia
# 79                           Haiti
# 80                         Hungary
# 81                       Indonesia
# 82                           India
# 83                         Ireland
# 84              Iran, Islamic Rep.
# 85                            Iraq
# 86                         Iceland
# 87                          Israel
# 88                           Italy
# 89                         Jamaica
# 90                          Jordan
# 91                           Japan
# 92                      Kazakhstan
# 93                           Kenya
# 94                 Kyrgyz Republic
# 95                        Cambodia
# 96                        Kiribati
# 97                     Korea, Rep.
# 98                          Kuwait
# 99                         Lao PDR
# 100                        Lebanon
# 101                        Liberia
# 102                          Libya
# 103                      St. Lucia
# 104                  Liechtenstein
# 105                      Sri Lanka
# 106                        Lesotho
# 107                      Lithuania
# 108                     Luxembourg
# 109                         Latvia
# 110               Macao SAR, China
# 111                        Morocco
# 112                        Moldova
# 113                     Madagascar
# 114                       Maldives
# 115                         Mexico
# 116                 Macedonia, FYR
# 117                           Mali
# 118                          Malta
# 119                        Myanmar
# 120                     Montenegro
# 121                       Mongolia
# 122                     Mozambique
# 123                     Mauritania
# 124                      Mauritius
# 125                         Malawi
# 126                       Malaysia
# 127                        Namibia
# 128                  New Caledonia
# 129                          Niger
# 130                        Nigeria
# 131                      Nicaragua
# 132                    Netherlands
# 133                         Norway
# 134                          Nepal
# 135                    New Zealand
# 136                           Oman
# 137                       Pakistan
# 138                         Panama
# 139                           Peru
# 140                    Philippines
# 141               Papua New Guinea
# 142                         Poland
# 143                    Puerto Rico
# 144                       Portugal
# 145                       Paraguay
# 146             West Bank and Gaza
# 147               French Polynesia
# 148                          Qatar
# 149                        Romania
# 150             Russian Federation
# 151                         Rwanda
# 152                   Saudi Arabia
# 153                          Sudan
# 154                        Senegal
# 155                      Singapore
# 156                Solomon Islands
# 157                   Sierra Leone
# 158                    El Salvador
# 159                        Somalia
# 160                         Serbia
# 161                    South Sudan
# 162          Sao Tome and Principe
# 163                       Suriname
# 164                Slovak Republic
# 165                       Slovenia
# 166                         Sweden
# 167                      Swaziland
# 168                     Seychelles
# 169           Syrian Arab Republic
# 170                           Chad
# 171                           Togo
# 172                       Thailand
# 173                     Tajikistan
# 174                   Turkmenistan
# 175                    Timor-Leste
# 176                          Tonga
# 177            Trinidad and Tobago
# 178                        Tunisia
# 179                         Turkey
# 180                       Tanzania
# 181                         Uganda
# 182                        Ukraine
# 183                        Uruguay
# 184                  United States
# 185                     Uzbekistan
# 186 St. Vincent and the Grenadines
# 187                  Venezuela, RB
# 188          Virgin Islands (U.S.)
# 189                        Vietnam
# 190                        Vanuatu
# 191                          Samoa
# 192                    Yemen, Rep.
# 193                   South Africa
# 194                         Zambia
# 195                       Zimbabwe

# Se hace evidente que ahora es un dataframe
is.data.frame(datos[,1,drop=F]) #TRUE


# Multipliquemos columnas de un dataframe:
datos$Tasa.Natalidad * datos$Penetracion.Internet
# [1]  808.2516  207.9927  878.3135  736.5644  971.8720
# [6] 1061.1884  557.6052 1042.7398 1095.6000  757.8167
# [11] 1074.2100   57.3963  920.3062  178.5560  369.0141
# [16]  133.5415  488.1658 1353.6006 1104.4080  523.6930
# [21]  677.1250  775.8912  991.1200  895.2778  762.0782
# [26]  889.7240 1058.1225  542.2066  379.0050  119.2660
# [31]  935.2200  880.6680  890.1025  554.1800  313.4880
# [36]  238.3104   93.2668  244.2726  831.1292  223.1190
# [41]  810.9375  690.4111  290.4720  926.2500  748.5411
# [46]  755.9261  715.4450  242.1170  946.2970  972.9882
# [51]  408.1770  850.2521  824.1408   31.3200  651.8785
# [56]  817.8200   62.5575  979.2041  759.1773 1007.6135
# [61]  653.6058  281.1060 1096.0980  577.2756  407.5113
# [66]   59.7392  595.3500  116.2593  579.9368  508.8636
# [71]  676.6900  954.1000  541.0605 1137.2406  660.9750
# [76]  586.1800  384.3554  627.4274  268.6570  668.3239
# [81]  303.2372  306.3941 1173.7155  536.1050  286.0556
# [86] 1293.7271 1508.0400  496.9040  502.3340 1108.8860
# [91]  735.6220 1227.4200 1372.5660  625.6000  166.3416
# [96]  334.0060  729.0220 1552.5895  338.1375  946.5330
# [101]  113.6672  353.5125  712.8660  862.9600  391.1997
# [106]  143.6900  691.3743 1059.6744  767.3909  740.6448
# [111] 1177.2880  546.3450  104.0580  945.8127  830.2598
# [116]  732.1233  154.4830  654.6811   28.9904  700.5610
# [121]  485.5000  214.4070  209.5662  425.1000  199.2680
# [126] 1125.4308  416.1243 1122.0000   84.4237 1521.7100
# [131]  322.2140  958.3553 1102.6194  278.2759 1086.0736
# [136] 1356.8426  322.4438  866.5104  791.7616  880.2300
# [141]  187.8435  603.3523  798.1200  490.5552  796.5972
# [146] 1416.3604  931.1224 1018.4820  437.9276  897.2040
# [151]  294.2010 1244.8480  759.9279  504.7823  753.3000
# [156]  244.6240   62.4393  403.8581   65.8365  473.8000
# [161]  523.4766  794.3510  690.2170  786.6143  741.2911
# [166] 1118.4465  743.2971  937.4400  629.9266  105.2135
# [171]  162.3600  319.5265  492.6720  204.6912   39.3305
# [176]  889.3150  930.8420  867.2400  778.6650  173.8792
# [181]  704.2788  455.1000  829.2361 1052.5000  859.5000
# [186]  847.9120 1089.3258  484.7100  682.0743  302.1507
# [191]  400.4316  658.9400  969.5250  623.2534  660.7275


# Creación de una nueva columna
head(datos)
#             Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos 
# 1                Aruba         ABW         10.244                 78.9       Ingreso alto
# 2          Afghanistan         AFG         35.253                  5.9       Ingreso bajo
# 3               Angola         AGO         45.985                 19.1 Ingreso medio alto
# 4              Albania         ALB         12.877                 57.2 Ingreso medio alto
# 5 United Arab Emirates         ARE         11.044                 88.0       Ingreso alto
# 6            Argentina         ARG         17.716                 59.9       Ingreso alto
datos$nueva_columna <- datos$Tasa.Natalidad * datos$Penetracion.Internet
head(datos)
#            Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos nueva_columna
# 1                Aruba         ABW         10.244                 78.9       Ingreso alto      808.2516
# 2          Afghanistan         AFG         35.253                  5.9       Ingreso bajo      207.9927
# 3               Angola         AGO         45.985                 19.1 Ingreso medio alto      878.3135
# 4              Albania         ALB         12.877                 57.2 Ingreso medio alto      736.5644
# 5 United Arab Emirates         ARE         11.044                 88.0       Ingreso alto      971.8720
# 6            Argentina         ARG         17.716                 59.9       Ingreso alto     1061.1884

# Ejemplo de reciclado de vectores:
datos$xyz <- 1:5
# datos <- 1:4 marca error porque 195 no es múltiplo 
# de 4
head(datos , n=12)
#             Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos nueva_columna xyz
# 1                 Aruba         ABW         10.244              78.9000       Ingreso alto      808.2516   1
# 2           Afghanistan         AFG         35.253               5.9000       Ingreso bajo      207.9927   2
# 3                Angola         AGO         45.985              19.1000 Ingreso medio alto      878.3135   3
# 4               Albania         ALB         12.877              57.2000 Ingreso medio alto      736.5644   4
# 5  United Arab Emirates         ARE         11.044              88.0000       Ingreso alto      971.8720   5
# 6             Argentina         ARG         17.716              59.9000       Ingreso alto     1061.1884   1
# 7               Armenia         ARM         13.308              41.9000 Ingreso medio bajo      557.6052   2
# 8   Antigua and Barbuda         ATG         16.447              63.4000       Ingreso alto     1042.7398   3
# 9             Australia         AUS         13.200              83.0000       Ingreso alto     1095.6000   4
# 10              Austria         AUT          9.400              80.6188       Ingreso alto      757.8167   5
# 11           Azerbaijan         AZE         18.300              58.7000 Ingreso medio alto     1074.2100   1
# 12              Burundi         BDI         44.151               1.3000       Ingreso bajo       57.3963   2


# Borrar columnas
datos$xyz <- NULL
head(datos)
#            Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos nueva_columna
# 1                Aruba         ABW         10.244                 78.9       Ingreso alto      808.2516
# 2          Afghanistan         AFG         35.253                  5.9       Ingreso bajo      207.9927
# 3               Angola         AGO         45.985                 19.1 Ingreso medio alto      878.3135
# 4              Albania         ALB         12.877                 57.2 Ingreso medio alto      736.5644
# 5 United Arab Emirates         ARE         11.044                 88.0       Ingreso alto      971.8720
# 6            Argentina         ARG         17.716                 59.9       Ingreso alto     1061.1884

datos$nueva_columna <- NULL
head(datos)
#            Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos
# 1                Aruba         ABW         10.244                 78.9       Ingreso alto
# 2          Afghanistan         AFG         35.253                  5.9       Ingreso bajo
# 3               Angola         AGO         45.985                 19.1 Ingreso medio alto
# 4              Albania         ALB         12.877                 57.2 Ingreso medio alto
# 5 United Arab Emirates         ARE         11.044                 88.0       Ingreso alto
# 6            Argentina         ARG         17.716                 59.9       Ingreso alto