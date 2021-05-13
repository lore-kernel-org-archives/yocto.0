Received: from mail-pf1-f179.google.com (mail-pf1-f179.google.com [209.85.210.179])
 by mx.groups.io with SMTP id smtpd.web12.9891.1620890317152236210
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 May 2021 00:18:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VvSjQxRp;
 spf=pass (domain: gmail.com, ip: 209.85.210.179, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f179.google.com with SMTP id q2so20840693pfh.13
        for <yocto@lists.yoctoproject.org>; Thu, 13 May 2021 00:18:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/FoMZK4UbzwKJiFfn/SxXBLNSKacx1N1cEd2hksg+NI=;
        b=VvSjQxRpiwi6n+J37fKaN70IV4zTzOEUH0L3bpmWkN3cofdp0z35skTxwSbOBbZoa9
         dSEgQon3DeSupGdGFo9dVeQcLAIsZpILtsrfLQuiRwSHCYEHPFUbjw6hjX07zAdRECFH
         cOXPcOSNZFWhVzLo1VViKcVknpy94LlWXjJP2t/d3DY/AfPzqAVIZZSq6WYO3tva8xW5
         i2DnO12ENoiJJK95GOou+ywl99fYUVjBDASiFW4dH73gPvJKccMdNRRDZBPd0yooRSoI
         uA2gb7PefhAXNNo7nps/TzlbENyhipT0NlzlyY5CmnHcEPAVCama8IAPOfWKInkBue0r
         oKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/FoMZK4UbzwKJiFfn/SxXBLNSKacx1N1cEd2hksg+NI=;
        b=UKI5mijBRSeqqhSDK77RHk5DdCIaz9ijAc+T8xot1ZBDnBcNR952ON54G2MjGe9YEb
         gIQYxJC+ro8yH0vAFHIoDS/5XEmZF1ek9zmQGccF4FrqrDEYMeaSPYOIW8hYDAR2gbnq
         gJPrT9NXNxxYDPOkfDa+LypTYp8s5THerlcc3oR7gLKERSfv+qMOqdS2/2CDzZkhyC14
         KEng5o9UCrLEuqzkMFCjCO5MTgOueaW402lIrbmdLYxDlnD1s2leDwzLRccJdpp7Q8JK
         TIXQp9nTsRbzIIo6nD8NyUipziK2iHMFYTMma0x1NIYVVyfj80L60gHJDLjacoKk7yqX
         c3NA==
X-Gm-Message-State: AOAM531sjdvHItCVq0wFt1n0ZGqUbRkDouJtyDSVw9Uf0M61mLrUW+pQ
	F4pvfEY42E3NAJhGMXWeuZ8Lva2QoBgKh4ECWKc=
X-Google-Smtp-Source: ABdhPJzrqnY7vIe4BCLKs0ZxLK2/a+1tcO2ypE85noT0rB1Xq78/DPe8D4RrH8+9HA21hE8f60dqjPpD1muQeoZM1dE=
X-Received: by 2002:a05:6a00:1630:b029:2c0:a1eb:d77 with SMTP id
 e16-20020a056a001630b02902c0a1eb0d77mr19019192pfc.81.1620890316585; Thu, 13
 May 2021 00:18:36 -0700 (PDT)
MIME-Version: 1.0
References: <v3iM.1620820893433035646.BQdl@lists.yoctoproject.org>
 <CAGAf8Ly_r-CoF9c+7OuSuZUb9wsFxsDdb28mEVmdw1jk9YMXtw@mail.gmail.com>
 <CAGqYRWHupwJo4-TPC13yAr=cmu7A97ki8b6YcmnyV8Wu00qs2g@mail.gmail.com>
 <CAGAf8LxqL40KhhdmEtaN39xsK+je_SiNhsKHuCz-3NxoeQ+Jjw@mail.gmail.com> <CAGqYRWEeRNYYxyRDsPTk6nd3R=kXT_euzcU6bf0zznf0pZJpqQ@mail.gmail.com>
In-Reply-To: <CAGqYRWEeRNYYxyRDsPTk6nd3R=kXT_euzcU6bf0zznf0pZJpqQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 13 May 2021 09:18:25 +0200
Message-ID: <CAGAf8Lwy+zeMhzAJuvRfspCArbdM_aajj=0U_ujx0SQQ3s3WVw@mail.gmail.com>
Subject: Re: [yocto] Yocto Zeus : facing error regarding hostapd #zeus
To: rohit jadhav <rohitbjadhav1@gmail.com>, Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Rohit,

It is a good find. I also googled for the error, and found this as an
explanation:
https://www.yoctoproject.org/pipermail/yocto/2019-February/044153.html

I included Alex (Kanavin), who created the above mail.

Maybe Alex can give more light on the problem?

In the meantime, you should explore (by similarities) this pointer in
very details:
https://github.com/Xilinx/meta-virtualization/issues/4#issuecomment-590532621

Zoran
_______

On Thu, May 13, 2021 at 8:25 AM rohit jadhav <rohitbjadhav1@gmail.com> wrote:
>
> Hi Zoran,
>    log.do_rootfs.31340is linked to log.do_rootfs I have checked with ls command, So both files are identical.
>
> While surfing I found similar thread but its for different package  its as follows :
> https://github.com/Xilinx/meta-virtualization/issues/4
>
> Can you please help out with this for our Package Hostapd ?
>
> Thanks and Regards
> Rohit
>
> On Thu, May 13, 2021 at 10:18 AM Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>>
>> From the log log.do_rootfs.31340 file, there are the following:
>>
>> [1] ERROR: Postinstall scriptlets of ['hostapd'] have failed.
>>
>> HOSTAP stands for: HOST Access Point Daemon. I could not conclude too much from:
>> https://en.wikipedia.org/wiki/Hostapd
>>
>> It is kind of a hot spot, as my best understanding is.
>>
>> [2] Details of the failure are in
>> /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
>>
>> So, my best guess, looking into log.do_rootfs will tell us much more.
>>
>> Please, attach this one for our review as well.
>>
>> Thank you,
>> Zoran
>> _______
>>
>> On Wed, May 12, 2021 at 5:29 PM rohit jadhav <rohitbjadhav1@gmail.com> wrote:
>> >
>> > Hi Zoran ,
>> > I have attached the log file for your reference.
>> > Thank You
>> > Regards
>> > Rohit
>> >
>> > On Wed, May 12, 2021 at 7:50 PM Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com> wrote:
>> >>
>> >> > Log file in:
>> >> > /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/
>> >> > imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/
>> >> log.do_rootfs.31340
>> >>
>> >> Could you, please, attach a log file?
>> >>
>> >> Thank you,
>> >> Zoran
>> >> _______
>> >>
>> >>
>> >> On Wed, May 12, 2021 at 2:01 PM rohit jadhav <rohitbjadhav1@gmail.com> wrote:
>> >>>
>> >>> Facing following issue :
>> >>> ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of ['hostapd'] have failed. If the intention is to defer them to first boot,
>> >>> then please place them into pkg_postinst_ontarget_${PN} ().
>> >>> Deferring to first boot via 'exit 1' is no longer supported.
>> >>> Details of the failure are in /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
>> >>> ERROR: Logfile of failure stored in: /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.31340
>> >>> ERROR: Task (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs) failed with exit code '1'
>> >>>
>> >>> Please guide me if anyone have any idea to resolve.
>> >>>
>> >>> Thanks in advance.
>> >>> 
>> >>>
