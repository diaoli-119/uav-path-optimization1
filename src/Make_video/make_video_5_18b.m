function [Bez_points, num_path, num_segments, delta_t, t, solution1, solution2, solution3, solution4, solution5,...
    Path_bez, ms_i, uav_ws, n_obs, obs, obs_rad] = make_video_5_18b()

%inputs
Bez_points = [5,5;10.2930535614017,4.65662936699925;15.5861071228034,4.31325873399851;18.9227582502760,8.76242847844546;22.2594093777486,13.2115982228924;23.5489039575191,19.6928367049170;24.8383985372897,26.1740751869415;25.8943858502017,29.7723234822887;26.9503731631137,33.3705717776359;32.0490051035546,37.4751600577717;37.1476370439956,41.5797483379075;43.2718096620627,47.4210520545447;49.3959822801299,53.2623557711820;52.0001624772463,55.9869802460948;54.6043426743627,58.7116047210076;57.5585945911898,64.2656696347794;60.5128465080168,69.8197345485511;59.2643888045609,73.8599755595592;58.0159311011050,77.9002165705673;61.6482505749456,83.3131172726241;65.2805700487863,88.7260179746809;66.7702229516912,92.5703753012906;68.2598758545962,96.4147326279002;75.0870846349281,97.1880821471346;81.9142934152600,97.9614316663690;85.3073174603232,99.5582684863425;88.7003415053864,101.155105306316;92.6087577633240,101.272610780552;96.5171740212616,101.390116254788;100,100];

num_path = 3;
num_segments = 15; %0;
delta_t = 0.1;
t = 0 : delta_t : 1;

solution1 = [5,5.00000000000000;8.75187198741512,4.75659127370350;12.5037439748137,4.51318254701751;10.2555725639926,13.3806801875190;8.00740115362693,22.2481778250531;18.7065021426543,22.2669667054193;15.5861071228034,4.31325873399851;18.9227582502760,8.76242847844546;22.2594093777486,13.2115982228924;22.6937904564969,17.8866155110251;23.1281715352452,22.5616327991578;30.1502405228062,23.1102517778282;22.2594093777486,13.2115982228924;23.5488358128043,19.6927197676783;24.8382622478600,26.1738413124643;25.8802536538491,29.7761674928884;26.9222450598383,33.3784936733124;32.2001953596525,37.3185497177184;24.8383985372897,26.1740751869415;25.8943858502017,29.7723234822887;26.9503731631137,33.3705717776359;32.0490051035548,37.4751600577719;37.1476370439959,41.5797483379080;43.1996649470101,47.4998079652701;26.9503731631137,33.3705717776359;32.0490051035546,37.4751600577717;37.1476370439956,41.5797483379075;43.2664808783004,47.4269176180072;49.3853247126049,53.2740868981065;54.2285725642019,57.6650846942586;37.1476370439956,41.5797483379075;43.2727630132061,47.4200018470229;49.3978889824166,53.2602553561384;53.8551309612189,57.3395396994444;58.3123729400211,61.4188240427505;62.0130747617262,64.8628843170599;49.3959822801299,53.2623557711820;53.9977197281410,57.8988042733351;58.5994571750884,62.5352527764750;60.5084630253395,66.7579669765132;62.4174688743229,70.9806811753795;73.7173404361375,72.1735398522181;54.6043426743627,58.7116047210076;58.0811638796890,64.4188181613314;61.5579850864505,70.1260316104227;67.1644196056374,71.0679146953335;72.7708541243254,72.0097977811626;76.7280703320133,76.3387355656615;60.5128465080168,69.8197345485511;60.1951885089413,73.7799618610285;59.8775305098657,77.7401891735059;62.5153877074342,83.3996407124857;65.1532449050027,89.0590922514655;66.8063624474327,92.4320633041269;58.0159311011050,77.9002165705673;59.5117275357756,83.7624529677176;61.0075239746659,89.6246893649780;67.1840210366064,87.7445707001993;73.3605181023701,85.8644520238518;75.7470538174728,97.4292440294298;65.2805700487863,88.7260179746809;66.7702229516912,92.5703753012906;68.2598758545961,96.4147326279000;75.0864119364159,97.1875861924648;81.9129480182357,97.9604397570295;85.6353624552943,98.4144560162418;68.2598758545962,96.4147326279002;75.0873081817398,97.1882495017658;81.9147405088834,97.9617663756313;85.6380957170021,98.4080017330655;89.3614509251208,98.8542370904996;96.1321680831113,99.5755016574844;81.9142934152600,97.9614316663690;83.7462580634019,101.401115808002;85.5782227115430,104.840799949633;92.3907766163804,99.6296588042021;99.2033305212189,94.4185176587716;99.9999366198478,99.9999942803962];

solution2 = [5,5;10.2930535614017,4.65662936699925;15.5861071228037,4.31325873399846;18.9227582348213,8.76242858587528;22.2594093468402,13.2115984377520;26.8671084454189,18.0110092518747;15.5861071228034,4.31325873399851;18.9227582502760,8.76242847844546;22.2594093777486,13.2115982228924;22.6937904564462,17.8866155110612;23.1281715351437,22.5616327992297;30.1502405228062,23.1102517778282;22.2594087694400,13.2115934744071;25.6376441615485,18.7681810471871;29.0158795535574,24.3247686915383;36.0272893748818,23.2792154420064;43.0386854960423,22.2334400954996;47.1728203046127,18.7772716364303;24.8383985372897,26.1740751869415;30.5455122844552,23.7252259126610;36.2526260317907,21.2763766414949;39.8803537605889,27.9162985653015;43.5080814862327,34.5562204898957;47.0022341124473,36.9678797617881;26.9503731631137,33.3705717776359;32.0490051035547,37.4751600577717;37.1476370439956,41.5797483379075;43.2664872177790,47.4269106440150;49.3853373915625,53.2740729501226;54.2285632957346,57.6650947104304;37.1476370439956,41.5797483379075;40.8722856073038,42.0918859049108;44.5969341706120,42.6040234719142;50.9705224864769,44.1459070192279;57.3441108023421,45.6877905665415;59.7993709122352,48.5222566173109;49.3959822801299,53.2623557711820;50.6923920343174,56.7811370591351;51.9888017885050,60.2999183470881;57.2123149381775,64.1958126601791;62.4358280878508,68.0917069732697;65.4309592742732,62.4954429149271;54.6043426743627,58.7116047210076;57.6804413265007,64.6142993307256;60.7565399788073,70.5169939427762;64.9717220162887,70.8099891434705;69.1869040536856,71.1029843474502;79.3404983297926,74.6166284508244;60.5128465080168,69.8197345485511;66.8315784892386,71.0206659433775;73.1503104703027,72.2215973382559;76.7054916363867,74.3174038475790;80.2606728016452,76.4132103563861;81.8038312506440,82.6737794473796;58.0159311011050,77.9002165705673;62.9357897746882,82.6068533761228;67.8556484482715,87.3134901816782;72.5155479292713,83.0767668291279;77.1754474102592,78.8400434765718;81.5994059357282,83.1495757836935;65.2805700487863,88.7260179746809;66.8636357814085,92.6404672669772;68.4467015140310,96.5549165592723;75.1845364343041,97.2401351771043;81.9223713545783,97.9253537949351;85.6407022385131,98.4116827278263;68.2598758545962,96.4147326279002;75.0873532851013,97.1882832673311;81.9148307156063,97.9618339067620;85.6382336091913,98.4076712001043;89.3616365027762,98.8535084934466;95.5767346384845,99.5145109350959;81.9142934152600,97.9614316663690;83.9273977945138,101.157717227809;85.9405021737676,104.354002789250;92.8341933945766,104.919628282879;99.7278846153856,105.485253776507;99.9999707780210,99.9999930053947];

solution3 = [5,5;2.85751830657986,8.81930206475844;0.715036613159718,12.6386041295169;10.1639718285898,18.9602352511915;19.6129070440198,25.2818663728661;21.8402268732401,28.2987432982539;15.5861071228034,4.31325873399851;18.9227582502760,8.76242847844546;22.2594093777486,13.2115982228924;23.2848667773369,17.6805773837987;24.3103241769253,22.1495565447051;26.3038697339309,27.2043025999153;22.2594093777486,13.2115982228924;23.5489039575191,19.6928367049170;24.8383985372894,26.1740751869408;25.8803546535906,29.7764115757189;26.9223107698905,33.3787479644995;32.2006981397772,37.3183924845269;24.8383985372897,26.1740751869415;25.8943859456198,29.7723234542861;26.9503733539498,33.3705717216307;32.0490040598215,37.4751611046054;37.1476347656932,41.5797504875801;43.1996658910654,47.4998069382228;26.9503731631137,33.3705717776359;32.0490051035547,37.4751600577717;37.1476370439956,41.5797483379075;38.2036243569076,45.1779966332546;39.2596116698196,48.7762449286018;37.0751709188137,54.9646599977227;37.1476370439956,41.5797483379075;43.2718096620627,47.4210520545447;49.3959822801301,53.2623557711822;54.2183390545230,57.6760906769764;59.0406958289160,62.0898255827709;64.2499573684142,66.9323028820442;49.3959822801299,53.2623557711820;52.0001624772463,55.9869802460948;54.6043426743635,58.7116047210090;59.1913819757304,63.4149424970290;63.7784212770963,68.1182802730590;66.9034781945592,71.0766095103064;54.6043426743627,58.7116047210076;57.5585945911898,64.2656696347794;60.5128465080168,69.8197345485512;60.4842869058760,76.0225763017650;60.4557273037352,82.2254180549847;65.3494519097370,84.0038051307991;60.5128465080168,69.8197345485511;60.1951837422610,73.7799626077563;59.8775209765052,77.7401906669615;62.5153956753857,83.3996366491586;65.1532703742662,89.0590826313556;66.8063624129241,92.4320632076756;58.0159311011050,77.9002165705673;61.6482505749456,83.3131172726241;65.2805700487870,88.7260179746744;66.9368783795833,92.7645952712265;68.5931867103862,96.8031725677885;75.4278844903634,96.7952313903573;65.2805700487863,88.7260179746809;66.8965293443010,92.7073415072492;68.5124886398158,96.6886650398176;75.8545128050241,97.3295054369798;83.1965369702322,97.9703458341422;90.7634886339889,98.9685184700266;68.2598758545962,96.4147326279002;75.0871785592914,97.1881524623820;81.9144812639865,97.9615722968639;85.6376992002247,98.4089515535073;89.3609171364630,98.8563308101507;97.9299779397633,99.7728628449394;81.9142934152600,97.9614316663690;83.9688128483461,101.098542837443;86.0233322814321,104.235654008518;92.8827658240877,104.908913961625;99.7421993667435,105.582173914733;100.000047000337,100.000031063245];

solution4 = [5,5;10.2934890047671,4.65664151120210;15.5869780095341,4.31328302240407;18.9225886925101,8.76320284523054;22.2581993754855,13.2131226680574;26.8671809468262,18.0119655027236;15.5861071228034,4.31325873399851;19.7324136897989,1.68862952238398;23.8787202567943,-0.935999689230547;29.0597104044882,-1.71149354723704;34.2407005521820,-2.48698740524354;36.3426995562550,3.69051267487761;22.2594093777486,13.2115982228924;25.1441348976935,4.57381622485025;28.0288604176385,-4.06396577319192;31.1340903575969,-1.43635853272231;34.2393202975554,1.19124870774803;40.7069716620684,0.0876239256776518;24.8383808541871,26.1740694715174;28.2447812580050,13.8449167669099;31.6511816618331,1.51576406006388;36.8925951946450,11.7350976973972;42.1340087276343,21.9544313350418;45.2710952062114,19.8007152584313;26.9503731631137,28.1048726811028;35.2472984595458,23.5579782091085;43.5442237559793,19.0110837371290;47.3932610306167,21.0058394722730;51.2422983056018,23.0005952049952;55.8431894986561,30.4830498121761;37.1476370439956,41.5797483379075;43.1335888196925,36.9481369153379;49.1195405953895,32.3165254927683;52.8619481397395,32.0780181083334;56.6043556840896,31.8395107238984;59.5509865261968,38.9188205418222;49.3959822801299,53.2623557711820;51.0646255792576,48.0654261987981;52.7332688783852,42.8684966264142;57.1823769218624,40.4808346181584;61.6314849653395,38.0931726099027;66.7065561853228,37.6721252124079;54.6043426743627,58.7116047210076;59.8681578749753,53.0306394437553;65.1319730750106,47.3496741664112;69.8968590755540,49.4883393729348;74.6617450759130,51.6270045796703;79.0949182872612,53.4345106993754;60.5128465080168,69.8197345485511;64.9760158791037,63.1451048417062;69.4391852505382,56.4704751386414;72.6444149430100,53.7159993069449;75.8496446355045,50.9615234739877;82.0407001061224,54.7387589279008;58.0159311011050,77.9002165705673;71.0423159389127,71.6050090772529;84.0687007765799,65.3098015839344;80.4947317167466,64.1737303922824;76.9207626569390,63.0376592026770;88.4879437496261,66.2419631477796;65.2805700487863,88.7260179746809;70.0235681905620,84.7749408048679;74.7665663323377,80.8238636350549;78.7287502155098,80.0611469126684;82.6909340986818,79.2984301902818;88.6587823845283,80.5083463771478;67.6951486678978,96.1690549408916;71.2134124836786,84.6875035672856;74.7316762982772,73.2059521941207;81.0869094889620,76.5035814358296;87.4421426767653,79.8012106814397;90.7681855848886,81.6979444199920;81.9142934152600,97.9614316663690;83.8271841895920,101.295311152025;85.7400749639238,104.629190637681;92.5069307991127,99.4340049579447;99.2737866343010,94.2388192782081;100.000002293884,100.000019536294];

solution5 = [5,5;1.06265369085401,13.8030558299390;-2.87469261829197,22.6061116598780;-1.59314566055521,26.2215404413631;-0.311598702818443,29.8369692228483;5.54501325311227,32.9129480652704;15.5861071228034,4.31325873399851;6.04695266295104,13.7576603834327;-3.49220179663664,23.2020620328434;-2.75125225492741,19.5231396745969;-2.01030271049479,15.8442173162000;-1.77588918648657,27.6521245114525;22.2594093777486,13.2115982228924;23.5487360804399,19.6928911217272;24.8380627831310,26.1741840205611;25.8802684783865,29.7764482119802;26.9224741736421,33.3787124033996;32.2005310757813,37.3185789213459;24.8217945119510,26.1740751869415;21.5344852747340,29.6315680836586;18.2471760364941,33.0890609801141;14.0604205625519,36.5071032890595;9.87366509035068,39.9251455974302;8.97797265598273,46.2338582720280;26.9503731631137,33.3705717776359;22.4316094180640,38.8149134362628;17.9128456737360,44.2592550937597;12.7264585548216,46.6291185404711;7.54007144189242,48.9989819851663;12.8777223386457,55.0034218632117;37.1476370439956,41.5797483379075;26.6073321897033,38.7008352797877;16.0670273352177,35.8219222217626;23.8800081651265,47.0154674551551;31.6929889950241,58.2090126885752;28.5840003202725,60.3062474937980;49.3959822801299,53.2623557711820;41.5811981215259,53.3591466250391;33.7664139629218,53.4559374788962;36.7642196565802,64.8828503335339;39.7620253502386,76.3097631881715;38.0727416075086,72.9615593331429;54.6043426743627,58.7116047210076;49.2997851125653,64.7303154443559;43.9952275507679,70.7490261677041;51.2635011714172,72.7979404342418;58.5317747920691,74.8468547007775;60.7142167205064,77.8963545615563;60.5128465080168,69.8197345485511;59.2643888045609,73.8599755595592;58.0159311011050,77.9002165705673;62.9357897746882,82.6068533761228;67.8556484482714,87.3134901816782;71.7894771985960,83.9824850021560;58.0159311011050,77.9002165705673;61.8212097279558,83.9919033829747;65.6264883548271,90.0835901952702;67.3632736107744,93.6316306347939;69.1000588667196,97.1796710740747;80.9041047209278,97.6957197856515;65.2805700487863,88.7260179746809;66.9453236174827,92.8158612477772;68.6100771861640,96.9057045208717;77.1511239809969,97.4879946370855;85.6921707758237,98.0702847532986;92.0640942161349,99.0595935667482;68.2598758545962,96.4147326279002;75.0870846349281,97.1880821471346;81.9142934152600,97.9614316663690;85.6374116724332,98.4096397025805;89.3605299296063,98.8578477387918;99.4401488351266,99.9385762697578;81.9142934152600,97.9614316663690;83.2815784498497,101.934089907247;84.6488634844391,105.906748148125;91.9956332392423,104.869414543643;99.3424029940453,103.832080939161;99.9999748315381,99.9999595447082];

Path_bez = [0,0;1.00293053561402,0.946566293669993;2.01172214245607,1.78626517467997;3.02637482052616,2.51909664302993;4.04688856982428,3.14506069871988;5.07326339035043,3.66415734174981;6.10549928210462,4.07638657211973;7.14359624508684,4.38174838982963;8.18755427929710,4.58024279487952;9.23737338473539,4.67186978726940;10.2930535614017,4.65662936699925;10.2930535614017,4.65662936699925;11.3321002493428,4.63588064417358;12.3320188886052,4.71098272889686;13.2928094791891,4.88193562116910;14.2144720210944,5.14873932099029;15.0970065143211,5.51139382836043;15.9404129588693,5.96989914327953;16.7446913547388,6.52425526574758;17.5098417019298,7.17446219576459;18.2358640004422,7.92051993333055;18.9227582502760,8.76242847844546;18.9227582502760,8.76242847844546;19.5696169102935,9.67258311471063;20.1755324393569,10.6233791257274;20.7405048374664,11.6148165114956;21.2645341046217,12.6468952720154;21.7476202408231,13.7196154072868;22.1897632460704,14.8329769173097;22.5909631203636,15.9869798020842;22.9512198637028,17.1816240616103;23.2705334760880,18.4169096958878;23.5489039575191,19.6928367049170;23.5489039575191,19.6928367049170;23.8044678008047,20.9602544994551;24.0553614987530,22.1700124902597;24.3015850513642,23.3221106773307;24.5431384586382,24.4165490606682;24.7800217205751,25.4533276402722;25.0122348371747,26.4324464161426;25.2397778084372,27.3539053882794;25.4626506343626,28.2177045566827;25.6808533149507,29.0238439213525;25.8943858502017,29.7723234822887;25.8943858502017,29.7723234822887;26.1460097590594,30.4970365412060;26.4784865604677,31.2318763998191;26.8918162544265,31.9768430581280;27.3859988409359,32.7319365161326;27.9610343199959,33.4971567738330;28.6169226916065,34.2725038312292;29.3536639557677,35.0579776883212;30.1712581124794,35.8535783451089;31.0697051617417,36.6593058015924;32.0490051035546,37.4751600577717;32.0490051035546,37.4751600577717;33.0789868984191,38.3134448681638;34.1294795068361,39.1864639872861;35.2004829288056,40.0942174151383;36.2919971643276,41.0367051517205;37.4040222134021,42.0139271970328;38.5365580760292,43.0258835510752;39.6896047522088,44.0725742138475;40.8631622419409,45.1539991853499;42.0572305452256,46.2701584655823;43.2718096620627,47.4210520545447;43.2718096620627,47.4210520545447;44.4614442614667,48.5581460054549;45.5806790124516,49.6329063715307;46.6295139150175,50.6453331527719;47.6079489691644,51.5954263491786;48.5159841748922,52.4831859607509;49.3536195322011,53.3086119874886;50.1208550410909,54.0717044293919;50.8176907015617,54.7724632864607;51.4441265136136,55.4108885586950;52.0001624772463,55.9869802460948;52.0001624772463,55.9869802460948;52.5244992338667,56.5601995454660;53.0558374248813,57.1900076536143;53.5941770502901,57.8764045705398;54.1395181100932,58.6193902962425;54.6918606042904,59.4189648307224;55.2512045328818,60.2751281739794;55.8175498958675,61.1878803260136;56.3908966932474,62.1572212868251;56.9712449250215,63.1831510564136;57.5585945911898,64.2656696347794;57.5585945911898,64.2656696347794;58.1074178783524,65.3613443785061;58.5721869731093,66.4267426441776;58.9529018754605,67.4618644317937;59.2495625854061,68.4667097413546;59.4621691029461,69.4412785728602;59.5907214280804,70.3855709263106;59.6352195608090,71.2995868017056;59.5956635011319,72.1833261990454;59.4720532490493,73.0367891183300;59.2643888045609,73.8599755595592;59.2643888045609,73.8599755595592;59.0635050356427,74.6817503586713;58.9602368102704,75.5309783516044;58.9545841284441,76.4076595383585;59.0465469901636,77.3117939189335;59.2361253954291,78.2433814933295;59.5233193442406,79.2024222615465;59.9081288365979,80.1889162235844;60.3905538725012,81.2028633794433;60.9705944519505,82.2442637291232;61.6482505749456,83.3131172726241;61.6482505749456,83.3131172726241;62.3532878040044,84.3800119792810;63.0154717016445,85.4155358184290;63.6348022678658,86.4196887900680;64.2112795026684,87.3924708941980;64.7449034060523,88.3338821308191;65.2356739780175,89.2439224999313;65.6835912185640,90.1225920015345;66.0886551276918,90.9698906356288;66.4508657054009,91.7858184022142;66.7702229516912,92.5703753012906;66.7702229516912,92.5703753012906;67.1215290910465,93.3085366885387;67.5795863479503,93.9852779196394;68.1443947224027,94.6005989945926;68.8159542144035,95.1544999133982;69.5942648239530,95.6469806760564;70.4793265510509,96.0780412825670;71.4711393956974,96.4476817329302;72.5697033578925,96.7559020271458;73.7750184376360,97.0027021652140;75.0870846349281,97.1880821471346;75.0870846349281,97.1880821471346;76.4181845436418,97.3509869239889;77.6806007576502,97.5303614468580;78.8743332769531,97.7262057157418;79.9993821015507,97.9385197306404;81.0557472314429,98.1673034915538;82.0434286666297,98.4125569984820;82.9624264071111,98.6742802514249;83.8127404528872,98.9524732503827;84.5943708039579,99.2471359953552;85.3073174603232,99.5582684863425;85.3073174603232,99.5582684863425;85.9910761914646,99.8628425368798;86.6851427668635,100.137829960502;87.3895171865198,100.383230757210;88.1041994504337,100.599044927003;88.8291895586050,100.785272469882;89.5644875110338,100.941913385845;90.3100933077202,101.068967674894;91.0660069486640,101.166435337028;91.8322284338653,101.234316372248;92.6087577633240,101.272610780552;92.6087577633240,101.272610780552;93.3861851121196,101.281035658109;94.1551006553311,101.259308101086;94.9155043929587,101.207428109482;95.6673963250022,101.125395683297;96.4107764514618,101.013210822532;97.1456447723374,100.870873527187;97.8720012876291,100.698383797261;98.5898459973367,100.495741632754;99.2991789014603,100.262947033667;100,100];

ms_i = 5;
uav_ws = 1.0;
%Make youtube video

%For static obstacle field, need:
%position, size of static obstacles

rng(1);
n_obs = 50; %number of static obstacles
obs = rand(n_obs,2)*90+5; %obstacle locations
rng(4); %for partially random obstacle size
obs_rad = 4-uav_ws +  rand(n_obs,1)*3; %obstacle radius

end