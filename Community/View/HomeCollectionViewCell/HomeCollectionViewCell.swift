//
//  HomeCollectionViewCell.swift
//  Community
//
//  Created by Clissia Bozzer Bovi on 16/08/23.
//

import UIKit

struct HomeCollectionViewCellData {
    let image: String
    let tags: String
    let name: String
    let location: String
}


class HomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var tags: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var view: UIView!
    @IBOutlet weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setCell(data: HomeCollectionViewCellData) {
        setCellData(data)
        setCellLayout()
    }
    
    private func setCellData(_ data: HomeCollectionViewCellData) {
        self.name.text = data.name
        self.tags.text = data.tags
        self.location.text = data.location
        self.image.image = UIImage(named: data.image)
    }
    
    private func setCellLayout() {
        self.layer.cornerRadius = 15
        self.layer.borderWidth = 1
    }
}