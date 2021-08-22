*** Variables ***
${delay}                    5
${menu_profile}             id=com.ultravoucher.uv:id/home_menu_profile
${menu_search}              id=com.ultravoucher.uv:id/home_menu_search
${menu_cart}                id=com.ultravoucher.uv:id/home_menu_cart
${menu_qrCode}              id=com.ultravoucher.uv:id/home_menu_qrcode
${menu_share}               id=com.ultravoucher.uv:id/home_menu_share
${layout_voucher}           id=com.ultravoucher.uv:id/home_layout_voucher
${btn_closeAds}             id=com.ultravoucher.uv:id/btn_close

### Signup ###
${link_signUp}              id=com.ultravoucher.uv:id/tv_register
${fld_email}                id=com.ultravoucher.uv:id/reg_et_email
${fld_phoneCode}            id=com.ultravoucher.uv:id/tv_phone_code
${fld_phone}                id=com.ultravoucher.uv:id/reg_et_hp
${fld_fn}                   id=com.ultravoucher.uv:id/reg_et_nama
${fld_ln}                   id=com.ultravoucher.uv:id/reg_et_nama_belakang
${fld_pwdSignup}            id=com.ultravoucher.uv:id/reg_et_password
${fld_pwdCnfrm}             id=com.ultravoucher.uv:id/reg_et_upass
${fld_refCode}              id=com.ultravoucher.uv:id/reg_et_refcode
${btn_buatAkun}             id=com.ultravoucher.uv:id/reg_btn_buatakun

### Login ###
${btn_login}                id=com.ultravoucher.uv:id/btn_login
${fld_phone}                id=com.ultravoucher.uv:id/et_user
${fld_pwd}                  id=com.ultravoucher.uv:id/et_password
${valid_phone}              085281114886
${valid_pwd}                Qwerty123
${valid_email}              machruk.m@gmail.com
${namaDepan}                Machruk
${namaBelakang}             Marjuki
${refCode}                  111111




*** Keywords ***
Using Emulator
    Open Application         http://localhost:4723/wd/hub    platformName=Android   deviceName=emulator-5554    appPackage=com.flashcoffee   appActivity=com.flashcoffee.MainActivity  automationName=UiAutomator1  autoGrantPermissions=true   noSign=true

Using Real Device
    Open Application         http://localhost:4723/wd/hub    platformName=Android   deviceName=Redmi 8    appPackage=com.ultravoucher.uv   appActivity=crc64eea3be729c86e892.MainActivity  automationName=UiAutomator1  autoGrantPermissions=true

Open Ultra Voucher App using Real Device
    Using Real Device

### Handling Message Info ###
Click Menu Profile
    wait until page contains element                ${menu_profile}             ${delay}
    tap                                             ${menu_profile}
Click Search Field
    wait until page contains element                ${menu_search}              ${delay}
    click element                                   ${menu_search}
    #input text                                      ${menu_search}              cari apa ya
Click Cart Icon
    wait until page contains element                ${menu_cart}                ${delay}
    click element                                   ${menu_cart}
Click QR Code Icon
    wait until page contains element                ${menu_qrCode}              ${delay}
    click element                                   ${menu_qrCode}
Click Share Icon
    wait until page contains element                ${menu_share}               ${delay}
    click element                                   ${menu_share}
Click Voucher Layout
    wait until page contains element                ${layout_voucher}           ${delay}
    click element                                   ${layout_voucher}
Click CLose Ads button
    wait until page contains element                ${btn_closeAds}             ${delay}
    click element                                   ${btn_closeAds}

### Sign Up ###
Click "Masuk" button
    wait until page contains element                ${btn_login}                ${delay}
    click element                                   ${btn_login}
Click "Buat Akun" link
    wait until page contains element                ${link_signUp}              ${delay}
    click element                                   ${link_signUp}
Input Email
    wait until page contains element                ${fld_email}                ${delay}
    input value                                     ${fld_email}                ${valid_email}
    hide keyboard
Input Phone
    sleep                                           3
    wait until page contains element                ${fld_phone}                ${delay}
    input value                                     ${fld_phone}                ${valid_phone}
    hide keyboard
Input Nama Depan
    wait until page contains element                ${fld_fn}                   ${delay}
    input value                                     ${fld_fn}                   ${namaDepan}
    hide keyboard
Input Nama Belakang
    wait until page contains element                ${fld_ln}                   ${delay}
    input value                                     ${fld_ln}                   ${namaBelakang}
    hide keyboard
Input Kata Sandi
    wait until page contains element                ${fld_pwdSignup}            ${delay}
    input value                                     ${fld_pwdSignup}            ${valid_pwd}
    hide keyboard
Input Konfirmasi Kata Sandi
    wait until page contains element                ${fld_pwdCnfrm}             ${delay}
    input value                                     ${fld_pwdCnfrm}             ${valid_pwd}
    hide keyboard
Input Kode Referral
    wait until page contains element                ${fld_refCode}              ${delay}
    input value                                     ${fld_refCode}              ${refCode}
    hide keyboard
Click "Buat Akun" button
    wait until page contains element                ${btn_buatAkun}             ${delay}
    click element                                   ${btn_buatAkun}

