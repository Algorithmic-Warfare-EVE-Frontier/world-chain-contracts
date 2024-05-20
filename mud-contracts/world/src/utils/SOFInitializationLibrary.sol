// SPDX-License-Identifier: MIT
pragma solidity >=0.8.21;

import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";
import { IBaseWorld } from "@latticexyz/world/src/codegen/interfaces/IBaseWorld.sol";
import { WorldResourceIdLib } from "@latticexyz/world/src/WorldResourceId.sol";

import { RESOURCE_SYSTEM } from "@latticexyz/world/src/worldResourceTypes.sol";

import { SMART_OBJECT_DEPLOYMENT_NAMESPACE } from "@eveworld/common-constants/src/constants.sol";

import { Utils as SOFUtils } from "@eveworld/smart-object-framework/src/utils.sol";
import { SMART_OBJECT_MODULE_NAME } from "@eveworld/smart-object-framework/src/constants.sol";

import { SmartObjectLib } from "@eveworld/smart-object-framework/src/SmartObjectLib.sol";
//Constants for Entity
uint8 constant OBJECT = 1;
uint8 constant CLASS = 2;

library SOFInitializationLibrary {
  using SmartObjectLib for SmartObjectLib.World;
  using SOFUtils for bytes14;

  /**
   * @notice registers and initialize the Smart Object Framework module. `CLASS` and `OBJECT` entityTypeIds are initialized too
   * @dev module must first be registered into MUD through either `mud deploy` and/or a `__Module` contract
   * or both
   * @param world interface
   */
  function initSOF(IBaseWorld world) internal {
    // TODO: decouple this
    // we can just forward this as-is since ModuleCore already handles re-registration errors
    ResourceId[] memory systemIds = new ResourceId[](3);
    systemIds[0] = SMART_OBJECT_DEPLOYMENT_NAMESPACE.entityCoreSystemId();
    systemIds[1] = SMART_OBJECT_DEPLOYMENT_NAMESPACE.moduleCoreSystemId();
    systemIds[2] = SMART_OBJECT_DEPLOYMENT_NAMESPACE.hookCoreSystemId();

    SmartObjectLib.World memory smartObject = SmartObjectLib.World({
      namespace: SMART_OBJECT_DEPLOYMENT_NAMESPACE,
      iface: world
    });
    smartObject.registerEVEModules(
      uint256(
        ResourceId.unwrap(
          WorldResourceIdLib.encode(RESOURCE_SYSTEM, SMART_OBJECT_DEPLOYMENT_NAMESPACE, SMART_OBJECT_MODULE_NAME)
        )
      ), //moduleId
      SMART_OBJECT_MODULE_NAME,
      systemIds
    );
    // setting up basic entity types
    smartObject.registerEntityType(CLASS, "Class");
    smartObject.registerEntityType(OBJECT, "Object");
    smartObject.registerEntityTypeAssociation(OBJECT, CLASS);
  }
}
