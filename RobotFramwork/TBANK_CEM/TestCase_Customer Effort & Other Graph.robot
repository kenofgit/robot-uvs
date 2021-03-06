*** Settings ***
Resource          Variables.robot
Resource          Keywords.robot    ###############################################################

*** Test Cases ***
TC1-LoginTBank_CSI System and click View Survey Reports-Success
    #Open and Login
    Open Browser    ${InputTBANKCEM}    Chrome
    Login    ${InputUsername}    ${InputPwd}
    Wait Until Element Is Visible    j_idt8:j_idt37
    Wait Until Element Is Visible    j_idt8:j_idt41
    Click Link    xpath=//a[@href="../reportviewer/index.jsp"]
    Sleep    5s
    Select Window    Title=Report
    #check Header
    Header View Survey Reports row1    ${LabelCallRound}    ${DropdownCallRound}    ${LabelProtocol}    ${DropdownProtocol}    ${ChangeEN}    ${ChangeTH}
    Header View Survey Reports row2    ${LabelGender}    ${DropdownGender}    ${LabeAge}    ${DropdownAge}    ${LabeValue}    ${DropdownValue}
    ...    ${BthReload}    ${BthPrint}    ${IconQuestion}
    #Check Report Menu
    Menu Reports    ${LabelReports}    ${LinkDashboard}    ${LinkCallSum}    ${LabelCSIScore}    ${LinkSumbyBranch}    ${LinkSumbyDistr}
    ...    ${LabelEngagement}    ${LinkEngaOverall}    ${LinkEngabyBranch}    ${LinkEngabyDistr}    ${LabelImpress}    ${LinkImpressOveall}
    ...    ${LinkImpressbyBranch}    ${LinkImpressbyDistr}    ${LabelCustEff}    ${LinkCustEffOveall}    ${LinkCustEffbyBranch}    ${LinkCustEffbyDistr}
    ...    ${LabelDetailScoreAndWeight}    ${LinkDetialbyBranch}    ${LinkDetialbyDistr}    ${LabelDistributionScore}    ${LinkDistributionbyBranch}    ${LinkDistributionbyDistr}
    ...    ${LinkDistributionbyRH}    ${LinkMMImprbyBranch}    ${LinkMMImprbyDistr}    ${LinkMMImprbyRH}    ${LinkMMImprBank}    ${LinkMeanandConsistency}
    ...    ${LinkCSIPerform}    ${LinkSalsePerform}    ${LinkSevicePerform}    ${LinkSatisConsistency}    ${LabelCustFeedbyAtt}    ${LinkQ3}
    ...    ${LinkQ6}    ${LinkO1Positive}    ${LinkO1Negative}    ${LinkO2Positive}    ${LinkO2Negative}    ${LinkCustFeedBranch}
    ...    ${LinkOverallCust}    ${LinkRespondeProfile}    ${LabelLoginReport}    ${LinkLoginReportBranch}    ${LinkLoginReportDistr}    ${LabelAccountSetting}
    ...    ${LinkChgPassword}
    Maximize Browser Window
    sleep    4s
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Capture Page Screenshot

TC2 - Customer Effort Score Overall
    Click Link    ${LinkCustEffOveall}
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Sleep    4s
    Capture Page Screenshot
    Element Text Should Be    xpath=//*[@id="printdiv"]/div[2]/small[1]    O4

TC3- Customer Effort Score By Branch
    Click Link    ${LinkCustEffbyBranch}
    Three Dropdown list default    ${listRH}    ${listDistr}    ${listBranch}    ${BthSubmit}
    Sleep    4s
    Capture Page Screenshot
    Click Button    Export to Excel

TC4- Customer Effort Score By District
    Click Link    ${LinkCustEffbyDistr}
    Page Should Contain Element    ${listRH}
    Sleep    4s
    Capture Page Screenshot
    #Export Excel RH
    Click Button    Export to Excel
    Sleep    2s
    #Export Excel District
    Click Element    //*[@id="printdiv"]/button[2]

TC5- Mean and Consistency Score
    Click Link    ${LinkMeanandConsistency}
    Sleep    4s
    Capture Page Screenshot

TC6 - CSI Performance Tracking
    Click Link    ${LinkCSIPerform}
    Sleep    4s
    Capture Page Screenshot
    Sleep    4s
    Click Element    //*[@id="printdiv"]/button[2]

TC7 - Sale Performance Tracking
    Click Link    ${LinkSalsePerform}
    Sleep    4s
    Capture Page Screenshot
    Sleep    4s
    Click Element    //*[@id="printdiv"]/button

TC8 - Service Performance Tracking
    Click Link    ${LinkSevicePerform}
    Sleep    4s
    Capture Page Screenshot
    Click Element    //*[@id="printdiv"]/button

TC9 - Satisfaction-Consistency Matrix
    Click Link    ${LinkSatisConsistency}
    Sleep    4s
    Capture Page Screenshot
