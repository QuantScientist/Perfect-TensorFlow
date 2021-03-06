// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/protobuf/saved_model.proto
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

/// SavedModel is the high level serialization format for TensorFlow Models.
/// See [todo: doc links, similar to session_bundle] for more information.
public struct Tensorflow_SavedModel: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".SavedModel"

  /// The schema version of the SavedModel instance. Used for versioning when
  /// making future changes to the specification/implementation. Initial value
  /// at release will be 1.
  var savedModelSchemaVersion: Int64 = 0

  /// One or more MetaGraphs.
  var metaGraphs: [Tensorflow_MetaGraphDef] = []

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.savedModelSchemaVersion)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.metaGraphs)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.savedModelSchemaVersion != 0 {
      try visitor.visitSingularInt64Field(value: self.savedModelSchemaVersion, fieldNumber: 1)
    }
    if !self.metaGraphs.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.metaGraphs, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_SavedModel: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "saved_model_schema_version"),
    2: .standard(proto: "meta_graphs"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_SavedModel) -> Bool {
    if self.savedModelSchemaVersion != other.savedModelSchemaVersion {return false}
    if self.metaGraphs != other.metaGraphs {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
