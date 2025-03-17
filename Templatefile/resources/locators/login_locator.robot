*** Variables ***
${login_locator.locator_email}    xpath=//input[@automate-element="email"]
${login_locator.locator_name}    xpath=//parent::div[@id="zoneOfName"]/input[@type="text"]
${login_locator.locator_password}    xpath=//input[@id="txtPwd-fsalsaSdssUss"]
${login_locator.locator_confirm_password}    xpath=//label[@label-id="confirmPwd"]/following-sibling::input
${login_locator.locator_nickname}    xpath=//label[contains(text(),"Nickname")]/following-sibling::input
${login_locator.locator_province}    xpath=//input[@a="id1"][1]
${login_locator.locator_postcode}    xpath=//input[@a="id1"][2]
${login_locator.locator_country}    xpath=//input[@a="id2"][1]
${login_locator.locator_submit}    xpath=//parent::div[@class="btn-block"]/button[@class="submitCls"]
${login_locator.aleart}    I got click
