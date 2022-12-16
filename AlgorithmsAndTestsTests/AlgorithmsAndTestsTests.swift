//
//  AlgorithmsAndTestsTests.swift
//  AlgorithmsAndTestsTests
//
//  Created by 田原葉 on 2022/10/19.
//

import XCTest
@testable import AlgorithmsAndTests

final class AlgorithmsAndTestsTests: XCTestCase {
    override class func setUp() {
        super.setUp()

        print("テストケース全体の事前処理")
    }
    
    override class func tearDown() {
        super.tearDown()
        
        print("テストケース全体の事後処理")
    }
    
    override func setUp() {
        super.setUp()
        
        print("テスト毎の事前処理")
    }
    
    override func tearDown() {
        super.tearDown()
        
        print("テスト毎の事後処理")
    }
    
    func testLinearSearch() {
        print(#function)
        let nums = [1, 3, 4, 6, 8, 11, 14, 15, 18, 19, 23, 25, 26, 29]
        let vc = ViewController()
        
        XCTAssertEqual(vc.linearSearch(nums, key: 4), 2)
        XCTAssertEqual(vc.linearSearch(nums, key: 8), 4)
        XCTAssertEqual(vc.linearSearch(nums, key: 11), 5)
        XCTAssertEqual(vc.linearSearch(nums, key: 12), nil)
    }
 
    
    func testBinarySearch() {
        print(#function)
        let nums = [1, 3, 4, 6, 8, 11, 14, 15, 18, 19, 23, 25, 26, 29]
        let vc = ViewController()
        
        XCTAssertEqual(vc.binarySearch(nums, key: 3, range: 0..<nums.count), 1)
        XCTAssertEqual(vc.binarySearch(nums, key: 2, range: 0..<nums.count), nil)
        XCTAssertEqual(vc.binarySearch(nums, key: 29, range: 0..<nums.count), 13)
        XCTAssertEqual(vc.binarySearch(nums, key: 30, range: 0..<nums.count), nil)
    }
    
//    func testBubbleSort() {
//        print(#function)
//        let nums1 = [5, 3, 7, 9, 1, 2, 4, 8, 6]
//        let nums2 = [5]
//        let nums3 = [Int]()
//        let nums4 = [1.1, 500.5, 30.3, 7.7, 99.9]
//        let vc = ViewController()
//
//        XCTAssertEqual(vc.bubbleSort(nums1), [1, 2, 3, 4, 5, 6, 7, 8, 9])
//        XCTAssertEqual(vc.bubbleSort(nums2), [5])
//        XCTAssertEqual(vc.bubbleSort(nums3), nums3)
//        XCTAssertEqual(vc.bubbleSort(nums4), [1.1, 7.7, 30.3, 99.9, 500.5])
//
//    }
//
//    func testSelectionSort() {
//        print(#function)
//        let nums1 = [5, 3, 7, 9, 1, 2, 4, 8, 6]
//        let nums2 = [5]
//        let nums3 = [Int]()
//        let nums4 = [1.1, 500.5, 30.3, 7.7, 99.9]
//        let vc = ViewController()
//
//        XCTAssertEqual(vc.selectionSort(nums1), [1, 2, 3, 4, 5, 6, 7, 8, 9])
//        XCTAssertEqual(vc.selectionSort(nums2), [5])
//        XCTAssertEqual(vc.selectionSort(nums3), nums3)
//        XCTAssertEqual(vc.selectionSort(nums4), [1.1, 7.7, 30.3, 99.9, 500.5])
//    }
//
//    func testInseertionIndex() {
//        print(#function)
//        let nums1 = [5, 3, 7, 9, 1, 2, 4, 8, 6]
//        let nums2 = [5]
//        let nums3 = [Int]()
//        let nums4 = [1.1, 500.5, 30.3, 7.7, 99.9]
//        let vc = ViewController()
//
//        XCTAssertEqual(vc.insertionSort(nums1), [9, 8, 7, 6, 5, 4, 3, 2, 1])
//        XCTAssertEqual(vc.insertionSort(nums2), [5])
//        XCTAssertEqual(vc.insertionSort(nums3), nums3)
//        XCTAssertEqual(vc.insertionSort(nums4), [500.5, 99.9, 30.3, 7.7, 1.1])
//    }
}
