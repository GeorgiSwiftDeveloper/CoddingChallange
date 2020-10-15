//
//  NewsServerConnection.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/14/20.
//

import Foundation

protocol NewsManagerDelegate: NSObject {
    func didUpdateNews(_ newsManager:[DataResponse])
    func didFailWithError(_ error: Error)
}


class NewsServerConnection{
    
    static var newsInstance = NewsServerConnection()
    
    weak var delegate: NewsManagerDelegate?
    
    
    func fetchNewsFromServer(){
        let url = "http://www.reddit.com/.json"
        performToRequest(with: url)
    }
    
    
    func performToRequest(with urlString: String){
        if let url = URL(string: urlString){
            let task = URLSession(configuration: .default).dataTask(with: url) { (data, rresponse, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error!)
                    return
                }
                
                if let newsSafeData = data {
                    let newsResult = self.parseNewsJSON(newsSafeData)
                    self.delegate?.didUpdateNews(newsResult)
                }
            }
            task.resume()
        }
    }
    
    func parseNewsJSON(_ newsData: Data) -> [DataResponse] {
        do {
            let newsResponse = try! JSONDecoder().decode(DataMainResponse.self, from: newsData)
            
            var dataResult = [DataResponse]()
            
            for dataIndex in 0..<newsResponse.data.children.count{
                let title = newsResponse.data.children[dataIndex].data.title
                let image = newsResponse.data.children[dataIndex].data.thumbnail
                let score = newsResponse.data.children[dataIndex].data.score
                
                
                let returnDataList  = DataResponse(title: title, thumbnail: image, score: score)

                dataResult.append(returnDataList)
            }
            
            
            return dataResult
        } catch  {
            print(error.localizedDescription)
        }
    }
}
