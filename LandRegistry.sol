// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract LandRegistry {
    struct Property {
        uint id;
        address owner;
        string details;
        bool isRegistered;
    }

    mapping(uint => Property) public properties;

    event LandRegistered(uint indexed id, address indexed owner, string details);
    event OwnershipTransferred(uint indexed id, address indexed previousOwner, address indexed newOwner);

    function registerLand(uint _id, string memory _details) public {
        require(!properties[_id].isRegistered, "Land already registered");
        properties[_id] = Property(_id, msg.sender, _details, true);
        emit LandRegistered(_id, msg.sender, _details);
    }

    function transferOwnership(uint _id, address _newOwner) public {
        require(properties[_id].isRegistered, "Land not registered");
        require(properties[_id].owner == msg.sender, "Only the owner can transfer");
        
        address previousOwner = properties[_id].owner;
        properties[_id].owner = _newOwner;
        
        emit OwnershipTransferred(_id, previousOwner, _newOwner);
    }

    function getLandDetails(uint _id) public view returns (address, string memory) {
        require(properties[_id].isRegistered, "Land not registered");
        return (properties[_id].owner, properties[_id].details);
    }
}
