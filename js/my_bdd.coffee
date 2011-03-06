# here's a BDD for the connectedness function
# of subgraphs of a 4 by 4 grid

my_beads =
	0  : [40, 0, 0]
	1  : [40, 1, 1]
	2  : [39, 0, 1]
	3  : [38, 0, 2]
	4  : [38, 2, 1]
	5  : [37, 0, 3]
	6  : [37, 0, 4]
	7  : [37, 3, 4]
	8  : [36, 0, 5]
	9  : [36, 5, 6]
	10  : [36, 5, 3]
	11  : [36, 0, 7]
	12  : [36, 7, 4]
	13  : [35, 8, 9]
	14  : [35, 10, 12]
	15  : [35, 11, 12]
	16  : [34, 0, 13]
	17  : [34, 13, 9]
	18  : [34, 0, 14]
	19  : [34, 13, 15]
	20  : [34, 14, 12]
	21  : [33, 0, 16]
	22  : [33, 0, 17]
	23  : [33, 16, 18]
	24  : [33, 0, 18]
	25  : [33, 0, 20]
	26  : [33, 0, 19]
	27  : [33, 17, 20]
	28  : [33, 18, 20]
	29  : [33, 16, 19]
	30  : [32, 0, 21]
	31  : [32, 21, 16]
	32  : [32, 0, 22]
	33  : [32, 21, 24]
	34  : [32, 21, 26]
	35  : [32, 22, 17]
	36  : [32, 23, 18]
	37  : [32, 22, 25]
	38  : [32, 0, 23]
	39  : [32, 0, 27]
	40  : [32, 29, 28]
	41  : [32, 0, 29]
	42  : [32, 29, 19]
	43  : [32, 27, 20]
	44  : [31, 30, 33]
	45  : [31, 31, 36]
	46  : [31, 32, 37]
	47  : [31, 34, 37]
	48  : [31, 35, 43]
	49  : [31, 38, 36]
	50  : [31, 39, 43]
	51  : [31, 41, 40]
	52  : [31, 42, 43]
	53  : [30, 0, 44]
	54  : [30, 44, 33]
	55  : [30, 0, 45]
	56  : [30, 44, 46]
	57  : [30, 44, 49]
	58  : [30, 47, 37]
	59  : [30, 0, 47]
	60  : [30, 45, 48]
	61  : [30, 45, 36]
	62  : [30, 0, 51]
	63  : [30, 51, 40]
	64  : [30, 0, 52]
	65  : [30, 51, 50]
	66  : [30, 52, 43]
	67  : [29, 53, 56]
	68  : [29, 54, 58]
	69  : [29, 55, 60]
	70  : [29, 57, 65]
	71  : [29, 59, 58]
	72  : [29, 61, 66]
	73  : [29, 62, 65]
	74  : [29, 63, 66]
	75  : [29, 64, 66]
	76  : [28, 0, 67]
	77  : [28, 0, 68]
	78  : [28, 0, 69]
	79  : [28, 67, 56]
	80  : [28, 0, 70]
	81  : [28, 68, 58]
	82  : [28, 67, 71]
	83  : [28, 69, 60]
	84  : [28, 0, 72]
	85  : [28, 67, 73]
	86  : [28, 68, 74]
	87  : [28, 69, 75]
	88  : [28, 70, 65]
	89  : [28, 72, 66]
	90  : [27, 0, 78]
	91  : [27, 0, 76]
	92  : [27, 0, 82]
	93  : [27, 76, 78]
	94  : [27, 0, 79]
	95  : [27, 0, 77]
	96  : [27, 76, 80]
	97  : [27, 0, 80]
	98  : [27, 77, 84]
	99  : [27, 0, 84]
	100  : [27, 78, 84]
	101  : [27, 0, 89]
	102  : [27, 0, 81]
	103  : [27, 0, 83]
	104  : [27, 79, 83]
	105  : [27, 0, 87]
	106  : [27, 76, 85]
	107  : [27, 0, 85]
	108  : [27, 0, 88]
	109  : [27, 0, 86]
	110  : [27, 82, 87]
	111  : [27, 78, 87]
	112  : [27, 80, 88]
	113  : [27, 77, 86]
	114  : [27, 84, 89]
	115  : [27, 81, 89]
	116  : [27, 83, 89]
	117  : [27, 79, 88]
	118  : [26, 91, 76]
	119  : [26, 91, 97]
	120  : [26, 0, 95]
	121  : [26, 91, 90]
	122  : [26, 0, 91]
	123  : [26, 93, 78]
	124  : [26, 91, 107]
	125  : [26, 0, 92]
	126  : [26, 0, 94]
	127  : [26, 92, 82]
	128  : [26, 94, 79]
	129  : [26, 95, 77]
	130  : [26, 92, 105]
	131  : [26, 94, 103]
	132  : [26, 95, 99]
	133  : [26, 95, 109]
	134  : [26, 0, 102]
	135  : [26, 98, 84]
	136  : [26, 96, 80]
	137  : [26, 94, 108]
	138  : [26, 104, 83]
	139  : [26, 0, 93]
	140  : [26, 0, 98]
	141  : [26, 96, 100]
	142  : [26, 0, 96]
	143  : [26, 0, 104]
	144  : [26, 102, 101]
	145  : [26, 0, 110]
	146  : [26, 106, 111]
	147  : [26, 0, 106]
	148  : [26, 106, 112]
	149  : [26, 113, 86]
	150  : [26, 110, 87]
	151  : [26, 106, 85]
	152  : [26, 102, 81]
	153  : [26, 0, 113]
	154  : [26, 113, 114]
	155  : [26, 0, 117]
	156  : [26, 117, 88]
	157  : [26, 117, 116]
	158  : [26, 0, 115]
	159  : [26, 115, 89]
	160  : [25, 118, 123]
	161  : [25, 119, 132]
	162  : [25, 120, 132]
	163  : [25, 122, 121]
	164  : [25, 124, 130]
	165  : [25, 125, 130]
	166  : [25, 126, 131]
	167  : [25, 127, 150]
	168  : [25, 128, 138]
	169  : [25, 129, 135]
	170  : [25, 133, 144]
	171  : [25, 134, 144]
	172  : [25, 136, 135]
	173  : [25, 137, 144]
	174  : [25, 139, 123]
	175  : [25, 140, 135]
	176  : [25, 142, 141]
	177  : [25, 143, 138]
	178  : [25, 145, 150]
	179  : [25, 147, 146]
	180  : [25, 148, 154]
	181  : [25, 149, 159]
	182  : [25, 151, 150]
	183  : [25, 152, 159]
	184  : [25, 153, 154]
	185  : [25, 155, 157]
	186  : [25, 156, 159]
	187  : [25, 158, 159]
	188  : [24, 0, 161]
	189  : [24, 163, 162]
	190  : [24, 0, 163]
	191  : [24, 0, 160]
	192  : [24, 0, 164]
	193  : [24, 163, 165]
	194  : [24, 164, 130]
	195  : [24, 166, 131]
	196  : [24, 161, 132]
	197  : [24, 163, 121]
	198  : [24, 160, 167]
	199  : [24, 0, 168]
	200  : [24, 160, 169]
	201  : [24, 0, 166]
	202  : [24, 164, 170]
	203  : [24, 166, 171]
	204  : [24, 0, 172]
	205  : [24, 0, 173]
	206  : [24, 163, 174]
	207  : [24, 176, 175]
	208  : [24, 166, 177]
	209  : [24, 160, 123]
	210  : [24, 172, 135]
	211  : [24, 168, 138]
	212  : [24, 179, 178]
	213  : [24, 180, 154]
	214  : [24, 179, 146]
	215  : [24, 173, 144]
	216  : [24, 182, 181]
	217  : [24, 0, 182]
	218  : [24, 168, 183]
	219  : [24, 179, 184]
	220  : [24, 0, 179]
	221  : [24, 176, 141]
	222  : [24, 0, 176]
	223  : [24, 185, 157]
	224  : [24, 0, 186]
	225  : [24, 0, 185]
	226  : [24, 182, 150]
	227  : [24, 0, 180]
	228  : [24, 185, 187]
	229  : [24, 186, 159]
	230  : [23, 188, 196]
	231  : [23, 190, 189]
	232  : [23, 191, 200]
	233  : [23, 192, 202]
	234  : [23, 193, 203]
	235  : [23, 194, 215]
	236  : [23, 195, 215]
	237  : [23, 197, 196]
	238  : [23, 198, 218]
	239  : [23, 199, 218]
	240  : [23, 201, 203]
	241  : [23, 204, 210]
	242  : [23, 205, 215]
	243  : [23, 206, 207]
	244  : [23, 208, 228]
	245  : [23, 209, 210]
	246  : [23, 211, 229]
	247  : [23, 212, 228]
	248  : [23, 214, 213]
	249  : [23, 217, 216]
	250  : [23, 220, 219]
	251  : [23, 221, 210]
	252  : [23, 222, 207]
	253  : [23, 223, 229]
	254  : [23, 224, 229]
	255  : [23, 225, 228]
	256  : [23, 226, 229]
	257  : [23, 227, 213]
	258  : [22, 231, 230]
	259  : [22, 0, 232]
	260  : [22, 0, 231]
	261  : [22, 233, 202]
	262  : [22, 234, 203]
	263  : [22, 231, 189]
	264  : [22, 232, 200]
	265  : [22, 0, 235]
	266  : [22, 237, 236]
	267  : [22, 0, 237]
	268  : [22, 0, 238]
	269  : [22, 232, 239]
	270  : [22, 0, 234]
	271  : [22, 231, 240]
	272  : [22, 0, 233]
	273  : [22, 232, 241]
	274  : [22, 233, 242]
	275  : [22, 0, 243]
	276  : [22, 243, 207]
	277  : [22, 243, 244]
	278  : [22, 237, 196]
	279  : [22, 0, 245]
	280  : [22, 245, 210]
	281  : [22, 245, 246]
	282  : [22, 0, 247]
	283  : [22, 0, 248]
	284  : [22, 0, 249]
	285  : [22, 0, 250]
	286  : [22, 237, 251]
	287  : [22, 231, 252]
	288  : [22, 235, 215]
	289  : [22, 238, 218]
	290  : [22, 248, 213]
	291  : [22, 249, 216]
	292  : [22, 250, 219]
	293  : [22, 248, 253]
	294  : [22, 249, 254]
	295  : [22, 250, 255]
	296  : [22, 0, 256]
	297  : [22, 250, 257]
	298  : [22, 247, 228]
	299  : [22, 256, 229]
	300  : [21, 259, 269]
	301  : [21, 260, 271]
	302  : [21, 275, 277]
	303  : [21, 276, 298]
	304  : [21, 263, 262]
	305  : [21, 267, 266]
	306  : [21, 278, 288]
	307  : [21, 264, 289]
	308  : [21, 279, 281]
	309  : [21, 280, 299]
	310  : [21, 265, 288]
	311  : [21, 268, 289]
	312  : [21, 270, 262]
	313  : [21, 286, 293]
	314  : [21, 273, 294]
	315  : [21, 258, 274]
	316  : [21, 287, 295]
	317  : [21, 282, 298]
	318  : [21, 296, 299]
	319  : [21, 272, 274]
	320  : [21, 283, 293]
	321  : [21, 284, 294]
	322  : [21, 285, 295]
	323  : [21, 297, 294]
	324  : [21, 292, 298]
	325  : [21, 261, 288]
	326  : [21, 291, 299]
	327  : [21, 290, 299]
	328  : [20, 0, 300]
	329  : [20, 0, 301]
	330  : [20, 302, 277]
	331  : [20, 301, 271]
	332  : [20, 0, 303]
	333  : [20, 0, 304]
	334  : [20, 0, 302]
	335  : [20, 305, 266]
	336  : [20, 300, 269]
	337  : [20, 0, 306]
	338  : [20, 0, 307]
	339  : [20, 0, 305]
	340  : [20, 308, 281]
	341  : [20, 0, 309]
	342  : [20, 0, 308]
	343  : [20, 307, 289]
	344  : [20, 304, 262]
	345  : [20, 305, 310]
	346  : [20, 300, 311]
	347  : [20, 301, 312]
	348  : [20, 0, 313]
	349  : [20, 0, 314]
	350  : [20, 0, 315]
	351  : [20, 0, 316]
	352  : [20, 306, 288]
	353  : [20, 302, 317]
	354  : [20, 303, 298]
	355  : [20, 309, 299]
	356  : [20, 308, 318]
	357  : [20, 301, 319]
	358  : [20, 315, 274]
	359  : [20, 305, 320]
	360  : [20, 300, 321]
	361  : [20, 301, 322]
	362  : [20, 316, 295]
	363  : [20, 315, 323]
	364  : [20, 304, 324]
	365  : [20, 304, 325]
	366  : [20, 313, 293]
	367  : [20, 314, 294]
	368  : [20, 307, 326]
	369  : [20, 306, 327]
	370  : [19, 331, 336]
	371  : [19, 0, 331]
	372  : [19, 333, 338]
	373  : [19, 0, 333]
	374  : [19, 339, 342]
	375  : [19, 0, 339]
	376  : [19, 329, 328]
	377  : [19, 0, 329]
	378  : [19, 0, 335]
	379  : [19, 0, 337]
	380  : [19, 0, 352]
	381  : [19, 344, 343]
	382  : [19, 0, 344]
	383  : [19, 0, 347]
	384  : [19, 0, 350]
	385  : [19, 329, 334]
	386  : [19, 0, 357]
	387  : [19, 347, 346]
	388  : [19, 0, 358]
	389  : [19, 331, 330]
	390  : [19, 335, 340]
	391  : [19, 347, 353]
	392  : [19, 339, 359]
	393  : [19, 357, 360]
	394  : [19, 329, 361]
	395  : [19, 331, 362]
	396  : [19, 350, 363]
	397  : [19, 329, 351]
	398  : [19, 350, 349]
	399  : [19, 333, 364]
	400  : [19, 0, 365]
	401  : [19, 0, 345]
	402  : [19, 344, 354]
	403  : [19, 335, 366]
	404  : [19, 358, 367]
	405  : [19, 365, 368]
	406  : [19, 345, 356]
	407  : [19, 333, 332]
	408  : [19, 339, 348]
	409  : [19, 337, 369]
	410  : [19, 337, 341]
	411  : [19, 352, 355]
	412  : [18, 371, 370]
	413  : [18, 373, 372]
	414  : [18, 375, 374]
	415  : [18, 377, 376]
	416  : [18, 378, 390]
	417  : [18, 379, 410]
	418  : [18, 380, 411]
	419  : [18, 382, 381]
	420  : [18, 383, 387]
	421  : [18, 384, 398]
	422  : [18, 385, 374]
	423  : [18, 386, 393]
	424  : [18, 388, 404]
	425  : [18, 389, 390]
	426  : [18, 391, 406]
	427  : [18, 392, 406]
	428  : [18, 394, 393]
	429  : [18, 395, 404]
	430  : [18, 396, 404]
	431  : [18, 397, 398]
	432  : [18, 399, 405]
	433  : [18, 400, 405]
	434  : [18, 401, 406]
	435  : [18, 402, 411]
	436  : [18, 403, 411]
	437  : [18, 407, 410]
	438  : [18, 408, 410]
	439  : [18, 409, 411]
	440  : [17, 0, 412]
	441  : [17, 0, 413]
	442  : [17, 415, 414]
	443  : [17, 0, 415]
	444  : [17, 412, 416]
	445  : [17, 413, 417]
	446  : [17, 419, 418]
	447  : [17, 0, 419]
	448  : [17, 0, 420]
	449  : [17, 415, 421]
	450  : [17, 412, 370]
	451  : [17, 413, 372]
	452  : [17, 422, 374]
	453  : [17, 415, 376]
	454  : [17, 415, 423]
	455  : [17, 420, 387]
	456  : [17, 412, 424]
	457  : [17, 419, 381]
	458  : [17, 425, 390]
	459  : [17, 0, 426]
	460  : [17, 428, 427]
	461  : [17, 0, 428]
	462  : [17, 0, 422]
	463  : [17, 0, 429]
	464  : [17, 428, 430]
	465  : [17, 0, 431]
	466  : [17, 429, 404]
	467  : [17, 432, 405]
	468  : [17, 426, 406]
	469  : [17, 428, 393]
	470  : [17, 431, 398]
	471  : [17, 413, 433]
	472  : [17, 420, 434]
	473  : [17, 0, 435]
	474  : [17, 429, 436]
	475  : [17, 0, 432]
	476  : [17, 0, 437]
	477  : [17, 431, 438]
	478  : [17, 432, 439]
	479  : [17, 0, 425]
	480  : [17, 437, 410]
	481  : [17, 435, 411]
	482  : [16, 440, 444]
	483  : [16, 441, 445]
	484  : [16, 443, 442]
	485  : [16, 447, 446]
	486  : [16, 448, 472]
	487  : [16, 449, 445]
	488  : [16, 450, 458]
	489  : [16, 451, 480]
	490  : [16, 453, 452]
	491  : [16, 454, 472]
	492  : [16, 455, 468]
	493  : [16, 456, 446]
	494  : [16, 457, 481]
	495  : [16, 459, 468]
	496  : [16, 461, 460]
	497  : [16, 462, 452]
	498  : [16, 463, 474]
	499  : [16, 464, 478]
	500  : [16, 465, 477]
	501  : [16, 466, 481]
	502  : [16, 467, 481]
	503  : [16, 469, 468]
	504  : [16, 470, 480]
	505  : [16, 471, 446]
	506  : [16, 473, 481]
	507  : [16, 475, 478]
	508  : [16, 476, 480]
	509  : [16, 479, 458]
	510  : [15, 482, 485]
	511  : [15, 0, 482]
	512  : [15, 484, 483]
	513  : [15, 0, 484]
	514  : [15, 496, 495]
	515  : [15, 484, 497]
	516  : [15, 484, 486]
	517  : [15, 482, 509]
	518  : [15, 500, 508]
	519  : [15, 491, 472]
	520  : [15, 484, 442]
	521  : [15, 490, 492]
	522  : [15, 0, 490]
	523  : [15, 482, 444]
	524  : [15, 487, 445]
	525  : [15, 0, 488]
	526  : [15, 490, 489]
	527  : [15, 503, 468]
	528  : [15, 490, 452]
	529  : [15, 488, 458]
	530  : [15, 504, 480]
	531  : [15, 488, 494]
	532  : [15, 0, 498]
	533  : [15, 496, 507]
	534  : [15, 0, 496]
	535  : [15, 0, 500]
	536  : [15, 0, 493]
	537  : [15, 491, 505]
	538  : [15, 0, 491]
	539  : [15, 0, 487]
	540  : [15, 493, 446]
	541  : [15, 498, 474]
	542  : [15, 499, 478]
	543  : [15, 496, 460]
	544  : [15, 500, 477]
	545  : [15, 0, 501]
	546  : [15, 503, 502]
	547  : [15, 0, 503]
	548  : [15, 0, 504]
	549  : [15, 498, 506]
	550  : [15, 501, 481]
	551  : [14, 511, 510]
	552  : [14, 513, 512]
	553  : [14, 514, 549]
	554  : [14, 515, 518]
	555  : [14, 516, 510]
	556  : [14, 517, 549]
	557  : [14, 519, 540]
	558  : [14, 520, 524]
	559  : [14, 521, 531]
	560  : [14, 522, 526]
	561  : [14, 523, 540]
	562  : [14, 525, 531]
	563  : [14, 527, 550]
	564  : [14, 528, 530]
	565  : [14, 529, 550]
	566  : [14, 532, 549]
	567  : [14, 534, 533]
	568  : [14, 535, 518]
	569  : [14, 536, 540]
	570  : [14, 538, 537]
	571  : [14, 539, 524]
	572  : [14, 541, 550]
	573  : [14, 543, 542]
	574  : [14, 544, 530]
	575  : [14, 545, 550]
	576  : [14, 547, 546]
	577  : [14, 548, 530]
	578  : [13, 552, 551]
	579  : [13, 0, 552]
	580  : [13, 553, 549]
	581  : [13, 554, 518]
	582  : [13, 555, 510]
	583  : [13, 552, 512]
	584  : [13, 554, 556]
	585  : [13, 0, 554]
	586  : [13, 557, 540]
	587  : [13, 558, 524]
	588  : [13, 559, 531]
	589  : [13, 560, 526]
	590  : [13, 558, 561]
	591  : [13, 0, 558]
	592  : [13, 560, 562]
	593  : [13, 0, 560]
	594  : [13, 563, 550]
	595  : [13, 564, 530]
	596  : [13, 564, 565]
	597  : [13, 0, 564]
	598  : [13, 567, 566]
	599  : [13, 552, 568]
	600  : [13, 570, 569]
	601  : [13, 552, 571]
	602  : [13, 573, 572]
	603  : [13, 558, 574]
	604  : [13, 576, 575]
	605  : [13, 560, 577]
	606  : [12, 583, 582]
	607  : [12, 591, 590]
	608  : [12, 593, 592]
	609  : [12, 579, 578]
	610  : [12, 599, 598]
	611  : [12, 601, 600]
	612  : [12, 585, 584]
	613  : [12, 589, 588]
	614  : [12, 597, 596]
	615  : [12, 587, 586]
	616  : [12, 581, 580]
	617  : [12, 603, 602]
	618  : [12, 605, 604]
	619  : [12, 595, 594]
	620  : [11, 0, 606]
	621  : [11, 0, 607]
	622  : [11, 609, 608]
	623  : [11, 0, 609]
	624  : [11, 609, 610]
	625  : [11, 0, 611]
	626  : [11, 609, 612]
	627  : [11, 606, 613]
	628  : [11, 607, 614]
	629  : [11, 0, 615]
	630  : [11, 606, 616]
	631  : [11, 607, 617]
	632  : [11, 611, 618]
	633  : [11, 615, 619]
	634  : [10, 620, 627]
	635  : [10, 621, 628]
	636  : [10, 623, 622]
	637  : [10, 624, 632]
	638  : [10, 625, 632]
	639  : [10, 626, 628]
	640  : [10, 629, 633]
	641  : [10, 630, 633]
	642  : [10, 631, 633]
	643  : [9, 0, 634]
	644  : [9, 636, 635]
	645  : [9, 0, 636]
	646  : [9, 637, 632]
	647  : [9, 636, 622]
	648  : [9, 636, 638]
	649  : [9, 634, 627]
	650  : [9, 639, 628]
	651  : [9, 634, 640]
	652  : [9, 0, 641]
	653  : [9, 637, 642]
	654  : [9, 0, 637]
	655  : [9, 0, 639]
	656  : [9, 641, 633]
	657  : [8, 648, 651]
	658  : [8, 645, 644]
	659  : [8, 649, 656]
	660  : [8, 647, 650]
	661  : [8, 643, 651]
	662  : [8, 646, 656]
	663  : [8, 652, 656]
	664  : [8, 654, 653]
	665  : [8, 655, 650]
	666  : [7, 657, 651]
	667  : [7, 658, 644]
	668  : [7, 660, 659]
	669  : [7, 0, 660]
	670  : [7, 658, 661]
	671  : [7, 0, 658]
	672  : [7, 662, 656]
	673  : [7, 660, 650]
	674  : [7, 664, 663]
	675  : [7, 658, 665]
	676  : [6, 667, 666]
	677  : [6, 669, 668]
	678  : [6, 671, 670]
	679  : [6, 673, 672]
	680  : [6, 675, 674]
	681  : [5, 678, 680]
	682  : [5, 0, 678]
	683  : [5, 0, 676]
	684  : [5, 678, 677]
	685  : [5, 676, 679]
	686  : [4, 681, 685]
	687  : [4, 682, 684]
	688  : [4, 683, 685]
	689  : [3, 686, 685]
	690  : [3, 687, 684]
	691  : [3, 687, 688]
	692  : [3, 0, 687]
	693  : [2, 690, 689]
	694  : [2, 692, 691]
	695  : [1, 694, 693]
	696  : [1, 0, 694]
	697  : [0, 696, 695]

my_passages = [
	[0, 1],
	[1, 0],
	[0, 3],
	[1, 2],
	[2, 1],
	[3, 0],
	[0, 5],
	[1, 4],
	[2, 3],
	[3, 2],
	[4, 1],
	[5, 0],
	[0, 7],
	[1, 6],
	[2, 5],
	[3, 4],
	[4, 3],
	[5, 2],
	[6, 1],
	[7, 0],
	[1, 8],
	[2, 7],
	[3, 6],
	[4, 5],
	[5, 4],
	[6, 3],
	[7, 2],
	[8, 1],
	[3, 8],
	[4, 7],
	[5, 6],
	[6, 5],
	[7, 4],
	[8, 3],
	[5, 8],
	[6, 7],
	[7, 6],
	[8, 5],
	[7, 8],
	[8, 7],
]


my_bdd = 
	root : 697
	beads : my_beads
my_grid =
	n : 5
	passages : my_passages
root = exports ? this
root.my_bdd = my_bdd
root.my_grid = my_grid
