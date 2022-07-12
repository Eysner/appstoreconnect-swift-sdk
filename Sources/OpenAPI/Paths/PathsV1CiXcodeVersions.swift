// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint {
	public static var ciXcodeVersions: CiXcodeVersions {
		CiXcodeVersions(path: "/v1/ciXcodeVersions")
	}

	public struct CiXcodeVersions {
		/// Path: `/v1/ciXcodeVersions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiXcodeVersionsResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsCiXcodeVersions: [FieldsCiXcodeVersions]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsCiMacOsVersions: [FieldsCiMacOsVersions]?
			public var limitMacOsVersions: Int?

			public enum FieldsCiXcodeVersions: String, Codable, CaseIterable {
				case macOsVersions
				case name
				case testDestinations
				case version
			}

			public enum Include: String, Codable, CaseIterable {
				case macOsVersions
			}

			public enum FieldsCiMacOsVersions: String, Codable, CaseIterable {
				case name
				case version
				case xcodeVersions
			}

			public init(fieldsCiXcodeVersions: [FieldsCiXcodeVersions]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsCiMacOsVersions: [FieldsCiMacOsVersions]? = nil, limitMacOsVersions: Int? = nil) {
				self.fieldsCiXcodeVersions = fieldsCiXcodeVersions
				self.limit = limit
				self.include = include
				self.fieldsCiMacOsVersions = fieldsCiMacOsVersions
				self.limitMacOsVersions = limitMacOsVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiXcodeVersions, forKey: "fields[ciXcodeVersions]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsCiMacOsVersions, forKey: "fields[ciMacOsVersions]")
				encoder.encode(limitMacOsVersions, forKey: "limit[macOsVersions]")
				return encoder.items
			}
		}
	}
}
