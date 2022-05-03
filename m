Return-Path: <n.jeker@delisys.ch>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B911C433F5
	for <webhook@archiver.kernel.org>; Tue,  3 May 2022 08:32:43 +0000 (UTC)
Received: from wp323.webpack.hosteurope.de (wp323.webpack.hosteurope.de
 [80.237.133.92])
 by mx.groups.io with SMTP id smtpd.web11.8582.1651566760344601349
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 May 2022 01:32:41 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: delisys.ch, ip: 80.237.133.92, mailfrom: n.jeker@delisys.ch)
Received: from 22.71.14.46.static.wline.lns.sme.cust.swisscom.ch
 ([46.14.71.22] helo=[192.168.120.138]); authenticated
	by wp323.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1nlnxV-0006kL-O6; Tue, 03 May 2022 10:32:37 +0200
Message-ID: <58450f3f5c59fe95666e1e528f40cf9ca47248ce.camel@delisys.ch>
Subject: Re: [yocto] Yocto cyrillic characters support #yocto
From: Nicolas Jeker <n.jeker@delisys.ch>
To: yocto@lists.yoctoproject.org, Ashutosh Naik <ashutosh.naik@gmail.com>
Date: Tue, 03 May 2022 10:32:37 +0200
In-Reply-To: <r3Gt.1651240088695680202.RPCQ@lists.yoctoproject.org>
References: <r3Gt.1651240088695680202.RPCQ@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1 
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;n.jeker@delisys.ch;1651566760;cba7c0fe;
X-HE-SMSGID: 1nlnxV-0006kL-O6
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 May 2022 08:32:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56973

On Fri, 2022-04-29 at 06:48 -0700, Ashutosh Naik wrote:
> I am having trouble creating files with cyrillic characters on a
> yocto generated image.
> =C2=A0
> For eg. If I try to create a file like :
> # touch=C2=A0 1=D0=A7=D0=B5=D1=80=D0=BD=D0=B0=D1=8F
> =C2=A0
> I do get:
> =C2=A0
> # ls
> 1??????=C2=A0

Is your file created with the wrong name or is it actually just the
'ls' output that doesn't support unicode characters?

If you're using busybox, I think these configuration options could be
of interest:

CONFIG_UNICODE_SUPPORT
CONFIG_LAST_SUPPORTED_WCHAR

You'll find this at the bottom of "Settings -> Support Unicode" when
using menuconfig.

> I have verified that my locale has utf8 support:
> =C2=A0
> # locale
> LANG=3Den_GB.utf8
> LC_CTYPE=3D"en_GB.utf8"
> LC_NUMERIC=3D"en_GB.utf8"
> LC_TIME=3D"en_GB.utf8"
> LC_COLLATE=3D"en_GB.utf8"
> LC_MONETARY=3D"en_GB.utf8"
> LC_MESSAGES=3D"en_GB.utf8"
> LC_PAPER=3D"en_GB.utf8"
> LC_NAME=3D"en_GB.utf8"
> LC_ADDRESS=3D"en_GB.utf8"
> LC_TELEPHONE=3D"en_GB.utf8"
> LC_MEASUREMENT=3D"en_GB.utf8"
> LC_IDENTIFICATION=3D"en_GB.utf8"
> LC_ALL=3Den_GB.utf8
> =C2=A0
> What could I be missing and how can I create files with cyrillic
> characters?
> =C2=A0
> Regards
> Ash


