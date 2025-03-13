Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79402C282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 17:25:02 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web10.21008.1741886692962458345
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Mar 2025 10:24:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=kel11RLS;
 spf=pass (domain: gmail.com, ip: 209.85.160.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4769aef457bso13803641cf.2
        for <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 10:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741886692; x=1742491492; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8u9wu7Ns4UqlF/35wcXahAFwUVAnYklY/YGdfqHJDHQ=;
        b=kel11RLSCcBuDWegovZ96bUueubNk1lwOzsoJjCq5l13D6xoya17K7V1fIxFfrGURr
         9X4U0RCiYz9Os+MUdm8AS6u6WwlqaWEQ/rdB7zxegJMBj2G2F5GzG7bKbAQY1kCYP9q4
         MeydnpnmDY/Pm7GKpOlYzWnUrdDk1CG1Cq1ZVBxfHoTnvwbylhotQXQx8+RpuPqcit3o
         FQ4zImUY/PgvUIsJo/q+Wk9yH5sCvzQOdXVwOYN/Hb18jcMV1zO/5VSBqZkgrX9QM6+L
         J67uFuKzYs77m0BtsA6yq0JaAy/pzOuvtu6grnj3qk8KzGaGUUdlfucbKy591BPDT3In
         rr9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741886692; x=1742491492;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8u9wu7Ns4UqlF/35wcXahAFwUVAnYklY/YGdfqHJDHQ=;
        b=AFFLflGO+FqkdpmBcn3bcJ3UaBt5DiS33dEfxeOjZP5dF1O6Wv7OkOdcayQaBlwLug
         HPRncBRwoHPxc5oN9qoBZ4pW3pNV/J03owEOt1/8U14QbWkdH1S/S20+n+xWQ1FQlPYr
         gi9PIPnmTZWQomg+fJy/HfS1PAkFvqe7EUHK9RTqU6PUHzCw1Fn7ONxDHJFgkSsE6b07
         CJGo3X5W68e9/x6ZvVtk8LUrB25B3MIYWqqRjkAcNUiHgJTYA/do6jzf0I/PzSgd9OHU
         6SM27Gqs8XEVE1FWEE30mDOtqr+1S/WTov6kB+/ZNyEWVqMbGZDQDwICWHP1Rkb/Tccg
         IVVw==
X-Gm-Message-State: AOJu0YxNTIPqF3sPFvvuuPpgm+yyxo6G5jMFw8Q/x9bmtxkhjPeXduu+
	RGbr2xE60hAtnNTWM+o3Cvh1xJimI6u6kEWM+wNUVx5H3HIvsYitBwRJtzJPfsssGtgJGJCj4df
	3UdIDSMcM3nyAZ1c6lA5Psxup5H1sUA==
X-Gm-Gg: ASbGncv6UBs5FGXxQv/nqYLSapyWShQLHjxlFv+74CiAE86Sv2r4Ivpau96IKIKN3VM
	dJGHJA9N2oewcwaeWTYDVjrVejKyBlz6w7HRq4W7eywJcAfQoAmpeOOYoOCscqFtna2oyZwCxVg
	rabvP6V2Gdk/Wr8yi7Fset8CpHAgSKFTkbCIZ1rgZyuAK3rQTwxrFcAI6D3/CT
X-Google-Smtp-Source: AGHT+IEIlqmu+lkAuyB5V8YOHjnlowGMeY2QS1tRHY5weS3jxpuSxGgEqTFyghtLwSYkgD/FUHYqPz51j8n7+nJLyhw=
X-Received: by 2002:a05:6214:cc1:b0:6e8:fb7e:d33b with SMTP id
 6a1803df08f44-6eae7ab6169mr6961936d6.33.1741886691814; Thu, 13 Mar 2025
 10:24:51 -0700 (PDT)
MIME-Version: 1.0
References: <myL2.1741884397359241204.Zyqi@lists.yoctoproject.org>
 <CANNYZj9uw-yh2wbmtieNR-aa1XRTOHTiLRvJCJi-4AOmZmvq_A@mail.gmail.com> <CAP2OjciYLUGx246fpXTasNAXxq4o7Di9YqbGMm22FvVEvrLagQ@mail.gmail.com>
In-Reply-To: <CAP2OjciYLUGx246fpXTasNAXxq4o7Di9YqbGMm22FvVEvrLagQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 13 Mar 2025 18:24:40 +0100
X-Gm-Features: AQ5f1JpR9YUODqvkhXWHQ55wOSPdM4JHexG_yVXbTA7B72jepIGTyBeTbWC5ZMA
Message-ID: <CANNYZj9wohK7BowfHxvsDUEpR5Kyf0DGbQL5+20TZMqYzQmxWg@mail.gmail.com>
Subject: Re: [yocto] jzlib hosting website down and hence build is failing
To: Ashish Mishra <ashishm@mvista.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 17:25:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64953

Sadly meta-java has no maintainer. If you still need the layer,
consider doing the maintenance for the community.

Alex

On Thu, 13 Mar 2025 at 18:12, Ashish Mishra <ashishm@mvista.com> wrote:
>
> Hi Alexander ,
>
> But the recipe https://layers.openembedded.org/layerindex/recipe/81565/is=
 tracking the tar
> Thanks for sharing the github link
> Will look at the possibility for changing to github
>
> - Ashish
>
>
>
> On Thu, Mar 13, 2025 at 10:19=E2=80=AFPM Alexander Kanavin via lists.yoct=
oproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org> wrote:
>>
>> Is it this?
>>
>> https://github.com/ymnk/jzlib
>>
>> Given that the last commit was 12 years ago, you should not be using
>> this at all.
>>
>> But if you insist, convert the recipe to take sources from github.
>>
>> Alex
>>
>> On Thu, 13 Mar 2025 at 17:46, emailaddress.ashish via
>> lists.yoctoproject.org
>> <emailaddress.ashish=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi Members ,
>> >
>> > Its been few weeks that the website http://www.jcraft.com/jzlib  is do=
wn.
>> > Can senior members please help and share what's the approach to handle=
 such cases.
>> >
>> > Currently i have the tar from other build which i am manually copying =
to my current download folder .
>> > Since we have customer release lined up , manually copying the tar wil=
l not be an feasible option.
>> >
>> > So wanted to check in community :
>> > 1) Do we have any alternate hosting website , i can create an patch an=
d push the changes
>> > 2) Is there any template to copy the TAR in download folder ?
>> >      As any patch we create will be from WORKDIR , not seen any implem=
entation where recipe is touching "download" folder
>> > 3) Generally whats the suggested mechanism in Yocto to handle such sce=
nario
>> >
>> > Thanks ,
>> > Ashish
>> >
>> >
>> >
>> >
>> >
>> >
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#64951): https://lists.yoctoproject.org/g/yocto/messa=
ge/64951
>> Mute This Topic: https://lists.yoctoproject.org/mt/111683564/4806067
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ashishm@mvist=
a.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>

