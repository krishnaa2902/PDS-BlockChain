// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0; 
import "truffle/console.sol";
contract FarmerDetails {
    string name;
    uint weight;

    function getFarmerDetails() public view returns (string memory, uint) {
        return (name , weight);
    }

    function setFarmerDetails(string memory _name,uint _weight)  public {
        name = _name;
        weight = _weight;
    }

}