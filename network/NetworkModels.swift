//
//  models.swift
//  pokeSdkApp
//
//  Created by Mahia113
//

import Foundation

/**
 ResponseInfo struct for decoding api response info.
 ### Properties
 - **count**: The length of the response.
 - **pages**: The amount of pages.
 - **next**: Link to the next page (if it exists)
 - **prev**: Link to the previous page (if it exists).
 */
struct Info: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}

/**
 Types of network errors
 ### Properties
 - **invalidURL**: URL request error.
 - **invalidResponse**: HTTP request error.
 - **apiError**: API request error.
 - **decodingError**: Decoding request error.
 */
public enum NetworkHandlerError: Error {
    case invalidURL
    case invalidResponse(error: ErrorMessage)
    case apiError
    case decodingError
}

public struct ErrorMessage: Codable {
    let error: String
}
