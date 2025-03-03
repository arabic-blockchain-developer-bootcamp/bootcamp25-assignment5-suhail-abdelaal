// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Assignment5 {
    // 1. Declare a public unsigned integer variable called `counter`
    uint256 public counter;

    // 2. Declare a public boolean variable called `isActive`
    bool public isActive;

    // 3. Create a public mapping from an address to a string called `userNames`
    mapping(address userAddr => string userName) userNames;

    // 4. Define a struct `User` with fields: `id` (uint), `name` (string)
    struct User {
        uint256 id;
        string name;
    }

    // 5. Create a public array of `User` called `users`
    User[] public users;

    // Constructor
    // Initialize `isActive` to true
    constructor() {
        isActive = true;
    }

    // Function to increment the counter
    // This function should:
    // - Be external
    // - Use a for loop to increment `counter` by 1 for 5 iterations
    function incrementCounter() external {
        for (uint8 i = 0; i < 5; ++i) {
            ++counter;
        }
    }


    // Function to toggle `isActive`
    // This function should:
    // - Be public
    // - Use an if statement to toggle `isActive` between true and false
    function toggleActive() public {
        isActive = !isActive;
    }

    // Function to add a user
    // This function should:
    // - Be public
    // - Take three parameters: `id` (uint) and `name` (string) and userAddress (address)
        // Hint: Define string as `string memory`
        // The memory keyword will be explained later
    // - Add a new user to the `users` array
    // - Update the `userNames` mapping with the address and name
    // Added the 3rd parameter `_addr`
    function addUser(uint256 _id, string memory _name, address _addr) public {
        users.push(User(_id, _name));
        userNames[_addr] = _name;
    }

    // Function to get the total number of users
    // This function should:
    // - Be public and view
    // - Return the length of the `users` array
    function getUserCount() public view returns(uint256) {
        return users.length;
    }
}
