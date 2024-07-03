# Project Title

Web3 ATM Contract and Interface

## Description

This project is a simple Web3 ATM application that allows users to interact with a smart contract deployed on the Ethereum blockchain. Users can connect their MetaMask wallet, deposit and withdraw Ether, check their balance, and transfer ownership of the contract to a new address.

## Getting Started

### Installing
After cloning the github, you will want to do the following to get the code running on your computer.

1. Inside the project directory, in the terminal type: npm i

2. Open two additional terminals in your VS code

3. In the second terminal type: npx hardhat node

4. In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js

5. Back in the first terminal, type npm run dev to launch the front-end.

After this, the project will be running on your localhost. 
Typically at http://localhost:3000/

6. Connect your MetaMask wallet.

7. Interact with the ATM by depositing and withdrawing Ether, checking your balance, and transferring ownership.

## Help

For common issues:

1. Ensure your MetaMask wallet is properly connected.
2. Make sure your smart contract is correctly deployed and the ABI is updated.
3. If you encounter issues with MetaMask, try switching networks or restarting your browser.

Command to display available scripts and commands:
```sh
npx hardhat help
```

## Authors

Contributors names and contact info:

- Himanshu Singh  
  [@the0riginalhim](https://github.com/the0riginalhim)

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
