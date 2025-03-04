//Write a solidity program that creates a contract hierarchy for employees of a company. The basec ontract should be Employee, with sub contracts are Manager,Developer and Programmer. Each sub contract should have properties such as name,address,salary, and job title. Implement function for calculating bonuses, generating performance reports and managing projects.

// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
contract Employee {
    string public name;
    string public employeeAddress;
    uint public salary;
    string public jobTitle;
    constructor(string memory _name, string memory _employeeAddress, uint _salary, string memory _jobTitle) {
        name = _name;
        employeeAddress = _employeeAddress;
        salary = _salary;
        jobTitle = _jobTitle;
    }
    function calculateBonus() public view returns (uint) {
        return salary / 10;
    }
    function generatePerformanceReport() public view returns (string memory) {
        return string(abi.encodePacked(name, " is performing well as a ", jobTitle));
    }
}
contract Manager is Employee {
    string public projectName;
    constructor(string memory _name, string memory _employeeAddress, uint _salary, string memory _jobTitle, string memory _projectName)
        Employee(_name, _employeeAddress, _salary, _jobTitle) {
        projectName = _projectName;
    }
    function manageProject(string memory newProjectName) public {
        projectName = newProjectName;
    }
}
contract Developer is Employee {
    string public programmingLanguage;
    constructor(string memory _name, string memory _employeeAddress, uint _salary, string memory _jobTitle, string memory _programmingLanguage)
        Employee(_name, _employeeAddress, _salary, _jobTitle) {
        programmingLanguage = _programmingLanguage;
    }
    function workOnCode() public view returns (string memory) {
        return string(abi.encodePacked(name, " is coding in ", programmingLanguage));
    }
}
contract Programmer is Employee {
    string public programmingLanguage;
    constructor(string memory _name, string memory _employeeAddress, uint _salary, string memory _jobTitle, string memory _programmingLanguage)
        Employee(_name, _employeeAddress, _salary, _jobTitle) {
        programmingLanguage = _programmingLanguage;
    }
    function writeCode() public view returns (string memory) {
        return string(abi.encodePacked(name, " is writing code in ", programmingLanguage));
    }
}
