Return-Path: <aurumnitrogen@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 382F0C43334
	for <webhook@archiver.kernel.org>; Thu, 23 Jun 2022 14:39:29 +0000 (UTC)
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com
 [209.85.210.177])
 by mx.groups.io with SMTP id smtpd.web08.8194.1655995161336517046
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 07:39:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o9yhnz+f;
 spf=pass (domain: gmail.com, ip: 209.85.210.177,
 mailfrom: aurumnitrogen@gmail.com)
Received: by mail-pf1-f177.google.com with SMTP id u37so19297110pfg.3
        for <yocto@lists.yoctoproject.org>;
 Thu, 23 Jun 2022 07:39:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=JYrClb3uk5RkpkBNECMrtn5aBRe498lqDt8npYw9Tfo=;
        b=o9yhnz+fCrYCij8j3lkXLtlVcYDYEL6JK0kcS9JFo1eK8KJ5PceHBfHo6EfWSOzi+w
         Lz3yRkZAH9sDbid8p7I3Mze8tMtO9A+Id1NtyAt9O45lq+L/eXzypWjAyATcTbwb7Qms
         fUYWTolvL1pfsXW8JUu/Dm5EjW5uDDoRWkRX2/TLkKmZmq8m3746C7drFzo/oaq7tZ3v
         S0mLVYfocIhHYUnulxX2KcfbjF/Boge9dHh0J2+5bcs8QSejdL9iG8KyO9vrLu9Nr/en
         NH41MnCzmfgBGc05osuAGsvRrVowi7SUo7PIo9Lbsve++3IkCRk/7jPqGti4lmZNBxlT
         8HuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=JYrClb3uk5RkpkBNECMrtn5aBRe498lqDt8npYw9Tfo=;
        b=xO+V1OtcsIs9jtzx8BopcbKi2Ajf/Z/jU1KL2lPpFFxHIdV7bYzDTccj0FqXg5N6UU
         +xD4uxirCgrQUuWy7B2uqFl5820B3nAlWvFBbigy2qFeSva7mW1Snb1Dz1xVgawWaYjD
         77LpKWfg+lIi2qZV9XCKMtF4DmUAsWrG0H0UouXnE2GaWIAX2W0K7yDewwTObXyab+tv
         ucsmvZydEt0kgo4CRIvqSz2tnKeEdXIEhRmX6cBFGfgzFn1ePxsR/m334L6/8okLlzDJ
         +kExujG2ck7+lvU4XbBtscfTNnnGknqaJFDNgMEjisEwwHHtC2A082SlKYT1nvBoeQcJ
         tc9w==
X-Gm-Message-State: AJIora+/adbIFxBefUpKxDPgzOdJCb2K/y3AAJvBCooCcAtPmdXSWFDF
	shE0GYOfzltQ7y8VwismZA2AcNILJGfdCNLHkDNMiMWm
X-Google-Smtp-Source: 
 AGRyM1u8WfeHTHqzAWd9DX2M7i0Mz+Sxl0QX30gFyyGG0MJFSLSSlTufNyc8JmBE6S1tKTmvNDljcv/VV1TU1vf83Kg=
X-Received: by 2002:aa7:8f30:0:b0:525:3ad6:fb67 with SMTP id
 y16-20020aa78f30000000b005253ad6fb67mr12828951pfr.78.1655995160698; Thu, 23
 Jun 2022 07:39:20 -0700 (PDT)
MIME-Version: 1.0
From: Aurum Nitrogen <aurumnitrogen@gmail.com>
Date: Fri, 24 Jun 2022 01:40:53 +0300
Message-ID: 
 <CAH0OAGRgTDTeW58mNx=UuDEdbVC=LuJ_=mCs0ZiOL3GwjMNzew@mail.gmail.com>
Subject: source-less python
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004da50d05e21e6b4e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Jun 2022 14:39:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57383

--0000000000004da50d05e21e6b4e
Content-Type: text/plain; charset="UTF-8"

Hi,
I was wondering if there has been talk about support for source-less python
on an image. Installing py and pyc files doubles the size of python on the
rootfs. I can imagine this being implemented as an image feature.
I know that in buildroot it is supported.
Was this discussed and decided against? Is this an open issue?

Thanks,
John

--0000000000004da50d05e21e6b4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">Hi,</div><div dir=3D"ltr">I was wondering=
 if there has been talk about support for source-less python on an image. I=
nstalling py and pyc files doubles the size of python on the rootfs. I can =
imagine this being implemented as an image feature.</div><div dir=3D"ltr">I=
 know that in buildroot it is supported.</div><div dir=3D"ltr">Was this dis=
cussed and decided against? Is this an open issue?<br></div><div dir=3D"ltr=
"><br></div><div dir=3D"ltr">Thanks,</div><div dir=3D"ltr">John</div><div d=
ir=3D"ltr"><br></div></div>

--0000000000004da50d05e21e6b4e--

