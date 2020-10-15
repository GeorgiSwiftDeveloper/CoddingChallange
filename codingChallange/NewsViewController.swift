//
//  ViewController.swift
//  codingChallange
//
//  Created by Georgi Malkhasyan on 10/14/20.
//

import UIKit

class NewsViewController: UIViewController {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        tableView.allowsSelection = false
        return tableView
    }()
    
    
    var newsData = [DataResponse]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        NewsServerConnection.newsInstance.fetchNewsFromServer()
        NewsServerConnection.newsInstance.delegate = self
        setupTableView()
    }
    
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.frame = self.view.frame
        tableView.register(EntertainmentCell.self, forCellReuseIdentifier: "entertaimentCell")
        tableView.estimatedRowHeight = UITableView.automaticDimension
        view.addSubview(tableView)
        tableView.separatorStyle = .none
        self.tableView.pinTableView(to: view)
        
    }


}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "entertaimentCell", for: indexPath) as! EntertainmentCell
        
        cell.configureCell(news: newsData[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
        
    }
}


extension NewsViewController: NewsManagerDelegate {
    func didUpdateNews(_ newsManager: [DataResponse]) {
        newsData.append(contentsOf: newsManager)
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func didFailWithError(_ error: Error) {
        print(error.localizedDescription)
    }
    
    
}
