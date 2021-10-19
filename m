Return-Path: <jonas.brich@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36F80C433F5
	for <webhook@archiver.kernel.org>; Tue, 19 Oct 2021 13:59:19 +0000 (UTC)
Received: from esa10.hc324-48.eu.iphmx.com (esa10.hc324-48.eu.iphmx.com
 [207.54.69.29])
 by mx.groups.io with SMTP id smtpd.web10.10188.1634651956705320757
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Oct 2021 06:59:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=l4+LWm/I;
 spf=pass (domain: bmw.de, ip: 207.54.69.29,
 mailfrom: prvs=919444964=jonas.brich@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1634651956; x=1666187956;
  h=from:to:subject:date:message-id:references:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=r0Bxmf0nbtm95us7CIzHvJ38FJ23JX2fAeDQU4s+I7k=;
  b=l4+LWm/I28tQQUTv9a7cjCiMRmtgQGz10JM1HuhRNdzlpEQ2XYQt8MiU
   fbXDufS9af95GPUNn3o/Qsb3zsis3bPFqFc32Kd7h5S1zleRyyyigKeCm
   +dKvNP8Ka6PshydmxKMkc4udDN5bFOn9O0s7YfKcnuYrbak6dnLDw3CwZ
   4=;
Received: from esagw6.bmwgroup.com (HELO esagw6.muc) ([160.46.252.49]) by
 esa10.hc324-48.eu.iphmx.com with ESMTP/TLS; 19 Oct 2021 15:59:13 +0200
Received: from esabb2.muc ([160.50.100.34])  by esagw6.muc with ESMTP/TLS;
 19 Oct 2021 15:59:12 +0200
Received: from smucm29m.bmwgroup.net (HELO SMUCM29M.europe.bmw.corp)
 ([160.46.167.44])
 by esabb2.muc with ESMTP/TLS; 19 Oct 2021 15:58:58 +0200
Received: from SMUCM29J.europe.bmw.corp (160.46.167.41) by
 SMUCM29M.europe.bmw.corp
 (160.46.167.44) with Microsoft SMTP Server (TLS;
 Tue, 19 Oct 2021 15:58:58 +0200
Received: from SMUCM29J.europe.bmw.corp ([160.46.167.41]) by
 SMUCM29J.europe.bmw.corp ([160.46.167.41]) with mapi id 15.00.1497.018; Tue,
 19 Oct 2021 15:58:58 +0200
From: <Jonas.Brich@bmw.de>
To: <jandryuk@gmail.com>, <joe@deserted.net>, <yocto@lists.yoctoproject.org>,
	<flihp@twobit.us>, <yi.zhao@windriver.com>
Subject: Re: meta-selinux: dunfell: libselinux:
 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch fails to
 apply
Thread-Topic: meta-selinux: dunfell: libselinux:
 0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch fails to
 apply
Thread-Index: AQHXxPCVM59SIjcI7EuXSNpPlxuFkavaWO3d
Date: Tue, 19 Oct 2021 13:58:58 +0000
Message-ID: <1634651938337.20616@bmw.de>
References: 
 <CAKf6xpvYyQkPd+yrX4DR70w7x0DVD0-ODT1r6+Jgb58RKZbxeQ@mail.gmail.com>
In-Reply-To: 
 <CAKf6xpvYyQkPd+yrX4DR70w7x0DVD0-ODT1r6+Jgb58RKZbxeQ@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Oct 2021 13:59:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55099

Hi,=0A=
=0A=
yes college uploaded again. That is the correct patch.=0A=
=0A=
Thanks=0A=
=0A=
=0A=
BMW Car IT GmbH=0A=
Jonas Brich=0A=
Spezialist Entwicklung=0A=
Lise-Meitner-Str. 14=0A=
89081 Ulm=0A=
=0A=
Tel.:  +49 731 3780 4292=0A=
Mail: jonas.brich@bmw.de=0A=
Web: http://www.bmw-carit.de=0A=
----------------------------------------------------------------------=0A=
BMW Car IT GmbH=0A=
Geschaeftsfuehrer: Kai-Uwe Balszuweit und Michael B=F6ttrich=0A=
Sitz und Registergericht: Muenchen HRB 134810=0A=
----------------------------------------------------------------------=0A=
=0A=
________________________________________=0A=
From: Jason Andryuk <jandryuk@gmail.com>=0A=
Sent: Tuesday, October 19, 2021 3:51 PM=0A=
To: joe@deserted.net; Brich Jonas, JC-4; yocto@lists.yoctoproject.org; flih=
p@twobit.us; yi.zhao@windriver.com=0A=
Subject: meta-selinux: dunfell: libselinux: 0001-Fix-NULL-pointer-use-in-se=
linux_restorecon_set_sehandle.patch fails to apply=0A=
=0A=
Hi,=0A=
=0A=
libselinux in meta-selinux dunfell fails in do_patch.  Patch=0A=
0001-Fix-NULL-pointer-use-in-selinux_restorecon_set_sehandle.patch=0A=
fails to apply.  The patch in git has a leading a/b path component,=0A=
which throws off the strip level.  The posting here doesn't have the=0A=
a/b: https://lists.yoctoproject.org/g/yocto/message/55083 so it should=0A=
work.=0A=
=0A=
Thanks,=0A=
Jason=0A=

