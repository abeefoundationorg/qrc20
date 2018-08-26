pragma solidity ^0.4.24;

import "https://github.com/abeefoundationorg/openzeppelin-solidity/contracts/token/ERC20/StandardBurnableToken.sol";


contract ABXToken is StandardBurnableToken {

  string public constant name = "ABEE";
  string public constant symbol = "ABX";
  uint8 public constant decimals = 8;

  uint256 public constant INITIAL_SUPPLY = 3*10**9*10**uint256(decimals);

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    emit Transfer(address(0), msg.sender, INITIAL_SUPPLY);
  }

}
