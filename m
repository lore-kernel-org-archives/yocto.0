Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3BA6AC32771
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 12:54:32 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web08.5866.1663764862633778288
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:54:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=VjKrWzHq;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id a3so9026135lfk.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:54:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=N0g1OIwfXjsW36Zxhe0ILiZsfOLbu04eQDy9vK44krE=;
        b=VjKrWzHqOl08vG3SmWaMd0id2GlsWXA+QraolLt3VbyRb6SNZ11y2/3qJwr4iNQ/lf
         Sxt7LP6btqOzo79imcRKVLKHt63OFz+Hdu4JL69E6ss/0FcgKAXbTLaCJxHWpDxAZsV4
         pksZRoumNdVdxMxd2oloKaUzHioutwzX9Mt/vqvxnU+oBwvYhFgOZf0uvwohjlMinMZ6
         acYKar92QSRvwyhrmTvsUyXz9SAqhd5DoTkKa5kCwtasFNCbMt3G7zHM7FTBoXYXJH6X
         IAFC/7HNDKiAIl+gY9P9MauNa99EITbn6jsok7IdFwI33NLswq4XURBEpd1DXYp9Edb5
         FRdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=N0g1OIwfXjsW36Zxhe0ILiZsfOLbu04eQDy9vK44krE=;
        b=VsR0zD/9JR3HbVz7KtwcTmPsmO9yStW6OEHSK+rLEiQ/qPtPx0sK5+Evh4rDiApt0n
         5LQtXT77axIVreN8gnzY1mjQAlcyIZ0DRK7LVeaxrYI1FuUncviOcNaC19phNnKaCoRQ
         Lf/SvHAqXvhDCMHrLC8v5Hv7LnmNSXH+JeLCgDG8QOLqDDhP+onOECrIyKSBHTyO2SOG
         k3tVlPpAn5kZAnahhlyA2qLluPrCfP5rMrg+QE/Pt1YWob9svOw2qspJmhiKJ2AtTWJi
         W7mrTiw5KPArv7CpCNlWEph0Xo8xNJzaGgjlsxwGJQKHRDewpY93wTgOIzWm1RJVDgMM
         NRag==
X-Gm-Message-State: ACrzQf2e1V20Euntbh2qo22KBGSZScXj6xEzuCTPEtqhGxHGu8o0hQtv
	1M4+wLiJnE/qT8st+ZiIUUHGqGYJO1B3zXnDIYA=
X-Google-Smtp-Source: 
 AMsMyM4EOfMO6FSb2sx2BJ0x31sSjM8+zWi1jC5lILGMkdW3C51PzHy8fczeDuyDySz4Ep9o+xy1PqYqyA2+2QtFalE=
X-Received: by 2002:a05:6512:10c4:b0:499:4c:64d7 with SMTP id
 k4-20020a05651210c400b00499004c64d7mr10130533lfg.521.1663764860454; Wed, 21
 Sep 2022 05:54:20 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
 <PH0PR84MB1835B5FFD430030BE74F9F97C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9kALWyEp+56R8RUhjJ6kPB36q4QpbtJzc0v0imPOdw-A@mail.gmail.com>
 <PH0PR84MB1835502638DA727304FBA402C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835502638DA727304FBA402C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 21 Sep 2022 14:54:08 +0200
Message-ID: 
 <CANNYZj_OkdKSmRkyOWDNe_MApH_drqvOmy415DZ4Zf7hYoyh8A@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: PHIL <heideggm@hotmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 12:54:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58122

Next you need to check if you have the mesa-vulkan-drives package in
deploy-* in the same mesa builddir, and does it contain the needed
driver file?

Alex

On Wed, 21 Sept 2022 at 14:48, PHIL <heideggm@hotmail.com> wrote:
>
> It has the individual packages but split up. One directory for mesa-vulka=
n-drivers etc. I don't know how to process from here.
>
> Am 21. September 2022 14:38:10 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> You need to check package-split/ to find out why.
>>
>> Alex
>>
>> On Wed, 21 Sept 2022 at 14:30, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>  Ok, there is a build directory tmp/work/cortexa57-poky-linux/mesa/2_22=
.0.0-r0 . In there, there is a package directory that has all libGL* librar=
ies and one libvulkan_virtio.so but they are not installed to the Image.
>>>
>>>  Am 21. September 2022 14:14:10 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>>
>>>>
>>>>  This is not logs from mesa, this is logs from your image recipe. You
>>>>  need to start with mesa.
>>>>
>>>>  Alex
>>>>
>>>>  On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>
>>>>>   One of the logs has this
>>>>>
>>>>>
>>>>>
>>>>>   Error:
>>>>>    Problem: package packagegroup-base-extended-1.0-r83.qemuarm64 requ=
ires packagegroup-base, but none of the providers can be installed
>>>>>     - package packagegroup-base-1.0-r83.qemuarm64 requires packagegro=
up-distro-base, but none of the providers can be installed
>>>>>     - conflicting requests
>>>>>     - nothing provides mesa-vulkan-drivers needed by packagegroup-dis=
tro-base-1.0-r83.qemuarm64
>>>>>   (try to add '--skip-broken' to skip uninstallable packages)
>>>>>
>>>>>   Am 21. September 2022 13:57:17 MESZ schrieb Alexander Kanavin <alex=
.kanavin@gmail.com>:
>>>>>>
>>>>>>
>>>>>>
>>>>>>   You need to go to mesa's build directlory and inspect what is gett=
ing
>>>>>>   built, with which options, and how it is installed and packaged. A=
ll
>>>>>>   the needed bits are there, but it does take a bit of 'yocto skill'=
 to
>>>>>>   find your way around there. Start by looking at temp/log.do_config=
ure
>>>>>>   (and then do_compile and do_install).
>>>>>>
>>>>>>   Alex
>>>>>>
>>>>>>   On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail.com> wrote:
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>    If I read the mesa-vulkan-drivers recipe right it should install=
 libvulkan_*.so but it didnt I had to use vulkan-loader. Any idea in how to=
 debug that?
>>>>>>>
>>>>>>>    Am 20. September 2022 15:26:45 MESZ schrieb Alexander Kanavin <a=
lex.kanavin@gmail.com>:
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>>    What often works is running it under strace - you might be able=
 to see the one key syscall that causes the failure. Otherwise you might ha=
ve to go through the heavier gdb step through.
>>>>>>>>
>>>>>>>>    Alex
>>>>>>>>
>>>>>>>>    On Tue 20. Sep 2022 at 10.25, PHIL <heideggm@hotmail.com> wrote=
:
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>
>>>>>>>>>    Ok it seems to use Software now given how slow weston-simple-e=
gl has become. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.
>>>>>>>>>    --
>>>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Ma=
il gesendet.
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>
>>>>>>>    --
>>>>>>>    Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail=
 gesendet.
>>>>>
>>>>>
>>>>>
>>>>>   --
>>>>>   Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ge=
sendet.
>>>
>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

