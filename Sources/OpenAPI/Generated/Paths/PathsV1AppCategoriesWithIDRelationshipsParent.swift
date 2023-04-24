// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppCategories.WithID.Relationships {
	public var parent: Parent {
		Parent(path: path + "/parent")
	}

	public struct Parent {
		/// Path: `/v1/appCategories/{id}/relationships/parent`
		public let path: String
	}
}