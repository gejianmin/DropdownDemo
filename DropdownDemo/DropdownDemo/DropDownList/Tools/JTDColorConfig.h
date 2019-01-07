//
//  JTDColorConfig.h
//  SwishChargeClient
//
//  Created by tongda ju on 2017/9/7.
//  Copyright © 2017年 JianMin Ge. All rights reserved.
//

#ifndef JTDColorConfig_h
#define JTDColorConfig_h

#import <UIkit/UIkit.h>

/*!< alpha通道RGB颜色*/

#define RGBACOLOR(r,g,b,a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:(a)]

/*!< alpha通道十六进制颜色*/

#define HEXCOLOR(c,a) [UIColor colorWithRed:((c>>16)&0xFF)/255.0 green:((c>>8)&0xFF)/255.0 blue:(c&0xFF)/255.0 alpha:(a)]

/*!< 通道十六进制颜色*/

#define COLORHEX(hex) [UIColor colorWithRed:((float)(((hex) & 0xFF0000) >> 16)) / 255.0 green:((float)(((hex) & 0xFF00) >> 8))/255.0 blue:((float)((hex) & 0xFF)) / 255.0 alpha:1.0]

/*!< 主题色*/

#define JTD_MAIN_THEME_COLOR       RGBACOLOR(255, 34, 25,1)

/*!< 主背景色*/

#define JTD_MAIN_BG_COLOR          COLORHEX(0xF2F2F2)

/*!< 通用线条颜色 */

#define JTD_LINE_COLOR             RGBACOLOR(211, 212, 212,1)

/*!< 通用视图颜色 */

#define JTD_VIEW_BG_COLOR          RGBACOLOR(242, 242, 242,1)

/*!< tabbar文字normal颜色*/
#define JTD_TABBAR_COLOR_NORMAL COLORHEX(0x999999)
/*!< tabbar文字selected颜色*/
#define JTD_TABBAR_COLOR_SELECTED kColor5EA829
/*!< tabbar背景色 */
#define JTD_TABBAR_COLOR_BACKGROUND COLORHEX(0xffffff)
/*!< nav分割线颜色 */
#define JTD_NAV_COLOR_LINE JTD_VIEW_BG_COLOR

/*!< 常用颜色*/

#define kColorClear             [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0]
#define kColorBlue              [UIColor colorWithRed:50/255.0 green:168/255.0 blue:240/255.0 alpha:1]
#define kColorLightBlue         [UIColor colorWithRed:50/255.0 green:168/255.0 blue:240/255.0 alpha:0.5]
#define kColorBlueH             [UIColor colorWithRed:9/255.0 green:104/255.0 blue:184/255.0 alpha:1]
#define kColorBlueD             [UIColor colorWithRed:197/255.0 green:197/255.0 blue:197/255.0 alpha:1]
#define kColorOrange            [UIColor colorWithRed:255/255.0 green:132/255.0 blue:0/255.0 alpha:1]
#define kColorOrange1           [UIColor colorWithRed:255/255.0 green:133/255.0 blue:14/255.0 alpha:1]
#define kColorOrange2           [UIColor colorWithRed:255/255.0 green:148/255.0 blue:0/255.0 alpha:1]
#define kColorGreen             [UIColor colorWithRed:76/255.0 green:217/255.0 blue:100/255.0 alpha:1]

#define kColor000000            COLORHEX(0x000000)
#define kColor333333            COLORHEX(0x333333)
#define kColor4a4a4a            COLORHEX(0x4a4a4a)
#define kColor656565            COLORHEX(0x656565)
#define kColor030303            COLORHEX(0x030303)
#define kColor666666            COLORHEX(0x666666)
#define kColor8D8E90            COLORHEX(0x8D8E90)
#define kColor999999            COLORHEX(0x999999)
#define kColor9b9b9b            COLORHEX(0x9b9b9b)
#define kColorB3B3B3            COLORHEX(0xB3B3B3)
#define kColorC7C7C7            COLORHEX(0xC7C7C7)
#define kColorECECEC            COLORHEX(0xECECEC)
#define kColorF2F2F2            COLORHEX(0xf2f2f2)
#define kColorFAFAFA            COLORHEX(0xFAFAFA)
#define kColorFFFFFF            COLORHEX(0xFFFFFF)
#define kColorF7F7F7            COLORHEX(0xF7F7F7)
#define kColorFF4C4A            COLORHEX(0xFF4C4A)
#define kColorF5001E            COLORHEX(0xF5001E)
#define kColorFFC74E            COLORHEX(0xFFC74E)
#define kColorE8E8E8            COLORHEX(0xE8E8E8)
#define kColorFFE029            COLORHEX(0xFFE029)
#define kColor5EA829            COLORHEX(0x5EA829)
#define kColorF9F9F9            COLORHEX(0xF9F9F9)
#define kColorD9D9D9            COLORHEX(0xD9D9D9)
#define kColorACACAC            COLORHEX(0xACACAC)
#define kColorFF6416            COLORHEX(0xFF6416)
#define kColorf0f0f0            COLORHEX(0xf0f0f0)
#define kColorEEEEEE            COLORHEX(0xEEEEEE)
#define kColorDCDCDC            COLORHEX(0xDCDCDC)
#define kColorA8C75A            COLORHEX(0xA8C75A)
#define kColorFC7A78            COLORHEX(0xFC7A78)
#define kColorDADADA            COLORHEX(0xDADADA)

#endif /* JTDColorConfig_h */
