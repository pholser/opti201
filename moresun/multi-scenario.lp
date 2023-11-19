\ LP format - for model browsing. Use MPS format to capture full model detail.
Minimize
  grid[0] + grid[1] + grid[2] + grid[3] + grid[4] + grid[5] + grid[6]
   + grid[7] + grid[8] + grid[9] + grid[10] + grid[11] + grid[12]
   + grid[13] + grid[14] + grid[15] + grid[16] + grid[17] + grid[18]
   + grid[19] + grid[20] + grid[21] + grid[22] + grid[23] + grid[24]
   + grid[25] + grid[26] + grid[27] + grid[28] + grid[29] + grid[30]
   + grid[31] + grid[32] + grid[33] + grid[34] + grid[35] + grid[36]
   + grid[37] + grid[38] + grid[39] + grid[40] + grid[41] + grid[42]
   + grid[43] + grid[44] + grid[45] + grid[46] + grid[47] + grid[48]
   + grid[49] + grid[50] + grid[51] + grid[52] + grid[53] + grid[54]
   + grid[55] + grid[56] + grid[57] + grid[58] + grid[59] + grid[60]
   + grid[61] + grid[62] + grid[63] + grid[64] + grid[65] + grid[66]
   + grid[67] + grid[68] + grid[69] + grid[70] + grid[71] + grid[72]
   + grid[73] + grid[74] + grid[75] + grid[76] + grid[77] + grid[78]
   + grid[79] + grid[80] + grid[81] + grid[82] + grid[83] + grid[84]
   + grid[85] + grid[86] + grid[87] + grid[88] + grid[89] + grid[90]
   + grid[91] + grid[92] + grid[93] + grid[94] + grid[95] + grid[96]
   + grid[97] + grid[98] + grid[99] + grid[100] + grid[101] + grid[102]
   + grid[103] + grid[104] + grid[105] + grid[106] + grid[107] + grid[108]
   + grid[109] + grid[110] + grid[111] + grid[112] + grid[113] + grid[114]
   + grid[115] + grid[116] + grid[117] + grid[118] + grid[119] + grid[120]
   + grid[121] + grid[122] + grid[123] + grid[124] + grid[125] + grid[126]
   + grid[127] + grid[128] + grid[129] + grid[130] + grid[131] + grid[132]
   + grid[133] + grid[134] + grid[135] + grid[136] + grid[137] + grid[138]
   + grid[139] + grid[140] + grid[141] + grid[142] + grid[143] + grid[144]
   + grid[145] + grid[146] + grid[147] + grid[148] + grid[149] + grid[150]
   + grid[151] + grid[152] + grid[153] + grid[154] + grid[155] + grid[156]
   + grid[157] + grid[158] + grid[159] + grid[160] + grid[161] + grid[162]
   + grid[163] + grid[164] + grid[165] + grid[166] + grid[167] + grid[168]
   + grid[169] + grid[170] + grid[171] + grid[172] + grid[173] + grid[174]
   + grid[175] + grid[176] + grid[177] + grid[178] + grid[179]
Subject To
 power_balance[0]: - 0.95 flow_in[Battery0,0] - 0.9 flow_in[Battery1,0]
   + flow_out[Battery0,0] + flow_out[Battery1,0] + grid[0] + gen[0] = 35.9
 power_balance[1]: - 0.95 flow_in[Battery0,1] - 0.9 flow_in[Battery1,1]
   + flow_out[Battery0,1] + flow_out[Battery1,1] + grid[1] + gen[1] = 35.4
 power_balance[2]: - 0.95 flow_in[Battery0,2] - 0.9 flow_in[Battery1,2]
   + flow_out[Battery0,2] + flow_out[Battery1,2] + grid[2] + gen[2] = 34.6
 power_balance[3]: - 0.95 flow_in[Battery0,3] - 0.9 flow_in[Battery1,3]
   + flow_out[Battery0,3] + flow_out[Battery1,3] + grid[3] + gen[3] = 33.2
 power_balance[4]: - 0.95 flow_in[Battery0,4] - 0.9 flow_in[Battery1,4]
   + flow_out[Battery0,4] + flow_out[Battery1,4] + grid[4] + gen[4] = 31.4
 power_balance[5]: - 0.95 flow_in[Battery0,5] - 0.9 flow_in[Battery1,5]
   + flow_out[Battery0,5] + flow_out[Battery1,5] + grid[5] + gen[5] = 28.1
 power_balance[6]: - 0.95 flow_in[Battery0,6] - 0.9 flow_in[Battery1,6]
   + flow_out[Battery0,6] + flow_out[Battery1,6] + grid[6] + gen[6] = 26
 power_balance[7]: - 0.95 flow_in[Battery0,7] - 0.9 flow_in[Battery1,7]
   + flow_out[Battery0,7] + flow_out[Battery1,7] + grid[7] + gen[7] = 20.2
 power_balance[8]: - 0.95 flow_in[Battery0,8] - 0.9 flow_in[Battery1,8]
   + flow_out[Battery0,8] + flow_out[Battery1,8] + grid[8] + gen[8] = 18.7
 power_balance[9]: - 0.95 flow_in[Battery0,9] - 0.9 flow_in[Battery1,9]
   + flow_out[Battery0,9] + flow_out[Battery1,9] + grid[9] + gen[9] = 70.6
 power_balance[10]: - 0.95 flow_in[Battery0,10] - 0.9 flow_in[Battery1,10]
   + flow_out[Battery0,10] + flow_out[Battery1,10] + grid[10] + gen[10]
   = 15
 power_balance[11]: - 0.95 flow_in[Battery0,11] - 0.9 flow_in[Battery1,11]
   + flow_out[Battery0,11] + flow_out[Battery1,11] + grid[11] + gen[11]
   = 54.7
 power_balance[12]: - 0.95 flow_in[Battery0,12] - 0.9 flow_in[Battery1,12]
   + flow_out[Battery0,12] + flow_out[Battery1,12] + grid[12] + gen[12]
   = 14.6
 power_balance[13]: - 0.95 flow_in[Battery0,13] - 0.9 flow_in[Battery1,13]
   + flow_out[Battery0,13] + flow_out[Battery1,13] + grid[13] + gen[13]
   = 14.7
 power_balance[14]: - 0.95 flow_in[Battery0,14] - 0.9 flow_in[Battery1,14]
   + flow_out[Battery0,14] + flow_out[Battery1,14] + grid[14] + gen[14]
   = 14.5
 power_balance[15]: - 0.95 flow_in[Battery0,15] - 0.9 flow_in[Battery1,15]
   + flow_out[Battery0,15] + flow_out[Battery1,15] + grid[15] + gen[15]
   = 14.6
 power_balance[16]: - 0.95 flow_in[Battery0,16] - 0.9 flow_in[Battery1,16]
   + flow_out[Battery0,16] + flow_out[Battery1,16] + grid[16] + gen[16]
   = 14.3
 power_balance[17]: - 0.95 flow_in[Battery0,17] - 0.9 flow_in[Battery1,17]
   + flow_out[Battery0,17] + flow_out[Battery1,17] + grid[17] + gen[17]
   = 89.5
 power_balance[18]: - 0.95 flow_in[Battery0,18] - 0.9 flow_in[Battery1,18]
   + flow_out[Battery0,18] + flow_out[Battery1,18] + grid[18] + gen[18]
   = 14.2
 power_balance[19]: - 0.95 flow_in[Battery0,19] - 0.9 flow_in[Battery1,19]
   + flow_out[Battery0,19] + flow_out[Battery1,19] + grid[19] + gen[19]
   = 50.3
 power_balance[20]: - 0.95 flow_in[Battery0,20] - 0.9 flow_in[Battery1,20]
   + flow_out[Battery0,20] + flow_out[Battery1,20] + grid[20] + gen[20]
   = 50.1
 power_balance[21]: - 0.95 flow_in[Battery0,21] - 0.9 flow_in[Battery1,21]
   + flow_out[Battery0,21] + flow_out[Battery1,21] + grid[21] + gen[21]
   = 50.4
 power_balance[22]: - 0.95 flow_in[Battery0,22] - 0.9 flow_in[Battery1,22]
   + flow_out[Battery0,22] + flow_out[Battery1,22] + grid[22] + gen[22]
   = 14.1
 power_balance[23]: - 0.95 flow_in[Battery0,23] - 0.9 flow_in[Battery1,23]
   + flow_out[Battery0,23] + flow_out[Battery1,23] + grid[23] + gen[23]
   = 14.5
 power_balance[24]: - 0.95 flow_in[Battery0,24] - 0.9 flow_in[Battery1,24]
   + flow_out[Battery0,24] + flow_out[Battery1,24] + grid[24] + gen[24]
   = 15.2
 power_balance[25]: - 0.95 flow_in[Battery0,25] - 0.9 flow_in[Battery1,25]
   + flow_out[Battery0,25] + flow_out[Battery1,25] + grid[25] + gen[25]
   = 18.4
 power_balance[26]: - 0.95 flow_in[Battery0,26] - 0.9 flow_in[Battery1,26]
   + flow_out[Battery0,26] + flow_out[Battery1,26] + grid[26] + gen[26]
   = 18.6
 power_balance[27]: - 0.95 flow_in[Battery0,27] - 0.9 flow_in[Battery1,27]
   + flow_out[Battery0,27] + flow_out[Battery1,27] + grid[27] + gen[27]
   = 19.9
 power_balance[28]: - 0.95 flow_in[Battery0,28] - 0.9 flow_in[Battery1,28]
   + flow_out[Battery0,28] + flow_out[Battery1,28] + grid[28] + gen[28]
   = 19.9
 power_balance[29]: - 0.95 flow_in[Battery0,29] - 0.9 flow_in[Battery1,29]
   + flow_out[Battery0,29] + flow_out[Battery1,29] + grid[29] + gen[29]
   = 22.4
 power_balance[30]: - 0.95 flow_in[Battery0,30] - 0.9 flow_in[Battery1,30]
   + flow_out[Battery0,30] + flow_out[Battery1,30] + grid[30] + gen[30]
   = 37.4
 power_balance[31]: - 0.95 flow_in[Battery0,31] - 0.9 flow_in[Battery1,31]
   + flow_out[Battery0,31] + flow_out[Battery1,31] + grid[31] + gen[31]
   = 36.4
 power_balance[32]: - 0.95 flow_in[Battery0,32] - 0.9 flow_in[Battery1,32]
   + flow_out[Battery0,32] + flow_out[Battery1,32] + grid[32] + gen[32]
   = 35.4
 power_balance[33]: - 0.95 flow_in[Battery0,33] - 0.9 flow_in[Battery1,33]
   + flow_out[Battery0,33] + flow_out[Battery1,33] + grid[33] + gen[33]
   = 33.8
 power_balance[34]: - 0.95 flow_in[Battery0,34] - 0.9 flow_in[Battery1,34]
   + flow_out[Battery0,34] + flow_out[Battery1,34] + grid[34] + gen[34]
   = 31.8
 power_balance[35]: - 0.95 flow_in[Battery0,35] - 0.9 flow_in[Battery1,35]
   + flow_out[Battery0,35] + flow_out[Battery1,35] + grid[35] + gen[35]
   = 28.3
 power_balance[36]: - 0.95 flow_in[Battery0,36] - 0.9 flow_in[Battery1,36]
   + flow_out[Battery0,36] + flow_out[Battery1,36] + grid[36] + gen[36]
   = 26.3
 power_balance[37]: - 0.95 flow_in[Battery0,37] - 0.9 flow_in[Battery1,37]
   + flow_out[Battery0,37] + flow_out[Battery1,37] + grid[37] + gen[37]
   = 54.6
 power_balance[38]: - 0.95 flow_in[Battery0,38] - 0.9 flow_in[Battery1,38]
   + flow_out[Battery0,38] + flow_out[Battery1,38] + grid[38] + gen[38]
   = 19.1
 power_balance[39]: - 0.95 flow_in[Battery0,39] - 0.9 flow_in[Battery1,39]
   + flow_out[Battery0,39] + flow_out[Battery1,39] + grid[39] + gen[39]
   = 53.7
 power_balance[40]: - 0.95 flow_in[Battery0,40] - 0.9 flow_in[Battery1,40]
   + flow_out[Battery0,40] + flow_out[Battery1,40] + grid[40] + gen[40]
   = 53
 power_balance[41]: - 0.95 flow_in[Battery0,41] - 0.9 flow_in[Battery1,41]
   + flow_out[Battery0,41] + flow_out[Battery1,41] + grid[41] + gen[41]
   = 52.7
 power_balance[42]: - 0.95 flow_in[Battery0,42] - 0.9 flow_in[Battery1,42]
   + flow_out[Battery0,42] + flow_out[Battery1,42] + grid[42] + gen[42]
   = 14.5
 power_balance[43]: - 0.95 flow_in[Battery0,43] - 0.9 flow_in[Battery1,43]
   + flow_out[Battery0,43] + flow_out[Battery1,43] + grid[43] + gen[43]
   = 33.5
 power_balance[44]: - 0.95 flow_in[Battery0,44] - 0.9 flow_in[Battery1,44]
   + flow_out[Battery0,44] + flow_out[Battery1,44] + grid[44] + gen[44]
   = 14.5
 power_balance[45]: - 0.95 flow_in[Battery0,45] - 0.9 flow_in[Battery1,45]
   + flow_out[Battery0,45] + flow_out[Battery1,45] + grid[45] + gen[45]
   = 14.4
 power_balance[46]: - 0.95 flow_in[Battery0,46] - 0.9 flow_in[Battery1,46]
   + flow_out[Battery0,46] + flow_out[Battery1,46] + grid[46] + gen[46]
   = 14.3
 power_balance[47]: - 0.95 flow_in[Battery0,47] - 0.9 flow_in[Battery1,47]
   + flow_out[Battery0,47] + flow_out[Battery1,47] + grid[47] + gen[47]
   = 14.3
 power_balance[48]: - 0.95 flow_in[Battery0,48] - 0.9 flow_in[Battery1,48]
   + flow_out[Battery0,48] + flow_out[Battery1,48] + grid[48] + gen[48]
   = 14.3
 power_balance[49]: - 0.95 flow_in[Battery0,49] - 0.9 flow_in[Battery1,49]
   + flow_out[Battery0,49] + flow_out[Battery1,49] + grid[49] + gen[49]
   = 14.4
 power_balance[50]: - 0.95 flow_in[Battery0,50] - 0.9 flow_in[Battery1,50]
   + flow_out[Battery0,50] + flow_out[Battery1,50] + grid[50] + gen[50]
   = 14.2
 power_balance[51]: - 0.95 flow_in[Battery0,51] - 0.9 flow_in[Battery1,51]
   + flow_out[Battery0,51] + flow_out[Battery1,51] + grid[51] + gen[51]
   = 14.2
 power_balance[52]: - 0.95 flow_in[Battery0,52] - 0.9 flow_in[Battery1,52]
   + flow_out[Battery0,52] + flow_out[Battery1,52] + grid[52] + gen[52]
   = 14.1
 power_balance[53]: - 0.95 flow_in[Battery0,53] - 0.9 flow_in[Battery1,53]
   + flow_out[Battery0,53] + flow_out[Battery1,53] + grid[53] + gen[53]
   = 14.3
 power_balance[54]: - 0.95 flow_in[Battery0,54] - 0.9 flow_in[Battery1,54]
   + flow_out[Battery0,54] + flow_out[Battery1,54] + grid[54] + gen[54]
   = 14.8
 power_balance[55]: - 0.95 flow_in[Battery0,55] - 0.9 flow_in[Battery1,55]
   + flow_out[Battery0,55] + flow_out[Battery1,55] + grid[55] + gen[55]
   = 17.7
 power_balance[56]: - 0.95 flow_in[Battery0,56] - 0.9 flow_in[Battery1,56]
   + flow_out[Battery0,56] + flow_out[Battery1,56] + grid[56] + gen[56]
   = 18.1
 power_balance[57]: - 0.95 flow_in[Battery0,57] - 0.9 flow_in[Battery1,57]
   + flow_out[Battery0,57] + flow_out[Battery1,57] + grid[57] + gen[57]
   = 20
 power_balance[58]: - 0.95 flow_in[Battery0,58] - 0.9 flow_in[Battery1,58]
   + flow_out[Battery0,58] + flow_out[Battery1,58] + grid[58] + gen[58]
   = 19.9
 power_balance[59]: - 0.95 flow_in[Battery0,59] - 0.9 flow_in[Battery1,59]
   + flow_out[Battery0,59] + flow_out[Battery1,59] + grid[59] + gen[59]
   = 22.4
 power_balance[60]: - 0.95 flow_in[Battery0,60] - 0.9 flow_in[Battery1,60]
   + flow_out[Battery0,60] + flow_out[Battery1,60] + grid[60] + gen[60]
   = 38.1
 power_balance[61]: - 0.95 flow_in[Battery0,61] - 0.9 flow_in[Battery1,61]
   + flow_out[Battery0,61] + flow_out[Battery1,61] + grid[61] + gen[61]
   = 37.2
 power_balance[62]: - 0.95 flow_in[Battery0,62] - 0.9 flow_in[Battery1,62]
   + flow_out[Battery0,62] + flow_out[Battery1,62] + grid[62] + gen[62]
   = 36.1
 power_balance[63]: - 0.95 flow_in[Battery0,63] - 0.9 flow_in[Battery1,63]
   + flow_out[Battery0,63] + flow_out[Battery1,63] + grid[63] + gen[63]
   = 34.1
 power_balance[64]: - 0.95 flow_in[Battery0,64] - 0.9 flow_in[Battery1,64]
   + flow_out[Battery0,64] + flow_out[Battery1,64] + grid[64] + gen[64]
   = 32.6
 power_balance[65]: - 0.95 flow_in[Battery0,65] - 0.9 flow_in[Battery1,65]
   + flow_out[Battery0,65] + flow_out[Battery1,65] + grid[65] + gen[65]
   = 29
 power_balance[66]: - 0.95 flow_in[Battery0,66] - 0.9 flow_in[Battery1,66]
   + flow_out[Battery0,66] + flow_out[Battery1,66] + grid[66] + gen[66]
   = 26.8
 power_balance[67]: - 0.95 flow_in[Battery0,67] - 0.9 flow_in[Battery1,67]
   + flow_out[Battery0,67] + flow_out[Battery1,67] + grid[67] + gen[67]
   = 20.9
 power_balance[68]: - 0.95 flow_in[Battery0,68] - 0.9 flow_in[Battery1,68]
   + flow_out[Battery0,68] + flow_out[Battery1,68] + grid[68] + gen[68]
   = 19.4
 power_balance[69]: - 0.95 flow_in[Battery0,69] - 0.9 flow_in[Battery1,69]
   + flow_out[Battery0,69] + flow_out[Battery1,69] + grid[69] + gen[69]
   = 71
 power_balance[70]: - 0.95 flow_in[Battery0,70] - 0.9 flow_in[Battery1,70]
   + flow_out[Battery0,70] + flow_out[Battery1,70] + grid[70] + gen[70]
   = 15.5
 power_balance[71]: - 0.95 flow_in[Battery0,71] - 0.9 flow_in[Battery1,71]
   + flow_out[Battery0,71] + flow_out[Battery1,71] + grid[71] + gen[71]
   = 55
 power_balance[72]: - 0.95 flow_in[Battery0,72] - 0.9 flow_in[Battery1,72]
   + flow_out[Battery0,72] + flow_out[Battery1,72] + grid[72] + gen[72]
   = 14.9
 power_balance[73]: - 0.95 flow_in[Battery0,73] - 0.9 flow_in[Battery1,73]
   + flow_out[Battery0,73] + flow_out[Battery1,73] + grid[73] + gen[73]
   = 14.7
 power_balance[74]: - 0.95 flow_in[Battery0,74] - 0.9 flow_in[Battery1,74]
   + flow_out[Battery0,74] + flow_out[Battery1,74] + grid[74] + gen[74]
   = 14.6
 power_balance[75]: - 0.95 flow_in[Battery0,75] - 0.9 flow_in[Battery1,75]
   + flow_out[Battery0,75] + flow_out[Battery1,75] + grid[75] + gen[75]
   = 14.7
 power_balance[76]: - 0.95 flow_in[Battery0,76] - 0.9 flow_in[Battery1,76]
   + flow_out[Battery0,76] + flow_out[Battery1,76] + grid[76] + gen[76]
   = 15.5
 power_balance[77]: - 0.95 flow_in[Battery0,77] - 0.9 flow_in[Battery1,77]
   + flow_out[Battery0,77] + flow_out[Battery1,77] + grid[77] + gen[77]
   = 94.7
 power_balance[78]: - 0.95 flow_in[Battery0,78] - 0.9 flow_in[Battery1,78]
   + flow_out[Battery0,78] + flow_out[Battery1,78] + grid[78] + gen[78]
   = 20
 power_balance[79]: - 0.95 flow_in[Battery0,79] - 0.9 flow_in[Battery1,79]
   + flow_out[Battery0,79] + flow_out[Battery1,79] + grid[79] + gen[79]
   = 57.1
 power_balance[80]: - 0.95 flow_in[Battery0,80] - 0.9 flow_in[Battery1,80]
   + flow_out[Battery0,80] + flow_out[Battery1,80] + grid[80] + gen[80]
   = 57.2
 power_balance[81]: - 0.95 flow_in[Battery0,81] - 0.9 flow_in[Battery1,81]
   + flow_out[Battery0,81] + flow_out[Battery1,81] + grid[81] + gen[81]
   = 57.3
 power_balance[82]: - 0.95 flow_in[Battery0,82] - 0.9 flow_in[Battery1,82]
   + flow_out[Battery0,82] + flow_out[Battery1,82] + grid[82] + gen[82]
   = 21.2
 power_balance[83]: - 0.95 flow_in[Battery0,83] - 0.9 flow_in[Battery1,83]
   + flow_out[Battery0,83] + flow_out[Battery1,83] + grid[83] + gen[83]
   = 20.8
 power_balance[84]: - 0.95 flow_in[Battery0,84] - 0.9 flow_in[Battery1,84]
   + flow_out[Battery0,84] + flow_out[Battery1,84] + grid[84] + gen[84]
   = 21.1
 power_balance[85]: - 0.95 flow_in[Battery0,85] - 0.9 flow_in[Battery1,85]
   + flow_out[Battery0,85] + flow_out[Battery1,85] + grid[85] + gen[85]
   = 22
 power_balance[86]: - 0.95 flow_in[Battery0,86] - 0.9 flow_in[Battery1,86]
   + flow_out[Battery0,86] + flow_out[Battery1,86] + grid[86] + gen[86]
   = 22.2
 power_balance[87]: - 0.95 flow_in[Battery0,87] - 0.9 flow_in[Battery1,87]
   + flow_out[Battery0,87] + flow_out[Battery1,87] + grid[87] + gen[87]
   = 22.5
 power_balance[88]: - 0.95 flow_in[Battery0,88] - 0.9 flow_in[Battery1,88]
   + flow_out[Battery0,88] + flow_out[Battery1,88] + grid[88] + gen[88]
   = 22.3
 power_balance[89]: - 0.95 flow_in[Battery0,89] - 0.9 flow_in[Battery1,89]
   + flow_out[Battery0,89] + flow_out[Battery1,89] + grid[89] + gen[89]
   = 23.4
 power_balance[90]: - 0.95 flow_in[Battery0,90] - 0.9 flow_in[Battery1,90]
   + flow_out[Battery0,90] + flow_out[Battery1,90] + grid[90] + gen[90]
   = 38.9
 power_balance[91]: - 0.95 flow_in[Battery0,91] - 0.9 flow_in[Battery1,91]
   + flow_out[Battery0,91] + flow_out[Battery1,91] + grid[91] + gen[91]
   = 37.9
 power_balance[92]: - 0.95 flow_in[Battery0,92] - 0.9 flow_in[Battery1,92]
   + flow_out[Battery0,92] + flow_out[Battery1,92] + grid[92] + gen[92]
   = 36.7
 power_balance[93]: - 0.95 flow_in[Battery0,93] - 0.9 flow_in[Battery1,93]
   + flow_out[Battery0,93] + flow_out[Battery1,93] + grid[93] + gen[93]
   = 34.9
 power_balance[94]: - 0.95 flow_in[Battery0,94] - 0.9 flow_in[Battery1,94]
   + flow_out[Battery0,94] + flow_out[Battery1,94] + grid[94] + gen[94]
   = 33
 power_balance[95]: - 0.95 flow_in[Battery0,95] - 0.9 flow_in[Battery1,95]
   + flow_out[Battery0,95] + flow_out[Battery1,95] + grid[95] + gen[95]
   = 29.1
 power_balance[96]: - 0.95 flow_in[Battery0,96] - 0.9 flow_in[Battery1,96]
   + flow_out[Battery0,96] + flow_out[Battery1,96] + grid[96] + gen[96]
   = 27.4
 power_balance[97]: - 0.95 flow_in[Battery0,97] - 0.9 flow_in[Battery1,97]
   + flow_out[Battery0,97] + flow_out[Battery1,97] + grid[97] + gen[97]
   = 58.1
 power_balance[98]: - 0.95 flow_in[Battery0,98] - 0.9 flow_in[Battery1,98]
   + flow_out[Battery0,98] + flow_out[Battery1,98] + grid[98] + gen[98]
   = 23.6
 power_balance[99]: - 0.95 flow_in[Battery0,99] - 0.9 flow_in[Battery1,99]
   + flow_out[Battery0,99] + flow_out[Battery1,99] + grid[99] + gen[99]
   = 61
 power_balance[100]: - 0.95 flow_in[Battery0,100]
   - 0.9 flow_in[Battery1,100] + flow_out[Battery0,100]
   + flow_out[Battery1,100] + grid[100] + gen[100] = 60.8
 power_balance[101]: - 0.95 flow_in[Battery0,101]
   - 0.9 flow_in[Battery1,101] + flow_out[Battery0,101]
   + flow_out[Battery1,101] + grid[101] + gen[101] = 60.6
 power_balance[102]: - 0.95 flow_in[Battery0,102]
   - 0.9 flow_in[Battery1,102] + flow_out[Battery0,102]
   + flow_out[Battery1,102] + grid[102] + gen[102] = 22.5
 power_balance[103]: - 0.95 flow_in[Battery0,103]
   - 0.9 flow_in[Battery1,103] + flow_out[Battery0,103]
   + flow_out[Battery1,103] + grid[103] + gen[103] = 67.2
 power_balance[104]: - 0.95 flow_in[Battery0,104]
   - 0.9 flow_in[Battery1,104] + flow_out[Battery0,104]
   + flow_out[Battery1,104] + grid[104] + gen[104] = 22
 power_balance[105]: - 0.95 flow_in[Battery0,105]
   - 0.9 flow_in[Battery1,105] + flow_out[Battery0,105]
   + flow_out[Battery1,105] + grid[105] + gen[105] = 21.8
 power_balance[106]: - 0.95 flow_in[Battery0,106]
   - 0.9 flow_in[Battery1,106] + flow_out[Battery0,106]
   + flow_out[Battery1,106] + grid[106] + gen[106] = 21.8
 power_balance[107]: - 0.95 flow_in[Battery0,107]
   - 0.9 flow_in[Battery1,107] + flow_out[Battery0,107]
   + flow_out[Battery1,107] + grid[107] + gen[107] = 21.5
 power_balance[108]: - 0.95 flow_in[Battery0,108]
   - 0.9 flow_in[Battery1,108] + flow_out[Battery0,108]
   + flow_out[Battery1,108] + grid[108] + gen[108] = 21.4
 power_balance[109]: - 0.95 flow_in[Battery0,109]
   - 0.9 flow_in[Battery1,109] + flow_out[Battery0,109]
   + flow_out[Battery1,109] + grid[109] + gen[109] = 57
 power_balance[110]: - 0.95 flow_in[Battery0,110]
   - 0.9 flow_in[Battery1,110] + flow_out[Battery0,110]
   + flow_out[Battery1,110] + grid[110] + gen[110] = 21
 power_balance[111]: - 0.95 flow_in[Battery0,111]
   - 0.9 flow_in[Battery1,111] + flow_out[Battery0,111]
   + flow_out[Battery1,111] + grid[111] + gen[111] = 20.9
 power_balance[112]: - 0.95 flow_in[Battery0,112]
   - 0.9 flow_in[Battery1,112] + flow_out[Battery0,112]
   + flow_out[Battery1,112] + grid[112] + gen[112] = 20.7
 power_balance[113]: - 0.95 flow_in[Battery0,113]
   - 0.9 flow_in[Battery1,113] + flow_out[Battery0,113]
   + flow_out[Battery1,113] + grid[113] + gen[113] = 20.9
 power_balance[114]: - 0.95 flow_in[Battery0,114]
   - 0.9 flow_in[Battery1,114] + flow_out[Battery0,114]
   + flow_out[Battery1,114] + grid[114] + gen[114] = 21.2
 power_balance[115]: - 0.95 flow_in[Battery0,115]
   - 0.9 flow_in[Battery1,115] + flow_out[Battery0,115]
   + flow_out[Battery1,115] + grid[115] + gen[115] = 22.2
 power_balance[116]: - 0.95 flow_in[Battery0,116]
   - 0.9 flow_in[Battery1,116] + flow_out[Battery0,116]
   + flow_out[Battery1,116] + grid[116] + gen[116] = 22.3
 power_balance[117]: - 0.95 flow_in[Battery0,117]
   - 0.9 flow_in[Battery1,117] + flow_out[Battery0,117]
   + flow_out[Battery1,117] + grid[117] + gen[117] = 22.6
 power_balance[118]: - 0.95 flow_in[Battery0,118]
   - 0.9 flow_in[Battery1,118] + flow_out[Battery0,118]
   + flow_out[Battery1,118] + grid[118] + gen[118] = 22.7
 power_balance[119]: - 0.95 flow_in[Battery0,119]
   - 0.9 flow_in[Battery1,119] + flow_out[Battery0,119]
   + flow_out[Battery1,119] + grid[119] + gen[119] = 23.8
 power_balance[120]: - 0.95 flow_in[Battery0,120]
   - 0.9 flow_in[Battery1,120] + flow_out[Battery0,120]
   + flow_out[Battery1,120] + grid[120] + gen[120] = 36.2
 power_balance[121]: - 0.95 flow_in[Battery0,121]
   - 0.9 flow_in[Battery1,121] + flow_out[Battery0,121]
   + flow_out[Battery1,121] + grid[121] + gen[121] = 35.2
 power_balance[122]: - 0.95 flow_in[Battery0,122]
   - 0.9 flow_in[Battery1,122] + flow_out[Battery0,122]
   + flow_out[Battery1,122] + grid[122] + gen[122] = 34.7
 power_balance[123]: - 0.95 flow_in[Battery0,123]
   - 0.9 flow_in[Battery1,123] + flow_out[Battery0,123]
   + flow_out[Battery1,123] + grid[123] + gen[123] = 33.4
 power_balance[124]: - 0.95 flow_in[Battery0,124]
   - 0.9 flow_in[Battery1,124] + flow_out[Battery0,124]
   + flow_out[Battery1,124] + grid[124] + gen[124] = 31.4
 power_balance[125]: - 0.95 flow_in[Battery0,125]
   - 0.9 flow_in[Battery1,125] + flow_out[Battery0,125]
   + flow_out[Battery1,125] + grid[125] + gen[125] = 28.4
 power_balance[126]: - 0.95 flow_in[Battery0,126]
   - 0.9 flow_in[Battery1,126] + flow_out[Battery0,126]
   + flow_out[Battery1,126] + grid[126] + gen[126] = 26.7
 power_balance[127]: - 0.95 flow_in[Battery0,127]
   - 0.9 flow_in[Battery1,127] + flow_out[Battery0,127]
   + flow_out[Battery1,127] + grid[127] + gen[127] = 23.5
 power_balance[128]: - 0.95 flow_in[Battery0,128]
   - 0.9 flow_in[Battery1,128] + flow_out[Battery0,128]
   + flow_out[Battery1,128] + grid[128] + gen[128] = 23
 power_balance[129]: - 0.95 flow_in[Battery0,129]
   - 0.9 flow_in[Battery1,129] + flow_out[Battery0,129]
   + flow_out[Battery1,129] + grid[129] + gen[129] = 77.5
 power_balance[130]: - 0.95 flow_in[Battery0,130]
   - 0.9 flow_in[Battery1,130] + flow_out[Battery0,130]
   + flow_out[Battery1,130] + grid[130] + gen[130] = 22.2
 power_balance[131]: - 0.95 flow_in[Battery0,131]
   - 0.9 flow_in[Battery1,131] + flow_out[Battery0,131]
   + flow_out[Battery1,131] + grid[131] + gen[131] = 62.3
 power_balance[132]: - 0.95 flow_in[Battery0,132]
   - 0.9 flow_in[Battery1,132] + flow_out[Battery0,132]
   + flow_out[Battery1,132] + grid[132] + gen[132] = 21.9
 power_balance[133]: - 0.95 flow_in[Battery0,133]
   - 0.9 flow_in[Battery1,133] + flow_out[Battery0,133]
   + flow_out[Battery1,133] + grid[133] + gen[133] = 21.9
 power_balance[134]: - 0.95 flow_in[Battery0,134]
   - 0.9 flow_in[Battery1,134] + flow_out[Battery0,134]
   + flow_out[Battery1,134] + grid[134] + gen[134] = 21.7
 power_balance[135]: - 0.95 flow_in[Battery0,135]
   - 0.9 flow_in[Battery1,135] + flow_out[Battery0,135]
   + flow_out[Battery1,135] + grid[135] + gen[135] = 21.6
 power_balance[136]: - 0.95 flow_in[Battery0,136]
   - 0.9 flow_in[Battery1,136] + flow_out[Battery0,136]
   + flow_out[Battery1,136] + grid[136] + gen[136] = 21.1
 power_balance[137]: - 0.95 flow_in[Battery0,137]
   - 0.9 flow_in[Battery1,137] + flow_out[Battery0,137]
   + flow_out[Battery1,137] + grid[137] + gen[137] = 94.1
 power_balance[138]: - 0.95 flow_in[Battery0,138]
   - 0.9 flow_in[Battery1,138] + flow_out[Battery0,138]
   + flow_out[Battery1,138] + grid[138] + gen[138] = 18.2
 power_balance[139]: - 0.95 flow_in[Battery0,139]
   - 0.9 flow_in[Battery1,139] + flow_out[Battery0,139]
   + flow_out[Battery1,139] + grid[139] + gen[139] = 69.4
 power_balance[140]: - 0.95 flow_in[Battery0,140]
   - 0.9 flow_in[Battery1,140] + flow_out[Battery0,140]
   + flow_out[Battery1,140] + grid[140] + gen[140] = 69.1
 power_balance[141]: - 0.95 flow_in[Battery0,141]
   - 0.9 flow_in[Battery1,141] + flow_out[Battery0,141]
   + flow_out[Battery1,141] + grid[141] + gen[141] = 68.6
 power_balance[142]: - 0.95 flow_in[Battery0,142]
   - 0.9 flow_in[Battery1,142] + flow_out[Battery0,142]
   + flow_out[Battery1,142] + grid[142] + gen[142] = 14.6
 power_balance[143]: - 0.95 flow_in[Battery0,143]
   - 0.9 flow_in[Battery1,143] + flow_out[Battery0,143]
   + flow_out[Battery1,143] + grid[143] + gen[143] = 14.4
 power_balance[144]: - 0.95 flow_in[Battery0,144]
   - 0.9 flow_in[Battery1,144] + flow_out[Battery0,144]
   + flow_out[Battery1,144] + grid[144] + gen[144] = 14.5
 power_balance[145]: - 0.95 flow_in[Battery0,145]
   - 0.9 flow_in[Battery1,145] + flow_out[Battery0,145]
   + flow_out[Battery1,145] + grid[145] + gen[145] = 14.3
 power_balance[146]: - 0.95 flow_in[Battery0,146]
   - 0.9 flow_in[Battery1,146] + flow_out[Battery0,146]
   + flow_out[Battery1,146] + grid[146] + gen[146] = 14.3
 power_balance[147]: - 0.95 flow_in[Battery0,147]
   - 0.9 flow_in[Battery1,147] + flow_out[Battery0,147]
   + flow_out[Battery1,147] + grid[147] + gen[147] = 14.3
 power_balance[148]: - 0.95 flow_in[Battery0,148]
   - 0.9 flow_in[Battery1,148] + flow_out[Battery0,148]
   + flow_out[Battery1,148] + grid[148] + gen[148] = 14.3
 power_balance[149]: - 0.95 flow_in[Battery0,149]
   - 0.9 flow_in[Battery1,149] + flow_out[Battery0,149]
   + flow_out[Battery1,149] + grid[149] + gen[149] = 14.3
 power_balance[150]: - 0.95 flow_in[Battery0,150]
   - 0.9 flow_in[Battery1,150] + flow_out[Battery0,150]
   + flow_out[Battery1,150] + grid[150] + gen[150] = 14.4
 power_balance[151]: - 0.95 flow_in[Battery0,151]
   - 0.9 flow_in[Battery1,151] + flow_out[Battery0,151]
   + flow_out[Battery1,151] + grid[151] + gen[151] = 14.3
 power_balance[152]: - 0.95 flow_in[Battery0,152]
   - 0.9 flow_in[Battery1,152] + flow_out[Battery0,152]
   + flow_out[Battery1,152] + grid[152] + gen[152] = 14.2
 power_balance[153]: - 0.95 flow_in[Battery0,153]
   - 0.9 flow_in[Battery1,153] + flow_out[Battery0,153]
   + flow_out[Battery1,153] + grid[153] + gen[153] = 14.1
 power_balance[154]: - 0.95 flow_in[Battery0,154]
   - 0.9 flow_in[Battery1,154] + flow_out[Battery0,154]
   + flow_out[Battery1,154] + grid[154] + gen[154] = 14.1
 power_balance[155]: - 0.95 flow_in[Battery0,155]
   - 0.9 flow_in[Battery1,155] + flow_out[Battery0,155]
   + flow_out[Battery1,155] + grid[155] + gen[155] = 14.2
 power_balance[156]: - 0.95 flow_in[Battery0,156]
   - 0.9 flow_in[Battery1,156] + flow_out[Battery0,156]
   + flow_out[Battery1,156] + grid[156] + gen[156] = 14.2
 power_balance[157]: - 0.95 flow_in[Battery0,157]
   - 0.9 flow_in[Battery1,157] + flow_out[Battery0,157]
   + flow_out[Battery1,157] + grid[157] + gen[157] = 14.2
 power_balance[158]: - 0.95 flow_in[Battery0,158]
   - 0.9 flow_in[Battery1,158] + flow_out[Battery0,158]
   + flow_out[Battery1,158] + grid[158] + gen[158] = 14.2
 power_balance[159]: - 0.95 flow_in[Battery0,159]
   - 0.9 flow_in[Battery1,159] + flow_out[Battery0,159]
   + flow_out[Battery1,159] + grid[159] + gen[159] = 14.3
 power_balance[160]: - 0.95 flow_in[Battery0,160]
   - 0.9 flow_in[Battery1,160] + flow_out[Battery0,160]
   + flow_out[Battery1,160] + grid[160] + gen[160] = 14.4
 power_balance[161]: - 0.95 flow_in[Battery0,161]
   - 0.9 flow_in[Battery1,161] + flow_out[Battery0,161]
   + flow_out[Battery1,161] + grid[161] + gen[161] = 14.5
 power_balance[162]: - 0.95 flow_in[Battery0,162]
   - 0.9 flow_in[Battery1,162] + flow_out[Battery0,162]
   + flow_out[Battery1,162] + grid[162] + gen[162] = 14.4
 power_balance[163]: - 0.95 flow_in[Battery0,163]
   - 0.9 flow_in[Battery1,163] + flow_out[Battery0,163]
   + flow_out[Battery1,163] + grid[163] + gen[163] = 14.3
 power_balance[164]: - 0.95 flow_in[Battery0,164]
   - 0.9 flow_in[Battery1,164] + flow_out[Battery0,164]
   + flow_out[Battery1,164] + grid[164] + gen[164] = 14.4
 power_balance[165]: - 0.95 flow_in[Battery0,165]
   - 0.9 flow_in[Battery1,165] + flow_out[Battery0,165]
   + flow_out[Battery1,165] + grid[165] + gen[165] = 14.3
 power_balance[166]: - 0.95 flow_in[Battery0,166]
   - 0.9 flow_in[Battery1,166] + flow_out[Battery0,166]
   + flow_out[Battery1,166] + grid[166] + gen[166] = 14.4
 power_balance[167]: - 0.95 flow_in[Battery0,167]
   - 0.9 flow_in[Battery1,167] + flow_out[Battery0,167]
   + flow_out[Battery1,167] + grid[167] + gen[167] = 54.3
 power_balance[168]: - 0.95 flow_in[Battery0,168]
   - 0.9 flow_in[Battery1,168] + flow_out[Battery0,168]
   + flow_out[Battery1,168] + grid[168] + gen[168] = 54.2
 power_balance[169]: - 0.95 flow_in[Battery0,169]
   - 0.9 flow_in[Battery1,169] + flow_out[Battery0,169]
   + flow_out[Battery1,169] + grid[169] + gen[169] = 54.2
 power_balance[170]: - 0.95 flow_in[Battery0,170]
   - 0.9 flow_in[Battery1,170] + flow_out[Battery0,170]
   + flow_out[Battery1,170] + grid[170] + gen[170] = 54.3
 power_balance[171]: - 0.95 flow_in[Battery0,171]
   - 0.9 flow_in[Battery1,171] + flow_out[Battery0,171]
   + flow_out[Battery1,171] + grid[171] + gen[171] = 54.2
 power_balance[172]: - 0.95 flow_in[Battery0,172]
   - 0.9 flow_in[Battery1,172] + flow_out[Battery0,172]
   + flow_out[Battery1,172] + grid[172] + gen[172] = 53.9
 power_balance[173]: - 0.95 flow_in[Battery0,173]
   - 0.9 flow_in[Battery1,173] + flow_out[Battery0,173]
   + flow_out[Battery1,173] + grid[173] + gen[173] = 54
 power_balance[174]: - 0.95 flow_in[Battery0,174]
   - 0.9 flow_in[Battery1,174] + flow_out[Battery0,174]
   + flow_out[Battery1,174] + grid[174] + gen[174] = 14
 power_balance[175]: - 0.95 flow_in[Battery0,175]
   - 0.9 flow_in[Battery1,175] + flow_out[Battery0,175]
   + flow_out[Battery1,175] + grid[175] + gen[175] = 14
 power_balance[176]: - 0.95 flow_in[Battery0,176]
   - 0.9 flow_in[Battery1,176] + flow_out[Battery0,176]
   + flow_out[Battery1,176] + grid[176] + gen[176] = 14
 power_balance[177]: - 0.95 flow_in[Battery0,177]
   - 0.9 flow_in[Battery1,177] + flow_out[Battery0,177]
   + flow_out[Battery1,177] + grid[177] + gen[177] = 14
 power_balance[178]: - 0.95 flow_in[Battery0,178]
   - 0.9 flow_in[Battery1,178] + flow_out[Battery0,178]
   + flow_out[Battery1,178] + grid[178] + gen[178] = 13.8
 power_balance[179]: - 0.95 flow_in[Battery0,179]
   - 0.9 flow_in[Battery1,179] + flow_out[Battery0,179]
   + flow_out[Battery1,179] + grid[179] + gen[179] = 13.9
 initial_state[Battery0]: - 0.95 flow_in[Battery0,0] + flow_out[Battery0,0]
   + state[Battery0,0] = 0
 initial_state[Battery1]: - 0.9 flow_in[Battery1,0] + flow_out[Battery1,0]
   + state[Battery1,0] = 0
 subsequent_state[Battery0,1]: - 0.95 flow_in[Battery0,0]
   + flow_out[Battery0,0] - state[Battery0,0] + state[Battery0,1] = 0
 subsequent_state[Battery0,2]: - 0.95 flow_in[Battery0,1]
   + flow_out[Battery0,1] - state[Battery0,1] + state[Battery0,2] = 0
 subsequent_state[Battery0,3]: - 0.95 flow_in[Battery0,2]
   + flow_out[Battery0,2] - state[Battery0,2] + state[Battery0,3] = 0
 subsequent_state[Battery0,4]: - 0.95 flow_in[Battery0,3]
   + flow_out[Battery0,3] - state[Battery0,3] + state[Battery0,4] = 0
 subsequent_state[Battery0,5]: - 0.95 flow_in[Battery0,4]
   + flow_out[Battery0,4] - state[Battery0,4] + state[Battery0,5] = 0
 subsequent_state[Battery0,6]: - 0.95 flow_in[Battery0,5]
   + flow_out[Battery0,5] - state[Battery0,5] + state[Battery0,6] = 0
 subsequent_state[Battery0,7]: - 0.95 flow_in[Battery0,6]
   + flow_out[Battery0,6] - state[Battery0,6] + state[Battery0,7] = 0
 subsequent_state[Battery0,8]: - 0.95 flow_in[Battery0,7]
   + flow_out[Battery0,7] - state[Battery0,7] + state[Battery0,8] = 0
 subsequent_state[Battery0,9]: - 0.95 flow_in[Battery0,8]
   + flow_out[Battery0,8] - state[Battery0,8] + state[Battery0,9] = 0
 subsequent_state[Battery0,10]: - 0.95 flow_in[Battery0,9]
   + flow_out[Battery0,9] - state[Battery0,9] + state[Battery0,10] = 0
 subsequent_state[Battery0,11]: - 0.95 flow_in[Battery0,10]
   + flow_out[Battery0,10] - state[Battery0,10] + state[Battery0,11] = 0
 subsequent_state[Battery0,12]: - 0.95 flow_in[Battery0,11]
   + flow_out[Battery0,11] - state[Battery0,11] + state[Battery0,12] = 0
 subsequent_state[Battery0,13]: - 0.95 flow_in[Battery0,12]
   + flow_out[Battery0,12] - state[Battery0,12] + state[Battery0,13] = 0
 subsequent_state[Battery0,14]: - 0.95 flow_in[Battery0,13]
   + flow_out[Battery0,13] - state[Battery0,13] + state[Battery0,14] = 0
 subsequent_state[Battery0,15]: - 0.95 flow_in[Battery0,14]
   + flow_out[Battery0,14] - state[Battery0,14] + state[Battery0,15] = 0
 subsequent_state[Battery0,16]: - 0.95 flow_in[Battery0,15]
   + flow_out[Battery0,15] - state[Battery0,15] + state[Battery0,16] = 0
 subsequent_state[Battery0,17]: - 0.95 flow_in[Battery0,16]
   + flow_out[Battery0,16] - state[Battery0,16] + state[Battery0,17] = 0
 subsequent_state[Battery0,18]: - 0.95 flow_in[Battery0,17]
   + flow_out[Battery0,17] - state[Battery0,17] + state[Battery0,18] = 0
 subsequent_state[Battery0,19]: - 0.95 flow_in[Battery0,18]
   + flow_out[Battery0,18] - state[Battery0,18] + state[Battery0,19] = 0
 subsequent_state[Battery0,20]: - 0.95 flow_in[Battery0,19]
   + flow_out[Battery0,19] - state[Battery0,19] + state[Battery0,20] = 0
 subsequent_state[Battery0,21]: - 0.95 flow_in[Battery0,20]
   + flow_out[Battery0,20] - state[Battery0,20] + state[Battery0,21] = 0
 subsequent_state[Battery0,22]: - 0.95 flow_in[Battery0,21]
   + flow_out[Battery0,21] - state[Battery0,21] + state[Battery0,22] = 0
 subsequent_state[Battery0,23]: - 0.95 flow_in[Battery0,22]
   + flow_out[Battery0,22] - state[Battery0,22] + state[Battery0,23] = 0
 subsequent_state[Battery0,24]: - 0.95 flow_in[Battery0,23]
   + flow_out[Battery0,23] - state[Battery0,23] + state[Battery0,24] = 0
 subsequent_state[Battery0,25]: - 0.95 flow_in[Battery0,24]
   + flow_out[Battery0,24] - state[Battery0,24] + state[Battery0,25] = 0
 subsequent_state[Battery0,26]: - 0.95 flow_in[Battery0,25]
   + flow_out[Battery0,25] - state[Battery0,25] + state[Battery0,26] = 0
 subsequent_state[Battery0,27]: - 0.95 flow_in[Battery0,26]
   + flow_out[Battery0,26] - state[Battery0,26] + state[Battery0,27] = 0
 subsequent_state[Battery0,28]: - 0.95 flow_in[Battery0,27]
   + flow_out[Battery0,27] - state[Battery0,27] + state[Battery0,28] = 0
 subsequent_state[Battery0,29]: - 0.95 flow_in[Battery0,28]
   + flow_out[Battery0,28] - state[Battery0,28] + state[Battery0,29] = 0
 subsequent_state[Battery0,30]: - 0.95 flow_in[Battery0,29]
   + flow_out[Battery0,29] - state[Battery0,29] + state[Battery0,30] = 0
 subsequent_state[Battery0,31]: - 0.95 flow_in[Battery0,30]
   + flow_out[Battery0,30] - state[Battery0,30] + state[Battery0,31] = 0
 subsequent_state[Battery0,32]: - 0.95 flow_in[Battery0,31]
   + flow_out[Battery0,31] - state[Battery0,31] + state[Battery0,32] = 0
 subsequent_state[Battery0,33]: - 0.95 flow_in[Battery0,32]
   + flow_out[Battery0,32] - state[Battery0,32] + state[Battery0,33] = 0
 subsequent_state[Battery0,34]: - 0.95 flow_in[Battery0,33]
   + flow_out[Battery0,33] - state[Battery0,33] + state[Battery0,34] = 0
 subsequent_state[Battery0,35]: - 0.95 flow_in[Battery0,34]
   + flow_out[Battery0,34] - state[Battery0,34] + state[Battery0,35] = 0
 subsequent_state[Battery0,36]: - 0.95 flow_in[Battery0,35]
   + flow_out[Battery0,35] - state[Battery0,35] + state[Battery0,36] = 0
 subsequent_state[Battery0,37]: - 0.95 flow_in[Battery0,36]
   + flow_out[Battery0,36] - state[Battery0,36] + state[Battery0,37] = 0
 subsequent_state[Battery0,38]: - 0.95 flow_in[Battery0,37]
   + flow_out[Battery0,37] - state[Battery0,37] + state[Battery0,38] = 0
 subsequent_state[Battery0,39]: - 0.95 flow_in[Battery0,38]
   + flow_out[Battery0,38] - state[Battery0,38] + state[Battery0,39] = 0
 subsequent_state[Battery0,40]: - 0.95 flow_in[Battery0,39]
   + flow_out[Battery0,39] - state[Battery0,39] + state[Battery0,40] = 0
 subsequent_state[Battery0,41]: - 0.95 flow_in[Battery0,40]
   + flow_out[Battery0,40] - state[Battery0,40] + state[Battery0,41] = 0
 subsequent_state[Battery0,42]: - 0.95 flow_in[Battery0,41]
   + flow_out[Battery0,41] - state[Battery0,41] + state[Battery0,42] = 0
 subsequent_state[Battery0,43]: - 0.95 flow_in[Battery0,42]
   + flow_out[Battery0,42] - state[Battery0,42] + state[Battery0,43] = 0
 subsequent_state[Battery0,44]: - 0.95 flow_in[Battery0,43]
   + flow_out[Battery0,43] - state[Battery0,43] + state[Battery0,44] = 0
 subsequent_state[Battery0,45]: - 0.95 flow_in[Battery0,44]
   + flow_out[Battery0,44] - state[Battery0,44] + state[Battery0,45] = 0
 subsequent_state[Battery0,46]: - 0.95 flow_in[Battery0,45]
   + flow_out[Battery0,45] - state[Battery0,45] + state[Battery0,46] = 0
 subsequent_state[Battery0,47]: - 0.95 flow_in[Battery0,46]
   + flow_out[Battery0,46] - state[Battery0,46] + state[Battery0,47] = 0
 subsequent_state[Battery0,48]: - 0.95 flow_in[Battery0,47]
   + flow_out[Battery0,47] - state[Battery0,47] + state[Battery0,48] = 0
 subsequent_state[Battery0,49]: - 0.95 flow_in[Battery0,48]
   + flow_out[Battery0,48] - state[Battery0,48] + state[Battery0,49] = 0
 subsequent_state[Battery0,50]: - 0.95 flow_in[Battery0,49]
   + flow_out[Battery0,49] - state[Battery0,49] + state[Battery0,50] = 0
 subsequent_state[Battery0,51]: - 0.95 flow_in[Battery0,50]
   + flow_out[Battery0,50] - state[Battery0,50] + state[Battery0,51] = 0
 subsequent_state[Battery0,52]: - 0.95 flow_in[Battery0,51]
   + flow_out[Battery0,51] - state[Battery0,51] + state[Battery0,52] = 0
 subsequent_state[Battery0,53]: - 0.95 flow_in[Battery0,52]
   + flow_out[Battery0,52] - state[Battery0,52] + state[Battery0,53] = 0
 subsequent_state[Battery0,54]: - 0.95 flow_in[Battery0,53]
   + flow_out[Battery0,53] - state[Battery0,53] + state[Battery0,54] = 0
 subsequent_state[Battery0,55]: - 0.95 flow_in[Battery0,54]
   + flow_out[Battery0,54] - state[Battery0,54] + state[Battery0,55] = 0
 subsequent_state[Battery0,56]: - 0.95 flow_in[Battery0,55]
   + flow_out[Battery0,55] - state[Battery0,55] + state[Battery0,56] = 0
 subsequent_state[Battery0,57]: - 0.95 flow_in[Battery0,56]
   + flow_out[Battery0,56] - state[Battery0,56] + state[Battery0,57] = 0
 subsequent_state[Battery0,58]: - 0.95 flow_in[Battery0,57]
   + flow_out[Battery0,57] - state[Battery0,57] + state[Battery0,58] = 0
 subsequent_state[Battery0,59]: - 0.95 flow_in[Battery0,58]
   + flow_out[Battery0,58] - state[Battery0,58] + state[Battery0,59] = 0
 subsequent_state[Battery0,60]: - 0.95 flow_in[Battery0,59]
   + flow_out[Battery0,59] - state[Battery0,59] + state[Battery0,60] = 0
 subsequent_state[Battery0,61]: - 0.95 flow_in[Battery0,60]
   + flow_out[Battery0,60] - state[Battery0,60] + state[Battery0,61] = 0
 subsequent_state[Battery0,62]: - 0.95 flow_in[Battery0,61]
   + flow_out[Battery0,61] - state[Battery0,61] + state[Battery0,62] = 0
 subsequent_state[Battery0,63]: - 0.95 flow_in[Battery0,62]
   + flow_out[Battery0,62] - state[Battery0,62] + state[Battery0,63] = 0
 subsequent_state[Battery0,64]: - 0.95 flow_in[Battery0,63]
   + flow_out[Battery0,63] - state[Battery0,63] + state[Battery0,64] = 0
 subsequent_state[Battery0,65]: - 0.95 flow_in[Battery0,64]
   + flow_out[Battery0,64] - state[Battery0,64] + state[Battery0,65] = 0
 subsequent_state[Battery0,66]: - 0.95 flow_in[Battery0,65]
   + flow_out[Battery0,65] - state[Battery0,65] + state[Battery0,66] = 0
 subsequent_state[Battery0,67]: - 0.95 flow_in[Battery0,66]
   + flow_out[Battery0,66] - state[Battery0,66] + state[Battery0,67] = 0
 subsequent_state[Battery0,68]: - 0.95 flow_in[Battery0,67]
   + flow_out[Battery0,67] - state[Battery0,67] + state[Battery0,68] = 0
 subsequent_state[Battery0,69]: - 0.95 flow_in[Battery0,68]
   + flow_out[Battery0,68] - state[Battery0,68] + state[Battery0,69] = 0
 subsequent_state[Battery0,70]: - 0.95 flow_in[Battery0,69]
   + flow_out[Battery0,69] - state[Battery0,69] + state[Battery0,70] = 0
 subsequent_state[Battery0,71]: - 0.95 flow_in[Battery0,70]
   + flow_out[Battery0,70] - state[Battery0,70] + state[Battery0,71] = 0
 subsequent_state[Battery0,72]: - 0.95 flow_in[Battery0,71]
   + flow_out[Battery0,71] - state[Battery0,71] + state[Battery0,72] = 0
 subsequent_state[Battery0,73]: - 0.95 flow_in[Battery0,72]
   + flow_out[Battery0,72] - state[Battery0,72] + state[Battery0,73] = 0
 subsequent_state[Battery0,74]: - 0.95 flow_in[Battery0,73]
   + flow_out[Battery0,73] - state[Battery0,73] + state[Battery0,74] = 0
 subsequent_state[Battery0,75]: - 0.95 flow_in[Battery0,74]
   + flow_out[Battery0,74] - state[Battery0,74] + state[Battery0,75] = 0
 subsequent_state[Battery0,76]: - 0.95 flow_in[Battery0,75]
   + flow_out[Battery0,75] - state[Battery0,75] + state[Battery0,76] = 0
 subsequent_state[Battery0,77]: - 0.95 flow_in[Battery0,76]
   + flow_out[Battery0,76] - state[Battery0,76] + state[Battery0,77] = 0
 subsequent_state[Battery0,78]: - 0.95 flow_in[Battery0,77]
   + flow_out[Battery0,77] - state[Battery0,77] + state[Battery0,78] = 0
 subsequent_state[Battery0,79]: - 0.95 flow_in[Battery0,78]
   + flow_out[Battery0,78] - state[Battery0,78] + state[Battery0,79] = 0
 subsequent_state[Battery0,80]: - 0.95 flow_in[Battery0,79]
   + flow_out[Battery0,79] - state[Battery0,79] + state[Battery0,80] = 0
 subsequent_state[Battery0,81]: - 0.95 flow_in[Battery0,80]
   + flow_out[Battery0,80] - state[Battery0,80] + state[Battery0,81] = 0
 subsequent_state[Battery0,82]: - 0.95 flow_in[Battery0,81]
   + flow_out[Battery0,81] - state[Battery0,81] + state[Battery0,82] = 0
 subsequent_state[Battery0,83]: - 0.95 flow_in[Battery0,82]
   + flow_out[Battery0,82] - state[Battery0,82] + state[Battery0,83] = 0
 subsequent_state[Battery0,84]: - 0.95 flow_in[Battery0,83]
   + flow_out[Battery0,83] - state[Battery0,83] + state[Battery0,84] = 0
 subsequent_state[Battery0,85]: - 0.95 flow_in[Battery0,84]
   + flow_out[Battery0,84] - state[Battery0,84] + state[Battery0,85] = 0
 subsequent_state[Battery0,86]: - 0.95 flow_in[Battery0,85]
   + flow_out[Battery0,85] - state[Battery0,85] + state[Battery0,86] = 0
 subsequent_state[Battery0,87]: - 0.95 flow_in[Battery0,86]
   + flow_out[Battery0,86] - state[Battery0,86] + state[Battery0,87] = 0
 subsequent_state[Battery0,88]: - 0.95 flow_in[Battery0,87]
   + flow_out[Battery0,87] - state[Battery0,87] + state[Battery0,88] = 0
 subsequent_state[Battery0,89]: - 0.95 flow_in[Battery0,88]
   + flow_out[Battery0,88] - state[Battery0,88] + state[Battery0,89] = 0
 subsequent_state[Battery0,90]: - 0.95 flow_in[Battery0,89]
   + flow_out[Battery0,89] - state[Battery0,89] + state[Battery0,90] = 0
 subsequent_state[Battery0,91]: - 0.95 flow_in[Battery0,90]
   + flow_out[Battery0,90] - state[Battery0,90] + state[Battery0,91] = 0
 subsequent_state[Battery0,92]: - 0.95 flow_in[Battery0,91]
   + flow_out[Battery0,91] - state[Battery0,91] + state[Battery0,92] = 0
 subsequent_state[Battery0,93]: - 0.95 flow_in[Battery0,92]
   + flow_out[Battery0,92] - state[Battery0,92] + state[Battery0,93] = 0
 subsequent_state[Battery0,94]: - 0.95 flow_in[Battery0,93]
   + flow_out[Battery0,93] - state[Battery0,93] + state[Battery0,94] = 0
 subsequent_state[Battery0,95]: - 0.95 flow_in[Battery0,94]
   + flow_out[Battery0,94] - state[Battery0,94] + state[Battery0,95] = 0
 subsequent_state[Battery0,96]: - 0.95 flow_in[Battery0,95]
   + flow_out[Battery0,95] - state[Battery0,95] + state[Battery0,96] = 0
 subsequent_state[Battery0,97]: - 0.95 flow_in[Battery0,96]
   + flow_out[Battery0,96] - state[Battery0,96] + state[Battery0,97] = 0
 subsequent_state[Battery0,98]: - 0.95 flow_in[Battery0,97]
   + flow_out[Battery0,97] - state[Battery0,97] + state[Battery0,98] = 0
 subsequent_state[Battery0,99]: - 0.95 flow_in[Battery0,98]
   + flow_out[Battery0,98] - state[Battery0,98] + state[Battery0,99] = 0
 subsequent_state[Battery0,100]: - 0.95 flow_in[Battery0,99]
   + flow_out[Battery0,99] - state[Battery0,99] + state[Battery0,100] = 0
 subsequent_state[Battery0,101]: - 0.95 flow_in[Battery0,100]
   + flow_out[Battery0,100] - state[Battery0,100] + state[Battery0,101]
   = 0
 subsequent_state[Battery0,102]: - 0.95 flow_in[Battery0,101]
   + flow_out[Battery0,101] - state[Battery0,101] + state[Battery0,102]
   = 0
 subsequent_state[Battery0,103]: - 0.95 flow_in[Battery0,102]
   + flow_out[Battery0,102] - state[Battery0,102] + state[Battery0,103]
   = 0
 subsequent_state[Battery0,104]: - 0.95 flow_in[Battery0,103]
   + flow_out[Battery0,103] - state[Battery0,103] + state[Battery0,104]
   = 0
 subsequent_state[Battery0,105]: - 0.95 flow_in[Battery0,104]
   + flow_out[Battery0,104] - state[Battery0,104] + state[Battery0,105]
   = 0
 subsequent_state[Battery0,106]: - 0.95 flow_in[Battery0,105]
   + flow_out[Battery0,105] - state[Battery0,105] + state[Battery0,106]
   = 0
 subsequent_state[Battery0,107]: - 0.95 flow_in[Battery0,106]
   + flow_out[Battery0,106] - state[Battery0,106] + state[Battery0,107]
   = 0
 subsequent_state[Battery0,108]: - 0.95 flow_in[Battery0,107]
   + flow_out[Battery0,107] - state[Battery0,107] + state[Battery0,108]
   = 0
 subsequent_state[Battery0,109]: - 0.95 flow_in[Battery0,108]
   + flow_out[Battery0,108] - state[Battery0,108] + state[Battery0,109]
   = 0
 subsequent_state[Battery0,110]: - 0.95 flow_in[Battery0,109]
   + flow_out[Battery0,109] - state[Battery0,109] + state[Battery0,110]
   = 0
 subsequent_state[Battery0,111]: - 0.95 flow_in[Battery0,110]
   + flow_out[Battery0,110] - state[Battery0,110] + state[Battery0,111]
   = 0
 subsequent_state[Battery0,112]: - 0.95 flow_in[Battery0,111]
   + flow_out[Battery0,111] - state[Battery0,111] + state[Battery0,112]
   = 0
 subsequent_state[Battery0,113]: - 0.95 flow_in[Battery0,112]
   + flow_out[Battery0,112] - state[Battery0,112] + state[Battery0,113]
   = 0
 subsequent_state[Battery0,114]: - 0.95 flow_in[Battery0,113]
   + flow_out[Battery0,113] - state[Battery0,113] + state[Battery0,114]
   = 0
 subsequent_state[Battery0,115]: - 0.95 flow_in[Battery0,114]
   + flow_out[Battery0,114] - state[Battery0,114] + state[Battery0,115]
   = 0
 subsequent_state[Battery0,116]: - 0.95 flow_in[Battery0,115]
   + flow_out[Battery0,115] - state[Battery0,115] + state[Battery0,116]
   = 0
 subsequent_state[Battery0,117]: - 0.95 flow_in[Battery0,116]
   + flow_out[Battery0,116] - state[Battery0,116] + state[Battery0,117]
   = 0
 subsequent_state[Battery0,118]: - 0.95 flow_in[Battery0,117]
   + flow_out[Battery0,117] - state[Battery0,117] + state[Battery0,118]
   = 0
 subsequent_state[Battery0,119]: - 0.95 flow_in[Battery0,118]
   + flow_out[Battery0,118] - state[Battery0,118] + state[Battery0,119]
   = 0
 subsequent_state[Battery0,120]: - 0.95 flow_in[Battery0,119]
   + flow_out[Battery0,119] - state[Battery0,119] + state[Battery0,120]
   = 0
 subsequent_state[Battery0,121]: - 0.95 flow_in[Battery0,120]
   + flow_out[Battery0,120] - state[Battery0,120] + state[Battery0,121]
   = 0
 subsequent_state[Battery0,122]: - 0.95 flow_in[Battery0,121]
   + flow_out[Battery0,121] - state[Battery0,121] + state[Battery0,122]
   = 0
 subsequent_state[Battery0,123]: - 0.95 flow_in[Battery0,122]
   + flow_out[Battery0,122] - state[Battery0,122] + state[Battery0,123]
   = 0
 subsequent_state[Battery0,124]: - 0.95 flow_in[Battery0,123]
   + flow_out[Battery0,123] - state[Battery0,123] + state[Battery0,124]
   = 0
 subsequent_state[Battery0,125]: - 0.95 flow_in[Battery0,124]
   + flow_out[Battery0,124] - state[Battery0,124] + state[Battery0,125]
   = 0
 subsequent_state[Battery0,126]: - 0.95 flow_in[Battery0,125]
   + flow_out[Battery0,125] - state[Battery0,125] + state[Battery0,126]
   = 0
 subsequent_state[Battery0,127]: - 0.95 flow_in[Battery0,126]
   + flow_out[Battery0,126] - state[Battery0,126] + state[Battery0,127]
   = 0
 subsequent_state[Battery0,128]: - 0.95 flow_in[Battery0,127]
   + flow_out[Battery0,127] - state[Battery0,127] + state[Battery0,128]
   = 0
 subsequent_state[Battery0,129]: - 0.95 flow_in[Battery0,128]
   + flow_out[Battery0,128] - state[Battery0,128] + state[Battery0,129]
   = 0
 subsequent_state[Battery0,130]: - 0.95 flow_in[Battery0,129]
   + flow_out[Battery0,129] - state[Battery0,129] + state[Battery0,130]
   = 0
 subsequent_state[Battery0,131]: - 0.95 flow_in[Battery0,130]
   + flow_out[Battery0,130] - state[Battery0,130] + state[Battery0,131]
   = 0
 subsequent_state[Battery0,132]: - 0.95 flow_in[Battery0,131]
   + flow_out[Battery0,131] - state[Battery0,131] + state[Battery0,132]
   = 0
 subsequent_state[Battery0,133]: - 0.95 flow_in[Battery0,132]
   + flow_out[Battery0,132] - state[Battery0,132] + state[Battery0,133]
   = 0
 subsequent_state[Battery0,134]: - 0.95 flow_in[Battery0,133]
   + flow_out[Battery0,133] - state[Battery0,133] + state[Battery0,134]
   = 0
 subsequent_state[Battery0,135]: - 0.95 flow_in[Battery0,134]
   + flow_out[Battery0,134] - state[Battery0,134] + state[Battery0,135]
   = 0
 subsequent_state[Battery0,136]: - 0.95 flow_in[Battery0,135]
   + flow_out[Battery0,135] - state[Battery0,135] + state[Battery0,136]
   = 0
 subsequent_state[Battery0,137]: - 0.95 flow_in[Battery0,136]
   + flow_out[Battery0,136] - state[Battery0,136] + state[Battery0,137]
   = 0
 subsequent_state[Battery0,138]: - 0.95 flow_in[Battery0,137]
   + flow_out[Battery0,137] - state[Battery0,137] + state[Battery0,138]
   = 0
 subsequent_state[Battery0,139]: - 0.95 flow_in[Battery0,138]
   + flow_out[Battery0,138] - state[Battery0,138] + state[Battery0,139]
   = 0
 subsequent_state[Battery0,140]: - 0.95 flow_in[Battery0,139]
   + flow_out[Battery0,139] - state[Battery0,139] + state[Battery0,140]
   = 0
 subsequent_state[Battery0,141]: - 0.95 flow_in[Battery0,140]
   + flow_out[Battery0,140] - state[Battery0,140] + state[Battery0,141]
   = 0
 subsequent_state[Battery0,142]: - 0.95 flow_in[Battery0,141]
   + flow_out[Battery0,141] - state[Battery0,141] + state[Battery0,142]
   = 0
 subsequent_state[Battery0,143]: - 0.95 flow_in[Battery0,142]
   + flow_out[Battery0,142] - state[Battery0,142] + state[Battery0,143]
   = 0
 subsequent_state[Battery0,144]: - 0.95 flow_in[Battery0,143]
   + flow_out[Battery0,143] - state[Battery0,143] + state[Battery0,144]
   = 0
 subsequent_state[Battery0,145]: - 0.95 flow_in[Battery0,144]
   + flow_out[Battery0,144] - state[Battery0,144] + state[Battery0,145]
   = 0
 subsequent_state[Battery0,146]: - 0.95 flow_in[Battery0,145]
   + flow_out[Battery0,145] - state[Battery0,145] + state[Battery0,146]
   = 0
 subsequent_state[Battery0,147]: - 0.95 flow_in[Battery0,146]
   + flow_out[Battery0,146] - state[Battery0,146] + state[Battery0,147]
   = 0
 subsequent_state[Battery0,148]: - 0.95 flow_in[Battery0,147]
   + flow_out[Battery0,147] - state[Battery0,147] + state[Battery0,148]
   = 0
 subsequent_state[Battery0,149]: - 0.95 flow_in[Battery0,148]
   + flow_out[Battery0,148] - state[Battery0,148] + state[Battery0,149]
   = 0
 subsequent_state[Battery0,150]: - 0.95 flow_in[Battery0,149]
   + flow_out[Battery0,149] - state[Battery0,149] + state[Battery0,150]
   = 0
 subsequent_state[Battery0,151]: - 0.95 flow_in[Battery0,150]
   + flow_out[Battery0,150] - state[Battery0,150] + state[Battery0,151]
   = 0
 subsequent_state[Battery0,152]: - 0.95 flow_in[Battery0,151]
   + flow_out[Battery0,151] - state[Battery0,151] + state[Battery0,152]
   = 0
 subsequent_state[Battery0,153]: - 0.95 flow_in[Battery0,152]
   + flow_out[Battery0,152] - state[Battery0,152] + state[Battery0,153]
   = 0
 subsequent_state[Battery0,154]: - 0.95 flow_in[Battery0,153]
   + flow_out[Battery0,153] - state[Battery0,153] + state[Battery0,154]
   = 0
 subsequent_state[Battery0,155]: - 0.95 flow_in[Battery0,154]
   + flow_out[Battery0,154] - state[Battery0,154] + state[Battery0,155]
   = 0
 subsequent_state[Battery0,156]: - 0.95 flow_in[Battery0,155]
   + flow_out[Battery0,155] - state[Battery0,155] + state[Battery0,156]
   = 0
 subsequent_state[Battery0,157]: - 0.95 flow_in[Battery0,156]
   + flow_out[Battery0,156] - state[Battery0,156] + state[Battery0,157]
   = 0
 subsequent_state[Battery0,158]: - 0.95 flow_in[Battery0,157]
   + flow_out[Battery0,157] - state[Battery0,157] + state[Battery0,158]
   = 0
 subsequent_state[Battery0,159]: - 0.95 flow_in[Battery0,158]
   + flow_out[Battery0,158] - state[Battery0,158] + state[Battery0,159]
   = 0
 subsequent_state[Battery0,160]: - 0.95 flow_in[Battery0,159]
   + flow_out[Battery0,159] - state[Battery0,159] + state[Battery0,160]
   = 0
 subsequent_state[Battery0,161]: - 0.95 flow_in[Battery0,160]
   + flow_out[Battery0,160] - state[Battery0,160] + state[Battery0,161]
   = 0
 subsequent_state[Battery0,162]: - 0.95 flow_in[Battery0,161]
   + flow_out[Battery0,161] - state[Battery0,161] + state[Battery0,162]
   = 0
 subsequent_state[Battery0,163]: - 0.95 flow_in[Battery0,162]
   + flow_out[Battery0,162] - state[Battery0,162] + state[Battery0,163]
   = 0
 subsequent_state[Battery0,164]: - 0.95 flow_in[Battery0,163]
   + flow_out[Battery0,163] - state[Battery0,163] + state[Battery0,164]
   = 0
 subsequent_state[Battery0,165]: - 0.95 flow_in[Battery0,164]
   + flow_out[Battery0,164] - state[Battery0,164] + state[Battery0,165]
   = 0
 subsequent_state[Battery0,166]: - 0.95 flow_in[Battery0,165]
   + flow_out[Battery0,165] - state[Battery0,165] + state[Battery0,166]
   = 0
 subsequent_state[Battery0,167]: - 0.95 flow_in[Battery0,166]
   + flow_out[Battery0,166] - state[Battery0,166] + state[Battery0,167]
   = 0
 subsequent_state[Battery0,168]: - 0.95 flow_in[Battery0,167]
   + flow_out[Battery0,167] - state[Battery0,167] + state[Battery0,168]
   = 0
 subsequent_state[Battery0,169]: - 0.95 flow_in[Battery0,168]
   + flow_out[Battery0,168] - state[Battery0,168] + state[Battery0,169]
   = 0
 subsequent_state[Battery0,170]: - 0.95 flow_in[Battery0,169]
   + flow_out[Battery0,169] - state[Battery0,169] + state[Battery0,170]
   = 0
 subsequent_state[Battery0,171]: - 0.95 flow_in[Battery0,170]
   + flow_out[Battery0,170] - state[Battery0,170] + state[Battery0,171]
   = 0
 subsequent_state[Battery0,172]: - 0.95 flow_in[Battery0,171]
   + flow_out[Battery0,171] - state[Battery0,171] + state[Battery0,172]
   = 0
 subsequent_state[Battery0,173]: - 0.95 flow_in[Battery0,172]
   + flow_out[Battery0,172] - state[Battery0,172] + state[Battery0,173]
   = 0
 subsequent_state[Battery0,174]: - 0.95 flow_in[Battery0,173]
   + flow_out[Battery0,173] - state[Battery0,173] + state[Battery0,174]
   = 0
 subsequent_state[Battery0,175]: - 0.95 flow_in[Battery0,174]
   + flow_out[Battery0,174] - state[Battery0,174] + state[Battery0,175]
   = 0
 subsequent_state[Battery0,176]: - 0.95 flow_in[Battery0,175]
   + flow_out[Battery0,175] - state[Battery0,175] + state[Battery0,176]
   = 0
 subsequent_state[Battery0,177]: - 0.95 flow_in[Battery0,176]
   + flow_out[Battery0,176] - state[Battery0,176] + state[Battery0,177]
   = 0
 subsequent_state[Battery0,178]: - 0.95 flow_in[Battery0,177]
   + flow_out[Battery0,177] - state[Battery0,177] + state[Battery0,178]
   = 0
 subsequent_state[Battery0,179]: - 0.95 flow_in[Battery0,178]
   + flow_out[Battery0,178] - state[Battery0,178] + state[Battery0,179]
   = 0
 subsequent_state[Battery1,1]: - 0.9 flow_in[Battery1,0]
   + flow_out[Battery1,0] - state[Battery1,0] + state[Battery1,1] = 0
 subsequent_state[Battery1,2]: - 0.9 flow_in[Battery1,1]
   + flow_out[Battery1,1] - state[Battery1,1] + state[Battery1,2] = 0
 subsequent_state[Battery1,3]: - 0.9 flow_in[Battery1,2]
   + flow_out[Battery1,2] - state[Battery1,2] + state[Battery1,3] = 0
 subsequent_state[Battery1,4]: - 0.9 flow_in[Battery1,3]
   + flow_out[Battery1,3] - state[Battery1,3] + state[Battery1,4] = 0
 subsequent_state[Battery1,5]: - 0.9 flow_in[Battery1,4]
   + flow_out[Battery1,4] - state[Battery1,4] + state[Battery1,5] = 0
 subsequent_state[Battery1,6]: - 0.9 flow_in[Battery1,5]
   + flow_out[Battery1,5] - state[Battery1,5] + state[Battery1,6] = 0
 subsequent_state[Battery1,7]: - 0.9 flow_in[Battery1,6]
   + flow_out[Battery1,6] - state[Battery1,6] + state[Battery1,7] = 0
 subsequent_state[Battery1,8]: - 0.9 flow_in[Battery1,7]
   + flow_out[Battery1,7] - state[Battery1,7] + state[Battery1,8] = 0
 subsequent_state[Battery1,9]: - 0.9 flow_in[Battery1,8]
   + flow_out[Battery1,8] - state[Battery1,8] + state[Battery1,9] = 0
 subsequent_state[Battery1,10]: - 0.9 flow_in[Battery1,9]
   + flow_out[Battery1,9] - state[Battery1,9] + state[Battery1,10] = 0
 subsequent_state[Battery1,11]: - 0.9 flow_in[Battery1,10]
   + flow_out[Battery1,10] - state[Battery1,10] + state[Battery1,11] = 0
 subsequent_state[Battery1,12]: - 0.9 flow_in[Battery1,11]
   + flow_out[Battery1,11] - state[Battery1,11] + state[Battery1,12] = 0
 subsequent_state[Battery1,13]: - 0.9 flow_in[Battery1,12]
   + flow_out[Battery1,12] - state[Battery1,12] + state[Battery1,13] = 0
 subsequent_state[Battery1,14]: - 0.9 flow_in[Battery1,13]
   + flow_out[Battery1,13] - state[Battery1,13] + state[Battery1,14] = 0
 subsequent_state[Battery1,15]: - 0.9 flow_in[Battery1,14]
   + flow_out[Battery1,14] - state[Battery1,14] + state[Battery1,15] = 0
 subsequent_state[Battery1,16]: - 0.9 flow_in[Battery1,15]
   + flow_out[Battery1,15] - state[Battery1,15] + state[Battery1,16] = 0
 subsequent_state[Battery1,17]: - 0.9 flow_in[Battery1,16]
   + flow_out[Battery1,16] - state[Battery1,16] + state[Battery1,17] = 0
 subsequent_state[Battery1,18]: - 0.9 flow_in[Battery1,17]
   + flow_out[Battery1,17] - state[Battery1,17] + state[Battery1,18] = 0
 subsequent_state[Battery1,19]: - 0.9 flow_in[Battery1,18]
   + flow_out[Battery1,18] - state[Battery1,18] + state[Battery1,19] = 0
 subsequent_state[Battery1,20]: - 0.9 flow_in[Battery1,19]
   + flow_out[Battery1,19] - state[Battery1,19] + state[Battery1,20] = 0
 subsequent_state[Battery1,21]: - 0.9 flow_in[Battery1,20]
   + flow_out[Battery1,20] - state[Battery1,20] + state[Battery1,21] = 0
 subsequent_state[Battery1,22]: - 0.9 flow_in[Battery1,21]
   + flow_out[Battery1,21] - state[Battery1,21] + state[Battery1,22] = 0
 subsequent_state[Battery1,23]: - 0.9 flow_in[Battery1,22]
   + flow_out[Battery1,22] - state[Battery1,22] + state[Battery1,23] = 0
 subsequent_state[Battery1,24]: - 0.9 flow_in[Battery1,23]
   + flow_out[Battery1,23] - state[Battery1,23] + state[Battery1,24] = 0
 subsequent_state[Battery1,25]: - 0.9 flow_in[Battery1,24]
   + flow_out[Battery1,24] - state[Battery1,24] + state[Battery1,25] = 0
 subsequent_state[Battery1,26]: - 0.9 flow_in[Battery1,25]
   + flow_out[Battery1,25] - state[Battery1,25] + state[Battery1,26] = 0
 subsequent_state[Battery1,27]: - 0.9 flow_in[Battery1,26]
   + flow_out[Battery1,26] - state[Battery1,26] + state[Battery1,27] = 0
 subsequent_state[Battery1,28]: - 0.9 flow_in[Battery1,27]
   + flow_out[Battery1,27] - state[Battery1,27] + state[Battery1,28] = 0
 subsequent_state[Battery1,29]: - 0.9 flow_in[Battery1,28]
   + flow_out[Battery1,28] - state[Battery1,28] + state[Battery1,29] = 0
 subsequent_state[Battery1,30]: - 0.9 flow_in[Battery1,29]
   + flow_out[Battery1,29] - state[Battery1,29] + state[Battery1,30] = 0
 subsequent_state[Battery1,31]: - 0.9 flow_in[Battery1,30]
   + flow_out[Battery1,30] - state[Battery1,30] + state[Battery1,31] = 0
 subsequent_state[Battery1,32]: - 0.9 flow_in[Battery1,31]
   + flow_out[Battery1,31] - state[Battery1,31] + state[Battery1,32] = 0
 subsequent_state[Battery1,33]: - 0.9 flow_in[Battery1,32]
   + flow_out[Battery1,32] - state[Battery1,32] + state[Battery1,33] = 0
 subsequent_state[Battery1,34]: - 0.9 flow_in[Battery1,33]
   + flow_out[Battery1,33] - state[Battery1,33] + state[Battery1,34] = 0
 subsequent_state[Battery1,35]: - 0.9 flow_in[Battery1,34]
   + flow_out[Battery1,34] - state[Battery1,34] + state[Battery1,35] = 0
 subsequent_state[Battery1,36]: - 0.9 flow_in[Battery1,35]
   + flow_out[Battery1,35] - state[Battery1,35] + state[Battery1,36] = 0
 subsequent_state[Battery1,37]: - 0.9 flow_in[Battery1,36]
   + flow_out[Battery1,36] - state[Battery1,36] + state[Battery1,37] = 0
 subsequent_state[Battery1,38]: - 0.9 flow_in[Battery1,37]
   + flow_out[Battery1,37] - state[Battery1,37] + state[Battery1,38] = 0
 subsequent_state[Battery1,39]: - 0.9 flow_in[Battery1,38]
   + flow_out[Battery1,38] - state[Battery1,38] + state[Battery1,39] = 0
 subsequent_state[Battery1,40]: - 0.9 flow_in[Battery1,39]
   + flow_out[Battery1,39] - state[Battery1,39] + state[Battery1,40] = 0
 subsequent_state[Battery1,41]: - 0.9 flow_in[Battery1,40]
   + flow_out[Battery1,40] - state[Battery1,40] + state[Battery1,41] = 0
 subsequent_state[Battery1,42]: - 0.9 flow_in[Battery1,41]
   + flow_out[Battery1,41] - state[Battery1,41] + state[Battery1,42] = 0
 subsequent_state[Battery1,43]: - 0.9 flow_in[Battery1,42]
   + flow_out[Battery1,42] - state[Battery1,42] + state[Battery1,43] = 0
 subsequent_state[Battery1,44]: - 0.9 flow_in[Battery1,43]
   + flow_out[Battery1,43] - state[Battery1,43] + state[Battery1,44] = 0
 subsequent_state[Battery1,45]: - 0.9 flow_in[Battery1,44]
   + flow_out[Battery1,44] - state[Battery1,44] + state[Battery1,45] = 0
 subsequent_state[Battery1,46]: - 0.9 flow_in[Battery1,45]
   + flow_out[Battery1,45] - state[Battery1,45] + state[Battery1,46] = 0
 subsequent_state[Battery1,47]: - 0.9 flow_in[Battery1,46]
   + flow_out[Battery1,46] - state[Battery1,46] + state[Battery1,47] = 0
 subsequent_state[Battery1,48]: - 0.9 flow_in[Battery1,47]
   + flow_out[Battery1,47] - state[Battery1,47] + state[Battery1,48] = 0
 subsequent_state[Battery1,49]: - 0.9 flow_in[Battery1,48]
   + flow_out[Battery1,48] - state[Battery1,48] + state[Battery1,49] = 0
 subsequent_state[Battery1,50]: - 0.9 flow_in[Battery1,49]
   + flow_out[Battery1,49] - state[Battery1,49] + state[Battery1,50] = 0
 subsequent_state[Battery1,51]: - 0.9 flow_in[Battery1,50]
   + flow_out[Battery1,50] - state[Battery1,50] + state[Battery1,51] = 0
 subsequent_state[Battery1,52]: - 0.9 flow_in[Battery1,51]
   + flow_out[Battery1,51] - state[Battery1,51] + state[Battery1,52] = 0
 subsequent_state[Battery1,53]: - 0.9 flow_in[Battery1,52]
   + flow_out[Battery1,52] - state[Battery1,52] + state[Battery1,53] = 0
 subsequent_state[Battery1,54]: - 0.9 flow_in[Battery1,53]
   + flow_out[Battery1,53] - state[Battery1,53] + state[Battery1,54] = 0
 subsequent_state[Battery1,55]: - 0.9 flow_in[Battery1,54]
   + flow_out[Battery1,54] - state[Battery1,54] + state[Battery1,55] = 0
 subsequent_state[Battery1,56]: - 0.9 flow_in[Battery1,55]
   + flow_out[Battery1,55] - state[Battery1,55] + state[Battery1,56] = 0
 subsequent_state[Battery1,57]: - 0.9 flow_in[Battery1,56]
   + flow_out[Battery1,56] - state[Battery1,56] + state[Battery1,57] = 0
 subsequent_state[Battery1,58]: - 0.9 flow_in[Battery1,57]
   + flow_out[Battery1,57] - state[Battery1,57] + state[Battery1,58] = 0
 subsequent_state[Battery1,59]: - 0.9 flow_in[Battery1,58]
   + flow_out[Battery1,58] - state[Battery1,58] + state[Battery1,59] = 0
 subsequent_state[Battery1,60]: - 0.9 flow_in[Battery1,59]
   + flow_out[Battery1,59] - state[Battery1,59] + state[Battery1,60] = 0
 subsequent_state[Battery1,61]: - 0.9 flow_in[Battery1,60]
   + flow_out[Battery1,60] - state[Battery1,60] + state[Battery1,61] = 0
 subsequent_state[Battery1,62]: - 0.9 flow_in[Battery1,61]
   + flow_out[Battery1,61] - state[Battery1,61] + state[Battery1,62] = 0
 subsequent_state[Battery1,63]: - 0.9 flow_in[Battery1,62]
   + flow_out[Battery1,62] - state[Battery1,62] + state[Battery1,63] = 0
 subsequent_state[Battery1,64]: - 0.9 flow_in[Battery1,63]
   + flow_out[Battery1,63] - state[Battery1,63] + state[Battery1,64] = 0
 subsequent_state[Battery1,65]: - 0.9 flow_in[Battery1,64]
   + flow_out[Battery1,64] - state[Battery1,64] + state[Battery1,65] = 0
 subsequent_state[Battery1,66]: - 0.9 flow_in[Battery1,65]
   + flow_out[Battery1,65] - state[Battery1,65] + state[Battery1,66] = 0
 subsequent_state[Battery1,67]: - 0.9 flow_in[Battery1,66]
   + flow_out[Battery1,66] - state[Battery1,66] + state[Battery1,67] = 0
 subsequent_state[Battery1,68]: - 0.9 flow_in[Battery1,67]
   + flow_out[Battery1,67] - state[Battery1,67] + state[Battery1,68] = 0
 subsequent_state[Battery1,69]: - 0.9 flow_in[Battery1,68]
   + flow_out[Battery1,68] - state[Battery1,68] + state[Battery1,69] = 0
 subsequent_state[Battery1,70]: - 0.9 flow_in[Battery1,69]
   + flow_out[Battery1,69] - state[Battery1,69] + state[Battery1,70] = 0
 subsequent_state[Battery1,71]: - 0.9 flow_in[Battery1,70]
   + flow_out[Battery1,70] - state[Battery1,70] + state[Battery1,71] = 0
 subsequent_state[Battery1,72]: - 0.9 flow_in[Battery1,71]
   + flow_out[Battery1,71] - state[Battery1,71] + state[Battery1,72] = 0
 subsequent_state[Battery1,73]: - 0.9 flow_in[Battery1,72]
   + flow_out[Battery1,72] - state[Battery1,72] + state[Battery1,73] = 0
 subsequent_state[Battery1,74]: - 0.9 flow_in[Battery1,73]
   + flow_out[Battery1,73] - state[Battery1,73] + state[Battery1,74] = 0
 subsequent_state[Battery1,75]: - 0.9 flow_in[Battery1,74]
   + flow_out[Battery1,74] - state[Battery1,74] + state[Battery1,75] = 0
 subsequent_state[Battery1,76]: - 0.9 flow_in[Battery1,75]
   + flow_out[Battery1,75] - state[Battery1,75] + state[Battery1,76] = 0
 subsequent_state[Battery1,77]: - 0.9 flow_in[Battery1,76]
   + flow_out[Battery1,76] - state[Battery1,76] + state[Battery1,77] = 0
 subsequent_state[Battery1,78]: - 0.9 flow_in[Battery1,77]
   + flow_out[Battery1,77] - state[Battery1,77] + state[Battery1,78] = 0
 subsequent_state[Battery1,79]: - 0.9 flow_in[Battery1,78]
   + flow_out[Battery1,78] - state[Battery1,78] + state[Battery1,79] = 0
 subsequent_state[Battery1,80]: - 0.9 flow_in[Battery1,79]
   + flow_out[Battery1,79] - state[Battery1,79] + state[Battery1,80] = 0
 subsequent_state[Battery1,81]: - 0.9 flow_in[Battery1,80]
   + flow_out[Battery1,80] - state[Battery1,80] + state[Battery1,81] = 0
 subsequent_state[Battery1,82]: - 0.9 flow_in[Battery1,81]
   + flow_out[Battery1,81] - state[Battery1,81] + state[Battery1,82] = 0
 subsequent_state[Battery1,83]: - 0.9 flow_in[Battery1,82]
   + flow_out[Battery1,82] - state[Battery1,82] + state[Battery1,83] = 0
 subsequent_state[Battery1,84]: - 0.9 flow_in[Battery1,83]
   + flow_out[Battery1,83] - state[Battery1,83] + state[Battery1,84] = 0
 subsequent_state[Battery1,85]: - 0.9 flow_in[Battery1,84]
   + flow_out[Battery1,84] - state[Battery1,84] + state[Battery1,85] = 0
 subsequent_state[Battery1,86]: - 0.9 flow_in[Battery1,85]
   + flow_out[Battery1,85] - state[Battery1,85] + state[Battery1,86] = 0
 subsequent_state[Battery1,87]: - 0.9 flow_in[Battery1,86]
   + flow_out[Battery1,86] - state[Battery1,86] + state[Battery1,87] = 0
 subsequent_state[Battery1,88]: - 0.9 flow_in[Battery1,87]
   + flow_out[Battery1,87] - state[Battery1,87] + state[Battery1,88] = 0
 subsequent_state[Battery1,89]: - 0.9 flow_in[Battery1,88]
   + flow_out[Battery1,88] - state[Battery1,88] + state[Battery1,89] = 0
 subsequent_state[Battery1,90]: - 0.9 flow_in[Battery1,89]
   + flow_out[Battery1,89] - state[Battery1,89] + state[Battery1,90] = 0
 subsequent_state[Battery1,91]: - 0.9 flow_in[Battery1,90]
   + flow_out[Battery1,90] - state[Battery1,90] + state[Battery1,91] = 0
 subsequent_state[Battery1,92]: - 0.9 flow_in[Battery1,91]
   + flow_out[Battery1,91] - state[Battery1,91] + state[Battery1,92] = 0
 subsequent_state[Battery1,93]: - 0.9 flow_in[Battery1,92]
   + flow_out[Battery1,92] - state[Battery1,92] + state[Battery1,93] = 0
 subsequent_state[Battery1,94]: - 0.9 flow_in[Battery1,93]
   + flow_out[Battery1,93] - state[Battery1,93] + state[Battery1,94] = 0
 subsequent_state[Battery1,95]: - 0.9 flow_in[Battery1,94]
   + flow_out[Battery1,94] - state[Battery1,94] + state[Battery1,95] = 0
 subsequent_state[Battery1,96]: - 0.9 flow_in[Battery1,95]
   + flow_out[Battery1,95] - state[Battery1,95] + state[Battery1,96] = 0
 subsequent_state[Battery1,97]: - 0.9 flow_in[Battery1,96]
   + flow_out[Battery1,96] - state[Battery1,96] + state[Battery1,97] = 0
 subsequent_state[Battery1,98]: - 0.9 flow_in[Battery1,97]
   + flow_out[Battery1,97] - state[Battery1,97] + state[Battery1,98] = 0
 subsequent_state[Battery1,99]: - 0.9 flow_in[Battery1,98]
   + flow_out[Battery1,98] - state[Battery1,98] + state[Battery1,99] = 0
 subsequent_state[Battery1,100]: - 0.9 flow_in[Battery1,99]
   + flow_out[Battery1,99] - state[Battery1,99] + state[Battery1,100] = 0
 subsequent_state[Battery1,101]: - 0.9 flow_in[Battery1,100]
   + flow_out[Battery1,100] - state[Battery1,100] + state[Battery1,101]
   = 0
 subsequent_state[Battery1,102]: - 0.9 flow_in[Battery1,101]
   + flow_out[Battery1,101] - state[Battery1,101] + state[Battery1,102]
   = 0
 subsequent_state[Battery1,103]: - 0.9 flow_in[Battery1,102]
   + flow_out[Battery1,102] - state[Battery1,102] + state[Battery1,103]
   = 0
 subsequent_state[Battery1,104]: - 0.9 flow_in[Battery1,103]
   + flow_out[Battery1,103] - state[Battery1,103] + state[Battery1,104]
   = 0
 subsequent_state[Battery1,105]: - 0.9 flow_in[Battery1,104]
   + flow_out[Battery1,104] - state[Battery1,104] + state[Battery1,105]
   = 0
 subsequent_state[Battery1,106]: - 0.9 flow_in[Battery1,105]
   + flow_out[Battery1,105] - state[Battery1,105] + state[Battery1,106]
   = 0
 subsequent_state[Battery1,107]: - 0.9 flow_in[Battery1,106]
   + flow_out[Battery1,106] - state[Battery1,106] + state[Battery1,107]
   = 0
 subsequent_state[Battery1,108]: - 0.9 flow_in[Battery1,107]
   + flow_out[Battery1,107] - state[Battery1,107] + state[Battery1,108]
   = 0
 subsequent_state[Battery1,109]: - 0.9 flow_in[Battery1,108]
   + flow_out[Battery1,108] - state[Battery1,108] + state[Battery1,109]
   = 0
 subsequent_state[Battery1,110]: - 0.9 flow_in[Battery1,109]
   + flow_out[Battery1,109] - state[Battery1,109] + state[Battery1,110]
   = 0
 subsequent_state[Battery1,111]: - 0.9 flow_in[Battery1,110]
   + flow_out[Battery1,110] - state[Battery1,110] + state[Battery1,111]
   = 0
 subsequent_state[Battery1,112]: - 0.9 flow_in[Battery1,111]
   + flow_out[Battery1,111] - state[Battery1,111] + state[Battery1,112]
   = 0
 subsequent_state[Battery1,113]: - 0.9 flow_in[Battery1,112]
   + flow_out[Battery1,112] - state[Battery1,112] + state[Battery1,113]
   = 0
 subsequent_state[Battery1,114]: - 0.9 flow_in[Battery1,113]
   + flow_out[Battery1,113] - state[Battery1,113] + state[Battery1,114]
   = 0
 subsequent_state[Battery1,115]: - 0.9 flow_in[Battery1,114]
   + flow_out[Battery1,114] - state[Battery1,114] + state[Battery1,115]
   = 0
 subsequent_state[Battery1,116]: - 0.9 flow_in[Battery1,115]
   + flow_out[Battery1,115] - state[Battery1,115] + state[Battery1,116]
   = 0
 subsequent_state[Battery1,117]: - 0.9 flow_in[Battery1,116]
   + flow_out[Battery1,116] - state[Battery1,116] + state[Battery1,117]
   = 0
 subsequent_state[Battery1,118]: - 0.9 flow_in[Battery1,117]
   + flow_out[Battery1,117] - state[Battery1,117] + state[Battery1,118]
   = 0
 subsequent_state[Battery1,119]: - 0.9 flow_in[Battery1,118]
   + flow_out[Battery1,118] - state[Battery1,118] + state[Battery1,119]
   = 0
 subsequent_state[Battery1,120]: - 0.9 flow_in[Battery1,119]
   + flow_out[Battery1,119] - state[Battery1,119] + state[Battery1,120]
   = 0
 subsequent_state[Battery1,121]: - 0.9 flow_in[Battery1,120]
   + flow_out[Battery1,120] - state[Battery1,120] + state[Battery1,121]
   = 0
 subsequent_state[Battery1,122]: - 0.9 flow_in[Battery1,121]
   + flow_out[Battery1,121] - state[Battery1,121] + state[Battery1,122]
   = 0
 subsequent_state[Battery1,123]: - 0.9 flow_in[Battery1,122]
   + flow_out[Battery1,122] - state[Battery1,122] + state[Battery1,123]
   = 0
 subsequent_state[Battery1,124]: - 0.9 flow_in[Battery1,123]
   + flow_out[Battery1,123] - state[Battery1,123] + state[Battery1,124]
   = 0
 subsequent_state[Battery1,125]: - 0.9 flow_in[Battery1,124]
   + flow_out[Battery1,124] - state[Battery1,124] + state[Battery1,125]
   = 0
 subsequent_state[Battery1,126]: - 0.9 flow_in[Battery1,125]
   + flow_out[Battery1,125] - state[Battery1,125] + state[Battery1,126]
   = 0
 subsequent_state[Battery1,127]: - 0.9 flow_in[Battery1,126]
   + flow_out[Battery1,126] - state[Battery1,126] + state[Battery1,127]
   = 0
 subsequent_state[Battery1,128]: - 0.9 flow_in[Battery1,127]
   + flow_out[Battery1,127] - state[Battery1,127] + state[Battery1,128]
   = 0
 subsequent_state[Battery1,129]: - 0.9 flow_in[Battery1,128]
   + flow_out[Battery1,128] - state[Battery1,128] + state[Battery1,129]
   = 0
 subsequent_state[Battery1,130]: - 0.9 flow_in[Battery1,129]
   + flow_out[Battery1,129] - state[Battery1,129] + state[Battery1,130]
   = 0
 subsequent_state[Battery1,131]: - 0.9 flow_in[Battery1,130]
   + flow_out[Battery1,130] - state[Battery1,130] + state[Battery1,131]
   = 0
 subsequent_state[Battery1,132]: - 0.9 flow_in[Battery1,131]
   + flow_out[Battery1,131] - state[Battery1,131] + state[Battery1,132]
   = 0
 subsequent_state[Battery1,133]: - 0.9 flow_in[Battery1,132]
   + flow_out[Battery1,132] - state[Battery1,132] + state[Battery1,133]
   = 0
 subsequent_state[Battery1,134]: - 0.9 flow_in[Battery1,133]
   + flow_out[Battery1,133] - state[Battery1,133] + state[Battery1,134]
   = 0
 subsequent_state[Battery1,135]: - 0.9 flow_in[Battery1,134]
   + flow_out[Battery1,134] - state[Battery1,134] + state[Battery1,135]
   = 0
 subsequent_state[Battery1,136]: - 0.9 flow_in[Battery1,135]
   + flow_out[Battery1,135] - state[Battery1,135] + state[Battery1,136]
   = 0
 subsequent_state[Battery1,137]: - 0.9 flow_in[Battery1,136]
   + flow_out[Battery1,136] - state[Battery1,136] + state[Battery1,137]
   = 0
 subsequent_state[Battery1,138]: - 0.9 flow_in[Battery1,137]
   + flow_out[Battery1,137] - state[Battery1,137] + state[Battery1,138]
   = 0
 subsequent_state[Battery1,139]: - 0.9 flow_in[Battery1,138]
   + flow_out[Battery1,138] - state[Battery1,138] + state[Battery1,139]
   = 0
 subsequent_state[Battery1,140]: - 0.9 flow_in[Battery1,139]
   + flow_out[Battery1,139] - state[Battery1,139] + state[Battery1,140]
   = 0
 subsequent_state[Battery1,141]: - 0.9 flow_in[Battery1,140]
   + flow_out[Battery1,140] - state[Battery1,140] + state[Battery1,141]
   = 0
 subsequent_state[Battery1,142]: - 0.9 flow_in[Battery1,141]
   + flow_out[Battery1,141] - state[Battery1,141] + state[Battery1,142]
   = 0
 subsequent_state[Battery1,143]: - 0.9 flow_in[Battery1,142]
   + flow_out[Battery1,142] - state[Battery1,142] + state[Battery1,143]
   = 0
 subsequent_state[Battery1,144]: - 0.9 flow_in[Battery1,143]
   + flow_out[Battery1,143] - state[Battery1,143] + state[Battery1,144]
   = 0
 subsequent_state[Battery1,145]: - 0.9 flow_in[Battery1,144]
   + flow_out[Battery1,144] - state[Battery1,144] + state[Battery1,145]
   = 0
 subsequent_state[Battery1,146]: - 0.9 flow_in[Battery1,145]
   + flow_out[Battery1,145] - state[Battery1,145] + state[Battery1,146]
   = 0
 subsequent_state[Battery1,147]: - 0.9 flow_in[Battery1,146]
   + flow_out[Battery1,146] - state[Battery1,146] + state[Battery1,147]
   = 0
 subsequent_state[Battery1,148]: - 0.9 flow_in[Battery1,147]
   + flow_out[Battery1,147] - state[Battery1,147] + state[Battery1,148]
   = 0
 subsequent_state[Battery1,149]: - 0.9 flow_in[Battery1,148]
   + flow_out[Battery1,148] - state[Battery1,148] + state[Battery1,149]
   = 0
 subsequent_state[Battery1,150]: - 0.9 flow_in[Battery1,149]
   + flow_out[Battery1,149] - state[Battery1,149] + state[Battery1,150]
   = 0
 subsequent_state[Battery1,151]: - 0.9 flow_in[Battery1,150]
   + flow_out[Battery1,150] - state[Battery1,150] + state[Battery1,151]
   = 0
 subsequent_state[Battery1,152]: - 0.9 flow_in[Battery1,151]
   + flow_out[Battery1,151] - state[Battery1,151] + state[Battery1,152]
   = 0
 subsequent_state[Battery1,153]: - 0.9 flow_in[Battery1,152]
   + flow_out[Battery1,152] - state[Battery1,152] + state[Battery1,153]
   = 0
 subsequent_state[Battery1,154]: - 0.9 flow_in[Battery1,153]
   + flow_out[Battery1,153] - state[Battery1,153] + state[Battery1,154]
   = 0
 subsequent_state[Battery1,155]: - 0.9 flow_in[Battery1,154]
   + flow_out[Battery1,154] - state[Battery1,154] + state[Battery1,155]
   = 0
 subsequent_state[Battery1,156]: - 0.9 flow_in[Battery1,155]
   + flow_out[Battery1,155] - state[Battery1,155] + state[Battery1,156]
   = 0
 subsequent_state[Battery1,157]: - 0.9 flow_in[Battery1,156]
   + flow_out[Battery1,156] - state[Battery1,156] + state[Battery1,157]
   = 0
 subsequent_state[Battery1,158]: - 0.9 flow_in[Battery1,157]
   + flow_out[Battery1,157] - state[Battery1,157] + state[Battery1,158]
   = 0
 subsequent_state[Battery1,159]: - 0.9 flow_in[Battery1,158]
   + flow_out[Battery1,158] - state[Battery1,158] + state[Battery1,159]
   = 0
 subsequent_state[Battery1,160]: - 0.9 flow_in[Battery1,159]
   + flow_out[Battery1,159] - state[Battery1,159] + state[Battery1,160]
   = 0
 subsequent_state[Battery1,161]: - 0.9 flow_in[Battery1,160]
   + flow_out[Battery1,160] - state[Battery1,160] + state[Battery1,161]
   = 0
 subsequent_state[Battery1,162]: - 0.9 flow_in[Battery1,161]
   + flow_out[Battery1,161] - state[Battery1,161] + state[Battery1,162]
   = 0
 subsequent_state[Battery1,163]: - 0.9 flow_in[Battery1,162]
   + flow_out[Battery1,162] - state[Battery1,162] + state[Battery1,163]
   = 0
 subsequent_state[Battery1,164]: - 0.9 flow_in[Battery1,163]
   + flow_out[Battery1,163] - state[Battery1,163] + state[Battery1,164]
   = 0
 subsequent_state[Battery1,165]: - 0.9 flow_in[Battery1,164]
   + flow_out[Battery1,164] - state[Battery1,164] + state[Battery1,165]
   = 0
 subsequent_state[Battery1,166]: - 0.9 flow_in[Battery1,165]
   + flow_out[Battery1,165] - state[Battery1,165] + state[Battery1,166]
   = 0
 subsequent_state[Battery1,167]: - 0.9 flow_in[Battery1,166]
   + flow_out[Battery1,166] - state[Battery1,166] + state[Battery1,167]
   = 0
 subsequent_state[Battery1,168]: - 0.9 flow_in[Battery1,167]
   + flow_out[Battery1,167] - state[Battery1,167] + state[Battery1,168]
   = 0
 subsequent_state[Battery1,169]: - 0.9 flow_in[Battery1,168]
   + flow_out[Battery1,168] - state[Battery1,168] + state[Battery1,169]
   = 0
 subsequent_state[Battery1,170]: - 0.9 flow_in[Battery1,169]
   + flow_out[Battery1,169] - state[Battery1,169] + state[Battery1,170]
   = 0
 subsequent_state[Battery1,171]: - 0.9 flow_in[Battery1,170]
   + flow_out[Battery1,170] - state[Battery1,170] + state[Battery1,171]
   = 0
 subsequent_state[Battery1,172]: - 0.9 flow_in[Battery1,171]
   + flow_out[Battery1,171] - state[Battery1,171] + state[Battery1,172]
   = 0
 subsequent_state[Battery1,173]: - 0.9 flow_in[Battery1,172]
   + flow_out[Battery1,172] - state[Battery1,172] + state[Battery1,173]
   = 0
 subsequent_state[Battery1,174]: - 0.9 flow_in[Battery1,173]
   + flow_out[Battery1,173] - state[Battery1,173] + state[Battery1,174]
   = 0
 subsequent_state[Battery1,175]: - 0.9 flow_in[Battery1,174]
   + flow_out[Battery1,174] - state[Battery1,174] + state[Battery1,175]
   = 0
 subsequent_state[Battery1,176]: - 0.9 flow_in[Battery1,175]
   + flow_out[Battery1,175] - state[Battery1,175] + state[Battery1,176]
   = 0
 subsequent_state[Battery1,177]: - 0.9 flow_in[Battery1,176]
   + flow_out[Battery1,176] - state[Battery1,176] + state[Battery1,177]
   = 0
 subsequent_state[Battery1,178]: - 0.9 flow_in[Battery1,177]
   + flow_out[Battery1,177] - state[Battery1,177] + state[Battery1,178]
   = 0
 subsequent_state[Battery1,179]: - 0.9 flow_in[Battery1,178]
   + flow_out[Battery1,178] - state[Battery1,178] + state[Battery1,179]
   = 0
 solar_avail[0]: flow_in[Battery0,0] + flow_in[Battery1,0] + gen[0] <= 0
 solar_avail[1]: flow_in[Battery0,1] + flow_in[Battery1,1] + gen[1]
   <= 0.587
 solar_avail[2]: flow_in[Battery0,2] + flow_in[Battery1,2] + gen[2]
   <= 2.27
 solar_avail[3]: flow_in[Battery0,3] + flow_in[Battery1,3] + gen[3]
   <= 5.164
 solar_avail[4]: flow_in[Battery0,4] + flow_in[Battery1,4] + gen[4]
   <= 9.386
 solar_avail[5]: flow_in[Battery0,5] + flow_in[Battery1,5] + gen[5]
   <= 14.84
 solar_avail[6]: flow_in[Battery0,6] + flow_in[Battery1,6] + gen[6]
   <= 21.202
 solar_avail[7]: flow_in[Battery0,7] + flow_in[Battery1,7] + gen[7]
   <= 27.975
 solar_avail[8]: flow_in[Battery0,8] + flow_in[Battery1,8] + gen[8]
   <= 34.598
 solar_avail[9]: flow_in[Battery0,9] + flow_in[Battery1,9] + gen[9]
   <= 40.56
 solar_avail[10]: flow_in[Battery0,10] + flow_in[Battery1,10] + gen[10]
   <= 45.506
 solar_avail[11]: flow_in[Battery0,11] + flow_in[Battery1,11] + gen[11]
   <= 49.285
 solar_avail[12]: flow_in[Battery0,12] + flow_in[Battery1,12] + gen[12]
   <= 51.935
 solar_avail[13]: flow_in[Battery0,13] + flow_in[Battery1,13] + gen[13]
   <= 53.606
 solar_avail[14]: flow_in[Battery0,14] + flow_in[Battery1,14] + gen[14]
   <= 54.456
 solar_avail[15]: flow_in[Battery0,15] + flow_in[Battery1,15] + gen[15]
   <= 54.564
 solar_avail[16]: flow_in[Battery0,16] + flow_in[Battery1,16] + gen[16]
   <= 53.878
 solar_avail[17]: flow_in[Battery0,17] + flow_in[Battery1,17] + gen[17]
   <= 52.237
 solar_avail[18]: flow_in[Battery0,18] + flow_in[Battery1,18] + gen[18]
   <= 49.445
 solar_avail[19]: flow_in[Battery0,19] + flow_in[Battery1,19] + gen[19]
   <= 45.374
 solar_avail[20]: flow_in[Battery0,20] + flow_in[Battery1,20] + gen[20]
   <= 40.062
 solar_avail[21]: flow_in[Battery0,21] + flow_in[Battery1,21] + gen[21]
   <= 33.759
 solar_avail[22]: flow_in[Battery0,22] + flow_in[Battery1,22] + gen[22]
   <= 26.913
 solar_avail[23]: flow_in[Battery0,23] + flow_in[Battery1,23] + gen[23]
   <= 20.09
 solar_avail[24]: flow_in[Battery0,24] + flow_in[Battery1,24] + gen[24]
   <= 13.859
 solar_avail[25]: flow_in[Battery0,25] + flow_in[Battery1,25] + gen[25]
   <= 8.669
 solar_avail[26]: flow_in[Battery0,26] + flow_in[Battery1,26] + gen[26]
   <= 4.771
 solar_avail[27]: flow_in[Battery0,27] + flow_in[Battery1,27] + gen[27]
   <= 2.186
 solar_avail[28]: flow_in[Battery0,28] + flow_in[Battery1,28] + gen[28]
   <= 0.737
 solar_avail[29]: flow_in[Battery0,29] + flow_in[Battery1,29] + gen[29]
   <= 0.128
 solar_avail[30]: flow_in[Battery0,30] + flow_in[Battery1,30] + gen[30]
   <= 0.607
 solar_avail[31]: flow_in[Battery0,31] + flow_in[Battery1,31] + gen[31]
   <= 1.379
 solar_avail[32]: flow_in[Battery0,32] + flow_in[Battery1,32] + gen[32]
   <= 3.086
 solar_avail[33]: flow_in[Battery0,33] + flow_in[Battery1,33] + gen[33]
   <= 6.005
 solar_avail[34]: flow_in[Battery0,34] + flow_in[Battery1,34] + gen[34]
   <= 10.256
 solar_avail[35]: flow_in[Battery0,35] + flow_in[Battery1,35] + gen[35]
   <= 15.74
 solar_avail[36]: flow_in[Battery0,36] + flow_in[Battery1,36] + gen[36]
   <= 22.132
 solar_avail[37]: flow_in[Battery0,37] + flow_in[Battery1,37] + gen[37]
   <= 28.936
 solar_avail[38]: flow_in[Battery0,38] + flow_in[Battery1,38] + gen[38]
   <= 35.588
 solar_avail[39]: flow_in[Battery0,39] + flow_in[Battery1,39] + gen[39]
   <= 41.574
 solar_avail[40]: flow_in[Battery0,40] + flow_in[Battery1,40] + gen[40]
   <= 46.541
 solar_avail[41]: flow_in[Battery0,41] + flow_in[Battery1,41] + gen[41]
   <= 50.335
 solar_avail[42]: flow_in[Battery0,42] + flow_in[Battery1,42] + gen[42]
   <= 52.995
 solar_avail[43]: flow_in[Battery0,43] + flow_in[Battery1,43] + gen[43]
   <= 54.671
 solar_avail[44]: flow_in[Battery0,44] + flow_in[Battery1,44] + gen[44]
   <= 55.522
 solar_avail[45]: flow_in[Battery0,45] + flow_in[Battery1,45] + gen[45]
   <= 55.627
 solar_avail[46]: flow_in[Battery0,46] + flow_in[Battery1,46] + gen[46]
   <= 54.934
 solar_avail[47]: flow_in[Battery0,47] + flow_in[Battery1,47] + gen[47]
   <= 53.281
 solar_avail[48]: flow_in[Battery0,48] + flow_in[Battery1,48] + gen[48]
   <= 50.472
 solar_avail[49]: flow_in[Battery0,49] + flow_in[Battery1,49] + gen[49]
   <= 46.378
 solar_avail[50]: flow_in[Battery0,50] + flow_in[Battery1,50] + gen[50]
   <= 41.038
 solar_avail[51]: flow_in[Battery0,51] + flow_in[Battery1,51] + gen[51]
   <= 34.702
 solar_avail[52]: flow_in[Battery0,52] + flow_in[Battery1,52] + gen[52]
   <= 27.819
 solar_avail[53]: flow_in[Battery0,53] + flow_in[Battery1,53] + gen[53]
   <= 20.958
 solar_avail[54]: flow_in[Battery0,54] + flow_in[Battery1,54] + gen[54]
   <= 14.688
 solar_avail[55]: flow_in[Battery0,55] + flow_in[Battery1,55] + gen[55]
   <= 9.461
 solar_avail[56]: flow_in[Battery0,56] + flow_in[Battery1,56] + gen[56]
   <= 5.528
 solar_avail[57]: flow_in[Battery0,57] + flow_in[Battery1,57] + gen[57]
   <= 2.909
 solar_avail[58]: flow_in[Battery0,58] + flow_in[Battery1,58] + gen[58]
   <= 1.429
 solar_avail[59]: flow_in[Battery0,59] + flow_in[Battery1,59] + gen[59]
   <= 0.79
 solar_avail[60]: flow_in[Battery0,60] + flow_in[Battery1,60] + gen[60]
   <= 0.522
 solar_avail[61]: flow_in[Battery0,61] + flow_in[Battery1,61] + gen[61]
   <= 1.253
 solar_avail[62]: flow_in[Battery0,62] + flow_in[Battery1,62] + gen[62]
   <= 2.922
 solar_avail[63]: flow_in[Battery0,63] + flow_in[Battery1,63] + gen[63]
   <= 5.808
 solar_avail[64]: flow_in[Battery0,64] + flow_in[Battery1,64] + gen[64]
   <= 10.029
 solar_avail[65]: flow_in[Battery0,65] + flow_in[Battery1,65] + gen[65]
   <= 15.488
 solar_avail[66]: flow_in[Battery0,66] + flow_in[Battery1,66] + gen[66]
   <= 21.859
 solar_avail[67]: flow_in[Battery0,67] + flow_in[Battery1,67] + gen[67]
   <= 28.644
 solar_avail[68]: flow_in[Battery0,68] + flow_in[Battery1,68] + gen[68]
   <= 35.276
 solar_avail[69]: flow_in[Battery0,69] + flow_in[Battery1,69] + gen[69]
   <= 41.243
 solar_avail[70]: flow_in[Battery0,70] + flow_in[Battery1,70] + gen[70]
   <= 46.187
 solar_avail[71]: flow_in[Battery0,71] + flow_in[Battery1,71] + gen[71]
   <= 49.958
 solar_avail[72]: flow_in[Battery0,72] + flow_in[Battery1,72] + gen[72]
   <= 52.592
 solar_avail[73]: flow_in[Battery0,73] + flow_in[Battery1,73] + gen[73]
   <= 54.241
 solar_avail[74]: flow_in[Battery0,74] + flow_in[Battery1,74] + gen[74]
   <= 55.065
 solar_avail[75]: flow_in[Battery0,75] + flow_in[Battery1,75] + gen[75]
   <= 55.14
 solar_avail[76]: flow_in[Battery0,76] + flow_in[Battery1,76] + gen[76]
   <= 54.418
 solar_avail[77]: flow_in[Battery0,77] + flow_in[Battery1,77] + gen[77]
   <= 52.735
 solar_avail[78]: flow_in[Battery0,78] + flow_in[Battery1,78] + gen[78]
   <= 49.894
 solar_avail[79]: flow_in[Battery0,79] + flow_in[Battery1,79] + gen[79]
   <= 45.767
 solar_avail[80]: flow_in[Battery0,80] + flow_in[Battery1,80] + gen[80]
   <= 40.391
 solar_avail[81]: flow_in[Battery0,81] + flow_in[Battery1,81] + gen[81]
   <= 34.018
 solar_avail[82]: flow_in[Battery0,82] + flow_in[Battery1,82] + gen[82]
   <= 27.099
 solar_avail[83]: flow_in[Battery0,83] + flow_in[Battery1,83] + gen[83]
   <= 20.204
 solar_avail[84]: flow_in[Battery0,84] + flow_in[Battery1,84] + gen[84]
   <= 13.903
 solar_avail[85]: flow_in[Battery0,85] + flow_in[Battery1,85] + gen[85]
   <= 8.65
 solar_avail[86]: flow_in[Battery0,86] + flow_in[Battery1,86] + gen[86]
   <= 4.697
 solar_avail[87]: flow_in[Battery0,87] + flow_in[Battery1,87] + gen[87]
   <= 2.064
 solar_avail[88]: flow_in[Battery0,88] + flow_in[Battery1,88] + gen[88]
   <= 0.574
 solar_avail[89]: flow_in[Battery0,89] + flow_in[Battery1,89] + gen[89]
   <= 0
 solar_avail[90]: flow_in[Battery0,90] + flow_in[Battery1,90] + gen[90]
   <= 0
 solar_avail[91]: flow_in[Battery0,91] + flow_in[Battery1,91] + gen[91]
   <= 0.67
 solar_avail[92]: flow_in[Battery0,92] + flow_in[Battery1,92] + gen[92]
   <= 2.37
 solar_avail[93]: flow_in[Battery0,93] + flow_in[Battery1,93] + gen[93]
   <= 5.29
 solar_avail[94]: flow_in[Battery0,94] + flow_in[Battery1,94] + gen[94]
   <= 9.55
 solar_avail[95]: flow_in[Battery0,95] + flow_in[Battery1,95] + gen[95]
   <= 15.051
 solar_avail[96]: flow_in[Battery0,96] + flow_in[Battery1,96] + gen[96]
   <= 21.467
 solar_avail[97]: flow_in[Battery0,97] + flow_in[Battery1,97] + gen[97]
   <= 28.298
 solar_avail[98]: flow_in[Battery0,98] + flow_in[Battery1,98] + gen[98]
   <= 34.977
 solar_avail[99]: flow_in[Battery0,99] + flow_in[Battery1,99] + gen[99]
   <= 40.988
 solar_avail[100]: flow_in[Battery0,100] + flow_in[Battery1,100] + gen[100]
   <= 45.973
 solar_avail[101]: flow_in[Battery0,101] + flow_in[Battery1,101] + gen[101]
   <= 49.781
 solar_avail[102]: flow_in[Battery0,102] + flow_in[Battery1,102] + gen[102]
   <= 52.449
 solar_avail[103]: flow_in[Battery0,103] + flow_in[Battery1,103] + gen[103]
   <= 54.128
 solar_avail[104]: flow_in[Battery0,104] + flow_in[Battery1,104] + gen[104]
   <= 54.979
 solar_avail[105]: flow_in[Battery0,105] + flow_in[Battery1,105] + gen[105]
   <= 55.079
 solar_avail[106]: flow_in[Battery0,106] + flow_in[Battery1,106] + gen[106]
   <= 54.378
 solar_avail[107]: flow_in[Battery0,107] + flow_in[Battery1,107] + gen[107]
   <= 52.713
 solar_avail[108]: flow_in[Battery0,108] + flow_in[Battery1,108] + gen[108]
   <= 49.885
 solar_avail[109]: flow_in[Battery0,109] + flow_in[Battery1,109] + gen[109]
   <= 45.767
 solar_avail[110]: flow_in[Battery0,110] + flow_in[Battery1,110] + gen[110]
   <= 40.395
 solar_avail[111]: flow_in[Battery0,111] + flow_in[Battery1,111] + gen[111]
   <= 34.023
 solar_avail[112]: flow_in[Battery0,112] + flow_in[Battery1,112] + gen[112]
   <= 27.101
 solar_avail[113]: flow_in[Battery0,113] + flow_in[Battery1,113] + gen[113]
   <= 20.202
 solar_avail[114]: flow_in[Battery0,114] + flow_in[Battery1,114] + gen[114]
   <= 13.898
 solar_avail[115]: flow_in[Battery0,115] + flow_in[Battery1,115] + gen[115]
   <= 8.643
 solar_avail[116]: flow_in[Battery0,116] + flow_in[Battery1,116] + gen[116]
   <= 4.69
 solar_avail[117]: flow_in[Battery0,117] + flow_in[Battery1,117] + gen[117]
   <= 2.059
 solar_avail[118]: flow_in[Battery0,118] + flow_in[Battery1,118] + gen[118]
   <= 0.574
 solar_avail[119]: flow_in[Battery0,119] + flow_in[Battery1,119] + gen[119]
   <= 0
 solar_avail[120]: flow_in[Battery0,120] + flow_in[Battery1,120] + gen[120]
   <= 0
 solar_avail[121]: flow_in[Battery0,121] + flow_in[Battery1,121] + gen[121]
   <= 0.486
 solar_avail[122]: flow_in[Battery0,122] + flow_in[Battery1,122] + gen[122]
   <= 2.167
 solar_avail[123]: flow_in[Battery0,123] + flow_in[Battery1,123] + gen[123]
   <= 5.071
 solar_avail[124]: flow_in[Battery0,124] + flow_in[Battery1,124] + gen[124]
   <= 9.318
 solar_avail[125]: flow_in[Battery0,125] + flow_in[Battery1,125] + gen[125]
   <= 14.809
 solar_avail[126]: flow_in[Battery0,126] + flow_in[Battery1,126] + gen[126]
   <= 21.216
 solar_avail[127]: flow_in[Battery0,127] + flow_in[Battery1,127] + gen[127]
   <= 28.039
 solar_avail[128]: flow_in[Battery0,128] + flow_in[Battery1,128] + gen[128]
   <= 34.709
 solar_avail[129]: flow_in[Battery0,129] + flow_in[Battery1,129] + gen[129]
   <= 40.709
 solar_avail[130]: flow_in[Battery0,130] + flow_in[Battery1,130] + gen[130]
   <= 45.68
 solar_avail[131]: flow_in[Battery0,131] + flow_in[Battery1,131] + gen[131]
   <= 49.471
 solar_avail[132]: flow_in[Battery0,132] + flow_in[Battery1,132] + gen[132]
   <= 52.118
 solar_avail[133]: flow_in[Battery0,133] + flow_in[Battery1,133] + gen[133]
   <= 53.773
 solar_avail[134]: flow_in[Battery0,134] + flow_in[Battery1,134] + gen[134]
   <= 54.598
 solar_avail[135]: flow_in[Battery0,135] + flow_in[Battery1,135] + gen[135]
   <= 54.67
 solar_avail[136]: flow_in[Battery0,136] + flow_in[Battery1,136] + gen[136]
   <= 53.94
 solar_avail[137]: flow_in[Battery0,137] + flow_in[Battery1,137] + gen[137]
   <= 52.243
 solar_avail[138]: flow_in[Battery0,138] + flow_in[Battery1,138] + gen[138]
   <= 49.381
 solar_avail[139]: flow_in[Battery0,139] + flow_in[Battery1,139] + gen[139]
   <= 45.225
 solar_avail[140]: flow_in[Battery0,140] + flow_in[Battery1,140] + gen[140]
   <= 39.812
 solar_avail[141]: flow_in[Battery0,141] + flow_in[Battery1,141] + gen[141]
   <= 33.398
 solar_avail[142]: flow_in[Battery0,142] + flow_in[Battery1,142] + gen[142]
   <= 26.433
 solar_avail[143]: flow_in[Battery0,143] + flow_in[Battery1,143] + gen[143]
   <= 19.492
 solar_avail[144]: flow_in[Battery0,144] + flow_in[Battery1,144] + gen[144]
   <= 13.149
 solar_avail[145]: flow_in[Battery0,145] + flow_in[Battery1,145] + gen[145]
   <= 7.859
 solar_avail[146]: flow_in[Battery0,146] + flow_in[Battery1,146] + gen[146]
   <= 3.876
 solar_avail[147]: flow_in[Battery0,147] + flow_in[Battery1,147] + gen[147]
   <= 1.221
 solar_avail[148]: flow_in[Battery0,148] + flow_in[Battery1,148] + gen[148]
   <= 0
 solar_avail[149]: flow_in[Battery0,149] + flow_in[Battery1,149] + gen[149]
   <= 0
 solar_avail[150]: flow_in[Battery0,150] + flow_in[Battery1,150] + gen[150]
   <= 0
 solar_avail[151]: flow_in[Battery0,151] + flow_in[Battery1,151] + gen[151]
   <= 0
 solar_avail[152]: flow_in[Battery0,152] + flow_in[Battery1,152] + gen[152]
   <= 1.421
 solar_avail[153]: flow_in[Battery0,153] + flow_in[Battery1,153] + gen[153]
   <= 4.359
 solar_avail[154]: flow_in[Battery0,154] + flow_in[Battery1,154] + gen[154]
   <= 8.646
 solar_avail[155]: flow_in[Battery0,155] + flow_in[Battery1,155] + gen[155]
   <= 14.182
 solar_avail[156]: flow_in[Battery0,156] + flow_in[Battery1,156] + gen[156]
   <= 20.639
 solar_avail[157]: flow_in[Battery0,157] + flow_in[Battery1,157] + gen[157]
   <= 27.514
 solar_avail[158]: flow_in[Battery0,158] + flow_in[Battery1,158] + gen[158]
   <= 34.237
 solar_avail[159]: flow_in[Battery0,159] + flow_in[Battery1,159] + gen[159]
   <= 40.289
 solar_avail[160]: flow_in[Battery0,160] + flow_in[Battery1,160] + gen[160]
   <= 45.311
 solar_avail[161]: flow_in[Battery0,161] + flow_in[Battery1,161] + gen[161]
   <= 49.15
 solar_avail[162]: flow_in[Battery0,162] + flow_in[Battery1,162] + gen[162]
   <= 51.844
 solar_avail[163]: flow_in[Battery0,163] + flow_in[Battery1,163] + gen[163]
   <= 53.544
 solar_avail[164]: flow_in[Battery0,164] + flow_in[Battery1,164] + gen[164]
   <= 54.412
 solar_avail[165]: flow_in[Battery0,165] + flow_in[Battery1,165] + gen[165]
   <= 54.526
 solar_avail[166]: flow_in[Battery0,166] + flow_in[Battery1,166] + gen[166]
   <= 53.835
 solar_avail[167]: flow_in[Battery0,167] + flow_in[Battery1,167] + gen[167]
   <= 52.176
 solar_avail[168]: flow_in[Battery0,168] + flow_in[Battery1,168] + gen[168]
   <= 49.349
 solar_avail[169]: flow_in[Battery0,169] + flow_in[Battery1,169] + gen[169]
   <= 45.225
 solar_avail[170]: flow_in[Battery0,170] + flow_in[Battery1,170] + gen[170]
   <= 39.841
 solar_avail[171]: flow_in[Battery0,171] + flow_in[Battery1,171] + gen[171]
   <= 33.452
 solar_avail[172]: flow_in[Battery0,172] + flow_in[Battery1,172] + gen[172]
   <= 26.512
 solar_avail[173]: flow_in[Battery0,173] + flow_in[Battery1,173] + gen[173]
   <= 19.596
 solar_avail[174]: flow_in[Battery0,174] + flow_in[Battery1,174] + gen[174]
   <= 13.278
 solar_avail[175]: flow_in[Battery0,175] + flow_in[Battery1,175] + gen[175]
   <= 8.017
 solar_avail[176]: flow_in[Battery0,176] + flow_in[Battery1,176] + gen[176]
   <= 4.066
 solar_avail[177]: flow_in[Battery0,177] + flow_in[Battery1,177] + gen[177]
   <= 1.446
 solar_avail[178]: flow_in[Battery0,178] + flow_in[Battery1,178] + gen[178]
   <= 0
 solar_avail[179]: flow_in[Battery0,179] + flow_in[Battery1,179] + gen[179]
   <= 0
 to_charge[Battery0,0]: flow_in[Battery0,0] - 20 zwitch[Battery0,0] <= 0
 to_charge[Battery0,1]: flow_in[Battery0,1] - 20 zwitch[Battery0,1] <= 0
 to_charge[Battery0,2]: flow_in[Battery0,2] - 20 zwitch[Battery0,2] <= 0
 to_charge[Battery0,3]: flow_in[Battery0,3] - 20 zwitch[Battery0,3] <= 0
 to_charge[Battery0,4]: flow_in[Battery0,4] - 20 zwitch[Battery0,4] <= 0
 to_charge[Battery0,5]: flow_in[Battery0,5] - 20 zwitch[Battery0,5] <= 0
 to_charge[Battery0,6]: flow_in[Battery0,6] - 20 zwitch[Battery0,6] <= 0
 to_charge[Battery0,7]: flow_in[Battery0,7] - 20 zwitch[Battery0,7] <= 0
 to_charge[Battery0,8]: flow_in[Battery0,8] - 20 zwitch[Battery0,8] <= 0
 to_charge[Battery0,9]: flow_in[Battery0,9] - 20 zwitch[Battery0,9] <= 0
 to_charge[Battery0,10]: flow_in[Battery0,10] - 20 zwitch[Battery0,10]
   <= 0
 to_charge[Battery0,11]: flow_in[Battery0,11] - 20 zwitch[Battery0,11]
   <= 0
 to_charge[Battery0,12]: flow_in[Battery0,12] - 20 zwitch[Battery0,12]
   <= 0
 to_charge[Battery0,13]: flow_in[Battery0,13] - 20 zwitch[Battery0,13]
   <= 0
 to_charge[Battery0,14]: flow_in[Battery0,14] - 20 zwitch[Battery0,14]
   <= 0
 to_charge[Battery0,15]: flow_in[Battery0,15] - 20 zwitch[Battery0,15]
   <= 0
 to_charge[Battery0,16]: flow_in[Battery0,16] - 20 zwitch[Battery0,16]
   <= 0
 to_charge[Battery0,17]: flow_in[Battery0,17] - 20 zwitch[Battery0,17]
   <= 0
 to_charge[Battery0,18]: flow_in[Battery0,18] - 20 zwitch[Battery0,18]
   <= 0
 to_charge[Battery0,19]: flow_in[Battery0,19] - 20 zwitch[Battery0,19]
   <= 0
 to_charge[Battery0,20]: flow_in[Battery0,20] - 20 zwitch[Battery0,20]
   <= 0
 to_charge[Battery0,21]: flow_in[Battery0,21] - 20 zwitch[Battery0,21]
   <= 0
 to_charge[Battery0,22]: flow_in[Battery0,22] - 20 zwitch[Battery0,22]
   <= 0
 to_charge[Battery0,23]: flow_in[Battery0,23] - 20 zwitch[Battery0,23]
   <= 0
 to_charge[Battery0,24]: flow_in[Battery0,24] - 20 zwitch[Battery0,24]
   <= 0
 to_charge[Battery0,25]: flow_in[Battery0,25] - 20 zwitch[Battery0,25]
   <= 0
 to_charge[Battery0,26]: flow_in[Battery0,26] - 20 zwitch[Battery0,26]
   <= 0
 to_charge[Battery0,27]: flow_in[Battery0,27] - 20 zwitch[Battery0,27]
   <= 0
 to_charge[Battery0,28]: flow_in[Battery0,28] - 20 zwitch[Battery0,28]
   <= 0
 to_charge[Battery0,29]: flow_in[Battery0,29] - 20 zwitch[Battery0,29]
   <= 0
 to_charge[Battery0,30]: flow_in[Battery0,30] - 20 zwitch[Battery0,30]
   <= 0
 to_charge[Battery0,31]: flow_in[Battery0,31] - 20 zwitch[Battery0,31]
   <= 0
 to_charge[Battery0,32]: flow_in[Battery0,32] - 20 zwitch[Battery0,32]
   <= 0
 to_charge[Battery0,33]: flow_in[Battery0,33] - 20 zwitch[Battery0,33]
   <= 0
 to_charge[Battery0,34]: flow_in[Battery0,34] - 20 zwitch[Battery0,34]
   <= 0
 to_charge[Battery0,35]: flow_in[Battery0,35] - 20 zwitch[Battery0,35]
   <= 0
 to_charge[Battery0,36]: flow_in[Battery0,36] - 20 zwitch[Battery0,36]
   <= 0
 to_charge[Battery0,37]: flow_in[Battery0,37] - 20 zwitch[Battery0,37]
   <= 0
 to_charge[Battery0,38]: flow_in[Battery0,38] - 20 zwitch[Battery0,38]
   <= 0
 to_charge[Battery0,39]: flow_in[Battery0,39] - 20 zwitch[Battery0,39]
   <= 0
 to_charge[Battery0,40]: flow_in[Battery0,40] - 20 zwitch[Battery0,40]
   <= 0
 to_charge[Battery0,41]: flow_in[Battery0,41] - 20 zwitch[Battery0,41]
   <= 0
 to_charge[Battery0,42]: flow_in[Battery0,42] - 20 zwitch[Battery0,42]
   <= 0
 to_charge[Battery0,43]: flow_in[Battery0,43] - 20 zwitch[Battery0,43]
   <= 0
 to_charge[Battery0,44]: flow_in[Battery0,44] - 20 zwitch[Battery0,44]
   <= 0
 to_charge[Battery0,45]: flow_in[Battery0,45] - 20 zwitch[Battery0,45]
   <= 0
 to_charge[Battery0,46]: flow_in[Battery0,46] - 20 zwitch[Battery0,46]
   <= 0
 to_charge[Battery0,47]: flow_in[Battery0,47] - 20 zwitch[Battery0,47]
   <= 0
 to_charge[Battery0,48]: flow_in[Battery0,48] - 20 zwitch[Battery0,48]
   <= 0
 to_charge[Battery0,49]: flow_in[Battery0,49] - 20 zwitch[Battery0,49]
   <= 0
 to_charge[Battery0,50]: flow_in[Battery0,50] - 20 zwitch[Battery0,50]
   <= 0
 to_charge[Battery0,51]: flow_in[Battery0,51] - 20 zwitch[Battery0,51]
   <= 0
 to_charge[Battery0,52]: flow_in[Battery0,52] - 20 zwitch[Battery0,52]
   <= 0
 to_charge[Battery0,53]: flow_in[Battery0,53] - 20 zwitch[Battery0,53]
   <= 0
 to_charge[Battery0,54]: flow_in[Battery0,54] - 20 zwitch[Battery0,54]
   <= 0
 to_charge[Battery0,55]: flow_in[Battery0,55] - 20 zwitch[Battery0,55]
   <= 0
 to_charge[Battery0,56]: flow_in[Battery0,56] - 20 zwitch[Battery0,56]
   <= 0
 to_charge[Battery0,57]: flow_in[Battery0,57] - 20 zwitch[Battery0,57]
   <= 0
 to_charge[Battery0,58]: flow_in[Battery0,58] - 20 zwitch[Battery0,58]
   <= 0
 to_charge[Battery0,59]: flow_in[Battery0,59] - 20 zwitch[Battery0,59]
   <= 0
 to_charge[Battery0,60]: flow_in[Battery0,60] - 20 zwitch[Battery0,60]
   <= 0
 to_charge[Battery0,61]: flow_in[Battery0,61] - 20 zwitch[Battery0,61]
   <= 0
 to_charge[Battery0,62]: flow_in[Battery0,62] - 20 zwitch[Battery0,62]
   <= 0
 to_charge[Battery0,63]: flow_in[Battery0,63] - 20 zwitch[Battery0,63]
   <= 0
 to_charge[Battery0,64]: flow_in[Battery0,64] - 20 zwitch[Battery0,64]
   <= 0
 to_charge[Battery0,65]: flow_in[Battery0,65] - 20 zwitch[Battery0,65]
   <= 0
 to_charge[Battery0,66]: flow_in[Battery0,66] - 20 zwitch[Battery0,66]
   <= 0
 to_charge[Battery0,67]: flow_in[Battery0,67] - 20 zwitch[Battery0,67]
   <= 0
 to_charge[Battery0,68]: flow_in[Battery0,68] - 20 zwitch[Battery0,68]
   <= 0
 to_charge[Battery0,69]: flow_in[Battery0,69] - 20 zwitch[Battery0,69]
   <= 0
 to_charge[Battery0,70]: flow_in[Battery0,70] - 20 zwitch[Battery0,70]
   <= 0
 to_charge[Battery0,71]: flow_in[Battery0,71] - 20 zwitch[Battery0,71]
   <= 0
 to_charge[Battery0,72]: flow_in[Battery0,72] - 20 zwitch[Battery0,72]
   <= 0
 to_charge[Battery0,73]: flow_in[Battery0,73] - 20 zwitch[Battery0,73]
   <= 0
 to_charge[Battery0,74]: flow_in[Battery0,74] - 20 zwitch[Battery0,74]
   <= 0
 to_charge[Battery0,75]: flow_in[Battery0,75] - 20 zwitch[Battery0,75]
   <= 0
 to_charge[Battery0,76]: flow_in[Battery0,76] - 20 zwitch[Battery0,76]
   <= 0
 to_charge[Battery0,77]: flow_in[Battery0,77] - 20 zwitch[Battery0,77]
   <= 0
 to_charge[Battery0,78]: flow_in[Battery0,78] - 20 zwitch[Battery0,78]
   <= 0
 to_charge[Battery0,79]: flow_in[Battery0,79] - 20 zwitch[Battery0,79]
   <= 0
 to_charge[Battery0,80]: flow_in[Battery0,80] - 20 zwitch[Battery0,80]
   <= 0
 to_charge[Battery0,81]: flow_in[Battery0,81] - 20 zwitch[Battery0,81]
   <= 0
 to_charge[Battery0,82]: flow_in[Battery0,82] - 20 zwitch[Battery0,82]
   <= 0
 to_charge[Battery0,83]: flow_in[Battery0,83] - 20 zwitch[Battery0,83]
   <= 0
 to_charge[Battery0,84]: flow_in[Battery0,84] - 20 zwitch[Battery0,84]
   <= 0
 to_charge[Battery0,85]: flow_in[Battery0,85] - 20 zwitch[Battery0,85]
   <= 0
 to_charge[Battery0,86]: flow_in[Battery0,86] - 20 zwitch[Battery0,86]
   <= 0
 to_charge[Battery0,87]: flow_in[Battery0,87] - 20 zwitch[Battery0,87]
   <= 0
 to_charge[Battery0,88]: flow_in[Battery0,88] - 20 zwitch[Battery0,88]
   <= 0
 to_charge[Battery0,89]: flow_in[Battery0,89] - 20 zwitch[Battery0,89]
   <= 0
 to_charge[Battery0,90]: flow_in[Battery0,90] - 20 zwitch[Battery0,90]
   <= 0
 to_charge[Battery0,91]: flow_in[Battery0,91] - 20 zwitch[Battery0,91]
   <= 0
 to_charge[Battery0,92]: flow_in[Battery0,92] - 20 zwitch[Battery0,92]
   <= 0
 to_charge[Battery0,93]: flow_in[Battery0,93] - 20 zwitch[Battery0,93]
   <= 0
 to_charge[Battery0,94]: flow_in[Battery0,94] - 20 zwitch[Battery0,94]
   <= 0
 to_charge[Battery0,95]: flow_in[Battery0,95] - 20 zwitch[Battery0,95]
   <= 0
 to_charge[Battery0,96]: flow_in[Battery0,96] - 20 zwitch[Battery0,96]
   <= 0
 to_charge[Battery0,97]: flow_in[Battery0,97] - 20 zwitch[Battery0,97]
   <= 0
 to_charge[Battery0,98]: flow_in[Battery0,98] - 20 zwitch[Battery0,98]
   <= 0
 to_charge[Battery0,99]: flow_in[Battery0,99] - 20 zwitch[Battery0,99]
   <= 0
 to_charge[Battery0,100]: flow_in[Battery0,100] - 20 zwitch[Battery0,100]
   <= 0
 to_charge[Battery0,101]: flow_in[Battery0,101] - 20 zwitch[Battery0,101]
   <= 0
 to_charge[Battery0,102]: flow_in[Battery0,102] - 20 zwitch[Battery0,102]
   <= 0
 to_charge[Battery0,103]: flow_in[Battery0,103] - 20 zwitch[Battery0,103]
   <= 0
 to_charge[Battery0,104]: flow_in[Battery0,104] - 20 zwitch[Battery0,104]
   <= 0
 to_charge[Battery0,105]: flow_in[Battery0,105] - 20 zwitch[Battery0,105]
   <= 0
 to_charge[Battery0,106]: flow_in[Battery0,106] - 20 zwitch[Battery0,106]
   <= 0
 to_charge[Battery0,107]: flow_in[Battery0,107] - 20 zwitch[Battery0,107]
   <= 0
 to_charge[Battery0,108]: flow_in[Battery0,108] - 20 zwitch[Battery0,108]
   <= 0
 to_charge[Battery0,109]: flow_in[Battery0,109] - 20 zwitch[Battery0,109]
   <= 0
 to_charge[Battery0,110]: flow_in[Battery0,110] - 20 zwitch[Battery0,110]
   <= 0
 to_charge[Battery0,111]: flow_in[Battery0,111] - 20 zwitch[Battery0,111]
   <= 0
 to_charge[Battery0,112]: flow_in[Battery0,112] - 20 zwitch[Battery0,112]
   <= 0
 to_charge[Battery0,113]: flow_in[Battery0,113] - 20 zwitch[Battery0,113]
   <= 0
 to_charge[Battery0,114]: flow_in[Battery0,114] - 20 zwitch[Battery0,114]
   <= 0
 to_charge[Battery0,115]: flow_in[Battery0,115] - 20 zwitch[Battery0,115]
   <= 0
 to_charge[Battery0,116]: flow_in[Battery0,116] - 20 zwitch[Battery0,116]
   <= 0
 to_charge[Battery0,117]: flow_in[Battery0,117] - 20 zwitch[Battery0,117]
   <= 0
 to_charge[Battery0,118]: flow_in[Battery0,118] - 20 zwitch[Battery0,118]
   <= 0
 to_charge[Battery0,119]: flow_in[Battery0,119] - 20 zwitch[Battery0,119]
   <= 0
 to_charge[Battery0,120]: flow_in[Battery0,120] - 20 zwitch[Battery0,120]
   <= 0
 to_charge[Battery0,121]: flow_in[Battery0,121] - 20 zwitch[Battery0,121]
   <= 0
 to_charge[Battery0,122]: flow_in[Battery0,122] - 20 zwitch[Battery0,122]
   <= 0
 to_charge[Battery0,123]: flow_in[Battery0,123] - 20 zwitch[Battery0,123]
   <= 0
 to_charge[Battery0,124]: flow_in[Battery0,124] - 20 zwitch[Battery0,124]
   <= 0
 to_charge[Battery0,125]: flow_in[Battery0,125] - 20 zwitch[Battery0,125]
   <= 0
 to_charge[Battery0,126]: flow_in[Battery0,126] - 20 zwitch[Battery0,126]
   <= 0
 to_charge[Battery0,127]: flow_in[Battery0,127] - 20 zwitch[Battery0,127]
   <= 0
 to_charge[Battery0,128]: flow_in[Battery0,128] - 20 zwitch[Battery0,128]
   <= 0
 to_charge[Battery0,129]: flow_in[Battery0,129] - 20 zwitch[Battery0,129]
   <= 0
 to_charge[Battery0,130]: flow_in[Battery0,130] - 20 zwitch[Battery0,130]
   <= 0
 to_charge[Battery0,131]: flow_in[Battery0,131] - 20 zwitch[Battery0,131]
   <= 0
 to_charge[Battery0,132]: flow_in[Battery0,132] - 20 zwitch[Battery0,132]
   <= 0
 to_charge[Battery0,133]: flow_in[Battery0,133] - 20 zwitch[Battery0,133]
   <= 0
 to_charge[Battery0,134]: flow_in[Battery0,134] - 20 zwitch[Battery0,134]
   <= 0
 to_charge[Battery0,135]: flow_in[Battery0,135] - 20 zwitch[Battery0,135]
   <= 0
 to_charge[Battery0,136]: flow_in[Battery0,136] - 20 zwitch[Battery0,136]
   <= 0
 to_charge[Battery0,137]: flow_in[Battery0,137] - 20 zwitch[Battery0,137]
   <= 0
 to_charge[Battery0,138]: flow_in[Battery0,138] - 20 zwitch[Battery0,138]
   <= 0
 to_charge[Battery0,139]: flow_in[Battery0,139] - 20 zwitch[Battery0,139]
   <= 0
 to_charge[Battery0,140]: flow_in[Battery0,140] - 20 zwitch[Battery0,140]
   <= 0
 to_charge[Battery0,141]: flow_in[Battery0,141] - 20 zwitch[Battery0,141]
   <= 0
 to_charge[Battery0,142]: flow_in[Battery0,142] - 20 zwitch[Battery0,142]
   <= 0
 to_charge[Battery0,143]: flow_in[Battery0,143] - 20 zwitch[Battery0,143]
   <= 0
 to_charge[Battery0,144]: flow_in[Battery0,144] - 20 zwitch[Battery0,144]
   <= 0
 to_charge[Battery0,145]: flow_in[Battery0,145] - 20 zwitch[Battery0,145]
   <= 0
 to_charge[Battery0,146]: flow_in[Battery0,146] - 20 zwitch[Battery0,146]
   <= 0
 to_charge[Battery0,147]: flow_in[Battery0,147] - 20 zwitch[Battery0,147]
   <= 0
 to_charge[Battery0,148]: flow_in[Battery0,148] - 20 zwitch[Battery0,148]
   <= 0
 to_charge[Battery0,149]: flow_in[Battery0,149] - 20 zwitch[Battery0,149]
   <= 0
 to_charge[Battery0,150]: flow_in[Battery0,150] - 20 zwitch[Battery0,150]
   <= 0
 to_charge[Battery0,151]: flow_in[Battery0,151] - 20 zwitch[Battery0,151]
   <= 0
 to_charge[Battery0,152]: flow_in[Battery0,152] - 20 zwitch[Battery0,152]
   <= 0
 to_charge[Battery0,153]: flow_in[Battery0,153] - 20 zwitch[Battery0,153]
   <= 0
 to_charge[Battery0,154]: flow_in[Battery0,154] - 20 zwitch[Battery0,154]
   <= 0
 to_charge[Battery0,155]: flow_in[Battery0,155] - 20 zwitch[Battery0,155]
   <= 0
 to_charge[Battery0,156]: flow_in[Battery0,156] - 20 zwitch[Battery0,156]
   <= 0
 to_charge[Battery0,157]: flow_in[Battery0,157] - 20 zwitch[Battery0,157]
   <= 0
 to_charge[Battery0,158]: flow_in[Battery0,158] - 20 zwitch[Battery0,158]
   <= 0
 to_charge[Battery0,159]: flow_in[Battery0,159] - 20 zwitch[Battery0,159]
   <= 0
 to_charge[Battery0,160]: flow_in[Battery0,160] - 20 zwitch[Battery0,160]
   <= 0
 to_charge[Battery0,161]: flow_in[Battery0,161] - 20 zwitch[Battery0,161]
   <= 0
 to_charge[Battery0,162]: flow_in[Battery0,162] - 20 zwitch[Battery0,162]
   <= 0
 to_charge[Battery0,163]: flow_in[Battery0,163] - 20 zwitch[Battery0,163]
   <= 0
 to_charge[Battery0,164]: flow_in[Battery0,164] - 20 zwitch[Battery0,164]
   <= 0
 to_charge[Battery0,165]: flow_in[Battery0,165] - 20 zwitch[Battery0,165]
   <= 0
 to_charge[Battery0,166]: flow_in[Battery0,166] - 20 zwitch[Battery0,166]
   <= 0
 to_charge[Battery0,167]: flow_in[Battery0,167] - 20 zwitch[Battery0,167]
   <= 0
 to_charge[Battery0,168]: flow_in[Battery0,168] - 20 zwitch[Battery0,168]
   <= 0
 to_charge[Battery0,169]: flow_in[Battery0,169] - 20 zwitch[Battery0,169]
   <= 0
 to_charge[Battery0,170]: flow_in[Battery0,170] - 20 zwitch[Battery0,170]
   <= 0
 to_charge[Battery0,171]: flow_in[Battery0,171] - 20 zwitch[Battery0,171]
   <= 0
 to_charge[Battery0,172]: flow_in[Battery0,172] - 20 zwitch[Battery0,172]
   <= 0
 to_charge[Battery0,173]: flow_in[Battery0,173] - 20 zwitch[Battery0,173]
   <= 0
 to_charge[Battery0,174]: flow_in[Battery0,174] - 20 zwitch[Battery0,174]
   <= 0
 to_charge[Battery0,175]: flow_in[Battery0,175] - 20 zwitch[Battery0,175]
   <= 0
 to_charge[Battery0,176]: flow_in[Battery0,176] - 20 zwitch[Battery0,176]
   <= 0
 to_charge[Battery0,177]: flow_in[Battery0,177] - 20 zwitch[Battery0,177]
   <= 0
 to_charge[Battery0,178]: flow_in[Battery0,178] - 20 zwitch[Battery0,178]
   <= 0
 to_charge[Battery0,179]: flow_in[Battery0,179] - 20 zwitch[Battery0,179]
   <= 0
 to_charge[Battery1,0]: flow_in[Battery1,0] - 20 zwitch[Battery1,0] <= 0
 to_charge[Battery1,1]: flow_in[Battery1,1] - 20 zwitch[Battery1,1] <= 0
 to_charge[Battery1,2]: flow_in[Battery1,2] - 20 zwitch[Battery1,2] <= 0
 to_charge[Battery1,3]: flow_in[Battery1,3] - 20 zwitch[Battery1,3] <= 0
 to_charge[Battery1,4]: flow_in[Battery1,4] - 20 zwitch[Battery1,4] <= 0
 to_charge[Battery1,5]: flow_in[Battery1,5] - 20 zwitch[Battery1,5] <= 0
 to_charge[Battery1,6]: flow_in[Battery1,6] - 20 zwitch[Battery1,6] <= 0
 to_charge[Battery1,7]: flow_in[Battery1,7] - 20 zwitch[Battery1,7] <= 0
 to_charge[Battery1,8]: flow_in[Battery1,8] - 20 zwitch[Battery1,8] <= 0
 to_charge[Battery1,9]: flow_in[Battery1,9] - 20 zwitch[Battery1,9] <= 0
 to_charge[Battery1,10]: flow_in[Battery1,10] - 20 zwitch[Battery1,10]
   <= 0
 to_charge[Battery1,11]: flow_in[Battery1,11] - 20 zwitch[Battery1,11]
   <= 0
 to_charge[Battery1,12]: flow_in[Battery1,12] - 20 zwitch[Battery1,12]
   <= 0
 to_charge[Battery1,13]: flow_in[Battery1,13] - 20 zwitch[Battery1,13]
   <= 0
 to_charge[Battery1,14]: flow_in[Battery1,14] - 20 zwitch[Battery1,14]
   <= 0
 to_charge[Battery1,15]: flow_in[Battery1,15] - 20 zwitch[Battery1,15]
   <= 0
 to_charge[Battery1,16]: flow_in[Battery1,16] - 20 zwitch[Battery1,16]
   <= 0
 to_charge[Battery1,17]: flow_in[Battery1,17] - 20 zwitch[Battery1,17]
   <= 0
 to_charge[Battery1,18]: flow_in[Battery1,18] - 20 zwitch[Battery1,18]
   <= 0
 to_charge[Battery1,19]: flow_in[Battery1,19] - 20 zwitch[Battery1,19]
   <= 0
 to_charge[Battery1,20]: flow_in[Battery1,20] - 20 zwitch[Battery1,20]
   <= 0
 to_charge[Battery1,21]: flow_in[Battery1,21] - 20 zwitch[Battery1,21]
   <= 0
 to_charge[Battery1,22]: flow_in[Battery1,22] - 20 zwitch[Battery1,22]
   <= 0
 to_charge[Battery1,23]: flow_in[Battery1,23] - 20 zwitch[Battery1,23]
   <= 0
 to_charge[Battery1,24]: flow_in[Battery1,24] - 20 zwitch[Battery1,24]
   <= 0
 to_charge[Battery1,25]: flow_in[Battery1,25] - 20 zwitch[Battery1,25]
   <= 0
 to_charge[Battery1,26]: flow_in[Battery1,26] - 20 zwitch[Battery1,26]
   <= 0
 to_charge[Battery1,27]: flow_in[Battery1,27] - 20 zwitch[Battery1,27]
   <= 0
 to_charge[Battery1,28]: flow_in[Battery1,28] - 20 zwitch[Battery1,28]
   <= 0
 to_charge[Battery1,29]: flow_in[Battery1,29] - 20 zwitch[Battery1,29]
   <= 0
 to_charge[Battery1,30]: flow_in[Battery1,30] - 20 zwitch[Battery1,30]
   <= 0
 to_charge[Battery1,31]: flow_in[Battery1,31] - 20 zwitch[Battery1,31]
   <= 0
 to_charge[Battery1,32]: flow_in[Battery1,32] - 20 zwitch[Battery1,32]
   <= 0
 to_charge[Battery1,33]: flow_in[Battery1,33] - 20 zwitch[Battery1,33]
   <= 0
 to_charge[Battery1,34]: flow_in[Battery1,34] - 20 zwitch[Battery1,34]
   <= 0
 to_charge[Battery1,35]: flow_in[Battery1,35] - 20 zwitch[Battery1,35]
   <= 0
 to_charge[Battery1,36]: flow_in[Battery1,36] - 20 zwitch[Battery1,36]
   <= 0
 to_charge[Battery1,37]: flow_in[Battery1,37] - 20 zwitch[Battery1,37]
   <= 0
 to_charge[Battery1,38]: flow_in[Battery1,38] - 20 zwitch[Battery1,38]
   <= 0
 to_charge[Battery1,39]: flow_in[Battery1,39] - 20 zwitch[Battery1,39]
   <= 0
 to_charge[Battery1,40]: flow_in[Battery1,40] - 20 zwitch[Battery1,40]
   <= 0
 to_charge[Battery1,41]: flow_in[Battery1,41] - 20 zwitch[Battery1,41]
   <= 0
 to_charge[Battery1,42]: flow_in[Battery1,42] - 20 zwitch[Battery1,42]
   <= 0
 to_charge[Battery1,43]: flow_in[Battery1,43] - 20 zwitch[Battery1,43]
   <= 0
 to_charge[Battery1,44]: flow_in[Battery1,44] - 20 zwitch[Battery1,44]
   <= 0
 to_charge[Battery1,45]: flow_in[Battery1,45] - 20 zwitch[Battery1,45]
   <= 0
 to_charge[Battery1,46]: flow_in[Battery1,46] - 20 zwitch[Battery1,46]
   <= 0
 to_charge[Battery1,47]: flow_in[Battery1,47] - 20 zwitch[Battery1,47]
   <= 0
 to_charge[Battery1,48]: flow_in[Battery1,48] - 20 zwitch[Battery1,48]
   <= 0
 to_charge[Battery1,49]: flow_in[Battery1,49] - 20 zwitch[Battery1,49]
   <= 0
 to_charge[Battery1,50]: flow_in[Battery1,50] - 20 zwitch[Battery1,50]
   <= 0
 to_charge[Battery1,51]: flow_in[Battery1,51] - 20 zwitch[Battery1,51]
   <= 0
 to_charge[Battery1,52]: flow_in[Battery1,52] - 20 zwitch[Battery1,52]
   <= 0
 to_charge[Battery1,53]: flow_in[Battery1,53] - 20 zwitch[Battery1,53]
   <= 0
 to_charge[Battery1,54]: flow_in[Battery1,54] - 20 zwitch[Battery1,54]
   <= 0
 to_charge[Battery1,55]: flow_in[Battery1,55] - 20 zwitch[Battery1,55]
   <= 0
 to_charge[Battery1,56]: flow_in[Battery1,56] - 20 zwitch[Battery1,56]
   <= 0
 to_charge[Battery1,57]: flow_in[Battery1,57] - 20 zwitch[Battery1,57]
   <= 0
 to_charge[Battery1,58]: flow_in[Battery1,58] - 20 zwitch[Battery1,58]
   <= 0
 to_charge[Battery1,59]: flow_in[Battery1,59] - 20 zwitch[Battery1,59]
   <= 0
 to_charge[Battery1,60]: flow_in[Battery1,60] - 20 zwitch[Battery1,60]
   <= 0
 to_charge[Battery1,61]: flow_in[Battery1,61] - 20 zwitch[Battery1,61]
   <= 0
 to_charge[Battery1,62]: flow_in[Battery1,62] - 20 zwitch[Battery1,62]
   <= 0
 to_charge[Battery1,63]: flow_in[Battery1,63] - 20 zwitch[Battery1,63]
   <= 0
 to_charge[Battery1,64]: flow_in[Battery1,64] - 20 zwitch[Battery1,64]
   <= 0
 to_charge[Battery1,65]: flow_in[Battery1,65] - 20 zwitch[Battery1,65]
   <= 0
 to_charge[Battery1,66]: flow_in[Battery1,66] - 20 zwitch[Battery1,66]
   <= 0
 to_charge[Battery1,67]: flow_in[Battery1,67] - 20 zwitch[Battery1,67]
   <= 0
 to_charge[Battery1,68]: flow_in[Battery1,68] - 20 zwitch[Battery1,68]
   <= 0
 to_charge[Battery1,69]: flow_in[Battery1,69] - 20 zwitch[Battery1,69]
   <= 0
 to_charge[Battery1,70]: flow_in[Battery1,70] - 20 zwitch[Battery1,70]
   <= 0
 to_charge[Battery1,71]: flow_in[Battery1,71] - 20 zwitch[Battery1,71]
   <= 0
 to_charge[Battery1,72]: flow_in[Battery1,72] - 20 zwitch[Battery1,72]
   <= 0
 to_charge[Battery1,73]: flow_in[Battery1,73] - 20 zwitch[Battery1,73]
   <= 0
 to_charge[Battery1,74]: flow_in[Battery1,74] - 20 zwitch[Battery1,74]
   <= 0
 to_charge[Battery1,75]: flow_in[Battery1,75] - 20 zwitch[Battery1,75]
   <= 0
 to_charge[Battery1,76]: flow_in[Battery1,76] - 20 zwitch[Battery1,76]
   <= 0
 to_charge[Battery1,77]: flow_in[Battery1,77] - 20 zwitch[Battery1,77]
   <= 0
 to_charge[Battery1,78]: flow_in[Battery1,78] - 20 zwitch[Battery1,78]
   <= 0
 to_charge[Battery1,79]: flow_in[Battery1,79] - 20 zwitch[Battery1,79]
   <= 0
 to_charge[Battery1,80]: flow_in[Battery1,80] - 20 zwitch[Battery1,80]
   <= 0
 to_charge[Battery1,81]: flow_in[Battery1,81] - 20 zwitch[Battery1,81]
   <= 0
 to_charge[Battery1,82]: flow_in[Battery1,82] - 20 zwitch[Battery1,82]
   <= 0
 to_charge[Battery1,83]: flow_in[Battery1,83] - 20 zwitch[Battery1,83]
   <= 0
 to_charge[Battery1,84]: flow_in[Battery1,84] - 20 zwitch[Battery1,84]
   <= 0
 to_charge[Battery1,85]: flow_in[Battery1,85] - 20 zwitch[Battery1,85]
   <= 0
 to_charge[Battery1,86]: flow_in[Battery1,86] - 20 zwitch[Battery1,86]
   <= 0
 to_charge[Battery1,87]: flow_in[Battery1,87] - 20 zwitch[Battery1,87]
   <= 0
 to_charge[Battery1,88]: flow_in[Battery1,88] - 20 zwitch[Battery1,88]
   <= 0
 to_charge[Battery1,89]: flow_in[Battery1,89] - 20 zwitch[Battery1,89]
   <= 0
 to_charge[Battery1,90]: flow_in[Battery1,90] - 20 zwitch[Battery1,90]
   <= 0
 to_charge[Battery1,91]: flow_in[Battery1,91] - 20 zwitch[Battery1,91]
   <= 0
 to_charge[Battery1,92]: flow_in[Battery1,92] - 20 zwitch[Battery1,92]
   <= 0
 to_charge[Battery1,93]: flow_in[Battery1,93] - 20 zwitch[Battery1,93]
   <= 0
 to_charge[Battery1,94]: flow_in[Battery1,94] - 20 zwitch[Battery1,94]
   <= 0
 to_charge[Battery1,95]: flow_in[Battery1,95] - 20 zwitch[Battery1,95]
   <= 0
 to_charge[Battery1,96]: flow_in[Battery1,96] - 20 zwitch[Battery1,96]
   <= 0
 to_charge[Battery1,97]: flow_in[Battery1,97] - 20 zwitch[Battery1,97]
   <= 0
 to_charge[Battery1,98]: flow_in[Battery1,98] - 20 zwitch[Battery1,98]
   <= 0
 to_charge[Battery1,99]: flow_in[Battery1,99] - 20 zwitch[Battery1,99]
   <= 0
 to_charge[Battery1,100]: flow_in[Battery1,100] - 20 zwitch[Battery1,100]
   <= 0
 to_charge[Battery1,101]: flow_in[Battery1,101] - 20 zwitch[Battery1,101]
   <= 0
 to_charge[Battery1,102]: flow_in[Battery1,102] - 20 zwitch[Battery1,102]
   <= 0
 to_charge[Battery1,103]: flow_in[Battery1,103] - 20 zwitch[Battery1,103]
   <= 0
 to_charge[Battery1,104]: flow_in[Battery1,104] - 20 zwitch[Battery1,104]
   <= 0
 to_charge[Battery1,105]: flow_in[Battery1,105] - 20 zwitch[Battery1,105]
   <= 0
 to_charge[Battery1,106]: flow_in[Battery1,106] - 20 zwitch[Battery1,106]
   <= 0
 to_charge[Battery1,107]: flow_in[Battery1,107] - 20 zwitch[Battery1,107]
   <= 0
 to_charge[Battery1,108]: flow_in[Battery1,108] - 20 zwitch[Battery1,108]
   <= 0
 to_charge[Battery1,109]: flow_in[Battery1,109] - 20 zwitch[Battery1,109]
   <= 0
 to_charge[Battery1,110]: flow_in[Battery1,110] - 20 zwitch[Battery1,110]
   <= 0
 to_charge[Battery1,111]: flow_in[Battery1,111] - 20 zwitch[Battery1,111]
   <= 0
 to_charge[Battery1,112]: flow_in[Battery1,112] - 20 zwitch[Battery1,112]
   <= 0
 to_charge[Battery1,113]: flow_in[Battery1,113] - 20 zwitch[Battery1,113]
   <= 0
 to_charge[Battery1,114]: flow_in[Battery1,114] - 20 zwitch[Battery1,114]
   <= 0
 to_charge[Battery1,115]: flow_in[Battery1,115] - 20 zwitch[Battery1,115]
   <= 0
 to_charge[Battery1,116]: flow_in[Battery1,116] - 20 zwitch[Battery1,116]
   <= 0
 to_charge[Battery1,117]: flow_in[Battery1,117] - 20 zwitch[Battery1,117]
   <= 0
 to_charge[Battery1,118]: flow_in[Battery1,118] - 20 zwitch[Battery1,118]
   <= 0
 to_charge[Battery1,119]: flow_in[Battery1,119] - 20 zwitch[Battery1,119]
   <= 0
 to_charge[Battery1,120]: flow_in[Battery1,120] - 20 zwitch[Battery1,120]
   <= 0
 to_charge[Battery1,121]: flow_in[Battery1,121] - 20 zwitch[Battery1,121]
   <= 0
 to_charge[Battery1,122]: flow_in[Battery1,122] - 20 zwitch[Battery1,122]
   <= 0
 to_charge[Battery1,123]: flow_in[Battery1,123] - 20 zwitch[Battery1,123]
   <= 0
 to_charge[Battery1,124]: flow_in[Battery1,124] - 20 zwitch[Battery1,124]
   <= 0
 to_charge[Battery1,125]: flow_in[Battery1,125] - 20 zwitch[Battery1,125]
   <= 0
 to_charge[Battery1,126]: flow_in[Battery1,126] - 20 zwitch[Battery1,126]
   <= 0
 to_charge[Battery1,127]: flow_in[Battery1,127] - 20 zwitch[Battery1,127]
   <= 0
 to_charge[Battery1,128]: flow_in[Battery1,128] - 20 zwitch[Battery1,128]
   <= 0
 to_charge[Battery1,129]: flow_in[Battery1,129] - 20 zwitch[Battery1,129]
   <= 0
 to_charge[Battery1,130]: flow_in[Battery1,130] - 20 zwitch[Battery1,130]
   <= 0
 to_charge[Battery1,131]: flow_in[Battery1,131] - 20 zwitch[Battery1,131]
   <= 0
 to_charge[Battery1,132]: flow_in[Battery1,132] - 20 zwitch[Battery1,132]
   <= 0
 to_charge[Battery1,133]: flow_in[Battery1,133] - 20 zwitch[Battery1,133]
   <= 0
 to_charge[Battery1,134]: flow_in[Battery1,134] - 20 zwitch[Battery1,134]
   <= 0
 to_charge[Battery1,135]: flow_in[Battery1,135] - 20 zwitch[Battery1,135]
   <= 0
 to_charge[Battery1,136]: flow_in[Battery1,136] - 20 zwitch[Battery1,136]
   <= 0
 to_charge[Battery1,137]: flow_in[Battery1,137] - 20 zwitch[Battery1,137]
   <= 0
 to_charge[Battery1,138]: flow_in[Battery1,138] - 20 zwitch[Battery1,138]
   <= 0
 to_charge[Battery1,139]: flow_in[Battery1,139] - 20 zwitch[Battery1,139]
   <= 0
 to_charge[Battery1,140]: flow_in[Battery1,140] - 20 zwitch[Battery1,140]
   <= 0
 to_charge[Battery1,141]: flow_in[Battery1,141] - 20 zwitch[Battery1,141]
   <= 0
 to_charge[Battery1,142]: flow_in[Battery1,142] - 20 zwitch[Battery1,142]
   <= 0
 to_charge[Battery1,143]: flow_in[Battery1,143] - 20 zwitch[Battery1,143]
   <= 0
 to_charge[Battery1,144]: flow_in[Battery1,144] - 20 zwitch[Battery1,144]
   <= 0
 to_charge[Battery1,145]: flow_in[Battery1,145] - 20 zwitch[Battery1,145]
   <= 0
 to_charge[Battery1,146]: flow_in[Battery1,146] - 20 zwitch[Battery1,146]
   <= 0
 to_charge[Battery1,147]: flow_in[Battery1,147] - 20 zwitch[Battery1,147]
   <= 0
 to_charge[Battery1,148]: flow_in[Battery1,148] - 20 zwitch[Battery1,148]
   <= 0
 to_charge[Battery1,149]: flow_in[Battery1,149] - 20 zwitch[Battery1,149]
   <= 0
 to_charge[Battery1,150]: flow_in[Battery1,150] - 20 zwitch[Battery1,150]
   <= 0
 to_charge[Battery1,151]: flow_in[Battery1,151] - 20 zwitch[Battery1,151]
   <= 0
 to_charge[Battery1,152]: flow_in[Battery1,152] - 20 zwitch[Battery1,152]
   <= 0
 to_charge[Battery1,153]: flow_in[Battery1,153] - 20 zwitch[Battery1,153]
   <= 0
 to_charge[Battery1,154]: flow_in[Battery1,154] - 20 zwitch[Battery1,154]
   <= 0
 to_charge[Battery1,155]: flow_in[Battery1,155] - 20 zwitch[Battery1,155]
   <= 0
 to_charge[Battery1,156]: flow_in[Battery1,156] - 20 zwitch[Battery1,156]
   <= 0
 to_charge[Battery1,157]: flow_in[Battery1,157] - 20 zwitch[Battery1,157]
   <= 0
 to_charge[Battery1,158]: flow_in[Battery1,158] - 20 zwitch[Battery1,158]
   <= 0
 to_charge[Battery1,159]: flow_in[Battery1,159] - 20 zwitch[Battery1,159]
   <= 0
 to_charge[Battery1,160]: flow_in[Battery1,160] - 20 zwitch[Battery1,160]
   <= 0
 to_charge[Battery1,161]: flow_in[Battery1,161] - 20 zwitch[Battery1,161]
   <= 0
 to_charge[Battery1,162]: flow_in[Battery1,162] - 20 zwitch[Battery1,162]
   <= 0
 to_charge[Battery1,163]: flow_in[Battery1,163] - 20 zwitch[Battery1,163]
   <= 0
 to_charge[Battery1,164]: flow_in[Battery1,164] - 20 zwitch[Battery1,164]
   <= 0
 to_charge[Battery1,165]: flow_in[Battery1,165] - 20 zwitch[Battery1,165]
   <= 0
 to_charge[Battery1,166]: flow_in[Battery1,166] - 20 zwitch[Battery1,166]
   <= 0
 to_charge[Battery1,167]: flow_in[Battery1,167] - 20 zwitch[Battery1,167]
   <= 0
 to_charge[Battery1,168]: flow_in[Battery1,168] - 20 zwitch[Battery1,168]
   <= 0
 to_charge[Battery1,169]: flow_in[Battery1,169] - 20 zwitch[Battery1,169]
   <= 0
 to_charge[Battery1,170]: flow_in[Battery1,170] - 20 zwitch[Battery1,170]
   <= 0
 to_charge[Battery1,171]: flow_in[Battery1,171] - 20 zwitch[Battery1,171]
   <= 0
 to_charge[Battery1,172]: flow_in[Battery1,172] - 20 zwitch[Battery1,172]
   <= 0
 to_charge[Battery1,173]: flow_in[Battery1,173] - 20 zwitch[Battery1,173]
   <= 0
 to_charge[Battery1,174]: flow_in[Battery1,174] - 20 zwitch[Battery1,174]
   <= 0
 to_charge[Battery1,175]: flow_in[Battery1,175] - 20 zwitch[Battery1,175]
   <= 0
 to_charge[Battery1,176]: flow_in[Battery1,176] - 20 zwitch[Battery1,176]
   <= 0
 to_charge[Battery1,177]: flow_in[Battery1,177] - 20 zwitch[Battery1,177]
   <= 0
 to_charge[Battery1,178]: flow_in[Battery1,178] - 20 zwitch[Battery1,178]
   <= 0
 to_charge[Battery1,179]: flow_in[Battery1,179] - 20 zwitch[Battery1,179]
   <= 0
 or_not_to_charge[Battery0,0]: flow_out[Battery0,0] + 20 zwitch[Battery0,0]
   <= 20
 or_not_to_charge[Battery0,1]: flow_out[Battery0,1] + 20 zwitch[Battery0,1]
   <= 20
 or_not_to_charge[Battery0,2]: flow_out[Battery0,2] + 20 zwitch[Battery0,2]
   <= 20
 or_not_to_charge[Battery0,3]: flow_out[Battery0,3] + 20 zwitch[Battery0,3]
   <= 20
 or_not_to_charge[Battery0,4]: flow_out[Battery0,4] + 20 zwitch[Battery0,4]
   <= 20
 or_not_to_charge[Battery0,5]: flow_out[Battery0,5] + 20 zwitch[Battery0,5]
   <= 20
 or_not_to_charge[Battery0,6]: flow_out[Battery0,6] + 20 zwitch[Battery0,6]
   <= 20
 or_not_to_charge[Battery0,7]: flow_out[Battery0,7] + 20 zwitch[Battery0,7]
   <= 20
 or_not_to_charge[Battery0,8]: flow_out[Battery0,8] + 20 zwitch[Battery0,8]
   <= 20
 or_not_to_charge[Battery0,9]: flow_out[Battery0,9] + 20 zwitch[Battery0,9]
   <= 20
 or_not_to_charge[Battery0,10]: flow_out[Battery0,10]
   + 20 zwitch[Battery0,10] <= 20
 or_not_to_charge[Battery0,11]: flow_out[Battery0,11]
   + 20 zwitch[Battery0,11] <= 20
 or_not_to_charge[Battery0,12]: flow_out[Battery0,12]
   + 20 zwitch[Battery0,12] <= 20
 or_not_to_charge[Battery0,13]: flow_out[Battery0,13]
   + 20 zwitch[Battery0,13] <= 20
 or_not_to_charge[Battery0,14]: flow_out[Battery0,14]
   + 20 zwitch[Battery0,14] <= 20
 or_not_to_charge[Battery0,15]: flow_out[Battery0,15]
   + 20 zwitch[Battery0,15] <= 20
 or_not_to_charge[Battery0,16]: flow_out[Battery0,16]
   + 20 zwitch[Battery0,16] <= 20
 or_not_to_charge[Battery0,17]: flow_out[Battery0,17]
   + 20 zwitch[Battery0,17] <= 20
 or_not_to_charge[Battery0,18]: flow_out[Battery0,18]
   + 20 zwitch[Battery0,18] <= 20
 or_not_to_charge[Battery0,19]: flow_out[Battery0,19]
   + 20 zwitch[Battery0,19] <= 20
 or_not_to_charge[Battery0,20]: flow_out[Battery0,20]
   + 20 zwitch[Battery0,20] <= 20
 or_not_to_charge[Battery0,21]: flow_out[Battery0,21]
   + 20 zwitch[Battery0,21] <= 20
 or_not_to_charge[Battery0,22]: flow_out[Battery0,22]
   + 20 zwitch[Battery0,22] <= 20
 or_not_to_charge[Battery0,23]: flow_out[Battery0,23]
   + 20 zwitch[Battery0,23] <= 20
 or_not_to_charge[Battery0,24]: flow_out[Battery0,24]
   + 20 zwitch[Battery0,24] <= 20
 or_not_to_charge[Battery0,25]: flow_out[Battery0,25]
   + 20 zwitch[Battery0,25] <= 20
 or_not_to_charge[Battery0,26]: flow_out[Battery0,26]
   + 20 zwitch[Battery0,26] <= 20
 or_not_to_charge[Battery0,27]: flow_out[Battery0,27]
   + 20 zwitch[Battery0,27] <= 20
 or_not_to_charge[Battery0,28]: flow_out[Battery0,28]
   + 20 zwitch[Battery0,28] <= 20
 or_not_to_charge[Battery0,29]: flow_out[Battery0,29]
   + 20 zwitch[Battery0,29] <= 20
 or_not_to_charge[Battery0,30]: flow_out[Battery0,30]
   + 20 zwitch[Battery0,30] <= 20
 or_not_to_charge[Battery0,31]: flow_out[Battery0,31]
   + 20 zwitch[Battery0,31] <= 20
 or_not_to_charge[Battery0,32]: flow_out[Battery0,32]
   + 20 zwitch[Battery0,32] <= 20
 or_not_to_charge[Battery0,33]: flow_out[Battery0,33]
   + 20 zwitch[Battery0,33] <= 20
 or_not_to_charge[Battery0,34]: flow_out[Battery0,34]
   + 20 zwitch[Battery0,34] <= 20
 or_not_to_charge[Battery0,35]: flow_out[Battery0,35]
   + 20 zwitch[Battery0,35] <= 20
 or_not_to_charge[Battery0,36]: flow_out[Battery0,36]
   + 20 zwitch[Battery0,36] <= 20
 or_not_to_charge[Battery0,37]: flow_out[Battery0,37]
   + 20 zwitch[Battery0,37] <= 20
 or_not_to_charge[Battery0,38]: flow_out[Battery0,38]
   + 20 zwitch[Battery0,38] <= 20
 or_not_to_charge[Battery0,39]: flow_out[Battery0,39]
   + 20 zwitch[Battery0,39] <= 20
 or_not_to_charge[Battery0,40]: flow_out[Battery0,40]
   + 20 zwitch[Battery0,40] <= 20
 or_not_to_charge[Battery0,41]: flow_out[Battery0,41]
   + 20 zwitch[Battery0,41] <= 20
 or_not_to_charge[Battery0,42]: flow_out[Battery0,42]
   + 20 zwitch[Battery0,42] <= 20
 or_not_to_charge[Battery0,43]: flow_out[Battery0,43]
   + 20 zwitch[Battery0,43] <= 20
 or_not_to_charge[Battery0,44]: flow_out[Battery0,44]
   + 20 zwitch[Battery0,44] <= 20
 or_not_to_charge[Battery0,45]: flow_out[Battery0,45]
   + 20 zwitch[Battery0,45] <= 20
 or_not_to_charge[Battery0,46]: flow_out[Battery0,46]
   + 20 zwitch[Battery0,46] <= 20
 or_not_to_charge[Battery0,47]: flow_out[Battery0,47]
   + 20 zwitch[Battery0,47] <= 20
 or_not_to_charge[Battery0,48]: flow_out[Battery0,48]
   + 20 zwitch[Battery0,48] <= 20
 or_not_to_charge[Battery0,49]: flow_out[Battery0,49]
   + 20 zwitch[Battery0,49] <= 20
 or_not_to_charge[Battery0,50]: flow_out[Battery0,50]
   + 20 zwitch[Battery0,50] <= 20
 or_not_to_charge[Battery0,51]: flow_out[Battery0,51]
   + 20 zwitch[Battery0,51] <= 20
 or_not_to_charge[Battery0,52]: flow_out[Battery0,52]
   + 20 zwitch[Battery0,52] <= 20
 or_not_to_charge[Battery0,53]: flow_out[Battery0,53]
   + 20 zwitch[Battery0,53] <= 20
 or_not_to_charge[Battery0,54]: flow_out[Battery0,54]
   + 20 zwitch[Battery0,54] <= 20
 or_not_to_charge[Battery0,55]: flow_out[Battery0,55]
   + 20 zwitch[Battery0,55] <= 20
 or_not_to_charge[Battery0,56]: flow_out[Battery0,56]
   + 20 zwitch[Battery0,56] <= 20
 or_not_to_charge[Battery0,57]: flow_out[Battery0,57]
   + 20 zwitch[Battery0,57] <= 20
 or_not_to_charge[Battery0,58]: flow_out[Battery0,58]
   + 20 zwitch[Battery0,58] <= 20
 or_not_to_charge[Battery0,59]: flow_out[Battery0,59]
   + 20 zwitch[Battery0,59] <= 20
 or_not_to_charge[Battery0,60]: flow_out[Battery0,60]
   + 20 zwitch[Battery0,60] <= 20
 or_not_to_charge[Battery0,61]: flow_out[Battery0,61]
   + 20 zwitch[Battery0,61] <= 20
 or_not_to_charge[Battery0,62]: flow_out[Battery0,62]
   + 20 zwitch[Battery0,62] <= 20
 or_not_to_charge[Battery0,63]: flow_out[Battery0,63]
   + 20 zwitch[Battery0,63] <= 20
 or_not_to_charge[Battery0,64]: flow_out[Battery0,64]
   + 20 zwitch[Battery0,64] <= 20
 or_not_to_charge[Battery0,65]: flow_out[Battery0,65]
   + 20 zwitch[Battery0,65] <= 20
 or_not_to_charge[Battery0,66]: flow_out[Battery0,66]
   + 20 zwitch[Battery0,66] <= 20
 or_not_to_charge[Battery0,67]: flow_out[Battery0,67]
   + 20 zwitch[Battery0,67] <= 20
 or_not_to_charge[Battery0,68]: flow_out[Battery0,68]
   + 20 zwitch[Battery0,68] <= 20
 or_not_to_charge[Battery0,69]: flow_out[Battery0,69]
   + 20 zwitch[Battery0,69] <= 20
 or_not_to_charge[Battery0,70]: flow_out[Battery0,70]
   + 20 zwitch[Battery0,70] <= 20
 or_not_to_charge[Battery0,71]: flow_out[Battery0,71]
   + 20 zwitch[Battery0,71] <= 20
 or_not_to_charge[Battery0,72]: flow_out[Battery0,72]
   + 20 zwitch[Battery0,72] <= 20
 or_not_to_charge[Battery0,73]: flow_out[Battery0,73]
   + 20 zwitch[Battery0,73] <= 20
 or_not_to_charge[Battery0,74]: flow_out[Battery0,74]
   + 20 zwitch[Battery0,74] <= 20
 or_not_to_charge[Battery0,75]: flow_out[Battery0,75]
   + 20 zwitch[Battery0,75] <= 20
 or_not_to_charge[Battery0,76]: flow_out[Battery0,76]
   + 20 zwitch[Battery0,76] <= 20
 or_not_to_charge[Battery0,77]: flow_out[Battery0,77]
   + 20 zwitch[Battery0,77] <= 20
 or_not_to_charge[Battery0,78]: flow_out[Battery0,78]
   + 20 zwitch[Battery0,78] <= 20
 or_not_to_charge[Battery0,79]: flow_out[Battery0,79]
   + 20 zwitch[Battery0,79] <= 20
 or_not_to_charge[Battery0,80]: flow_out[Battery0,80]
   + 20 zwitch[Battery0,80] <= 20
 or_not_to_charge[Battery0,81]: flow_out[Battery0,81]
   + 20 zwitch[Battery0,81] <= 20
 or_not_to_charge[Battery0,82]: flow_out[Battery0,82]
   + 20 zwitch[Battery0,82] <= 20
 or_not_to_charge[Battery0,83]: flow_out[Battery0,83]
   + 20 zwitch[Battery0,83] <= 20
 or_not_to_charge[Battery0,84]: flow_out[Battery0,84]
   + 20 zwitch[Battery0,84] <= 20
 or_not_to_charge[Battery0,85]: flow_out[Battery0,85]
   + 20 zwitch[Battery0,85] <= 20
 or_not_to_charge[Battery0,86]: flow_out[Battery0,86]
   + 20 zwitch[Battery0,86] <= 20
 or_not_to_charge[Battery0,87]: flow_out[Battery0,87]
   + 20 zwitch[Battery0,87] <= 20
 or_not_to_charge[Battery0,88]: flow_out[Battery0,88]
   + 20 zwitch[Battery0,88] <= 20
 or_not_to_charge[Battery0,89]: flow_out[Battery0,89]
   + 20 zwitch[Battery0,89] <= 20
 or_not_to_charge[Battery0,90]: flow_out[Battery0,90]
   + 20 zwitch[Battery0,90] <= 20
 or_not_to_charge[Battery0,91]: flow_out[Battery0,91]
   + 20 zwitch[Battery0,91] <= 20
 or_not_to_charge[Battery0,92]: flow_out[Battery0,92]
   + 20 zwitch[Battery0,92] <= 20
 or_not_to_charge[Battery0,93]: flow_out[Battery0,93]
   + 20 zwitch[Battery0,93] <= 20
 or_not_to_charge[Battery0,94]: flow_out[Battery0,94]
   + 20 zwitch[Battery0,94] <= 20
 or_not_to_charge[Battery0,95]: flow_out[Battery0,95]
   + 20 zwitch[Battery0,95] <= 20
 or_not_to_charge[Battery0,96]: flow_out[Battery0,96]
   + 20 zwitch[Battery0,96] <= 20
 or_not_to_charge[Battery0,97]: flow_out[Battery0,97]
   + 20 zwitch[Battery0,97] <= 20
 or_not_to_charge[Battery0,98]: flow_out[Battery0,98]
   + 20 zwitch[Battery0,98] <= 20
 or_not_to_charge[Battery0,99]: flow_out[Battery0,99]
   + 20 zwitch[Battery0,99] <= 20
 or_not_to_charge[Battery0,100]: flow_out[Battery0,100]
   + 20 zwitch[Battery0,100] <= 20
 or_not_to_charge[Battery0,101]: flow_out[Battery0,101]
   + 20 zwitch[Battery0,101] <= 20
 or_not_to_charge[Battery0,102]: flow_out[Battery0,102]
   + 20 zwitch[Battery0,102] <= 20
 or_not_to_charge[Battery0,103]: flow_out[Battery0,103]
   + 20 zwitch[Battery0,103] <= 20
 or_not_to_charge[Battery0,104]: flow_out[Battery0,104]
   + 20 zwitch[Battery0,104] <= 20
 or_not_to_charge[Battery0,105]: flow_out[Battery0,105]
   + 20 zwitch[Battery0,105] <= 20
 or_not_to_charge[Battery0,106]: flow_out[Battery0,106]
   + 20 zwitch[Battery0,106] <= 20
 or_not_to_charge[Battery0,107]: flow_out[Battery0,107]
   + 20 zwitch[Battery0,107] <= 20
 or_not_to_charge[Battery0,108]: flow_out[Battery0,108]
   + 20 zwitch[Battery0,108] <= 20
 or_not_to_charge[Battery0,109]: flow_out[Battery0,109]
   + 20 zwitch[Battery0,109] <= 20
 or_not_to_charge[Battery0,110]: flow_out[Battery0,110]
   + 20 zwitch[Battery0,110] <= 20
 or_not_to_charge[Battery0,111]: flow_out[Battery0,111]
   + 20 zwitch[Battery0,111] <= 20
 or_not_to_charge[Battery0,112]: flow_out[Battery0,112]
   + 20 zwitch[Battery0,112] <= 20
 or_not_to_charge[Battery0,113]: flow_out[Battery0,113]
   + 20 zwitch[Battery0,113] <= 20
 or_not_to_charge[Battery0,114]: flow_out[Battery0,114]
   + 20 zwitch[Battery0,114] <= 20
 or_not_to_charge[Battery0,115]: flow_out[Battery0,115]
   + 20 zwitch[Battery0,115] <= 20
 or_not_to_charge[Battery0,116]: flow_out[Battery0,116]
   + 20 zwitch[Battery0,116] <= 20
 or_not_to_charge[Battery0,117]: flow_out[Battery0,117]
   + 20 zwitch[Battery0,117] <= 20
 or_not_to_charge[Battery0,118]: flow_out[Battery0,118]
   + 20 zwitch[Battery0,118] <= 20
 or_not_to_charge[Battery0,119]: flow_out[Battery0,119]
   + 20 zwitch[Battery0,119] <= 20
 or_not_to_charge[Battery0,120]: flow_out[Battery0,120]
   + 20 zwitch[Battery0,120] <= 20
 or_not_to_charge[Battery0,121]: flow_out[Battery0,121]
   + 20 zwitch[Battery0,121] <= 20
 or_not_to_charge[Battery0,122]: flow_out[Battery0,122]
   + 20 zwitch[Battery0,122] <= 20
 or_not_to_charge[Battery0,123]: flow_out[Battery0,123]
   + 20 zwitch[Battery0,123] <= 20
 or_not_to_charge[Battery0,124]: flow_out[Battery0,124]
   + 20 zwitch[Battery0,124] <= 20
 or_not_to_charge[Battery0,125]: flow_out[Battery0,125]
   + 20 zwitch[Battery0,125] <= 20
 or_not_to_charge[Battery0,126]: flow_out[Battery0,126]
   + 20 zwitch[Battery0,126] <= 20
 or_not_to_charge[Battery0,127]: flow_out[Battery0,127]
   + 20 zwitch[Battery0,127] <= 20
 or_not_to_charge[Battery0,128]: flow_out[Battery0,128]
   + 20 zwitch[Battery0,128] <= 20
 or_not_to_charge[Battery0,129]: flow_out[Battery0,129]
   + 20 zwitch[Battery0,129] <= 20
 or_not_to_charge[Battery0,130]: flow_out[Battery0,130]
   + 20 zwitch[Battery0,130] <= 20
 or_not_to_charge[Battery0,131]: flow_out[Battery0,131]
   + 20 zwitch[Battery0,131] <= 20
 or_not_to_charge[Battery0,132]: flow_out[Battery0,132]
   + 20 zwitch[Battery0,132] <= 20
 or_not_to_charge[Battery0,133]: flow_out[Battery0,133]
   + 20 zwitch[Battery0,133] <= 20
 or_not_to_charge[Battery0,134]: flow_out[Battery0,134]
   + 20 zwitch[Battery0,134] <= 20
 or_not_to_charge[Battery0,135]: flow_out[Battery0,135]
   + 20 zwitch[Battery0,135] <= 20
 or_not_to_charge[Battery0,136]: flow_out[Battery0,136]
   + 20 zwitch[Battery0,136] <= 20
 or_not_to_charge[Battery0,137]: flow_out[Battery0,137]
   + 20 zwitch[Battery0,137] <= 20
 or_not_to_charge[Battery0,138]: flow_out[Battery0,138]
   + 20 zwitch[Battery0,138] <= 20
 or_not_to_charge[Battery0,139]: flow_out[Battery0,139]
   + 20 zwitch[Battery0,139] <= 20
 or_not_to_charge[Battery0,140]: flow_out[Battery0,140]
   + 20 zwitch[Battery0,140] <= 20
 or_not_to_charge[Battery0,141]: flow_out[Battery0,141]
   + 20 zwitch[Battery0,141] <= 20
 or_not_to_charge[Battery0,142]: flow_out[Battery0,142]
   + 20 zwitch[Battery0,142] <= 20
 or_not_to_charge[Battery0,143]: flow_out[Battery0,143]
   + 20 zwitch[Battery0,143] <= 20
 or_not_to_charge[Battery0,144]: flow_out[Battery0,144]
   + 20 zwitch[Battery0,144] <= 20
 or_not_to_charge[Battery0,145]: flow_out[Battery0,145]
   + 20 zwitch[Battery0,145] <= 20
 or_not_to_charge[Battery0,146]: flow_out[Battery0,146]
   + 20 zwitch[Battery0,146] <= 20
 or_not_to_charge[Battery0,147]: flow_out[Battery0,147]
   + 20 zwitch[Battery0,147] <= 20
 or_not_to_charge[Battery0,148]: flow_out[Battery0,148]
   + 20 zwitch[Battery0,148] <= 20
 or_not_to_charge[Battery0,149]: flow_out[Battery0,149]
   + 20 zwitch[Battery0,149] <= 20
 or_not_to_charge[Battery0,150]: flow_out[Battery0,150]
   + 20 zwitch[Battery0,150] <= 20
 or_not_to_charge[Battery0,151]: flow_out[Battery0,151]
   + 20 zwitch[Battery0,151] <= 20
 or_not_to_charge[Battery0,152]: flow_out[Battery0,152]
   + 20 zwitch[Battery0,152] <= 20
 or_not_to_charge[Battery0,153]: flow_out[Battery0,153]
   + 20 zwitch[Battery0,153] <= 20
 or_not_to_charge[Battery0,154]: flow_out[Battery0,154]
   + 20 zwitch[Battery0,154] <= 20
 or_not_to_charge[Battery0,155]: flow_out[Battery0,155]
   + 20 zwitch[Battery0,155] <= 20
 or_not_to_charge[Battery0,156]: flow_out[Battery0,156]
   + 20 zwitch[Battery0,156] <= 20
 or_not_to_charge[Battery0,157]: flow_out[Battery0,157]
   + 20 zwitch[Battery0,157] <= 20
 or_not_to_charge[Battery0,158]: flow_out[Battery0,158]
   + 20 zwitch[Battery0,158] <= 20
 or_not_to_charge[Battery0,159]: flow_out[Battery0,159]
   + 20 zwitch[Battery0,159] <= 20
 or_not_to_charge[Battery0,160]: flow_out[Battery0,160]
   + 20 zwitch[Battery0,160] <= 20
 or_not_to_charge[Battery0,161]: flow_out[Battery0,161]
   + 20 zwitch[Battery0,161] <= 20
 or_not_to_charge[Battery0,162]: flow_out[Battery0,162]
   + 20 zwitch[Battery0,162] <= 20
 or_not_to_charge[Battery0,163]: flow_out[Battery0,163]
   + 20 zwitch[Battery0,163] <= 20
 or_not_to_charge[Battery0,164]: flow_out[Battery0,164]
   + 20 zwitch[Battery0,164] <= 20
 or_not_to_charge[Battery0,165]: flow_out[Battery0,165]
   + 20 zwitch[Battery0,165] <= 20
 or_not_to_charge[Battery0,166]: flow_out[Battery0,166]
   + 20 zwitch[Battery0,166] <= 20
 or_not_to_charge[Battery0,167]: flow_out[Battery0,167]
   + 20 zwitch[Battery0,167] <= 20
 or_not_to_charge[Battery0,168]: flow_out[Battery0,168]
   + 20 zwitch[Battery0,168] <= 20
 or_not_to_charge[Battery0,169]: flow_out[Battery0,169]
   + 20 zwitch[Battery0,169] <= 20
 or_not_to_charge[Battery0,170]: flow_out[Battery0,170]
   + 20 zwitch[Battery0,170] <= 20
 or_not_to_charge[Battery0,171]: flow_out[Battery0,171]
   + 20 zwitch[Battery0,171] <= 20
 or_not_to_charge[Battery0,172]: flow_out[Battery0,172]
   + 20 zwitch[Battery0,172] <= 20
 or_not_to_charge[Battery0,173]: flow_out[Battery0,173]
   + 20 zwitch[Battery0,173] <= 20
 or_not_to_charge[Battery0,174]: flow_out[Battery0,174]
   + 20 zwitch[Battery0,174] <= 20
 or_not_to_charge[Battery0,175]: flow_out[Battery0,175]
   + 20 zwitch[Battery0,175] <= 20
 or_not_to_charge[Battery0,176]: flow_out[Battery0,176]
   + 20 zwitch[Battery0,176] <= 20
 or_not_to_charge[Battery0,177]: flow_out[Battery0,177]
   + 20 zwitch[Battery0,177] <= 20
 or_not_to_charge[Battery0,178]: flow_out[Battery0,178]
   + 20 zwitch[Battery0,178] <= 20
 or_not_to_charge[Battery0,179]: flow_out[Battery0,179]
   + 20 zwitch[Battery0,179] <= 20
 or_not_to_charge[Battery1,0]: flow_out[Battery1,0] + 20 zwitch[Battery1,0]
   <= 20
 or_not_to_charge[Battery1,1]: flow_out[Battery1,1] + 20 zwitch[Battery1,1]
   <= 20
 or_not_to_charge[Battery1,2]: flow_out[Battery1,2] + 20 zwitch[Battery1,2]
   <= 20
 or_not_to_charge[Battery1,3]: flow_out[Battery1,3] + 20 zwitch[Battery1,3]
   <= 20
 or_not_to_charge[Battery1,4]: flow_out[Battery1,4] + 20 zwitch[Battery1,4]
   <= 20
 or_not_to_charge[Battery1,5]: flow_out[Battery1,5] + 20 zwitch[Battery1,5]
   <= 20
 or_not_to_charge[Battery1,6]: flow_out[Battery1,6] + 20 zwitch[Battery1,6]
   <= 20
 or_not_to_charge[Battery1,7]: flow_out[Battery1,7] + 20 zwitch[Battery1,7]
   <= 20
 or_not_to_charge[Battery1,8]: flow_out[Battery1,8] + 20 zwitch[Battery1,8]
   <= 20
 or_not_to_charge[Battery1,9]: flow_out[Battery1,9] + 20 zwitch[Battery1,9]
   <= 20
 or_not_to_charge[Battery1,10]: flow_out[Battery1,10]
   + 20 zwitch[Battery1,10] <= 20
 or_not_to_charge[Battery1,11]: flow_out[Battery1,11]
   + 20 zwitch[Battery1,11] <= 20
 or_not_to_charge[Battery1,12]: flow_out[Battery1,12]
   + 20 zwitch[Battery1,12] <= 20
 or_not_to_charge[Battery1,13]: flow_out[Battery1,13]
   + 20 zwitch[Battery1,13] <= 20
 or_not_to_charge[Battery1,14]: flow_out[Battery1,14]
   + 20 zwitch[Battery1,14] <= 20
 or_not_to_charge[Battery1,15]: flow_out[Battery1,15]
   + 20 zwitch[Battery1,15] <= 20
 or_not_to_charge[Battery1,16]: flow_out[Battery1,16]
   + 20 zwitch[Battery1,16] <= 20
 or_not_to_charge[Battery1,17]: flow_out[Battery1,17]
   + 20 zwitch[Battery1,17] <= 20
 or_not_to_charge[Battery1,18]: flow_out[Battery1,18]
   + 20 zwitch[Battery1,18] <= 20
 or_not_to_charge[Battery1,19]: flow_out[Battery1,19]
   + 20 zwitch[Battery1,19] <= 20
 or_not_to_charge[Battery1,20]: flow_out[Battery1,20]
   + 20 zwitch[Battery1,20] <= 20
 or_not_to_charge[Battery1,21]: flow_out[Battery1,21]
   + 20 zwitch[Battery1,21] <= 20
 or_not_to_charge[Battery1,22]: flow_out[Battery1,22]
   + 20 zwitch[Battery1,22] <= 20
 or_not_to_charge[Battery1,23]: flow_out[Battery1,23]
   + 20 zwitch[Battery1,23] <= 20
 or_not_to_charge[Battery1,24]: flow_out[Battery1,24]
   + 20 zwitch[Battery1,24] <= 20
 or_not_to_charge[Battery1,25]: flow_out[Battery1,25]
   + 20 zwitch[Battery1,25] <= 20
 or_not_to_charge[Battery1,26]: flow_out[Battery1,26]
   + 20 zwitch[Battery1,26] <= 20
 or_not_to_charge[Battery1,27]: flow_out[Battery1,27]
   + 20 zwitch[Battery1,27] <= 20
 or_not_to_charge[Battery1,28]: flow_out[Battery1,28]
   + 20 zwitch[Battery1,28] <= 20
 or_not_to_charge[Battery1,29]: flow_out[Battery1,29]
   + 20 zwitch[Battery1,29] <= 20
 or_not_to_charge[Battery1,30]: flow_out[Battery1,30]
   + 20 zwitch[Battery1,30] <= 20
 or_not_to_charge[Battery1,31]: flow_out[Battery1,31]
   + 20 zwitch[Battery1,31] <= 20
 or_not_to_charge[Battery1,32]: flow_out[Battery1,32]
   + 20 zwitch[Battery1,32] <= 20
 or_not_to_charge[Battery1,33]: flow_out[Battery1,33]
   + 20 zwitch[Battery1,33] <= 20
 or_not_to_charge[Battery1,34]: flow_out[Battery1,34]
   + 20 zwitch[Battery1,34] <= 20
 or_not_to_charge[Battery1,35]: flow_out[Battery1,35]
   + 20 zwitch[Battery1,35] <= 20
 or_not_to_charge[Battery1,36]: flow_out[Battery1,36]
   + 20 zwitch[Battery1,36] <= 20
 or_not_to_charge[Battery1,37]: flow_out[Battery1,37]
   + 20 zwitch[Battery1,37] <= 20
 or_not_to_charge[Battery1,38]: flow_out[Battery1,38]
   + 20 zwitch[Battery1,38] <= 20
 or_not_to_charge[Battery1,39]: flow_out[Battery1,39]
   + 20 zwitch[Battery1,39] <= 20
 or_not_to_charge[Battery1,40]: flow_out[Battery1,40]
   + 20 zwitch[Battery1,40] <= 20
 or_not_to_charge[Battery1,41]: flow_out[Battery1,41]
   + 20 zwitch[Battery1,41] <= 20
 or_not_to_charge[Battery1,42]: flow_out[Battery1,42]
   + 20 zwitch[Battery1,42] <= 20
 or_not_to_charge[Battery1,43]: flow_out[Battery1,43]
   + 20 zwitch[Battery1,43] <= 20
 or_not_to_charge[Battery1,44]: flow_out[Battery1,44]
   + 20 zwitch[Battery1,44] <= 20
 or_not_to_charge[Battery1,45]: flow_out[Battery1,45]
   + 20 zwitch[Battery1,45] <= 20
 or_not_to_charge[Battery1,46]: flow_out[Battery1,46]
   + 20 zwitch[Battery1,46] <= 20
 or_not_to_charge[Battery1,47]: flow_out[Battery1,47]
   + 20 zwitch[Battery1,47] <= 20
 or_not_to_charge[Battery1,48]: flow_out[Battery1,48]
   + 20 zwitch[Battery1,48] <= 20
 or_not_to_charge[Battery1,49]: flow_out[Battery1,49]
   + 20 zwitch[Battery1,49] <= 20
 or_not_to_charge[Battery1,50]: flow_out[Battery1,50]
   + 20 zwitch[Battery1,50] <= 20
 or_not_to_charge[Battery1,51]: flow_out[Battery1,51]
   + 20 zwitch[Battery1,51] <= 20
 or_not_to_charge[Battery1,52]: flow_out[Battery1,52]
   + 20 zwitch[Battery1,52] <= 20
 or_not_to_charge[Battery1,53]: flow_out[Battery1,53]
   + 20 zwitch[Battery1,53] <= 20
 or_not_to_charge[Battery1,54]: flow_out[Battery1,54]
   + 20 zwitch[Battery1,54] <= 20
 or_not_to_charge[Battery1,55]: flow_out[Battery1,55]
   + 20 zwitch[Battery1,55] <= 20
 or_not_to_charge[Battery1,56]: flow_out[Battery1,56]
   + 20 zwitch[Battery1,56] <= 20
 or_not_to_charge[Battery1,57]: flow_out[Battery1,57]
   + 20 zwitch[Battery1,57] <= 20
 or_not_to_charge[Battery1,58]: flow_out[Battery1,58]
   + 20 zwitch[Battery1,58] <= 20
 or_not_to_charge[Battery1,59]: flow_out[Battery1,59]
   + 20 zwitch[Battery1,59] <= 20
 or_not_to_charge[Battery1,60]: flow_out[Battery1,60]
   + 20 zwitch[Battery1,60] <= 20
 or_not_to_charge[Battery1,61]: flow_out[Battery1,61]
   + 20 zwitch[Battery1,61] <= 20
 or_not_to_charge[Battery1,62]: flow_out[Battery1,62]
   + 20 zwitch[Battery1,62] <= 20
 or_not_to_charge[Battery1,63]: flow_out[Battery1,63]
   + 20 zwitch[Battery1,63] <= 20
 or_not_to_charge[Battery1,64]: flow_out[Battery1,64]
   + 20 zwitch[Battery1,64] <= 20
 or_not_to_charge[Battery1,65]: flow_out[Battery1,65]
   + 20 zwitch[Battery1,65] <= 20
 or_not_to_charge[Battery1,66]: flow_out[Battery1,66]
   + 20 zwitch[Battery1,66] <= 20
 or_not_to_charge[Battery1,67]: flow_out[Battery1,67]
   + 20 zwitch[Battery1,67] <= 20
 or_not_to_charge[Battery1,68]: flow_out[Battery1,68]
   + 20 zwitch[Battery1,68] <= 20
 or_not_to_charge[Battery1,69]: flow_out[Battery1,69]
   + 20 zwitch[Battery1,69] <= 20
 or_not_to_charge[Battery1,70]: flow_out[Battery1,70]
   + 20 zwitch[Battery1,70] <= 20
 or_not_to_charge[Battery1,71]: flow_out[Battery1,71]
   + 20 zwitch[Battery1,71] <= 20
 or_not_to_charge[Battery1,72]: flow_out[Battery1,72]
   + 20 zwitch[Battery1,72] <= 20
 or_not_to_charge[Battery1,73]: flow_out[Battery1,73]
   + 20 zwitch[Battery1,73] <= 20
 or_not_to_charge[Battery1,74]: flow_out[Battery1,74]
   + 20 zwitch[Battery1,74] <= 20
 or_not_to_charge[Battery1,75]: flow_out[Battery1,75]
   + 20 zwitch[Battery1,75] <= 20
 or_not_to_charge[Battery1,76]: flow_out[Battery1,76]
   + 20 zwitch[Battery1,76] <= 20
 or_not_to_charge[Battery1,77]: flow_out[Battery1,77]
   + 20 zwitch[Battery1,77] <= 20
 or_not_to_charge[Battery1,78]: flow_out[Battery1,78]
   + 20 zwitch[Battery1,78] <= 20
 or_not_to_charge[Battery1,79]: flow_out[Battery1,79]
   + 20 zwitch[Battery1,79] <= 20
 or_not_to_charge[Battery1,80]: flow_out[Battery1,80]
   + 20 zwitch[Battery1,80] <= 20
 or_not_to_charge[Battery1,81]: flow_out[Battery1,81]
   + 20 zwitch[Battery1,81] <= 20
 or_not_to_charge[Battery1,82]: flow_out[Battery1,82]
   + 20 zwitch[Battery1,82] <= 20
 or_not_to_charge[Battery1,83]: flow_out[Battery1,83]
   + 20 zwitch[Battery1,83] <= 20
 or_not_to_charge[Battery1,84]: flow_out[Battery1,84]
   + 20 zwitch[Battery1,84] <= 20
 or_not_to_charge[Battery1,85]: flow_out[Battery1,85]
   + 20 zwitch[Battery1,85] <= 20
 or_not_to_charge[Battery1,86]: flow_out[Battery1,86]
   + 20 zwitch[Battery1,86] <= 20
 or_not_to_charge[Battery1,87]: flow_out[Battery1,87]
   + 20 zwitch[Battery1,87] <= 20
 or_not_to_charge[Battery1,88]: flow_out[Battery1,88]
   + 20 zwitch[Battery1,88] <= 20
 or_not_to_charge[Battery1,89]: flow_out[Battery1,89]
   + 20 zwitch[Battery1,89] <= 20
 or_not_to_charge[Battery1,90]: flow_out[Battery1,90]
   + 20 zwitch[Battery1,90] <= 20
 or_not_to_charge[Battery1,91]: flow_out[Battery1,91]
   + 20 zwitch[Battery1,91] <= 20
 or_not_to_charge[Battery1,92]: flow_out[Battery1,92]
   + 20 zwitch[Battery1,92] <= 20
 or_not_to_charge[Battery1,93]: flow_out[Battery1,93]
   + 20 zwitch[Battery1,93] <= 20
 or_not_to_charge[Battery1,94]: flow_out[Battery1,94]
   + 20 zwitch[Battery1,94] <= 20
 or_not_to_charge[Battery1,95]: flow_out[Battery1,95]
   + 20 zwitch[Battery1,95] <= 20
 or_not_to_charge[Battery1,96]: flow_out[Battery1,96]
   + 20 zwitch[Battery1,96] <= 20
 or_not_to_charge[Battery1,97]: flow_out[Battery1,97]
   + 20 zwitch[Battery1,97] <= 20
 or_not_to_charge[Battery1,98]: flow_out[Battery1,98]
   + 20 zwitch[Battery1,98] <= 20
 or_not_to_charge[Battery1,99]: flow_out[Battery1,99]
   + 20 zwitch[Battery1,99] <= 20
 or_not_to_charge[Battery1,100]: flow_out[Battery1,100]
   + 20 zwitch[Battery1,100] <= 20
 or_not_to_charge[Battery1,101]: flow_out[Battery1,101]
   + 20 zwitch[Battery1,101] <= 20
 or_not_to_charge[Battery1,102]: flow_out[Battery1,102]
   + 20 zwitch[Battery1,102] <= 20
 or_not_to_charge[Battery1,103]: flow_out[Battery1,103]
   + 20 zwitch[Battery1,103] <= 20
 or_not_to_charge[Battery1,104]: flow_out[Battery1,104]
   + 20 zwitch[Battery1,104] <= 20
 or_not_to_charge[Battery1,105]: flow_out[Battery1,105]
   + 20 zwitch[Battery1,105] <= 20
 or_not_to_charge[Battery1,106]: flow_out[Battery1,106]
   + 20 zwitch[Battery1,106] <= 20
 or_not_to_charge[Battery1,107]: flow_out[Battery1,107]
   + 20 zwitch[Battery1,107] <= 20
 or_not_to_charge[Battery1,108]: flow_out[Battery1,108]
   + 20 zwitch[Battery1,108] <= 20
 or_not_to_charge[Battery1,109]: flow_out[Battery1,109]
   + 20 zwitch[Battery1,109] <= 20
 or_not_to_charge[Battery1,110]: flow_out[Battery1,110]
   + 20 zwitch[Battery1,110] <= 20
 or_not_to_charge[Battery1,111]: flow_out[Battery1,111]
   + 20 zwitch[Battery1,111] <= 20
 or_not_to_charge[Battery1,112]: flow_out[Battery1,112]
   + 20 zwitch[Battery1,112] <= 20
 or_not_to_charge[Battery1,113]: flow_out[Battery1,113]
   + 20 zwitch[Battery1,113] <= 20
 or_not_to_charge[Battery1,114]: flow_out[Battery1,114]
   + 20 zwitch[Battery1,114] <= 20
 or_not_to_charge[Battery1,115]: flow_out[Battery1,115]
   + 20 zwitch[Battery1,115] <= 20
 or_not_to_charge[Battery1,116]: flow_out[Battery1,116]
   + 20 zwitch[Battery1,116] <= 20
 or_not_to_charge[Battery1,117]: flow_out[Battery1,117]
   + 20 zwitch[Battery1,117] <= 20
 or_not_to_charge[Battery1,118]: flow_out[Battery1,118]
   + 20 zwitch[Battery1,118] <= 20
 or_not_to_charge[Battery1,119]: flow_out[Battery1,119]
   + 20 zwitch[Battery1,119] <= 20
 or_not_to_charge[Battery1,120]: flow_out[Battery1,120]
   + 20 zwitch[Battery1,120] <= 20
 or_not_to_charge[Battery1,121]: flow_out[Battery1,121]
   + 20 zwitch[Battery1,121] <= 20
 or_not_to_charge[Battery1,122]: flow_out[Battery1,122]
   + 20 zwitch[Battery1,122] <= 20
 or_not_to_charge[Battery1,123]: flow_out[Battery1,123]
   + 20 zwitch[Battery1,123] <= 20
 or_not_to_charge[Battery1,124]: flow_out[Battery1,124]
   + 20 zwitch[Battery1,124] <= 20
 or_not_to_charge[Battery1,125]: flow_out[Battery1,125]
   + 20 zwitch[Battery1,125] <= 20
 or_not_to_charge[Battery1,126]: flow_out[Battery1,126]
   + 20 zwitch[Battery1,126] <= 20
 or_not_to_charge[Battery1,127]: flow_out[Battery1,127]
   + 20 zwitch[Battery1,127] <= 20
 or_not_to_charge[Battery1,128]: flow_out[Battery1,128]
   + 20 zwitch[Battery1,128] <= 20
 or_not_to_charge[Battery1,129]: flow_out[Battery1,129]
   + 20 zwitch[Battery1,129] <= 20
 or_not_to_charge[Battery1,130]: flow_out[Battery1,130]
   + 20 zwitch[Battery1,130] <= 20
 or_not_to_charge[Battery1,131]: flow_out[Battery1,131]
   + 20 zwitch[Battery1,131] <= 20
 or_not_to_charge[Battery1,132]: flow_out[Battery1,132]
   + 20 zwitch[Battery1,132] <= 20
 or_not_to_charge[Battery1,133]: flow_out[Battery1,133]
   + 20 zwitch[Battery1,133] <= 20
 or_not_to_charge[Battery1,134]: flow_out[Battery1,134]
   + 20 zwitch[Battery1,134] <= 20
 or_not_to_charge[Battery1,135]: flow_out[Battery1,135]
   + 20 zwitch[Battery1,135] <= 20
 or_not_to_charge[Battery1,136]: flow_out[Battery1,136]
   + 20 zwitch[Battery1,136] <= 20
 or_not_to_charge[Battery1,137]: flow_out[Battery1,137]
   + 20 zwitch[Battery1,137] <= 20
 or_not_to_charge[Battery1,138]: flow_out[Battery1,138]
   + 20 zwitch[Battery1,138] <= 20
 or_not_to_charge[Battery1,139]: flow_out[Battery1,139]
   + 20 zwitch[Battery1,139] <= 20
 or_not_to_charge[Battery1,140]: flow_out[Battery1,140]
   + 20 zwitch[Battery1,140] <= 20
 or_not_to_charge[Battery1,141]: flow_out[Battery1,141]
   + 20 zwitch[Battery1,141] <= 20
 or_not_to_charge[Battery1,142]: flow_out[Battery1,142]
   + 20 zwitch[Battery1,142] <= 20
 or_not_to_charge[Battery1,143]: flow_out[Battery1,143]
   + 20 zwitch[Battery1,143] <= 20
 or_not_to_charge[Battery1,144]: flow_out[Battery1,144]
   + 20 zwitch[Battery1,144] <= 20
 or_not_to_charge[Battery1,145]: flow_out[Battery1,145]
   + 20 zwitch[Battery1,145] <= 20
 or_not_to_charge[Battery1,146]: flow_out[Battery1,146]
   + 20 zwitch[Battery1,146] <= 20
 or_not_to_charge[Battery1,147]: flow_out[Battery1,147]
   + 20 zwitch[Battery1,147] <= 20
 or_not_to_charge[Battery1,148]: flow_out[Battery1,148]
   + 20 zwitch[Battery1,148] <= 20
 or_not_to_charge[Battery1,149]: flow_out[Battery1,149]
   + 20 zwitch[Battery1,149] <= 20
 or_not_to_charge[Battery1,150]: flow_out[Battery1,150]
   + 20 zwitch[Battery1,150] <= 20
 or_not_to_charge[Battery1,151]: flow_out[Battery1,151]
   + 20 zwitch[Battery1,151] <= 20
 or_not_to_charge[Battery1,152]: flow_out[Battery1,152]
   + 20 zwitch[Battery1,152] <= 20
 or_not_to_charge[Battery1,153]: flow_out[Battery1,153]
   + 20 zwitch[Battery1,153] <= 20
 or_not_to_charge[Battery1,154]: flow_out[Battery1,154]
   + 20 zwitch[Battery1,154] <= 20
 or_not_to_charge[Battery1,155]: flow_out[Battery1,155]
   + 20 zwitch[Battery1,155] <= 20
 or_not_to_charge[Battery1,156]: flow_out[Battery1,156]
   + 20 zwitch[Battery1,156] <= 20
 or_not_to_charge[Battery1,157]: flow_out[Battery1,157]
   + 20 zwitch[Battery1,157] <= 20
 or_not_to_charge[Battery1,158]: flow_out[Battery1,158]
   + 20 zwitch[Battery1,158] <= 20
 or_not_to_charge[Battery1,159]: flow_out[Battery1,159]
   + 20 zwitch[Battery1,159] <= 20
 or_not_to_charge[Battery1,160]: flow_out[Battery1,160]
   + 20 zwitch[Battery1,160] <= 20
 or_not_to_charge[Battery1,161]: flow_out[Battery1,161]
   + 20 zwitch[Battery1,161] <= 20
 or_not_to_charge[Battery1,162]: flow_out[Battery1,162]
   + 20 zwitch[Battery1,162] <= 20
 or_not_to_charge[Battery1,163]: flow_out[Battery1,163]
   + 20 zwitch[Battery1,163] <= 20
 or_not_to_charge[Battery1,164]: flow_out[Battery1,164]
   + 20 zwitch[Battery1,164] <= 20
 or_not_to_charge[Battery1,165]: flow_out[Battery1,165]
   + 20 zwitch[Battery1,165] <= 20
 or_not_to_charge[Battery1,166]: flow_out[Battery1,166]
   + 20 zwitch[Battery1,166] <= 20
 or_not_to_charge[Battery1,167]: flow_out[Battery1,167]
   + 20 zwitch[Battery1,167] <= 20
 or_not_to_charge[Battery1,168]: flow_out[Battery1,168]
   + 20 zwitch[Battery1,168] <= 20
 or_not_to_charge[Battery1,169]: flow_out[Battery1,169]
   + 20 zwitch[Battery1,169] <= 20
 or_not_to_charge[Battery1,170]: flow_out[Battery1,170]
   + 20 zwitch[Battery1,170] <= 20
 or_not_to_charge[Battery1,171]: flow_out[Battery1,171]
   + 20 zwitch[Battery1,171] <= 20
 or_not_to_charge[Battery1,172]: flow_out[Battery1,172]
   + 20 zwitch[Battery1,172] <= 20
 or_not_to_charge[Battery1,173]: flow_out[Battery1,173]
   + 20 zwitch[Battery1,173] <= 20
 or_not_to_charge[Battery1,174]: flow_out[Battery1,174]
   + 20 zwitch[Battery1,174] <= 20
 or_not_to_charge[Battery1,175]: flow_out[Battery1,175]
   + 20 zwitch[Battery1,175] <= 20
 or_not_to_charge[Battery1,176]: flow_out[Battery1,176]
   + 20 zwitch[Battery1,176] <= 20
 or_not_to_charge[Battery1,177]: flow_out[Battery1,177]
   + 20 zwitch[Battery1,177] <= 20
 or_not_to_charge[Battery1,178]: flow_out[Battery1,178]
   + 20 zwitch[Battery1,178] <= 20
 or_not_to_charge[Battery1,179]: flow_out[Battery1,179]
   + 20 zwitch[Battery1,179] <= 20
Bounds
 state[Battery0,0] <= 60
 state[Battery0,1] <= 60
 state[Battery0,2] <= 60
 state[Battery0,3] <= 60
 state[Battery0,4] <= 60
 state[Battery0,5] <= 60
 state[Battery0,6] <= 60
 state[Battery0,7] <= 60
 state[Battery0,8] <= 60
 state[Battery0,9] <= 60
 state[Battery0,10] <= 60
 state[Battery0,11] <= 60
 state[Battery0,12] <= 60
 state[Battery0,13] <= 60
 state[Battery0,14] <= 60
 state[Battery0,15] <= 60
 state[Battery0,16] <= 60
 state[Battery0,17] <= 60
 state[Battery0,18] <= 60
 state[Battery0,19] <= 60
 state[Battery0,20] <= 60
 state[Battery0,21] <= 60
 state[Battery0,22] <= 60
 state[Battery0,23] <= 60
 state[Battery0,24] <= 60
 state[Battery0,25] <= 60
 state[Battery0,26] <= 60
 state[Battery0,27] <= 60
 state[Battery0,28] <= 60
 state[Battery0,29] <= 60
 state[Battery0,30] <= 60
 state[Battery0,31] <= 60
 state[Battery0,32] <= 60
 state[Battery0,33] <= 60
 state[Battery0,34] <= 60
 state[Battery0,35] <= 60
 state[Battery0,36] <= 60
 state[Battery0,37] <= 60
 state[Battery0,38] <= 60
 state[Battery0,39] <= 60
 state[Battery0,40] <= 60
 state[Battery0,41] <= 60
 state[Battery0,42] <= 60
 state[Battery0,43] <= 60
 state[Battery0,44] <= 60
 state[Battery0,45] <= 60
 state[Battery0,46] <= 60
 state[Battery0,47] <= 60
 state[Battery0,48] <= 60
 state[Battery0,49] <= 60
 state[Battery0,50] <= 60
 state[Battery0,51] <= 60
 state[Battery0,52] <= 60
 state[Battery0,53] <= 60
 state[Battery0,54] <= 60
 state[Battery0,55] <= 60
 state[Battery0,56] <= 60
 state[Battery0,57] <= 60
 state[Battery0,58] <= 60
 state[Battery0,59] <= 60
 state[Battery0,60] <= 60
 state[Battery0,61] <= 60
 state[Battery0,62] <= 60
 state[Battery0,63] <= 60
 state[Battery0,64] <= 60
 state[Battery0,65] <= 60
 state[Battery0,66] <= 60
 state[Battery0,67] <= 60
 state[Battery0,68] <= 60
 state[Battery0,69] <= 60
 state[Battery0,70] <= 60
 state[Battery0,71] <= 60
 state[Battery0,72] <= 60
 state[Battery0,73] <= 60
 state[Battery0,74] <= 60
 state[Battery0,75] <= 60
 state[Battery0,76] <= 60
 state[Battery0,77] <= 60
 state[Battery0,78] <= 60
 state[Battery0,79] <= 60
 state[Battery0,80] <= 60
 state[Battery0,81] <= 60
 state[Battery0,82] <= 60
 state[Battery0,83] <= 60
 state[Battery0,84] <= 60
 state[Battery0,85] <= 60
 state[Battery0,86] <= 60
 state[Battery0,87] <= 60
 state[Battery0,88] <= 60
 state[Battery0,89] <= 60
 state[Battery0,90] <= 60
 state[Battery0,91] <= 60
 state[Battery0,92] <= 60
 state[Battery0,93] <= 60
 state[Battery0,94] <= 60
 state[Battery0,95] <= 60
 state[Battery0,96] <= 60
 state[Battery0,97] <= 60
 state[Battery0,98] <= 60
 state[Battery0,99] <= 60
 state[Battery0,100] <= 60
 state[Battery0,101] <= 60
 state[Battery0,102] <= 60
 state[Battery0,103] <= 60
 state[Battery0,104] <= 60
 state[Battery0,105] <= 60
 state[Battery0,106] <= 60
 state[Battery0,107] <= 60
 state[Battery0,108] <= 60
 state[Battery0,109] <= 60
 state[Battery0,110] <= 60
 state[Battery0,111] <= 60
 state[Battery0,112] <= 60
 state[Battery0,113] <= 60
 state[Battery0,114] <= 60
 state[Battery0,115] <= 60
 state[Battery0,116] <= 60
 state[Battery0,117] <= 60
 state[Battery0,118] <= 60
 state[Battery0,119] <= 60
 state[Battery0,120] <= 60
 state[Battery0,121] <= 60
 state[Battery0,122] <= 60
 state[Battery0,123] <= 60
 state[Battery0,124] <= 60
 state[Battery0,125] <= 60
 state[Battery0,126] <= 60
 state[Battery0,127] <= 60
 state[Battery0,128] <= 60
 state[Battery0,129] <= 60
 state[Battery0,130] <= 60
 state[Battery0,131] <= 60
 state[Battery0,132] <= 60
 state[Battery0,133] <= 60
 state[Battery0,134] <= 60
 state[Battery0,135] <= 60
 state[Battery0,136] <= 60
 state[Battery0,137] <= 60
 state[Battery0,138] <= 60
 state[Battery0,139] <= 60
 state[Battery0,140] <= 60
 state[Battery0,141] <= 60
 state[Battery0,142] <= 60
 state[Battery0,143] <= 60
 state[Battery0,144] <= 60
 state[Battery0,145] <= 60
 state[Battery0,146] <= 60
 state[Battery0,147] <= 60
 state[Battery0,148] <= 60
 state[Battery0,149] <= 60
 state[Battery0,150] <= 60
 state[Battery0,151] <= 60
 state[Battery0,152] <= 60
 state[Battery0,153] <= 60
 state[Battery0,154] <= 60
 state[Battery0,155] <= 60
 state[Battery0,156] <= 60
 state[Battery0,157] <= 60
 state[Battery0,158] <= 60
 state[Battery0,159] <= 60
 state[Battery0,160] <= 60
 state[Battery0,161] <= 60
 state[Battery0,162] <= 60
 state[Battery0,163] <= 60
 state[Battery0,164] <= 60
 state[Battery0,165] <= 60
 state[Battery0,166] <= 60
 state[Battery0,167] <= 60
 state[Battery0,168] <= 60
 state[Battery0,169] <= 60
 state[Battery0,170] <= 60
 state[Battery0,171] <= 60
 state[Battery0,172] <= 60
 state[Battery0,173] <= 60
 state[Battery0,174] <= 60
 state[Battery0,175] <= 60
 state[Battery0,176] <= 60
 state[Battery0,177] <= 60
 state[Battery0,178] <= 60
 state[Battery0,179] <= 60
 state[Battery1,0] <= 80
 state[Battery1,1] <= 80
 state[Battery1,2] <= 80
 state[Battery1,3] <= 80
 state[Battery1,4] <= 80
 state[Battery1,5] <= 80
 state[Battery1,6] <= 80
 state[Battery1,7] <= 80
 state[Battery1,8] <= 80
 state[Battery1,9] <= 80
 state[Battery1,10] <= 80
 state[Battery1,11] <= 80
 state[Battery1,12] <= 80
 state[Battery1,13] <= 80
 state[Battery1,14] <= 80
 state[Battery1,15] <= 80
 state[Battery1,16] <= 80
 state[Battery1,17] <= 80
 state[Battery1,18] <= 80
 state[Battery1,19] <= 80
 state[Battery1,20] <= 80
 state[Battery1,21] <= 80
 state[Battery1,22] <= 80
 state[Battery1,23] <= 80
 state[Battery1,24] <= 80
 state[Battery1,25] <= 80
 state[Battery1,26] <= 80
 state[Battery1,27] <= 80
 state[Battery1,28] <= 80
 state[Battery1,29] <= 80
 state[Battery1,30] <= 80
 state[Battery1,31] <= 80
 state[Battery1,32] <= 80
 state[Battery1,33] <= 80
 state[Battery1,34] <= 80
 state[Battery1,35] <= 80
 state[Battery1,36] <= 80
 state[Battery1,37] <= 80
 state[Battery1,38] <= 80
 state[Battery1,39] <= 80
 state[Battery1,40] <= 80
 state[Battery1,41] <= 80
 state[Battery1,42] <= 80
 state[Battery1,43] <= 80
 state[Battery1,44] <= 80
 state[Battery1,45] <= 80
 state[Battery1,46] <= 80
 state[Battery1,47] <= 80
 state[Battery1,48] <= 80
 state[Battery1,49] <= 80
 state[Battery1,50] <= 80
 state[Battery1,51] <= 80
 state[Battery1,52] <= 80
 state[Battery1,53] <= 80
 state[Battery1,54] <= 80
 state[Battery1,55] <= 80
 state[Battery1,56] <= 80
 state[Battery1,57] <= 80
 state[Battery1,58] <= 80
 state[Battery1,59] <= 80
 state[Battery1,60] <= 80
 state[Battery1,61] <= 80
 state[Battery1,62] <= 80
 state[Battery1,63] <= 80
 state[Battery1,64] <= 80
 state[Battery1,65] <= 80
 state[Battery1,66] <= 80
 state[Battery1,67] <= 80
 state[Battery1,68] <= 80
 state[Battery1,69] <= 80
 state[Battery1,70] <= 80
 state[Battery1,71] <= 80
 state[Battery1,72] <= 80
 state[Battery1,73] <= 80
 state[Battery1,74] <= 80
 state[Battery1,75] <= 80
 state[Battery1,76] <= 80
 state[Battery1,77] <= 80
 state[Battery1,78] <= 80
 state[Battery1,79] <= 80
 state[Battery1,80] <= 80
 state[Battery1,81] <= 80
 state[Battery1,82] <= 80
 state[Battery1,83] <= 80
 state[Battery1,84] <= 80
 state[Battery1,85] <= 80
 state[Battery1,86] <= 80
 state[Battery1,87] <= 80
 state[Battery1,88] <= 80
 state[Battery1,89] <= 80
 state[Battery1,90] <= 80
 state[Battery1,91] <= 80
 state[Battery1,92] <= 80
 state[Battery1,93] <= 80
 state[Battery1,94] <= 80
 state[Battery1,95] <= 80
 state[Battery1,96] <= 80
 state[Battery1,97] <= 80
 state[Battery1,98] <= 80
 state[Battery1,99] <= 80
 state[Battery1,100] <= 80
 state[Battery1,101] <= 80
 state[Battery1,102] <= 80
 state[Battery1,103] <= 80
 state[Battery1,104] <= 80
 state[Battery1,105] <= 80
 state[Battery1,106] <= 80
 state[Battery1,107] <= 80
 state[Battery1,108] <= 80
 state[Battery1,109] <= 80
 state[Battery1,110] <= 80
 state[Battery1,111] <= 80
 state[Battery1,112] <= 80
 state[Battery1,113] <= 80
 state[Battery1,114] <= 80
 state[Battery1,115] <= 80
 state[Battery1,116] <= 80
 state[Battery1,117] <= 80
 state[Battery1,118] <= 80
 state[Battery1,119] <= 80
 state[Battery1,120] <= 80
 state[Battery1,121] <= 80
 state[Battery1,122] <= 80
 state[Battery1,123] <= 80
 state[Battery1,124] <= 80
 state[Battery1,125] <= 80
 state[Battery1,126] <= 80
 state[Battery1,127] <= 80
 state[Battery1,128] <= 80
 state[Battery1,129] <= 80
 state[Battery1,130] <= 80
 state[Battery1,131] <= 80
 state[Battery1,132] <= 80
 state[Battery1,133] <= 80
 state[Battery1,134] <= 80
 state[Battery1,135] <= 80
 state[Battery1,136] <= 80
 state[Battery1,137] <= 80
 state[Battery1,138] <= 80
 state[Battery1,139] <= 80
 state[Battery1,140] <= 80
 state[Battery1,141] <= 80
 state[Battery1,142] <= 80
 state[Battery1,143] <= 80
 state[Battery1,144] <= 80
 state[Battery1,145] <= 80
 state[Battery1,146] <= 80
 state[Battery1,147] <= 80
 state[Battery1,148] <= 80
 state[Battery1,149] <= 80
 state[Battery1,150] <= 80
 state[Battery1,151] <= 80
 state[Battery1,152] <= 80
 state[Battery1,153] <= 80
 state[Battery1,154] <= 80
 state[Battery1,155] <= 80
 state[Battery1,156] <= 80
 state[Battery1,157] <= 80
 state[Battery1,158] <= 80
 state[Battery1,159] <= 80
 state[Battery1,160] <= 80
 state[Battery1,161] <= 80
 state[Battery1,162] <= 80
 state[Battery1,163] <= 80
 state[Battery1,164] <= 80
 state[Battery1,165] <= 80
 state[Battery1,166] <= 80
 state[Battery1,167] <= 80
 state[Battery1,168] <= 80
 state[Battery1,169] <= 80
 state[Battery1,170] <= 80
 state[Battery1,171] <= 80
 state[Battery1,172] <= 80
 state[Battery1,173] <= 80
 state[Battery1,174] <= 80
 state[Battery1,175] <= 80
 state[Battery1,176] <= 80
 state[Battery1,177] <= 80
 state[Battery1,178] <= 80
 state[Battery1,179] <= 80
Binaries
 zwitch[Battery0,0] zwitch[Battery0,1] zwitch[Battery0,2]
 zwitch[Battery0,3] zwitch[Battery0,4] zwitch[Battery0,5]
 zwitch[Battery0,6] zwitch[Battery0,7] zwitch[Battery0,8]
 zwitch[Battery0,9] zwitch[Battery0,10] zwitch[Battery0,11]
 zwitch[Battery0,12] zwitch[Battery0,13] zwitch[Battery0,14]
 zwitch[Battery0,15] zwitch[Battery0,16] zwitch[Battery0,17]
 zwitch[Battery0,18] zwitch[Battery0,19] zwitch[Battery0,20]
 zwitch[Battery0,21] zwitch[Battery0,22] zwitch[Battery0,23]
 zwitch[Battery0,24] zwitch[Battery0,25] zwitch[Battery0,26]
 zwitch[Battery0,27] zwitch[Battery0,28] zwitch[Battery0,29]
 zwitch[Battery0,30] zwitch[Battery0,31] zwitch[Battery0,32]
 zwitch[Battery0,33] zwitch[Battery0,34] zwitch[Battery0,35]
 zwitch[Battery0,36] zwitch[Battery0,37] zwitch[Battery0,38]
 zwitch[Battery0,39] zwitch[Battery0,40] zwitch[Battery0,41]
 zwitch[Battery0,42] zwitch[Battery0,43] zwitch[Battery0,44]
 zwitch[Battery0,45] zwitch[Battery0,46] zwitch[Battery0,47]
 zwitch[Battery0,48] zwitch[Battery0,49] zwitch[Battery0,50]
 zwitch[Battery0,51] zwitch[Battery0,52] zwitch[Battery0,53]
 zwitch[Battery0,54] zwitch[Battery0,55] zwitch[Battery0,56]
 zwitch[Battery0,57] zwitch[Battery0,58] zwitch[Battery0,59]
 zwitch[Battery0,60] zwitch[Battery0,61] zwitch[Battery0,62]
 zwitch[Battery0,63] zwitch[Battery0,64] zwitch[Battery0,65]
 zwitch[Battery0,66] zwitch[Battery0,67] zwitch[Battery0,68]
 zwitch[Battery0,69] zwitch[Battery0,70] zwitch[Battery0,71]
 zwitch[Battery0,72] zwitch[Battery0,73] zwitch[Battery0,74]
 zwitch[Battery0,75] zwitch[Battery0,76] zwitch[Battery0,77]
 zwitch[Battery0,78] zwitch[Battery0,79] zwitch[Battery0,80]
 zwitch[Battery0,81] zwitch[Battery0,82] zwitch[Battery0,83]
 zwitch[Battery0,84] zwitch[Battery0,85] zwitch[Battery0,86]
 zwitch[Battery0,87] zwitch[Battery0,88] zwitch[Battery0,89]
 zwitch[Battery0,90] zwitch[Battery0,91] zwitch[Battery0,92]
 zwitch[Battery0,93] zwitch[Battery0,94] zwitch[Battery0,95]
 zwitch[Battery0,96] zwitch[Battery0,97] zwitch[Battery0,98]
 zwitch[Battery0,99] zwitch[Battery0,100] zwitch[Battery0,101]
 zwitch[Battery0,102] zwitch[Battery0,103] zwitch[Battery0,104]
 zwitch[Battery0,105] zwitch[Battery0,106] zwitch[Battery0,107]
 zwitch[Battery0,108] zwitch[Battery0,109] zwitch[Battery0,110]
 zwitch[Battery0,111] zwitch[Battery0,112] zwitch[Battery0,113]
 zwitch[Battery0,114] zwitch[Battery0,115] zwitch[Battery0,116]
 zwitch[Battery0,117] zwitch[Battery0,118] zwitch[Battery0,119]
 zwitch[Battery0,120] zwitch[Battery0,121] zwitch[Battery0,122]
 zwitch[Battery0,123] zwitch[Battery0,124] zwitch[Battery0,125]
 zwitch[Battery0,126] zwitch[Battery0,127] zwitch[Battery0,128]
 zwitch[Battery0,129] zwitch[Battery0,130] zwitch[Battery0,131]
 zwitch[Battery0,132] zwitch[Battery0,133] zwitch[Battery0,134]
 zwitch[Battery0,135] zwitch[Battery0,136] zwitch[Battery0,137]
 zwitch[Battery0,138] zwitch[Battery0,139] zwitch[Battery0,140]
 zwitch[Battery0,141] zwitch[Battery0,142] zwitch[Battery0,143]
 zwitch[Battery0,144] zwitch[Battery0,145] zwitch[Battery0,146]
 zwitch[Battery0,147] zwitch[Battery0,148] zwitch[Battery0,149]
 zwitch[Battery0,150] zwitch[Battery0,151] zwitch[Battery0,152]
 zwitch[Battery0,153] zwitch[Battery0,154] zwitch[Battery0,155]
 zwitch[Battery0,156] zwitch[Battery0,157] zwitch[Battery0,158]
 zwitch[Battery0,159] zwitch[Battery0,160] zwitch[Battery0,161]
 zwitch[Battery0,162] zwitch[Battery0,163] zwitch[Battery0,164]
 zwitch[Battery0,165] zwitch[Battery0,166] zwitch[Battery0,167]
 zwitch[Battery0,168] zwitch[Battery0,169] zwitch[Battery0,170]
 zwitch[Battery0,171] zwitch[Battery0,172] zwitch[Battery0,173]
 zwitch[Battery0,174] zwitch[Battery0,175] zwitch[Battery0,176]
 zwitch[Battery0,177] zwitch[Battery0,178] zwitch[Battery0,179]
 zwitch[Battery1,0] zwitch[Battery1,1] zwitch[Battery1,2]
 zwitch[Battery1,3] zwitch[Battery1,4] zwitch[Battery1,5]
 zwitch[Battery1,6] zwitch[Battery1,7] zwitch[Battery1,8]
 zwitch[Battery1,9] zwitch[Battery1,10] zwitch[Battery1,11]
 zwitch[Battery1,12] zwitch[Battery1,13] zwitch[Battery1,14]
 zwitch[Battery1,15] zwitch[Battery1,16] zwitch[Battery1,17]
 zwitch[Battery1,18] zwitch[Battery1,19] zwitch[Battery1,20]
 zwitch[Battery1,21] zwitch[Battery1,22] zwitch[Battery1,23]
 zwitch[Battery1,24] zwitch[Battery1,25] zwitch[Battery1,26]
 zwitch[Battery1,27] zwitch[Battery1,28] zwitch[Battery1,29]
 zwitch[Battery1,30] zwitch[Battery1,31] zwitch[Battery1,32]
 zwitch[Battery1,33] zwitch[Battery1,34] zwitch[Battery1,35]
 zwitch[Battery1,36] zwitch[Battery1,37] zwitch[Battery1,38]
 zwitch[Battery1,39] zwitch[Battery1,40] zwitch[Battery1,41]
 zwitch[Battery1,42] zwitch[Battery1,43] zwitch[Battery1,44]
 zwitch[Battery1,45] zwitch[Battery1,46] zwitch[Battery1,47]
 zwitch[Battery1,48] zwitch[Battery1,49] zwitch[Battery1,50]
 zwitch[Battery1,51] zwitch[Battery1,52] zwitch[Battery1,53]
 zwitch[Battery1,54] zwitch[Battery1,55] zwitch[Battery1,56]
 zwitch[Battery1,57] zwitch[Battery1,58] zwitch[Battery1,59]
 zwitch[Battery1,60] zwitch[Battery1,61] zwitch[Battery1,62]
 zwitch[Battery1,63] zwitch[Battery1,64] zwitch[Battery1,65]
 zwitch[Battery1,66] zwitch[Battery1,67] zwitch[Battery1,68]
 zwitch[Battery1,69] zwitch[Battery1,70] zwitch[Battery1,71]
 zwitch[Battery1,72] zwitch[Battery1,73] zwitch[Battery1,74]
 zwitch[Battery1,75] zwitch[Battery1,76] zwitch[Battery1,77]
 zwitch[Battery1,78] zwitch[Battery1,79] zwitch[Battery1,80]
 zwitch[Battery1,81] zwitch[Battery1,82] zwitch[Battery1,83]
 zwitch[Battery1,84] zwitch[Battery1,85] zwitch[Battery1,86]
 zwitch[Battery1,87] zwitch[Battery1,88] zwitch[Battery1,89]
 zwitch[Battery1,90] zwitch[Battery1,91] zwitch[Battery1,92]
 zwitch[Battery1,93] zwitch[Battery1,94] zwitch[Battery1,95]
 zwitch[Battery1,96] zwitch[Battery1,97] zwitch[Battery1,98]
 zwitch[Battery1,99] zwitch[Battery1,100] zwitch[Battery1,101]
 zwitch[Battery1,102] zwitch[Battery1,103] zwitch[Battery1,104]
 zwitch[Battery1,105] zwitch[Battery1,106] zwitch[Battery1,107]
 zwitch[Battery1,108] zwitch[Battery1,109] zwitch[Battery1,110]
 zwitch[Battery1,111] zwitch[Battery1,112] zwitch[Battery1,113]
 zwitch[Battery1,114] zwitch[Battery1,115] zwitch[Battery1,116]
 zwitch[Battery1,117] zwitch[Battery1,118] zwitch[Battery1,119]
 zwitch[Battery1,120] zwitch[Battery1,121] zwitch[Battery1,122]
 zwitch[Battery1,123] zwitch[Battery1,124] zwitch[Battery1,125]
 zwitch[Battery1,126] zwitch[Battery1,127] zwitch[Battery1,128]
 zwitch[Battery1,129] zwitch[Battery1,130] zwitch[Battery1,131]
 zwitch[Battery1,132] zwitch[Battery1,133] zwitch[Battery1,134]
 zwitch[Battery1,135] zwitch[Battery1,136] zwitch[Battery1,137]
 zwitch[Battery1,138] zwitch[Battery1,139] zwitch[Battery1,140]
 zwitch[Battery1,141] zwitch[Battery1,142] zwitch[Battery1,143]
 zwitch[Battery1,144] zwitch[Battery1,145] zwitch[Battery1,146]
 zwitch[Battery1,147] zwitch[Battery1,148] zwitch[Battery1,149]
 zwitch[Battery1,150] zwitch[Battery1,151] zwitch[Battery1,152]
 zwitch[Battery1,153] zwitch[Battery1,154] zwitch[Battery1,155]
 zwitch[Battery1,156] zwitch[Battery1,157] zwitch[Battery1,158]
 zwitch[Battery1,159] zwitch[Battery1,160] zwitch[Battery1,161]
 zwitch[Battery1,162] zwitch[Battery1,163] zwitch[Battery1,164]
 zwitch[Battery1,165] zwitch[Battery1,166] zwitch[Battery1,167]
 zwitch[Battery1,168] zwitch[Battery1,169] zwitch[Battery1,170]
 zwitch[Battery1,171] zwitch[Battery1,172] zwitch[Battery1,173]
 zwitch[Battery1,174] zwitch[Battery1,175] zwitch[Battery1,176]
 zwitch[Battery1,177] zwitch[Battery1,178] zwitch[Battery1,179]
Scenario 0
Scenario 1
Minimize
 grid[0] 0.34
 grid[1] 0.47
 grid[2] 1.34
 grid[3] 1.03
 grid[4] 2.06
 grid[5] 0.45
 grid[6] 0.34
 grid[7] 0.32
 grid[8] 0.3
 grid[9] 0.28
 grid[10] 0.3
 grid[11] 0.42
 grid[12] 0.29
 grid[13] 0.28
 grid[14] 0.21
 grid[15] 0.28
 grid[16] 0.3
 grid[17] 0.23
 grid[18] 0.21
 grid[19] 0.21
 grid[20] 0.23
 grid[21] 0.36
 grid[22] 0.31
 grid[23] 0.3
 grid[24] 0.44
 grid[25] 0.39
 grid[26] 0.4
 grid[27] 0.36
 grid[28] 0.65
 grid[29] 0.4
 grid[30] 0.31
 grid[31] 0.45
 grid[32] 1.16
 grid[33] 1.26
 grid[34] 1.39
 grid[35] 0.53
 grid[36] 1.42
 grid[37] 1.07
 grid[38] 0.38
 grid[39] 0.4
 grid[40] 0.46
 grid[41] 0.36
 grid[42] 0.3
 grid[43] 0.38
 grid[44] 0.31
 grid[45] 0.4
 grid[46] 0.36
 grid[47] 0.41
 grid[48] 0.44
 grid[49] 0.36
 grid[50] 0.48
 grid[51] 0.35
 grid[52] 0.33
 grid[53] 0.33
 grid[54] 1.49
 grid[55] 1.8
 grid[56] 1.41
 grid[57] 2.13
 grid[58] 2.25
 grid[59] 1.25
 grid[60] 1.27
 grid[61] 1.99
 grid[62] 2.53
 grid[63] 2.51
 grid[64] 2.93
 grid[65] 1.09
 grid[66] 0.46
 grid[67] 1.54
 grid[68] 1.56
 grid[69] 1.05
 grid[70] 1.05
 grid[71] 0.79
 grid[72] 0.86
 grid[73] 1.55
 grid[74] 1.25
 grid[75] 1.62
 grid[76] 1.19
 grid[77] 1.73
 grid[78] 0.93
 grid[79] 0.5
 grid[80] 1.32
 grid[81] 1.37
 grid[82] 2.04
 grid[83] 1.23
 grid[84] 2.22
 grid[85] 1.06
 grid[86] 1.19
 grid[87] 1.43
 grid[88] 1.8
 grid[89] 0.44
 grid[90] 0.19
 grid[91] 0.29
 grid[92] 1.09
 grid[93] 0.32
 grid[94] 0.39
 grid[95] 0.37
 grid[96] 0.36
 grid[97] 0.3
 grid[98] 0.32
 grid[99] 0.24
 grid[100] 0.32
 grid[101] 0.27
 grid[102] 0.28
 grid[103] 0.21
 grid[104] 0.28
 grid[105] 0.32
 grid[106] 0.36
 grid[107] 0.28
 grid[108] 0.29
 grid[109] 0.2
 grid[110] 0.32
 grid[111] 0.29
 grid[112] 0.31
 grid[113] 0.37
 grid[114] 1.09
 grid[115] 0.37
 grid[116] 0.41
 grid[117] 0.84
 grid[118] 1.83
 grid[119] 1.01
 grid[120] 0.25
 grid[121] 0.32
 grid[122] 0.25
 grid[123] 0.34
 grid[124] 0.41
 grid[125] 0.49
 grid[126] 0.37
 grid[127] 0.34
 grid[128] 0.33
 grid[129] 0.28
 grid[130] 0.24
 grid[131] 0.19
 grid[132] 0.14
 grid[133] 0.13
 grid[134] 0.12
 grid[135] 0.16
 grid[136] 0.14
 grid[137] 0.21
 grid[138] 0.16
 grid[139] 0.27
 grid[140] 0.23
 grid[141] 0.27
 grid[142] 0.21
 grid[143] 0.46
 grid[144] 0.86
 grid[145] 0.37
 grid[146] 1.07
 grid[147] 1.51
 grid[148] 1.43
 grid[149] 1.14
 grid[150] 0.16
 grid[151] 0.19
 grid[152] 0.19
 grid[153] 0.22
 grid[154] 0.28
 grid[155] 0.17
 grid[156] 0.24
 grid[157] 0.28
 grid[158] 0.22
 grid[159] 0.18
 grid[160] 0.11
 grid[161] 0.11
 grid[162] 0.15
 grid[163] 0.08
 grid[164] 0.07
 grid[165] 0.06
 grid[166] 0.1
 grid[167] 0.08
 grid[168] 0.09
 grid[169] 0.17
 grid[170] 0.22
 grid[171] 0.2
 grid[172] 0.26
 grid[173] 0.29
 grid[174] 0.31
 grid[175] 0.43
 grid[176] 0.44
 grid[177] 0.49
 grid[178] 1.35
 grid[179] 0.42
Scenario 2
Minimize
 state[Battery0,0] 40
 state[Battery0,1] 40
 state[Battery0,2] 40
 state[Battery0,3] 40
 state[Battery0,4] 40
 state[Battery0,5] 40
 state[Battery0,6] 40
 state[Battery0,7] 40
 state[Battery0,8] 40
 state[Battery0,9] 40
 state[Battery0,10] 40
 state[Battery0,11] 40
 state[Battery0,12] 40
 state[Battery0,13] 40
 state[Battery0,14] 40
 state[Battery0,15] 40
 state[Battery0,16] 40
 state[Battery0,17] 40
 state[Battery0,18] 40
 state[Battery0,19] 40
 state[Battery0,20] 40
 state[Battery0,21] 40
 state[Battery0,22] 40
 state[Battery0,23] 40
 state[Battery0,24] 40
 state[Battery0,25] 40
 state[Battery0,26] 40
 state[Battery0,27] 40
 state[Battery0,28] 40
 state[Battery0,29] 40
 state[Battery0,30] 40
 state[Battery0,31] 40
 state[Battery0,32] 40
 state[Battery0,33] 40
 state[Battery0,34] 40
 state[Battery0,35] 40
 state[Battery0,36] 40
 state[Battery0,37] 40
 state[Battery0,38] 40
 state[Battery0,39] 40
 state[Battery0,40] 40
 state[Battery0,41] 40
 state[Battery0,42] 40
 state[Battery0,43] 40
 state[Battery0,44] 40
 state[Battery0,45] 40
 state[Battery0,46] 40
 state[Battery0,47] 40
 state[Battery0,48] 40
 state[Battery0,49] 40
 state[Battery0,50] 40
 state[Battery0,51] 40
 state[Battery0,52] 40
 state[Battery0,53] 40
 state[Battery0,54] 40
 state[Battery0,55] 40
 state[Battery0,56] 40
 state[Battery0,57] 40
 state[Battery0,58] 40
 state[Battery0,59] 40
 state[Battery0,60] 40
 state[Battery0,61] 40
 state[Battery0,62] 40
 state[Battery0,63] 40
 state[Battery0,64] 40
 state[Battery0,65] 40
 state[Battery0,66] 40
 state[Battery0,67] 40
 state[Battery0,68] 40
 state[Battery0,69] 40
 state[Battery0,70] 40
 state[Battery0,71] 40
 state[Battery0,72] 40
 state[Battery0,73] 40
 state[Battery0,74] 40
 state[Battery0,75] 40
 state[Battery0,76] 40
 state[Battery0,77] 40
 state[Battery0,78] 40
 state[Battery0,79] 40
 state[Battery0,80] 40
 state[Battery0,81] 40
 state[Battery0,82] 40
 state[Battery0,83] 40
 state[Battery0,84] 40
 state[Battery0,85] 40
 state[Battery0,86] 40
 state[Battery0,87] 40
 state[Battery0,88] 40
 state[Battery0,89] 40
 state[Battery0,90] 40
 state[Battery0,91] 40
 state[Battery0,92] 40
 state[Battery0,93] 40
 state[Battery0,94] 40
 state[Battery0,95] 40
 state[Battery0,96] 40
 state[Battery0,97] 40
 state[Battery0,98] 40
 state[Battery0,99] 40
 state[Battery0,100] 40
 state[Battery0,101] 40
 state[Battery0,102] 40
 state[Battery0,103] 40
 state[Battery0,104] 40
 state[Battery0,105] 40
 state[Battery0,106] 40
 state[Battery0,107] 40
 state[Battery0,108] 40
 state[Battery0,109] 40
 state[Battery0,110] 40
 state[Battery0,111] 40
 state[Battery0,112] 40
 state[Battery0,113] 40
 state[Battery0,114] 40
 state[Battery0,115] 40
 state[Battery0,116] 40
 state[Battery0,117] 40
 state[Battery0,118] 40
 state[Battery0,119] 40
 state[Battery0,120] 40
 state[Battery0,121] 40
 state[Battery0,122] 40
 state[Battery0,123] 40
 state[Battery0,124] 40
 state[Battery0,125] 40
 state[Battery0,126] 40
 state[Battery0,127] 40
 state[Battery0,128] 40
 state[Battery0,129] 40
 state[Battery0,130] 40
 state[Battery0,131] 40
 state[Battery0,132] 40
 state[Battery0,133] 40
 state[Battery0,134] 40
 state[Battery0,135] 40
 state[Battery0,136] 40
 state[Battery0,137] 40
 state[Battery0,138] 40
 state[Battery0,139] 40
 state[Battery0,140] 40
 state[Battery0,141] 40
 state[Battery0,142] 40
 state[Battery0,143] 40
 state[Battery0,144] 40
 state[Battery0,145] 40
 state[Battery0,146] 40
 state[Battery0,147] 40
 state[Battery0,148] 40
 state[Battery0,149] 40
 state[Battery0,150] 40
 state[Battery0,151] 40
 state[Battery0,152] 40
 state[Battery0,153] 40
 state[Battery0,154] 40
 state[Battery0,155] 40
 state[Battery0,156] 40
 state[Battery0,157] 40
 state[Battery0,158] 40
 state[Battery0,159] 40
 state[Battery0,160] 40
 state[Battery0,161] 40
 state[Battery0,162] 40
 state[Battery0,163] 40
 state[Battery0,164] 40
 state[Battery0,165] 40
 state[Battery0,166] 40
 state[Battery0,167] 40
 state[Battery0,168] 40
 state[Battery0,169] 40
 state[Battery0,170] 40
 state[Battery0,171] 40
 state[Battery0,172] 40
 state[Battery0,173] 40
 state[Battery0,174] 40
 state[Battery0,175] 40
 state[Battery0,176] 40
 state[Battery0,177] 40
 state[Battery0,178] 40
 state[Battery0,179] 40
 state[Battery1,0] 64
 state[Battery1,1] 64
 state[Battery1,2] 64
 state[Battery1,3] 64
 state[Battery1,4] 64
 state[Battery1,5] 64
 state[Battery1,6] 64
 state[Battery1,7] 64
 state[Battery1,8] 64
 state[Battery1,9] 64
 state[Battery1,10] 64
 state[Battery1,11] 64
 state[Battery1,12] 64
 state[Battery1,13] 64
 state[Battery1,14] 64
 state[Battery1,15] 64
 state[Battery1,16] 64
 state[Battery1,17] 64
 state[Battery1,18] 64
 state[Battery1,19] 64
 state[Battery1,20] 64
 state[Battery1,21] 64
 state[Battery1,22] 64
 state[Battery1,23] 64
 state[Battery1,24] 64
 state[Battery1,25] 64
 state[Battery1,26] 64
 state[Battery1,27] 64
 state[Battery1,28] 64
 state[Battery1,29] 64
 state[Battery1,30] 64
 state[Battery1,31] 64
 state[Battery1,32] 64
 state[Battery1,33] 64
 state[Battery1,34] 64
 state[Battery1,35] 64
 state[Battery1,36] 64
 state[Battery1,37] 64
 state[Battery1,38] 64
 state[Battery1,39] 64
 state[Battery1,40] 64
 state[Battery1,41] 64
 state[Battery1,42] 64
 state[Battery1,43] 64
 state[Battery1,44] 64
 state[Battery1,45] 64
 state[Battery1,46] 64
 state[Battery1,47] 64
 state[Battery1,48] 64
 state[Battery1,49] 64
 state[Battery1,50] 64
 state[Battery1,51] 64
 state[Battery1,52] 64
 state[Battery1,53] 64
 state[Battery1,54] 64
 state[Battery1,55] 64
 state[Battery1,56] 64
 state[Battery1,57] 64
 state[Battery1,58] 64
 state[Battery1,59] 64
 state[Battery1,60] 64
 state[Battery1,61] 64
 state[Battery1,62] 64
 state[Battery1,63] 64
 state[Battery1,64] 64
 state[Battery1,65] 64
 state[Battery1,66] 64
 state[Battery1,67] 64
 state[Battery1,68] 64
 state[Battery1,69] 64
 state[Battery1,70] 64
 state[Battery1,71] 64
 state[Battery1,72] 64
 state[Battery1,73] 64
 state[Battery1,74] 64
 state[Battery1,75] 64
 state[Battery1,76] 64
 state[Battery1,77] 64
 state[Battery1,78] 64
 state[Battery1,79] 64
 state[Battery1,80] 64
 state[Battery1,81] 64
 state[Battery1,82] 64
 state[Battery1,83] 64
 state[Battery1,84] 64
 state[Battery1,85] 64
 state[Battery1,86] 64
 state[Battery1,87] 64
 state[Battery1,88] 64
 state[Battery1,89] 64
 state[Battery1,90] 64
 state[Battery1,91] 64
 state[Battery1,92] 64
 state[Battery1,93] 64
 state[Battery1,94] 64
 state[Battery1,95] 64
 state[Battery1,96] 64
 state[Battery1,97] 64
 state[Battery1,98] 64
 state[Battery1,99] 64
 state[Battery1,100] 64
 state[Battery1,101] 64
 state[Battery1,102] 64
 state[Battery1,103] 64
 state[Battery1,104] 64
 state[Battery1,105] 64
 state[Battery1,106] 64
 state[Battery1,107] 64
 state[Battery1,108] 64
 state[Battery1,109] 64
 state[Battery1,110] 64
 state[Battery1,111] 64
 state[Battery1,112] 64
 state[Battery1,113] 64
 state[Battery1,114] 64
 state[Battery1,115] 64
 state[Battery1,116] 64
 state[Battery1,117] 64
 state[Battery1,118] 64
 state[Battery1,119] 64
 state[Battery1,120] 64
 state[Battery1,121] 64
 state[Battery1,122] 64
 state[Battery1,123] 64
 state[Battery1,124] 64
 state[Battery1,125] 64
 state[Battery1,126] 64
 state[Battery1,127] 64
 state[Battery1,128] 64
 state[Battery1,129] 64
 state[Battery1,130] 64
 state[Battery1,131] 64
 state[Battery1,132] 64
 state[Battery1,133] 64
 state[Battery1,134] 64
 state[Battery1,135] 64
 state[Battery1,136] 64
 state[Battery1,137] 64
 state[Battery1,138] 64
 state[Battery1,139] 64
 state[Battery1,140] 64
 state[Battery1,141] 64
 state[Battery1,142] 64
 state[Battery1,143] 64
 state[Battery1,144] 64
 state[Battery1,145] 64
 state[Battery1,146] 64
 state[Battery1,147] 64
 state[Battery1,148] 64
 state[Battery1,149] 64
 state[Battery1,150] 64
 state[Battery1,151] 64
 state[Battery1,152] 64
 state[Battery1,153] 64
 state[Battery1,154] 64
 state[Battery1,155] 64
 state[Battery1,156] 64
 state[Battery1,157] 64
 state[Battery1,158] 64
 state[Battery1,159] 64
 state[Battery1,160] 64
 state[Battery1,161] 64
 state[Battery1,162] 64
 state[Battery1,163] 64
 state[Battery1,164] 64
 state[Battery1,165] 64
 state[Battery1,166] 64
 state[Battery1,167] 64
 state[Battery1,168] 64
 state[Battery1,169] 64
 state[Battery1,170] 64
 state[Battery1,171] 64
 state[Battery1,172] 64
 state[Battery1,173] 64
 state[Battery1,174] 64
 state[Battery1,175] 64
 state[Battery1,176] 64
 state[Battery1,177] 64
 state[Battery1,178] 64
 state[Battery1,179] 64
Scenario 3
Subject To
 solar_avail[0]: <= 0
 solar_avail[1]: <= 3
 solar_avail[2]: <= 5
 solar_avail[3]: <= 8
 solar_avail[4]: <= 12
 solar_avail[5]: <= 17
 solar_avail[6]: <= 24
 solar_avail[7]: <= 31
 solar_avail[8]: <= 37
 solar_avail[9]: <= 43
 solar_avail[10]: <= 48
 solar_avail[11]: <= 52
 solar_avail[12]: <= 55
 solar_avail[13]: <= 56
 solar_avail[14]: <= 57
 solar_avail[15]: <= 57
 solar_avail[16]: <= 56
 solar_avail[17]: <= 55
 solar_avail[18]: <= 52
 solar_avail[19]: <= 48
 solar_avail[20]: <= 43
 solar_avail[21]: <= 36
 solar_avail[22]: <= 30
 solar_avail[23]: <= 23
 solar_avail[24]: <= 16
 solar_avail[25]: <= 11
 solar_avail[26]: <= 8
 solar_avail[27]: <= 5
 solar_avail[28]: <= 4
 solar_avail[29]: <= 3
 solar_avail[30]: <= 3
 solar_avail[31]: <= 4
 solar_avail[32]: <= 6
 solar_avail[33]: <= 9
 solar_avail[34]: <= 13
 solar_avail[35]: <= 19
 solar_avail[36]: <= 25
 solar_avail[37]: <= 32
 solar_avail[38]: <= 38
 solar_avail[39]: <= 44
 solar_avail[40]: <= 49
 solar_avail[41]: <= 53
 solar_avail[42]: <= 56
 solar_avail[43]: <= 57
 solar_avail[44]: <= 58
 solar_avail[45]: <= 58
 solar_avail[46]: <= 58
 solar_avail[47]: <= 56
 solar_avail[48]: <= 53
 solar_avail[49]: <= 49
 solar_avail[50]: <= 44
 solar_avail[51]: <= 38
 solar_avail[52]: <= 30
 solar_avail[53]: <= 23
 solar_avail[54]: <= 17
 solar_avail[55]: <= 12
 solar_avail[56]: <= 8
 solar_avail[57]: <= 6
 solar_avail[58]: <= 4
 solar_avail[59]: <= 3
 solar_avail[60]: <= 3
 solar_avail[61]: <= 4
 solar_avail[62]: <= 5
 solar_avail[63]: <= 8
 solar_avail[64]: <= 13
 solar_avail[65]: <= 18
 solar_avail[66]: <= 25
 solar_avail[67]: <= 31
 solar_avail[68]: <= 38
 solar_avail[69]: <= 44
 solar_avail[70]: <= 49
 solar_avail[71]: <= 53
 solar_avail[72]: <= 55
 solar_avail[73]: <= 57
 solar_avail[74]: <= 58
 solar_avail[75]: <= 58
 solar_avail[76]: <= 57
 solar_avail[77]: <= 55
 solar_avail[78]: <= 52
 solar_avail[79]: <= 48
 solar_avail[80]: <= 43
 solar_avail[81]: <= 36
 solar_avail[82]: <= 30
 solar_avail[83]: <= 23
 solar_avail[84]: <= 17
 solar_avail[85]: <= 11
 solar_avail[86]: <= 7
 solar_avail[87]: <= 5
 solar_avail[88]: <= 3
 solar_avail[89]: <= 0
 solar_avail[90]: <= 0
 solar_avail[91]: <= 3
 solar_avail[92]: <= 5
 solar_avail[93]: <= 8
 solar_avail[94]: <= 12
 solar_avail[95]: <= 18
 solar_avail[96]: <= 24
 solar_avail[97]: <= 31
 solar_avail[98]: <= 38
 solar_avail[99]: <= 44
 solar_avail[100]: <= 48
 solar_avail[101]: <= 53
 solar_avail[102]: <= 55
 solar_avail[103]: <= 57
 solar_avail[104]: <= 58
 solar_avail[105]: <= 58
 solar_avail[106]: <= 57
 solar_avail[107]: <= 55
 solar_avail[108]: <= 52
 solar_avail[109]: <= 48
 solar_avail[110]: <= 43
 solar_avail[111]: <= 37
 solar_avail[112]: <= 30
 solar_avail[113]: <= 23
 solar_avail[114]: <= 16
 solar_avail[115]: <= 11
 solar_avail[116]: <= 7
 solar_avail[117]: <= 4
 solar_avail[118]: <= 3
 solar_avail[119]: <= 0
 solar_avail[120]: <= 0
 solar_avail[121]: <= 3
 solar_avail[122]: <= 5
 solar_avail[123]: <= 8
 solar_avail[124]: <= 12
 solar_avail[125]: <= 17
 solar_avail[126]: <= 24
 solar_avail[127]: <= 31
 solar_avail[128]: <= 37
 solar_avail[129]: <= 43
 solar_avail[130]: <= 48
 solar_avail[131]: <= 52
 solar_avail[132]: <= 55
 solar_avail[133]: <= 56
 solar_avail[134]: <= 58
 solar_avail[135]: <= 57
 solar_avail[136]: <= 57
 solar_avail[137]: <= 55
 solar_avail[138]: <= 52
 solar_avail[139]: <= 48
 solar_avail[140]: <= 42
 solar_avail[141]: <= 36
 solar_avail[142]: <= 29
 solar_avail[143]: <= 22
 solar_avail[144]: <= 16
 solar_avail[145]: <= 10
 solar_avail[146]: <= 6
 solar_avail[147]: <= 4
 solar_avail[148]: <= 0
 solar_avail[149]: <= 0
 solar_avail[150]: <= 0
 solar_avail[151]: <= 0
 solar_avail[152]: <= 4
 solar_avail[153]: <= 7
 solar_avail[154]: <= 11
 solar_avail[155]: <= 17
 solar_avail[156]: <= 23
 solar_avail[157]: <= 30
 solar_avail[158]: <= 37
 solar_avail[159]: <= 43
 solar_avail[160]: <= 48
 solar_avail[161]: <= 52
 solar_avail[162]: <= 54
 solar_avail[163]: <= 56
 solar_avail[164]: <= 57
 solar_avail[165]: <= 57
 solar_avail[166]: <= 57
 solar_avail[167]: <= 55
 solar_avail[168]: <= 52
 solar_avail[169]: <= 48
 solar_avail[170]: <= 43
 solar_avail[171]: <= 36
 solar_avail[172]: <= 29
 solar_avail[173]: <= 22
 solar_avail[174]: <= 16
 solar_avail[175]: <= 10
 solar_avail[176]: <= 7
 solar_avail[177]: <= 4
 solar_avail[178]: <= 0
 solar_avail[179]: <= 0
End
