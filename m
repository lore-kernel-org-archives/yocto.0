Return-Path: <neuberfran@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE1EAC433F5
	for <webhook@archiver.kernel.org>; Wed,  9 Mar 2022 16:04:23 +0000 (UTC)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com
 [209.85.221.181])
 by mx.groups.io with SMTP id smtpd.web08.1940.1646841862513471325
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 08:04:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PXNVrXtq;
 spf=pass (domain: gmail.com, ip: 209.85.221.181,
 mailfrom: neuberfran@gmail.com)
Received: by mail-vk1-f181.google.com with SMTP id s195so1515468vkb.10
        for <yocto@lists.yoctoproject.org>;
 Wed, 09 Mar 2022 08:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=gMAlF/kdKln8QtFjysHhonkGcrwhDRTYcCUFyMynKn8=;
        b=PXNVrXtq17nY6Opn50elhRRFJefvT80LtilF2iGCRClF5sAOUDvcgKMo/e/ZM/SLuE
         vyBCm9QgsKRcnqJU2Jo/1lA2qXZIEKFEylO9V3k5v7lEEKGuTI2acOR4mBZgQrX+NCOC
         NG5GAGCZ6OQT+vAGt8+dGzvljliuMdPS0VYgTWMmqwJCN8u/UU3hljd1sYpFRl96ZVkp
         qfyWj8+fye9uswwVxVxFk15OCCxM8gxUgLg6kzxg8TVh5qwz/8kFG/2+KsikUihRjrWz
         ZDMfsW9mJqbpoBmjON56NpXb12Ma7V3alsg5OrhcWU1Y73i1/j0zUPvmxxPfCDBXPaiG
         8x5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=gMAlF/kdKln8QtFjysHhonkGcrwhDRTYcCUFyMynKn8=;
        b=Quczp5/up7sgXKgU47oBi2mshaA5Wbwt9yn34qtbJ6bNGujskLREgHXBK2nRkzlmBG
         v8p4DSTl5WJpxwerpTwWg+pI/C7yJLDLNnMy2Ax6aiYCmIBI19RB2feDLrLtdwehPAao
         7RIgwrTc5uELFG+DlCBMGVoESpFLMle82j1cLEDNRaQ4yKi2obg86KOLSq6/M+Boum8O
         oWztEAVPwj0rkt/uU3uc5FYBg0wBl5Cu4DINTeM13RV7SaByblP3e0DEu/5vDPZBoGuh
         CvaD5Wu49i2N7AiYLXCJ+kUChECnjyFGkdthBV96wBufMfYmehYaHO9pDDrYPX6Ch9Pq
         m6rw==
X-Gm-Message-State: AOAM530vjAqizpQmgkLxQSTfRX1tyrMdnvXj2Z7MYaXZXSfGUdJj6jeK
	LXfZfWwuQwwp5cdXsbDUDJe9g4bDrVP/be+RklWstPUnkqw=
X-Google-Smtp-Source: 
 ABdhPJyJtWn2l0Bl5aIMQV3C9ttz6f6p9nUNlE+KZIpSZLcOCKE8t5Ijjs01utgpnBMTW3Q1h9POUaBEsG4Z5aO45Tg=
X-Received: by 2002:ac5:cd88:0:b0:32c:5497:6995 with SMTP id
 i8-20020ac5cd88000000b0032c54976995mr203175vka.33.1646841861392; Wed, 09 Mar
 2022 08:04:21 -0800 (PST)
MIME-Version: 1.0
From: Neuber Sousa <neuberfran@gmail.com>
Date: Wed, 9 Mar 2022 13:04:10 -0300
Message-ID: 
 <CABWL1P=zE2ytCjuyxG9em7WRzoPQt1ztcTHVm1MzN1hfQkbDTQ@mail.gmail.com>
Subject: imx7d-pico with hardknott - I need help enabling remoteproc in device
 tree to show /linux/remoteproc.h file and modules in /sys/class/remoteproc
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000264e9d05d9cb408d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Mar 2022 16:04:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56410

--000000000000264e9d05d9cb408d
Content-Type: text/plain; charset="UTF-8"

Hi,
I do this:$ mkdir tn-imx-yocto$ cd tn-imx-yocto$ repo init -u
https://github.com/TechNexion/tn-imx-yocto-manifest.git -b
hardknott_5.10.y-stable -m imx-5.10.72-2.2.0-2022Q1.xml$ repo sync -j8$
DISTRO=fsl-imx-x11 MACHINE=pico-imx7 BASEBOARD=pi source
tn-setup-release.sh -b build-x11-pico-imx7$ bitbake core-image-base

I enable REMOTEPROC and RPMsg in kernel. I have imx_rpmgs_tty module. But I
don't have remoteproc. Why?

--000000000000264e9d05d9cb408d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>I do this:$ mkdir tn-imx-yocto$ cd tn-imx-yocto$ re=
po init -u <a href=3D"https://github.com/TechNexion/tn-imx-yocto-manifest.g=
it">https://github.com/TechNexion/tn-imx-yocto-manifest.git</a> -b hardknot=
t_5.10.y-stable -m imx-5.10.72-2.2.0-2022Q1.xml$ repo sync -j8$ DISTRO=3Dfs=
l-imx-x11 MACHINE=3Dpico-imx7 BASEBOARD=3Dpi source tn-setup-release.sh -b =
build-x11-pico-imx7$ bitbake core-image-base<br><br>I enable REMOTEPROC and=
 RPMsg in kernel. I have imx_rpmgs_tty module. But I don&#39;t have remotep=
roc. Why?=C2=A0<br></div>

--000000000000264e9d05d9cb408d--

