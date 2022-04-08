Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9679C4707F
	for <webhook@archiver.kernel.org>; Fri,  8 Apr 2022 17:09:35 +0000 (UTC)
Received: from esa5.hc324-48.eu.iphmx.com (esa5.hc324-48.eu.iphmx.com
 [207.54.71.60])
 by mx.groups.io with SMTP id smtpd.web11.3457.1649406771679327541
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Apr 2022 01:32:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@bmw.de header.s=mailing1 header.b=efkPO6Q1;
 spf=pass (domain: bmw.de, ip: 207.54.71.60,
 mailfrom: prvs=090122b4f=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1649406772; x=1680942772;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=m6qxh558HJBrQoqTLNa92+vFOoVTci84HfnCB5z91P8=;
  b=efkPO6Q1G+Zy2W4gwfTQPwvYVKSpTA0kCxoXgI1nZulhFJ2jQ4hfzpsj
   pMepsRVoayeNN9f6fetkT/Sik0IiSqz3Y6j+hCALQ4wtPKNd5cAr3Cydw
   4gwFsFp4/eZXgM1tHmsUnOaHy0DCVcn+++Sq6ggWa45DQ28hTwgfCp0of
   c=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa5.hc324-48.eu.iphmx.com with ESMTP/TLS; 08 Apr 2022 10:32:47 +0200
Received: from esabb6.muc ([160.50.100.50])  by esagw3.muc with ESMTP/TLS;
 08 Apr 2022 10:32:47 +0200
Received: from smucm33m.bmwgroup.net (HELO smucm33m.europe.bmw.corp)
 ([160.46.167.69])
 by esabb6.muc with ESMTP/TLS; 08 Apr 2022 10:32:47 +0200
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by
 smucm33m.europe.bmw.corp
 (160.46.167.69) with Microsoft SMTP Server (TLS;
 Fri, 8 Apr 2022 10:32:46 +0200
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.033; Fri,
 8 Apr 2022 10:32:46 +0200
From: <Mikko.Rapeli@bmw.de>
To: <mans.zigher@gmail.com>
CC: <ross@burtonini.com>, <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [Question] How to handle GPLv3 packages?
Thread-Topic: [yocto] [Question] How to handle GPLv3 packages?
Thread-Index: AQHYSZS8EQqlj+xb1UGsVYX4d71j/azid8WAgAMV9gCAAAQGAA==
Date: Fri, 8 Apr 2022 08:32:46 +0000
Message-ID: <Yk/zLteq+VWQon7V@korppu>
References: 
 <CAEhQi8=HC7K9XxcCx4e83=JKCG3q=tAb2=BZmfvSqpwt4EG97g@mail.gmail.com>
 <CAAnfSTvP+aHDxBSSSNVLejxhMPr9NJ4FuYLXDTmaPifBKmGL3w@mail.gmail.com>
 <CAEhQi8=Fem0HnTbhK7evENES4qpcC2-pbRicW52YrvwHbegj_Q@mail.gmail.com>
In-Reply-To: 
 <CAEhQi8=Fem0HnTbhK7evENES4qpcC2-pbRicW52YrvwHbegj_Q@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
Content-Type: text/plain; charset="us-ascii"
Content-ID: <7FF9210462C4E74FB968C742688C0813@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Apr 2022 17:09:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56692

Hi,

On Fri, Apr 08, 2022 at 10:18:22AM +0200, Mans Zigher wrote:
> Hi Ross,
>=20
> We don't have a ptest set in DISTRO_FEATURE so if that is the only way
> to pull in ptest I would say that is the reason for us at least on why
> there are so many bash dependencies.
> One recipe that I am looking into right now is util-linux which does
> have package util-linux-bash-completion but even the package
> util-linux seems to depend on bash and bash-completion when

util-linux is a meta package. Install the needed util-linux utilities separ=
ately,
e.g. util-linux-mount, util-linux-umount. Also ptest you can build as distr=
o
feature if you don't install ptest packages into images. I do that.
And then during testing, I install the ptest packages and dependencies to
the plain non-GPLv3 target to execute the tests.

> checking the dependencies by running bitbake -g util-linux and bitbake
> -g <image>. It is not clear why the package util-linux depends on bash
> and bash-completion. I have other recipes where it is also
> not obvious to me why they have a dependency to bash and
> bash-completion. One such recipe is a recipe that we have created and
> the only content in the package produced is a script and the script
> only has #!/bin/sh so not sure where this bash and bash-completion
> comes from it is not something we have added so maybe we have some
> underlying issue here that results in so many dependencies to
> bash and bash-completion. We have not set up this system ourselves,
> instead one of the HW suppliers starting with a Q ending with COMM
> which I must say I am not that impressed with has supplied the
> base that we are building on.

Qualcomm, I know that one :( As integrator for a product
you must minimize the impact of the BSP SW delivery and thus allow only
bootloader, kernel and low level libraries to be compiled using the
BSP vendor delivery, e.g. their meta layers. I BBMASK away most of their
high level SW changes, e.g. systemd and other odd patches which I don't nee=
d.

Cheers,

-Mikko=

