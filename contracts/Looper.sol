// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Looper {
    function doStuff(uint256 i) private pure returns (uint256) {
        return i;
    }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ! FOR LOOPS
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ! 28706 - For loop
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // function loop() public pure {
    //     unchecked {
    //         for (uint256 i = 0; i < 100; ++i) {
    //             doStuff(i);
    //         }
    //     }
    // }

    // ! 24836 - For loop +10
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // function loop() public pure {
    //     unchecked {
    //         for (uint256 i = 0; i < 100; i += 10) {
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //             doStuff(i);
    //         }
    //     }
    // }

    // ! 21636 - For - inline doStuff(i) logic
    // function loop() public pure {
    //     unchecked {
    //         for (uint256 i = 0; i < 100; i += 10) {
    //             uint256 result = i; // Inline doStuff(i) logic
    //             uint256 result1 = i + 1;
    //             uint256 result2 = i + 2;
    //             uint256 result3 = i + 3;
    //             uint256 result4 = i + 4;
    //             uint256 result5 = i + 5;
    //             uint256 result6 = i + 6;
    //             uint256 result7 = i + 7;
    //             uint256 result8 = i + 8;
    //             uint256 result9 = i + 9;
    //         }
    //     }
    // }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ! DO WHILE LOOPS
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ! 27279 - Do While
    // //////////////////////////////////////////////////////////////////////////////////////////////////////
    function loop() public pure {
        unchecked {
            uint256 i = 0;
            do {
                doStuff(i);
                ++i;
            } while (i < 100);
        }
    }

    // ! 25209 - Do While +10
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // function loop() public pure {
    //     uint256 i = 0;
    //     unchecked {
    //         do {
    //             doStuff(i);
    //             doStuff(i + 1);
    //             doStuff(i + 2);
    //             doStuff(i + 3);
    //             doStuff(i + 4);
    //             doStuff(i + 5);
    //             doStuff(i + 6);
    //             doStuff(i + 7);
    //             doStuff(i + 8);
    //             doStuff(i + 9);
    //             i += 10;
    //         } while (i < 100);
    //     }
    // }

    // ! 21469 - Do While - inline doStuff(i) logic
    // function loop() public pure {
    //     uint256 i = 0;
    //     unchecked {
    //         do {
    //             uint256 result = i; // Inline doStuff(i) logic
    //             uint256 result1 = i + 1;
    //             uint256 result2 = i + 2;
    //             uint256 result3 = i + 3;
    //             uint256 result4 = i + 4;
    //             uint256 result5 = i + 5;
    //             uint256 result6 = i + 6;
    //             uint256 result7 = i + 7;
    //             uint256 result8 = i + 8;
    //             uint256 result9 = i + 9;
    //             i += 10;
    //         } while (i < 100);
    //     }
    // }

    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ! ASSEMBLY
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ! 25506 - Assembly For loop
    ////////////////////////////////////////////////////////////////////////////////////////////////////////
    // function loop() public pure {
    //     assembly {
    //         let i := 0
    //         let end := 100

    //         for {} lt(i, end) { i := add(i, 1) } {
    //             // Simulate the doStuff operation
    //             let result := i
    //         }
    //     }
    // }

    // ! 25200 - Assembly For loop - iszero
    // function loop() public pure {
    //     assembly {
    //         let i := 0
    //         let end := 100

    //         for {} iszero(iszero(end)) { end := sub(end, 1) } { let result := i }
    //         // Simulate the doStuff operation
    //     }
    // }
}
