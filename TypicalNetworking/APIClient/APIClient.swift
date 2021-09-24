//
//  APIClient.swift
//  APIClient
//
//  Created by Shahrukh Alam on 25/09/21.
//

import Foundation
import Combine

public class APIClient {
    let session: URLSession
    
    public init(session: URLSession = URLSession.shared) {
        self.session = session
    }
    
    public func fetch<Response: Decodable>(for apiRequest: APIRequest,
                                    with type: Response.Type) -> AnyPublisher<Response, Error> {
        session
            .dataTaskPublisher(for: apiRequest.urlRequest)
            .map(\.data)
            .decode(type: type, decoder: JSONDecoder())
            .eraseToAnyPublisher()
    }
}
