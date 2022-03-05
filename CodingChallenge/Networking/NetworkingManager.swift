//
//  NetworkingManager.swift
//  CodingChallenge
//
//  Created by Amr Mohamed on 02/03/2022.
//

import Alamofire
import ReachabilitySwift


public enum HTTPServerMethod: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
}

class NetworkingManager: NSObject {
    
    static let sharedInstance = NetworkingManager()
    
    let sessionManager: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = TimeInterval(60)
        configuration.timeoutIntervalForResource = TimeInterval(60)
        
        return Session(configuration: configuration)
    }()
    
    func checkNetConnection() -> Bool {
        return Reachability()?.isReachable ?? false
    }
    
    func makeRequest(mType: HTTPServerMethod, params: Parameters?, encoding: ParameterEncoding = URLEncoding.queryString, completionObjectHandler: @escaping (Data) -> Void , faildHandler: @escaping (StatusServer?) -> Void) {
        
        if(!checkNetConnection()){
            faildHandler(StatusServer(message: noInternetConnectionMessage))
            return
        }
        
        let headers : HTTPHeaders = ["Accept-Language": "en" ]
        
        print("baseUrl :: \(baseUrl)")
        
        self.sessionManager.request(baseUrl, method: HTTPMethod(rawValue: mType.rawValue), parameters: params , encoding: encoding ,headers:headers)
            .responseJSON{ response in
                print("///Code :\(String(describing: response.response?.statusCode))" + "\n\nAPI\n" + (response.request?.url?.absoluteString ?? baseUrl) + "\nResponse" + String(data: response.data!, encoding: String.Encoding.utf8)!)
                switch response.result{
                case .success( _):
                    if let data = response.data {
                        DispatchQueue.main.async {
                            completionObjectHandler(data)
                        }
                    }
                    case .failure(let error):
                    let status:StatusServer = StatusServer(message: error.localizedDescription)
                    DispatchQueue.main.async {
                        faildHandler(status)
                    }
                    return
                  }
//                if let error = response.result.error {
//
//                }
                
                
        }
    }
}
