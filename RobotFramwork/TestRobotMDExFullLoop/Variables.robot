*** Settings ***
Library           Selenium2Library

*** Variables ***
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