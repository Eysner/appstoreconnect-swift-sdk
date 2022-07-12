// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint {
	public static var appStoreVersionExperiments: AppStoreVersionExperiments {
		AppStoreVersionExperiments(path: "/v1/appStoreVersionExperiments")
	}

	public struct AppStoreVersionExperiments {
		/// Path: `/v1/appStoreVersionExperiments`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionExperimentCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentResponse> {
			.post(path, body: body)
		}
	}
}
