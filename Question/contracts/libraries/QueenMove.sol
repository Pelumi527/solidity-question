//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;
import {SystemTypes} from "./SystemTypes.sol";


contract QueenMove{

    SystemTypes.Diff[] private  Moves;

    constructor(){
        Moves.push(SystemTypes.Diff(1,0));
        Moves.push(SystemTypes.Diff(2,0));
        Moves.push(SystemTypes.Diff(3,0));
        Moves.push(SystemTypes.Diff(4,0));
        Moves.push(SystemTypes.Diff(5,0));
        Moves.push(SystemTypes.Diff(6,0));
        Moves.push(SystemTypes.Diff(7,0));
        Moves.push(SystemTypes.Diff(0,1));
        Moves.push(SystemTypes.Diff(0,2));
        Moves.push(SystemTypes.Diff(0,3));
        Moves.push(SystemTypes.Diff(0,4));
        Moves.push(SystemTypes.Diff(0,5));
        Moves.push(SystemTypes.Diff(0,6));
        Moves.push(SystemTypes.Diff(0,7));
        Moves.push(SystemTypes.Diff(1,1));
        Moves.push(SystemTypes.Diff(2,2));
        Moves.push(SystemTypes.Diff(3,3));
        Moves.push(SystemTypes.Diff(4,4));
        Moves.push(SystemTypes.Diff(5,5));
        Moves.push(SystemTypes.Diff(6,6));
        Moves.push(SystemTypes.Diff(7,7));
        Moves.push(SystemTypes.Diff(-1,0));
        Moves.push(SystemTypes.Diff(-2,0));
        Moves.push(SystemTypes.Diff(-3,0));
        Moves.push(SystemTypes.Diff(-4,0));
        Moves.push(SystemTypes.Diff(-5,0));
        Moves.push(SystemTypes.Diff(-6,0));
        Moves.push(SystemTypes.Diff(-7,0));
        Moves.push(SystemTypes.Diff(0,-1));
        Moves.push(SystemTypes.Diff(0,-2));
        Moves.push(SystemTypes.Diff(0,-3));
        Moves.push(SystemTypes.Diff(0,-4));
        Moves.push(SystemTypes.Diff(0,-5));
        Moves.push(SystemTypes.Diff(0,-6));
        Moves.push(SystemTypes.Diff(0,-7));
        Moves.push(SystemTypes.Diff(-1,-1));
        Moves.push(SystemTypes.Diff(-2,-2));
        Moves.push(SystemTypes.Diff(-3,-3));
        Moves.push(SystemTypes.Diff(-4,-4));
        Moves.push(SystemTypes.Diff(-5,-5));
        Moves.push(SystemTypes.Diff(-6,-6));
        Moves.push(SystemTypes.Diff(-7,-7));
    }

    function validMoves(SystemTypes.Position memory _position) public view returns(SystemTypes.Position[] memory) {
        uint count = 0;
        for (uint i=0; i< Moves.length; i++) {
            int newX = int(_position.X) + Moves[i].X;
            int newY = int(_position.Y) + Moves[i].Y;
            if (newX > 8 || newX < 1 || newY > 8 || newY < 1){
                continue;
            }
            count++;      
        }

        SystemTypes.Position[] memory results = new SystemTypes.Position[](count);
        uint index = 0;
        for (uint i=0; i < Moves.length; i++) {
            int newX = int(_position.X) + Moves[i].X;
            int newY = int(_position.Y) + Moves[i].Y;
            if (newX > 8 || newX < 1 || newY > 8 || newY < 1){
                continue;
            }
           results[index] = SystemTypes.Position(uint(newX), uint(newY));
           index++;
        }
        return results;
    }
}
