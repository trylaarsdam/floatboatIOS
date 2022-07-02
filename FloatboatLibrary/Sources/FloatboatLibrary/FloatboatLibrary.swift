import Foundation

public struct FloatboatLibrary {
    public init() {
        
    }
}


public func verifyAPIStatus() async -> API_Main {
    let headers = [
      "Accept": "application/json",
      "Content-Type": "application/json",
    ]
    do {
        let url = URL(string: "http://localhost:8888")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let (data, _) = try await URLSession.shared.data(for: request, delegate: nil)
        let responseData = try JSONDecoder().decode(API_Main.self, from: data)
        
        return responseData
    } catch {
        return API_Main(status: "error")
    }
}

public func getVideo(videoID: String) async -> API_GetVideo {
    let headers = [
      "Accept": "application/json",
      "Content-Type": "application/json",
    ]
    do {
        let url = URL(string: "http://localhost:8888/videos/\(videoID)")!
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers
        let (data, _) = try await URLSession.shared.data(for: request, delegate: nil)
        let responseData = try JSONDecoder().decode(API_GetVideo.self, from: data)
        
        return responseData
    } catch {
        return API_GetVideo(status: "error", quality360: "", quality480: "", quality720: "", quality1080: "")
    }
}
