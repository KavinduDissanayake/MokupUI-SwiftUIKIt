//
//  ViewController.swift
//  MokupUI
//
//  Created by Kavindu Dissanayake on 2023-01-04.
//

import UIKit
import RxSwift
import RxCocoa


class RewardsVC: BaseVC {
    //outlet
    @IBOutlet weak var topHeaderView: UIView!
    @IBOutlet weak var promtionCV: UICollectionView!
    @IBOutlet weak var categoryCV: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var rewardsCV: UICollectionView!
    
    //variable
    let disposeBag = DisposeBag()
    private let viewModel = RewardsVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        
        registerPromtionyCell()
        bindRewardsCollectionView()
        
        registerCategoryCell()
        bindcdCegoryCollectionView()
        
        
        registerRewardsCell()
        bindcdRewardsCollectionView()
    }
    
    
}
//MARK: setup UI
extension RewardsVC {
    func setupUI(){
        categoryCV.layer.cornerRadius =  20
        topHeaderView.addBottomRoundedEdge()
    }
}


//MARK: promtion collection view
extension RewardsVC {
    
    private func registerPromtionyCell(){
        //register xib
        self.promtionCV.register(UINib(nibName: PromotionsCard.className, bundle: Bundle.main), forCellWithReuseIdentifier: PromotionsCard.className)
    }
    private func bindRewardsCollectionView() {
        //call deleagets
        promtionCV.rx.setDelegate(self)
            .disposed(by: disposeBag)
      
        //cell declare
        viewModel.promtionList.bind(to: promtionCV.rx.items(cellIdentifier: PromotionsCard.className, cellType: PromotionsCard.self)) { (row,item,cell) in
            //ui config
        
        }.disposed(by: disposeBag)
        
    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let pageWidth = scrollView.frame.size.width
            let currentPage = Int(scrollView.contentOffset.x / pageWidth)
        pageControl.currentPage = currentPage
    }
}



//MARK: category collection view
extension RewardsVC {
    
    private func registerCategoryCell(){
        //register xib
        self.categoryCV.register(UINib(nibName: CategoryCrad.className, bundle: Bundle.main), forCellWithReuseIdentifier: CategoryCrad.className)
        
    }
    
    private func bindcdCegoryCollectionView() {
        //call deleagets
        categoryCV.rx.setDelegate(self)
            .disposed(by: disposeBag)

        //cell declare
        viewModel.promtionList.bind(to: categoryCV.rx.items(cellIdentifier: CategoryCrad.className, cellType: CategoryCrad.self)) { (row,item,cell) in
            //ui config

        }.disposed(by: disposeBag)
    }
    
}



//MARK: rewards collection view
extension RewardsVC {
    
    private func registerRewardsCell(){
        //register xib
        self.rewardsCV.register(UINib(nibName: RewardsCard.className, bundle: Bundle.main), forCellWithReuseIdentifier: RewardsCard.className)
        
    }
    
    private func bindcdRewardsCollectionView() {
        //call deleagets
        rewardsCV.rx.setDelegate(self)
            .disposed(by: disposeBag)

        //cell declare
        viewModel.promtionList.bind(to: rewardsCV.rx.items(cellIdentifier: RewardsCard.className, cellType: RewardsCard.self)) { (row,item,cell) in
            //ui config

        }.disposed(by: disposeBag)
    }
    
}


//collectionview layout
extension RewardsVC : UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.width
        
        if collectionView == promtionCV {
            return CGSize(width: width, height: 250)
        }else  if collectionView == categoryCV {
            return CGSize(width: 100, height: 45)
        }else  if collectionView == rewardsCV {
            return CGSize(width: width*0.8, height: 180)
        }  else  {
            return CGSize(width: 100, height: 45)
        }
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout
                               collectionViewLayout: UICollectionViewLayout,
                               minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}



