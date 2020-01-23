Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
 by mx.groups.io with SMTP id smtpd.web12.2136.1579809575437472107
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 11:59:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aQYn1xWY;
 spf=pass (domain: gmail.com, ip: 209.85.166.66, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f66.google.com with SMTP id n11so4211189iom.9
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 11:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=ecEh/7EyL7SYtzkjoLScg98qNa7uUs7TLnXxOElYVTo=;
        b=aQYn1xWYqU2bqlTP8dNp2GtIzqgpR3jbvfiQThJ57UHv4fWqcht/eCSomNTdd2jeYS
         4DtSTUiNa61Hd6HOKG8ikujk4n6cfkUxiKoxY1FIUjgA1NnBsuRHwjB+koIl5wJH5ie3
         loEEgfa/ZGVtwDidD+logM5WVusb5iYiw2bajqlWbSXcKNjiWHvygYgbzGkOTJMg83D3
         fChAc7tsWfpQexlBsAbD9hh0cpoTda3/cNkuBLkeW+feZusPFtjre2LmYwkmO5EPdAaJ
         DtiBIMM3otFHC7IRUnL1b+Kii8rnv/j7m5ITH+eAawxRPA8zrWY8FCsJj1q/GOQ1TGOv
         YGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=ecEh/7EyL7SYtzkjoLScg98qNa7uUs7TLnXxOElYVTo=;
        b=SvNyidgzY604P1UiocDVQusASXJ5y846ngNXaXY8GUNzSVpJO9BP3w4DrIRPRi7xX5
         8AcZVBtEwan7Ib1UFnq8SQQeKiPPhxVi0QevdHMwBWbS2TUDnG/CSG7HNXxY328uN2zw
         BlBHVzpmRb7G6ki8NEhBWo30LXT9bfGOWYJSCo3bNt+nvIbQvxjlUwdNvT5PKfOJUOUw
         kb+KBmGimAMFc9NcaPRIF2Go06muyjybKkVvLuSt5XtzHWTenlOn6nRXTfxpLcoApVXD
         I56qlCJW0eSGiTyFeZA1kY+VHFZIJl3uv7NtZ94U4XMYnaV9/gDAsEqLcvp0Nrcx2eEC
         z46Q==
X-Gm-Message-State: APjAAAWuBEE/BsgUEvYGHA6eAeZ8SkOsCImJhsWGnuR6baVDg7zqFX+s
	ejw6N8X9sFJlR1y+lhlFCpc=
X-Google-Smtp-Source: APXvYqxSwUBxLYOot6Taz2CXat7PKKzgkvxHt+6kW3tnjGsDw5XpB68ljDOe/1zLtcTrNqEXNQMe9w==
X-Received: by 2002:a5e:d515:: with SMTP id e21mr218236iom.100.1579809574848;
        Thu, 23 Jan 2020 11:59:34 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from [10.30.196.43] ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id y62sm923089ilk.32.2020.01.23.11.59.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 11:59:34 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto][meta-rockchip][PATCH 2/4] gcc-arm-none-eabi-native: Add recipe
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
 <20200123160821.778821-3-JPEWhacker@gmail.com>
 <CAMKF1srfnM=Nt9BFGEoZOfbC6cvFhQj9Zvmi7KzhHT=61VABAw@mail.gmail.com>
Message-ID: <31fc4c12-5abf-30c0-96a0-e3a54d7db14f@gmail.com>
Date: Thu, 23 Jan 2020 13:59:33 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1srfnM=Nt9BFGEoZOfbC6cvFhQj9Zvmi7KzhHT=61VABAw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 1/23/20 1:49 PM, Khem Raj wrote:
> On Thu, Jan 23, 2020 at 8:08 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
>> Adds a recipe to pull down the prebuilt GCC for compiling on Cortex-R
>> and Cortex-M processors from ARM. This toolchain is required to build
>> Arm Trusted Firmware for the Rockchip rk3399 SoC, since it must compile
>> some firmware for the M0 coprocessor.
>>
> can this use mutliconfig ?
> This seems then can be avoided

I'm not sure if multiconfig is applicable in this case; This is required 
because the same recipe (arm-trusted-firmware) requires 2 different 
compilers to be available; the target compiler (aarch64-poky-linux), and 
an arm-none-eabi-gcc compiler specifically to compile some M0 firmware 
that goes into ATF.

Multiconfig would work (I think), if the recipe only needed one or the 
other, but not in this case where it needs both.

I also looked at building an additional gcc-cross recipe that explicitly 
targets arm-none-eabi, but the maintenance was going to be a pain unless 
A) the recipe lived in OE-core or B) this layer copied all of the GCC 
recipes. Neither of those was appealing at the moment, but I plan on 
revisiting it. Even when I did have it in OE-core, I had some trouble 
with some manifest warnings, so I'm not quite sure I was doing it correctly.

>
>> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
>> ---
>>   ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 +++++++++++++++++++
>>   1 file changed, 37 insertions(+)
>>   create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>>
>> diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>> new file mode 100644
>> index 0000000..a0c832d
>> --- /dev/null
>> +++ b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>> @@ -0,0 +1,37 @@
>> +# Copyright (C) 2019 Garmin Ltd. or its subsidaries
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
>> +LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
>> +
>> +LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
>> +
>> +PROVIDES = "virtual/arm-none-eabi-gcc"
>> +
>> +SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
>> +
>> +SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
>> +SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
>> +
>> +S = "${WORKDIR}/${BPN}-${PV}"
>> +
>> +inherit native
>> +
>> +COMPATIBLE_HOST = "x86_64.*-linux"
>> +
>> +do_install() {
>> +    install -d ${D}${datadir}/arm-none-eabi/
>> +    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
>> +
>> +    install -d ${D}${bindir}
>> +    # Symlink all executables into bindir
>> +    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
>> +        lnr $f ${D}${bindir}/$(basename $f)
>> +    done
>> +}
>> +
>> +INSANE_SKIP_${PN} = "already-stripped"
>> +
>> +INHIBIT_SYSROOT_STRIP = "1"
>> +INHIBIT_PACKAGE_STRIP = "1"
>> +INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
>> --
>> 2.24.1
>>
>> 
