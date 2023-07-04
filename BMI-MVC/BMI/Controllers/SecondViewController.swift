//
//  SecondViewController.swift
//  BMI
//
//  Created by KIM Hyung Jun on 2023/07/03.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var bmiNumberLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    // 데이터를 전달 받기 위해서!(옵셔널로 받는다)
//    var bmiNumber: Double?
//    var adviceString: String?
//    var bmiColor: UIColor?
    
    var bmi: BMI?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        
        guard let bmi = bmi else { return }

        // 전화면에서 전달받은 데이터들을 통해 세팅
        bmiNumberLabel.text = "\(bmi.value)"
        bmiNumberLabel.backgroundColor = bmi.matchColor
        adviceLabel.text = bmi.advice
    }
    
    // UI 세팅
    func configureUI() {
        bmiNumberLabel.clipsToBounds = true
        bmiNumberLabel.layer.cornerRadius = 8
        
        backButton.layer.cornerRadius = 20
        backButton.setTitle("다시 계산하기", for: .normal)
    }


    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
