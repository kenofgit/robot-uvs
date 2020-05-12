*** Settings ***
Library           Selenium2Library
Resource          Variables.robot
Resource          Keywords.robot

*** Test Cases ***
TC1-Test Survey AdHoc_BananaStore_Q1=1
    #Open Browser
    Open Browser    ${Link_BananaStore_1}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/2_Q1.png
    Click Element    ${CheckChoiceQ1_1}
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q2
    Q2    ${Check_Q2_TH}
    Click Element    ${CheckChoiceQ2_1}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/4_Q2.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Banana Store    ${Check_Q6_TH_BananaStore}
    Input Text    name=    รอพนักงานนานมากแต่เข้าใจว่าคนเยอะ เพราะอยู่ในช่วงเปิดตัวไอโฟนตัวใหม่
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Click Element    ${Opt_in_Q7_have}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/6_Q7.png
    Sleep    2s
    #Ending
    Ending_BananaStore    ${Ending_BananaStore}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/7_EndingPage.png
    Close Browser

TC2-Test Survey AdHoc_BananaStore_Q1=2
    #Open Browser
    Open Browser    ${Link_BananaStore_2}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/BananaStore/TC2/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC2/2_Q1.png
    Click Element    ${CheckChoiceQ1_2}
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/BananaStore/TC2/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q3
    Q3    ${Check_Q3_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC2/4_Q3.png
    Click Element    ${CheckChoiceQ3_3}
    Sleep    2s
    #Q6
    Q6_Banana Store    ${Check_Q6_TH_BananaStore}
    Input Text    name=    อยากให้เมื่อสินค้าแล้วมีการสอบถามผู้ใช้เพิ่มเติมหรือสอนเบื้องต้นให้ลูกค้าเปิดไอแพดเช็คเครื่องแล้วหายไปเลย
    Capture Page Screenshot    D:/Com7/BananaStore/TC2/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/6_Q7.png
    Click Element    ${Opt_in_Q7_have}
    Sleep    2s
    #Ending
    Ending_BananaStore    ${Ending_BananaStore}
    Capture Page Screenshot    D:/Com7/BananaStore/TC1/7_EndingPage.png
    Close Browser

TC3-Test Survey AdHoc_BananaStore_Q1=3
    #Open Browser
    Open Browser    ${Link_BananaStore_3}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/BananaStore/TC3/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC3/2_Q1.png
    Click Element    ${CheckChoiceQ1_3}
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/BananaStore/TC3/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q4
    Q4    ${Check_Q4_TH}
    Click Element    ${CheckChoiceQ4_3}
    Click Element    ${CheckChoiceQ4_4}
    Click Element    ${CheckChoiceQ4_5}
    Capture Page Screenshot    D:/Com7/BananaStore/TC3/4_Q4.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Banana Store    ${Check_Q6_TH_BananaStore}
    Input Text    name=    ถ้าพนักงานไม่พอ ควรให้เข้าคิว เพื่อให้พนักงานดุหให้ัทั่วถึง
    Capture Page Screenshot    D:/Com7/BananaStore/TC3/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC3/6_Q7.png
    Click Element    ${Opt_in_Q7_Nothave}
    Sleep    2s
    #Ending
    Ending_BananaStore    ${Ending_BananaStore}
    Capture Page Screenshot    D:/Com7/BananaStore/TC3/7_EndingPage.png
    Close Browser

TC4-Test Survey AdHoc_BananaStore_Q1=4
    #Open Browser
    Open Browser    ${Link_BananaStore_4}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/BananaStore/TC4/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC4/2_Q1.png
    Click Element    ${CheckChoiceQ1_4}
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/BananaStore/TC4/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q5
    Q5    ${Check_Q5_TH}
    Input Text    name=    พนักงานพูดจาไม่ดี โทรมาสอบถามเรื่องเคลมขอเปลี่ยนสินค้าภายใน 7 วัน พนักงานแจ้งว่าจะติดต่อกลับ หายไป 1 วันเต็มๆ ไม่มีใครติดต่อกลับมาก รวมทั้งโทรมาใหม่ก็ไม่มีพนักงานคนอื่นรู้เรื่อง
    Capture Page Screenshot    D:/Com7/BananaStore/TC4/4_Q5.png
    Click Element    ${Next_footer}
    Sleep    2s
    #Q6
    Q6_Banana Store    ${Check_Q6_TH_BananaStore}
    Input Text    name=    อยากให้มีการจัดการระบบหรือการเข้าถึงลูกค้าให้ดีกว่านี้
    Capture Page Screenshot    D:/Com7/BananaStore/TC4/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC4/6_Q7.png
    Click Element    ${Opt_in_Q7_have}
    Sleep    2s
    #Ending
    Ending_BananaStore    ${Ending_BananaStore}
    Capture Page Screenshot    D:/Com7/BananaStore/TC4/7_EndingPage.png
    Close Browser

TC5-Test Survey AdHoc_BananaStore_Q1=5
    #Open Browser
    Open Browser    ${Link_BananaStore_5}    headlesschrome
    Comment    Maximize Browser Window
    Sleep    2s
    Introduction    ${Check_introMainTH1}    ${Check_introMainTH2}
    Capture Page Screenshot    D:/Com7/BananaStore/TC5/1_Intro.png
    Click Element    ${btn_startTH}
    #Q1
    Q1    ${Check_Q1_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC5/2_Q1.png
    Click Element    ${CheckChoiceQ1_5}
    Press Key    name=    ยังไม่ได้ใบเสร็จรับเงินในถุงสินค้า
    Sleep    2s
    #WaitingStaff
    WaitingStaff    ${CheckWaitingStaff}    ${CheckWaitingStaff_1}    ${CheckWaitingStaff_2}    ${CheckWaitingStaff_3}
    Capture Page Screenshot    D:/Com7/BananaStore/TC5/3_WaitingStaff.png
    Click Element    //div[@name='page2']//span[@class='btn next']
    Sleep    2s
    #Q6
    Q6_Banana Store    ${Check_Q6_TH_BananaStore}
    Input Text    name=    ลูกค้าเยอะแต่อยากให้พนักงานดูแลลูกค้าให้ทั่วถึงกว่านี้ และรอบคอบกว่านี้
    Capture Page Screenshot    D:/Com7/BananaStore/TC5/5_Q6.png
    Sleep    2s
    Click Element    ${Next_footer}
    #Q7
    Q7    ${Check_Q7_TH}
    Capture Page Screenshot    D:/Com7/BananaStore/TC5/6_Q7.png
    Click Element    ${Opt_in_Q7_Nothave}
    Sleep    2s
    #Ending
    Ending_BananaStore    ${Ending_BananaStore}
    Capture Page Screenshot    D:/Com7/BananaStore/TC5/7_EndingPage.png
    Close Browser
