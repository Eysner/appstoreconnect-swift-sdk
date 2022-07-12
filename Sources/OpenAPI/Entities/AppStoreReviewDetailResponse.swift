// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct AppStoreReviewDetailResponse: Codable {
	/// AppStoreReviewDetail
	public var data: AppStoreReviewDetail
	public var included: [IncludedItem]?
	public var links: DocumentLinks

	public enum IncludedItem: Codable {
		case appStoreVersion(AppStoreVersion)
		case appStoreReviewAttachment(AppStoreReviewAttachment)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(AppStoreVersion.self) {
				self = .appStoreVersion(value)
			} else if let value = try? container.decode(AppStoreReviewAttachment.self) {
				self = .appStoreReviewAttachment(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .appStoreVersion(let value): try container.encode(value)
			case .appStoreReviewAttachment(let value): try container.encode(value)
			}
		}
	}

	public init(data: AppStoreReviewDetail, included: [IncludedItem]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
