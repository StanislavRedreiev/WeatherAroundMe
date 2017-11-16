//
//  SettingsTableViewCell.swift
//  WeatherAroundMe
//


import UIKit

class SettingsTableViewCell: UITableViewCell {

    // MARK: - Type Properties

    static let reuseIdentifier = "SettingsCell"

    // MARK: - Properties

    @IBOutlet var mainLabel: UILabel!

    // MARK: - Initialization

    override func awakeFromNib() {
        super.awakeFromNib()

        // Configure Cell
        selectionStyle = .none
    }

}
