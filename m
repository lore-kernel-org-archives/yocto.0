Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.21.1582148694772578009
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=nJPju9dy;
 spf=neutral (domain: bmw.de, ip: 140.211.169.56, mailfrom: prvs=31051da96=mikko.rapeli@bmw.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D111BE0173D; Tue, 18 Feb 2020 02:11:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [68.232.139.98 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from esa10.bmw.c3s2.iphmx.com (esa10.bmw.c3s2.iphmx.com [68.232.139.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C85AE00782
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 02:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582020692; x=1613556692;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=hdJST6D4KdH2/KWI20YOqVwPOSkQQoXyULT1S2QmeqY=;
  b=nJPju9dyVZ+vQwau3AbsSQY2jkhqiL5kLlL63ck2om5KzlnKWx3cYUuT
   hkzEl19Dm9gvwdrjgk0TYDCSGS2rZqau6ZmMyJiH2Y0wd2akesoXNiXK2
   0lu6H8Khhmv3VcYzvfKEQLI52ZKqIUeyrXvcn3QFRlN/0Xp7PLPQMQ/Ji
   A=;
IronPort-SDR: rshzXaAIO7AnvD+l2PZzG3W8Op0ksWYU7L/T0PC5UX45R3+NydVAeXqh4j1zrF05lrWcLWIaQ5
 tyNtWM/1JshyW5qnGtxrwRg8h9hJd3J4BoSdk7T07KWIMncAs/7fjntyiE9pchHua/vHlqmSDt
 wbe5st0EXzQ7COOldZjqf0mRflsEOXfL3NXLgM7jYM7yKVzehSb5XT+5ZXqXsHz2Os6ZG9MxK1
 vbiQ7FDVmIwIjIpk3D18cNNvhJ8nsYf0mC7ysfAFSS+rm/V/Kv/ps88omPtZI43Bun1rIb7/6O
 PSo=
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa10.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Feb 2020 11:11:23 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw3.muc with ESMTP/TLS;
 18 Feb 2020 11:11:23 +0100
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp) ([160.48.96.47])
 by esabb4.muc with ESMTP/TLS; 18 Feb 2020 11:11:22 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10k.europe.bmw.corp
 (160.48.96.47) with Microsoft SMTP Server (TLS;
 Tue, 18 Feb 2020 11:11:22 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 18 Feb 2020 11:11:22 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <jupiter.hce@gmail.com>
CC: <marek.belisko@gmail.com>, <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [yocto] Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
Thread-Topic: [OE-core] [yocto] Change RO rootfs failed RF Kill Switch Status
 and Failed to start Run pending postinsts
Thread-Index: AQHV5fbdCy49MNKwaEWF8CPLotJEUqggbySAgAAL/gCAABtwAIAADFuAgAAH6wA=
Date: Tue, 18 Feb 2020 10:11:22 +0000
Message-ID: <20200218101122.GE104502@korppu>
References: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
 <CAAfyv34yO7bSR9GBod1bXpD0sFnsSETsJQAzcmSgyY0orGtfcg@mail.gmail.com>
 <CAA=hcWQFcdUJKGTOitOAx1URD7r=9PPxsdd=hQO-Yb77=QHTDg@mail.gmail.com>
 <20200218085848.GA104502@korppu>
 <CAA=hcWREdVeYqnOs-3aSFOhobaQWvLoaEU8Rdku_RM=Q5q2Ruw@mail.gmail.com>
In-Reply-To: <CAA=hcWREdVeYqnOs-3aSFOhobaQWvLoaEU8Rdku_RM=Q5q2Ruw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <0D99FF3142DBAF4C80C94BAF943D309B@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

On Tue, Feb 18, 2020 at 08:43:01PM +1100, JH wrote:
> Hi Mikko,
>=20
> On 2/18/20, Mikko.Rapeli@bmw.de <Mikko.Rapeli@bmw.de> wrote:
> > I think you may be missing volatile-binds package and service from your
> > image.
> > See poky/meta/recipes-core/volatile-binds/volatile-binds.bb
>=20
> I got the source in my build system, it is zeus:
>=20
> oe-core/meta/recipes-core/volatile-binds/volatile-binds.bb
>=20
> ./all-oe-linux/volatile-binds
> ./all-oe-linux/volatile-binds/1.0-r0/packages-split/volatile-binds
> ./all-oe-linux/volatile-binds/1.0-r0/sysroot-destdir/sysroot-providers/vo=
latile-binds
> ./all-oe-linux/volatile-binds/1.0-r0/pkgdata-pdata-input/runtime/volatile=
-binds
> ./all-oe-linux/volatile-binds/1.0-r0/pkgdata-pdata-input/runtime-reverse/=
volatile-binds
> ./all-oe-linux/volatile-binds/1.0-r0/pkgdata-pdata-input/volatile-binds
> ./all-oe-linux/volatile-binds/1.0-r0/pkgdata/runtime/volatile-binds
> ./all-oe-linux/volatile-binds/1.0-r0/pkgdata/runtime-reverse/volatile-bin=
ds
> ./all-oe-linux/volatile-binds/1.0-r0/pkgdata/volatile-binds
> ./all-oe-linux/volatile-binds/1.0-r0/license-destdir/volatile-binds
>=20
> Are there correct?
>=20
> > It may be missing /var/log but with systemd there should not be needs t=
o
> > write
> > to that location after image builds...
>=20
> The volatile did not have the log, so /var/log -> volatile/log was an
> invalid link, should I manually create it?
>=20
> Thanks Mikko,

Well I have zeus and am using read-only rootfs with volatile binds and
I did not need anything extra. I would dig into this /var/log thing
and patch it away. I use systemd journal so no need for syslogs.

Cheers,

-Mikko=
