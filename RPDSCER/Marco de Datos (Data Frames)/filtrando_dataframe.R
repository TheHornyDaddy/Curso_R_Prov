# Filtrar un Marco de Datos(Dataframe)
datos <- read.csv("DatosDemograficos.csv")
datos

# Filtremos und ataframe de acuerdo a una condición
head(datos)
#            Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos
# 1                Aruba         ABW         10.244                 78.9       Ingreso alto
# 2          Afghanistan         AFG         35.253                  5.9       Ingreso bajo
# 3               Angola         AGO         45.985                 19.1 Ingreso medio alto
# 4              Albania         ALB         12.877                 57.2 Ingreso medio alto
# 5 United Arab Emirates         ARE         11.044                 88.0       Ingreso alto
# 6            Argentina         ARG         17.716                 59.9       Ingreso alto

# La condición es ver los países donde hay menos de dos
# usuarios de internet por 1000 habitantes
filtro <- datos$Penetracion.Internet < 2
datos[filtro,]
#       Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos
# 12       Burundi         BDI         44.151                  1.3       Ingreso bajo
# 54       Eritrea         ERI         34.800                  0.9       Ingreso bajo
# 57      Ethiopia         ETH         32.925                  1.9       Ingreso bajo
# 66        Guinea         GIN         37.337                  1.6       Ingreso bajo
# 119      Myanmar         MMR         18.119                  1.6 Ingreso medio bajo
# 129        Niger         NER         49.661                  1.7       Ingreso bajo
# 157 Sierra Leone         SLE         36.729                  1.7       Ingreso bajo
# 159      Somalia         SOM         43.891                  1.5       Ingreso bajo
# 175  Timor-Leste         TLS         35.755                  1.1 Ingreso medio bajo

# Otro ejemplo: Países donde por cada 1000 habitantes hay
# 40 nacimientos por año
datos[datos$Tasa.Natalidad > 40,]
#          Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet     Grupo.Ingresos
# 3             Angola         AGO         45.985                 19.1 Ingreso medio alto
# 12           Burundi         BDI         44.151                  1.3       Ingreso bajo
# 15      Burkina Faso         BFA         40.551                  9.1       Ingreso bajo
# 37  Congo, Dem. Rep.         COD         42.394                  2.2       Ingreso bajo
# 67       Gambia, The         GMB         42.525                 14.0       Ingreso bajo
# 117             Mali         MLI         44.138                  3.5       Ingreso bajo
# 129            Niger         NER         49.661                  1.7       Ingreso bajo
# 130          Nigeria         NGA         40.045                 38.0 Ingreso medio bajo
# 159          Somalia         SOM         43.891                  1.5       Ingreso bajo
# 170             Chad         TCD         45.745                  2.3       Ingreso bajo
# 181           Uganda         UGA         43.474                 16.2       Ingreso bajo
# 194           Zambia         ZMB         40.471                 15.4 Ingreso medio bajo

# Juntando las dos condiciones anteriores
datos[datos$Tasa.Natalidad > 40 & datos$Penetracion.Internet < 2,]
#     Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet Grupo.Ingresos
# 12      Burundi         BDI         44.151                  1.3   Ingreso bajo
# 129       Niger         NER         49.661                  1.7   Ingreso bajo
# 159     Somalia         SOM         43.891                  1.5   Ingreso bajo

# Filtrando una columna de datos catégoricos dada una categoría
levels(datos$Grupo.Ingresos)
# [1] "Ingreso alto"       "Ingreso bajo"       "Ingreso medio alto" "Ingreso medio bajo"

# Filtemos a los grupos de ingreso alto
datos[datos$Grupo.Ingresos == "Ingreso alto",]
#               Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet Grupo.Ingresos
# 1                   Aruba         ABW         10.244             78.90000   Ingreso alto
# 5    United Arab Emirates         ARE         11.044             88.00000   Ingreso alto
# 6               Argentina         ARG         17.716             59.90000   Ingreso alto
# 8     Antigua and Barbuda         ATG         16.447             63.40000   Ingreso alto
# 9               Australia         AUS         13.200             83.00000   Ingreso alto
# 10                Austria         AUT          9.400             80.61880   Ingreso alto
# 13                Belgium         BEL         11.200             82.17020   Ingreso alto
# 18                Bahrain         BHR         15.040             90.00004   Ingreso alto
# 19           Bahamas, The         BHS         15.339             72.00000   Ingreso alto
# 23                Bermuda         BMU         10.400             95.30000   Ingreso alto
# 26               Barbados         BRB         12.188             73.00000   Ingreso alto
# 27      Brunei Darussalam         BRN         16.405             64.50000   Ingreso alto
# 31                 Canada         CAN         10.900             85.80000   Ingreso alto
# 32            Switzerland         CHE         10.200             86.34000   Ingreso alto
# 33                  Chile         CHL         13.385             66.50000   Ingreso alto
# 44         Cayman Islands         CYM         12.500             74.10000   Ingreso alto
# 45                 Cyprus         CYP         11.436             65.45480   Ingreso alto
# 46         Czech Republic         CZE         10.200             74.11040   Ingreso alto
# 47                Germany         DEU          8.500             84.17000   Ingreso alto
# 49                Denmark         DNK         10.000             94.62970   Ingreso alto
# 55                  Spain         ESP          9.100             71.63500   Ingreso alto
# 56                Estonia         EST         10.300             79.40000   Ingreso alto
# 58                Finland         FIN         10.700             91.51440   Ingreso alto
# 60                 France         FRA         12.300             81.91980   Ingreso alto
# 63         United Kingdom         GBR         12.200             89.84410   Ingreso alto
# 69      Equatorial Guinea         GNQ         35.362             16.40000   Ingreso alto
# 70                 Greece         GRC          8.500             59.86630   Ingreso alto
# 72              Greenland         GRL         14.500             65.80000   Ingreso alto
# 74                   Guam         GUM         17.389             65.40000   Ingreso alto
# 76   Hong Kong SAR, China         HKG          7.900             74.20000   Ingreso alto
# 78                Croatia         HRV          9.400             66.74760   Ingreso alto
# 80                Hungary         HUN          9.200             72.64390   Ingreso alto
# 83                Ireland         IRL         15.000             78.24770   Ingreso alto
# 86                Iceland         ISL         13.400             96.54680   Ingreso alto
# 87                 Israel         ISR         21.300             70.80000   Ingreso alto
# 88                  Italy         ITA          8.500             58.45930   Ingreso alto
# 91                  Japan         JPN          8.200             89.71000   Ingreso alto
# 97            Korea, Rep.         KOR          8.600             84.77000   Ingreso alto
# 98                 Kuwait         KWT         20.575             75.46000   Ingreso alto
# 104         Liechtenstein         LIE          9.200             93.80000   Ingreso alto
# 107             Lithuania         LTU         10.100             68.45290   Ingreso alto
# 108            Luxembourg         LUX         11.300             93.77650   Ingreso alto
# 109                Latvia         LVA         10.200             75.23440   Ingreso alto
# 110      Macao SAR, China         MAC         11.256             65.80000   Ingreso alto
# 118                 Malta         MLT          9.500             68.91380   Ingreso alto
# 128         New Caledonia         NCL         17.000             66.00000   Ingreso alto
# 132           Netherlands         NLD         10.200             93.95640   Ingreso alto
# 133                Norway         NOR         11.600             95.05340   Ingreso alto
# 135           New Zealand         NZL         13.120             82.78000   Ingreso alto
# 136                  Oman         OMN         20.419             66.45000   Ingreso alto
# 142                Poland         POL          9.600             62.84920   Ingreso alto
# 143           Puerto Rico         PRI         10.800             73.90000   Ingreso alto
# 144              Portugal         PRT          7.900             62.09560   Ingreso alto
# 147      French Polynesia         PYF         16.393             56.80000   Ingreso alto
# 148                 Qatar         QAT         11.940             85.30000   Ingreso alto
# 150    Russian Federation         RUS         13.200             67.97000   Ingreso alto
# 152          Saudi Arabia         SAU         20.576             60.50000   Ingreso alto
# 155             Singapore         SGP          9.300             81.00000   Ingreso alto
# 164       Slovak Republic         SVK         10.100             77.88260   Ingreso alto
# 165              Slovenia         SVN         10.200             72.67560   Ingreso alto
# 166                Sweden         SWE         11.800             94.78360   Ingreso alto
# 168            Seychelles         SYC         18.600             50.40000   Ingreso alto
# 177   Trinidad and Tobago         TTO         14.590             63.80000   Ingreso alto
# 183               Uruguay         URY         14.374             57.69000   Ingreso alto
# 184         United States         USA         12.500             84.20000   Ingreso alto
# 187         Venezuela, RB         VEN         19.842             54.90000   Ingreso alto
# 188 Virgin Islands (U.S.)         VIR         10.700             45.30000   Ingreso alto

# Busquemos los datos de un país en específico
datos[datos$Nombre.Pais == "Malta",]
#     Nombre.Pais Codigo.Pais Tasa.Natalidad Penetracion.Internet Grupo.Ingresos
# 118       Malta         MLT            9.5              68.9138   Ingreso alto