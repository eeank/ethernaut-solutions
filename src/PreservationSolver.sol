pragma solidity ^0.8.0;

// Simple library contract to set the time
contract PreservationSolver {
  uint256 a;
  uint256 b;
  // stores a timestamp 
  uint storedTime;  

  function setTime(uint _time) public {
    storedTime = _time;
  }
}