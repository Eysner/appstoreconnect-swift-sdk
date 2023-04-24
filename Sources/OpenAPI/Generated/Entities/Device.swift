// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct Device: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case devices
	}

	public struct Attributes: Codable {
		public var name: String?
		public var platform: BundleIDPlatform?
		public var udid: String?
		public var deviceClass: DeviceClass?
		public var status: Status?
		public var model: String?
		public var addedDate: Date?

		public enum DeviceClass: String, Codable, CaseIterable {
			case appleWatch = "APPLE_WATCH"
			case ipad = "IPAD"
			case iphone = "IPHONE"
			case ipod = "IPOD"
			case appleTv = "APPLE_TV"
			case mac = "MAC"
		}

		public enum Status: String, Codable, CaseIterable {
			case enabled = "ENABLED"
			case disabled = "DISABLED"
			case processing = "PROCESSING"
		}

		public init(name: String? = nil, platform: BundleIDPlatform? = nil, udid: String? = nil, deviceClass: DeviceClass? = nil, status: Status? = nil, model: String? = nil, addedDate: Date? = nil) {
			self.name = name
			self.platform = platform
			self.udid = udid
			self.deviceClass = deviceClass
			self.status = status
			self.model = model
			self.addedDate = addedDate
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.name = try values.decodeIfPresent(String.self, forKey: "name")
			self.platform = try values.decodeIfPresent(BundleIDPlatform.self, forKey: "platform")
			self.udid = try values.decodeIfPresent(String.self, forKey: "udid")
			self.deviceClass = try values.decodeIfPresent(DeviceClass.self, forKey: "deviceClass")
			self.status = try values.decodeIfPresent(Status.self, forKey: "status")
			self.model = try values.decodeIfPresent(String.self, forKey: "model")
			self.addedDate = try values.decodeIfPresent(Date.self, forKey: "addedDate")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(name, forKey: "name")
			try values.encodeIfPresent(platform, forKey: "platform")
			try values.encodeIfPresent(udid, forKey: "udid")
			try values.encodeIfPresent(deviceClass, forKey: "deviceClass")
			try values.encodeIfPresent(status, forKey: "status")
			try values.encodeIfPresent(model, forKey: "model")
			try values.encodeIfPresent(addedDate, forKey: "addedDate")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encode(links, forKey: "links")
	}
}