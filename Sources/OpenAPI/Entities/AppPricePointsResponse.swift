// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

@available(*, deprecated, message: "Deprecated")
public struct AppPricePointsResponse: Codable {
	public var data: [AppPricePoint]
	public var included: [IncludedItem]?
	public var links: PagedDocumentLinks
	public var meta: PagingInformation?

	public enum IncludedItem: Codable {
		case appPriceTier(AppPriceTier)
		case territory(Territory)

		public init(from decoder: Decoder) throws {
			let container = try decoder.singleValueContainer()
			if let value = try? container.decode(AppPriceTier.self) {
				self = .appPriceTier(value)
			} else if let value = try? container.decode(Territory.self) {
				self = .territory(value)
			} else {
				throw DecodingError.dataCorruptedError(in: container, debugDescription: "Failed to intialize `oneOf`")
			}
		}

		public func encode(to encoder: Encoder) throws {
			var container = encoder.singleValueContainer()
			switch self {
			case .appPriceTier(let value): try container.encode(value)
			case .territory(let value): try container.encode(value)
			}
		}
	}

	public init(data: [AppPricePoint], included: [IncludedItem]? = nil, links: PagedDocumentLinks, meta: PagingInformation? = nil) {
		self.data = data
		self.included = included
		self.links = links
		self.meta = meta
	}
}
