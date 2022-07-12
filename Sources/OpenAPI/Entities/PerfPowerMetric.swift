// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct PerfPowerMetric: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case perfPowerMetrics
	}

	public struct Attributes: Codable {
		public var platform: Platform?
		public var metricType: MetricType?
		public var deviceType: String?

		public enum Platform: String, Codable, CaseIterable {
			case ios = "IOS"
		}

		public enum MetricType: String, Codable, CaseIterable {
			case disk = "DISK"
			case hang = "HANG"
			case battery = "BATTERY"
			case launch = "LAUNCH"
			case memory = "MEMORY"
			case animation = "ANIMATION"
			case termination = "TERMINATION"
		}

		public init(platform: Platform? = nil, metricType: MetricType? = nil, deviceType: String? = nil) {
			self.platform = platform
			self.metricType = metricType
			self.deviceType = deviceType
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.links = links
	}
}
