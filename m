Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.346.1614792674037500165
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Mar 2021 09:31:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=EdZYajU9;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 37C9938C0625
	for <yocto@yoctoproject.org>; Wed,  3 Mar 2021 17:31:13 +0000 (UTC)
Received: by mail-qk1-f182.google.com with SMTP id z190so24797582qka.9
        for <yocto@yoctoproject.org>; Wed, 03 Mar 2021 09:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NRQmW8HHr2+Oh62RxeEcpFbcp58INeWnt1wd8iRhdXA=;
        b=EdZYajU9N9Q0fRCkXFjipGV60iRaeeLDtd3qdasvVOcHDiJJmRjAVPhHwkxurVdtNg
         rWak1uczwEIp/VvsrAP2y2l2NaqvJk26f6YpDyEc3/DNS7Ipnh+k7mEAzA1dnR/KdOZ1
         BmLnADgPcutIpiEQjEXUeg8DyuLoLxDTaGov6Nh+rryXaXp1BlcsDuzO/Av5+duaCo7g
         W9ltjd2Wiux5mrzAnwcTqWtdgHXdcfuVU2Wsm0cdqP1LDWisX3+LIYQIM00p2e4nI9SB
         1RPORTCljM9tEk/jgzUuZXn9phnHQ7eRprDJ1mDCbQ9r6N8IQgJcrD4yv/kSF5JZUX/M
         hNeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NRQmW8HHr2+Oh62RxeEcpFbcp58INeWnt1wd8iRhdXA=;
        b=PNe3mkSQc2/nv3p+8JaOejsNjrIoXDvyFUPVhb8oM3B63xUSDMYzXHFFVYj/RB5E8K
         QNAMngkkBdr+vIFo0ILpd9XUHYHiUxWfNilLDIIT3W8+W7gB/P6IXZ4jqzLoXzV1mF5J
         wj9pWd2VJeiaTXO6pdXXyh9FcZd8K7nvnHRzgztkXNWD6SBd9MzsNKoaCZQdhuJTdmZc
         j7SNEv8oEUuuYrkIUyMVX0sRmdFptVJV12nNNHwSVcjedqSfP3hsvF5P0j8OBOMNbaFi
         qYI0ztvRLtVtPbGzmbAIleqRFc8Qbpd18t1bZV9v+BLW2AmJemcBrfJo+ina1pLi1BBL
         0Liw==
X-Gm-Message-State: AOAM532y36xgFJqjEzunYWqL5NWNZDio+GimMqlfYD4ZrO9XJOPXcBx7
	TUv2vb6Lq/uPQsiwR1eHNIhZ2rOJ2QLkvAQe7Gs=
X-Google-Smtp-Source: ABdhPJy6wrWwOaWiyKB/i1ueolcuOXSSYpvUTbhkqhcVg62RMCOK621nY2VVdE6+gGVoHIUYt04Xi5Mfy9k55MsBNrE=
X-Received: by 2002:a37:a350:: with SMTP id m77mr37766qke.146.1614792672147;
 Wed, 03 Mar 2021 09:31:12 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv37Ca1eWCMXCOXarByH0xtDFtvNE9nF8BXdF4u9OKZdShg@mail.gmail.com>
In-Reply-To: <CAAfyv37Ca1eWCMXCOXarByH0xtDFtvNE9nF8BXdF4u9OKZdShg@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 3 Mar 2021 09:30:44 -0800
Message-ID: <CAMKF1sr3yX2qjKrfq5c9k4h_0zfDszDFD+dw5NX_2TtRyeH02Q@mail.gmail.com>
Subject: Re: [yocto] cc1 binary in final rootfs even when no reference to it
To: Marek Belisko <marek.belisko@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

this file comes from cpp output package. Can you check if somehow cpp
is being pulled into your image

On Wed, Mar 3, 2021 at 6:10 AM Marek Belisko <marek.belisko@gmail.com> wrote:
>
> Hello,
>
> on dunfell images I start seeing that cc1 binary (checked by buildhistory):
> files-in-image.txt:-rwxr-xr-x root       root         17674124
> ./usr/libexec/gcc/arm-poky-linux-gnueabi/9.3.0/cc1
>
> is present in the final image. I check taskexp but cannot find any
> reference which pointes to it.
> Any ideas how to check or it's a common problem?
>
> Thanks and regards,
>
> marek
>
> --
> as simple and primitive as possible
> -------------------------------------------------
> Marek Belisko - OPEN-NANDRA
> Freelance Developer
>
> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> Tel: +421 915 052 184
> skype: marekwhite
> twitter: #opennandra
> web: http://open-nandra.com
>
> 
>
