// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract Ishika {
    string public TokenName = "ISHIKA";
    string public tokenAbbrv = "IK";
    uint public totalSupply = 0;
    // mapping variable here
    mapping(address => uint) public balances;

    event Mint(address indexed _address, uint _value);
    event Burn(address indexed _address, uint _value);
    event Transfer(address indexed _from, address indexed _to, uint _value);

    // mint function
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
        emit Mint(_address, _value);
    }

    // burn function
    function burn(address _address, uint _value) public {
        require(balances[_address] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_address] -= _value;
        emit Burn(_address, _value);
    }


}

