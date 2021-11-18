Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 771E6C433F5
	for <webhook@archiver.kernel.org>; Thu, 18 Nov 2021 19:55:20 +0000 (UTC)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com
 [209.85.222.49])
 by mx.groups.io with SMTP id smtpd.web09.1238.1637265319730777956
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 11:55:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j7JPBNJZ;
 spf=pass (domain: gmail.com, ip: 209.85.222.49,
 mailfrom: joel.winarske@gmail.com)
Received: by mail-ua1-f49.google.com with SMTP id i6so16309215uae.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 11:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=qEM5T1uXTB8iPyOoX5yLaPuhKr+Zm2bU+RciVEGNAIU=;
        b=j7JPBNJZS0h3m6SBI75mDnE/zh2cATgEfMxcl/SPkxjY2jvY/vAHgwIb1Me17BFssO
         ewurO/fLOzQZuS11hyv2Sg0wUDmnnYD62pZB4fvMEUrjhhy7fSl7GeMyZEX8XXgoAQC0
         ZE+76sMp7Zs7NLrtmgpOCG1FXM/Kvh5ozRCcL+8nAgN8+XcG/theDAFJS1ItIzW/m+ju
         uzM3yiTXDTxPVPbiijG1FG4bNQQLK3tVx1oAVH2Dul4MWb4SxMyjB/Wg6DHEmDNajaNZ
         z1e/261pMJzWBGUBPhto2+xLtCCLp2tfFC7b3jYDyByDvaUGii1YydSTYfvAi25eTxZ5
         BT5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=qEM5T1uXTB8iPyOoX5yLaPuhKr+Zm2bU+RciVEGNAIU=;
        b=Au0K8oY/LjsKaNTyRcym4BM9KfAHxnwZpadIzPfJ2MLjsBlT62TTI44xNqXyscEqvD
         jkDnsI9CAOAMW+S9o+vCRHdKjNDaHQaRY0/dF7UC6mfGgKcRaJhuHO0dZbC307E46fpv
         xFlpWh8RJ4ZUDesAbfiwtwYpY9kSY9Nd7A1Hp5/nmPIXKuZ/BUkdS358NEewNx4/hEB0
         TwMFtIk+5cS6CMHgYT+mbWUX8iPTLjxNaa6ENoCNdZT7AbVA0t0DsKKjexgObQpDX3zM
         PrWqgYFzQKZ5I/fxNp89QFc6s9EYR8r5G7vemrXXZDq8vJn1EGPYfMjcRPMEtr6UgPhx
         5h1g==
X-Gm-Message-State: AOAM533/opsvyBUWtNrp0J8ZgIJz0iyLYx9Gk5RcuiKe81w1s2xNOE2F
	IpO5LsHMqR0Uy/5AVGp8VKvA8fsR4kTLPgws25MY8NZZ4yk=
X-Google-Smtp-Source: 
 ABdhPJyKT8cFBYUwhIocp8XWj03wHKwzqzGlNrtDWBHnD32tz5oBttH4VaNCkSXb12PXvzFQMyJPk/QJHKnKrx9j3hI=
X-Received: by 2002:a67:e15b:: with SMTP id o27mr83831712vsl.61.1637265318672;
 Thu, 18 Nov 2021 11:55:18 -0800 (PST)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Thu, 18 Nov 2021 11:55:07 -0800
Message-ID: 
 <CABKMkPJT4W-a0Q13tme_kfe7NX21FiD1pecLk=u0ebMVhBaQTw@mail.gmail.com>
Subject: Building -native with clang
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b8fe4405d115893e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 19:55:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55362

--000000000000b8fe4405d115893e
Content-Type: text/plain; charset="UTF-8"

How do I get a -native recipe to use clang-native?  I have this in my
recipe, and target variant builds with clang:

RUNTIME = "llvm"
TOOLCHAIN = "clang"
PREFERRED_PROVIDER:libgcc = "compiler-rt"

All the environment variables are setup for gcc in the case of -native.  No
sign of clang.

This is with honister.


Joel

--000000000000b8fe4405d115893e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>How do I get a -native recipe to use clang-native?=C2=
=A0 I have this in my recipe, and target variant builds with clang:</div><d=
iv><br></div><div>RUNTIME =3D &quot;llvm&quot;<br>TOOLCHAIN =3D &quot;clang=
&quot;<br>PREFERRED_PROVIDER:libgcc =3D &quot;compiler-rt&quot;<br></div><d=
iv><br></div><div>All the environment variables are setup for gcc in the ca=
se of -native.=C2=A0 No sign of clang.<br></div><div><br></div><div>This is=
 with honister.</div><div><br></div><div><br></div><div>Joel<br></div></div=
>

--000000000000b8fe4405d115893e--

