*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TestCase25 Survey Service Positive_Attr12 Yes_Attr14 Yes_UVS00072
    #Open Browser
    Open Browser    ${LinksurveyService_25}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888825    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    รวมๆแล้วชอบการบริการที่นี้ทุกอย่างเลย พนักงานยิ้มแย้มแจ่มใส แต่งตัวสะอาดสะอ้าน ถึงเป็นแค่ส่วนของการบริการรถมอไซต์แต่ก็มีระดับเทียบเท่าศูนย์รถยนต์ ชอบคะ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC25/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase26 Survey Sale Positive_Attr12 Yes_Attr14No_UVS00083
    #Open Browser
    Open Browser    ${LinksurveyService_26}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888826    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='9']    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    บริการอยู่ในเกณฑ์มาตรฐานของศูนย์อื่นๆ ดี แต่ก็ความสะอาดของส่วนรองรับดูเลอะน้ำมันเครื่อง เหมือนมีพนักงานมานั่งเล่นมากกว่าจะเป็นส่วนของลูกต้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='8']    #Click Score 8 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score 4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase27 Survey Service Positive_Attr12 No_Attr14 Yes_UVS00118
    #Open Browser
    Open Browser    ${LinksurveyService_27}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    088888827    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    รวมๆดีเลยนะ แต่เหมือนพนักงานไม่ค่อยฟังในสิ่งที่เราต้องการพูด หรือบางทีก็พูดแทรกชึ้นมา ถ้าปรับปรุงข้อนี้ได้คงจะดีกว่านี้
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(3)    #Click Score 2
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase28 Survey Service Positive NoInput_Attr12_Attr14 Yes_UVS00098
    #Open Browser
    Open Browser    ${LinksurveyService_28}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA #No Input
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='9']    #Click Score 9 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score 4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC28/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase29 Survey Service Neutral_Attr12 Yes_Attr14 Yes_UVS00076
    Open Browser    ${LinksurveyService_29}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888885    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 7 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC29/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase30 Survey Service Neutral_Attr12 Yes_Attr14No_UVS00097
    #Open Browser
    Open Browser    ${LinksurveyService_30}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888830    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_PageCSAT_TH.png
    Click Element    ${Score8}    #Click Score 8CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC30/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase31 Survey Service Neutral_Attr12 No_Attr14 Yes_UVS00101
    #Open Browser
    Open Browser    ${LinksurveyService_31}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888831    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 9
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(5)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(7)    #Click Score 6
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC31/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase32 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00140
    #Open Browser
    Open Browser    ${LinksurveyService_32}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='3']    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เอารถมาเคลมทำสี และเช็คระยะ ไม่มีพนักงานมาต้อนรับ ผ้าเบรคแจ้งให้เปลี่ยนสรุปไม่ได้เปลี่ยน เหนื่อยหน่าย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score 1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC32/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase33 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 No_UVS00102
    #Open Browser
    Open Browser    ${LinksurveyService_33}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888833    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    สีทำออกมาไม่สม่ำเสมอ ค่าใช้จ่ายไม่ตรงกับที่ประเมิน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC33/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase34 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00105
    #Open Browser
    Open Browser    ${LinksurveyService_34}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888834    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เอารถไปทิ้งไว้ เนื่องจากมีธุระและรอนาน ทางพนักงานแจ้งว่าจะมีการโทรมาแจ้งรายละเอียดเพิ่มเติม กว่าจะโทรมาแจ้งคืออีก 1 วัน นึกว่ารถหายไปสะหละ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='0']    #Click Score 0 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score 9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC34/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase35 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 No_UVS00138
    #Open Browser
    Open Browser    ${LinksurveyService_35}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    รถทำออกมามีเสียงแปลกๆ สุดท้ายต้องกลับเข้าศูนย์ไปใหม่ แต่พนักงานบริการโอเค มีแค่บางคนที่ไม่ยิ้มแย้ม ไม่สนใจลูกค้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC35/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase36 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 Yes_UVS00111
    #Open Browser
    Open Browser    ${LinksurveyService_36}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888836    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ตรวจเช็คสถาพไม่ละเอียด
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 7
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC36/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase37 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 No_UVS00125
    #Open Browser
    Open Browser    ${LinksurveyService_37}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0888888837    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ข้อเสียมากกว่าข้อดี จำดีเทลไม่ได้เท่าไหร่
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(8)    #Click Score 8
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC37/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase38 (N) Survey Service Negative Input OA Optin_Yes_Attr12 No_Attr14 No_UVS00090
    #Open Browser
    Open Browser    ${LinksurveyService_38}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888838    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageCSAT_TH.png
    Click Element    ${Score0}    #Click Score 0 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    รู้สึกพอมาใช้บริการที่นี่แล้วไม่อยากมาอีก ด้วยสภาพแวดล้อม และ พนักงานไม่ค่อยโอเค
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='3']    #Click Score 3 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_1    #ไม่ได้รับการแจ้ง
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(2)    #Click Score1
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC38/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase39 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00130
    #Open Browser
    Open Browser    ${LinksurveyService_39}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888839    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score 9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_1    #ไม่ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC39/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase40 Survey Service Negative NoInput OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00122
    #Open Browser
    Open Browser    ${LinksurveyService_40}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888840    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(7)    #Click Score 6
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC40/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase41 Survey Service Positive NoInput_Attr12_Attr14 Yes_UVS00093
    #Open Browser
    Open Browser    ${LinksurveyService_44}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA #No Input
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='9']    #Click Score 9 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC26/Positive_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC27/Positive_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(11)    #Click Score 10
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/Positive_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC44/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase42 Survey Service Neutral_Attr12 Yes_Attr14 Yes_UVS00092
    Open Browser    ${LinksurveyService_45}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888845    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='7']    #Click Score 7 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(4)    #Click Score 3
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(5)    #Click Score4
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/Neutral_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC45/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase43 (N) Survey Service Negative Input OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00099
    #Open Browser
    Open Browser    ${LinksurveyService_49}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888849    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='1']    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    มีการเก็บค่าใช้จ่ายเพิ่มเติมแต่ไม่มีการโทรแจ้งก่อน
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score 2
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(2)    #Click Score 1
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(7)    #Click Score 6
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(9)    #Click Score 8
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(4)    #Click Score 3
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC49/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase44 Survey Service Negative Input OA Optin_No_Attr12 Yes_Attr14 Yes_UVS00094
    #Open Browser
    Open Browser    ${LinksurveyService_51}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานพูดจาไม่โอเค
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(6)    #Click Score 5
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(10)    #Click Score 9
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC50/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(3)    #Click Score 2
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_0    #ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC51/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase45 Survey Service Negative NoInput OA Optin_Yes_Attr12 Yes_Attr14 Yes_UVS00103
    #Open Browser
    Open Browser    ${LinksurveyService_55}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Service}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0888888855    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Service    ${CheckquestionCSAT}    ${CheckAdaptiveText_Service}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Service    ${CheckquestionNPS}    ${CheckAdaptiveText_Service}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='2']    #Click Score 2 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(5)    #Click Score 4
    Sleep    2s
    #Attribute2
    Attribute2_Service    ${CheckAttribute_2}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page9'] label:nth-of-type(11)    #Click Score 10
    Sleep    2s
    #Attribute3
    Attribute3_Service    ${CheckAttribute_3}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute2_TH.png
    Sleep    2s
    Click Element    css=div[name='page10']] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score 0
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute4_TH.png
    Click Element    css=div[name='page11'] .Scale .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute12
    Attribute12_Service    ${CheckAttribute_12}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute12_TH.png
    Click Element    name=Answer_21_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute13
    Attribute13_Service    ${CheckAttribute_13}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute13_TH.png
    Click Element    css=div[name='page22'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute14
    Attribute14_Service    ${CheckAttribute_14}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute14_TH.png
    Click Element    name=Answer_23_0_0_0    #ได้รับการแจ้ง
    Sleep    2s
    #Attribute15
    Attribute15_Service    ${CheckAttribute_15}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute15_TH.png
    Click Element    css=div[name='page24'] label:nth-of-type(8)    #Click Score 7
    Sleep    2s
    #Attribute16
    Attribute16_Service    ${CheckAttribute_16}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute16_TH.png
    Click Element    css=div[name='page25'] label:nth-of-type(10)    #Click Score 9
    #Attribute17
    Attribute17_Service    ${CheckAttribute_17}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute17_TH.png
    Click Element    name=Answer_26_0_0_0    #ได้รับการแจ้ง
    #Attribute18
    Attribute18_Service    ${CheckAttribute_18}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute18_TH.png
    Click Element    name=Answer_27_0_0_0    #ได้รับการแจ้ง
    #Attribute19
    Attribute19_Service    ${CheckAttribute_19}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute19_TH.png
    Click Element    name=Answer_28_0_0_1    #ไม่ได้รับการแจ้ง
    #Attribute20
    Attribute20_Service    ${CheckAttribute_20}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/Negative_Attribute20_TH.png
    Click Element    name=Answer_29_0_0_0    #ได้รับการติดต่อ
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC55/EndingPage_TH.png
    Sleep    2s
    Close Browser
