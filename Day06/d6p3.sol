// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

abstract contract Shape {
    function getPerimeter() public virtual view returns (uint);
    function getArea() public virtual view returns (uint);
}
contract Circle is Shape {
    uint public radius;
    
    constructor(uint _radius) {
        radius = _radius;
    }
    function getPerimeter() public override view returns (uint) {
        return 2 * 3 * radius;
    }
    function getArea() public override view returns (uint) {
        return 3 * radius * radius;
    }
}
contract Rectangle is Shape {
    uint public length;
    uint public width;
    constructor(uint _length, uint _width) {
        length = _length;
        width = _width;
    }
    function getPerimeter() public override view returns (uint) {
        return 2 * (length + width);
    }
    function getArea() public override view returns (uint) {
        return length * width;
    }
}
contract Triangle is Shape {
    uint public a;
    uint public b;
    uint public c;
    uint public height;
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
