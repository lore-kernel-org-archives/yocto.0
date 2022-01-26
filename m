Return-Path: <pvanberlo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A2AAC28CF5
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 16:17:23 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web08.14729.1643213841297229333
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 08:17:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oua0nRvt;
 spf=pass (domain: gmail.com, ip: 209.85.167.46,
 mailfrom: pvanberlo@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id z19so27276994lfq.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 08:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=Akf0j/Zt45dTFuFR1m2761XuuYcC3ZFGlQ7Si0SUGkY=;
        b=oua0nRvtDGRdFATdHOKKE71N5M7W/piAAxUsP+KuRPQfPbpMFS5igS6HbnE7VNDx0w
         1t+0e2GLAtCs9IKR2fx2k+ewq13cqM0VaGDVXfOtemBNufw28bCut/PVNrnnpnf2I4Op
         nx8h6pPlWJa/d+4IZ1/tgeASDCze03aPGKvW1Uo4XD2oGWdNbwcrA2IGt59vkmNsy/E4
         gtxkrUyzd289GsdEcwZkW37y08C/oAXFCcgb5oIpqbEwECcqrf0Sdv5ucOBVbykYv3V8
         /o9cx8BVENclEk+Ek0+x5E77sjs6At2kZQfcD0bKlKmhjgM7UUSkxFeY1G6gZh1waEzD
         AA4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=Akf0j/Zt45dTFuFR1m2761XuuYcC3ZFGlQ7Si0SUGkY=;
        b=Ad2zLcMD/WDaElGNdRS06D39jkvO09odeFqCT6BDhm0BMw8mURCqccrkEoVFWd00kz
         Eed9WfsAZ3pff4kFm8mJgjLR0uyfd0g9c60UWLUOaJEYR/vScasRBmjwEykhTwjl7rr3
         tO6rmajUbkmGqDpIVxUCj/uexe2YvaFWnxtxpxBfnGb3ZF0GNn0ifsRRP4el1tgire8Z
         k0Br8AbB0pgMBH1z4k1HnLrlmmqZqybErZH5+5ObLowqrz2cE9A6K5hx6nAO5oZmiWZq
         X1By1P6ioeZRGzxtsCtFZLFfPcKF1oLJf5CZYR/MD8J7P+idyNe9BRbOydE0HEgZ2op/
         0NKQ==
X-Gm-Message-State: AOAM532S8YTFpt+nXp4SOaK1rAzCs2+e7oKUT3uF+P4Q1Tex+zDx38qO
	rKFOt0PXyGK6F3Vbtt5inudUPShkULQTFU8g2E5Sc1p94IdR0w==
X-Google-Smtp-Source: 
 ABdhPJyoDXTIUoAQK3yk9kDH4o+2t0jhubuqz9Q+qF41PcrVG8SXiYXu6kFemtTpo3X1Ya38nMWkLXlc0TxPhBT3PKs=
X-Received: by 2002:a05:6512:ba0:: with SMTP id
 b32mr11221208lfv.122.1643213839266;
 Wed, 26 Jan 2022 08:17:19 -0800 (PST)
MIME-Version: 1.0
From: Paul van Berlo <pvanberlo@gmail.com>
Date: Wed, 26 Jan 2022 17:17:08 +0100
Message-ID: 
 <CAJxFkmoN9caLE2QkWhniQf8pMWNGFEa=suHMWFqESUi=pvMCYQ@mail.gmail.com>
Subject: Preferred provide base-utils issue
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002df6e805d67e8974"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 16:17:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55979

--0000000000002df6e805d67e8974
Content-Type: text/plain; charset="UTF-8"

Hello,

so I'm a bit at a loss. I admit, I've not yet been using Yocto for a long
time. I'm trying to use base-utils as provided by
packagegroup-core-base-utils to have a more full featured set of base utils
instead of busybox. It all builds just fine, however, whatever I do (using
dunfell), it ends up with a kernel panic during boot.

I added the following to local.conf on a clean clone of poky:

INIT_MANAGER="systemd"

IMAGE_FSTYPES="live"

PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
VIRTUAL-RUNTIME_base-utils-syslog = ""

Does anyone have any idea how to get this to work?

Regards,

Paul van Berlo

--0000000000002df6e805d67e8974
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>so I&#39;m a bit at a loss. I ad=
mit, I&#39;ve not yet been using Yocto for a long time. I&#39;m trying to u=
se base-utils as provided by packagegroup-core-base-utils to have a more fu=
ll featured set of base utils instead of busybox. It all builds just fine, =
however, whatever I do (using dunfell), it ends up with a kernel panic duri=
ng boot.</div><div><br></div><div>I added the following to local.conf on a =
clean clone of poky:</div><div><br></div><div>INIT_MANAGER=3D&quot;systemd&=
quot;<br><br>IMAGE_FSTYPES=3D&quot;live&quot;<br><br>PREFERRED_PROVIDER_bas=
e-utils =3D &quot;packagegroup-core-base-utils&quot;<br>VIRTUAL-RUNTIME_bas=
e-utils =3D &quot;packagegroup-core-base-utils&quot;<br>VIRTUAL-RUNTIME_bas=
e-utils-hwclock =3D &quot;util-linux-hwclock&quot;<br>VIRTUAL-RUNTIME_base-=
utils-syslog =3D &quot;&quot;<br></div><div><br></div><div>Does anyone have=
 any idea how to get this to work?</div><div><br></div><div>Regards,</div><=
div><br></div><div>Paul van Berlo</div></div>

--0000000000002df6e805d67e8974--

