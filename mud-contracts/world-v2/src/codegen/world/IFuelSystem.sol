// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

/**
 * @title IFuelSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface IFuelSystem {
  error Fuel_NoFuel(uint256 smartObjectId);
  error Fuel_ExceedsMaxCapacity(uint256 smartObjectId, uint256 maxCapacity, uint256 fuelAmount);
  error Fuel_InvalidFuelConsumptionInterval(uint256 smartObjectId);

  function configureFuelParameters(
    uint256 smartObjectId,
    uint256 fuelUnitVolume,
    uint256 fuelConsumptionIntervalInSeconds,
    uint256 fuelMaxCapacity,
    uint256 fuelAmount
  ) external;

  function setFuelUnitVolume(uint256 smartObjectId, uint256 fuelUnitVolume) external;

  function setFuelConsumptionIntervalInSeconds(
    uint256 smartObjectId,
    uint256 fuelConsumptionIntervalInSeconds
  ) external;

  function setFuelMaxCapacity(uint256 smartObjectId, uint256 fuelMaxCapacity) external;

  function setFuelAmount(uint256 smartObjectId, uint256 fuelAmountInWei) external;

  function depositFuel(uint256 smartObjectId, uint256 fuelAmount) external;

  function withdrawFuel(uint256 smartObjectId, uint256 fuelAmount) external;

  function updateFuel(uint256 smartObjectId) external;

  function currentFuelAmountInWei(uint256 smartObjectId) external view returns (uint256 amount);
}