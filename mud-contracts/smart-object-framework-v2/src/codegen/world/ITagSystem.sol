// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

import { Id } from "../../libs/Id.sol";

/**
 * @title ITagSystem
 * @author MUD (https://mud.dev) by Lattice (https://lattice.xyz)
 * @dev This interface is automatically generated from the corresponding system contract. Do not edit manually.
 */
interface ITagSystem {
  function evefrontier__setSystemTag(Id entityId, Id systemTagId) external;

  function evefrontier__setSystemTags(Id entityId, Id[] memory systemTagIds) external;

  function evefrontier__removeSystemTag(Id entityId, Id systemTagId) external;

  function evefrontier__removeSystemTags(Id entityId, Id[] memory systemTagIds) external;
}