// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { EntityRecordData } from "./../../namespaces/evefrontier/systems/entity-record/types.sol";
import { SmartObjectData } from "./../../namespaces/evefrontier/systems/deployable/types.sol";
import { WorldPosition } from "./../../namespaces/evefrontier/systems/location/types.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

/**
 * @title ISmartGateSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ISmartGateSystem {
  error SmartGate_UndefinedClassId();
  error SmartGate_NotConfigured(uint256 smartObjectId);
  error SmartGate_GateAlreadyLinked(uint256 sourceGateId, uint256 destinationGateId);
  error SmartGate_GateNotLinked(uint256 sourceGateId, uint256 destinationGateId);
  error SmartGate_NotWithtinRange(uint256 sourceGateId, uint256 destinationGateId);
  error SmartGate_SameSourceAndDestination(uint256 sourceGateId, uint256 destinationGateId);

  function createAndAnchorSmartGate(
    uint256 smartObjectId,
    EntityRecordData memory entityRecordData,
    SmartObjectData memory smartObjectData,
    WorldPosition memory worldPosition,
    uint256 fuelUnitVolume,
    uint256 fuelConsumptionIntervalInSeconds,
    uint256 fuelMaxCapacity,
    uint256 maxDistance
  ) external;

  function linkSmartGates(uint256 sourceGateId, uint256 destinationGateId) external;

  function unlinkSmartGates(uint256 sourceGateId, uint256 destinationGateId) external;

  function configureSmartGate(uint256 smartObjectId, ResourceId systemId) external;

  function canJump(uint256 characterId, uint256 sourceGateId, uint256 destinationGateId) external returns (bool);

  function isGateLinked(uint256 sourceGateId, uint256 destinationGateId) external view returns (bool);

  function isWithinRange(uint256 sourceGateId, uint256 destinationGateId) external view returns (bool);
}