// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Assessment {
    address payable public owner;
    uint256 public balance;

    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor(uint initBalance) payable {
        owner = payable(msg.sender);
        balance = initBalance;
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }

    function deposit(uint256 _amount) public payable {
        uint256 _previousBalance = balance;

        // Ensure the sender is the owner
        require(msg.sender == owner, "You are not the owner of this account");

        // Perform the transaction
        balance += _amount;

        // Assert the transaction completed successfully
        assert(balance == _previousBalance + _amount);

        // Emit the event
        emit Deposit(_amount);
    }

    // Custom error for insufficient balance
    error InsufficientBalance(uint256 balance, uint256 withdrawAmount);

    function withdraw(uint256 _withdrawAmount) public {
        uint256 _previousBalance = balance;

        // Ensure the sender is the owner
        require(msg.sender == owner, "You are not the owner of this account");

        // Check if there is sufficient balance
        if (balance < _withdrawAmount) {
            revert InsufficientBalance({
                balance: balance,
                withdrawAmount: _withdrawAmount
            });
        }

        // Perform the withdrawal
        balance -= _withdrawAmount;

        // Assert the balance is correct
        assert(balance == (_previousBalance - _withdrawAmount));

        // Emit the event
        emit Withdraw(_withdrawAmount);
    }

    function transferOwnership(address payable newOwner) public {
        // Ensure the sender is the owner
        require(msg.sender == owner, "You are not the owner of this contract");
        
        // Ensure the new owner is not the zero address
        require(newOwner != address(0), "New owner is the zero address");
        
        // Emit the ownership transfer event
        emit OwnershipTransferred(owner, newOwner);
        
        // Transfer ownership
        owner = newOwner;
    }
}
