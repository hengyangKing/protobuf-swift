// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_import_lite.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


internal extension ProtobufUnittestImport{}

internal func == (lhs: ProtobufUnittestImport.ImportMessageLite, rhs: ProtobufUnittestImport.ImportMessageLite) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

internal extension ProtobufUnittestImport {
  internal struct UnittestImportLiteRoot {
    internal static var sharedInstance : UnittestImportLiteRoot {
     struct Static {
         static let instance : UnittestImportLiteRoot = UnittestImportLiteRoot()
     }
     return Static.instance
    }
    internal var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
      ProtobufUnittestImport.UnittestImportPublicLiteRoot.sharedInstance.registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  internal enum ImportEnumLite:Int32 {
    case ImportLiteFoo = 7
    case ImportLiteBar = 8
    case ImportLiteBaz = 9
    internal func toString() -> String {
      switch self {
      case .ImportLiteFoo: return "IMPORT_LITE_FOO"
      case .ImportLiteBar: return "IMPORT_LITE_BAR"
      case .ImportLiteBaz: return "IMPORT_LITE_BAZ"
      }
    }
    internal static func fromString(str:String) throws -> ProtobufUnittestImport.ImportEnumLite {
      switch str {
      case "IMPORT_LITE_FOO":  return .ImportLiteFoo
      case "IMPORT_LITE_BAR":  return .ImportLiteBar
      case "IMPORT_LITE_BAZ":  return .ImportLiteBaz
      default: throw ProtocolBuffersError.InvalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
  }

  //Enum type declaration end 

  final internal class ImportMessageLite : GeneratedMessage, GeneratedMessageProtocol {
    private(set) var hasD:Bool = false
    private(set) var d:Int32 = Int32(0)

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasD {
        try output.writeInt32(1, value:d)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<ProtobufUnittestImport.ImportMessageLite> {
      var mergedArray = Array<ProtobufUnittestImport.ImportMessageLite>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    internal class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.ImportMessageLite? {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    internal class func parseFromData(data:NSData) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFromData(data, extensionRegistry:ProtobufUnittestImport.UnittestImportLiteRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func getBuilder() -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return ProtobufUnittestImport.ImportMessageLite.classBuilder() as! ProtobufUnittestImport.ImportMessageLite.Builder
    }
    internal func getBuilder() -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return classBuilder() as! ProtobufUnittestImport.ImportMessageLite.Builder
    }
    override internal class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessageLite.Builder()
    }
    override internal func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessageLite.Builder()
    }
    internal func toBuilder() throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return try ProtobufUnittestImport.ImportMessageLite.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:ProtobufUnittestImport.ImportMessageLite) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
      return try ProtobufUnittestImport.ImportMessageLite.Builder().mergeFrom(prototype)
    }
    override internal func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasD {
        jsonMap["d"] = NSNumber(int:d)
      }
      return jsonMap
    }
    override class internal func decode(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder.decodeToBuilder(jsonMap).build()
    }
    override class internal func fromJSON(data:NSData) throws -> ProtobufUnittestImport.ImportMessageLite {
      return try ProtobufUnittestImport.ImportMessageLite.Builder.fromJSONToBuilder(data).build()
    }
    override internal func writeDescriptionTo(inout output:String, indent:String) throws {
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      unknownFields.writeDescriptionTo(&output, indent:indent)
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasD {
               hashCode = (hashCode &* 31) &+ d.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "ProtobufUnittestImport.ImportMessageLite"
    }
    override internal func className() -> String {
        return "ProtobufUnittestImport.ImportMessageLite"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.ImportMessageLite.self
    }
    //Meta information declaration end

    final internal class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.ImportMessageLite = ProtobufUnittestImport.ImportMessageLite()
      internal func getMessage() -> ProtobufUnittestImport.ImportMessageLite {
          return builderResult
      }

      required override internal init () {
         super.init()
      }
      var hasD:Bool {
           get {
                return builderResult.hasD
           }
      }
      var d:Int32 {
           get {
                return builderResult.d
           }
           set (value) {
               builderResult.hasD = true
               builderResult.d = value
           }
      }
      func setD(value:Int32) -> ProtobufUnittestImport.ImportMessageLite.Builder {
        self.d = value
        return self
      }
      internal func clearD() -> ProtobufUnittestImport.ImportMessageLite.Builder{
           builderResult.hasD = false
           builderResult.d = Int32(0)
           return self
      }
      override internal var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override internal func clear() -> ProtobufUnittestImport.ImportMessageLite.Builder {
        builderResult = ProtobufUnittestImport.ImportMessageLite()
        return self
      }
      override internal func clone() throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        return try ProtobufUnittestImport.ImportMessageLite.builderWithPrototype(builderResult)
      }
      override internal func build() throws -> ProtobufUnittestImport.ImportMessageLite {
           try checkInitialized()
           return buildPartial()
      }
      internal func buildPartial() -> ProtobufUnittestImport.ImportMessageLite {
        let returnMe:ProtobufUnittestImport.ImportMessageLite = builderResult
        return returnMe
      }
      internal func mergeFrom(other:ProtobufUnittestImport.ImportMessageLite) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        if other == ProtobufUnittestImport.ImportMessageLite() {
         return self
        }
        if other.hasD {
             d = other.d
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override internal func mergeFromCodedInputStream(input:CodedInputStream) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override internal func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let tag = try input.readTag()
          switch tag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            d = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:tag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class internal func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        let resultDecodedBuilder = ProtobufUnittestImport.ImportMessageLite.Builder()
        if let jsonValueD = jsonMap["d"] as? NSNumber {
          resultDecodedBuilder.d = jsonValueD.intValue
        }
        return resultDecodedBuilder
      }
      override class internal func fromJSONToBuilder(data:NSData) throws -> ProtobufUnittestImport.ImportMessageLite.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittestImport.ImportMessageLite.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
