/// Generated by the Protocol Buffers 3.2.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.13
/// Source file "any.proto"
/// Syntax "Proto3"

import Foundation

public extension Google.Protobuf{}

public extension Google.Protobuf {
    public struct AnyRoot {
        public static let `default` = AnyRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
            Google.Protobuf.SwiftDescriptorRoot.default.registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }

    /// `Any` contains an arbitrary serialized message along with a URL
    /// that describes the type of the serialized message.
    /// The proto runtimes and/or compiler will eventually
    ///  provide utilities to pack/unpack Any values (projected Q1/15).
    /// # JSON
    /// The JSON representation of an `Any` value uses the regular
    /// representation of the deserialized, embedded message, with an
    /// additional field `@type` which contains the type URL. Example:
    ///     package google.profile;
    ///     message Person {
    ///       string first_name = 1;
    ///       string last_name = 2;
    ///     }
    ///     {
    ///       "@type": "type.googleapis.com/google.profile.Person",
    ///       "firstName": <string>,
    ///       "lastName": <string>
    ///     }
    /// If the embedded message type is well-known and has a custom JSON
    /// representation, that representation will be embedded adding a field
    /// `value` which holds the custom JSON in addition to the the `@type`
    /// field. Example (for message [google.protobuf.Duration][google.protobuf.Duration]):
    ///     {
    ///       "@type": "type.googleapis.com/google.protobuf.Duration",
    ///       "value": "1.212s"
    ///     }
    final public class `Any` : GeneratedMessage {

        public static func == (lhs: Google.Protobuf.`Any`, rhs: Google.Protobuf.`Any`) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = fieldCheck && (lhs.hasTypeUrl == rhs.hasTypeUrl) && (!lhs.hasTypeUrl || lhs.typeUrl == rhs.typeUrl)
            fieldCheck = fieldCheck && (lhs.hasValue == rhs.hasValue) && (!lhs.hasValue || lhs.value == rhs.value)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        /// A URL/resource name whose content describes the type of the
        /// serialized message.
        /// For URLs which use the schema `http`, `https`, or no schema, the
        /// following restrictions and interpretations apply:
        /// * If no schema is provided, `https` is assumed.
        /// * The last segment of the URL's path must represent the fully
        ///   qualified name of the type (as in `path/google.protobuf.Duration`).
        /// * An HTTP GET on the URL must yield a [google.protobuf.Type][google.protobuf.Type]
        ///   value in binary format, or produce an error.
        /// * Applications are allowed to cache lookup results based on the
        ///   URL, or have them precompiled into a binary to avoid any
        ///   lookup. Therefore, binary compatibility needs to be preserved
        ///   on changes to types. (Use versioned type names to manage
        ///   breaking changes.)
        /// Schemas other than `http`, `https` (or the empty schema) might be
        /// used with implementation specific semantics.
        /// Types originating from the `google.*` package
        /// namespace should use `type.googleapis.com/full.type.name` (without
        /// schema and path). A type service will eventually become available which
        /// serves those URLs (projected Q2/15).
        public fileprivate(set) var typeUrl:String! = nil
        public fileprivate(set) var hasTypeUrl:Bool = false

        /// Must be valid serialized data of the above specified type.
        public fileprivate(set) var value:Data! = nil
        public fileprivate(set) var hasValue:Bool = false

        required public init() {
            super.init()
        }
        override public func isInitialized() -> Bool {
            return true
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            if hasTypeUrl {
                try codedOutputStream.writeString(fieldNumber: 1, value:typeUrl)
            }
            if hasValue {
                try codedOutputStream.writeData(fieldNumber: 2, value:value)
            }
            try unknownFields.writeTo(codedOutputStream: codedOutputStream)
        }
        override public func serializedSize() -> Int32 {
            var serialize_size:Int32 = memoizedSerializedSize
            if serialize_size != -1 {
             return serialize_size
            }

            serialize_size = 0
            if hasTypeUrl {
                serialize_size += typeUrl.computeStringSize(fieldNumber: 1)
            }
            if hasValue {
                serialize_size += value.computeDataSize(fieldNumber: 2)
            }
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> Google.Protobuf.`Any`.Builder {
            return Google.Protobuf.`Any`.classBuilder() as! Google.Protobuf.`Any`.Builder
        }
        public func getBuilder() -> Google.Protobuf.`Any`.Builder {
            return classBuilder() as! Google.Protobuf.`Any`.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Google.Protobuf.`Any`.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Google.Protobuf.`Any`.Builder()
        }
        public func toBuilder() throws -> Google.Protobuf.`Any`.Builder {
            return try Google.Protobuf.`Any`.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:Google.Protobuf.`Any`) throws -> Google.Protobuf.`Any`.Builder {
            return try Google.Protobuf.`Any`.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            guard isInitialized() else {
                throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
            }

            var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            if hasTypeUrl {
                jsonMap["typeUrl"] = typeUrl
            }
            if hasValue {
                jsonMap["value"] = value.base64EncodedString(options: Data.Base64EncodingOptions(rawValue: 0))
            }
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.`Any` {
            return try Google.Protobuf.`Any`.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data) throws -> Google.Protobuf.`Any` {
            return try Google.Protobuf.`Any`.Builder.fromJSONToBuilder(data:data).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            if hasTypeUrl {
                output += "\(indent) typeUrl: \(typeUrl) \n"
            }
            if hasValue {
                output += "\(indent) value: \(value) \n"
            }
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                if hasTypeUrl {
                    hashCode = (hashCode &* 31) &+ typeUrl.hashValue
                }
                if hasValue {
                    hashCode = (hashCode &* 31) &+ value.hashValue
                }
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "Google.Protobuf.`Any`"
        }
        override public func className() -> String {
            return "Google.Protobuf.`Any`"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:Google.Protobuf.`Any` = Google.Protobuf.`Any`()
            public func getMessage() -> Google.Protobuf.`Any` {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            /// A URL/resource name whose content describes the type of the
            /// serialized message.
            /// For URLs which use the schema `http`, `https`, or no schema, the
            /// following restrictions and interpretations apply:
            /// * If no schema is provided, `https` is assumed.
            /// * The last segment of the URL's path must represent the fully
            ///   qualified name of the type (as in `path/google.protobuf.Duration`).
            /// * An HTTP GET on the URL must yield a [google.protobuf.Type][google.protobuf.Type]
            ///   value in binary format, or produce an error.
            /// * Applications are allowed to cache lookup results based on the
            ///   URL, or have them precompiled into a binary to avoid any
            ///   lookup. Therefore, binary compatibility needs to be preserved
            ///   on changes to types. (Use versioned type names to manage
            ///   breaking changes.)
            /// Schemas other than `http`, `https` (or the empty schema) might be
            /// used with implementation specific semantics.
            /// Types originating from the `google.*` package
            /// namespace should use `type.googleapis.com/full.type.name` (without
            /// schema and path). A type service will eventually become available which
            /// serves those URLs (projected Q2/15).
            public var typeUrl:String {
                get {
                    return builderResult.typeUrl
                }
                set (value) {
                    builderResult.hasTypeUrl = true
                    builderResult.typeUrl = value
                }
            }
            public var hasTypeUrl:Bool {
                get {
                    return builderResult.hasTypeUrl
                }
            }
            @discardableResult
            public func setTypeUrl(_ value:String) -> Google.Protobuf.`Any`.Builder {
                self.typeUrl = value
                return self
            }
            @discardableResult
            public func clearTypeUrl() -> Google.Protobuf.`Any`.Builder{
                builderResult.hasTypeUrl = false
                builderResult.typeUrl = nil
                return self
            }
            /// Must be valid serialized data of the above specified type.
            public var value:Data {
                get {
                    return builderResult.value
                }
                set (value) {
                    builderResult.hasValue = true
                    builderResult.value = value
                }
            }
            public var hasValue:Bool {
                get {
                    return builderResult.hasValue
                }
            }
            @discardableResult
            public func setValue(_ value:Data) -> Google.Protobuf.`Any`.Builder {
                self.value = value
                return self
            }
            @discardableResult
            public func clearValue() -> Google.Protobuf.`Any`.Builder{
                builderResult.hasValue = false
                builderResult.value = nil
                return self
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> Google.Protobuf.`Any`.Builder {
                builderResult = Google.Protobuf.`Any`()
                return self
            }
            override public func clone() throws -> Google.Protobuf.`Any`.Builder {
                return try Google.Protobuf.`Any`.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> Google.Protobuf.`Any` {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> Google.Protobuf.`Any` {
                let returnMe:Google.Protobuf.`Any` = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:Google.Protobuf.`Any`) throws -> Google.Protobuf.`Any`.Builder {
                if other == Google.Protobuf.`Any`() {
                    return self
                }
                if other.hasTypeUrl {
                    typeUrl = other.typeUrl
                }
                if other.hasValue {
                    value = other.value
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.`Any`.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.`Any`.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    case 10:
                        typeUrl = try codedInputStream.readString()

                    case 18:
                        value = try codedInputStream.readData()

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Google.Protobuf.`Any`.Builder {
                let resultDecodedBuilder = Google.Protobuf.`Any`.Builder()
                if let jsonValueTypeUrl = jsonMap["typeUrl"] as? String {
                    resultDecodedBuilder.typeUrl = jsonValueTypeUrl
                }
                if let jsonValueValue = jsonMap["value"] as? String {
                    resultDecodedBuilder.value = Data(base64Encoded:jsonValueValue, options: Data.Base64DecodingOptions(rawValue:0))!
                }
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data) throws -> Google.Protobuf.`Any`.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try Google.Protobuf.`Any`.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension Google.Protobuf.`Any`: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Google.Protobuf.`Any`> {
        var mergedArray = Array<Google.Protobuf.`Any`>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Google.Protobuf.`Any`? {
        return try Google.Protobuf.`Any`.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Google.Protobuf.`Any` {
        return try Google.Protobuf.`Any`.Builder().mergeFrom(data: data, extensionRegistry:Google.Protobuf.AnyRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.`Any` {
        return try Google.Protobuf.`Any`.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Google.Protobuf.`Any` {
        return try Google.Protobuf.`Any`.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.`Any` {
        return try Google.Protobuf.`Any`.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Google.Protobuf.`Any` {
        return try Google.Protobuf.`Any`.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Google.Protobuf.`Any` {
        return try Google.Protobuf.`Any`.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "typeUrl": return self.typeUrl
        case "value": return self.value
        default: return nil
        }
    }
}
extension Google.Protobuf.`Any`.Builder: GeneratedMessageBuilderProtocol {
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "typeUrl": return self.typeUrl
            case "value": return self.value
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "typeUrl":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.typeUrl = newSubscriptValue
            case "value":
                guard let newSubscriptValue = newSubscriptValue as? Data else {
                    return
                }
                self.value = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
