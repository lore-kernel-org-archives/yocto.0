Return-Path: <bratiranjan12@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 84F9ECDDE67
	for <webhook@archiver.kernel.org>; Wed, 23 Oct 2024 10:55:00 +0000 (UTC)
Received: from mail-oo1-f49.google.com (mail-oo1-f49.google.com [209.85.161.49])
 by mx.groups.io with SMTP id smtpd.web11.6087.1729680895431460538
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Oct 2024 03:54:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=h2f4v3Lz;
 spf=pass (domain: gmail.com, ip: 209.85.161.49, mailfrom: bratiranjan12@gmail.com)
Received: by mail-oo1-f49.google.com with SMTP id 006d021491bc7-5eb73ec1e1aso3420027eaf.2
        for <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 03:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729680894; x=1730285694; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qlQO7/jiTe4lJy+vqkOIe5BdNmgAZYJ+qKOoNpVcZgQ=;
        b=h2f4v3LzIkrH/NBpCsBuWnFM+ZUfhEtoXgU9nGbkwnjjnYH5Og0PdirPnf7Ud6LbjK
         slFfTIFzSdMqvQuxZcDdQ6/InLve+KpVp4Qqk63e4Z+0JAP8iosu6S3k5uRbGNbuVtsd
         eV17Pa35VvkvK2ezqC2N80s3Zi/V1qNfJKQd6IUSiWezPk0phvr7Aee2HUhWDp4GJs+e
         Wr+IGA5CDbWf4SsN25tCe0qhQ/uJezo82ppYaa091GZRPFVM4U7eLr7wgaQSRPC+dwiU
         fHGaomZ9AJKxWvKcsRCWvOpcDSBtCDNPxHuSNhyzsd+CWawgn1AXktMv5obXBpLduzPS
         uzSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729680894; x=1730285694;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qlQO7/jiTe4lJy+vqkOIe5BdNmgAZYJ+qKOoNpVcZgQ=;
        b=bCKVvrU5GDdHuT32Ji/5x1L4DRekPJWmDutSUYIx+1hJ3sjKEx3q1GOeJjoGJdTE3e
         iXIBBGiCiQ0d587LocHCOvBX/07KCFf/OBzU6rTA5fFqsqeczC5eo47r7vlUYhjvHzLz
         zo4yi7kJ3Rh6oaAenbWLRAWRFAzlAe10mUk7z3OiChxXOLNTyF1CegsnIEBf/c9PCC89
         4pEcbnA0QOzi7/B/up2VGMOaTKODH2CPp6myCwmM9u+o7BoVsToQyl+CUDWOgwcs6hsq
         6QPd7dSxrvP7UXPabxtHttcHcrqP/VOWkMXkMPyS4LIai3WDMZOPHa/S9j3wTNMC/Ql1
         +6xA==
X-Gm-Message-State: AOJu0YxbHQb5pnJ2SUAMeWpxF7WmvEo7aaYi7bHKOPNOw5W+HOMStHbS
	VXeiLSdtzOArpLDY+UXmwFnRhqkvBIfx4GXwwcHcaKh+RA/5Tz0cNyBbyfJWGntXA/OG8cAVgeS
	jgU/MsoIYy8G24/gB4ApV5m3wIbwXrnYp6Ow=
X-Google-Smtp-Source: AGHT+IGHuDZI9eAVfkEkymDo8uEsGFMy3Yw42nE1kY15KBt9Rmsx/JL+Cke24VTbGt9IAYJQm1FzuobJg7+gx1dNACQ=
X-Received: by 2002:a05:6820:221d:b0:5eb:c6ba:7830 with SMTP id
 006d021491bc7-5ebee6dd13bmr1316755eaf.4.1729680894467; Wed, 23 Oct 2024
 03:54:54 -0700 (PDT)
MIME-Version: 1.0
From: Bratiranjan Acharya <bratiranjan12@gmail.com>
Date: Wed, 23 Oct 2024 16:24:43 +0530
Message-ID: <CALSmAY7XTNo=OF-nBWCCKuqOjSNLfaop-E3RJksqzZ2N91rmUg@mail.gmail.com>
Subject: Crypto-Ver-error
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004a29fd062522b7e4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Oct 2024 10:55:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64093

--0000000000004a29fd062522b7e4
Content-Type: text/plain; charset="UTF-8"

Hi all,
[Current scenario]
I am using scartgap yocto so python3-cryptography that poky provided is of
42.0.5 but i am integrating a middleware which actually needs cryptography
ver-37.0.4.[langdale yocto]

[What i have tried]
I tried to compile the python3-cryptography_37.0.4.bb file in current
scarthgap but experienced a lot or error and was unsuccessful. But the same
thing when i tried for nanbield yocto i was successful.

[From Board side]
When i tried to install cryptography directly from board through pip3 i was
successful but i dont want this everything should be compiled and load in
my final image through yocto.

Kindly help me to install cryptography==37.0.4 to my final image through
yocto

Thank you !

--0000000000004a29fd062522b7e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<br>[Current scenario]<div>I am using scartgap yoct=
o so python3-cryptography that poky provided is of 42.0.5 but i am integrat=
ing a middleware which actually needs cryptography ver-37.0.4.[langdale yoc=
to]<br><br>[What i have tried]<br>I tried to compile the <a href=3D"http://=
python3-cryptography_37.0.4.bb">python3-cryptography_37.0.4.bb</a> file in =
current scarthgap but experienced a lot or error and was unsuccessful. But =
the same thing when i tried for=C2=A0nanbield yocto i was successful.=C2=A0=
<br><br>[From Board side]<br>When i tried to install cryptography directly =
from board through pip3 i was successful but i dont want this everything sh=
ould be compiled and load in my final image through yocto.<br><br>Kindly he=
lp me to install cryptography=3D=3D37.0.4 to my final image through yocto<b=
r><br>Thank you !</div></div>

--0000000000004a29fd062522b7e4--

