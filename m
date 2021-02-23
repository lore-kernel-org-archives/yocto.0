Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.9554.1614086322493924551
 for <yocto@lists.yoctoproject.org>;
 Tue, 23 Feb 2021 05:18:42 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=dRZwByHk;
 spf=softfail (domain: bmw.de, ip: 198.145.29.25, mailfrom: prvs=681a2f65d=mikko.rapeli@bmw.de)
Received: from esa3.hc324-48.eu.iphmx.com (esa3.hc324-48.eu.iphmx.com [207.54.68.121])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3E2AB38C096A
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 13:18:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1614086321; x=1645622321;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=P0q2QJ1Gb0gBTXs8mSBv28RGwMDFxvHYgwgY7UZJFJc=;
  b=dRZwByHkVl79u87aALfIfPwVV4cRC71087sSyV5g45sC7vNDK3P94Zwa
   Oz4/ntYMQFdICA1rUXs1/Iyle7u9xwKy2lsY6WjFEBBqk27UZIeoBw52C
   sd1BVdx+YBDhJ8Q6OAw1/cJiuz1c8Z9jqw/gw9KSv7b4i0buscZy4dwY+
   A=;
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa3.hc324-48.eu.iphmx.com with ESMTP/TLS; 23 Feb 2021 14:18:38 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw1.muc with ESMTP/TLS;
 23 Feb 2021 14:18:15 +0100
Received: from smucm33l.bmwgroup.net (HELO smucm33l.europe.bmw.corp) ([160.46.167.68])
 by esabb4.muc with ESMTP/TLS; 23 Feb 2021 14:18:12 +0100
Received: from smucm33l.europe.bmw.corp (160.46.167.68) by smucm33l.europe.bmw.corp
 (160.46.167.68) with Microsoft SMTP Server (TLS;
 Tue, 23 Feb 2021 14:18:11 +0100
Received: from smucm33l.europe.bmw.corp ([160.46.167.68]) by
 smucm33l.europe.bmw.corp ([160.46.167.68]) with mapi id 15.00.1497.010; Tue,
 23 Feb 2021 14:18:11 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <karthik.poduval@gmail.com>
CC: <bruce.ashfield@gmail.com>, <yocto@yoctoproject.org>
Subject: Re: [yocto] Kernel Header UAPI Issue
Thread-Topic: [yocto] Kernel Header UAPI Issue
Thread-Index: AQHXCX40yg7Z+O4FR0iwSrm1ttlT+apk3sOAgAAGxYCAAMNhAA==
Date: Tue, 23 Feb 2021 13:18:11 +0000
Message-ID: <YDUAklwGAsPCeyVe@korppu>
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
 <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
 <CAFP0Ok9+UN=t=22gZQ6MJV5DDfPPn_tSWY1w8AjNh+ojBQ94dg@mail.gmail.com>
In-Reply-To: <CAFP0Ok9+UN=t=22gZQ6MJV5DDfPPn_tSWY1w8AjNh+ojBQ94dg@mail.gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0627E12E993CE84084D6DEF791518FE4@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

I know it's not the best or recommended approach, but I find it
hard to avoid merging linux-libc-headers recipe with the actual
kernel recipe that a distro is using. At least a static copy
of some version of uapi headers from that kernel can be used
instead of the poky side linux-libc-headers. This helps to get
the actual BSP SW delivery headers into userspace, SDK etc.

Cheers,

-Mikko=
