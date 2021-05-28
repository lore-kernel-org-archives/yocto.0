Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.7639.1622204943403108311
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 May 2021 05:29:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VqnSQ65Y;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id 6so2426779pgk.5
        for <yocto@lists.yoctoproject.org>; Fri, 28 May 2021 05:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4eq6zHC39+G9F9nhVXNH11ZTJTP02vLT/82GXQdc8Mw=;
        b=VqnSQ65YBknU6NoE346ZBS/JCHRUd/Q8ijfgEUNnPSbaBBVj/yfjhatQMwsIJj26GB
         fW2afY3RqIC5DQYF5YZj6kk6R9ldvk4pXUV0E8f3lisjT37brY7IrAvpTVcO3cqZWlPu
         zEN5zLHYZfUCN4B5Mfu2afGEr3Dq314QLCaM5Fo5FUNkd4zMhEMmfc+aoe/3sl+qbvns
         9I2tr2BPp7Kj/+Izn/vgUbmSdkwBIAosWxXfYQEYjC183ZFhPKpNntL01gJuZ2HTZHv3
         /J155omXJKGVLNXnSxG8IfogW7xkeTxGIwrk2cqa8vG0RVqtUoiln0GmhrOzjLAtAgo1
         SOPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4eq6zHC39+G9F9nhVXNH11ZTJTP02vLT/82GXQdc8Mw=;
        b=sdguxs0vFSl9327mT+tnxIUjIV44xO/DOkhpUGid8vj9UxTh+mMQYhbfs9jLfLerSj
         9dUKOH7aWAuGt0eGnFJXTZ5HJps2OUls9JmzU2jQ/G8DimLlk09xVuyC8zjT2mPVWXPk
         DLWqjxkl/7+V0yypvLhiXNROm6kLILd0MT9uAP3y5IRVXqxr0hlaZ91+XU8aEyKWYZp8
         sW+wRnE3GdQ6/C6UXKShZNCG+PJAXF+WXhAb0M1MY5iN+HoX2AlAgyzIO4ptJcO5+ON/
         3JxvqFWtPBC1u17mqXmaaCzgPqKOYm6CJtRzs30Ia1EAbJIqKfL7fqDST3fw8XXAxmC1
         gw5w==
X-Gm-Message-State: AOAM530wrRKfZXsSRsbbV4rx277xO6c/zc073UIkFN6d4kDcd2qiS6Ph
	i4dtiNnbn5Ep6HAkz7t5TDSOSLrwyOyFr86gyxI=
X-Google-Smtp-Source: ABdhPJyb/boc6Od5lGhdytOH/0He6ojrXh1r0n3JYvsa9VBkCKCjQ0nss6e4jhRVRIIz9ciWkvqDBhQFi/AaZorbgdk=
X-Received: by 2002:a05:6a00:23c6:b029:28f:d463:17ba with SMTP id
 g6-20020a056a0023c6b029028fd46317bamr3728895pfc.65.1622204942693; Fri, 28 May
 2021 05:29:02 -0700 (PDT)
MIME-Version: 1.0
References: <dWBn.1622153050533898469.7UFj@lists.yoctoproject.org>
 <7642946a-9a4b-2799-9db2-1187822ffbcf@gmail.com> <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com>
In-Reply-To: <CAHUEwNZPjwy93VOvRLK5DA=pQRyFSK5TA32h_uZgzwdKyQFagQ@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Fri, 28 May 2021 14:28:51 +0200
Message-ID: <CAGAf8Lx_MxnDMVWspVDShzq8uLCtxcSAGqZZoT0Vdsh8YT8cRw@mail.gmail.com>
Subject: Re: [yocto] How to switch yocto INIT_MANAGER from systemd to sysvinit #dunfell
To: Swapna Nannapaneni <sayinswapna@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> Tried setting  INIT_MANAGER  = " sysvinit" in build/conf/local.conf

Is it INIT_MANAGER  = " sysvinit" , or INIT_MANAGER  = "sysvinit" (no
blank at the beginning)?

Thank you,
Zee
_______

On Fri, May 28, 2021 at 1:47 PM Swapna Nannapaneni
<sayinswapna@gmail.com> wrote:
>
> Thanks Robert and Raj!!
>
> I am using Yocto 3.1 Dunfell release.
>
> You are right about the .bbappend file. Changed the name in the overlay to new-ver.bbappend  and no longer see the warning.
>
> Tried setting  INIT_MANAGER  = " sysvinit" in build/conf/local.conf but looks like generated rootfs has init file pointing to init -> ../lib/systemd/systemd
>
> Priya.
>
> On Thu, May 27, 2021 at 7:28 PM Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On 5/27/21 3:04 PM, sayinswapna@gmail.com wrote:
>> > Hello Yocto team:
>> >
>> > I just started with yocto and would like to know the process for
>> > switching the init manager from systemd to sysvinit.
>> >
>> > I tried this options in config file
>> > VIRTUAL-RUNTIME_init_manager = "busybox"
>> > PREFERRED_PROVIDER_udev = "sysvinit"
>> > PREFERRED_PROVIDER_udev-utils = "sysvinit"
>> > DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>> > DEFAULT_DISTRO_FEATURES += " sysvinit"
>> >
>> > I see a warning when building my machine:
>> >
>> > No recipe for target:
>> > /recipes-core/sysvinit/sysvinit_2.88dsf.bbappend
>>
>> Please find out which layer is adding this bbappend you could use
>>
>> bitbake-layers show-appends sysvinit
>>
>> It seems recipe version is newer perhaps and the bbappend is still made
>> for older recipe, these things happen when you mix release branches for
>> different layers.
>>
>> >
>> > When I run this build on my target it still shows me systemd init manager...
>> >
>> > Not sure if I am missing any options.
>> > Could you please let me know if there are any pointers I can refer to?
>> >
>> > Thanks,
>> > Priya
>> >
>> >
>> >
>> >
>> >
>> >
>
>
> 
>
