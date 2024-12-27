// SPDX-License-Identifier: Unlicensed

pragma solidity >=0.7.0;
//priavte is used when only used in declared function
//internal used when we want to show in other contract but not in given conract but can be used in given contaract by function
//public means public
//using new call the function so can't able to use internal beacuse we are using new, not internally pass and even private can't use private is always private
contract rel{              //code of contratct
    uint public   val=4;
     function add() private view returns(uint){
        return val;
     }

}
 
contract rel2 {
    rel waste=new rel();
    function get() public view returns (uint){
        return waste.val();
    }
}
