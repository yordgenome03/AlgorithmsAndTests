//
//  ViewController.swift
//  AlgorithmsAndTests
//
//  Created by 田原葉 on 2022/10/19.
//

import UIKit
import Dispatch
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // 線形探索法（リニアサーチ）
    func linearSearch<T: Equatable>(_ array: [T], key: T) -> Int? {
        for i in 0 ..< array.count {
            if array[i] == key {
                return i
            }
        }
        return nil
    }
    
    // 二分探索法（バイナリーサーチ）
    // 引数arrayに渡す配列はソート済みのこと
    // 引数rangeには最初 0..<array.count を渡す
    func binarySearch<T: Comparable>(_ array: [T], key: T, range: Range<Int>) -> Int? {
        if range.lowerBound >= range.upperBound {
            return nil
        } else {
            let middle = range.lowerBound + (range.upperBound - range.lowerBound)/2
            // arrat[middle]がkeyより左にある時は、求めるindexはmiddleより右にあるため、左側の範囲をmiddle + 1にして詰めて再起処理
            if array[middle] < key {
                return binarySearch(array, key: key, range: middle + 1 ..< range.upperBound)
                
                // arrat[middle]がkeyより右にある時は、求めるindexはmiddleより左にあるため、右側の範囲をmiddleにして詰めて再起処理
            } else if array[middle] > key {
                return binarySearch(array, key: key, range: range.lowerBound ..< middle)
            } else {
                return middle
            }
        }
    }
    
    var nums = [5, 3, 7, 9, 1, 2, 4, 8, 6]

    // 単純交換法（バブルソート）：昇順
    func bubbleSort<T: Comparable>(_ array: [T]) -> [T] {
        var sortedArray = array
        let n = array.count
        // リストの先頭から値を比較していき昇順に並べる
        // 一番内側のループが終了した時、最大値がリストの終端に移動する
        for i in 0..<n {
            // 次のループではリストの要素数を一つ減らして比較
            for j in 0..<(n-i-1) {
                if sortedArray[j] > sortedArray[j+1] {
                    sortedArray.swapAt(j, j+1)
                }
            }
        }
        return sortedArray
    }

    // 単純選択法（選択ソート）：昇順
    func selectionSort<T: Comparable>(_ array: [T]) -> [T] {
        if array.count <= 1 { return array }
        var sortedArray = array
        let n = array.count
        // array[i]~array[n-1]で最小値を見つけてarray[i]と交換、array[i]は整備済みに
        for i in 0..<n {
            var lowest = i
            // array[i+1]~array[n-1]で最小値を見つけてarray[i+1]と交換、array[i+1]は整備済みに
            for j in (i+1)..<n {
                // 最小値を見つける度lowestの値（インデックス番号）を更新
                if sortedArray[j] < sortedArray[lowest] {
                    lowest = j
                }
            }
            // lowestがiじゃなかったらarray[i]の位置にarray[lowest]を交換
            if i != lowest {
                sortedArray.swapAt(i, lowest)
            }
        }
        return sortedArray
    }
    
    // 単純挿入法（挿入ソート）
    func insertionSort<T: Comparable>(_ array: [T]) -> [T] {
        var sortedArray = array
        let n = array.count
        // index番号1までを整列したらindex番号2まで,それが整列できたら3まで,4まで...と整列させていく
        for index in 1..<n {
            var currentIndex = index
            // currentIndexが0になるまで、array[i-1] < array[i]となるように並べ替え続ける
            while currentIndex > 0 && sortedArray[currentIndex] < sortedArray[currentIndex - 1] {
                sortedArray.swapAt(currentIndex - 1, currentIndex)
                currentIndex -= 1
            }
        }
        return sortedArray
    }
    
    

}


