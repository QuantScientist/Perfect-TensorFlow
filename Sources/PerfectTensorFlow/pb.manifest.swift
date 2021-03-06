// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/contrib/session_bundle/manifest.proto
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

/// Signatures of model export.
public struct Tensorflow_Serving_Signatures: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Signatures"

  /// Default signature of the graph.
  /// WARNING(break-tutorial-inline-code): The following code snippet is
  /// in-lined in tutorials, please update tutorial documents accordingly
  /// whenever code changes.
  var defaultSignature: Tensorflow_Serving_Signature {
    get {return _storage._defaultSignature ?? Tensorflow_Serving_Signature()}
    set {_uniqueStorage()._defaultSignature = newValue}
  }
  /// Returns true if `defaultSignature` has been explicitly set.
  var hasDefaultSignature: Bool {return _storage._defaultSignature != nil}
  /// Clears the value of `defaultSignature`. Subsequent reads from it will return its default value.
  mutating func clearDefaultSignature() {_storage._defaultSignature = nil}

  /// Named signatures of the graph.
  var namedSignatures: Dictionary<String,Tensorflow_Serving_Signature> {
    get {return _storage._namedSignatures}
    set {_uniqueStorage()._namedSignatures = newValue}
  }

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._defaultSignature)
        case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_Serving_Signature>.self, value: &_storage._namedSignatures)
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
      if let v = _storage._defaultSignature {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._namedSignatures.isEmpty {
        try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_Serving_Signature>.self, value: _storage._namedSignatures, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// A binding to a tensor including the name and, possibly in the future, type
/// or other metadata. For example, this may specify whether a tensor supports
/// batch vs single inference.
public struct Tensorflow_Serving_TensorBinding: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".TensorBinding"

  /// The name of the tensor to bind to.
  var tensorName: String = String()

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.tensorName)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.tensorName.isEmpty {
      try visitor.visitSingularStringField(value: self.tensorName, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// An asset file or set of sharded files with the same name that will be bound
/// to a tensor at init / session_bundle load time.
public struct Tensorflow_Serving_AssetFile: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AssetFile"

  /// The tensor to bind the asset filename to.
  var tensorBinding: Tensorflow_Serving_TensorBinding {
    get {return _storage._tensorBinding ?? Tensorflow_Serving_TensorBinding()}
    set {_uniqueStorage()._tensorBinding = newValue}
  }
  /// Returns true if `tensorBinding` has been explicitly set.
  var hasTensorBinding: Bool {return _storage._tensorBinding != nil}
  /// Clears the value of `tensorBinding`. Subsequent reads from it will return its default value.
  mutating func clearTensorBinding() {_storage._tensorBinding = nil}

  /// The filename within the assets directory. Note: does not include the base
  /// path or asset directory prefix. Base paths can and will change when models
  /// are deployed for serving.
  var filename: String {
    get {return _storage._filename}
    set {_uniqueStorage()._filename = newValue}
  }

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._tensorBinding)
        case 2: try decoder.decodeSingularStringField(value: &_storage._filename)
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
      if let v = _storage._tensorBinding {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if !_storage._filename.isEmpty {
        try visitor.visitSingularStringField(value: _storage._filename, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// A Signature specifies the inputs and outputs of commonly used graphs.
public struct Tensorflow_Serving_Signature: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Signature"

  var type: OneOf_Type? {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  var regressionSignature: Tensorflow_Serving_RegressionSignature {
    get {
      if case .regressionSignature(let v)? = _storage._type {return v}
      return Tensorflow_Serving_RegressionSignature()
    }
    set {_uniqueStorage()._type = .regressionSignature(newValue)}
  }

  var classificationSignature: Tensorflow_Serving_ClassificationSignature {
    get {
      if case .classificationSignature(let v)? = _storage._type {return v}
      return Tensorflow_Serving_ClassificationSignature()
    }
    set {_uniqueStorage()._type = .classificationSignature(newValue)}
  }

  var genericSignature: Tensorflow_Serving_GenericSignature {
    get {
      if case .genericSignature(let v)? = _storage._type {return v}
      return Tensorflow_Serving_GenericSignature()
    }
    set {_uniqueStorage()._type = .genericSignature(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Type: Equatable {
    case regressionSignature(Tensorflow_Serving_RegressionSignature)
    case classificationSignature(Tensorflow_Serving_ClassificationSignature)
    case genericSignature(Tensorflow_Serving_GenericSignature)

    static func ==(lhs: Tensorflow_Serving_Signature.OneOf_Type, rhs: Tensorflow_Serving_Signature.OneOf_Type) -> Bool {
      switch (lhs, rhs) {
      case (.regressionSignature(let l), .regressionSignature(let r)): return l == r
      case (.classificationSignature(let l), .classificationSignature(let r)): return l == r
      case (.genericSignature(let l), .genericSignature(let r)): return l == r
      default: return false
      }
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
        case 1:
          var v: Tensorflow_Serving_RegressionSignature?
          if let current = _storage._type {
            try decoder.handleConflictingOneOf()
            if case .regressionSignature(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._type = .regressionSignature(v)}
        case 2:
          var v: Tensorflow_Serving_ClassificationSignature?
          if let current = _storage._type {
            try decoder.handleConflictingOneOf()
            if case .classificationSignature(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._type = .classificationSignature(v)}
        case 3:
          var v: Tensorflow_Serving_GenericSignature?
          if let current = _storage._type {
            try decoder.handleConflictingOneOf()
            if case .genericSignature(let m) = current {v = m}
          }
          try decoder.decodeSingularMessageField(value: &v)
          if let v = v {_storage._type = .genericSignature(v)}
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
      switch _storage._type {
      case .regressionSignature(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      case .classificationSignature(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      case .genericSignature(let v)?:
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      case nil: break
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// RegressionSignature specifies a graph that takes an input and returns an
/// output.
public struct Tensorflow_Serving_RegressionSignature: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".RegressionSignature"

  var input: Tensorflow_Serving_TensorBinding {
    get {return _storage._input ?? Tensorflow_Serving_TensorBinding()}
    set {_uniqueStorage()._input = newValue}
  }
  /// Returns true if `input` has been explicitly set.
  var hasInput: Bool {return _storage._input != nil}
  /// Clears the value of `input`. Subsequent reads from it will return its default value.
  mutating func clearInput() {_storage._input = nil}

  var output: Tensorflow_Serving_TensorBinding {
    get {return _storage._output ?? Tensorflow_Serving_TensorBinding()}
    set {_uniqueStorage()._output = newValue}
  }
  /// Returns true if `output` has been explicitly set.
  var hasOutput: Bool {return _storage._output != nil}
  /// Clears the value of `output`. Subsequent reads from it will return its default value.
  mutating func clearOutput() {_storage._output = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._input)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._output)
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
      if let v = _storage._input {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._output {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// ClassificationSignature specifies a graph that takes an input and returns
/// classes and their scores.
/// WARNING(break-tutorial-inline-code): The following code snippet is
/// in-lined in tutorials, please update tutorial documents accordingly
/// whenever code changes.
public struct Tensorflow_Serving_ClassificationSignature: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".ClassificationSignature"

  var input: Tensorflow_Serving_TensorBinding {
    get {return _storage._input ?? Tensorflow_Serving_TensorBinding()}
    set {_uniqueStorage()._input = newValue}
  }
  /// Returns true if `input` has been explicitly set.
  var hasInput: Bool {return _storage._input != nil}
  /// Clears the value of `input`. Subsequent reads from it will return its default value.
  mutating func clearInput() {_storage._input = nil}

  var classes: Tensorflow_Serving_TensorBinding {
    get {return _storage._classes ?? Tensorflow_Serving_TensorBinding()}
    set {_uniqueStorage()._classes = newValue}
  }
  /// Returns true if `classes` has been explicitly set.
  var hasClasses: Bool {return _storage._classes != nil}
  /// Clears the value of `classes`. Subsequent reads from it will return its default value.
  mutating func clearClasses() {_storage._classes = nil}

  var scores: Tensorflow_Serving_TensorBinding {
    get {return _storage._scores ?? Tensorflow_Serving_TensorBinding()}
    set {_uniqueStorage()._scores = newValue}
  }
  /// Returns true if `scores` has been explicitly set.
  var hasScores: Bool {return _storage._scores != nil}
  /// Clears the value of `scores`. Subsequent reads from it will return its default value.
  mutating func clearScores() {_storage._scores = nil}

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
        case 1: try decoder.decodeSingularMessageField(value: &_storage._input)
        case 2: try decoder.decodeSingularMessageField(value: &_storage._classes)
        case 3: try decoder.decodeSingularMessageField(value: &_storage._scores)
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
      if let v = _storage._input {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
      }
      if let v = _storage._classes {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      }
      if let v = _storage._scores {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  fileprivate var _storage = _StorageClass.defaultInstance
}

/// GenericSignature specifies a map from logical name to Tensor name.
/// Typical application of GenericSignature is to use a single GenericSignature
/// that includes all of the Tensor nodes and target names that may be useful at
/// serving, analysis or debugging time. The recommended name for this signature
/// in the ModelManifest is "generic_bindings".
public struct Tensorflow_Serving_GenericSignature: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".GenericSignature"

  var map: Dictionary<String,Tensorflow_Serving_TensorBinding> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_Serving_TensorBinding>.self, value: &self.map)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.map.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMessageMap<SwiftProtobuf.ProtobufString,Tensorflow_Serving_TensorBinding>.self, value: self.map, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow.serving"

extension Tensorflow_Serving_Signatures: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "default_signature"),
    2: .standard(proto: "named_signatures"),
  ]

  fileprivate class _StorageClass {
    var _defaultSignature: Tensorflow_Serving_Signature? = nil
    var _namedSignatures: Dictionary<String,Tensorflow_Serving_Signature> = [:]

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _defaultSignature = source._defaultSignature
      _namedSignatures = source._namedSignatures
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_Signatures) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._defaultSignature != other_storage._defaultSignature {return false}
        if _storage._namedSignatures != other_storage._namedSignatures {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_TensorBinding: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tensor_name"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_TensorBinding) -> Bool {
    if self.tensorName != other.tensorName {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_AssetFile: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "tensor_binding"),
    2: .same(proto: "filename"),
  ]

  fileprivate class _StorageClass {
    var _tensorBinding: Tensorflow_Serving_TensorBinding? = nil
    var _filename: String = String()

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _tensorBinding = source._tensorBinding
      _filename = source._filename
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_AssetFile) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._tensorBinding != other_storage._tensorBinding {return false}
        if _storage._filename != other_storage._filename {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_Signature: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "regression_signature"),
    2: .standard(proto: "classification_signature"),
    3: .standard(proto: "generic_signature"),
  ]

  fileprivate class _StorageClass {
    var _type: Tensorflow_Serving_Signature.OneOf_Type?

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _type = source._type
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_Signature) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._type != other_storage._type {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_RegressionSignature: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "input"),
    2: .same(proto: "output"),
  ]

  fileprivate class _StorageClass {
    var _input: Tensorflow_Serving_TensorBinding? = nil
    var _output: Tensorflow_Serving_TensorBinding? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _input = source._input
      _output = source._output
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_RegressionSignature) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._input != other_storage._input {return false}
        if _storage._output != other_storage._output {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_ClassificationSignature: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "input"),
    2: .same(proto: "classes"),
    3: .same(proto: "scores"),
  ]

  fileprivate class _StorageClass {
    var _input: Tensorflow_Serving_TensorBinding? = nil
    var _classes: Tensorflow_Serving_TensorBinding? = nil
    var _scores: Tensorflow_Serving_TensorBinding? = nil

    static let defaultInstance = _StorageClass()

    public init() {}

    init(copying source: _StorageClass) {
      _input = source._input
      _classes = source._classes
      _scores = source._scores
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_ClassificationSignature) -> Bool {
    if _storage !== other._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((_storage, other._storage)) { (_storage, other_storage) -> Bool in
        if _storage._input != other_storage._input {return false}
        if _storage._classes != other_storage._classes {return false}
        if _storage._scores != other_storage._scores {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension Tensorflow_Serving_GenericSignature: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "map"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_Serving_GenericSignature) -> Bool {
    if self.map != other.map {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
