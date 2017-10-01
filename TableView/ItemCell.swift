//
//  ItemCell.swift
//  TableView
//
//  Created by Daniel Burke on 10/1/17.
//

import UIKit

class ItemCell: UITableViewCell {
    
    let itemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        imageView.layer.cornerRadius = 20
        return imageView
    }()
    
    let titleBar: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        return label
    }()
    
    let subtitleBar: UILabel = {
        let label = UILabel()
        label.backgroundColor = UIColor.gray.withAlphaComponent(0.3)
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(itemImageView)
        addSubview(titleBar)
        addSubview(subtitleBar)
        
        installConstraints()
    }
    
    //This is required for a custom init
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func installConstraints() {
        itemImageView.translatesAutoresizingMaskIntoConstraints = false
        itemImageView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        itemImageView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        itemImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10).isActive = true
        itemImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20).isActive = true
        
        titleBar.translatesAutoresizingMaskIntoConstraints = false
        titleBar.heightAnchor.constraint(equalToConstant: 20).isActive = true
        titleBar.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 10).isActive = true
        titleBar.topAnchor.constraint(equalTo: itemImageView.topAnchor).isActive = true
        titleBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
        
        subtitleBar.translatesAutoresizingMaskIntoConstraints = false
        subtitleBar.heightAnchor.constraint(equalToConstant: 80).isActive = true
        subtitleBar.leadingAnchor.constraint(equalTo: itemImageView.trailingAnchor, constant: 10).isActive = true
        subtitleBar.topAnchor.constraint(equalTo: titleBar.bottomAnchor, constant: 10).isActive = true
        subtitleBar.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10).isActive = true
        subtitleBar.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30).isActive = true
    }
}
