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
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        return tableView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupTableView()
    }
    
    
    func setupTableView(){
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(EntertainmentCell.self, forCellReuseIdentifier: "entertaimentCell")
        view.addSubview(tableView)
        self.tableView.pinTableView(to: view)
        
    }


}

extension NewsViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "entertaimentCell", for: indexPath) as! EntertainmentCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    
}

class EntertainmentCell: UITableViewCell {

    let cellView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        return view
    }()
    
    
    
    let holderView: UIView = {
        let holderView = UIView()
        holderView.backgroundColor = UIColor.black
        return holderView
    }()
    
    let categoryLabel: UILabel = {
        let categoryLabel = UILabel()
        categoryLabel.textColor = UIColor.gray
        categoryLabel.font = UIFont(name: "Verdana", size: 12.0)
        return categoryLabel
    }()
    
    let categoryTitle: UILabel = {
        let categoryTitle = UILabel()
        categoryTitle.textColor = UIColor.gray
        categoryTitle.text = "adasdsadsd"
        categoryTitle.font = UIFont(name: "Verdana", size: 12.0)
        return categoryTitle
    }()
    
    let pictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    
    let numberOfComments: UILabel = {
        let numberOfComments = UILabel()
        numberOfComments.textColor = UIColor.gray
        numberOfComments.font = UIFont(name: "Verdana", size: 12.0)
        return numberOfComments
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
    }
    
    func setupEntertainmentCell(){
        backgroundColor = UIColor(red: 245, green: 245, blue: 245, alpha: 0)
        
        addSubview(cellView)
        cellView.addSubview(holderView)
        cellView.addSubview(categoryLabel)
        cellView.addSubview(categoryTitle)
        cellView.addSubview(pictureImageView)
        cellView.addSubview(numberOfComments)
        
        cellView.pinTableViewCell(to: )
        categoryLabel.pinCategoryLabel(to: cellView)
        categoryTitle.pinCategoryTitleLabel(to: cellView)
        pictureImageView.pinPictureImageView(to: cellView)
        numberOfComments.pinNumberOfCommentsLabel(to: cellView)
        holderView.pinHolderUIView(to: cellView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("coder has not been implemented")
    }

}

