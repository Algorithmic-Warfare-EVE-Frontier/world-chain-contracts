// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { EntityRecordData, WorldPosition } from "../../modules/smart-storage-unit/types.sol";
import { SmartObjectData } from "../../modules/smart-deployable/types.sol";
import { InventoryItem } from "../../modules/inventory/types.sol";

/**
 * @title ISmartStorageUnitSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ISmartStorageUnitSystem {
  error SmartStorageUnitERC721AlreadyInitialized();

  function eveworld__createAndAnchorSmartStorageUnit(
    uint256 smartObjectId,
    EntityRecordData memory entityRecordData,
    SmartObjectData memory smartObjectData,
    WorldPosition memory worldPosition,
    uint256 fuelUnitVolume,
    uint256 fuelConsumptionIntervalInSeconds,
    uint256 fuelMaxCapacity,
    uint256 storageCapacity,
    uint256 ephemeralStorageCapacity
  ) external;

  function eveworld__createAndDepositItemsToInventory(uint256 smartObjectId, InventoryItem[] memory items) external;

  function eveworld__createAndDepositItemsToEphemeralInventory(
    uint256 smartObjectId,
    address ephemeralInventoryOwner,
    InventoryItem[] memory items
  ) external;

  function eveworld__setSSUClassId(uint256 classId) external;

  function eveworld__setDeployableMetadata(
    uint256 smartObjectId,
    string memory name,
    string memory dappURL,
    string memory description
  ) external;
}