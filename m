Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB390C3DA79
	for <webhook@archiver.kernel.org>; Mon, 15 Jan 2024 19:45:03 +0000 (UTC)
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
 by mx.groups.io with SMTP id smtpd.web10.93438.1705347894878865684
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Jan 2024 11:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iHZtGVSG;
 spf=pass (domain: gmail.com, ip: 209.85.219.174, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f174.google.com with SMTP id 3f1490d57ef6-dbf22acd993so5474713276.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 11:44:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705347894; x=1705952694; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PCmBoeEVsU0AbskrI9lJS7NZ12GR/F64+dL/iWvb6cc=;
        b=iHZtGVSGb6SrYlLzvIINRiNJzfPblBnrmfLts6/Jo/n6OOqeowGNxU37y6SM0RL512
         rRKUBI/KWzi+/tm470+1m5k9QF052z/NcABqClFf+FD6elCnhQJjTRYTLupjVMO1n1SS
         zfaeGj/EHTHOWD326GO1GIQrkmKxaG4PVt8h9ttgbywJpZ/YSjIhd3hKvKElhMQleB5j
         SL0HVe+jBRzU+vA0UGvyXQbeTj15z3Dz0T/6fVq/SCOZHr24dtLCG0HR00T5z1OoZT/p
         85lHy7Zp2dVScwpcE5Y4KeqmKXjwQSuAoZdQMYEPhML0IKRRp6JurbcWbosH+50i0E70
         oppA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705347894; x=1705952694;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PCmBoeEVsU0AbskrI9lJS7NZ12GR/F64+dL/iWvb6cc=;
        b=P5Kq4JYfzFPSxb4aFL2YbogUSIEwFOcyMpu12AJJ5blkPLuoim2adAZX8SpIrRT+Sp
         J/yD7A0Oyfll0b1Ws+mbWOM3Cchu3sRtXsYnWqcc+CdPlez1qbKe3QPJX6f0zuUFd8Mo
         B3/6zm1I17Dt7AvpXVceHmJZ1sp7iX1QfidvAzm6fY2HMpqV1jwC2KJn8aDIYCkFTyvt
         +HxDEsUehtyro4WTCZlVnSztYXqesGQxJ5FQH5wHlSp3/LKSr3092sIyfU62bcNVqqJo
         PH1/maMUdkThwnSlYm1N8F3CgG/Ui1seDzHsUcNUB8SiPdjmcKs6QiYC+8/XX6hP7CND
         3aHA==
X-Gm-Message-State: AOJu0Ywhplh3COS1giBdEkx4cPJ/9Xtx3oEhN8ylf8AToTGonJls3ZWC
	tHEaUVkxTyYhpKbyIM3jFkHwbU+4WOdQIl2yaLXL9hBw
X-Google-Smtp-Source: AGHT+IGBuPct4chM+p30+22Z8tmCAosJ/TexrP/d27VOPC0aUy7J1TD3UsHrse/iTGPoD6rbcmMeSkEIfOCssKGw9oY=
X-Received: by 2002:a05:6902:188a:b0:dbe:8741:1af3 with SMTP id
 cj10-20020a056902188a00b00dbe87411af3mr3292323ybb.51.1705347893894; Mon, 15
 Jan 2024 11:44:53 -0800 (PST)
MIME-Version: 1.0
From: mattwood2000@gmail.com
Date: Mon, 15 Jan 2024 14:44:43 -0500
Message-ID: <CADjezmYMjHMXRwA7UF+_RFQivJ84rHpm2HyfEak_Cfsv1G=ftA@mail.gmail.com>
Subject: append recipe to multiconfig build from top-level local.conf
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006f200b060f013fb2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Jan 2024 19:45:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62161

--0000000000006f200b060f013fb2
Content-Type: text/plain; charset="UTF-8"

Hi,

I was wondering if the IMAGE_INSTALL:append syntax could work in
multiconfig environment from the top-level local.conf file?

For example, I have a meta-layer that defines the muitconfig (main.conf and
initramfs.conf).  From my build directory, I was hoping to append the
IMAGE_INSTALL list only for the main configuration similar to how it can be
done from local.conf in a standard build.  I wanted to avoid having to
modify the meta-layer files.

I tried the following from local.conf but neither worked:

IMAGE_INSTALL:append:mc:main = " pkg"
IMAGE_INSTALL:mc:main:append = " pkg"

Is there syntax for this or would I have to put this in an image recipe or
the multiconfig .conf file?

Thanks, Matt.

--0000000000006f200b060f013fb2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I was wondering if the I=
MAGE_INSTALL:append syntax could work in multiconfig environment from the t=
op-level local.conf file?</div><div><br></div><div>For example, I have a me=
ta-layer that defines the muitconfig (main.conf and initramfs.conf).=C2=A0 =
From my build directory, I was hoping to append the IMAGE_INSTALL list only=
 for the main configuration similar to how it can be done from local.conf i=
n a standard build.=C2=A0 I wanted to avoid having to modify the meta-layer=
 files.<br></div><div><br></div><div>I tried the following from local.conf =
but neither worked:</div><div><br></div><div>IMAGE_INSTALL:append:mc:main =
=3D &quot; pkg&quot;</div><div>IMAGE_INSTALL:mc:main:append =3D &quot; pkg&=
quot;<br></div><div><br></div><div>Is there syntax for this or would I have=
 to put this in an image recipe or the multiconfig .conf file?</div><div><b=
r></div><div>Thanks, Matt.<br></div></div>

--0000000000006f200b060f013fb2--

