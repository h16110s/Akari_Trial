//
//  TimeAxisWaveFormGenerate.swift
//  EasyCamery
//
//  Created by 岡大輔 on 2018/07/23.
//  Copyright © 2018年 koherent.org. All rights reserved.
//

import UIKit

import EasyImagy

public class TimeAxisWaveFormGenerate: NSObject {
    
    public class func extractRGBTimeAxisWaveForm(inputImage:Image<RGBA<UInt8>>)->Array<Float>
    {
        var timeAxisWaveForm:Array<Float> = Array(repeating: 0, count: inputImage.height)
        //imageの全画素に対して
        for w in 0..<inputImage.width{
            for h in 0..<inputImage.height{
                //色の波形データ作成　
                timeAxisWaveForm[h] += Float(inputImage[w,h].redInt + inputImage[w,h].blueInt + inputImage[w,h].greenInt)/3
            }
        }
        //作成した波形データを返す
        return timeAxisWaveForm
    }

}
