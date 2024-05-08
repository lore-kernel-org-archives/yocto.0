Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 075F2C10F1A
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 01:28:29 +0000 (UTC)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web11.2141.1715131705950575645
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 18:28:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=I9N7ZkkV;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.169, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f169.google.com with SMTP id 71dfb90a1353d-4df3da90b6cso922496e0c.2
        for <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 18:28:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1715131705; x=1715736505; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sxvKA1vDSp7ijACIsQffe8TmLtrrCtuvd3HwUD1Gaxw=;
        b=I9N7ZkkVDSw0BvEkPOrJZm4BKqTviJ4Us+etvJeUcaTMEEF4IN53EE+1NrNPpgfLI4
         E8Zw/8MIxe91QTaIPrjt7pTpJQR0snXtwd5OsJ1XcBPPXI/cC1osBUU0+gjm2zSrvKuD
         jXZ5OOHzk4ghm19ku7ID9BOSAkI1KTBecYNEwEkKSjt9JVwVCg1P2Vfz7g1enibOUfbV
         5LFQNkOnQm6AJaQ+2NiCdCK8pHcISEFNR9J+uEGjyyCtD4HWj9qHa6fyDOGhw+ZknLRL
         UvBQweHQCeLdLRVXoXe/+cTioVFFuzZxRe2VgA6vtARhqmElw5Pt7uljKFBqFKrk2A55
         zHcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715131705; x=1715736505;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sxvKA1vDSp7ijACIsQffe8TmLtrrCtuvd3HwUD1Gaxw=;
        b=n8ChU1PrxHCbkeefcC1sCeO2m6VSgOaVRjHZ1J3Oia0avC8ShgojwyDL7HrPPoMBj4
         tyjA0ByTYsLSi4eUdHXs6K1f+mAXrpGGp8nETuBIFr4FsyjClC/U7XGdrfgFqpw5bgM6
         8SpiYAr6Gi/JqPYh9S8IX8UykVWv2WzJPPIJLr2AYpcXersdkUwliGPCV2qE7ZYAVsY0
         Y/5QjXPyUQSMpFLKQAtSRbEsoOWL9Rk8YECQ3FAuHdt08fnyU4cipeDq0Ilo7DaHsTqt
         lFgJBcEYnQrgx5NeQ/KwzK6JIJs1IQ5FMgLZ7RkzVGgmmFbxgqkeVmqEq+3EbTM6fwTP
         mdrw==
X-Gm-Message-State: AOJu0Yy0pWoX5y3wGlBW1gbZqHeyBjoJBhZGqbqML8XbRdMLUtBs2HLW
	9l8zAR1Y3cPY1WIshN5IC/sbyL6IG73jA0oqp2sC7eDlbCyjR/9daTiWW0JTuW5f2gejWSztCgZ
	X783gKPRUAw96PmD+YHUuQtWB/cWEg72/yIsfu8ySJ+O7IUiwaxk=
X-Google-Smtp-Source: AGHT+IEFgGcJiNHLC3NwmSjd26+ozvaqxCLFqQZJ5igASNYZ0QdhrWf6q9nFFexMGBlZHKlQEDWZ8AOgfBgRgnEaceA=
X-Received: by 2002:a05:6122:20a4:b0:4cb:fc25:7caa with SMTP id
 71dfb90a1353d-4df6937cacbmr1283024e0c.14.1715131704134; Tue, 07 May 2024
 18:28:24 -0700 (PDT)
MIME-Version: 1.0
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Wed, 8 May 2024 13:28:13 +1200
Message-ID: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
Subject: Warning about "no-recipes"
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f7ea5a0617e737d8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 01:28:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63045

--000000000000f7ea5a0617e737d8
Content-Type: text/plain; charset="UTF-8"

I am getting a warning as I build a yocto build I inherited.  Forgive me I
know very little about Yocto

```
WARNING: No recipes in default available for:

/home/yocto/thisbuild-yocto/layers/openembedded-core/../meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bbappend
```

The file in mentioned  (gstreamer1.0-plugins-base_1.20.0.imx.bbappend)
contains:

```
FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = "
file://0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
```

And the file:
"layers/meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base/0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
exists.

What can I do about this?

Worik

--000000000000f7ea5a0617e737d8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am getting a warning as I build a yocto build I inh=
erited.=C2=A0 Forgive me I know very little about Yocto<br></div><div><br><=
/div><div>```<br></div><div>WARNING: No recipes in default available for:</=
div><div>=C2=A0 /home/yocto/thisbuild-yocto/layers/openembedded-core/../met=
a-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20=
.0.imx.bbappend</div><div>```</div><div><br></div><div>The file in mentione=
d=C2=A0 (gstreamer1.0-plugins-base_1.20.0.imx.bbappend) contains:</div><div=
><br></div><div>```<br></div><div>FILESEXTRAPATHS:prepend :=3D &quot;${THIS=
DIR}/${PN}:&quot;<br><br>SRC_URI:append =3D &quot; file://0001-glupload-don=
-t-reject-non-RGBA-output-format-in-_dir.patch&quot;</div><div>```</div><di=
v><br></div><div>And the file: &quot;layers/meta-thisbuild-nxp/recipes-mult=
imedia/gstreamer/gstreamer1.0-plugins-base/0001-glupload-don-t-reject-non-R=
GBA-output-format-in-_dir.patch&quot;=C2=A0 exists.</div><div><br></div><di=
v>What can I do about this?=C2=A0 <br></div><div><br></div><div>Worik<br></=
div></div>

--000000000000f7ea5a0617e737d8--

