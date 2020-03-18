Received: from esa10.bmw.c3s2.iphmx.com (esa10.bmw.c3s2.iphmx.com [68.232.139.98])
 by mx.groups.io with SMTP id smtpd.web11.14025.1584536496339768134
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 06:01:37 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=OUA1nVdX;
 spf=pass (domain: bmw.de, ip: 68.232.139.98, mailfrom: prvs=339894f69=mikko.rapeli@bmw.de)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1584536496; x=1616072496;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=kY2FZ0leLpBFdIwu39fKsYFH6CDaCLwzbEMhyEhOITM=;
  b=OUA1nVdX4medp589QUN3tqgcdUuGndapAYSaK1Gd3BZ1Cev51NokbqSL
   /YhVhfA3k92gyD3+eG/rMs4jia15UicAwoB+hZrWEXuE7Y5DXafaSbz3L
   7Eybj5GBdkyZgU/EBm9XAKIV9iVFvg5Sh+PiGYqGbxERklKkB3naTtzMH
   8=;
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa10.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Mar 2020 14:01:28 +0100
Received: from esabb3.muc ([160.50.100.30])  by esagw1.muc with ESMTP/TLS;
 18 Mar 2020 14:01:27 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb3.muc with ESMTP/TLS; 18 Mar 2020 14:01:27 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Wed, 18 Mar 2020 14:01:27 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Wed,
 18 Mar 2020 14:01:27 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <oliver.westermann@cognex.com>
CC: <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] What are the key factors for yocto build speed?
Thread-Topic: [yocto] What are the key factors for yocto build speed?
Thread-Index: AQHV/SQvHMEDglrWJECufLQaId00LqhOP5+A
Date: Wed, 18 Mar 2020 13:01:27 +0000
Message-ID: <20200318130126.GK104502@korppu>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
In-Reply-To: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <4D407BF4A9868342AE66CCCE37520C79@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote:
> Hey,
>=20
> We're currently using a VM on Windows and it's a lot slower than the nati=
ve linux build (which is expected).
> We're looking into getting a dedicated build server for our team (basical=
ly a self-build tower PC). Any suggestions what to put in that build to get=
 the most out of it?
>=20
> Currently we're looking at a big Ryzen, 64G of RAM and one or multiple SS=
Ds on a "consumer grade" board like the X570.

Drop all virtualization and go for Linux on bare metal. Then make sure ther=
e
is enough(tm) physical RAM for each CPU thread. For a "big Ryzen" the 64G o=
f RAM sounds
too little. I'd go higher there, but it all depends what kind of project
is being compiled.

I would also setup CPU, RAM, disk IO and network IO monitoring on the build=
 machines
and review and monitor the build times and results when the project evolves=
. There are
times when most CPUs will be idling and there will be times when IO to disk=
 is
happening even when RAM is available. Linux kernel can be tuned to avoid di=
sk IO if
RAM is still available for example.

Hope this helps,

-Mikko=
