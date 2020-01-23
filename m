Received: from mail-io1-f67.google.com (mail-io1-f67.google.com [209.85.166.67])
 by mx.groups.io with SMTP id smtpd.web10.2378.1579810499347864933
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jan 2020 12:14:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RRhmeP84;
 spf=pass (domain: gmail.com, ip: 209.85.166.67, mailfrom: jpewhacker@gmail.com)
Received: by mail-io1-f67.google.com with SMTP id d15so4307392iog.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 Jan 2020 12:14:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:subject:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=jT/0MGvYSGaU12X0uK5djqi1U4JqVp/s/h14NrLNXl8=;
        b=RRhmeP84cJ/7ngZjlKyzRfkuk1nQO39jPBpa0eJeqYV3sxe4xqkQ9fcidvI9xUBHBL
         MNkufb5ln2ffFQsSJtRB0oHU6kRQMFjRB3Sq3CSCSFiXNs0IBmcyT8T3xHC4mID5Bvp3
         Luq1sIF9GzEaBwQ531Yx9EHNvWViK9ksRwtn25t/QL57TFW8EGFdSZCeTptX4cgg9j2U
         8MPcV34md46L+6WZlrMAevZuzutDuE/1Qa1AcP8Tl+V2ikFM/r2KkiUSfvsNAeuwiuXN
         yThbIhE0ysL4dAPdqNdcJJ0voDxHUPvUzfIgeiXx0gvlc+YGYXXVt1nOO4bqDOGJACBS
         k8pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:subject:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=jT/0MGvYSGaU12X0uK5djqi1U4JqVp/s/h14NrLNXl8=;
        b=lAQa7GulpjtgX/TECyxHFtWfnlEat6vDFhVCoCD4pe+Ijp1oboUyFCSIazpf3VShZp
         +JVAvlmXE3U1n0Kk6SsOhXVHOyHHBoQB/slAMmYeVA+4GLU527YWiTUlMKwoaEMGlR/n
         0LkAE6XLmaY0k1APzyMeq2LcTzjEjRMJuzJ3Pnr12NJge8uLA9iDYekYjgHIkrnABFT7
         RRefrtK80xz7lZrmtE/3JHZGTMxGhjLJyEKYEneI4r9LFv55ZJD5BHYxYM/PMqWaTH3F
         ZnDhfzZ6qbsBJPTEmK8P0qA2E3l4V+SjPw+3KutJIr2nzp0edyDce8JqcHT8hqJeHWXN
         BL9g==
X-Gm-Message-State: APjAAAUGT7Ooxhp07VpfXKVqnKnPnQB4A8N/gk+wJ219ttUJKpbu7KJ1
	CcT7N56hh26rA7Fw9M6X+4I=
X-Google-Smtp-Source: APXvYqyOuiv3b3RAXgKodkun64VtfckJWj80HaRbPt4WVikRS14OS7nThbuTjoJq9Ow8TRIvUf6CAA==
X-Received: by 2002:a02:c78f:: with SMTP id n15mr717016jao.100.1579810498584;
        Thu, 23 Jan 2020 12:14:58 -0800 (PST)
Return-Path: <jpewhacker@gmail.com>
Received: from [10.30.196.43] ([204.77.163.55])
        by smtp.gmail.com with ESMTPSA id x25sm668279iol.6.2020.01.23.12.14.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2020 12:14:58 -0800 (PST)
From: "Joshua Watt" <JPEWhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Subject: Re: [yocto][meta-rockchip][PATCH 2/4] gcc-arm-none-eabi-native: Add recipe
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Trevor Woerner <twoerner@gmail.com>
References: <20200123160821.778821-1-JPEWhacker@gmail.com>
 <20200123160821.778821-3-JPEWhacker@gmail.com>
 <CAMKF1srfnM=Nt9BFGEoZOfbC6cvFhQj9Zvmi7KzhHT=61VABAw@mail.gmail.com>
 <31fc4c12-5abf-30c0-96a0-e3a54d7db14f@gmail.com>
 <CAMKF1sqZZ4iBetcakRS-00oCFSW7A1whyf5wr9J_o1qUoaoEMg@mail.gmail.com>
Message-ID: <79f3d4de-e3b1-53da-b25e-c62214d20034@gmail.com>
Date: Thu, 23 Jan 2020 14:14:57 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqZZ4iBetcakRS-00oCFSW7A1whyf5wr9J_o1qUoaoEMg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 1/23/20 2:06 PM, Khem Raj wrote:
> On Thu, Jan 23, 2020 at 11:59 AM Joshua Watt <jpewhacker@gmail.com> wrote:
>>
>> On 1/23/20 1:49 PM, Khem Raj wrote:
>>> On Thu, Jan 23, 2020 at 8:08 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
>>>> Adds a recipe to pull down the prebuilt GCC for compiling on Cortex-R
>>>> and Cortex-M processors from ARM. This toolchain is required to build
>>>> Arm Trusted Firmware for the Rockchip rk3399 SoC, since it must compile
>>>> some firmware for the M0 coprocessor.
>>>>
>>> can this use mutliconfig ?
>>> This seems then can be avoided
>> I'm not sure if multiconfig is applicable in this case; This is required
>> because the same recipe (arm-trusted-firmware) requires 2 different
>> compilers to be available; the target compiler (aarch64-poky-linux), and
>> an arm-none-eabi-gcc compiler specifically to compile some M0 firmware
>> that goes into ATF.
>>
>> Multiconfig would work (I think), if the recipe only needed one or the
>> other, but not in this case where it needs both.
> right, so question is if this recipe can be effectively two such recipes. If not
> then perhaps this solution is ok or perhaps we can just use prebuilts for the M0

It *might* be possible to build it in two passes, but I'd rather not 
because its not the way the ATF is intended to be built. The code 
currently expects that it can build with the arm-none-eabi-gcc, so 
anything thing we do differently is more likely to break. Right now, the 
AFT recipe should be pretty easy to maintain; breaking it apart will 
make it quite a bit more complicated.

I'd rather have a prebuilt (for now) GCC building some firmware from 
source that download a prebuilt firmware image :)

Like I said, long term I'd like to build up the arm-none-eabi-gcc from 
gcc-cross in OE-core, I just haven't figured out the best way to do that 
yet.


>
>> I also looked at building an additional gcc-cross recipe that explicitly
>> targets arm-none-eabi, but the maintenance was going to be a pain unless
>> A) the recipe lived in OE-core or B) this layer copied all of the GCC
>> recipes. Neither of those was appealing at the moment, but I plan on
>> revisiting it. Even when I did have it in OE-core, I had some trouble
>> with some manifest warnings, so I'm not quite sure I was doing it correctly.
>>
>>>> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
>>>> ---
>>>>    ...cc-arm-none-eabi-native_9-2019-q4-major.bb | 37 +++++++++++++++++++
>>>>    1 file changed, 37 insertions(+)
>>>>    create mode 100644 recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>>>>
>>>> diff --git a/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>>>> new file mode 100644
>>>> index 0000000..a0c832d
>>>> --- /dev/null
>>>> +++ b/recipes-devtools/gcc-arm-none-eabi/gcc-arm-none-eabi-native_9-2019-q4-major.bb
>>>> @@ -0,0 +1,37 @@
>>>> +# Copyright (C) 2019 Garmin Ltd. or its subsidaries
>>>> +# Released under the MIT license (see COPYING.MIT for the terms)
>>>> +
>>>> +DESCRIPTION = "Baremetal GCC for ARM-R and ARM-M processors"
>>>> +LICENSE = "GPL-3.0-with-GCC-exception & GPLv3"
>>>> +
>>>> +LIC_FILES_CHKSUM = "file://share/doc/gcc-arm-none-eabi/license.txt;md5=c18349634b740b7b95f2c2159af888f5"
>>>> +
>>>> +PROVIDES = "virtual/arm-none-eabi-gcc"
>>>> +
>>>> +SRC_URI = "https://developer.arm.com/-/media/Files/downloads/gnu-rm/9-2019q4/RC2.1/${BPN}-${PV}-x86_64-linux.tar.bz2"
>>>> +
>>>> +SRC_URI[md5sum] = "fe0029de4f4ec43cf7008944e34ff8cc"
>>>> +SRC_URI[sha256sum] = "bcd840f839d5bf49279638e9f67890b2ef3a7c9c7a9b25271e83ec4ff41d177a"
>>>> +
>>>> +S = "${WORKDIR}/${BPN}-${PV}"
>>>> +
>>>> +inherit native
>>>> +
>>>> +COMPATIBLE_HOST = "x86_64.*-linux"
>>>> +
>>>> +do_install() {
>>>> +    install -d ${D}${datadir}/arm-none-eabi/
>>>> +    cp -r ${S}/. ${D}${datadir}/arm-none-eabi/
>>>> +
>>>> +    install -d ${D}${bindir}
>>>> +    # Symlink all executables into bindir
>>>> +    for f in ${D}${datadir}/arm-none-eabi/bin/arm-none-eabi-*; do
>>>> +        lnr $f ${D}${bindir}/$(basename $f)
>>>> +    done
>>>> +}
>>>> +
>>>> +INSANE_SKIP_${PN} = "already-stripped"
>>>> +
>>>> +INHIBIT_SYSROOT_STRIP = "1"
>>>> +INHIBIT_PACKAGE_STRIP = "1"
>>>> +INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
>>>> --
>>>> 2.24.1
>>>>
>>>> 
