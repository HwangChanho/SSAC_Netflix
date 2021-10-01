//
//  ViewController.swift
//  SSAC_Netflix
//
//  Created by ChanhoHwang on 2021/09/28.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    //MARK: - Declaration
    
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var informationButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var nButton: UIButton!
    @IBOutlet weak var tvProgramButton: UIButton!
    @IBOutlet weak var movieButton: UIButton!
    @IBOutlet weak var topMyPickButton: UIButton!
    
    // imageLiteral
    let imageArr = [#imageLiteral(resourceName: "해운대"), #imageLiteral(resourceName: "괴물"), #imageLiteral(resourceName: "7번방의선물"), #imageLiteral(resourceName: "겨울왕국2"), #imageLiteral(resourceName: "어벤져스엔드게임"), #imageLiteral(resourceName: "왕의남자"), #imageLiteral(resourceName: "부산행"), #imageLiteral(resourceName: "택시운전사"), #imageLiteral(resourceName: "도둑들"), #imageLiteral(resourceName: "국제시장"), #imageLiteral(resourceName: "광해")]
    
    // randArr
    var numArr: [Int] = []
    var tmpArr: [Int] = []
    
    //MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkButton.setTitle("", for: .normal)
        informationButton.setTitle("", for: .normal)
        playButton.setImage(UIImage(#imageLiteral(resourceName: "play_normal")), for: .normal)
        
        randNum(imageViewCount: 4)
        
        titleImageView.image = imageArr[numArr[0]]
        firstImageView.image = imageArr[numArr[1]]
        secondImageView.image = imageArr[numArr[2]]
        thirdImageView.image = imageArr[numArr[3]]
        
        firstImageView.layer.cornerRadius = 66.5
        secondImageView.layer.cornerRadius = 66.5
        thirdImageView.layer.cornerRadius = 66.5
        
        nButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 50) // 옵셔널 체이닝 titleLabel에서 nil이 발견될경우 에러발생 (옵셔널 바인딩 사용 필요)
        tvProgramButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        movieButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        topMyPickButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        
    }
    
    //MARK: - Action
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        randNum(imageViewCount: 4)
        
        titleImageView.image = imageArr[numArr[0]]
        firstImageView.image = imageArr[numArr[1]]
        secondImageView.image = imageArr[numArr[2]]
        thirdImageView.image = imageArr[numArr[3]]
    }
    
    func randNum(imageViewCount: Int) {
        var num: Int
        var count: Int = 0
        
        numArr = []
        tmpArr = []
        
        while count != imageViewCount {
            num = Int.random(in: 0..<imageArr.count)
            if check(num) {
                numArr.append(num)
                tmpArr.append(num)
                count += 1
            }
        }
    }
    
    func check(_ randNum: Int) -> Bool {
        for i in 0..<tmpArr.count {
            if randNum == tmpArr[i] {
                return false
            }
        }
        
        return true
    }
    
    
}

//#if DEBUG
//import SwiftUI
//struct ViewControllerRepresentable: UIViewControllerRepresentable {
//    
//    func updateUIViewController(_ uiView: UIViewController, context: Context) {
//        // leave this empty
//    }
//    
//    @available(iOS 13.0, *)
//    func makeUIViewController(context: Context) -> UIViewController {
//        ViewController()
//    }
//}
//@available(iOS 13.0, *)
//struct ViewControllerRepresentable_PreviewProvider: PreviewProvider {
//    static var previews: some View {
//        Group {
//            if #available(iOS 14.0, *) {
//                ViewControllerRepresentable()
//                    .ignoresSafeArea()
//                    .previewDisplayName("Preview")
//                    .previewDevice(PreviewDevice(rawValue: "iPhone 11"))
//            }
//        }
//    }
//} #endif
