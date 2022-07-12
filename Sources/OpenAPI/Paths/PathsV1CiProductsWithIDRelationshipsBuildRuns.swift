// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.CiProducts.WithID.Relationships {
	public var buildRuns: BuildRuns {
		BuildRuns(path: path + "/buildRuns")
	}

	public struct BuildRuns {
		/// Path: `/v1/ciProducts/{id}/relationships/buildRuns`
		public let path: String
	}
}
