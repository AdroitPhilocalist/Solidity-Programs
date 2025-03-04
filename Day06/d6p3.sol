// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

abstract contract Shape {
    function getPerimeter() public virtual view returns (uint);
    function getArea() public virtual view returns (uint);
}

// Circle contract inheriting from Shape
contract Circle is Shape {
    uint public radius;

    // Constructor to initialize radius
    constructor(uint _radius) {
        radius = _radius;
    }

    // Override getPerimeter() for Circle
    function getPerimeter() public override view returns (uint) {
        return 2 * 3 * radius; // Perimeter = 2 * π * r (approximate π = 3)
    }

    // Override getArea() for Circle
    function getArea() public override view returns (uint) {
        return 3 * radius * radius; // Area = π * r^2 (approximate π = 3)
    }
}

// Rectangle contract inheriting from Shape
contract Rectangle is Shape {
    uint public length;
    uint public width;

    // Constructor to initialize length and width
    constructor(uint _length, uint _width) {
        length = _length;
        width = _width;
    }

    // Override getPerimeter() for Rectangle
    function getPerimeter() public override view returns (uint) {
        return 2 * (length + width); // Perimeter = 2 * (l + w)
    }

    // Override getArea() for Rectangle
    function getArea() public override view returns (uint) {
        return length * width; // Area = l * w
    }
}

// Triangle contract inheriting from Shape
contract Triangle is Shape {
    uint public a;
    uint public b;
    uint public c;
    uint public height;

    // Constructor to initialize sides and height
    constructor(uint _a, uint _b, uint _c, uint _height) {
        a = _a;
        b = _b;
        c = _c;
        height = _height;
    }
    function getPerimeter() public override view returns (uint) {
        return a + b + c;
    }
    function getArea() public override view returns (uint) {
        return (a * height) / 2;
    }
}
