Return-Path: <farias@automac.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 602CAC25B75
	for <webhook@archiver.kernel.org>; Wed, 29 May 2024 14:16:30 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.15347.1716992185113859243
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 May 2024 07:16:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@automac-net.20230601.gappssmtp.com header.s=20230601 header.b=RxpnnKgT;
 spf=pass (domain: automac.net, ip: 209.85.208.180, mailfrom: farias@automac.net)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e95a1d5ee2so4900211fa.0
        for <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 07:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=automac-net.20230601.gappssmtp.com; s=20230601; t=1716992183; x=1717596983; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=o3WZb5xUSXV8PFIKTS27jwxQx6YsjMyUX0cA9iFg7gU=;
        b=RxpnnKgTGyTXV0xNCXfKUl8D4/gmlOvw0E1Jrd8DAgKRua1kXjpXegil4ND3f362u5
         GYHXDt2TwbRbS0B6fnHPoGXFNG98PxEmYk45Cib87/xaqIdF1Ca/uM3n/flICHWa+/Zs
         ySrFnIoElyIQa9WW7yDQ/yVCYauHxCdxZ7Sn1SLYHY537S1roVpoiGYAd5tvl/kzb2qz
         hV+xXoD4AFmxX5hWjMtYnGEMpKZ6foF5FTkJQFBPiTN0mhaesqTXCACGiFCy34CRAyF3
         h68lsWz1ySP9QGXW7SFwailqxpvIO4ei1Cfo8mJpVAFbdl+GR0NqmVvwyY7fEuGTjCtd
         yQOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716992183; x=1717596983;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o3WZb5xUSXV8PFIKTS27jwxQx6YsjMyUX0cA9iFg7gU=;
        b=TiZ+4r+irRWeF+zKjkPkIavHRlSNohOA05O5rabiaIvLBSXYF8P0WVPE9Esw7pbAU3
         dhVbXlHKvN+wbYAJDh0cOLaY5KYB37HimWWyCfFtSDno3KYedjVtuwMmxuIZe26KVboO
         7oNeRS2W6C6lRqb80ZwP9k20iWQTg1IkCaElUF2HiE1mp3Jp1conTcB7rMbX/jRgBBO1
         I2ua1ZlUiq0ztgLc4nM4pHmV5BUhuH8jA8rYIUQ67w7oncc9sD5yDcy8rUrOD+JOKJ6K
         2jbwKSRb2Fn+/24fltFAXOt/m4iwLSRIHFrU0Ls52pQkyTvvYMcN9My7yYJ/3TsTHrVE
         owPg==
X-Gm-Message-State: AOJu0YxKR9ucynkqyvC7eHFdARWw21LATnSg57/T/4bQMSueiF71eoa9
	qzkgBrvWKrcYPgS1JXv/KfwzDM0IRrnn8kOqZbNpgpSHBc0Xv3o5hasqzZqNR19O2QODllVqlgP
	eiaqNgH6xsevC2SPhNhHiRETG7izJ6qnkH71yJOBPTRJI16T7cuQ=
X-Google-Smtp-Source: AGHT+IEeBlk/Ybs4lxyclf3n9nC8nLwGFmgELCycrHNOBnV0JPmaNFMoD1IRdc2OoxDLhhE1PBcM+Nbb1GE8U9Ysi/c=
X-Received: by 2002:a2e:b385:0:b0:2e6:be3c:9d4d with SMTP id
 38308e7fff4ca-2e95b096b68mr127024641fa.12.1716992182660; Wed, 29 May 2024
 07:16:22 -0700 (PDT)
MIME-Version: 1.0
From: Federico Arias <farias@automac.net>
Date: Wed, 29 May 2024 11:16:11 -0300
Message-ID: <CALBkiFDL_cvngvGivfZvz9zcfc7YKkm4CTTaRoiHLEwiautc-Q@mail.gmail.com>
Subject: [meta-raspberrypi] Raspberry CM4 does not load audremap overlay
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000214684061998658c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 May 2024 14:16:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63229

--000000000000214684061998658c
Content-Type: text/plain; charset="UTF-8"

  Hello, I'm new to the Yocto and Raspberry community, so let me know if
I'm doing something wrong please.
I am trying to compile with Yocto Kirkstone (also tried newer branches),
for a Raspberry Pi CM4 (emmc) + Official IO Board. I chose the Raspberrypi4
machine config, is this the correct one for the CM4 32bits?

I just build the core-image-base with the alsa package. I enabled in
local.conf dtparam=audio=on and also dtoverlay=audremap to route the audio
to pins 12 and 13 (pwm).
This works fine with the official raspberry distro (only Bullseye onwards)
but it doesn't work here. With the aplay -L command only the HDMI audio
appears, not the headphones.

The SO image works fine, it boots and outputs audio via HDMI.
I also tried enabling pwm audio with other commands in local.conf like:
audio_pwm_mode2
dtoverlay=audremap, pins_12_13
dtoverlay=pwm1
and the same above with pins 40 & 41

also tried running >modprobe snd_bcm2835

I really don't know what else to do, or where else to look for more info.
Please tell me if you need me to add more data like dmesg logs etc.

Additional details (revisions used, host distro, etc.):
rev Kirkstone, Linux 5.15, poky distro, Raspberry pi CM4 with emmc and
official IO Board

Many thanks for your time.

--000000000000214684061998658c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">=C2=A0 Hello, I&#39;m new to the Yocto and Raspberry commu=
nity, so let me know if I&#39;m doing something wrong please.<br>I am tryin=
g to compile with Yocto Kirkstone (also tried newer branches), for a Raspbe=
rry Pi CM4 (emmc) + Official IO Board. I chose the Raspberrypi4 machine con=
fig, is this the correct one for the CM4 32bits?<div><br>I just build the c=
ore-image-base with the alsa package. I enabled in local.conf dtparam=3Daud=
io=3Don and also dtoverlay=3Daudremap to route the audio to pins 12 and 13 =
(pwm).<br>This works fine with the official raspberry distro (only Bullseye=
 onwards) but it doesn&#39;t work here. With the aplay -L command only the =
HDMI audio appears, not the headphones.=C2=A0<div><br></div><div>The SO ima=
ge works fine, it boots and outputs audio via HDMI.<br>I also tried enablin=
g pwm audio with other commands in local.conf like:<br>audio_pwm_mode2<br>d=
toverlay=3Daudremap, pins_12_13<br>dtoverlay=3Dpwm1<br>and the same above w=
ith pins 40 &amp; 41<br><br>also tried running &gt;modprobe snd_bcm2835<br>=
<br>I really don&#39;t know what else to do, or where else to look for more=
 info. Please tell me if you need me to add more data like dmesg logs etc.<=
br><br>Additional details (revisions used, host distro, etc.):<br>rev Kirks=
tone, Linux 5.15, poky distro, Raspberry pi CM4 with emmc and official IO B=
oard<br><br>Many thanks for your time.</div></div></div>

--000000000000214684061998658c--

