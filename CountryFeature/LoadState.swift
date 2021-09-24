//
//  LoadState.swift
//  CountryApp
//
//  Created by mgonzalez on 20/08/2021.
//

import Foundation

enum LoadState<ContentState> {
    case notRequested
    case loading(ContentState? = nil)
    case success(ContentState)
    case failure(FailureState)
}

extension LoadState: Equatable where ContentState: Equatable {}

extension LoadState {
    var isLoading: Bool {
        switch self {
        case .loading:
            return true
        default:
            return false
        }
    }
}
