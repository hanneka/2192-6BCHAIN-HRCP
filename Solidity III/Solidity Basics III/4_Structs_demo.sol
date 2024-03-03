// SPDX-License-Identifier: MIT
// Hanneka Puri
pragma solidity ^0.8.20;

import "./3_Structs_demo.sol";

contract CarContract {
    CarRegistry.Car public importedCar;
    CarRegistry.Car[] public importedCars;
    mapping(address => CarRegistry.Car[]) public importedCarsByOwner;
}