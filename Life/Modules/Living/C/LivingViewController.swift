//
//  LivingViewController.swift
//  Life
//
//  Created by tiens on 2019/6/18.
//  Copyright © 2019 yyy. All rights reserved.
//

import UIKit

class LivingViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        
    }
    
    override func addSubViews() {
        view.addSubview(birthdayLabel)
        birthdayLabel.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalTo(view.snp_centerY).offset(10)
        }
        
        view.addSubview(checkDate)
        checkDate.snp.makeConstraints { (make) in
            make.top.equalTo(self.birthdayLabel.snp_bottom).offset(50)
            make.height.equalTo(34)
            make.centerX.equalToSuperview()
        }
    }

    
    //MARK: - Getter
    //出生标题label
    lazy var birthdayLabel: UILabel = {
        let label = UILabel()
        label.text = "你\n出\n生\n"
        label.numberOfLines = 0
        label.textColor = UIColor.black
        label.font = FontPFRegularSize(25)
        return label
    }()
    
    //选择日期
    lazy var checkDate: UIButton = {
        let btn = UIButton(type: .custom)
        btn.setTitle("选择日期", for: .normal)
        btn.backgroundColor = view.backgroundColor
        btn.setTitleColor(UIColor.hexadecimalColor(hexadecimal: "313131"), for: .normal)
        btn.titleLabel?.font = FontPFRegularSize(15)
        btn.contentEdgeInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        btn.layer.cornerRadius = 17
        btn.layer.borderColor = UIColor.hexadecimalColor(hexadecimal: "313131").cgColor
        btn.layer.borderWidth = 1
        btn.layer.masksToBounds = true
        return btn
    }()
    
    
}
