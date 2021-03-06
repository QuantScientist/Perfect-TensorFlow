// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/grappler/costs/op_performance_data.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2017 The TensorFlow Authors. All Rights Reserved.
//
//Licensed under the Apache License, Version 2.0 (the "License");
//you may not use this file except in compliance with the License.
//You may obtain a copy of the License at
//
//http://www.apache.org/licenses/LICENSE-2.0
//
//Unless required by applicable law or agreed to in writing, software
//distributed under the License is distributed on an "AS IS" BASIS,
//WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//See the License for the specific language governing permissions and
//limitations under the License.
//==============================================================================

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Description of an operation as well as the parameters expected to impact its
/// performance.
public struct Tensorflow_OpInfo: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".OpInfo"

  /// The operation name.  There may be custom parameters in attrs.
  var op: String {
    get {return _storage._op}
    set {_uniqueStorage()._op = newValue}
  }

  /// Custom parameters impacting the behavior of the op.
  var attr: Dictionary<String,Tensorflow_AttrValue> {
    get {return _storage._attr}
    set {_uniqueStorage()._attr = newValue}
  }

  var inputs: [Tensorflow_OpInfo.TensorProperties] {
    get {return _storage._inputs}
    set {_uniqueStorage()._inputs = newValue}
  }

  /// Device on which the operation is run.
  var device: Tensorflow_DeviceProperties {
    get {return _storage._device ?? Tensorflow_DeviceProperties()}
    set {_uniqueStorage()._device = newValue}
  }
  /// Returns true if `device` has been explicitly set.
  var hasDevice: Bool {return _storage._device != nil}
  /// Clears the value of `device`. Subsequent reads from it will return its default value.
  mutating func clearDevice() {_storage._device = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Input types, shapes and values if known.
  struct TensorProperties: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_OpInfo.protoMessageName + ".TensorProperties"

    var dtype: Tensorflow_DataType {
      get {return _storage._dtype}
      set {_uniqueStorage()._dtype = newValue}
    }

    var shape: Tensorflow_TensorShapeProto {
      get {return _storage._shape ?? Tensorflow_TensorShapeProto()}
      set {_uniqueStorage()._shape = newValue}
    }
    /// Returns true if `shape` has been explicitly set.
    var hasShape: Bool {return _storage._shape != nil}
    /// Clears the value of `shape`. Subsequent reads from it will return its default value.
    mutating func clearShape() {_storage._shape = nil}

    var value: Tensorflow_TensorProto {
      get {return _storage._value ?? Tensorflow_TensorProto()}
      set {_uniqueStorage()._value = newValue}
    }
    /// Returns true if `value` has been explicitly set.
    var hasValue: Bool {return _storage._value != nil}
    /// Clears the value of `value`. Subsequent reads from it will return its default value.
    mutating func clearValue() {_storage._value = nil}

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      _ = _uniqueStorage()
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        while let fieldNumber = try decoder.nextFieldNumber() {
          switch fieldNumber {
          case 1: try decoder.decodeSingularEnumField(value: &_storage._dtype)
          case 2: try decoder.decodeSingularMessageField(value: &_storage._shape)
          case 3: try decoder.decodeSingularMessageField(value: &_storage._value)
          default: break
          }
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
        if _storage._dtype != .dtInvalid {
          try visitor.visitSingularEnumField(value: _storage._dtype, fieldNumber: 1)
        }
        if let v = _storage._shape {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
        }
        if let v = _storage._value {
          try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
        }
      }
      try unknownFields.traverse(visitor: &visitor)
    }

    fileprivate var _storage = _StorageClass.defaultInstance
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularStringField(value: &_storage._op)
        case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_AttrValue>.self, value: &_storage._attr)
        case 3: try decoder.decodeRepeatedMessageField(value: &_storage._inputs)
        case 4: try decoder.decodeSingularMessageField(value: &_storage._device)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._op.isEmpty {
        try visitor.visitSingularStringField(value: _storage._op, fieldNumber: 1)
      }
      if !_storage._attr.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_AttrValue>.self, value: _storage._attr, fieldNumber: 2)
      }
      if !_storage._inputs.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._inputs, fieldNumber: 3)
      }
      if let v = _storage._device {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Performance data for tensorflow operations
public struct Tensorflow_OpPerformance: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".OpPerformance"

  /// The op
  var op: Tensorflow_OpInfo {
    get {return _storage._op ?? Tensorflow_OpInfo()}
    set {_uniqueStorage()._op = newValue}
  }
  /// Returns true if `op` has been explicitly set.
  var hasOp: Bool {return _storage._op != nil}
  /// Clears the value of `op`. Subsequent reads from it will return its default value.
  mutating func clearOp() {_storage._op = nil}

  /// The node name (optional). Makes it easier to associate the performance data
  /// with a specific graph node.
  var node: String {
    get {return _storage._node}
    set {_uniqueStorage()._node = newValue}
  }

  /// Temporary memory used by this node (in bytes).
  var temporaryMemorySize: Int64 {
    get {return _storage._temporaryMemorySize}
    set {_uniqueStorage()._temporaryMemorySize = newValue}
  }

  /// Time it takes to run the op (in nanoseconds).
  var computeCost: Int64 {
    get {return _storage._computeCost}
    set {_uniqueStorage()._computeCost = newValue}
  }

  /// Analytical compute cost (in nanoseconds).
  var computeTime: Int64 {
    get {return _storage._computeTime}
    set {_uniqueStorage()._computeTime = newValue}
  }

  /// Analytical memory access cost (in nanoseconds).
  var memoryTime: Int64 {
    get {return _storage._memoryTime}
    set {_uniqueStorage()._memoryTime = newValue}
  }

  /// Percentage of theoretical compute performance.
  var computeEfficiency: Double {
    get {return _storage._computeEfficiency}
    set {_uniqueStorage()._computeEfficiency = newValue}
  }

  /// Percentage of theoretical memory performance.
  var memoryEfficiency: Double {
    get {return _storage._memoryEfficiency}
    set {_uniqueStorage()._memoryEfficiency = newValue}
  }

  var opMemory: Tensorflow_OpPerformance.OpMemory {
    get {return _storage._opMemory ?? Tensorflow_OpPerformance.OpMemory()}
    set {_uniqueStorage()._opMemory = newValue}
  }
  /// Returns true if `opMemory` has been explicitly set.
  var hasOpMemory: Bool {return _storage._opMemory != nil}
  /// Clears the value of `opMemory`. Subsequent reads from it will return its default value.
  mutating func clearOpMemory() {_storage._opMemory = nil}

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  /// Memory usage data for a tensorflow operation.
  struct OpMemory: SwiftProtobuf.Message {
    public static let protoMessageName: String = Tensorflow_OpPerformance.protoMessageName + ".OpMemory"

    /// The output information may have memory usage and output shapes.
    var outputMemory: [Int64] = []

    /// Temporary memory allocated by this node.
    var hostTempMemory: Int64 = 0

    var deviceTempMemory: Int64 = 0

    /// The persisted_memory doesn't include outputs.
    var hostPersistentMemory: Int64 = 0

    var devicePersistentMemory: Int64 = 0

    public var unknownFields = SwiftProtobuf.UnknownStorage()

    public init() {}

    /// Used by the decoding initializers in the SwiftProtobuf library, not generally
    /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
    /// initializers are defined in the SwiftProtobuf library. See the Message and
    /// Message+*Additions` files.
    public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeRepeatedInt64Field(value: &self.outputMemory)
        case 2: try decoder.decodeSingularInt64Field(value: &self.hostTempMemory)
        case 3: try decoder.decodeSingularInt64Field(value: &self.deviceTempMemory)
        case 4: try decoder.decodeSingularInt64Field(value: &self.hostPersistentMemory)
        case 5: try decoder.decodeSingularInt64Field(value: &self.devicePersistentMemory)
        default: break
        }
      }
    }

    /// Used by the encoding methods of the SwiftProtobuf library, not generally
    /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
    /// other serializer methods are defined in the SwiftProtobuf library. See the
    /// `Message` and `Message+*Additions` files.
    public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
      if !self.outputMemory.isEmpty {
        try visitor.visitPackedInt64Field(value: self.outputMemory, fieldNumber: 1)
      }
      if self.hostTempMemory != 0 {
        try visitor.visitSingularInt64Field(value: self.hostTempMemory, fieldNumber: 2)
      }
      if self.deviceTempMemory != 0 {
        try visitor.visitSingularInt64Field(value: self.deviceTempMemory, fieldNumber: 3)
      }
      if self.hostPersistentMemory != 0 {
        try visitor.visitSingularInt64Field(value: self.hostPersistentMemory, fieldNumber: 4)
      }
      if self.devicePersistentMemory != 0 {
        try visitor.visitSingularInt64Field(value: self.devicePersistentMemory, fieldNumber: 5)
      }
      try unknownFields.traverse(visitor: &visitor)
    }
  }

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        switch fieldNumber {
        case 1: try decoder.decodeSingularMessageField(value: &_storage._op)
        case 2: try decoder.decodeSingularInt64Field(value: &_storage._temporaryMemorySize)
        case 3: try decoder.decodeSingularInt64Field(value: &_storage._computeCost)
        case 4: try decoder.decodeSingularDoubleField(value: &_storage._computeEfficiency)
        case 5: try decoder.decodeSingularStringField(value: &_storage._node)
        case 6: try decoder.decodeSingularInt64Field(value: &_storage._computeTime)
        case 7: try decoder.decodeSingularInt64Field(value: &_storage._memoryTime)
        case 8: try decoder.decodeSingularDoubleField(value: &_storage._memoryEfficiency)
        case 9: try decoder.decodeSingularMessageField(value: &_storage._opMemory)
        default: break
        }
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if let v = _storage._op {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if _storage._temporaryMemorySize != 0 {
        try visitor.visitSingularInt64Field(value: _storage._temporaryMemorySize, fieldNumber: 2)
      }
      if _storage._computeCost != 0 {
        try visitor.visitSingularInt64Field(value: _storage._computeCost, fieldNumber: 3)
      }
      if _storage._computeEfficiency != 0 {
        try visitor.visitSingularDoubleField(value: _storage._computeEfficiency, fieldNumber: 4)
      }
      if !_storage._node.isEmpty {
        try visitor.visitSingularStringField(value: _storage._node, fieldNumber: 5)
      }
      if _storage._computeTime != 0 {
        try visitor.visitSingularInt64Field(value: _storage._computeTime, fieldNumber: 6)
      }
      if _storage._memoryTime != 0 {
        try visitor.visitSingularInt64Field(value: _storage._memoryTime, fieldNumber: 7)
      }
      if _storage._memoryEfficiency != 0 {
        try visitor.visitSingularDoubleField(value: _storage._memoryEfficiency, fieldNumber: 8)
      }
      if let v = _storage._opMemory {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// A collection of OpPerformance data points.
public struct Tensorflow_OpPerformanceList: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".OpPerformanceList"

  var opPerformance: [Tensorflow_OpPerformance] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.opPerformance)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.opPerformance.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.opPerformance, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_OpInfo: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "op"),
    2: .same(proto: "attr"),
    3: .same(proto: "inputs"),
    4: .same(proto: "device"),
  ]

  fileprivate class _StorageClass {
    var _op: String = String()
    var _attr: Dictionary<String,Tensorflow_AttrValue> = [:]
    var _inputs: [Tensorflow_OpInfo.TensorProperties] = []
    var _device: Tensorflow_DeviceProperties? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _op = source._op
      _attr = source._attr
      _inputs = source._inputs
      _device = source._device
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_OpInfo) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._op != other_storage._op {return false}
        if _storage._attr != other_storage._attr {return false}
        if _storage._inputs != other_storage._inputs {return false}
        if _storage._device != other_storage._device {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_OpInfo.TensorProperties: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "dtype"),
    2: .same(proto: "shape"),
    3: .same(proto: "value"),
  ]

  fileprivate class _StorageClass {
    var _dtype: Tensorflow_DataType = .dtInvalid
    var _shape: Tensorflow_TensorShapeProto? = nil
    var _value: Tensorflow_TensorProto? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _dtype = source._dtype
      _shape = source._shape
      _value = source._value
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_OpInfo.TensorProperties) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._dtype != other_storage._dtype {return false}
        if _storage._shape != other_storage._shape {return false}
        if _storage._value != other_storage._value {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_OpPerformance: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "op"),
    5: .same(proto: "node"),
    2: .standard(proto: "temporary_memory_size"),
    3: .standard(proto: "compute_cost"),
    6: .standard(proto: "compute_time"),
    7: .standard(proto: "memory_time"),
    4: .standard(proto: "compute_efficiency"),
    8: .standard(proto: "memory_efficiency"),
    9: .standard(proto: "op_memory"),
  ]

  fileprivate class _StorageClass {
    var _op: Tensorflow_OpInfo? = nil
    var _node: String = String()
    var _temporaryMemorySize: Int64 = 0
    var _computeCost: Int64 = 0
    var _computeTime: Int64 = 0
    var _memoryTime: Int64 = 0
    var _computeEfficiency: Double = 0
    var _memoryEfficiency: Double = 0
    var _opMemory: Tensorflow_OpPerformance.OpMemory? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _op = source._op
      _node = source._node
      _temporaryMemorySize = source._temporaryMemorySize
      _computeCost = source._computeCost
      _computeTime = source._computeTime
      _memoryTime = source._memoryTime
      _computeEfficiency = source._computeEfficiency
      _memoryEfficiency = source._memoryEfficiency
      _opMemory = source._opMemory
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_OpPerformance) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._op != other_storage._op {return false}
        if _storage._node != other_storage._node {return false}
        if _storage._temporaryMemorySize != other_storage._temporaryMemorySize {return false}
        if _storage._computeCost != other_storage._computeCost {return false}
        if _storage._computeTime != other_storage._computeTime {return false}
        if _storage._memoryTime != other_storage._memoryTime {return false}
        if _storage._computeEfficiency != other_storage._computeEfficiency {return false}
        if _storage._memoryEfficiency != other_storage._memoryEfficiency {return false}
        if _storage._opMemory != other_storage._opMemory {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_OpPerformance.OpMemory: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "output_memory"),
    2: .standard(proto: "host_temp_memory"),
    3: .standard(proto: "device_temp_memory"),
    4: .standard(proto: "host_persistent_memory"),
    5: .standard(proto: "device_persistent_memory"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_OpPerformance.OpMemory) -> Bool {
    if self.outputMemory != other.outputMemory {return false}
    if self.hostTempMemory != other.hostTempMemory {return false}
    if self.deviceTempMemory != other.deviceTempMemory {return false}
    if self.hostPersistentMemory != other.hostPersistentMemory {return false}
    if self.devicePersistentMemory != other.devicePersistentMemory {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_OpPerformanceList: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "op_performance"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_OpPerformanceList) -> Bool {
    if self.opPerformance != other.opPerformance {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
