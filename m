Return-Path: <farias@automac.net>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CF3C25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 15:03:57 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.872.1716476628732785940
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 08:03:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@automac-net.20230601.gappssmtp.com header.s=20230601 header.b=fJs1JClu;
 spf=pass (domain: automac.net, ip: 209.85.208.180, mailfrom: farias@automac.net)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e6f2534e41so63679121fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 08:03:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=automac-net.20230601.gappssmtp.com; s=20230601; t=1716476626; x=1717081426; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GDr40rpGw8ONRVzdSCKkkFCxFdSCegyvNkvVgzk3QQw=;
        b=fJs1JClu0y65t+s0gtKR49+uM9eNOYTr6exfnfE/o+/Kxekxm2KwqyrW8VVWsqY1hk
         STx+V9Ro/e3b7jpMRoQuXDZ7HXWQONbDMH9k3LVdttKoZZFCjkJJ/WPJPj0/zLyo46c2
         XNHJKHb72SraguTwMujJ1jkRKk/eFcoTgzu7qf4jcFoCPkHiBOaENWkzfvMjisEpe2Da
         kpW6qtJHiEfWzScYgr3CrXlCkCfT0X1KN2D7N9DqlNg/5g50ImNCK2u4T7YUX6SiPWb9
         Wl9QO9roxRj0xx6oXM7g3zNogtryVGREnAj75xKq4bKPUZzW8QP+YMxO9vZiDVBOF2jJ
         TQNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716476626; x=1717081426;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GDr40rpGw8ONRVzdSCKkkFCxFdSCegyvNkvVgzk3QQw=;
        b=mBK5iMYCrx010s+8IHR7O+FaaMUd92TwAAtQEYKWIGzRBD1hlpqioPhRk8GkzR4tKS
         +j2v/XPa3Tyaal+mkn3NaYeYDkIKen6vdnb+cUlKa1HD3XITH3lwHR5O8/Dcl+lehIHr
         Y3XfTEy8aiUPQuaN9sznwTCz23WJNRKdteHAfFV+LDRYhF1QfUzL2/5uF5i8Wj5FRzdB
         QCBl29pvhH5FmBzNqbqG7r1seBe/pDoirs3X1vzlscHYbrdFArs2waSrsZ1ydx4yHF/z
         yKSFAp+lfD//f8aumgZdTuDHKKKt3cBBxQ/ji7H0Ismkx1DbASzA4t10WuT3MZyer4gl
         kc/A==
X-Gm-Message-State: AOJu0YyFyVfoBTJWByOO6Sf7iBdI6L71PlEsg/F74iT7I6fgVIBGWnYl
	e7fN+RWTXGHVYF5bxq7YtJi6HAbsctRjAJbHzrt+V4SlSrgqAeF+22adTBq6oiYww/g5Cpiaq9h
	zMe4hGiu4gs3E7gaJyMvp8UCHsfrL+6dT/6cILPKKLv84zt2PRlg=
X-Google-Smtp-Source: AGHT+IErGgXm4lNV3JztKt8g1TGeP6FYs8Shfue3ZpjTgPrP4kA3NHx4B9tcvsB8Ry6J8X37QMV/srFUt3ixEgctOMs=
X-Received: by 2002:a2e:9882:0:b0:2de:48ef:c3ce with SMTP id
 38308e7fff4ca-2e9495ee567mr30774431fa.49.1716476626462; Thu, 23 May 2024
 08:03:46 -0700 (PDT)
MIME-Version: 1.0
From: Federico Arias <farias@automac.net>
Date: Thu, 23 May 2024 12:03:35 -0300
Message-ID: <CALBkiFCmbcxOwrWPZN-hx_j=Nuv5GR-Ba7ELX1twERBxbMTXEg@mail.gmail.com>
Subject: Raspberry CM4 does not load audremap overlay
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009606130619205b90"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 15:03:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63186

--0000000000009606130619205b90
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

--0000000000009606130619205b90
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
oard<br><br>Many thanks for your time.<div class=3D"gmail-yj6qo"></div><div=
 class=3D"gmail-adL"><br></div></div></div></div>

--0000000000009606130619205b90--

