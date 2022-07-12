Return-Path: <chrisyocto2022@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40555C43334
	for <webhook@archiver.kernel.org>; Tue, 12 Jul 2022 11:41:29 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com
 [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web12.8000.1657626087285932347
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 04:41:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bvqVaHWu;
 spf=pass (domain: gmail.com, ip: 209.85.218.47,
 mailfrom: chrisyocto2022@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id j22so13824585ejs.2
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jul 2022 04:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=s0M81FFuRZLtFbEn9xtPHxv77RF0X4VJM/E1MrVpcJc=;
        b=bvqVaHWuNTN9agzpiieK3w+9mP81UdugpcQ6RCQ2wiU6kcyFFxPcjMte0nS+kMGCEN
         6OoihvMl8vsx/rvqEE7wn+ysAVa5A4M4tAPPkEzbo3KZGpnTMCZnpwnH+cmqtIeRnVWI
         rJBM5WJVUH1M7pbNNaxhdksO4qg8RCjD9Q2ogWHih+I0AGzRWsw04kcqcO9ISFH76j6c
         D3+1FgknjXto2OxAgbvtA9ZdPDEe85OrCstJTvrCwzqTwg1CZ60uKm6CM124nah+wflJ
         DVEvRis7PGLdxV1hM8YosbCZVk9AWnpyYPOMF9Fu0m2dJooEcrCXLOndcoRRmtGUrnJE
         MFdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=s0M81FFuRZLtFbEn9xtPHxv77RF0X4VJM/E1MrVpcJc=;
        b=GZn2mFRiYg7J/MS+K/LnpVfE6kwKaVLm5OoheqY3zPDYiFhBSFCOp6M6LLGp2Ksc2d
         1dpQo1jyxhfXMmRTUkez68C9wpcb47f+SQQ2Ui2P3qkVnRn8AHCg9sETCQ6CQUsSVtF2
         hcehA/7GYSDyDHmYV6Mfs9BTpJhEFaarqchL414jS7D1J5pztSi7Z8nJxlnIwbUDsp2t
         7czaWFq63fEzMtENw0GRxVoO0JGtQlZBlZN/D178iO94EGKmLQWOtIMYA8lHlcLK70hs
         5BkRUBBvYdmTU/r8Qwu67yZ1976nB7o3HOx5IJZhQyCtVa6MTUXyG7gop8//H9r5fcIQ
         HflA==
X-Gm-Message-State: AJIora8PxSA5UB5pwSpFEd2lvf1EVsB6GyO75KRw0/GzfFNgOvvyW76+
	uyChMBSiv94U1LTypR08xh9lSLyGX8/+R/fzIo73qWK6FTp1zO2H
X-Google-Smtp-Source: 
 AGRyM1sGpSM3xpMRQQJVLu2PofTHnUzBQsqOsL7FMPh2B98oleVpQNfXkKEc/Kqpg5enXdKEDGB01TvG8mWyLnr+XeI=
X-Received: by 2002:a17:907:7f1d:b0:72b:4502:1c4f with SMTP id
 qf29-20020a1709077f1d00b0072b45021c4fmr14000769ejc.368.1657626085452; Tue, 12
 Jul 2022 04:41:25 -0700 (PDT)
MIME-Version: 1.0
From: chris yocto <chrisyocto2022@gmail.com>
Date: Tue, 12 Jul 2022 13:41:14 +0200
Message-ID: 
 <CAKBdzwuDB5E8=TPVCPY-ULyNRnA-BfGe3F-3a_j07N2OrJq3Bg@mail.gmail.com>
Subject: Customizing SERIAL_CONSOLES
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fe718805e39a2563"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Jul 2022 11:41:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57505

--000000000000fe718805e39a2563
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,



I=E2=80=99m trying to customize the SERIAL_CONSOLES variable. In another th=
read I
read this can be done by adding a machine-extra.conf file too my custom
layer. So I added =E2=80=9C SERIAL_CONSOLES =3D "115200;ttymxc0" =E2=80=9D =
to my
machine-extra.conf, but when I  bitbake my custom image, no changes are
found.

In the conf file from the bsp for the board I=E2=80=99m using I found
=E2=80=9CSERIAL_CONSOLES =3D "115200;ttymxc2", when I change this to SERIAL=
_CONSOLES
?=3D "115200;ttymxc2" my changes are being applied.

This off course is not ideal since I then still don=E2=80=99t have all chan=
ges in
my own layer.

Is there a way I can solve this?



Kind regards,



Chris

--000000000000fe718805e39a2563
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;=
font-family:Calibri,sans-serif"><span lang=3D"EN-US">Hi,</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">I=E2=80=99m trying to customize the SER=
IAL_CONSOLES
variable. In another thread I read this can be done by adding a
machine-extra.conf file too my custom layer. So I added =E2=80=9C SERIAL_CO=
NSOLES =3D
&quot;115200;ttymxc0&quot; =E2=80=9D to my machine-extra.conf, but when I =
=C2=A0bitbake my custom image, no changes are found.
</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">In the conf file from the bsp for the b=
oard I=E2=80=99m
using I found =E2=80=9CSERIAL_CONSOLES =3D &quot;115200;ttymxc2&quot;, when=
 I change this
to SERIAL_CONSOLES ?=3D &quot;115200;ttymxc2&quot; my changes are being app=
lied. </span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">This off course is not ideal since I th=
en
still don=E2=80=99t have all changes in my own layer. =C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">Is there a way I can solve this?</span>=
</p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">Kind regards,</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm;font-size:11pt;font-family:Calib=
ri,sans-serif"><span lang=3D"EN-US">Chris</span></p></div>

--000000000000fe718805e39a2563--

