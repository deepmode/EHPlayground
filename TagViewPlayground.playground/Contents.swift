//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

extension String {
    
    //reference: http://stackoverflow.com/questions/30450434/figure-out-size-of-uilabel-based-on-string-in-swift
    func heightWithConstrainedWidth(width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: CGFloat.max)
        
        let boundingBox = self.boundingRectWithSize(constraintRect, options: NSStringDrawingOptions.UsesLineFragmentOrigin, attributes: [NSFontAttributeName: font], context: nil)
        
        return boundingBox.height
    }
}


struct TagsView {

    func createTagsView(words:[String], containerWidth:CGFloat) -> (view:UIView, labels:[UILabel]) {
        
        let topPadding:CGFloat = 10.0
        let leadingPadding:CGFloat = 10.0
        let separatorHPadding:CGFloat = 10.0
        let separatorVPadding:CGFloat = 10.0
        let trailPadding:CGFloat = 10.0
        let bottomPadding:CGFloat = 10.0
        let maxWidthSupport = containerWidth - leadingPadding - trailPadding
        let labelTextVPadding:CGFloat = 10.0 + 10.0
        let labelTextHPadding:CGFloat = 10.0 + 10.0
        let tagViewBackgroundColor = UIColor.whiteColor()
        let tagBackgroundColor = UIColor.groupTableViewBackgroundColor()
        
        //let selectFont = UIFont.systemFontOfSize(12.0)
        
        var labels = [UILabel]()
        let view = UIView(frame: CGRectMake(0,0,0,0))
        view.backgroundColor = tagViewBackgroundColor
        
        for (_,eachWord) in words.enumerate() {
            
            let label = UILabel(frame: CGRectMake(0,0,0,0))
            label.text = eachWord
            label.sizeToFit()
            label.textAlignment = .Center
            label.backgroundColor = tagBackgroundColor
            
            if label.bounds.width + labelTextHPadding > maxWidthSupport {
                //limit the label size
                let newHeight = label.bounds.height + labelTextVPadding
                let newLabelFrame = CGRectMake(0, 0, maxWidthSupport ,newHeight)
                label.frame = newLabelFrame
            } else {
                let currentFrame = label.frame
                let newWidth = currentFrame.width + labelTextHPadding
                let newHeight = currentFrame.height + labelTextVPadding
                let newLabelFrame = CGRectMake(0, 0, newWidth,newHeight)
                label.frame = newLabelFrame
            }
            labels.append(label)
        }
        
        //set frame
        var remaiderWidth = containerWidth
        var currentX:CGFloat = 0
        var currentY:CGFloat = 0 + topPadding
        
        
        var rowHeight:CGFloat = 0
        
        for eachLabel in labels {
            
            var fitThisRow = true
            
            let isABegin = remaiderWidth == containerWidth ? true : false
            if isABegin {
                fitThisRow = remaiderWidth - leadingPadding - eachLabel.bounds.width - trailPadding >= 0
            } else {
                fitThisRow = remaiderWidth - separatorHPadding - eachLabel.bounds.width - trailPadding >= 0
            }
            rowHeight = eachLabel.bounds.height
            
            if fitThisRow {
                
                if isABegin {
                    currentX = leadingPadding
                    remaiderWidth = remaiderWidth - leadingPadding - eachLabel.bounds.width
                } else {
                    currentX = containerWidth - remaiderWidth + separatorHPadding
                    remaiderWidth = remaiderWidth - separatorHPadding - eachLabel.bounds.width
                }
                
                let frame = CGRectMake(currentX, currentY, eachLabel.bounds.width, eachLabel.bounds.height)
                eachLabel.frame = frame
            } else {
                remaiderWidth = containerWidth
                currentX = leadingPadding
                currentY = currentY + rowHeight + separatorVPadding
                
                let frame = CGRectMake(currentX, currentY, eachLabel.bounds.width, eachLabel.bounds.height)
                eachLabel.frame = frame
                
                remaiderWidth = remaiderWidth - leadingPadding - eachLabel.bounds.width
            }
            
            eachLabel.layer.cornerRadius = 0.0
            eachLabel.layer.masksToBounds = true
            view.addSubview(eachLabel)
        }
        
        let finalFrame = CGRectMake(0, 0, containerWidth, currentY + rowHeight + bottomPadding)
        view.frame = finalFrame
        
        view.setNeedsLayout()
        view.sizeToFit()
        
        return (view,labels)
    }
}

let words = ["hello", "Happy Day", "HoHoHo Word Word Word","cool","Chicken soup taste", "persistent storage", "solution to", "handle this", "aspect", "Chicken soup tsoup tastup tast","Chicken sooup tast","Chicken ast","Chickenp tastChist","Chict","Chickt"]
let tagsView = TagsView()

let containterWidth:CGFloat = 500

let result = tagsView.createTagsView(words, containerWidth: containterWidth)
result.labels
result.view
result.view.frame

let tagViewFrame = result.view.frame

let display = UIView(frame: CGRectMake(0,0,tagViewFrame.width,tagViewFrame.height))
display.backgroundColor = UIColor.orangeColor()
display.addSubview(result.view)
display










