Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4AA9C47085
	for <webhook@archiver.kernel.org>; Wed,  6 Apr 2022 16:33:19 +0000 (UTC)
Received: from esa8.hc324-48.eu.iphmx.com (esa8.hc324-48.eu.iphmx.com
 [207.54.65.242])
 by mx.groups.io with SMTP id smtpd.web11.6373.1649237025881944479
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Apr 2022 02:23:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=hGCqlOuw;
 spf=pass (domain: bmw.de, ip: 207.54.65.242,
 mailfrom: prvs=088b55d57=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1649237025; x=1680773025;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=0e6BYFjlo34NLyn/U+0+JxKs0djHFTIzYKDTQrSQ3dg=;
  b=hGCqlOuwHXN1FYgx4+U7xfEcH1p8mYrd7r01Rmud6RPLzcbXsEpbapTT
   Fha6blB6JPTqcRYWgWM9VkAk2uxypWccdQFvGvqVnLKd6nCV1rUDxfCeu
   RZ/9CNr1z1I1xHPMddSI8UFXpqhOyGX88QticjvFm2B35UI+/yF7ry/CB
   s=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa8.hc324-48.eu.iphmx.com with ESMTP/TLS; 06 Apr 2022 11:23:42 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw6.muc with ESMTP/TLS;
 06 Apr 2022 11:23:42 +0200
Received: from smucm33j.bmwgroup.net (HELO smucm33j.europe.bmw.corp)
 ([160.46.167.66])
 by esabb6.muc with ESMTP/TLS; 06 Apr 2022 11:23:42 +0200
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by
 smucm33j.europe.bmw.corp
 (160.46.167.66) with Microsoft SMTP Server (TLS;
 Wed, 6 Apr 2022 11:23:41 +0200
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.033; Wed,
 6 Apr 2022 11:23:41 +0200
From: <Mikko.Rapeli@bmw.de>
To: <mans.zigher@gmail.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
Thread-Topic: [yocto] [Question] How to handle GPLv3 packages?
Thread-Index: AQHYSZS8EQqlj+xb1UGsVYX4d71j/azie1AA
Date: Wed, 6 Apr 2022 09:23:41 +0000
Message-ID: <Yk1cHGAei1P6fB4w@korppu>
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
Content-Type: text/plain; charset="us-ascii"
Content-ID: <DCD7B148555C3E4A862D0878E36618CE@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Apr 2022 16:33:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56675

Hi

I set INCOMPATIBLE_LICENSE_append =3D " GPLv3 GPLv3+ LGPLv3 LGPLv3+"
but then allow compiling several recipes with those licenses as long
as they don't end up on images and in the product. For example:

...
WHITELIST_GPL-3.0+ +=3D "cairo"
PACKAGE_EXCLUDE +=3D "cairo-src cairo-dbg cairo-perf-utils cairo-staticdev =
cairo-locale"

WHITELIST_GPL-3.0 +=3D "binutils"
PACKAGE_EXCLUDE +=3D "binutils-dbg binutils-staticdev binutils-dev binutils=
-doc binutils-locale libbfd binutils"

WHITELIST_GPL-3.0 +=3D "gdb"
PACKAGE_EXCLUDE +=3D "gdb-sdktests-dbg gdb-sdktests gdbserver gdb-dbg gdb-s=
taticdev gdb-dev gdb-doc gdb-locale gdb"
...

I do this in the distro config.

Results works but you may need to revisit several recipes and detect where =
exactly
the GPLv3 license is being used.

bash dependency is annoying but products can be made without. Same for GNU =
readline
support.

These are much work and better then using meta-gplv2 with its unmaintained =
SW
versions.

Would be nice to collaborate in yocto upstream on a build config which disa=
bles most
GPLv3 packages from rootfs but keeps the development tools etc working in
the SDK.

Cheers,

-Mikko=

