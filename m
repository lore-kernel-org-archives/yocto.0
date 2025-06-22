Return-Path: <u.apeiron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF50C7115A
	for <webhook@archiver.kernel.org>; Sun, 22 Jun 2025 21:02:13 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web10.5060.1750626131572444343
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Jun 2025 14:02:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dVUwBA7H;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: u.apeiron@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-ad572ba1347so577973866b.1
        for <yocto@lists.yoctoproject.org>; Sun, 22 Jun 2025 14:02:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750626130; x=1751230930; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Gy5xIqOIg2cvNZd7cYnPZYUfc0QDenobVxEdmxw6vRw=;
        b=dVUwBA7HBDLMz9EE4+RL9x1RZre13e4KMSAiY8nOxZOjpV5xOEjLNi4SWZY1HCFPCr
         E/c4mk+kLsUQSGfbWYTpag2XgyvgO8eSAt1mDzyRbT1yWrI3SuYo1mQM4Q1alMOBerLP
         /KXQDEqGim2D/3UjX1zvuAIKBL1LzVrViO2RcPvgVuO17FGLRGu49CAxEvn23bavg/8y
         59Bd+gpHIpHEQRB+UBau7fUQd7p0ZOy+YBJbZdd7ZvbAm+6TkctZx4C3WLZClPNl0633
         I/l/F/OWLclZO6DwTMuuNoIuOSDcKNRTt2xqXvDQa0Bqp0m6EA+a4mV4W8GnAU7yaRJN
         608A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750626130; x=1751230930;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Gy5xIqOIg2cvNZd7cYnPZYUfc0QDenobVxEdmxw6vRw=;
        b=EwgV47RlV3n6UG/xq8PcFQ2aropOpUcbz+sSo+bUlGoYKkaKAri4ctk4GnTFCmb538
         KepyXWZVGS3B3s8Lr3D/1kCraiu5szHTWDibN9Quy2ASDuLqIOaDek1AgNUpvpIX52vc
         lU/Kn9L9CMsgBggqnRwcXqSXyZV9x+qLv0VRevSoX/2rJmfC2NG+Ai7738kv6XtTzS7K
         yZvi/HILhH3IMb4jOOfxh+volHf4zD3o8d6qiMP/9AvnD6t/ETO+T3IJugwulIbWKi4F
         Hq+yb5us6YUQevyhdFKxEaBPvUjsHVgj0iC8n7GlnSth3Q4t3v8py8D6gHNxdv1Ddu1v
         gNIQ==
X-Gm-Message-State: AOJu0YyQRYcFPIwo+y+kfuOGiTBnZy+UQyPPxrql1hmWIWueLXvT1q2d
	Rl8EhjYa4i+XLwjch/udMOIas7f7Z5h7g4CgU3QjpU6xGgQRRwK1m45Rjj2MtukLFwdtlf/j/1d
	SqoFFYjm03tFv9mZLYxr/U07CjTNjnJghgw==
X-Gm-Gg: ASbGncut8gwFhIbrBDdS7ijHLRCJ4ClLqU3aCvSqicwrUObFMuv2jmtIlLNMUpdTCSP
	vJ8x4YIe8khsU2A3DWICGCNuSwFSPE1dWTTdLX84fanTwBeiPHHwjb3NzWJGzMFYhwnQhrxlNE9
	sa8sdYg1L7b8aK559HBEKW6ctTTiES4R8rW9V3AtOaylvCSn6Ot+4b8NMUtNCoFaDoxEc7JqL7
X-Google-Smtp-Source: AGHT+IEhRqBCnl2a8t1D2EFuhqwjPAl+2qSnbXN7Rfbwyu1hmIITPOWrWOwTqfJJ9eAPoq1urBh+euqKvokhTvVsXDY=
X-Received: by 2002:a17:907:940d:b0:add:ee2c:7313 with SMTP id
 a640c23a62f3a-ae057aadaf1mr924792866b.22.1750626129445; Sun, 22 Jun 2025
 14:02:09 -0700 (PDT)
MIME-Version: 1.0
From: "Ulises V." <u.apeiron@gmail.com>
Date: Sun, 22 Jun 2025 15:01:58 -0600
X-Gm-Features: AX0GCFtuPYDeG2RPFlkiSxXiH_sqembdl3qI2F8qhHm6B7I148IX7kc04E6ueEs
Message-ID: <CAK+BxzT=0uu51eD2drVTG4TqDWdHsskczvnygE32FypAWy_uow@mail.gmail.com>
Subject: [yocto] Booting BBAI-64
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000094864706382f6833"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 22 Jun 2025 21:02:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65532

--00000000000094864706382f6833
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I'm facing this error while booting BBAI-64 with Automotive Grade Linux ...

[    5.126890] mmc1: SDHCI controller on 4fb0000.mmc [4fb0000.mmc] using
ADMA 64-bit
[    5.202639] Freeing unused kernel memory: 128576K
[    5.236219] Checked W+X mappings: passed, no W+X pages found
[    5.241907] Run /init as init process
[    5.257456] mmc1: new ultra high speed DDR50 SDHC card at address aaaa
[    5.264614] mmcblk1: mmc1:aaaa SE32G 29.7 GiB
[    5.272450]  mmcblk1: p1 p2
Starting systemd-udevd version 255.4^
Waiting for removable media...
[   14.300978] platform bus@100000:wiz@5030000: deferred probe pending

it gets stuck at

"Waiting for removable media..."

I read some similar error in this link
https://community.nxp.com/t5/i-MX-Processors/Bundle-a-core-image-tiny-initramfs-to-a-core-image-minimal-wic/m-p/1045656#M154024

From what I was able to read in the init-live.sh script, and debugging
information in my system it might be reading ROOT_DEVICE  from root= in
read_args() function but never gets mounted because the while loop
after "Waiting for removable media..." searches a ROOT_DISK under
/run/media and later tries to mount ROOT_DISK. Additionally, My system does
not mount anything under /run/media so it will never detect a ROOT_DISK

Any hint you can provide is welcome.

Thanks

Ulises

--00000000000094864706382f6833
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hello everyone,</div><div><br></div>=
<div>I&#39;m facing this error while booting BBAI-64 with Automotive Grade =
Linux ...</div><div><br></div><div>[ =C2=A0 =C2=A05.126890] mmc1: SDHCI con=
troller on 4fb0000.mmc [4fb0000.mmc] using ADMA 64-bit<br>[ =C2=A0 =C2=A05.=
202639] Freeing unused kernel memory: 128576K<br>[ =C2=A0 =C2=A05.236219] C=
hecked W+X mappings: passed, no W+X pages found<br>[ =C2=A0 =C2=A05.241907]=
 Run /init as init process<br>[ =C2=A0 =C2=A05.257456] mmc1: new ultra high=
 speed DDR50 SDHC card at address aaaa<br>[ =C2=A0 =C2=A05.264614] mmcblk1:=
 mmc1:aaaa SE32G 29.7 GiB <br>[ =C2=A0 =C2=A05.272450] =C2=A0mmcblk1: p1 p2=
<br>Starting systemd-udevd version 255.4^<br>Waiting for removable media...=
<br>[ =C2=A0 14.300978] platform bus@100000:wiz@5030000: deferred probe pen=
ding<br></div><div><br></div><div>it gets stuck at=C2=A0</div><div><br></di=
v><div>&quot;Waiting for removable media...&quot;</div><div><br></div><div>=
I read some similar error in this link <a href=3D"https://community.nxp.com=
/t5/i-MX-Processors/Bundle-a-core-image-tiny-initramfs-to-a-core-image-mini=
mal-wic/m-p/1045656#M154024" target=3D"_blank">https://community.nxp.com/t5=
/i-MX-Processors/Bundle-a-core-image-tiny-initramfs-to-a-core-image-minimal=
-wic/m-p/1045656#M154024</a></div><div><br></div><div>From what I was able =
to read in the init-live.sh script, and debugging information in my system =
it might be reading ROOT_DEVICE=C2=A0 from root=3D in read_args() function =
but never gets mounted because the while loop after=C2=A0&quot;Waiting for =
removable media...&quot; searches a ROOT_DISK under /run/media and later tr=
ies to mount ROOT_DISK. Additionally, My system does not mount anything und=
er /run/media so it will never detect a ROOT_DISK <br></div><div><br></div>=
<div>Any hint you can provide is welcome.</div><div><br></div><div>Thanks</=
div><div><br></div><div>Ulises</div></div>
</div>

--00000000000094864706382f6833--

