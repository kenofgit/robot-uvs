*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
Test Survey Transfer Positive_TH
    #Open Browser
    Open Browser    ${Linksurvey1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    IntroductionMDEPage1_TH    ${Checkintro}    ${Checkintro2}    ${Select_Language_TH}    ${btn_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_PageIntro_TH.png
    Click Element    ${btn_start}
    Sleep    2s
    Question_CSAT_TH    ${CheckquestionCSAT_TH}
    Score0to10_text
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_PageCSAT_TH.png
    Click Element    ${Score9}
    OA_CSATPos_TH    ${OA_CSATPos_TH}
    Input Text    name = csat_pos    พนักงานเอาใจใส่ดีเดินดูได้ทั่วถึง ไม่เร่งรีบ ยิ้มแย้มแจ่มใส อำนวยความสะดวกดีทุกอย่าง สุภาพ อ่อนน้อม
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_PageOACSAT_TH.png
    Sleep    ${TWOSECOND}
    Click Element    ${btn_next}
    #Q18 = 10
    Question_Q18_TH    ${CheckQ18_TH}
    Score0to10_text
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_Page4_TH.png
    Click Element    ${Score10_heart}
    ##Click Element    xpath=//span[@class='score_counter' and normalize-space() = '3']
    Sleep    ${TWOSECOND}
    #Q19 opt-in
    Question_Q19_Opt-in_TH    ${CheckQ19_TH}    ${Opt_in_No_TH}    ${Opt_in_Yes_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_Page5_TH.png
    Click Element    name=Answer_24_0_0_1    #ไม่ใช่
    Sleep    ${TWOSECOND}
    #Q20 opt-in
    Question_Q20_Opt-in_TH    ${CheckQ20_TH}    ${Opt_in_No_TH}    ${Opt_in_Yes_TH}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_Page6_TH.png
    Click Element    name=Answer_25_0_0_1    #ไม่ใช่
    Sleep    ${TWOSECOND}
    #Q21 opt-in Score 9
    Question_Q21_TH    ${CheckQ21_TH}
    Score0to10_text
    ##Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_Page7_TH.png
    Set Focus To Element    xpath=//span[@class='score_counter' and normalize-space() = '3']
    Click Element    xpath=//span[@class='score_counter' and normalize-space() = '3']
    Sleep    ${TWOSECOND}
    #Q22 opt-in Score 9
    Questoion_Q22_TH    ${CheckQ22_TH}
    Score0to10_text
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_Page8_TH.png
    Click Element    ${Score10_heart}
    Sleep    ${TWOSECOND}
    #Intro Profile
    Comment    Element Text Should Be    ${CheckIntroProfile_TH}    เพื่อสิทธิประโยชน์สูงสุดของท่านในอนาคต กรุณากรอกข้อมูลของท่านให้ครบถ้วน
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_PageIntroProfile_TH.png
    Comment    Click Element    ${btn_next}
    Sleep    ${TWOSECOND}
    #Adhoc1
    Element Should Contain    name=Question_4_0_0    ${CheckAdhoc1_TH}
    ChoiceAdhoc_TH
    Click Element    ${CheckCooking}
    Click Element    ${CheckCowork}
    Click Element    ${btn_next}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_PageAdhoc_TH.png
    Sleep    ${TWOSECOND}
    Click Element    ${btn_next}
    #EndingSurvey
    Element Text Should Be    ${CheckEnding_TH}
    Sleep    ${TWOSECOND}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Positive/TH/Positive_PageEnding_TH.png

Test Survey Transfer Neutral_EN
    #Open Browser
    Open Browser    ${Linksurvey1}    ${Browser}
    Comment    Maximize Browser Window
    Sleep    2s
    Select From List    id=g_language    English
    IntroductionMDEPage1_EN    ${Checkintro}    ${Checkintro2}    ${Select_Language_EN}    ${btn_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_PageIntro_EN.png
    Click Element    xpath=//span[contains(.,'Start')]
    Question_CSAT_EN    ${CheckquestionCSAT_EN}
    Score0to10_text
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_PageCSAT_EN.png
    Click Element    ${Score8}
    ##OA_CSATPos_EN    ${OA_CSATPos_EN}
    ##Input Text    name = csat_pos    Good Staff and Good Service
    ##Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_PageOACSAT_EN.png
    ##Sleep    ${TWOSECOND}
    ##Click Element    ${btn_next}
    #Q18 = 10
    Question_Q18_EN    ${CheckQ18_EN}
    Score0to10_text
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_Page4_EN.png
    Click Element    ${Score10_heart}
    ##Click Element    xpath=//span[@class='score_counter' and normalize-space() = '3']
    Sleep    ${TWOSECOND}
    #Q19 opt-in
    Question_Q19_Opt-in_EN    ${CheckQ19_EN}    ${Opt_in_No_EN}    ${Opt_in_Yes_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_Page5_EN.png
    Click Element    name=Answer_24_0_0_1    #ไม่ใช่
    Sleep    ${TWOSECOND}
    #Q20 opt-in
    Question_Q20_Opt-in_EN    ${CheckQ20_EN}    ${Opt_in_No_EN}    ${Opt_in_Yes_EN}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_Page6_EN.png
    Click Element    name=Answer_25_0_0_1    #ไม่ใช่
    Sleep    ${TWOSECOND}
    #Q21 opt-in Score 9
    Question_Q21_EN    ${CheckQ21_EN}
    Score0to10_text
    ##Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_Page7_EN.png
    Set Focus To Element    xpath=//span[@class='score_counter' and normalize-space() = '3']
    Click Element    xpath=//span[@class='score_counter' and normalize-space() = '3']
    Sleep    ${TWOSECOND}
    #Q22 opt-in Score 9
    Questoion_Q22_EN    ${CheckQ22_EN}
    Score0to10_text
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_Page8_EN.png
    Click Element    ${Score10_heart}
    Sleep    ${TWOSECOND}
    #Intro Profile
    Comment    Element Text Should Be    ${CheckIntroProfile_EN}    เพื่อสิทธิประโยชน์สูงสุดของท่านในอนาคต กรุณากรอกข้อมูลของท่านให้ครบถ้วน
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_PageIntroProfile_EN.png
    Comment    Click Element    ${btn_next}
    Sleep    ${TWOSECOND}
    #Adhoc1
    Element Should Contain    name=Question_4_0_0    ${CheckAdhoc1_EN}
    ChoiceAdhoc_EN
    Click Element    ${CheckCooking}
    Click Element    ${CheckCowork}
    Click Element    ${btn_next}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_PageAdhoc_EN.png
    Sleep    ${TWOSECOND}
    Click Element    ${btn_next}
    #EndingSurvey
    Element Text Should Be    ${CheckEnding_EN}
    Sleep    ${TWOSECOND}
    Capture Page Screenshot    D:/MDEFulloopSurvey/Transfer_Neutral/TH/Neutral_PageEnding_EN.png
