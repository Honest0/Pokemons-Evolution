//SPDX-License-Identifier: Unlicense
pragma solidity 0.8.15;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

/**
 * @title PokemonStorage contract.
 * NOTE: The contract contains all possible evolution data.
 */
contract PokemonStorage is ERC1155, Ownable {
    mapping(uint256 => bool) private _latestInEvolution;
    mapping(uint256 => uint256) private _thunderEvolutions;
    mapping(uint256 => uint256) private _moonEvolutions;
    mapping(uint256 => uint256) private _fireEvolutions;
    mapping(uint256 => uint256) private _leafEvolutions;
    mapping(uint256 => uint256) private _sunEvolutions;
    mapping(uint256 => uint256) private _waterEvolutions;
    mapping(uint256 => uint256) private _blackAuguriteEvolutions;
    mapping(uint256 => uint256) private _shinyEvolutions;
    mapping(uint256 => uint256) private _duskEvolutions;
    mapping(uint256 => uint256) private _razorClawEvolutions;
    mapping(uint256 => uint256) private _peatBlockEvolutions;
    mapping(uint256 => uint256) private _tartAppleEvolutions;
    mapping(uint256 => uint256) private _crackedPotEvolutions;
    mapping(uint256 => uint256) private _ovalEvolutions;

    /**
     * @dev Returns bool about availability of evolution.
     */
    function isEvolveNotAvailable(uint256 pokemonNumber) public view returns (bool) {
        return _latestInEvolution[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a thunder stone.
     */
    function isThunderEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _thunderEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a moon stone.
     */
    function isMoonEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _moonEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a fire stone.
     */
    function isFireEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _fireEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a leaf stone.
     */
    function isLeafEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _leafEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a sun stone.
     */
    function isSunEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _sunEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a water stone.
     */
    function isWaterEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _waterEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a black augurite.
     */
    function isBlackAuguriteEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _blackAuguriteEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a shiny stone.
     */
    function isShinyEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _shinyEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a dusk stone.
     */
    function isDuskEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _duskEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a razor claw.
     */
    function isRazorClawEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _razorClawEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a peat block.
     */
    function isPeatBlockEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _peatBlockEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a tart apple.
     */
    function isTartAppleEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _tartAppleEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a cracked pot.
     */
    function isCrackedPotEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _crackedPotEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns data about the possibility of evolution with a oval stone
     */
    function isOvalEvolveAvailable(uint256 pokemonNumber) public view returns (uint256) {
        return _ovalEvolutions[pokemonNumber];
    }

    /**
     * @dev Returns uri of each token.
     */
    function uri(uint256 tokenId) public pure override returns (string memory) {
        return (
            string(
                abi.encodePacked(
                    "ipfs://bafybeidhzhc5wjpdvqjldvl5pkbq4lxf2udwkltfx5qzo6gn327xpidpue/",
                    Strings.toString(tokenId)
                )
            )
        );
    }

    /**
     * @dev Stores data on all `stone` type evolving opportunities and all latest Pokémons in
     * the chain of evolution.
     */
    constructor() ERC1155("ipfs://bafybeidhzhc5wjpdvqjldvl5pkbq4lxf2udwkltfx5qzo6gn327xpidpue/") {
        _latestInEvolution[3] = true;
        _latestInEvolution[6] = true;
        _latestInEvolution[9] = true;
        _latestInEvolution[12] = true;
        _latestInEvolution[15] = true;
        _latestInEvolution[18] = true;
        _latestInEvolution[20] = true;
        _latestInEvolution[22] = true;
        _latestInEvolution[24] = true;
        _latestInEvolution[26] = true;
        _latestInEvolution[28] = true;
        _latestInEvolution[31] = true;
        _latestInEvolution[34] = true;
        _latestInEvolution[36] = true;
        _latestInEvolution[38] = true;
        _latestInEvolution[40] = true;
        _latestInEvolution[42] = true;
        _latestInEvolution[45] = true;
        _latestInEvolution[47] = true;
        _latestInEvolution[49] = true;
        _latestInEvolution[51] = true;
        _latestInEvolution[53] = true;
        _latestInEvolution[55] = true;
        _latestInEvolution[57] = true;
        _latestInEvolution[59] = true;
        _latestInEvolution[62] = true;
        _latestInEvolution[65] = true;
        _latestInEvolution[68] = true;
        _latestInEvolution[71] = true;
        _latestInEvolution[73] = true;
        _latestInEvolution[76] = true;
        _latestInEvolution[78] = true;
        _latestInEvolution[80] = true;
        _latestInEvolution[82] = true;
        _latestInEvolution[83] = true;
        _latestInEvolution[85] = true;
        _latestInEvolution[87] = true;
        _latestInEvolution[89] = true;
        _latestInEvolution[91] = true;
        _latestInEvolution[94] = true;
        _latestInEvolution[95] = true;
        _latestInEvolution[97] = true;
        _latestInEvolution[99] = true;

        _latestInEvolution[101] = true;
        _latestInEvolution[103] = true;
        _latestInEvolution[105] = true;
        _latestInEvolution[106] = true;
        _latestInEvolution[107] = true;
        _latestInEvolution[101] = true;
        _latestInEvolution[103] = true;
        _latestInEvolution[105] = true;
        _latestInEvolution[106] = true;
        _latestInEvolution[107] = true;
        _latestInEvolution[108] = true;
        _latestInEvolution[110] = true;
        _latestInEvolution[112] = true;
        _latestInEvolution[113] = true;
        _latestInEvolution[114] = true;
        _latestInEvolution[117] = true;
        _latestInEvolution[119] = true;
        _latestInEvolution[121] = true;
        _latestInEvolution[122] = true;
        _latestInEvolution[124] = true;
        _latestInEvolution[125] = true;
        _latestInEvolution[126] = true;
        _latestInEvolution[127] = true;
        _latestInEvolution[128] = true;
        _latestInEvolution[130] = true;
        _latestInEvolution[131] = true;
        _latestInEvolution[132] = true;
        _latestInEvolution[134] = true;
        _latestInEvolution[135] = true;
        _latestInEvolution[136] = true;
        _latestInEvolution[137] = true;
        _latestInEvolution[139] = true;
        _latestInEvolution[141] = true;
        _latestInEvolution[142] = true;
        _latestInEvolution[143] = true;
        _latestInEvolution[145] = true;
        _latestInEvolution[146] = true;
        _latestInEvolution[149] = true;
        _latestInEvolution[150] = true;
        _latestInEvolution[151] = true;
        _latestInEvolution[154] = true;
        _latestInEvolution[157] = true;
        _latestInEvolution[160] = true;
        _latestInEvolution[162] = true;
        _latestInEvolution[164] = true;
        _latestInEvolution[166] = true;
        _latestInEvolution[168] = true;
        _latestInEvolution[169] = true;
        _latestInEvolution[171] = true;
        _latestInEvolution[172] = true;
        _latestInEvolution[173] = true;
        _latestInEvolution[174] = true;
        _latestInEvolution[178] = true;
        _latestInEvolution[181] = true;
        _latestInEvolution[182] = true;
        _latestInEvolution[184] = true;
        _latestInEvolution[185] = true;
        _latestInEvolution[186] = true;
        _latestInEvolution[189] = true;
        _latestInEvolution[190] = true;
        _latestInEvolution[192] = true;
        _latestInEvolution[193] = true;
        _latestInEvolution[195] = true;
        _latestInEvolution[196] = true;
        _latestInEvolution[197] = true;
        _latestInEvolution[199] = true;

        _latestInEvolution[201] = true;
        _latestInEvolution[202] = true;
        _latestInEvolution[203] = true;
        _latestInEvolution[205] = true;
        _latestInEvolution[206] = true;
        _latestInEvolution[207] = true;
        _latestInEvolution[208] = true;
        _latestInEvolution[210] = true;
        _latestInEvolution[211] = true;
        _latestInEvolution[212] = true;
        _latestInEvolution[213] = true;
        _latestInEvolution[214] = true;
        _latestInEvolution[219] = true;
        _latestInEvolution[221] = true;
        _latestInEvolution[222] = true;
        _latestInEvolution[224] = true;
        _latestInEvolution[225] = true;
        _latestInEvolution[226] = true;
        _latestInEvolution[227] = true;
        _latestInEvolution[229] = true;
        _latestInEvolution[230] = true;
        _latestInEvolution[232] = true;
        _latestInEvolution[233] = true;
        _latestInEvolution[234] = true;
        _latestInEvolution[235] = true;
        _latestInEvolution[236] = true;
        _latestInEvolution[237] = true;
        _latestInEvolution[238] = true;
        _latestInEvolution[239] = true;
        _latestInEvolution[240] = true;
        _latestInEvolution[241] = true;
        _latestInEvolution[242] = true;
        _latestInEvolution[243] = true;
        _latestInEvolution[244] = true;
        _latestInEvolution[245] = true;
        _latestInEvolution[248] = true;
        _latestInEvolution[249] = true;
        _latestInEvolution[250] = true;
        _latestInEvolution[251] = true;
        _latestInEvolution[254] = true;
        _latestInEvolution[257] = true;
        _latestInEvolution[260] = true;
        _latestInEvolution[262] = true;
        _latestInEvolution[264] = true;
        _latestInEvolution[269] = true;
        _latestInEvolution[272] = true;
        _latestInEvolution[275] = true;
        _latestInEvolution[277] = true;
        _latestInEvolution[279] = true;
        _latestInEvolution[282] = true;
        _latestInEvolution[284] = true;
        _latestInEvolution[286] = true;
        _latestInEvolution[289] = true;
        _latestInEvolution[292] = true;
        _latestInEvolution[295] = true;
        _latestInEvolution[297] = true;
        _latestInEvolution[298] = true;
        _latestInEvolution[299] = true;

        _latestInEvolution[301] = true;
        _latestInEvolution[302] = true;
        _latestInEvolution[303] = true;
        _latestInEvolution[306] = true;
        _latestInEvolution[308] = true;
        _latestInEvolution[310] = true;
        _latestInEvolution[311] = true;
        _latestInEvolution[312] = true;
        _latestInEvolution[313] = true;
        _latestInEvolution[314] = true;
        _latestInEvolution[317] = true;
        _latestInEvolution[319] = true;
        _latestInEvolution[321] = true;
        _latestInEvolution[323] = true;
        _latestInEvolution[324] = true;
        _latestInEvolution[326] = true;
        _latestInEvolution[327] = true;
        _latestInEvolution[330] = true;
        _latestInEvolution[332] = true;
        _latestInEvolution[334] = true;
        _latestInEvolution[335] = true;
        _latestInEvolution[336] = true;
        _latestInEvolution[337] = true;
        _latestInEvolution[338] = true;
        _latestInEvolution[340] = true;
        _latestInEvolution[342] = true;
        _latestInEvolution[344] = true;
        _latestInEvolution[346] = true;
        _latestInEvolution[348] = true;
        _latestInEvolution[350] = true;
        _latestInEvolution[351] = true;
        _latestInEvolution[352] = true;
        _latestInEvolution[354] = true;
        _latestInEvolution[356] = true;
        _latestInEvolution[357] = true;
        _latestInEvolution[358] = true;
        _latestInEvolution[359] = true;
        _latestInEvolution[360] = true;
        _latestInEvolution[362] = true;
        _latestInEvolution[365] = true;
        _latestInEvolution[368] = true;
        _latestInEvolution[369] = true;
        _latestInEvolution[370] = true;
        _latestInEvolution[373] = true;
        _latestInEvolution[376] = true;
        _latestInEvolution[377] = true;
        _latestInEvolution[378] = true;
        _latestInEvolution[379] = true;
        _latestInEvolution[380] = true;
        _latestInEvolution[381] = true;
        _latestInEvolution[382] = true;
        _latestInEvolution[383] = true;
        _latestInEvolution[384] = true;
        _latestInEvolution[385] = true;
        _latestInEvolution[386] = true;
        _latestInEvolution[389] = true;
        _latestInEvolution[392] = true;
        _latestInEvolution[395] = true;
        _latestInEvolution[398] = true;

        _latestInEvolution[400] = true;
        _latestInEvolution[402] = true;
        _latestInEvolution[407] = true;
        _latestInEvolution[405] = true;
        _latestInEvolution[409] = true;
        _latestInEvolution[411] = true;
        _latestInEvolution[414] = true;
        _latestInEvolution[416] = true;
        _latestInEvolution[419] = true;
        _latestInEvolution[421] = true;
        _latestInEvolution[423] = true;
        _latestInEvolution[424] = true;
        _latestInEvolution[426] = true;
        _latestInEvolution[428] = true;
        _latestInEvolution[429] = true;
        _latestInEvolution[430] = true;
        _latestInEvolution[432] = true;
        _latestInEvolution[433] = true;
        _latestInEvolution[435] = true;
        _latestInEvolution[437] = true;
        _latestInEvolution[438] = true;
        _latestInEvolution[439] = true;
        _latestInEvolution[441] = true;
        _latestInEvolution[442] = true;
        _latestInEvolution[445] = true;
        _latestInEvolution[446] = true;
        _latestInEvolution[448] = true;
        _latestInEvolution[450] = true;
        _latestInEvolution[452] = true;
        _latestInEvolution[454] = true;
        _latestInEvolution[455] = true;
        _latestInEvolution[457] = true;
        _latestInEvolution[458] = true;
        _latestInEvolution[460] = true;
        _latestInEvolution[461] = true;
        _latestInEvolution[462] = true;
        _latestInEvolution[463] = true;
        _latestInEvolution[464] = true;
        _latestInEvolution[465] = true;
        _latestInEvolution[466] = true;
        _latestInEvolution[467] = true;
        _latestInEvolution[468] = true;
        _latestInEvolution[469] = true;
        _latestInEvolution[470] = true;
        _latestInEvolution[471] = true;
        _latestInEvolution[472] = true;
        _latestInEvolution[473] = true;
        _latestInEvolution[474] = true;
        _latestInEvolution[475] = true;
        _latestInEvolution[476] = true;
        _latestInEvolution[477] = true;
        _latestInEvolution[478] = true;
        _latestInEvolution[479] = true;
        _latestInEvolution[480] = true;
        _latestInEvolution[481] = true;
        _latestInEvolution[482] = true;
        _latestInEvolution[483] = true;
        _latestInEvolution[484] = true;
        _latestInEvolution[485] = true;
        _latestInEvolution[486] = true;
        _latestInEvolution[487] = true;
        _latestInEvolution[488] = true;
        _latestInEvolution[489] = true;
        _latestInEvolution[490] = true;
        _latestInEvolution[491] = true;
        _latestInEvolution[492] = true;
        _latestInEvolution[493] = true;
        _latestInEvolution[494] = true;
        _latestInEvolution[497] = true;

        _latestInEvolution[500] = true;
        _latestInEvolution[503] = true;
        _latestInEvolution[505] = true;
        _latestInEvolution[508] = true;
        _latestInEvolution[510] = true;
        _latestInEvolution[512] = true;
        _latestInEvolution[514] = true;
        _latestInEvolution[516] = true;
        _latestInEvolution[518] = true;
        _latestInEvolution[521] = true;
        _latestInEvolution[523] = true;
        _latestInEvolution[526] = true;
        _latestInEvolution[528] = true;
        _latestInEvolution[530] = true;
        _latestInEvolution[531] = true;
        _latestInEvolution[534] = true;
        _latestInEvolution[537] = true;
        _latestInEvolution[538] = true;
        _latestInEvolution[539] = true;
        _latestInEvolution[542] = true;
        _latestInEvolution[545] = true;
        _latestInEvolution[547] = true;
        _latestInEvolution[549] = true;
        _latestInEvolution[550] = true;
        _latestInEvolution[553] = true;
        _latestInEvolution[555] = true;
        _latestInEvolution[556] = true;
        _latestInEvolution[558] = true;
        _latestInEvolution[560] = true;
        _latestInEvolution[561] = true;
        _latestInEvolution[563] = true;
        _latestInEvolution[565] = true;
        _latestInEvolution[567] = true;
        _latestInEvolution[569] = true;
        _latestInEvolution[571] = true;
        _latestInEvolution[573] = true;
        _latestInEvolution[576] = true;
        _latestInEvolution[579] = true;
        _latestInEvolution[581] = true;
        _latestInEvolution[584] = true;
        _latestInEvolution[586] = true;
        _latestInEvolution[587] = true;
        _latestInEvolution[589] = true;
        _latestInEvolution[591] = true;
        _latestInEvolution[593] = true;
        _latestInEvolution[594] = true;
        _latestInEvolution[596] = true;
        _latestInEvolution[598] = true;

        _latestInEvolution[601] = true;
        _latestInEvolution[604] = true;
        _latestInEvolution[606] = true;
        _latestInEvolution[609] = true;
        _latestInEvolution[612] = true;
        _latestInEvolution[614] = true;
        _latestInEvolution[615] = true;
        _latestInEvolution[617] = true;
        _latestInEvolution[618] = true;
        _latestInEvolution[620] = true;
        _latestInEvolution[621] = true;
        _latestInEvolution[623] = true;
        _latestInEvolution[625] = true;
        _latestInEvolution[626] = true;
        _latestInEvolution[628] = true;
        _latestInEvolution[630] = true;
        _latestInEvolution[631] = true;
        _latestInEvolution[632] = true;
        _latestInEvolution[635] = true;
        _latestInEvolution[637] = true;
        _latestInEvolution[638] = true;
        _latestInEvolution[639] = true;
        _latestInEvolution[640] = true;
        _latestInEvolution[641] = true;
        _latestInEvolution[642] = true;
        _latestInEvolution[643] = true;
        _latestInEvolution[644] = true;
        _latestInEvolution[645] = true;
        _latestInEvolution[646] = true;
        _latestInEvolution[647] = true;
        _latestInEvolution[648] = true;
        _latestInEvolution[649] = true;
        _latestInEvolution[652] = true;
        _latestInEvolution[655] = true;
        _latestInEvolution[658] = true;
        _latestInEvolution[660] = true;
        _latestInEvolution[663] = true;
        _latestInEvolution[666] = true;
        _latestInEvolution[668] = true;
        _latestInEvolution[671] = true;
        _latestInEvolution[673] = true;
        _latestInEvolution[675] = true;
        _latestInEvolution[676] = true;
        _latestInEvolution[678] = true;
        _latestInEvolution[681] = true;
        _latestInEvolution[683] = true;
        _latestInEvolution[685] = true;
        _latestInEvolution[687] = true;
        _latestInEvolution[689] = true;
        _latestInEvolution[691] = true;
        _latestInEvolution[693] = true;
        _latestInEvolution[695] = true;
        _latestInEvolution[697] = true;
        _latestInEvolution[699] = true;

        _latestInEvolution[700] = true;
        _latestInEvolution[701] = true;
        _latestInEvolution[702] = true;
        _latestInEvolution[703] = true;
        _latestInEvolution[706] = true;
        _latestInEvolution[707] = true;
        _latestInEvolution[709] = true;
        _latestInEvolution[711] = true;
        _latestInEvolution[713] = true;
        _latestInEvolution[715] = true;
        _latestInEvolution[716] = true;
        _latestInEvolution[717] = true;
        _latestInEvolution[718] = true;
        _latestInEvolution[719] = true;
        _latestInEvolution[720] = true;
        _latestInEvolution[721] = true;
        _latestInEvolution[724] = true;
        _latestInEvolution[727] = true;
        _latestInEvolution[730] = true;
        _latestInEvolution[733] = true;
        _latestInEvolution[735] = true;
        _latestInEvolution[738] = true;
        _latestInEvolution[740] = true;
        _latestInEvolution[743] = true;
        _latestInEvolution[745] = true;
        _latestInEvolution[746] = true;
        _latestInEvolution[748] = true;
        _latestInEvolution[750] = true;
        _latestInEvolution[752] = true;
        _latestInEvolution[754] = true;
        _latestInEvolution[756] = true;
        _latestInEvolution[758] = true;
        _latestInEvolution[760] = true;
        _latestInEvolution[763] = true;
        _latestInEvolution[768] = true;
        _latestInEvolution[770] = true;
        _latestInEvolution[771] = true;
        _latestInEvolution[773] = true;
        _latestInEvolution[774] = true;
        _latestInEvolution[775] = true;
        _latestInEvolution[776] = true;
        _latestInEvolution[777] = true;
        _latestInEvolution[778] = true;
        _latestInEvolution[779] = true;
        _latestInEvolution[780] = true;
        _latestInEvolution[781] = true;
        _latestInEvolution[784] = true;
        _latestInEvolution[785] = true;
        _latestInEvolution[786] = true;
        _latestInEvolution[787] = true;
        _latestInEvolution[788] = true;
        _latestInEvolution[791] = true;
        _latestInEvolution[792] = true;
        _latestInEvolution[793] = true;
        _latestInEvolution[794] = true;
        _latestInEvolution[795] = true;
        _latestInEvolution[796] = true;
        _latestInEvolution[797] = true;
        _latestInEvolution[798] = true;
        _latestInEvolution[799] = true;

        _latestInEvolution[800] = true;
        _latestInEvolution[801] = true;
        _latestInEvolution[802] = true;
        _latestInEvolution[804] = true;
        _latestInEvolution[805] = true;
        _latestInEvolution[806] = true;
        _latestInEvolution[807] = true;
        _latestInEvolution[809] = true;
        _latestInEvolution[812] = true;
        _latestInEvolution[815] = true;
        _latestInEvolution[818] = true;
        _latestInEvolution[820] = true;
        _latestInEvolution[823] = true;
        _latestInEvolution[826] = true;
        _latestInEvolution[828] = true;
        _latestInEvolution[830] = true;
        _latestInEvolution[832] = true;
        _latestInEvolution[834] = true;
        _latestInEvolution[836] = true;
        _latestInEvolution[839] = true;
        _latestInEvolution[842] = true;
        _latestInEvolution[844] = true;
        _latestInEvolution[845] = true;
        _latestInEvolution[847] = true;
        _latestInEvolution[849] = true;
        _latestInEvolution[851] = true;
        _latestInEvolution[853] = true;
        _latestInEvolution[855] = true;
        _latestInEvolution[858] = true;
        _latestInEvolution[861] = true;
        _latestInEvolution[862] = true;
        _latestInEvolution[863] = true;
        _latestInEvolution[864] = true;
        _latestInEvolution[865] = true;
        _latestInEvolution[866] = true;
        _latestInEvolution[867] = true;
        _latestInEvolution[868] = true;
        _latestInEvolution[869] = true;
        _latestInEvolution[870] = true;
        _latestInEvolution[871] = true;
        _latestInEvolution[873] = true;
        _latestInEvolution[874] = true;
        _latestInEvolution[875] = true;
        _latestInEvolution[876] = true;
        _latestInEvolution[877] = true;
        _latestInEvolution[879] = true;
        _latestInEvolution[880] = true;
        _latestInEvolution[881] = true;
        _latestInEvolution[882] = true;
        _latestInEvolution[883] = true;
        _latestInEvolution[884] = true;
        _latestInEvolution[887] = true;
        _latestInEvolution[888] = true;
        _latestInEvolution[889] = true;
        _latestInEvolution[890] = true;
        _latestInEvolution[892] = true;
        _latestInEvolution[893] = true;
        _latestInEvolution[894] = true;
        _latestInEvolution[895] = true;
        _latestInEvolution[896] = true;
        _latestInEvolution[897] = true;
        _latestInEvolution[898] = true;
        _latestInEvolution[899] = true;
        _latestInEvolution[900] = true;
        _latestInEvolution[901] = true;
        _latestInEvolution[902] = true;
        _latestInEvolution[903] = true;
        _latestInEvolution[904] = true;
        _latestInEvolution[905] = true;

        _thunderEvolutions[25] = 26;
        _thunderEvolutions[133] = 135;
        _thunderEvolutions[603] = 604;
        _moonEvolutions[30] = 31;
        _moonEvolutions[33] = 34;
        _moonEvolutions[35] = 36;
        _moonEvolutions[39] = 40;
        _moonEvolutions[300] = 301;
        _moonEvolutions[517] = 518;
        _fireEvolutions[37] = 38;
        _fireEvolutions[58] = 59;
        _fireEvolutions[513] = 514;
        _fireEvolutions[133] = 136;
        _leafEvolutions[44] = 45;
        _leafEvolutions[70] = 71;
        _leafEvolutions[102] = 103;
        _leafEvolutions[274] = 275;
        _leafEvolutions[511] = 512;
        _leafEvolutions[133] = 470;
        _sunEvolutions[44] = 182;
        _sunEvolutions[191] = 192;
        _sunEvolutions[546] = 547;
        _sunEvolutions[548] = 549;
        _sunEvolutions[694] = 695;
        _waterEvolutions[61] = 62;
        _waterEvolutions[90] = 91;
        _waterEvolutions[120] = 121;
        _waterEvolutions[271] = 272;
        _waterEvolutions[515] = 516;
        _waterEvolutions[133] = 134;
        _blackAuguriteEvolutions[123] = 900;
        _shinyEvolutions[176] = 468;
        _shinyEvolutions[315] = 407;
        _shinyEvolutions[572] = 573;
        _shinyEvolutions[670] = 671;
        _duskEvolutions[198] = 430;
        _duskEvolutions[200] = 429;
        _duskEvolutions[608] = 609;
        _duskEvolutions[680] = 681;
        _razorClawEvolutions[215] = 461;
        _peatBlockEvolutions[217] = 901;
        _tartAppleEvolutions[840] = 841;
        _crackedPotEvolutions[854] = 855;
        _ovalEvolutions[440] = 113;
    }
}
