*** Settings ***
Documentation               Sign Up Ultra Voucher App
Library                     AppiumLibrary
Resource                    ../Resources/res_signUp.robot
Suite Teardown              close application




*** Test Cases ***
Verify Signup is successfully
    Open Ultra Voucher App using Real Device
    Verify Messages info are displayed properly
    Sign Up



*** Keywords ***
Verify Messages info are displayed properly
    Click Menu Profile
    Click Search Field
    Click Cart Icon
    Click QR Code Icon
    Click Share Icon
    Click Voucher Layout
    Click CLose Ads button

Login with valid credentials
    Click Menu Profile
    Click "Masuk" button
    wait until page contains element                ${fld_phone}                    ${delay}
    click element                                   ${fld_phone}
    input text                                      ${fld_phone}                    ${valid_phone}
    input text                                      ${fld_pwd}                      ${valid_pwd}
    click element                                   ${btn_login}

Sign Up
    Click Menu Profile
    Click "Masuk" button
    Click "Buat Akun" link
    Input Email
    Input Phone
    Input Nama Depan
    Input Nama Belakang
    Input Kata Sandi
    Input Konfirmasi Kata Sandi
    #Input Kode Referral
    #Click "Buat Akun" button





