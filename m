Return-Path: <mikko.rapeli@bmw.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88E86C2BA4C
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 08:37:25 +0000 (UTC)
Received: from esa9.hc324-48.eu.iphmx.com (esa9.hc324-48.eu.iphmx.com
 [207.54.69.27])
 by mx.groups.io with SMTP id smtpd.web11.10309.1643186229858083849
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 00:37:11 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1
 header.b=e5yOdJFe;
 spf=pass (domain: bmw.de, ip: 207.54.69.27,
 mailfrom: prvs=0189a33c6=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1643186229; x=1674722229;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=DqzCE9IImMW0w1KglhsBJ/NtQ6M9i1atR5AWqUST5Nw=;
  b=e5yOdJFeasWPeDMcn2LMEMCCP2xcHDPeznnyPJkk75zqZo63i63Tn9xW
   tb2u45yz7eE2PvzaLW86GwrwdLIpZDTshS1hksTAT5i89Z0OxXnrngP7E
   so/OAj3OLpSTNQ2arDvhShs7AYLJKLlzV8spCaafoKXPqHNZzz2276K5B
   4=;
IronPort-SDR: 
 lSq4lmTFYvZa3r0051eFk8/rZuu9x9wLeOwKM7oHJCyeUuu6xGPAAk7juYf7FZUyCba/ruBqDt
 H5ZZi9bT5tHH214enEeu0lqNuVS2qkgO0a7Y78X+sJJcDj0aTE+jHRl8LTZmJcIwirHh4E8Kgx
 Jb2F5JMLD5A2JL/2UCqeC8NscWmFGAED50+ImTDV2ljdcf1bRFkZUBxsTRrnOiWjHFFJUsS9cO
 eXnysvU7GrKQN6DSNB+NWqJ59Mcgi6BYKgA1t3/j6f20Lz8hYfUpJJDT6wTGbRakeuOJ7e/4t8
 KPmod2qvB4NNILQAebxTc3D4
Received: from esagw2.bmwgroup.com (HELO esagw2.muc) ([160.46.252.38]) by
 esa9.hc324-48.eu.iphmx.com with ESMTP/TLS; 26 Jan 2022 09:37:06 +0100
Received: from esabb1.muc ([160.50.100.31])  by esagw2.muc with ESMTP/TLS;
 26 Jan 2022 09:37:06 +0100
Received: from smucm33m.bmwgroup.net (HELO smucm33m.europe.bmw.corp)
 ([160.46.167.69])
 by esabb1.muc with ESMTP/TLS; 26 Jan 2022 09:37:06 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by
 smucm33m.europe.bmw.corp
 (160.46.167.69) with Microsoft SMTP Server (TLS;
 Wed, 26 Jan 2022 09:37:06 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.026; Wed,
 26 Jan 2022 09:37:05 +0100
From: <Mikko.Rapeli@bmw.de>
To: <ross@burtonini.com>
CC: <jdmason@kudzu.us>, <yocto@lists.yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>,
	<openembedded-devel@lists.openembedded.org>
Subject: Re: [oe] Inclusive Language Proposal for YP/OE
Thread-Topic: [oe] Inclusive Language Proposal for YP/OE
Thread-Index: AQHYET4FFBq/gdxaUUW1QUjJcQYS2qxz3ogAgAEOAgA=
Date: Wed, 26 Jan 2022 08:37:05 +0000
Message-ID: <YfEIMKst5Mfp8tPN@korppu>
References: 
 <CAPoiz9wL16OTzxNHdw_5-L72GOHkhhM0--WZF7An071cx6sr_A@mail.gmail.com>
 <CAAnfSTu1eneGztK0Kmzcv5Qq89kodoCrgDWzF6JQ7eFStD6Uzg@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTu1eneGztK0Kmzcv5Qq89kodoCrgDWzF6JQ7eFStD6Uzg@mail.gmail.com>
Accept-Language: en-US, de-DE
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0BB41D08772EC74C8595E65B5CFA7023@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 08:37:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55978

Hi,

On Tue, Jan 25, 2022 at 04:30:40PM +0000, Ross Burton wrote:
> On Mon, 24 Jan 2022 at 16:18, Jon Mason <jdmason@kudzu.us> wrote:
> > CVE_CHECK_PN_WHITELIST -> CVE_CHECK_SKIPRECIPE
> > CVE_CHECK_WHITELIST -> CVE_CHECK_IGNORECVE
>=20
> This is the only one that sticks out to me.  I think it needs another
> _, SKIP_RECIPE and IGNORE_CVE.

Please don't include CVE twice in the variable name, that's was annoying an=
d just
got used to the CVE_CHECK_WHITELIST one. CVE_CHECK_IGNORE would do.

Cheers,

-Mikko

> Other than that, +1.
>=20
> Will we have a bit of logic to detect the obsolete names being set and
> emit warnings/errors?
>=20
> Ross

>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#95071): https://lists.openembedded.org/g/openembedded=
-devel/message/95071
> Mute This Topic: https://lists.openembedded.org/mt/88650129/3616751
> Group Owner: openembedded-devel+owner@lists.openembedded.org
> Unsubscribe: https://lists.openembedded.org/g/openembedded-devel/unsub [m=
ikko.rapeli@bmw.de]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20

