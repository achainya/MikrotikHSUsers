# dec/01/2015 10:19:02 by RouterOS 5.24
# software id = PE2V-XSRS
#
/ip hotspot user profile
set [ find default=yes ] idle-timeout=none keepalive-timeout=2m name=default \
    shared-users=1 status-autorefresh=1m transparent-proxy=no
add address-pool=hs-pool-2 advertise=no idle-timeout=none keepalive-timeout=\
    2m name=speedy384_airmax4 open-status-page=always rate-limit=\
    "256k/384k 512k/768k 192k/288k 16/16 8 128k/192k" shared-users=1 \
    status-autorefresh=1m transparent-proxy=yes
add address-pool=hs-pool-2 idle-timeout=none keepalive-timeout=2m name=\
    speedy512_airmax4 rate-limit=\
    "256k/512k 512k/1024k 192k/384k 16/16 8 128k/256k" shared-users=1 \
    status-autorefresh=1m transparent-proxy=no
add address-pool=hs-pool-2 idle-timeout=none keepalive-timeout=2m name=\
    "speedy 2M" rate-limit="384k/1024k 768k/2048k 288k/768k 16/16 8 96k/512k" \
    shared-users=1 status-autorefresh=1m transparent-proxy=no
add address-pool=hs-pool-2 idle-timeout=none keepalive-timeout=2m name=\
    "speedy 1M" rate-limit=\
    "256k/1024k 512k/2048k 192k/768k 16/16 8 128k/512k" shared-users=1 \
    status-autorefresh=1m transparent-proxy=no
/ip hotspot user
add disabled=no name=edison password=poiqwe profile=default
add disabled=no name=jeanpool password=qwepoi profile=default server=airmax4
add comment="{SYSTEM - dec/01/2015}{NOV} jr. azangaro/tupac cel: 981852887 pag\
    a 22/02 //no limitar" disabled=yes name=willy password=barrios profile=\
    "speedy 1M" server=airmax4
add comment="{dec/05/2015}{NOV} deshabilitado 19/01/15" disabled=no name=\
    jonatan password=choque profile="speedy 1M" server=airmax4
add comment="{dec/05/2015}{NOV} [Jr Apurimac 839] <951673874> (JOHN) //   " \
    disabled=no name=german1 password=choque profile="speedy 1M" server=\
    airmax4
add comment="{dec/05/2015}{NOV} jr. sucre ramon castilla cel:951676688" \
    disabled=no name=lourdes password=casagrande profile="speedy 2M" server=\
    airmax4
add comment="{feb/05/2016}NOV DIC ENE} [Jr Pierola] (JAIME) // ::04-04 " \
    disabled=no name=henry password=kissingger profile="speedy 2M" server=\
    airmax4
add comment="{jan/05/2016}{OCT} {NOV} {DIC} [Jr Lambayeque 531] <951977205> //\
    TP7510   28/02/2015" disabled=no name=mhtintaya password=tintaya profile=\
    "speedy 2M" server=airmax4
add comment="{dec/05/2015}{NOV} av san martin 221 cel: 955660138 14/05" \
    disabled=no name=eddy password=laura profile="speedy 2M" server=airmax4
add comment="{dec/05/2015}-{NOV}  jr. huaqncane 1221 cel: 974458931 02/07" \
    disabled=no name=yasnely password=machaca profile="speedy 2M" server=\
    airmax4
add comment="{feb/04/2015}{NOV} {DIC} {ENE} pierola 528 cel:951756615 07/08" \
    disabled=no name=mario password=hugo profile=speedy512_airmax4 server=\
    airmax4
add comment="{dec/18/2015}{NOV DIC18}  san martin con gonzales prada cel:95032\
    4208  10/08" disabled=no name=veronica password=carcasi profile=\
    "speedy 1M" server=airmax4
add comment="{FEB} Jr. Benigno Ballon 315 <930314482>" disabled=yes name=\
    florencio password=huanca profile=speedy512_airmax4 server=airmax4
add comment="{jan/05/2016}{AGO} {OCT} {NOV}{DIC} [Jr San Martin Jr Apurimac] <\
    #943909522> (ARTURO) // ::02-08" disabled=no name=edgar password=ramirez \
    profile="speedy 2M" server=airmax4
add comment="{feb/05/2015} {NOV DIC ENE} [Jr Mama Ocllo 966] <942995240> (JVC)\
    \_//tp7510.254 ::03-01" disabled=no name=hermelinda password=yanarico \
    profile="speedy 2M" server=airmax4
add comment="{MAY} [Jr Lambayeque] <> (JOHN) //agM5.20 ::05-01" disabled=yes \
    name=eloy password=musaja profile=default server=airmax4
add comment=\
    "{dec/05/2015}{NOV} [Jr atahualpa 349] <951406690> (JOHN) // ::14-01" \
    disabled=no name=sebastian password=quispe profile="speedy 2M" server=\
    airmax4
add comment="{jan/05/2016}{OCT-NOV-DIC-05ENER} Edwinpas Abado Jr. Sucre 709-C \
    l: 950909731" disabled=no name=edwinpas password=epas1 profile=\
    "speedy 2M" server=airmax4
add comment="{dec/05/2015}{SET OCT NOV} san martin 517 cel:951318411  15/02" \
    disabled=no name=yeni password=condori profile="speedy 1M" server=airmax4
add comment="{MAY} av. maestro 1136 cel: 950757420  21/02/15 DEVUELTO" \
    disabled=yes name=efrain password=quisocala profile="speedy 1M" server=\
    airmax4
add comment="{MAY} joel ::05-03" disabled=yes name=vi96 password=sanfernando \
    profile="speedy 1M" server=airmax4
add comment="{feb/17/2016}{NOV DIC ENER}  pje pierola cel: 950798747 23/03/201\
    5 \$20 soles TUBO\$ activado 5 de nov" disabled=no name=cari password=\
    delfin profile="speedy 1M" server=airmax4
add comment="{****ago} {***jul16} {****may Debe Junio Yuri paga el 16 de junio\
    } Ref Yuri 30/03/2015 debe 200 soles" disabled=no name=vidal password=\
    soncco profile="speedy 2M" server=airmax4
add comment="{SYSTEMsep/04/2015}{AGO} {****set} [] <> (CRISTIAN) // ::" \
    disabled=yes name=edilberto password=quispe profile="speedy 1M" server=\
    airmax4
add disabled=no name=cristian password=qwepoi profile=default
add comment="{jan/02/2016}{JUL AGO SET} {***oct nov dic}  creado por cristian \
    no paga 08/04 " disabled=no name=ricardo password=aroni profile=\
    "speedy 1M" server=airmax4
add comment="{JUN} pje belen cel:983827000  10/04/015" disabled=yes name=\
    walter password=cayo profile="speedy 1M" server=airmax4
add comment="{MAY}  pizarro con ircunvalacion cel" disabled=yes name=edgard \
    password=coari profile=default server=airmax4
add comment="{dec/05/2015}{NOV} Eddely Huacasi av. peru con jr. huancane" \
    disabled=no name=eddely password=huacasi profile="speedy 1M" server=\
    airmax4
add comment="{dec/04/2015}{SET-OCT-NOV} Carlitos 28/04/2015 " disabled=no \
    name=adan password=aquino profile="speedy 1M" server=airmax4
add comment="{****may} {****jun} {****jul} [] <> (YURI) // ::11-05" disabled=\
    yes name=justo password=machaca profile="speedy 2M" server=airmax4
add comment=\
    "{dec/05/2015}{NOV } av tacna 1420 cel: 965656058 12/05/2015 colgada" \
    disabled=no name=cristhian password=galindo profile="speedy 1M" server=\
    airmax4
add comment=\
    "{dec/04/2015}{NOV} jr. aZANGARO con miraflores cel:981558855 13/05/2015" \
    disabled=no name=franklin password=huanca profile="speedy 2M" server=\
    airmax4
add comment="{dic/18/2015}{NOV} {DIC18} jr san martin 222 cel:990466784 reacti\
    vado 18/11/2015" disabled=no name=david password=soto profile="speedy 2M" \
    server=airmax4
add comment="{dec/08/2015}{NOV} [Jr Apurimac 578] <997123085> (JOHN) //ag23.16\
    8 ::20-06" disabled=no name=ceo password=copiza-jp profile="speedy 2M" \
    server=airmax4
add comment="{dec/05/2015} {NOV-DIC} [] <> (YURI) // ::22-06" disabled=no \
    name=oscar password=enriquez profile="speedy 1M" server=airmax4
add comment="{jan/05/2016}{OCT NOV DIC} Test para Chai\F1a 26/06/2015" \
    disabled=no name=josearmando password=roque profile="speedy 1M"
add comment="{dec/16/2015}{NOV16} Antenor Rojas [] (JOEL) // ::17-07 " \
    disabled=no name=rojas password=rojas1 profile="speedy 2M" server=airmax4
add comment=\
    "{SYSTEM - oct/05/2015} creado por yuri 15/08/2015   paga 20 soles" \
    disabled=yes name=aquino password=aquino profile="speedy 1M" server=\
    airmax4
add comment="{SYSTEM - nov/21/2015}{AGO SET OCT NOV 21} bordadores cel: 951550\
    561 21/08/2015" disabled=yes name=juan password=loza profile=default \
    server=airmax4
add comment="{SYSTEM - nov/05/2015}{OCT} carlitos" disabled=yes name=carlos \
    password=martir profile=default server=airmax4
add comment="{SYSTEM - oct/05/2015} {SET}jr miraflores 1055 cel:989808270 19/0\
    9/2015 grilla23 ip:27" disabled=yes name=cesar password=zea profile=\
    default server=airmax4
add comment="{jan/30/2015}{NOV} creado por carlitos 26/09/2015 no paga" \
    disabled=no name=joel password=lipa profile="speedy 1M" server=airmax4
add comment="{dec/18/2015} { NOV DIC18} sucre 1075 cel: tp link ip:44 colgada \
    NO LIMITAR NO HAY LINEA DE VISTA" disabled=no name=joaquin password=\
    mamani profile=default server=airmax4
add comment="{dec/25/2015} {DIC24}jr. pierola con av maestro cel:975806124 gri\
    lla23 ip:47 " disabled=no name=raul password=machaca profile="speedy 1M" \
    server=airmax4
add comment="{de/27/2015} {DIC26} cambiado de airmax19 cel:#978002050 airgrid2\
    3 ip:20 yuri" disabled=no name=ANIBAL password=JESSICA profile=default \
    server=airmax4
