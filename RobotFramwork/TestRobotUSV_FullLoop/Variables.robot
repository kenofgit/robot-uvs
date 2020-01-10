*** Settings ***
Library           Selenium2Library

*** Variables ***
${LoginGmail}     https://accounts.google.com/signin/v2/identifier?hl=th&passive=true&continue=https%3A%2F%2Fwww.google.com%2F&flowName=GlifWebSignIn&flowEntry=ServiceLogin
${Gmail}          css=div:nth-of-type(1) > .gb_g
#RD_ID_Check Alert
${RD_ID_TC5}      56cddaac-4287-4767-9154-c9293e262505
${RD_ID_TC6}      /
${RD_ID_TC7}      /
${RD_ID_TC8}      /
#RD_ID5
${RD_ID5_1}       56cddaac
${RD_ID5_2}       4287
${RD_ID5_3}       4767
${RD_ID5_4}       9154
${RD_ID5_5}       c9293e262505
#RD_ID6
${RD_ID6_1}       56cddaac
${RD_ID6_2}       4287
${RD_ID6_3}       4767
${RD_ID6_4}       9154
${RD_ID6_5}       c9293e262505
#RD_ID7
${RD_ID7_1}       56cddaac
${RD_ID7_2}       4287
${RD_ID7_3}       4767
${RD_ID7_4}       9154
${RD_ID7_5}       c9293e262505
#RD_ID7
${RD_ID8_1}       56cddaac
${RD_ID8_2}       4287
${RD_ID8_3}       4767
${RD_ID8_4}       9154
${RD_ID8_5}       c9293e262505
#CheckMailTitle
${MailTitle}      [FullLoop][Escalatio
${MailTitle_1}    n]Negative feedback
#CallCenter
${LinkLogin_CallCenter}    https://s-atv-staging.bizcuitvoc.com/UVS_FullLoop/index.html?mode=CATI
${UserLogin_CallCenter}    uvsagent1
${PasswordLogin_CallCenter}    uvsagent1
${ButtonLogin_CallCenter}    xpath=//div[@id='cati_signin']
${ButtonNext_RD}    xpath=//div[@id='randomRd']
${Btn_IconEND}    xpath=//span[text()='End']
#LinkSurveySale_CallCenter
${LinksurveySale_61}    https://s1-atv-staging.bizcuitvoc.com/46kbxw4c8
${LinksurveySale_62}    https://s1-atv-staging.bizcuitvoc.com/O0obKc8iD
${LinksurveySale_63}    https://s1-atv-staging.bizcuitvoc.com/AmPYgEO$r
${LinksurveySale_64}    https://s1-atv-staging.bizcuitvoc.com/ov@0dDHMW
${LinksurveySale_65}    https://s1-atv-staging.bizcuitvoc.com/8XsGafw@M
${LinksurveySale_66}    https://s1-atv-staging.bizcuitvoc.com/eSkgb1fV3
${LinksurveySale_67}    https://s1-atv-staging.bizcuitvoc.com/dByGCg$l@
${LinksurveySale_68}    https://s1-atv-staging.bizcuitvoc.com/OybSElS8$
${LinksurveySale_69}    https://s1-atv-staging.bizcuitvoc.com/xGIBiC5QZ
${LinksurveySale_70}    https://s1-atv-staging.bizcuitvoc.com/wNGlDkkA2
#Survey Sale Set1
${LinksurveySale_1}    https://s1-atv-staging.bizcuitvoc.com/Vnz4714qA
${LinksurveySale_2}    https://s1-atv-staging.bizcuitvoc.com/nRI3utOVN
${LinksurveySale_3}    https://s1-atv-staging.bizcuitvoc.com/$vzfpThar
${LinksurveySale_4}    https://s1-atv-staging.bizcuitvoc.com/iU7tJJFGB
${LinksurveySale_5}    https://s1-atv-staging.bizcuitvoc.com/8DuOP7d5K
${LinksurveySale_6}    https://s1-atv-staging.bizcuitvoc.com/QqoJ8vdy$
${LinksurveySale_7}    https://s1-atv-staging.bizcuitvoc.com/bwSwV3uyK
${LinksurveySale_8}    https://s1-atv-staging.bizcuitvoc.com/EmVosdC7N
${LinksurveySale_9}    https://s1-atv-staging.bizcuitvoc.com/55Gigy5ZH
${LinksurveySale_10}    https://s1-atv-staging.bizcuitvoc.com/PQ8OWLdWm
${LinksurveySale_11}    https://s1-atv-staging.bizcuitvoc.com/6ODSof@mp
${LinksurveySale_12}    https://s1-atv-staging.bizcuitvoc.com/djqJDQifO
#Survey sale All
${LinksurveySale_13}    https://s1-atv-staging.bizcuitvoc.com/Dl5uWDL2R
${LinksurveySale_14}    https://s1-atv-staging.bizcuitvoc.com/zifKaUpcJ
${LinksurveySale_15}    https://s1-atv-staging.bizcuitvoc.com/9N0DkakLV
${LinksurveySale_16}    https://s1-atv-staging.bizcuitvoc.com/FQlg3yfqC
${LinksurveySale_17}    https://s1-atv-staging.bizcuitvoc.com/YNCK3lnYm
${LinksurveySale_18}    https://s1-atv-staging.bizcuitvoc.com/wQg$49CMS
${LinksurveySale_19}    https://s1-atv-staging.bizcuitvoc.com/LbKjeOHL9
${LinksurveySale_20}    https://s1-atv-staging.bizcuitvoc.com/P0fmXgA@y
${LinksurveySale_21}    https://s1-atv-staging.bizcuitvoc.com/35WuenqUz
${LinksurveySale_22}    https://s1-atv-staging.bizcuitvoc.com/WXPdYr3x8
${LinksurveySale_23}    https://s1-atv-staging.bizcuitvoc.com/oXE9CvE5t
${LinksurveySale_24}    https://s1-atv-staging.bizcuitvoc.com/TqG5kUQq9
##
${LinksurveySale_25}    https://s1-atv-staging.bizcuitvoc.com/VbZQT1nMi
${LinksurveySale_26}    https://s1-atv-staging.bizcuitvoc.com/EIIJ52VjZ
${LinksurveySale_27}    https://s1-atv-staging.bizcuitvoc.com/USlhYfdQe
${LinksurveySale_28}    https://s1-atv-staging.bizcuitvoc.com/WgRaRmrlr
${LinksurveySale_29}    https://s1-atv-staging.bizcuitvoc.com/Cgc4enhSJ
${LinksurveySale_30}    https://s1-atv-staging.bizcuitvoc.com/gGc1uiRKS
${LinksurveySale_31}    https://s1-atv-staging.bizcuitvoc.com/4$tpetE2f
${LinksurveySale_32}    https://s1-atv-staging.bizcuitvoc.com/TNxl$oGCO
${LinksurveySale_33}    https://s1-atv-staging.bizcuitvoc.com/lajRaMkux
${LinksurveySale_34}    https://s1-atv-staging.bizcuitvoc.com/3qfjDi3Eh
${LinksurveySale_35}    https://s1-atv-staging.bizcuitvoc.com/pfQohwDNM
${LinksurveySale_36}    https://s1-atv-staging.bizcuitvoc.com/DgEHfY6t6
##
${LinksurveySale_37}    https://s1-atv-staging.bizcuitvoc.com/nU2qYhfv7
${LinksurveySale_38}    https://s1-atv-staging.bizcuitvoc.com/E86xic6JQ
${LinksurveySale_39}    https://s1-atv-staging.bizcuitvoc.com/6xjhHtgAg
${LinksurveySale_40}    https://s1-atv-staging.bizcuitvoc.com/TfStbtbuC
${LinksurveySale_41}    https://s1-atv-staging.bizcuitvoc.com/g@AQMPZzy
${LinksurveySale_42}    https://s1-atv-staging.bizcuitvoc.com/bENVJWzhM
${LinksurveySale_43}    https://s1-atv-staging.bizcuitvoc.com/IrY6SEMJ$
${LinksurveySale_44}    https://s1-atv-staging.bizcuitvoc.com/BIQ0epJAE
${LinksurveySale_45}    https://s1-atv-staging.bizcuitvoc.com/IlWZP4qdL
${LinksurveySale_46}    https://s1-atv-staging.bizcuitvoc.com/mt0ve7PsX
${LinksurveySale_47}    https://s1-atv-staging.bizcuitvoc.com/xJ2yzXCqU
${LinksurveySale_48}    https://s1-atv-staging.bizcuitvoc.com/gy1l2KH7d
##
${LinksurveySale_49}    https://s1-atv-staging.bizcuitvoc.com/xIo@TDG7g
${LinksurveySale_50}    https://s1-atv-staging.bizcuitvoc.com/kHLBij6Ip
${LinksurveySale_51}    https://s1-atv-staging.bizcuitvoc.com/MwlehnjR6
${LinksurveySale_52}    https://s1-atv-staging.bizcuitvoc.com/$x4MtkIFs
${LinksurveySale_53}    https://s1-atv-staging.bizcuitvoc.com/Rmc45LHtq
${LinksurveySale_54}    https://s1-atv-staging.bizcuitvoc.com/lvMRzdykl
${LinksurveySale_55}    https://s1-atv-staging.bizcuitvoc.com/u2p7XWM$w
${LinksurveySale_56}    https://s1-atv-staging.bizcuitvoc.com/oIVuQxw@B
${LinksurveySale_57}    https://s1-atv-staging.bizcuitvoc.com/0JB6H2BJW
${LinksurveySale_58}    https://s1-atv-staging.bizcuitvoc.com/cMJlrCT57
${LinksurveySale_59}    https://s1-atv-staging.bizcuitvoc.com/ObPRiziQK
${LinksurveySale_60}    https://s1-atv-staging.bizcuitvoc.com/M1mJUEOpt
#Survey Service Set1
${LinksurveyService_1}    https://s1-atv-staging.bizcuitvoc.com/127TTj2Pg
${LinksurveyService_2}    https://s1-atv-staging.bizcuitvoc.com/MqfCWnraD
${LinksurveyService_3}    https://s1-atv-staging.bizcuitvoc.com/cyUyrK6Bh
${LinksurveyService_4}    https://s1-atv-staging.bizcuitvoc.com/MXztNTMRY
${LinksurveyService_5}    https://s1-atv-staging.bizcuitvoc.com/9f9MM0kB@
${LinksurveyService_6}    https://s1-atv-staging.bizcuitvoc.com/5nWMnQhgG
${LinksurveyService_7}    https://s1-atv-staging.bizcuitvoc.com/fUHMZ3GpB
${LinksurveyService_8}    https://s1-atv-staging.bizcuitvoc.com/Li3v3qmj1
${LinksurveyService_9}    https://s1-atv-staging.bizcuitvoc.com/Di3FZD4kb
${LinksurveyService_10}    https://s1-atv-staging.bizcuitvoc.com/SVpAztLSy
${LinksurveyService_11}    https://s1-atv-staging.bizcuitvoc.com/mBO1uCAh@
${LinksurveyService_12}    https://s1-atv-staging.bizcuitvoc.com/OK4ysW@ag
${LinksurveyService_13}    https://s1-atv-staging.bizcuitvoc.com/WRx3BSOd6
${LinksurveyService_14}    https://s1-atv-staging.bizcuitvoc.com/S2G0McpSL
${LinksurveyService_15}    https://s1-atv-staging.bizcuitvoc.com/AzF5SOmVw
${LinksurveyService_16}    https://s1-atv-staging.bizcuitvoc.com/yPXDlDVna
${LinksurveyService_17}    https://s1-atv-staging.bizcuitvoc.com/wFGUv0z1R
${LinksurveyService_18}    https://s1-atv-staging.bizcuitvoc.com/fOs4beN0$
${LinksurveyService_19}    https://s1-atv-staging.bizcuitvoc.com/xpk207lto
${LinksurveyService_20}    https://s1-atv-staging.bizcuitvoc.com/T$w3k40SS
${LinksurveyService_21}    https://s1-atv-staging.bizcuitvoc.com/AuYBGvOTE
${LinksurveyService_22}    https://s1-atv-staging.bizcuitvoc.com/u5CMP$4hN
${LinksurveyService_23}    https://s1-atv-staging.bizcuitvoc.com/pi7x$os7U
${LinksurveyService_24}    https://s1-atv-staging.bizcuitvoc.com/LncGvug8Z
#Survey Service Set2
${LinksurveyService_25}    https://s1-atv-staging.bizcuitvoc.com/RPmnPKhGE
${LinksurveyService_26}    https://s1-atv-staging.bizcuitvoc.com/LMLhIZEMP
${LinksurveyService_27}    https://s1-atv-staging.bizcuitvoc.com/xckgrVr4y
${LinksurveyService_28}    https://s1-atv-staging.bizcuitvoc.com/KXLZcRKXv
${LinksurveyService_29}    https://s1-atv-staging.bizcuitvoc.com/KbLr8yISJ
${LinksurveyService_30}    https://s1-atv-staging.bizcuitvoc.com/t8X1x2xrg
${LinksurveyService_31}    https://s1-atv-staging.bizcuitvoc.com/26o3x2bu8
${LinksurveyService_32}    https://s1-atv-staging.bizcuitvoc.com/yOvCnLoeO
${LinksurveyService_33}    https://s1-atv-staging.bizcuitvoc.com/BSkcE$$TA
${LinksurveyService_34}    https://s1-atv-staging.bizcuitvoc.com/M$A9MprfQ
${LinksurveyService_35}    https://s1-atv-staging.bizcuitvoc.com/p3TO8UgKo
${LinksurveyService_36}    https://s1-atv-staging.bizcuitvoc.com/HvmI5wumj
${LinksurveyService_37}    https://s1-atv-staging.bizcuitvoc.com/FOCxiZGbb
${LinksurveyService_38}    https://s1-atv-staging.bizcuitvoc.com/7yw4c2cE$
${LinksurveyService_39}    https://s1-atv-staging.bizcuitvoc.com/Tzlnmshjg
${LinksurveyService_40}    https://s1-atv-staging.bizcuitvoc.com/Me1moHgOP
${LinksurveyService_41}    https://s1-atv-staging.bizcuitvoc.com/0t9qmDAeQ
${LinksurveyService_42}    https://s1-atv-staging.bizcuitvoc.com/rlhmfcAfF
${LinksurveyService_43}    https://s1-atv-staging.bizcuitvoc.com/$gY4wrMJK
${LinksurveyService_44}    https://s1-atv-staging.bizcuitvoc.com/S0hVVUG6o
${LinksurveyService_45}    https://s1-atv-staging.bizcuitvoc.com/GXJV6Vt11
${LinksurveyService_46}    /
${LinksurveyService_47}    /
${LinksurveyService_48}    /
${LinksurveyService_49}    /
${LinksurveyService_50}    /
${LinksurveyService_51}    /
${LinksurveyService_52}    /
${LinksurveyService_53}    /
${LinksurveyService_54}    /
${LinksurveyService_55}    /
${LinksurveyService_56}    /
#Browser
${Browser}        firefox
#Page1
${Checkintro}     ขอบคุณคุณ
${Checkintro_1}    ที่มา
${Checkintro_2}    ที่ร้าน
${Checkintro_3}    ของเรานะคะ เราอยากทราบว่าคุณรู้สึกอย่างไรบ้างหลังได้รับการบริการในครั้งนี้ ซึ่งคุณมีสิทธิได้รับเสื้อยืดสกรีนลายจาก เอ.พี. ฮอนด้า ทั้งหมดจำนวน 10 รางวัล เพียงตอบคำถามครบทุกข้อเป็น 10 ท่านแรก
${CheckAdaptiveText_Sale}    ซื้อรถจักรยานยนต์ฮอนด้า
${CheckAdaptiveText_Service}    ใช้บริการ
#Page2
${CheckRewardTH}    เงื่อนไขกิจกรรม
${CheckRewardTH_1}    1. ผู้เข้าร่วมกิจกรรม 10 ท่านแรกของแต่ละเดือน และตอบแบบสอบถามด้วยข้อมูลที่ถูกต้องและครบถ้วน จึงจะได้รับรางวัลจากทางบริษัทฯ ตั้งแต่วันที่ 3 เดือนกุมภาพันธ์ 2563 ถึงวันที่ 30 เดือนมิถุนายน 2563 เท่านั้น
${CheckRewardTH_2}    2. ประกาศรายชื่อผู้ได้รับของรางวัลวันที่ 31 เดือนกรกฎาคม 2563 โดยบริษัทจะโทรติดต่อไปยังผู้ได้รับของรางวัลทางหมายเลขโทรศัพท์มือถือ ตามที่ระบุไว้
${CheckRewardTH_3}    3. หากไม่สามารถติดต่อผู้ได้รับของรางวัลได้จะถือว่าผู้ได้รับของรางวัลยินยอมที่จะสละสิทธิไม่ขอรับรางวัลใดๆทั้งสิ้น
${CheckRewardTH_4}    4. ผู้ได้รับของรางวัลมีสิทธิได้รับรางวัล จำกัด 1 สิทธิ/คน
${CheckRewardTH_5}    5. ผู้ได้รับของรางวัลจะต้องทำตามกติกาครบถ้วนเท่านั้น ผู้ที่ไม่ทำตามกฏและกติกา ทางบริษัทฯจะถือเป็นโมฆะ และปฏิเสธการให้รางวัลโดยไม่ต้องแจ้งให้ทราบล่วงหน้า
${CheckRewardTH_6}    6. รางวัลไม่สามารถเปลี่ยนเป็นเงินสดและไม่สามารถโอนสิทธิให้กับผู้อื่นได้
${CheckRewardTH_7}    7. บริษัทฯ ขอสงวนสิทธิในการเปลี่ยนแปลงของรางวัล หรือเงื่อนไขการเข้าร่วม โดยไม่ต้องแจ้งให้ทราบล่วงหน้า และการตัดสินของคณะกรรมการถือเป็นเด็ดขาด และสิ้นสุด
${CheckRewardTH_8}    8. บริษัทฯ มีสิทธิในการปฏิเสธ ยกเลิก หรือหยุดกิจกรรม ดังกล่าวได้โดยชอบธรรมและไม่จำเป็นต้องแจ้งให้ทราบ
${CheckRewardTH_9}    9. สอบถามรายละเอียดเพิ่มเติมที่ คุณณัชชารีย์ นิธิยศกุลพงษ์ 02-6641675 ต่อ 102
${CheckQuestionReward}    ข้าพเจ้าได้อ่านและยอมรับเงื่อนไขการร่วมตอบแบบสอบถามในครั้งนี้
${Opt_in_Yes_TH}    ยอมรับ
${Opt_in_No_TH}    ไม่ยอมรับ
#Page3
${CheckPleaseTel}    กรุณากรอกเบอร์โทรที่สามารถติดต่อได้หากคุณได้รับรางวัลค่ะ
${FieldTel_Input}    name=tel_opt_in
${CheckThankyou_Page}    ขอบคุณที่สละเวลาแสดงความคิดเห็น ทางเราจะนำไปปรับปรุงและพัฒนาคุณภาพการให้บริการต่อไปค่ะ
#CSAT
${CheckquestionCSAT}    จากประสบการณ์ในการ
${CheckquestionCSAT1}    ในครั้งนี้ คะแนนเต็ม 10 คุณจะให้คะแนนร้านเรากี่คะแนนคะ
${CheckCSAT_Pos}    เรารู้สึกยินดีเป็นอย่างมากที่คุณได้รับการบริการที่ถูกใจ
${CheckCSAT_Pos1}    เราอยากทราบว่าคุณชอบสิ่งไหนที่เราบริการคะ
${CheckCSAT_Neg}    เราเสียใจกับเรื่องที่เกิดขึ้นค่ะ
${CheckCSAT_Neg1}    รบกวนเล่าเหตุการณ์ให้เราฟังหน่อยนะคะ
${CheckOptinNegative}    เป็นไปได้ไหม ที่เราจะขอติดต่อกลับไปเพื่อสอบถามข้อมูลเพิ่มเติม เพื่อการพัฒนาผลิตภัณฑ์และบริการของเราให้ดีขึ้นค่ะ
#NPS
${CheckquestionNPS}    จากประสบการณ์ในการ
${CheckquestionNPS1}    ในครั้งนี้ คุณมีแนวโน้มมากแค่ไหนที่จะแนะนำบริการของเราให้กับคนที่คุณรัก?
#Attribute1
${CheckAttribute_1}    ความรวดเร็วในการทักทาย และสอบถามความต้องการของพนักงาน เมื่อท่านมาถึงร้าน อยู่ในระดับใดคะ
${ChoiceAttri1_NA}    xpath=//label[text()='ไม่มีพนักงานเข้ามาทักทาย']
#Attribute2
${CheckAttribute_2}    บุคลิกภาพ กริยา มารยาท ความสุภาพ ของพนักงานที่มาต้อนรับท่าน อยู่ในระดับใดคะ
#Attribute3
${CheckAttribute_3}    ความเอาใจใส่ของพนักงานในการรับฟังความต้องการจากท่าน อยู่ในระดับใดคะ
#Attribute4
${CheckAttribute_4}    พนักงานที่คุณติดต่อด้วยมีความรู้ด้านเทคนิคและตัวสินค้าดีแค่ไหนคะ
#Attribute5
${CheckAttribute_5}    คุณสามารถเดินเลือกดูรถในร้านได้อย่างอิสระมากน้อยแค่ไหนคะ
#Attribute6
${CheckAttribute_6}    การจัดสินค้าอื่นๆ ภายในร้าน เช่น อุปกรณ์ตกแต่งรถ ทำให้สินค้าดูน่าซื้อมากน้อยแค่ไหนคะ
#Attribute7
${CheckAttribute_7}    คุณได้รับคำแนะนำเกี่ยวกับหลักการขับขี่ปลอดภัยจากทางร้านหรือไม่คะ (การขับขี่ปลอดภัยคือ การแนะนำให้สวมหมวกกันน็อค ไม่ขับขี่เร็ว ไม่ขี่ตัดหน้า ไม่ขี้จี้ หรือดื่มไม่ขับ)
#ChoiceProfile7
${CheckAtt7_Profile1}    คุณได้รับคำแนะนำเกี่ยวกับหลักการขับขี่ปลอดภัยจากทางร้านด้วยวิธีการ หรือ ช่องทางไหนบ้างคะ
${CheckChoice1_TH}    xpath=//span[text()='พนักงานอธิบายด้วยปากเปล่า']
${CheckChoice2_TH}    xpath=//span[text()='พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน']
${CheckChoice3_TH}    xpath=//span[text()='ทางไลน์/เฟซบุ๊ค (ทางร้านเพิ่มลูกค้าทางไลน์ หรือลูกค้าเห็นทางเพจเฟซบุ๊คของทางร้านจากการเชิญเฟซบุ๊ค)']
${CheckChoice4_TH}    xpath=//span[text()='จอทีวี']
${CheckChoice5_TH}    xpath=//span[text()='จอคอมพิวเตอร์ (คอมตั้งโต๊ะ หรือโน๊ตบุ๊ค)']
${CheckChoice6_TH}    xpath=//span[text()='มือถือสมาร์ทโฟน (Smartphone)']
${CheckChoice7_TH}    xpath=//span[text()='แท็บเล็ต (Tablet)']
${CheckChoice8_TH}    xpath=//span[text()='ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)']
${CheckChoice9_TH}    xpath=//span[text()='อื่นๆ โปรดระบุ']
#Attribute8
${CheckAttribute_8}    คุณคิดว่าการแนะนำเกี่ยวกับการขับขี่ปลอดภัยเป็นประโยชน์ต่อตัวลูกค้าเองมากน้อยแค่ไหนคะ
#Attribute9
${CheckAttribute_9}    คุณเข้าใจเงื่อนไขการรับประกันคุณภาพรถใหม่ที่พนักงานอธิบายมากน้อยแค่ไหนคะ
#Attribute10
${CheckAttribute_10}    พนักงานได้สาธิตเกี่ยวกับการใช้รถมอเตอร์ไซค์และอุปกรณ์เกี่ยวกับรถมอเตอร์ไซค์ด้วยความเอาใจใส่มากน้อยแค่ไหนคะ
#Attribute11
${CheckAttribute_11}    พนักงานที่ร้านทำให้คุณรู้สึกได้ว่าคุณเป็นลูกค้าคนสำคัญได้ดีแค่ไหนคะ
#Attribute12
${CheckAttribute_12}    พนักงานมีการแจ้งรายการซ่อมก่อนดำเนินการหรือไม่
#Attribute13
${CheckAttribute_13}    ท่านเข้าใจการแจ้งรายการซ่อมก่อนดำเนินการในระดับใด
#Attribute15
${CheckAttribute_14}    ทางร้านมีการประเมินค่าซ่อมหรือค่าใช้จ่ายอื่นๆก่อนการซ่อมหรือไม่
#Attribute15
${CheckAttribute_15}    ท่านเข้าใจการประเมินค่าซ่อมหรือค่าใช้จ่ายๆอื่นก่อนการซ่อมในระดับใด
#Attribute16
${CheckAttribute_16}    สิ่งอำนวยความสะดวก และความสะอาดในบริเวณที่พักลูกค้าอยู่ในระดับใดคะ
#Attribute17
${CheckAttribute_17}    ทางร้านมีการแจ้งกำหนดเวลาซ่อมเสร็จหรือไม่คะ
#Attribute18
${CheckAttribute_18}    ทางร้านมีการชี้แจงรายละเอียดค่าซ่อมและค่าอะไหล่หลังการเข้ารับบริการหรือไม่คะ
#Attribute19
${CheckAttribute_19}    ทางร้านมีการแจ้งนัดหมายให้เข้ารับบริการในครั้งต่อไปหรือไม่คะ
#Attribute20
${CheckAttribute_20}    ทางร้านมีการติดต่อสอบถามคุณภาพงานซ่อมผ่านทางโทรศัพท์ ไลน์ SMS หรือช่องทางอื่นๆ หลังเข้ารับบริการหรือไม่คะ
#Media
${CheckQMedia}    ไม่ทราบว่าการที่คุณเข้ามาซื้อรถจักรยานยนต์ฮอนด้า คุณเห็นสื่อจากช่องทางใดบ้างคะ
${CheckMChoice1_TH}    name=Answer_30_0_0_0
${CheckMChoice2_TH}    name=Answer_30_0_0_1
${CheckMChoice3_TH}    name=Answer_30_0_0_2
${CheckMChoice4_TH}    name=Answer_30_0_0_3
${CheckMChoice5_TH}    name=Answer_30_0_0_4
${CheckMChoice6_TH}    name=Answer_30_0_0_5
${CheckMChoice7_TH}    name=Answer_30_0_0_6
${CheckMChoice8_TH}    name=Answer_30_0_0_7
${CheckMChoice9_TH}    name=Answer_30_0_0_8
${CheckMChoice10_TH}    name=Answer_30_0_0_9
${CheckMChoice11_TH}    name=Answer_30_0_0_10
${CheckMChoice12_TH}    name=Answer_30_0_0_11
${CheckMChoice13_TH}    name=Answer_30_0_0_12
#button
${btn_start}      xpath=//span[text()='เริ่มต้น']
${btn_next}       xpath=//span[text()='ถัดไป']
${btn_TH}         ถัดไป
${Btn_IconNext}    //*[@class='icon fl-fl-chevron-right']
#Score
${Score0}         xpath=//span[text()='0']
${Score1}         xpath=//span[text()='1']
${Score2}         xpath=//span[text()='2']
${Score3}         xpath=//span[text()='3']
${Score4}         xpath=//span[text()='4']
${Score5}         xpath=//span[text()='5']
${Score6}         xpath=//span[text()='6']
${Score7}         xpath=//span[text()='7']
${Score8}         xpath=//span[text()='8']
${Score9}         xpath=//span[text()='9']
${Score10}        xpath=//span[text()='10']
