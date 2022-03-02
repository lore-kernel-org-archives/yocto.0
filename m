Return-Path: <karthik.poduval@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32184C433EF
	for <webhook@archiver.kernel.org>; Wed,  2 Mar 2022 03:23:15 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web10.3716.1646191393591106104
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 19:23:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HsuvXguf;
 spf=pass (domain: gmail.com, ip: 209.85.208.179,
 mailfrom: karthik.poduval@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id p20so512601ljo.0
        for <yocto@lists.yoctoproject.org>;
 Tue, 01 Mar 2022 19:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=P4WAcz8EHkjstNqOP6HVEuaX3Rx2Sf796P5l3yZnDpU=;
        b=HsuvXgufKlmKK9LJg9MYVZiMpEAWrNBlocwY/TVhydw875DF0IVUWGLfNPpEczZS99
         xJmfxoGrPVnFe1OroQSXtHwYvYhJSrG7xPArhe91qpUXh10UxE0G47xtSTCdmiMbSar0
         23HKCrtykouxA9r1rZQ/eC7GrYgGLMWoU4CUsNGs8aK1zrnCIjZtRUBsq8sTcBL7tzkd
         j2d2Ky1WxnCdbmRP/Ye05BtZffOCz2ZvOkzxMCle7V40+X9mSsz31tlOu5SOcm8gkR7n
         VeJbLe4UFfH9Punf0y6abeIH8xpHwfCwAuntY58fjPoyKKjMBtyfOA6E9Arrwj+f6AZq
         QL5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=P4WAcz8EHkjstNqOP6HVEuaX3Rx2Sf796P5l3yZnDpU=;
        b=PqQ5ZhvH3nDWpK+o/r8818MqIswCeiYCXJCF2Un2DeERb0lZChJnXaVhj0/Pfbtmrc
         PBBzStL8eQb7zIaLfjEudrMp1qXrQtA6VH+zN0hK4kIAHn5X6yuD5bjqq5oukPD7I5zX
         IFeuuR8MQoml0UWLKz7LI9JOF9plBTEO3BxK+Hm36uQa0U28zPxdBp+gA75gwrhTWRaY
         T4fQMUtlZ3pXy3UWzW0Dr5RJ4nLzCun+FMii28Fi61VAJ8vZZZPxgtqOSzXDJnG6T6Li
         TAeaPmvaU9YHUfHd9eBqtzOHH/L3ONH7+w7nVf2Cn7c6owgBIpCYrV73Hc3I+htx5GJE
         Kk5Q==
X-Gm-Message-State: AOAM531D5wK1IoYBgYUFoa/+FKPY1Zlz6NokrTWDjmnlBD2fdgg8uEGs
	PvuSlDFaqnRtgGR8CdRZ+k3U7iDduAHio7xp8c0=
X-Google-Smtp-Source: 
 ABdhPJytJ/P0ZH/lkTNKre9nCblJQim1XUP8didM5doLMIQTnMi8/aiaj5SNHCmMFRdqfqKFwZz16ze82pKOHVtzBLE=
X-Received: by 2002:a2e:a554:0:b0:247:abae:640b with SMTP id
 e20-20020a2ea554000000b00247abae640bmr1035804ljn.295.1646191391266; Tue, 01
 Mar 2022 19:23:11 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAH9dsRjncTUY9gwRHr_=-+ShHAxiRS-YqSz8W7_eNyWypWKCkw@mail.gmail.com>
 <19024.1646126763231751613@lists.yoctoproject.org>
In-Reply-To: <19024.1646126763231751613@lists.yoctoproject.org>
From: Karthik Poduval <karthik.poduval@gmail.com>
Date: Tue, 1 Mar 2022 19:22:59 -0800
Message-ID: 
 <CAFP0Ok9==XqQNWoZs2xcF-fUu6Tc1zT-zTDKyE4OXGAA63heKg@mail.gmail.com>
Subject: Re: [yocto] On managing debug and production builds
To: tomzy <tomasz.zyjewski@3mdeb.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 02 Mar 2022 03:23:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56346

This concept of user vs debug builds is there in Android and any
Android developer who gets introduced to yocto may look for these
options. There seem to be many implementation choices here, trying to
summarize some of the options here.

1. use different image recipes example-image-user.bb vs
example-image-debug.bb but this still poses a problem for kernel
recipes as kernel needs to have different config fragments or
different defconfig for debug vs user variants. One possible option is
to use KTYPE to select tiny vs standard or define own for custom BSP
layers. What about other recipes like u-boot or firmware for other
remote processors, how to percolate the debug vs user options to those
recipes via just an image recipe ?
2. use different configs using multiconfig. Base config (which is
debug) also selects the user config hence always building both build
variants in different tmp directories. Kernel, remote firmware and
image recipes use variables from the multiconfig cof files to decide
whether to build debug or user variants.
3. use different distros. DSITRO=3Duser bitbake example-image,
DISTRO=3Ddebug example-image. Kernel and remote firmware recipes use
variables from the distro to decide whether to build debug or user
variants.

Which is the best method ?
All these options seem very BSP layer specific, is there something
more generic and better than the above options ?
If not, should this be a feature request to the Yocto project ?

NOTE: debug variants may include the following.
- more debug related kernel configs and security loosened and UART
ports disabled
- image recipe debug variant may include debug utilities absent from
the user variant

There could be more than just debug and user variants. Android has
engineering, tests, user, tiny and user-debug.

--
Regards,
Karthik Poduval

On Tue, Mar 1, 2022 at 1:26 AM tomzy <tomasz.zyjewski@3mdeb.com> wrote:
>
> Thanks Tomasz. I will check kas.
>
> No problem
>
> Yes, for selecting some of the packages I have created prod and debug ima=
ge
> recipes.But this did not work for the kernel as the kernel recipe is pick=
ed
> as part of PROVIDERin machine conf.
>
> What are the difference there? You want to use different config on prod a=
nd debug images?
> Maybe add it as config fragments? Then you would need to add some global =
variable to
> distinguish when use given .cfg file.
>
> [1] https://docs.yoctoproject.org/singleindex.html#creating-configuration=
-fragments
>
> SoI had to use 2 conf to have the
> IMAGE_FEATURES (orany other var)set differently for prod and debug. This =
is for
> building the kernelrecipie differently for prodand debug. Setting the
> IMAGE_FEATURES in the image recipe (and not inconf) causes2 problems. One=
 is
> that kernel and other bootloaders recipes arepicked early via PROVIDER in=
 conf
> and not as packages included in image recipe.
>
> Is that a problem?
>
> Secondly,setting the var in the
> image recipe breaks this command for e.g.
> "bitbake base-image-prod.bbbase-image-debug.bb".
>
> Didn't you want to distinguish this to builds to be able to run `bitbake =
base-image-prod` or
> `bitbake base-image-debug`?
>
> Since the command parses the recipes only once for both image creation.
>
>
> Nevertheless I would greatly recommend you to use kas. In simple .yml fil=
e you
> could prepare different `local.conf` per configuration prod/debug.
>
> [2] https://kas.readthedocs.io/en/latest/userguide.html#project-configura=
tion
>
> Regards,
> Tomasz =C5=BByjewski
> Embedded Systems Engineer
> GPG: 5C495EA3EBEECA59
> https://3mdeb.com | @3mdeb_com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56335): https://lists.yoctoproject.org/g/yocto/messag=
e/56335
> Mute This Topic: https://lists.yoctoproject.org/mt/89469781/3618339
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [karthik.poduva=
l@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

