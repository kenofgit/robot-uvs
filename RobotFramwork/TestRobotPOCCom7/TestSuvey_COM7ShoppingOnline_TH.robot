*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TC1-Test Survey AdHoc_iCare_Q1_iCare=1
    #Open Browser
    Open Browser    ${Link_iCare_1}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/iCare/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1_iCare
    Q1_iCare    ${Check_Q1_iCare_TH}
    Capture Page Screenshot    D:/Com7/iCare/TC1/2_Q1_iCare.png
    Click Element    ${CheckChoiceQ1_iCare_1}
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/iCare/TC1/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q2
    Q2    ${Check_Q2_TH}
    Click Element    ${CheckChoiceQ2_2}
    Capture Page Screenshot    D:/Com7/iCare/TC1/4_Q2.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_iCare    ${Check_Q6_TH_iCare}
    Input Text    name=    อยากให้ขยายพื้นที่บริการให้กว้างกว่านี้ เพราะแออัดมาก
    Capture Page Screenshot    D:/Com7/iCare/TC1/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Click Element    ${Opt_in_Q7_Nothave}
    Capture Page Screenshot    D:/Com7/iCare/TC1/6_Q7.png
    Sleep    2s
    #Ending
    Ending_iCare    ${Ending_iCare}
    Capture Page Screenshot    D:/Com7/iCare/TC1/7_EndingPage.png
    Close Browser

TC2-Test Survey AdHoc_iCare_Q1_iCare=4
    #Open Browser
    Open Browser    ${Link_iCare_4}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/iCare/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1_iCare
    Q1_iCare    ${Check_Q1_iCare_TH}
    Capture Page Screenshot    D:/Com7/iCare/TC2/2_Q1_iCare.png
    Click Element    ${CheckChoiceQ1_iCare_4}
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/iCare/TC2/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q5
    Q5    ${Check_Q5_TH}
    Input Text    name=    มือถือที่ได้รับจากการเคลมเครื่องใหม่ใช้ไป 3 วันมีปัญหาเสียเวลามาก
    Capture Page Screenshot    D:/Com7/iCare/TC2/4_Q5.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_iCare    ${Check_Q6_TH_iCare}
    Input Text    name=    อยากให้มีการการันตีในการเปลี่ยนเครื่องยืดระยะเวลาประกันเพิ่มเติมอีก
    Capture Page Screenshot    D:/Com7/iCare/TC2/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/Com7/iCare/TC2/6_Q7.png
    Click Element    ${Opt_in_Q7_have}
    Sleep    2s
    #Ending
    Ending_iCare    ${Ending_iCare}
    Capture Page Screenshot    D:/Com7/iCare/TC2/7_EndingPage.png
    Close Browser

TC3-Test Survey AdHoc_iCare_Q1_iCare=5
    #Open Browser
    Open Browser    ${Link_iCare_5}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/iCare/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1_iCare
    Q1_iCare    ${Check_Q1_iCare_TH}
    Capture Page Screenshot    D:/Com7/iCare/TC3/2_Q1_iCare.png
    Click Element    ${CheckChoiceQ1_iCare_5}
    Press Key    name=    ขอรับเครื่องเคลม
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/iCare/TC3/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q6
    Q6_iCare    ${Check_Q6_TH_iCare}
    Input Text    name=    อยากให้มีเครื่องสำรองในการเคลมไม่ต้องรอเครื่องนานขนาดนี้
    Capture Page Screenshot    D:/Com7/iCare/TC3/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/Com7/iCare/TC3/6_Q7.png
    Click Element    ${Opt_in_Q7_have}
    Sleep    2s
    #Ending
    Ending_iCare    ${Ending_iCare}
    Capture Page Screenshot    D:/Com7/iCare/TC3/7_EndingPage.png
    Close Browser
