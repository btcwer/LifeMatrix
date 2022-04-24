// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract LMToken is ERC20 {

  constructor() ERC20("Life Matrix", "LM") {
    super._mint(_msgSender(), 10000000000*10**18);
  }

  function burn(uint256 amount) external {
    super._burn(_msgSender(), amount);
  }
}