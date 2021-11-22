// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// Contrato hecho con openzeppelin
// Video Tutorial: https://www.youtube.com/watch?v=gk_EXjq6kxY
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Ozicoin is ERC20, ERC20Burnable, Pausable, Ownable {
    constructor() ERC20("Ozicoin", "OZI") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    // generate token
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function _beforeTokenTransfer(address from, address to, uint256 amount)
        internal
        whenNotPaused
        override
    {
        super._beforeTokenTransfer(from, to, amount);
    }
}
