Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0CA6FC32771
	for <webhook@archiver.kernel.org>; Wed, 21 Sep 2022 12:14:32 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com
 [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web12.5581.1663762463622159361
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:14:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YaLLHVak;
 spf=pass (domain: gmail.com, ip: 209.85.208.169,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id l12so6738380ljg.9
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 05:14:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=Yl0Wt9pZW97CpVeVGFxtmzX6DhLxwhM97t1mXZ9W//I=;
        b=YaLLHVakKqHkfTdN98yL2nVUYn0rBrP0PLluPNqK1eLFmI1SheT1C09tNjXtpp8EMB
         ZWOk8JZwmUC1ecHUAyryYea9R4/b+bGKX0VTu8HDtiav/QeICgBPMEWAufZP4LIHe31z
         XvSmSbhoJyCbbrF4UKbx9Y+GbNiSIxglmzSvLTNNqcCl1Bp/jnFPk3aAQ2Vh97PDnm2N
         k04tjn8zHKHUB0sFtH8orynJ0lzXKsgjVbiJwY0p3VqwDlfP64PZ7LLy1wwoObGb7pYM
         ofWRlQsRMKAelgMyFgmttyLOH587VTOI7Dt8lm5fmp0UvKtLDtjlZ2us6cR79YTlVgkA
         46PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Yl0Wt9pZW97CpVeVGFxtmzX6DhLxwhM97t1mXZ9W//I=;
        b=lKVAYZpyOkXcbtw18XKqH26PHx0rEMsOiM/Mdvy1riNCaqqYK17H//Z7Q9h9qkSnpi
         e/4DDfNfTL7tVsncCvecInzZgNo+i7uTKcyh6bgRSwUrOBEe3sGt//g1MIod0sqNleg1
         Lh27xALO1uypWGlY+u9kLlQsNvOrEIYxvLEaA7yCPiO8GUZCSI95i6aH9HMZ9tdmX48t
         epneqKAuWy3aKYJd28XRVtaw5N6wcQuwV8sBacG0Syoi8KlJ/gEcRMrUX10FkCjdvjlO
         kkcBdKcVCbki1kAlRhaym/ZztEqPdYW7lJBw/tP96C+zt9ML4QDr/BLd5rd07jqUfGkv
         iQrg==
X-Gm-Message-State: ACrzQf3UUinbYzKw3+lvPSnF5pRYF1nopu2e3EuwSu4RG5vcnHDKls46
	r/WwLZqb53+7VMqgXlXjK5Z1fbljrhvJcb8Yc5Y=
X-Google-Smtp-Source: 
 AMsMyM57b4ecAPlemt09DTL2gVvYey797iufLNbuA7Kw4gkkWkyV2pHIWncnKHOG9thwazeujMK/N+fjB6SjEAYALB8=
X-Received: by 2002:a2e:9e50:0:b0:261:e3fd:cdc5 with SMTP id
 g16-20020a2e9e50000000b00261e3fdcdc5mr8669942ljk.56.1663762461692; Wed, 21
 Sep 2022 05:14:21 -0700 (PDT)
MIME-Version: 1.0
References: 
 <PH0PR84MB1835D4BD7B71CB2ED806C2CEC7489@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <PH0PR84MB1835BFBD2F24974F9B69E9E3C74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-0ewbydhAYAw6u0JgnKcBEJTSgZ+QzTxnwD2Lmh9vDgA@mail.gmail.com>
 <P5UGIR.ETKUECS9HZXY1@t-online.de>
 <PH0PR84MB1835BCF1ACDC3CAC1357FECCC74D9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <40WGIR.ECG3N5TIIYMJ1@t-online.de>
 <PH0PR84MB183594E043D2D4644D204710C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj8ZmE4_KY41Xe90YSFSm-t3MPVQjDH+gTw8TJBFgTjoWw@mail.gmail.com>
 <PH0PR84MB1835BEBC6B143383119B2EA7C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj-DASeVZAJKe5SURTNec_uth5CofkyOu6ytn9rv2dc76g@mail.gmail.com>
 <PH0PR84MB1835ADAA61579A359EE70E46C74C9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj9z+0TX5WpyKSYBEM40HASYHykDHktVENsTfDnUTvyrug@mail.gmail.com>
 <PH0PR84MB183510DD06DC37C976C8ABFEC74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
 <CANNYZj_ESNarHT2TjhUuoU97XbdeQcBGg-s6ki_sRusWcDbOcA@mail.gmail.com>
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
In-Reply-To: 
 <PH0PR84MB1835958E697521CC93766B80C74F9@PH0PR84MB1835.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 21 Sep 2022 14:14:10 +0200
Message-ID: 
 <CANNYZj_LvAnPgrVgQsu2WcTa4R-Fyy84TTTSSzXJLseKGDB+KQ@mail.gmail.com>
Subject: Re: [yocto] Adding Vulkan to core-image-weston
To: PHIL <heideggm@hotmail.com>
Cc: Markus Volk <f_l_k@t-online.de>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Sep 2022 12:14:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58117

This is not logs from mesa, this is logs from your image recipe. You
need to start with mesa.

Alex

On Wed, 21 Sept 2022 at 14:12, PHIL <heideggm@hotmail.com> wrote:
>
> One of the logs has this
>
>
>
> Error:
>  Problem: package packagegroup-base-extended-1.0-r83.qemuarm64 requires p=
ackagegroup-base, but none of the providers can be installed
>   - package packagegroup-base-1.0-r83.qemuarm64 requires packagegroup-dis=
tro-base, but none of the providers can be installed
>   - conflicting requests
>   - nothing provides mesa-vulkan-drivers needed by packagegroup-distro-ba=
se-1.0-r83.qemuarm64
> (try to add '--skip-broken' to skip uninstallable packages)
>
> Am 21. September 2022 13:57:17 MESZ schrieb Alexander Kanavin <alex.kanav=
in@gmail.com>:
>>
>> You need to go to mesa's build directlory and inspect what is getting
>> built, with which options, and how it is installed and packaged. All
>> the needed bits are there, but it does take a bit of 'yocto skill' to
>> find your way around there. Start by looking at temp/log.do_configure
>> (and then do_compile and do_install).
>>
>> Alex
>>
>> On Wed, 21 Sept 2022 at 13:38, PHIL <heideggm@hotmail.com> wrote:
>>>
>>>
>>>  If I read the mesa-vulkan-drivers recipe right it should install libvu=
lkan_*.so but it didnt I had to use vulkan-loader. Any idea in how to debug=
 that?
>>>
>>>  Am 20. September 2022 15:26:45 MESZ schrieb Alexander Kanavin <alex.ka=
navin@gmail.com>:
>>>>
>>>>
>>>>  What often works is running it under strace - you might be able to se=
e the one key syscall that causes the failure. Otherwise you might have to =
go through the heavier gdb step through.
>>>>
>>>>  Alex
>>>>
>>>>  On Tue 20. Sep 2022 at 10.25, PHIL <heideggm@hotmail.com> wrote:
>>>>>
>>>>>
>>>>>  Ok it seems to use Software now given how slow weston-simple-egl has=
 become. But vulkaninfo still fails with ERROR_INCOMPATIBLE_DRIVER.
>>>>>  --
>>>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail ges=
endet.
>>>
>>>
>>>  --
>>>  Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesen=
det.
>
> --
> Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
.

