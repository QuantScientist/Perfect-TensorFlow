// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/protobuf/control_flow.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

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

/// Protocol buffer representing the values in ControlFlowContext.
public struct Tensorflow_ValuesDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ValuesDef"

  /// Value names that have been seen in this context.
  var values: [String] = []

  /// Value names referenced by but external to this context.
  var externalValues: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedStringField(value: &self.values)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.externalValues)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.values.isEmpty {
      try visitor.visitRepeatedStringField(value: self.values, fieldNumber: 1)
    }
    if !self.externalValues.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.externalValues, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// Protocol buffer representing a CondContext object.
public struct Tensorflow_CondContextDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".CondContextDef"

  /// Name of the context.
  var contextName: String {
    get {return _storage._contextName}
    set {_uniqueStorage()._contextName = newValue}
  }

  /// Name of the pred tensor.
  var predName: String {
    get {return _storage._predName}
    set {_uniqueStorage()._predName = newValue}
  }

  /// Name of the pivot tensor.
  var pivotName: String {
    get {return _storage._pivotName}
    set {_uniqueStorage()._pivotName = newValue}
  }

  /// Branch prediction. 0 or 1.
  var branch: Int32 {
    get {return _storage._branch}
    set {_uniqueStorage()._branch = newValue}
  }

  /// Values and external values in control flow context.
  var valuesDef: Tensorflow_ValuesDef {
    get {return _storage._valuesDef ?? Tensorflow_ValuesDef()}
    set {_uniqueStorage()._valuesDef = newValue}
  }
  /// Returns true if `valuesDef` has been explicitly set.
  var hasValuesDef: Bool {return _storage._valuesDef != nil}
  /// Clears the value of `valuesDef`. Subsequent reads from it will return its default value.
  mutating func clearValuesDef() {_storage._valuesDef = nil}

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
        case 1: try decoder.decodeSingularStringField(value: &_storage._contextName)
        case 2: try decoder.decodeSingularStringField(value: &_storage._predName)
        case 3: try decoder.decodeSingularStringField(value: &_storage._pivotName)
        case 4: try decoder.decodeSingularInt32Field(value: &_storage._branch)
        case 5: try decoder.decodeSingularMessageField(value: &_storage._valuesDef)
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
      if !_storage._contextName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._contextName, fieldNumber: 1)
      }
      if !_storage._predName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._predName, fieldNumber: 2)
      }
      if !_storage._pivotName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._pivotName, fieldNumber: 3)
      }
      if _storage._branch != 0 {
        try visitor.visitSingularInt32Field(value: _storage._branch, fieldNumber: 4)
      }
      if let v = _storage._valuesDef {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Protocol buffer representing a WhileContext object.
public struct Tensorflow_WhileContextDef: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".WhileContextDef"

  /// Name of the context.
  var contextName: String {
    get {return _storage._contextName}
    set {_uniqueStorage()._contextName = newValue}
  }

  /// The number of iterations allowed to run in parallel.
  var parallelIterations: Int32 {
    get {return _storage._parallelIterations}
    set {_uniqueStorage()._parallelIterations = newValue}
  }

  /// Whether backprop is enabled for this while loop.
  var backProp: Bool {
    get {return _storage._backProp}
    set {_uniqueStorage()._backProp = newValue}
  }

  /// Whether GPU-CPU memory swap is enabled for this loop.
  var swapMemory: Bool {
    get {return _storage._swapMemory}
    set {_uniqueStorage()._swapMemory = newValue}
  }

  /// Name of the pivot tensor.
  var pivotName: String {
    get {return _storage._pivotName}
    set {_uniqueStorage()._pivotName = newValue}
  }

  /// Name of the pivot_for_pred tensor.
  var pivotForPredName: String {
    get {return _storage._pivotForPredName}
    set {_uniqueStorage()._pivotForPredName = newValue}
  }

  /// Name of the pivot_for_body tensor.
  var pivotForBodyName: String {
    get {return _storage._pivotForBodyName}
    set {_uniqueStorage()._pivotForBodyName = newValue}
  }

  /// List of names for exit tensors.
  var loopExitNames: [String] {
    get {return _storage._loopExitNames}
    set {_uniqueStorage()._loopExitNames = newValue}
  }

  /// List of names for enter tensors.
  var loopEnterNames: [String] {
    get {return _storage._loopEnterNames}
    set {_uniqueStorage()._loopEnterNames = newValue}
  }

  /// Values and external values in control flow context.
  var valuesDef: Tensorflow_ValuesDef {
    get {return _storage._valuesDef ?? Tensorflow_ValuesDef()}
    set {_uniqueStorage()._valuesDef = newValue}
  }
  /// Returns true if `valuesDef` has been explicitly set.
  var hasValuesDef: Bool {return _storage._valuesDef != nil}
  /// Clears the value of `valuesDef`. Subsequent reads from it will return its default value.
  mutating func clearValuesDef() {_storage._valuesDef = nil}

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
        case 1: try decoder.decodeSingularStringField(value: &_storage._contextName)
        case 2: try decoder.decodeSingularInt32Field(value: &_storage._parallelIterations)
        case 3: try decoder.decodeSingularBoolField(value: &_storage._backProp)
        case 4: try decoder.decodeSingularBoolField(value: &_storage._swapMemory)
        case 5: try decoder.decodeSingularStringField(value: &_storage._pivotName)
        case 6: try decoder.decodeSingularStringField(value: &_storage._pivotForPredName)
        case 7: try decoder.decodeSingularStringField(value: &_storage._pivotForBodyName)
        case 8: try decoder.decodeRepeatedStringField(value: &_storage._loopExitNames)
        case 9: try decoder.decodeSingularMessageField(value: &_storage._valuesDef)
        case 10: try decoder.decodeRepeatedStringField(value: &_storage._loopEnterNames)
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
      if !_storage._contextName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._contextName, fieldNumber: 1)
      }
      if _storage._parallelIterations != 0 {
        try visitor.visitSingularInt32Field(value: _storage._parallelIterations, fieldNumber: 2)
      }
      if _storage._backProp != false {
        try visitor.visitSingularBoolField(value: _storage._backProp, fieldNumber: 3)
      }
      if _storage._swapMemory != false {
        try visitor.visitSingularBoolField(value: _storage._swapMemory, fieldNumber: 4)
      }
      if !_storage._pivotName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._pivotName, fieldNumber: 5)
      }
      if !_storage._pivotForPredName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._pivotForPredName, fieldNumber: 6)
      }
      if !_storage._pivotForBodyName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._pivotForBodyName, fieldNumber: 7)
      }
      if !_storage._loopExitNames.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._loopExitNames, fieldNumber: 8)
      }
      if let v = _storage._valuesDef {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 9)
      }
      if !_storage._loopEnterNames.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._loopEnterNames, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_ValuesDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "values"),
    2: .standard(proto: "external_values"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_ValuesDef) -> Bool {
    if self.values != other.values {return false}
    if self.externalValues != other.externalValues {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_CondContextDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "context_name"),
    2: .standard(proto: "pred_name"),
    3: .standard(proto: "pivot_name"),
    4: .same(proto: "branch"),
    5: .standard(proto: "values_def"),
  ]

  fileprivate class _StorageClass {
    var _contextName: String = String()
    var _predName: String = String()
    var _pivotName: String = String()
    var _branch: Int32 = 0
    var _valuesDef: Tensorflow_ValuesDef? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _contextName = source._contextName
      _predName = source._predName
      _pivotName = source._pivotName
      _branch = source._branch
      _valuesDef = source._valuesDef
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_CondContextDef) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._contextName != other_storage._contextName {return false}
        if _storage._predName != other_storage._predName {return false}
        if _storage._pivotName != other_storage._pivotName {return false}
        if _storage._branch != other_storage._branch {return false}
        if _storage._valuesDef != other_storage._valuesDef {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_WhileContextDef: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "context_name"),
    2: .standard(proto: "parallel_iterations"),
    3: .standard(proto: "back_prop"),
    4: .standard(proto: "swap_memory"),
    5: .standard(proto: "pivot_name"),
    6: .standard(proto: "pivot_for_pred_name"),
    7: .standard(proto: "pivot_for_body_name"),
    8: .standard(proto: "loop_exit_names"),
    10: .standard(proto: "loop_enter_names"),
    9: .standard(proto: "values_def"),
  ]

  fileprivate class _StorageClass {
    var _contextName: String = String()
    var _parallelIterations: Int32 = 0
    var _backProp: Bool = false
    var _swapMemory: Bool = false
    var _pivotName: String = String()
    var _pivotForPredName: String = String()
    var _pivotForBodyName: String = String()
    var _loopExitNames: [String] = []
    var _loopEnterNames: [String] = []
    var _valuesDef: Tensorflow_ValuesDef? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _contextName = source._contextName
      _parallelIterations = source._parallelIterations
      _backProp = source._backProp
      _swapMemory = source._swapMemory
      _pivotName = source._pivotName
      _pivotForPredName = source._pivotForPredName
      _pivotForBodyName = source._pivotForBodyName
      _loopExitNames = source._loopExitNames
      _loopEnterNames = source._loopEnterNames
      _valuesDef = source._valuesDef
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_WhileContextDef) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._contextName != other_storage._contextName {return false}
        if _storage._parallelIterations != other_storage._parallelIterations {return false}
        if _storage._backProp != other_storage._backProp {return false}
        if _storage._swapMemory != other_storage._swapMemory {return false}
        if _storage._pivotName != other_storage._pivotName {return false}
        if _storage._pivotForPredName != other_storage._pivotForPredName {return false}
        if _storage._pivotForBodyName != other_storage._pivotForBodyName {return false}
        if _storage._loopExitNames != other_storage._loopExitNames {return false}
        if _storage._loopEnterNames != other_storage._loopEnterNames {return false}
        if _storage._valuesDef != other_storage._valuesDef {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
