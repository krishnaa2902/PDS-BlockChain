// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GrainDistribution {
    
    address public fciOwner;
    uint256 public fciStock;
    address public fpsOwner;
    uint256 public fpsStock;
    
    constructor() {
        fciOwner = msg.sender;
    }
    
    modifier onlyFciOwner {
        require(msg.sender == fciOwner, "Only the FCI owner can perform this action.");
        _;
    }
    
    modifier onlyFpsOwner {
        require(msg.sender == fpsOwner, "Only the FPS owner can perform this action.");
        _;
    }
    
    function provideGrainsToFps(uint256 amount) public onlyFciOwner {
        require(amount <= fciStock, "Not enough grains in FCI stock.");
        fciStock -= amount;
        fpsStock += amount;
    }
    
    function provideGrainsToPerson(uint256 amount) public onlyFpsOwner {
        require(amount <= fpsStock, "Not enough grains in FPS stock.");
        fpsStock -= amount;
        // transfer grains to person's address here
    }
    
    function setFciStock(uint256 amount) public onlyFciOwner {
        fciStock = amount;
    }
    
    function setFpsStock(uint256 amount) public onlyFpsOwner {
        fpsStock = amount;
    }

    function getFciStock() public view returns (uint256) {
        return fciStock;
    }

    function getFpsStock() public view returns (uint256) {
        return fpsStock;
    }
    
}
