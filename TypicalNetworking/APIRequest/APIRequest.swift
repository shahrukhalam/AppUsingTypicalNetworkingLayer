//
//  APIRequest.swift
//  APIRequest
//
//  Created by Shahrukh Alam on 25/09/21.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
}

public protocol APIRequest {
    var scheme: String { get }
    var baseURL: String { get }
    var path: String { get }
    var queryItems: [URLQueryItem]? { get }
    var method: HTTPMethod { get }
    var headers: [String: String] { get }
}

public extension APIRequest {
    var scheme: String { "https" }
    var baseURL: String { "api.myapp.com" }
    var queryItems: [URLQueryItem]? { nil }
    var method: HTTPMethod { .get }
    var headers: [String: String] { [:] }
}

public extension APIRequest {
    var urlRequest: URLRequest {
        var components = URLComponents()
        components.scheme = scheme
        components.host = baseURL
        components.path = path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Unable to get URL from URLComponents: \(components)")
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.allHTTPHeaderFields = headers
        return urlRequest
    }
}
