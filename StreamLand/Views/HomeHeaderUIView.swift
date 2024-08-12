//
//  HomeHeaderUIView.swift
//  StreamLand
//
//  Created by Vaibhav on 12/08/24.
//

import UIKit

class HomeHeaderUIView: UIView {
    
    private let headerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "headerView")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    private let playButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "play.fill"), for: .normal)
        button.setTitle("Play", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .white
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 2
        button.tintColor = .black
        
//        var config = UIButton.Configuration.plain()
//        config.image = UIImage(systemName: "play.fill")
//        config.title = "Play"
//        config.imagePadding = 5
//        config.baseForegroundColor = .black
//        button.configuration = config
        return button
    }()
    
    private let downloadButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "arrow.down"), for: .normal)
        button.setTitle("Download", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .clear
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 2
        button.tintColor = .white
        
//        var config = UIButton.Configuration.plain()
//        config.image = UIImage(systemName: "arrow.down")
//        config.title = "Download"
//        config.imagePadding = 5
//        config.baseForegroundColor = .white
//        button.configuration = config
        return button
    }()
    
    private func headerGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(headerImageView)
        headerGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        setViewConstraints()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        headerImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setViewConstraints() {
        NSLayoutConstraint.activate([
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 80),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playButton.widthAnchor.constraint(equalToConstant: 110),
            playButton.heightAnchor.constraint(equalToConstant: 35),
            
            downloadButton.leadingAnchor.constraint(equalTo: playButton.trailingAnchor, constant: 20),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            downloadButton.widthAnchor.constraint(equalToConstant: 110),
            downloadButton.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}
