// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

interface Department {
    function printDepartmentDetails() external;
    function setDepartmentDetails(string memory deptName, string memory deptHead) external;
}

// Hostel contract with hostelName, hostelLocation, numberOfRooms and methods
contract Hostel {
    string public hostelName;
    string public hostelLocation;
    uint public numberOfRooms;

    // Methods to get and print hostel details
    function setHostelDetails(string memory _hostelName, string memory _hostelLocation, uint _numberOfRooms) public {
        hostelName = _hostelName;
        hostelLocation = _hostelLocation;
        numberOfRooms = _numberOfRooms;
    }

    function printHostelDetails() public view returns (string memory, string memory, uint) {
        return (hostelName, hostelLocation, numberOfRooms);
    }
}

// Student contract inherits the Hostel contract and implements the Department interface
contract Student is Hostel, Department {
    string public studentName;
    string public regdNo;
    string public electiveSubject;
    uint public avgMarks;

    // Department-specific attributes
    string public deptName;
    string public deptHead;

    // Data mapping to store student details by registration number
    mapping(string => Student) public students;

    // Function to set department details
    function setDepartmentDetails(string memory _deptName, string memory _deptHead) public override {
        deptName = _deptName;
        deptHead = _deptHead;
    }

    // Function to implement the abstract method to print department details
    function printDepartmentDetails() public override {
        emit DepartmentDetails(deptName, deptHead);
    }

    // Function to get student details
    function setStudentData(
        string memory _studentName,
        string memory _regdNo,
        string memory _electiveSubject,
        uint _avgMarks
    ) public {
        studentName = _studentName;
        regdNo = _regdNo;
        electiveSubject = _electiveSubject;
        avgMarks = _avgMarks;
    }

    // Function to print student details
    function printStudentData() public view returns (string memory, string memory, string memory, uint) {
        return (studentName, regdNo, electiveSubject, avgMarks);
    }

    // Function to migrate student (dummy implementation)
    function migrateStudent(string memory newHostelName) public {
        hostelName = newHostelName;
    }

    // Event for department details
    event DepartmentDetails(string deptName, string deptHead);
}

// Driver contract to handle menu-driven options
contract Driver {
    Student[] public studentList;

    // Function to admit new student
    function admitNewStudent(
        string memory _studentName,
        string memory _regdNo,
        string memory _electiveSubject,
        uint _avgMarks,
        string memory _deptName,
        string memory _deptHead,
        string memory _hostelName,
        string memory _hostelLocation,
        uint _numberOfRooms
    ) public {
        Student newStudent = new Student();
        newStudent.setDepartmentDetails(_deptName, _deptHead);
        newStudent.setStudentData(_studentName, _regdNo, _electiveSubject, _avgMarks);
        newStudent.setHostelDetails(_hostelName, _hostelLocation, _numberOfRooms);
        
        studentList.push(newStudent);
    }

    // Function to migrate student to a new hostel
    function migrateStudent(string memory _regdNo, string memory newHostelName) public {
        for (uint i = 0; i < studentList.length; i++) {
            if (keccak256(abi.encodePacked(studentList[i].regdNo())) == keccak256(abi.encodePacked(_regdNo))) {
                studentList[i].migrateStudent(newHostelName);
            }
        }
    }

    // Function to display details of a student by registration number
    function displayStudentDetails(string memory _regdNo) public view returns (string memory, string memory, string memory, uint, string memory, string memory, uint) {
        for (uint i = 0; i < studentList.length; i++) {
            if (keccak256(abi.encodePacked(studentList[i].regdNo())) == keccak256(abi.encodePacked(_regdNo))) {
                (string memory studentName, string memory regdNo, string memory electiveSubject, uint avgMarks) = studentList[i].printStudentData();
                (string memory hostelName, string memory hostelLocation, uint numberOfRooms) = studentList[i].printHostelDetails();
                return (studentName, regdNo, electiveSubject, avgMarks, hostelName, hostelLocation, numberOfRooms);
            }
        }
        revert("Student not found.");
    }
}
