// SPDX-License-Identifier: MIT
// Hanneka Rose C. Puri
pragma solidity ^0.8.0;

contract GradeContract {
    address public owner;
    string public name;
    uint256 public prelimGrade;
    uint256 public midtermGrade;
    uint256 public finalGrade;
    enum GradeStatus {Pass, Fail}
    GradeStatus public gradeStatus;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    modifier validGrade(uint256 _grade) {
        require(_grade >= 0 && _grade <= 100, "Invalid grade. Grade must be between 0 and 100");
        _;
    }

    event GradeComputed(string studentname, GradeStatus gradeStatus);

    constructor() {
        owner = msg.sender;
    }

    function setName(string calldata _name) external onlyOwner {
        name = _name;
    }

    function setPrelimGrade(uint256 _prelimgrade) external onlyOwner validGrade(_prelimgrade) {
        prelimGrade = _prelimgrade;
    }

    function setMidtermGrade(uint256 _midtermgrade) external onlyOwner validGrade(_midtermgrade) {
        midtermGrade = _midtermgrade;
    }

    function setFinalGrade(uint256 _finalgrade) external onlyOwner validGrade(_finalgrade) {
        finalGrade = _finalgrade;
    }

    function calculategrade() external onlyOwner {
        uint256 averageGrade = (prelimGrade + midtermGrade + finalGrade) / 3;
        if (averageGrade >= 50) {
            gradeStatus = GradeStatus.Pass;
        } else {
            gradeStatus = GradeStatus.Fail;
        }
        emit GradeComputed(name, gradeStatus);
    }
}