*** Settings ***
Resource          Variables.robot

*** Keywords ***
IntroductionSale_Service
    [Arguments]    ${CheckIntro}    ${CheckIntro_1}    ${CheckIntro_2}    ${CheckIntro_3}    ${btn_TH}
    Element Should Contain    name=Title_1_0    ${Checkintro}
    Element Should Contain    name=Title_1_0    ${Checkintro_1}
    Element Should Contain    name=Title_1_0    ${Checkintr0_2}
    Element Should Contain    name=Title_1_0    ${Checkintr0_3}
    Element Should Contain    xpath=//*[@class="btn next"]    ${Btn_Next}

Reward Condition
    [Arguments]    ${CheckRewardTH}    ${CheckRewardTH_1} ${CheckRewardTH_2} ${CheckRewardTH_3} ${CheckRewardTH_4} ${CheckRewardTH_5} ${CheckRewardTH_6} ${CheckRewardTH_7} ${CheckRewardTH_8} ${CheckRewardTH_9} ${CheckQuestionReward} ${Opt_in_Yes_TH} ${Opt_in_No_TH}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_1}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_2}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_3}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_4}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_5}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_6}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_7}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_8}
    Element Should Contain    name=Title_2_0    ${CheckRewardTH_9}
    Element Should Contain    name=Title_2_0    ${CheckQuestionReward}
    Element Should Contain    name=Answer_2_0_0_0    ${Opt_in_Yes_TH}
    Element Should Contain    name=Answer_2_0_0_1    ${Opt_in_No_TH}

Please TelePhoneNumber
    [Arguments]    ${CheckPleaseTel}    ${FieldTel_Input}
    Element Should Contain    name=Question_3_0_00    ${CheckPleaseTel}
    Page Should Contain Textfield    ${FieldTel_Input}

QCSAT_Sale
    [Arguments]    ${CheckquestionCSAT} ${CheckAdaptiveText_Sale} ${CheckquestionCSAT1}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT}
    Element Should Contain    name=Question_4_0_0    ${CheckAdaptiveText_Sale}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT1}
    Element Should Contain    xpath=//label[text()='ไม่พุงพอใจเลย']    ไม่พึงพอใจเลย
    Element Should Contain    xpath=//label[text()='พึงพอใจอย่างมาก']    พึงพอใจอบ่างมาก

QCSAT_Service
    [Arguments]    ${CheckquestionCSAT} ${CheckAdaptiveText_Service} ${CheckquestionCSAT1}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT}
    Element Should Contain    name=Question_4_0_0    ${CheckAdaptiveText_Service}
    Element Should Contain    name=Question_4_0_0    ${CheckquestionCSAT1}
    Element Should Contain    xpath=//label[text()='ไม่พุงพอใจเลย']    ไม่พึงพอใจเลย
    Element Should Contain    xpath=//label[text()='พึงพอใจอย่างมาก']    พึงพอใจอบ่างมาก

Attribute11
    [Arguments]    ${CheckAttibute_11}
    Element Should Contain    name=Question_20_0_0    ${CheckAttibute_11}
    Element Should Contain    xpath=//label[text()='รู้สึกไม่สำคัญเลย']    รู้สึกไม่สำคัญเลย
    Element Should Contain    xpath=//label[text()='รู้สึกสำคัญมาก']    รู้สึกสำคัญมาก

Media
    [Arguments]    ${CheckMedia_1}
    Element Text Should Be    name=Question_30_0_0    ${CheckMedia_1}
    Element Text Should Be    ${CheckMChoice1_TH}    Facebook
    Element Text Should Be    ${CheckMChoice2_TH}    Instagram
    Element Text Should Be    ${CheckMChoice3_TH}    Line
    Element Text Should Be    ${CheckMChoice4_TH}    Blogger Review
    Element Text Should Be    ${CheckMChoice5_TH}    โฆษณาทางโทรทัศน์
    Element Text Should Be    ${CheckMChoice6_TH}    โฆษณาทางวิทยุ
    Element Text Should Be    ${CheckMChoice7_TH}    โฆษณาใน Youtube
    Element Text Should Be    ${CheckMChoice8_TH}    โฆษณาในเวปไซต์
    Element Text Should Be    ${CheckMChoice9_TH}    ออกบูท/อีเว้นท์ ตามสถานที่ต่างๆ
    Element Text Should Be    ${CheckMChoice10_TH}    ป้ายโฆษณาริมถนน
    Element Text Should Be    ${CheckMChoice11_TH}    หน้าร้านฮอนด้า
    Element Text Should Be    ${CheckMChoice12_TH}    เพื่อน/ญาติ/คนรู้จักแนะนำ
    Element Text Should Be    ${CheckMChoice13_TH}    อื่นๆ โปรดระบุ
    Page Should Contain Element    name=media_13_oa
