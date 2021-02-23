Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.11043.1614092827283896294
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 07:07:07 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=bGYdnLTu;
 spf=softfail (domain: bmw.de, ip: 198.145.29.25, mailfrom: prvs=681a2f65d=mikko.rapeli@bmw.de)
Received: from esa12.hc324-48.eu.iphmx.com (esa12.hc324-48.eu.iphmx.com [207.54.72.34])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7B6CB38C062A
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 15:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1614092825; x=1645628825;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=KoVSBwSwCfm4h7jMLli85xnyjVdzdXuYtckdgGAnUi0=;
  b=bGYdnLTu7GXjIOG9FiUTnzm8BiDQE6bmCzfDa/m+6ordSZ1Tt02cFe8Z
   E6vqJD7W5fMroiPrKcTJQ/KlTsI31ITi6/kWzCrLoPDQ9gfLYh03/zO+s
   B2Qt3uUluSivr5A8Ch+dxiYrC+XZX5uxvI9YzhC9LaFfFOomGNcZQFqkX
   Q=;
Received: from esagw5.bmwgroup.com (HELO esagw5.muc) ([160.46.252.46]) by
 esa12.hc324-48.eu.iphmx.com with ESMTP/TLS; 23 Feb 2021 16:07:02 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw5.muc with ESMTP/TLS;
 23 Feb 2021 16:07:02 +0100
Received: from smucm33l.bmwgroup.net (HELO smucm33l.europe.bmw.corp) ([160.46.167.68])
 by esabb4.muc with ESMTP/TLS; 23 Feb 2021 16:07:01 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33l.europe.bmw.corp
 (160.46.167.68) with Microsoft SMTP Server (TLS;
 Tue, 23 Feb 2021 16:07:00 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.010; Tue,
 23 Feb 2021 16:07:00 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <karthik.poduval@gmail.com>
CC: <bruce.ashfield@gmail.com>, <yocto@yoctoproject.org>
Subject: Re: [yocto] Kernel Header UAPI Issue
Thread-Topic: [yocto] Kernel Header UAPI Issue
Thread-Index: AQHXCX40yg7Z+O4FR0iwSrm1ttlT+apk3sOAgAAGxYCAAMNhAIAAG1gAgAADD4A=
Date: Tue, 23 Feb 2021 15:07:00 +0000
Message-ID: <YDUaE37jsnG+nsU1@korppu>
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
 <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
 <CAFP0Ok9+UN=t=22gZQ6MJV5DDfPPn_tSWY1w8AjNh+ojBQ94dg@mail.gmail.com>
 <YDUAklwGAsPCeyVe@korppu>
 <CAFP0Ok-863pEPRRRsOsZDG1VJ8GZw06qR+mu+_M2yJouJDuB+Q@mail.gmail.com>
In-Reply-To: <CAFP0Ok-863pEPRRRsOsZDG1VJ8GZw06qR+mu+_M2yJouJDuB+Q@mail.gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <197FBFA3EA4DE14C83B612362F0F851F@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Feb 23, 2021 at 06:56:02AM -0800, Karthik Poduval wrote:
> Hi Mikko,
>=20
> Do you have an example on how you do that ? Do you bbapend the
> linux-libc-headers recipe file ?

A kernel recipe will provide linux-libc-headers after a
"make headers_install" call...

So the SRC_URI of linux-libc-headers can be the same as from the
linux kernel recipe, or linux kernel recipe can provide (with some
tricks, possibly) the linux-libc-headers binary packages.

> I have an application that uses dmabuf heap that potentially extends
> across multiple BSP's as its BSP agnostic. I don't want to be patching
> individual BSP recipes and generating headers. The issue I am facing
> is due to backporting the patch from 5.6 to 5.4 so the required header
> isn't a part of the linux-libc-headers.bb recipe. Best would have been
> a virtual/kernel-keaders target that applications that require BSP
> headers would add to their recipe DEPENDS. Why is this not a solved
> issue by yocto project ? Why do individual BSP's need to deal with
> this differently  when the header install mechanism (make
> headers_install) is the same irrespective of the type of BSP ?

I guess the reason is to split userspace to BSP/board specific and common
parts. It's not good if whole userspace bootstrap depends on kernel
recipe and any kernel changes requires full bootstrap and recompilation
of all userspace.

But there are BSP/board specific recipes which do need the real effective
kernel headers to interface with kernel drivers, and there are SoC
architecture specific ones which just need enough to build gcc and glibc.

Both have their pross and cons, and to me there is no clear winner.

Cheers,

-Mikko=
