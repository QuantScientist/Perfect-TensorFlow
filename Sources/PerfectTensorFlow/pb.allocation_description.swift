// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/core/framework/allocation_description.proto
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

public struct Tensorflow_AllocationDescription: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".AllocationDescription"

  /// Total number of bytes requested
  var requestedBytes: Int64 = 0

  /// Total number of bytes allocated if known
  var allocatedBytes: Int64 = 0

  /// Name of the allocator used
  var allocatorName: String = String()

  /// Identifier of the allocated buffer if known
  var allocationID: Int64 = 0

  /// Set if this tensor only has one remaining reference
  var hasSingleReference_p: Bool = false

  /// Address of the allocation.
  var ptr: UInt64 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.requestedBytes)
      case 2: try decoder.decodeSingularInt64Field(value: &self.allocatedBytes)
      case 3: try decoder.decodeSingularStringField(value: &self.allocatorName)
      case 4: try decoder.decodeSingularInt64Field(value: &self.allocationID)
      case 5: try decoder.decodeSingularBoolField(value: &self.hasSingleReference_p)
      case 6: try decoder.decodeSingularUInt64Field(value: &self.ptr)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.requestedBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.requestedBytes, fieldNumber: 1)
    }
    if self.allocatedBytes != 0 {
      try visitor.visitSingularInt64Field(value: self.allocatedBytes, fieldNumber: 2)
    }
    if !self.allocatorName.isEmpty {
      try visitor.visitSingularStringField(value: self.allocatorName, fieldNumber: 3)
    }
    if self.allocationID != 0 {
      try visitor.visitSingularInt64Field(value: self.allocationID, fieldNumber: 4)
    }
    if self.hasSingleReference_p != false {
      try visitor.visitSingularBoolField(value: self.hasSingleReference_p, fieldNumber: 5)
    }
    if self.ptr != 0 {
      try visitor.visitSingularUInt64Field(value: self.ptr, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "tensorflow"

extension Tensorflow_AllocationDescription: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "requested_bytes"),
    2: .standard(proto: "allocated_bytes"),
    3: .standard(proto: "allocator_name"),
    4: .standard(proto: "allocation_id"),
    5: .standard(proto: "has_single_reference"),
    6: .same(proto: "ptr"),
  ]

  public func _protobuf_generated_isEqualTo(other: Tensorflow_AllocationDescription) -> Bool {
    if self.requestedBytes != other.requestedBytes {return false}
    if self.allocatedBytes != other.allocatedBytes {return false}
    if self.allocatorName != other.allocatorName {return false}
    if self.allocationID != other.allocationID {return false}
    if self.hasSingleReference_p != other.hasSingleReference_p {return false}
    if self.ptr != other.ptr {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
