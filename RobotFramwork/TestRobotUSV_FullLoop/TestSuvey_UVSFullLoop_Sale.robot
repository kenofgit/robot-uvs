*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TestCase1 Survey Sale Positive_ได้รับคำแนะนำการขับขี่_UVS 00001
    #Open Browser
    Open Browser    ${LinksurveySale_1}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC1/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_PageTel_TH.png
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาตอบคำถามที่จำเป็นให้ครบถ้วน    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_PageTelNoSuccess_TH.png
    Sleep    2s
    Select Window    MAIN
    Sleep    2s
    Press Key    name=tel_opt_in    0999999991    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_PageCSAT_TH.png
    Click Element    ${Score9}    #Click Score 9 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    พนักงานแนะนำดีรวมทั้งได้เปรียบเทียบข้อดีที่แตกต่างกันของแต่ละรุ่น รวมทั้งแนะนำการใช้งานที่ดีให้กับลูกค้า แถมยังมีโปรดีๆ ให้อีกด้วย
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='10']    #Click Score 10 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice1_TH}    #พนักงานอธิบายด้วยปากเปล่า
    Click Element    ${CheckChoice2_TH}    #พนักงานอธิบายด้วยโบรชัวร์/สมุดคู่มือการรับประกัน
    Click Element    ${CheckChoice7_TH}    #แท็บเล็ต (Tablet)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice9_TH}    #ออกบูท/อีเว้นท์ ตามสถานที่ต่างๆ
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=media_13_oa    โฆษณาใน MRT
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase2 Survey Sale Positive_ไม่ได้รับคำแนะนำการขับขี่_UVS0007
    #Open Browser
    Open Browser    ${LinksurveySale_2}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC2/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_PageCSAT_TH.png
    Click Element    ${Score10}    #Click Score 10 CSAT
    #Input CSAT OA
    OA_CSATPos    ${CheckCSAT_Pos}    ${CheckCSAT_Pos1}
    Press Key    name = csat_pos    พนักงานแนะนำดีรวมทั้งได้เปรียบเทียบข้อดีที่แตกต่างกันของแต่ละรุ่น พร้อมทั้งยิ้มแย้มแจ่มใส แม่บ้านก็บริการดี มีของว่างให้ทานระหว่างรอเอกสาร
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='9']    #Click Score 9 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Positive_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice13_TH}    #อื่นๆ โปรดระบุ
    Click Element    ${Btn_IconNext}
    Element Should Contain    css=[page='page30'] [id='bar-alert-message']    โปรดระบุ อื่นๆ โปรดระบุ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/NoInputMedia_TH.png
    Press Key    name=media_13_oa    Concert
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC2/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase3 Survey Neutral_ได้รับคำแนะนำการขับขี่_UVS0009
    #Open Browser
    Open Browser    ${LinksurveySale_3}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Positive_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC3/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_PageTel_TH.png
    Press Key    name=tel_opt_in    0999999993    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_PageCSAT_TH.png
    Click Element    ${Score7}    #Click Score 7 CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='6']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale .NA.STAR11    #Click Score2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice3_TH}    #ทางไลน์/เฟซบุ๊ค (ทางร้านเพิ่มลูกค้าทางไลน์ หรือลูกค้าเห็นทางเพจเฟซบุ๊คของทางร้านจากการเชิญเฟซบุ๊ค)
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    แผ่นพับ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] .Scale > .scalenormal > .ScaleValue > label:nth-of-type(1)    #Click Score0
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice12_TH}    #เพื่อน/ญาติ/คนรู้จักแนะนำ
    Click Element    ${CheckMChoice10_TH}    #ป้ายโฆษณาริมถนน
    Click Element    ${CheckMChoice9_TH}    #ออกบูท/อีเว้นท์ ตามสถานที่ต่างๆ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC3/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase4 Survey Neutral Positive_ไม่ได้รับคำแนะนำการขับขี่_UVS00018
    #Open Browser
    Open Browser    ${LinksurveySale_4}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC4/Neutral_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_PageCSAT_TH.png
    Click Element    ${Score8}    #Click Score 8CSAT
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='6']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Neutral_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice7_TH}    #โฆษณาใน Youtube
    Click Element    ${CheckMChoice11_TH}    # หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC4/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase5 (N) Survey Sale Negative_Input OA_Optin Yes_Guided_UVS 00008
    #Open Browser
    Open Browser    ${LinksurveySale_5}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC5/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999995    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 4 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    ไม่มีใครมาต้อนรับเดินวนอยู่นานมาก แต่พอมีลูกค้าที่แต่งตัวดีๆ มารีบเดินออกไปรับเสียความรู้สึกมากๆตั้งใจมาซื้อ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='4']    #Click Score 4 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] .Scale .NA.STAR11    #ไม่มีพนักงานเข้ามาทักทาย
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] .Scale .NA.STAR11    #Click Score1
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice8_TH}    #ป้ายโฆษณาดิจิทัล ที่ไม่ใช่ทีวี (Digital Signage)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice9_TH}    #ออกบูท/อีเว้นท์ ตามสถานที่ต่างๆ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC5/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase6 (N) Survey Sale Negative_Input OA_Optin Yes_NoGuided_UVS00019
    #Open Browser
    Open Browser    ${LinksurveySale_6}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC6/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_PageCSAT_TH.png
    Click Element    ${Score3}    #Click Score 3 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานไม่เอาใจใส่แนะนำการชับขี่ปลอดภัยไม่รู้เรื่อง
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(7)    #ClickScore 6
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice4_TH}    #Blogger Review
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC6/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase7 Survey Sale Negative_Input OA_OptinNo_Guided_UVS0003
    #Open Browser
    Open Browser    ${LinksurveySale_7}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC7/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999997    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_PageCSAT_TH.png
    Click Element    ${Score2}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เดินจี้และเชียร์ตลอด ไม่มีให้โอกาสคิด พนักงานพูดตลอด
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    # Click Score3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice7_TH}    #แท็บเล็ต (Tablet)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Click Element    ${CheckMChoice3_TH}    #Line
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC7/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase8 Survey Sale Negative_Input OA_OptinNo_NoGuided_UVS00012
    #Open Browser
    Open Browser    ${LinksurveySale_8}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC8/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999997    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_PageCSAT_TH.png
    Click Element    ${Score0}    #Click Score 0 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    เดินจี้และเชียร์ตลอด ไม่มีให้โอกาสคิด พนักงานพูดตลอด
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    # Click Score3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC8/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase9 Survey Sale Negative_NoInput OA_Optin Yes_Guided_UVS0002
    #Open Browser
    Open Browser    ${LinksurveySale_9}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC9/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999999    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_PageCSAT_TH.png
    Click Element    ${Score0}    #Click Score 0 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(4)    #Click Score3
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice9_TH}    #อื่นๆ โปรดระบุ
    Press Key    name=profile1_9_oa    ไลน์ส่งข้อมูลให้ทางไลน์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(7)    #Click Score6
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice1_TH}    #Facebook
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Click Element    ${CheckMChoice3_TH}    #Line
    Click Element    ${CheckMChoice4_TH}    #Blogger Review
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC9/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase10 Survey Sale Negative_NoInputOA_Optin Yes_NoGuided_UVS00011
    #Open Browser
    Open Browser    ${LinksurveySale_10}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC10/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_1    #ไม่ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_PageCSAT_TH.png
    Click Element    //*[@compname="LayoutNodeUI_24"]//following::span[text()='2']    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Press Key    name = csat_neg    พนักงานไม่เอาใจใส่แนะนำการชับขี่ปลอดภัยไม่รู้เรื่อง
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_0    #ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='6']    #Click Score 6 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(2)    #ClickScore 1
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(3)    #Click Score2
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${Btn_IconNext}
    Sleep    2s
    Element Should Contain    css=[page='page30'] [id='bar-alert-message']    โปรดเลือกอย่างน้อย 1 คำตอบค่ะ
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/NoSelectMedia_TH.png
    Click Element    ${CheckMChoice2_TH}    #Instagram
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC10/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase11 Survey Sale Negative_NoInput OA_OptinNo_Guided_UVS00017
    #Open Browser
    Open Browser    ${LinksurveySale_11}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC11/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    0999999911    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_PageCSAT_TH.png
    Click Element    ${Score4}    #Click Score 2 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='1']    #Click Score 1 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(4)    # Click Score3
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute7_TH.png
    Click Element    name=Answer_15_0_0_0    #ได้รับ
    Sleep    2s
    #Attribute7_Profile
    Attribute7_Profile    ${CheckAtt7_Profile1}
    ChoiceProfile
    Click Element    ${CheckChoice6_TH}    #มือถือสมาร์ทโฟน (Smartphone)
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Negative_Profile_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Attribute8
    Attribute8_Sale    ${CheckAttribute_8}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC1/Negative_Attibute8_TH.png
    Click Element    css=div[name='page16'] label:nth-of-type(10)    #Click Score9
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Negative_Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(5)    #Click Score4
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice5_TH}    #โฆษณาทางโทรทัศน์
    Click Element    ${CheckMChoice6_TH}    #โฆษณาทางวิทยุ
    Click Element    ${CheckMChoice8_TH}    #โฆษณาในเวปไซต์
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC11/EndingPage_TH.png
    Sleep    2s
    Close Browser

TestCase12 Survey Sale Negative_NoInput OA_OptinNo_NoGuidedUVS00020
    #Open Browser
    Open Browser    ${LinksurveySale_12}    ${Browser}
    Maximize Browser Window
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_Page0_TH.png
    Click Element    ${btn_start}
    #Inroduction Page
    IntroductionSale_Service    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${CheckAdaptiveText_Sale}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Service/TC12/Negative_PageIntro_TH.png
    Click Element    ${btn_next}
    Sleep    2s
    #Condition Reward
    Reward Condition    ${CheckRewardTH}    ${CheckRewardTH_1}    ${CheckRewardTH_2}    ${CheckRewardTH_3}    ${CheckRewardTH_4}    ${CheckRewardTH_5}
    ...    ${CheckRewardTH_6}    ${CheckRewardTH_7}    ${CheckRewardTH_8}    ${CheckRewardTH_9}    ${CheckQuestionReward}    ${Opt_in_Yes_TH}
    ...    ${Opt_in_No_TH}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_PageRewardCondition_TH.png
    Click Element    name=Answer_2_0_0_0    #ยอมรับ
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #Input Tel in case reward Yes
    Please TelePhoneNumber    ${CheckPleaseTel}    ${FieldTel_Input}
    Press Key    name=tel_opt_in    9999    #Input Tel
    Click Element    ${Btn_IconNext}
    Element Text Should Be    id=bar-alert-message    กรุณาระบุในรูปแบบหมายเลขโทรศัพท์ ตัวอย่างเช่น 0891112222    #Check Alert No Input Tel
    Sleep    2s
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/NoNegative_PageTelSuccess_TH.png
    Press Key    name=tel_opt_in    0999999912    #Input Tel
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_PageTelSuccess_TH.png
    Click Element    ${Btn_IconNext}
    #CSAT
    QCSAT_Sale    ${CheckquestionCSAT}    ${CheckAdaptiveText_Sale}    ${CheckquestionCSAT1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_PageCSAT_TH.png
    Click Element    ${Score1}    #Click Score 1 CSAT
    #Input CSAT OA Neg
    OA_CSATNeg    ${CheckCSAT_Neg}    ${CheckCSAT_Neg1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_PageCSATOAPositive_TH.png
    Sleep    2s
    Click Element    ${Btn_IconNext}
    #Optin Negative
    OptinNegative    ${CheckOptinNegative}
    Click Element    name=Answer_7_0_0_1    #ไม่ยินยอม
    #NPS
    QNPS_Sale    ${CheckquestionNPS}    ${CheckAdaptiveText_Sale}    ${CheckquestionNPS1}
    Score0to10_text
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_NPS_TH.png
    Sleep    2s
    Set Focus To Element    name=nps
    Click Element    //*[@compname="LayoutNodeUI_53"]//following::span[text()='5']    #Click Score 5 NPS
    Sleep    2s
    #Attribute1
    Attribute1_Sale_Service    ${CheckAttribute_1}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_Attibute1_TH.png
    Sleep    2s
    Click Element    css=div[name='page8'] label:nth-of-type(3)    # Click Score2
    Sleep    2s
    #Attribute4
    Attibute4_Sale_Service    ${CheckAttribute_4}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_Attibute4_TH.png
    Click Element    css=div[name='page11'] label:nth-of-type(6)    #Click Score5
    Sleep    2s
    #Attribute5
    Attribute5_Sale    ${CheckAttribute_5}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_Attibute5_TH.png
    Click Element    css=div[name='page12'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute6
    Attribute6_Sale    ${CheckAttribute_6}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Negative_Attibute6_TH.png
    Click Element    css=div[name='page13'] label:nth-of-type(11)    #Click Score10
    Sleep    2s
    #Attribute7
    Attribute7_Sale    ${CheckAttribute_7}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Attibute7_TH.png
    Click Element    name=Answer_15_0_0_1    #ไม่ได้รับ
    Sleep    2s
    #Attribute9
    Attribute9_Sale    ${CheckAttribute_9}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Attibute9_TH.png
    Click Element    css=div[name='page17'] label:nth-of-type(8)    #Click Score7
    Sleep    2s
    #Attribute10
    Attribute10_Sale    ${CheckAttribute_10}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Attibute10_TH.png
    Click Element    css=div[name='page18'] label:nth-of-type(9)    #Click Score8
    Sleep    2s
    #Attribute11
    Attribute11_Sale    ${CheckAttribute_11}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Attibute11_TH.png
    Click Element    css=div[name='page19'] label:nth-of-type(2)    #Click Score1
    Sleep    2s
    #CheckMedia
    QMedia_Sale    ${CheckQMedia}
    ChoiceMedia
    Click Element    ${CheckMChoice11_TH}    #หน้าร้านฮอนด้า
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/Media_TH.png
    Click Element    ${Btn_IconNext}
    Sleep    2s
    #EndPage
    Page Should Contain    ${CheckThankyou_Page}
    Capture Page Screenshot    D:/UVS_FullLoop/Survey/TestCase_Sale/TC12/EndingPage_TH.png
    Sleep    2s
    Close Browser
