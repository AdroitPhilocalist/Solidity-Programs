
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
// Base contract for Vehicle
contract Vehicle {
    string public make;
    string public model;
    uint public year;
    string public fuelType;
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType) {
        make = _make;
        model = _model;
        year = _year;
        fuelType = _fuelType;
    }
    function calculateFuelEfficiency() public pure returns (uint) {
        return 15;
    }
    function distanceTraveled(uint fuelAmount) public pure returns (uint) {
        uint efficiency = calculateFuelEfficiency();
        return fuelAmount * efficiency;
    }
    function maxSpeed() public pure virtual returns (uint) {
        return 120;
    }
}
contract Truck is Vehicle {
    uint public loadCapacity;
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType, uint _loadCapacity)
        Vehicle(_make, _model, _year, _fuelType) {
        loadCapacity = _loadCapacity;
    }
    function maxSpeed() public pure override returns (uint) {
        return 80;
    }
}
contract Car is Vehicle {
    uint public passengerCapacity;
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType, uint _passengerCapacity)
        Vehicle(_make, _model, _year, _fuelType) {
        passengerCapacity = _passengerCapacity;
    }
    function maxSpeed() public pure override returns (uint) {
        return 180;
    }
}
contract Motorcycle is Vehicle {
    bool public hasSidecar;
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType, bool _hasSidecar)
        Vehicle(_make, _model, _year, _fuelType) {
        hasSidecar = _hasSidecar;
    }
    function maxSpeed() public pure override returns (uint) {
        return 220;
    }
}
