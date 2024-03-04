Return-Path: <worik.stanton@tirotech.co.nz>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70EADC54E41
	for <webhook@archiver.kernel.org>; Mon,  4 Mar 2024 22:12:40 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web11.6547.1709590350121856884
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Mar 2024 14:12:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@tirotech-co-nz.20230601.gappssmtp.com header.s=20230601 header.b=x4/BgeY3;
 spf=none, err=SPF record not found (domain: tirotech.co.nz, ip: 209.85.221.175, mailfrom: worik.stanton@tirotech.co.nz)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-4affeacaff9so1496028e0c.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 14:12:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tirotech-co-nz.20230601.gappssmtp.com; s=20230601; t=1709590349; x=1710195149; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GI6/j+dfznJ7d5n0UWFqtgtEozavfDvW9TGBtVcb0Tw=;
        b=x4/BgeY3t7N5lQSZfG0sf4n1Ct+o1jUPcMYNpjSHgs3nzEQ13EOTY0dJnMAlF5C/Zf
         FGfK5H1eZKAf+/AbZm+WhWFqYRpwxhETQwSoT7Zi87clO3fwHLe8G7OJU6NpLi11d6CW
         xAWbBk7FHr1DJXNhtLFXX+7R975UTTrmJqZOQzDlFtpeeEVKNGcq2HwARDPBm0kwwFtI
         rcZcfoGUXc/wKODOm8/1HIZsLQZRITW/895pyEk73anp6xpPTMz3D0zY/CF/6D08jDg+
         Vffa6srDGxygBknuA+Kqy9XLoCJ2o+rtdm4VLKeOZDUUASxFsb11j4nLKbs7F8ZcpXKQ
         XH/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709590349; x=1710195149;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GI6/j+dfznJ7d5n0UWFqtgtEozavfDvW9TGBtVcb0Tw=;
        b=Pqx1x+4qYGUB9E7ZDvBd3JGt04Ug0Tlx38/mDRdLQiv1PFlwaYURJWceDW8ONcchdB
         MSpA9s2TOFeUoBCgh1CbR5pgF4B5jnp95/XUs/NxXZvzV1nY/wZmrw5a7IEaLKRcW2we
         w6N7BI5cGqe+zPmn7Sngprrv4wsOkiMSfJzlgkzWSgNn5azF2dYszb3e/c8HFAlYHdR3
         AFhygwk2KkCC0YIlA39HaXM9mMKfQPruwp7PCAeKGwN2GDAyyvHt0UQIKP9OZ/wmaXM0
         gZ871sbMtZd62uDu9VqBefn0nqAS7PVJRsSE4PmF5yjiTspNCaBejodTzB5qp/z2aNDF
         E/7g==
X-Gm-Message-State: AOJu0Yw4Hia/4c7VLeL45dSlUwJ0DquQ/cbbLwLRnKBg87Pl1KFudRWi
	Bxe6A+gFPspyrEjv/RF0FGGZrwwR4UOcCragRF+Tx0KE6KQdU2Akr1a+xtVCbFmoZM8M88tFe1X
	RrmdM6dvFAfINxpv2kc8ecar6gC9Vcs50dTu0f5Lk5nu7CL8L5p8=
X-Google-Smtp-Source: AGHT+IG5VypCIfhkU7L0zCLoom9R2NC5mWNUKVqDpUDqltxK+Rh6RVise+DotOEQiPMw4cBVuWgD9PKMMW1YECDow5o=
X-Received: by 2002:a05:6122:2024:b0:4d3:4aad:7bf0 with SMTP id
 l36-20020a056122202400b004d34aad7bf0mr77143vkd.0.1709590348942; Mon, 04 Mar
 2024 14:12:28 -0800 (PST)
MIME-Version: 1.0
From: Worik Stanton <worik.stanton@tirotech.co.nz>
Date: Tue, 5 Mar 2024 11:12:18 +1300
Message-ID: <CANuMBWFxwxt7Fr+qab4U+HHFiSMu4KeukjiMVkme-zgDVpiq=w@mail.gmail.com>
Subject: Introduction and my first query: Resources for learning
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000075f3370612dd052c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Mar 2024 22:12:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62676

--00000000000075f3370612dd052c
Content-Type: text/plain; charset="UTF-8"

Kia ora

I am Worik Stanton, from Dunedin New Zealand.  I am new to Yocto, and to
this list, with many decades experience programming computers.

My question is about what are the best resources for learning how to adapt
and maintain a Yocto system  I am responsible for.

I have recently become responsible for a collection of Yocto "builds" (I am
unsure how I should describe them) that I must learn how to maintain,
adapt, and extend.  Adapt and extend to new hardware and to new software
that we are writing.

The author of the system is available only sporadically and is cleary
moving to greener pastures and is unable to offer much help.

I have the "Embedded Linux Systems with the Yocto Project" and it is
helpful.  However the systems I am working with are, I fear, quite
idiosyncratic and highly developed.

The example  of the sort of  problem I have faced and solved  is I needed
"lsblk" in my build.  I found that by adding the name of the Debian package
to a variable IMAGE_INSTALL  "IMAGE_INSTALL += util_linux" essentially,
places "lsblk" in the root file system.

I have no idea why I used the name of a Debian package!

I do not feel ready to pester you folks with queries until I have done more
reading and have moved along the learning curve.   I am hoping for some
meta advice about where I can look for guidance for problems like that.

Worik

--00000000000075f3370612dd052c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Kia ora</div><div><br></div><div>I am Worik Stanton, =
from Dunedin New Zealand.=C2=A0 I am new to Yocto, and to this list, with m=
any decades experience programming computers.<br></div><div><br></div><div>=
My question is about what are the best resources for learning how to adapt =
and maintain a Yocto system=C2=A0 I am responsible for.</div><div><br></div=
><div>I have recently become responsible for a collection of Yocto &quot;bu=
ilds&quot; (I am unsure how I should describe them) that I must learn how t=
o maintain, adapt, and extend.=C2=A0 Adapt and extend to new hardware and t=
o new software that we are writing.</div><div><br></div><div>The author of =
the system is available only sporadically and is cleary moving to greener p=
astures and is unable to offer much help.</div><div><br></div><div>I have t=
he &quot;Embedded Linux Systems with the Yocto Project&quot; and it is help=
ful.=C2=A0 However the systems I am working with are, I fear, quite idiosyn=
cratic and highly developed.=C2=A0 <br></div><div><br></div><div>The exampl=
e=C2=A0 of the sort of=C2=A0 problem I have faced and solved=C2=A0 is I nee=
ded &quot;lsblk&quot; in my build.=C2=A0 I found that by adding the name of=
 the Debian package to a variable IMAGE_INSTALL=C2=A0 &quot;IMAGE_INSTALL +=
=3D util_linux&quot; essentially, places &quot;lsblk&quot; in the root file=
 system.</div><div><br></div><div>I have no idea why I used the name of a D=
ebian package!</div><div><br></div><div>I do not feel ready to pester you f=
olks with queries until I have done more reading and have moved along the l=
earning curve.=C2=A0=C2=A0 I am hoping for some meta advice about where I c=
an look for guidance for problems like that.</div><div><br></div>Worik <br>=
<div><div><br></div></div></div>

--00000000000075f3370612dd052c--

