// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: tensorflow/contrib/tensorboard/graph_explorer/proto/graph_explorer.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

// Copyright 2015 The TensorFlow Authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the 'License');
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an 'AS IS' BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// =============================================================================

/// GraphExplorer is a tool that supports interactive, hierarchical visualization
/// of graphs. GraphExplorer renders graphs generated by TensorFlow represented
/// as GraphDef messages defined in tensorflow/core/framework/graph.proto. The
/// GraphDef proto does not allow for explicitly specifying visual attributes of
/// the graph such as color, line thickness, fonts, etc. This file introduces a
/// new proto for representing graphs and specifying visual attributes of graphs.
///
/// The structure of the Graph proto is given by the EBNF grammar below. Consult
/// the message definitions below for details.
///
///  graph ::= node* edge* node_attribute* metanode_attribute* edge_attribute*
///            graph_attribute*
///  node  ::= node_id node_attribute* metanode_attribute* node_data*
///  edge  ::= source_id target_id edge_attribute* edge_data*
///
/// A graph consists of a list of nodes and a list of edges and attributes for
/// nodes, edges and the graph. Attributes have a name and a value and are
/// represented as key-value pairs, with {"color", "blue"} being an example.
/// Attributes have a scope, where the broadest scope is the graph and the
/// narrowest is a node that has no internal structure.

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

/// There are two types of nodes. A 'metanode' contains other
/// nodes and a 'leaf node' has no internal structure.  The metanode containment
/// relationship is acyclic, meaning that if a metanode 'A' contains the metanode
/// 'B', then 'B' cannot contain 'A'.
struct GraphExplorer_Node: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Node"

  /// The identifier of a node is a sequence of strings separated by '/'. The
  /// identifier provides a unique name for a node and defines its hierarchical
  /// relation to other nodes.  If no label is provided  the last part of the
  /// identifier is used as a label.
  ///
  /// Example: In the graph below, metanodes are written with square brackets and
  /// leaf nodes with parentheses. The metanode 'node1' contains the leaf node
  /// 'node4' and the metanode 'node2', which contains the leaf node 'node3'.
  ///
  ///   [node1 [node2 (node3)] (node4)]
  ///
  /// The identifiers for these nodes are: "node1", "node1/node2",
  /// "node1/node2/node3", and "node1/node4".
  var name: String = String()

  /// A node attribute is information used by Graph Explorer to style a node.
  var nodeAttr: Dictionary<String,String> = [:]

  /// A metanode attribute is one that is inherited by all nodes inside the
  /// current metanode. If an attribute applies only to the current node and
  /// should not be inherited, it should be specified as a node attribute.
  var metanodeAttr: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.name)
      case 2: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.nodeAttr)
      case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.metanodeAttr)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if !self.nodeAttr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.nodeAttr, fieldNumber: 2)
    }
    if !self.metanodeAttr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.metanodeAttr, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

/// An edge consists of a source and a target node, specified by their
/// identifiers. An edge has attributes and data that are similar to node
/// attributes and node data. Edges do not form a hierarchy so there are no
/// metanode attributes.
struct GraphExplorer_Edge: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Edge"

  /// The source and target fields must have the format of a Node name.
  var source: String = String()

  var target: String = String()

  /// Edge attributes.
  var edgeAttr: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularStringField(value: &self.source)
      case 2: try decoder.decodeSingularStringField(value: &self.target)
      case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.edgeAttr)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.source.isEmpty {
      try visitor.visitSingularStringField(value: self.source, fieldNumber: 1)
    }
    if !self.target.isEmpty {
      try visitor.visitSingularStringField(value: self.target, fieldNumber: 2)
    }
    if !self.edgeAttr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.edgeAttr, fieldNumber: 3)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

struct GraphExplorer_Graph: SwiftProtobuf.Message {
  public static let protoMessageName: String = _protobuf_package + ".Graph"

  /// List of nodes in the graph.
  var node: [GraphExplorer_Node] = []

  /// List of edges in the graph.
  var edge: [GraphExplorer_Edge] = []

  /// Default values of node, metanode and edge attributes.
  var nodeAttr: Dictionary<String,String> = [:]

  var metanodeAttr: Dictionary<String,String> = [:]

  var edgeAttr: Dictionary<String,String> = [:]

  /// Graph attributes.
  var graphAttr: Dictionary<String,String> = [:]

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeRepeatedMessageField(value: &self.node)
      case 2: try decoder.decodeRepeatedMessageField(value: &self.edge)
      case 3: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.nodeAttr)
      case 4: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.metanodeAttr)
      case 5: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.edgeAttr)
      case 6: try decoder.decodeMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: &self.graphAttr)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.node.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.node, fieldNumber: 1)
    }
    if !self.edge.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.edge, fieldNumber: 2)
    }
    if !self.nodeAttr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.nodeAttr, fieldNumber: 3)
    }
    if !self.metanodeAttr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.metanodeAttr, fieldNumber: 4)
    }
    if !self.edgeAttr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.edgeAttr, fieldNumber: 5)
    }
    if !self.graphAttr.isEmpty {
      try visitor.visitMapField(fieldType: SwiftProtobuf._ProtobufMap<SwiftProtobuf.ProtobufString,SwiftProtobuf.ProtobufString>.self, value: self.graphAttr, fieldNumber: 6)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "graph_explorer"

extension GraphExplorer_Node: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .standard(proto: "node_attr"),
    3: .standard(proto: "metanode_attr"),
  ]

  public func _protobuf_generated_isEqualTo(other: GraphExplorer_Node) -> Bool {
    if self.name != other.name {return false}
    if self.nodeAttr != other.nodeAttr {return false}
    if self.metanodeAttr != other.metanodeAttr {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension GraphExplorer_Edge: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "source"),
    2: .same(proto: "target"),
    3: .standard(proto: "edge_attr"),
  ]

  public func _protobuf_generated_isEqualTo(other: GraphExplorer_Edge) -> Bool {
    if self.source != other.source {return false}
    if self.target != other.target {return false}
    if self.edgeAttr != other.edgeAttr {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}

extension GraphExplorer_Graph: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "node"),
    2: .same(proto: "edge"),
    3: .standard(proto: "node_attr"),
    4: .standard(proto: "metanode_attr"),
    5: .standard(proto: "edge_attr"),
    6: .standard(proto: "graph_attr"),
  ]

  public func _protobuf_generated_isEqualTo(other: GraphExplorer_Graph) -> Bool {
    if self.node != other.node {return false}
    if self.edge != other.edge {return false}
    if self.nodeAttr != other.nodeAttr {return false}
    if self.metanodeAttr != other.metanodeAttr {return false}
    if self.edgeAttr != other.edgeAttr {return false}
    if self.graphAttr != other.graphAttr {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
