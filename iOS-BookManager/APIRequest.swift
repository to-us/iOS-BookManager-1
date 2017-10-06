import APIKit
import Himotoki

protocol APIRequest: Request { }

extension APIRequest{
    var baseURL: URL{
        return URL(string: "http://54.250.239.8")!
    }
}

extension APIRequest where Response: Himotoki.Decodable {
    func response(from object: Any, urlResponse: HTTPURLResponse) throws -> Response {
        return try decodeValue(object)
    }
}
