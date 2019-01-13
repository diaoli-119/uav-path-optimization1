function bezpoints = rng59_t()

%bezier control points using rng(58) 54/4/3, num_path = 3
% minimize time, got rid of last two control points
%92.4451005486741,96.7304094374271;
%         100,100
%{
bezpoints = [3,3;4.74595753714790,8.69265109972376;
         6.49191507429579,14.3853021994475;
         11.7121116935234,14.9649251845329;
         16.9323083127511,15.5445481696183;
         21.2725739087470,17.7149174054187;
         25.6128395047429,19.8852866412190;
         30.5344107506839,21.4087751980734;
         35.4559819966249,22.9322637549278;
         39.6794187917403,25.4007767384245;
         43.9028555868558,27.8692897219212;
         48.5387051505693,30.0313718723785;
         53.1745547142828,32.1934540228358;
         57.5408346283515,34.3850855681590;
         61.9071145424203,36.5767171134823;
         66.0064393766206,39.6819375105252;
         70.1057642108208,42.7871579075682;
         71.9908878041208,47.5361912864657;
         73.8760113974208,52.2852246653632;
         74.4049205953804,57.2090573461720;
         74.9338297933399,62.1328900269808;
         75.6382363209383,67.1322607136231;
         76.3426428485367,72.1316314002654;
         78.0416201281999,74.4201297886017;
         79.7405974078631,76.7086281769380;
         80.4905846360339,84.0245150996781;
         81.2405718642048,91.3404020224182;
         83.1278031714108,93.0443203120260;
         85.0150344785365,94.7482386019211;
         88.7300675137236,95.7393240197871];
%}

%if min=10,max=15
bezpoints = [3,3;
    11.5376833483790,9.57349616398753;
    20.0753666967580,16.1469923279751;
    23.1788165206939,19.0269537299454;
    26.2822663446298,21.9069151319158;
    32.5355930772980,30.7260243792928;
    38.7889198099662,39.5451336266698;
    37.6566228217084,44.4249077800584;
    36.5243258334506,49.3046819334471;
    44.2366857983715,51.5110574549594;
    51.9490457632924,53.7174329764718;
    59.0421240296411,53.5274308752657;
    66.1352022959899,53.3374287740596;
    73.9371177241868,54.9828764905415;
    81.7390331523836,56.6283242070234;
    83.4153101195872,65.3410318445903;
    85.0915870867907,74.0537394821572;
    87.5046573590257,77.5334158286108;
    89.9177276312608,81.0130921750644;
    94.0337643823490,88.8756518424744];
    
%got rid of last two points
%98.1498011334373,96.7382115098845;
%    100,100]

end











