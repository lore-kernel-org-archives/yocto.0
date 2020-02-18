Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [])
 by mx.groups.io with SMTP id smtpd.web09.18.1582148693997830157
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:54 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=nxJp9Rap;
 spf=neutral (domain: bmw.de, ip: <nil>, mailfrom: prvs=31051da96=mikko.rapeli@bmw.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE369E01739; Tue, 18 Feb 2020 01:01:02 -0800 (PST)
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
	*      [68.232.139.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www; Tue, 18 Feb 2020 01:01:01 PST
Received: from esa5.bmw.c3s2.iphmx.com (esa5.bmw.c3s2.iphmx.com [68.232.139.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 370BAE00782
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 01:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1582016461; x=1613552461;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=3Ayfs2M3funW/ETatGMaTBaphchp7iqKEdXG9ehYhpQ=;
  b=nxJp9Rapu+i1vFkkHT94SS4pjh0UbUbKK9vAZJzPHy/gAov90u/GDr0T
   JT2qVDS+DY6q1Ke7Tv5/y0FhCQ5iYgAVqaRF3dNqwF2Egk5pS82ezzWH+
   aL8NPSEFH4zj51yxMdHfYJDtv38YLxGP+ywoRzUTOyBhqtguLAvwQQCnY
   Y=;
IronPort-SDR: WuDNNpy+ck55yO9LtO5niomWgwrPbWnHh++i4yzn98J79G21OSYcLZ9jX7OORyZhqtGX3AE6Vs
 fVwB7RGKFDMDaMlRzWJ5kVs8kM6gIOCbDdLlyqNWor4oVKlRRtwPc4WfKvT4ISN8K23jzOt4Fq
 UuySQ9ZLc0ZWtziseKOgpNEGK7ycu2aLSyfohyK6f1mhDmG4w1gi0+0HoOjm86IUY46Xfvy+YV
 O8Spy5EezLOlx/WajJ3WqRMcs98QsC/+IGoqgVjq5qdSOZe+2fifS5k8ymONejlZLXAynV+Fjb
 T4g=
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa5.bmw.c3s2.iphmx.com with ESMTP/TLS; 18 Feb 2020 09:59:28 +0100
Received: from esabb6.muc ([160.50.100.50])  by esagw1.muc with ESMTP/TLS;
 18 Feb 2020 09:58:51 +0100
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb6.muc with ESMTP/TLS; 18 Feb 2020 09:58:49 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Tue, 18 Feb 2020 09:58:49 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Tue,
 18 Feb 2020 09:58:48 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <jupiter.hce@gmail.com>
CC: <marek.belisko@gmail.com>, <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [yocto] Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
Thread-Topic: [OE-core] [yocto] Change RO rootfs failed RF Kill Switch Status
 and Failed to start Run pending postinsts
Thread-Index: AQHV5fbdCy49MNKwaEWF8CPLotJEUqggbySAgAAL/gCAABtwAA==
Date: Tue, 18 Feb 2020 08:58:48 +0000
Message-ID: <20200218085848.GA104502@korppu>
References: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
 <CAAfyv34yO7bSR9GBod1bXpD0sFnsSETsJQAzcmSgyY0orGtfcg@mail.gmail.com>
 <CAA=hcWQFcdUJKGTOitOAx1URD7r=9PPxsdd=hQO-Yb77=QHTDg@mail.gmail.com>
In-Reply-To: <CAA=hcWQFcdUJKGTOitOAx1URD7r=9PPxsdd=hQO-Yb77=QHTDg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AEDBB78B53461B488B108270AC5D8CA1@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

(trimming lists to yocto only)

Hi,

I think you may be missing volatile-binds package and service from your ima=
ge.
See poky/meta/recipes-core/volatile-binds/volatile-binds.bb

It may be missing /var/log but with systemd there should not be needs to wr=
ite
to that location after image builds...

-Mikko=
