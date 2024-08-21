// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { System } from "@latticexyz/world/src/System.sol";
import { Location, LocationData } from "../../codegen/index.sol";

/**
 * @title LocationSystem
 * @author CCP Games
 * LocationSystem stores the location of a smart object on-chain
 */
contract LocationSystem is System {
  /**
   * @dev creates a new location entry
   * @param smartObjectId smartObjectId of the in-game object
   * @param solarSystemId the solarSystemId of the location
   * @param x x coordinate of the location
   * @param y y coordinate of the location
   * @param z z coordinate of the location
   */
  function saveLocation(uint256 smartObjectId, uint256 solarSystemId, uint256 x, uint256 y, uint256 z) public {
    Location.set(smartObjectId, solarSystemId, x, y, z);
  }

  /**
   * @dev updates the solar system id of the in-game object
   * @param smartObjectId smartObjectId of the in-game object
   * @param solarSystemId the solarSystemId of the location
   */
  function setSolarSystemId(uint256 smartObjectId, uint256 solarSystemId) public {
    Location.setSolarSystemId(smartObjectId, solarSystemId);
  }

  /**
   * @dev updates the x coordinate of the in-game object
   * @param smartObjectId smartObjectId of the in-game object
   * @param x x coordinate of the location
   */
  function setX(uint256 smartObjectId, uint256 x) public {
    Location.setX(smartObjectId, x);
  }

  /**
   * @dev updates the y coordinate of the in-game object
   * @param smartObjectId smartObjectId of the in-game object
   * @param y y coordinate of the location
   */
  function setY(uint256 smartObjectId, uint256 y) public {
    Location.setY(smartObjectId, y);
  }

  /**
   * @dev updates the z coordinate of the in-game object
   * @param smartObjectId smartObjectId of the in-game object
   * @param z z coordinate of the location
   */

  function setZ(uint256 smartObjectId, uint256 z) public {
    Location.setZ(smartObjectId, z);
  }
}