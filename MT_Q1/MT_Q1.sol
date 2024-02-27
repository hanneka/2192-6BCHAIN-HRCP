// SPDX-License-Identifier: MIT
// Hanneka Rose C. Puri
pragma solidity ^0.8.3;

contract MQuizContract {
    address public owner;
    uint256 public age;
    uint256 public hoursWorked;
    uint256 public hourlyRate;
    uint256 public totalSalary;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only contract owner can call this function");
        _;
    }

    modifier validHourlyRate(uint256 _hourlyRate) {
        require(_hourlyRate > 0, "Hourly rate must be greater than zero");
        _;
    }

    modifier validHoursWorked(uint256 _hoursWorked) {
        require(_hoursWorked > 0, "Hours worked must be greater than zero");
        _;
    }

    constructor() {
        owner = msg.sender;
    }

    function setAge(uint256 _age) public {
        age = _age;
    }

    function setHrsWrk(uint256 _hoursWorked) public validHoursWorked(_hoursWorked) {
        hoursWorked = _hoursWorked;
    }

    function setRate(uint256 _hourlyRate) public  onlyOwner validHourlyRate(_hourlyRate) {
        hourlyRate = _hourlyRate;
    }

    function calculateTotSal() public  onlyOwner {
        require(hourlyRate > 0 && hoursWorked > 0, "Hourly rate and hours worked must be greater than zero");
        totalSalary = hourlyRate * hoursWorked;
    }
}