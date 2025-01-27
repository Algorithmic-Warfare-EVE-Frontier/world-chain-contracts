// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

library HasRole {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "evefrontier", name: "HasRole", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x746265766566726f6e74696572000000486173526f6c65000000000000000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x0001010001000000000000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of (bytes32, address)
  Schema constant _keySchema = Schema.wrap(0x003402005f610000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (bool)
  Schema constant _valueSchema = Schema.wrap(0x0001010060000000000000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](2);
    keyNames[0] = "role";
    keyNames[1] = "account";
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](1);
    fieldNames[0] = "hasRole";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get hasRole.
   */
  function getHasRole(bytes32 role, address account) internal view returns (bool hasRole) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Get hasRole.
   */
  function _getHasRole(bytes32 role, address account) internal view returns (bool hasRole) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Get hasRole.
   */
  function get(bytes32 role, address account) internal view returns (bool hasRole) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Get hasRole.
   */
  function _get(bytes32 role, address account) internal view returns (bool hasRole) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (_toBool(uint8(bytes1(_blob))));
  }

  /**
   * @notice Set hasRole.
   */
  function setHasRole(bytes32 role, address account, bool hasRole) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((hasRole)), _fieldLayout);
  }

  /**
   * @notice Set hasRole.
   */
  function _setHasRole(bytes32 role, address account, bool hasRole) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((hasRole)), _fieldLayout);
  }

  /**
   * @notice Set hasRole.
   */
  function set(bytes32 role, address account, bool hasRole) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((hasRole)), _fieldLayout);
  }

  /**
   * @notice Set hasRole.
   */
  function _set(bytes32 role, address account, bool hasRole) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((hasRole)), _fieldLayout);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord(bytes32 role, address account) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord(bytes32 role, address account) internal {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(bool hasRole) internal pure returns (bytes memory) {
    return abi.encodePacked(hasRole);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(bool hasRole) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(hasRole);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple(bytes32 role, address account) internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](2);
    _keyTuple[0] = role;
    _keyTuple[1] = bytes32(uint256(uint160(account)));

    return _keyTuple;
  }
}

/**
 * @notice Cast a value to a bool.
 * @dev Boolean values are encoded as uint8 (1 = true, 0 = false), but Solidity doesn't allow casting between uint8 and bool.
 * @param value The uint8 value to convert.
 * @return result The boolean value.
 */
function _toBool(uint8 value) pure returns (bool result) {
  assembly {
    result := value
  }
}
