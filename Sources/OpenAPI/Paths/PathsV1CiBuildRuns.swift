// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint {
	public static var ciBuildRuns: CiBuildRuns {
		CiBuildRuns(path: "/v1/ciBuildRuns")
	}

	public struct CiBuildRuns {
		/// Path: `/v1/ciBuildRuns`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.CiBuildRunCreateRequest) -> Request<AppStoreConnect_Swift_SDK.CiBuildRunResponse> {
			.post(path, body: body)
		}
	}
}
