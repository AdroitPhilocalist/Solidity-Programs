
// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
// Base contract for Vehicle
contract Vehicle {
    string public make;
    string public model;
    uint public year;
    string public fuelType;

    // Constructor to initialize vehicle details
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType) {
        make = _make;
        model = _model;
        year = _year;
        fuelType = _fuelType;
    }

    // Function to calculate fuel efficiency (just a simple formula for demonstration)
    function calculateFuelEfficiency() public pure returns (uint) {
        // For simplicity, let's assume an arbitrary fuel efficiency
        return 15; // e.g., 15 km per liter
    }

    // Function to calculate distance traveled (based on fuel efficiency and fuel consumed)
    function distanceTraveled(uint fuelAmount) public pure returns (uint) {
        uint efficiency = calculateFuelEfficiency();
        return fuelAmount * efficiency; // Distance = Fuel Amount * Fuel Efficiency
    }

    // Function to get the maximum speed (returning a default value for simplicity)
    function maxSpeed() public pure virtual returns (uint) {
        return 120; // e.g., 120 km/h max speed
    }
}

// Contract for Truck that inherits from Vehicle
contract Truck is Vehicle {
    uint public loadCapacity;

    // Constructor for Truck
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType, uint _loadCapacity)
        Vehicle(_make, _model, _year, _fuelType) {
        loadCapacity = _loadCapacity;
    }

    // Override maxSpeed function to give a truck-specific max speed
    function maxSpeed() public pure override returns (uint) {
        return 80; // Trucks generally have a lower max speed
    }
}

// Contract for Car that inherits from Vehicle
contract Car is Vehicle {
    uint public passengerCapacity;

    // Constructor for Car
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType, uint _passengerCapacity)
        Vehicle(_make, _model, _year, _fuelType) {
        passengerCapacity = _passengerCapacity;
    }

    // Override maxSpeed function to give a car-specific max speed
    function maxSpeed() public pure override returns (uint) {
        return 180; // Cars generally have higher max speeds than trucks
    }
}

// Contract for Motorcycle that inherits from Vehicle
contract Motorcycle is Vehicle {
    bool public hasSidecar;

    // Constructor for Motorcycle
    constructor(string memory _make, string memory _model, uint _year, string memory _fuelType, bool _hasSidecar)
        Vehicle(_make, _model, _year, _fuelType) {
        hasSidecar = _hasSidecar;
    }

    // Override maxSpeed function to give a motorcycle-specific max speed
    function maxSpeed() public pure override returns (uint) {
        return 220; // Motorcycles typically have a high max speed
    }
}
