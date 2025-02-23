//
//  ViewController.swift
//  lottery_generator
//
//  Created by zehra gizem duman on 23.02.2025.
//

import UIKit
import GameKit
class ViewController: UIViewController {
    
    let lotteryBalls = [Int](1...49)
    var shuffledLotteryBalls = [Int]()
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var thirdLabel: UILabel!
    @IBOutlet weak var fourthLabel: UILabel!
    @IBOutlet weak var fifthLabel: UILabel!
    @IBOutlet weak var sixthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func generateRandomNumbers(_ sender: UIButton) {
        generateWinningNumbers()
    }
    func generateWinningNumbers(){
        shuffledLotteryBalls = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: lotteryBalls) as! [Int]
        firstLabel.text = "\(shuffledLotteryBalls[0])"
        secondLabel.text = "\(shuffledLotteryBalls[1])"
        thirdLabel.text = "\(shuffledLotteryBalls[2])"
        fourthLabel.text = "\(shuffledLotteryBalls[3])"
        fifthLabel.text = "\(shuffledLotteryBalls[4])"
        sixthLabel.text = "\(shuffledLotteryBalls[5])"
    }
}

