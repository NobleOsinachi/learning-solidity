// SPDX-License-Identifier: MIT
pragma solidity >0.5.1;

/**
 * @title MyContract
 * @dev This is a Solidity smart contract written in the Ethereum blockchain programming language. It is named "MyContract" and contains two functions, "set" and "get", which allow a user to set and retrieve a string value, respectively. The contract is licensed under the MIT License and includes a custom development script that can be run with the command "dev-run-script file_path". When the contract is deployed, the initial value of the string is set to "default value".
 * @custom:dev-run-script file_path
 */
contract SendEther {
    // address public myAddress;

    // function setAddress(address _newAddress) public {
    //     myAddress = _newAddress;
    // }

    mapping(address => uint256) public balances;
    address payable public wallet;

    constructor(address payable _wallet) {
        wallet = _wallet;
    }

    // to allow code t
    function buyToken() public payable {
        // buy token

        balances[msg.sender] += 1;
        wallet.transfer(msg.value);

        //send ether to wallet
    }
}
