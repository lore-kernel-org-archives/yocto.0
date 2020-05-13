Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2266.1589360457515664854
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 May 2020 02:00:58 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=SUbvgtax;
 spf=neutral (domain: bmw.de, ip: 140.211.169.56, mailfrom: prvs=395b1dd3e=mikko.rapeli@bmw.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DEEDE01B4C; Wed, 13 May 2020 02:00:57 -0700 (PDT)
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
	*      [68.232.139.97 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 62 seconds by postgrey-1.32 at yocto-www; Wed, 13 May 2020 02:00:55 PDT
Received: from esa8.bmw.c3s2.iphmx.com (esa8.bmw.c3s2.iphmx.com [68.232.139.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8C48E01B0B
	for <yocto@yoctoproject.org>; Wed, 13 May 2020 02:00:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1589360455; x=1620896455;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=muBI2NJVnlOSIieisuisX12iOXax4JU1Jvhy7518WMI=;
  b=SUbvgtax8O9HTW9opbYdOxSUQB1CzSfmKUZLCYExC77hZF/AIRyp37QK
   TAAMiAULxxClI2i74N9ffMV7g70K6Z16WTKQQoE6LfxsOOFL7agLHbP4F
   JHGOWB9oszTi7XsbmIwu6iMXwVYRSzlfKIBBDcXS2GIo/Lo/VqPZeQQQC
   Q=;
Received: from esagw3.bmwgroup.com (HELO esagw3.muc) ([160.46.252.35]) by
 esa8.bmw.c3s2.iphmx.com with ESMTP/TLS; 13 May 2020 10:59:51 +0200
Received: from esabb2.muc ([160.50.100.34])  by esagw3.muc with ESMTP/TLS;
 13 May 2020 10:59:51 +0200
Received: from smucm10j.bmwgroup.net (HELO smucm10j.europe.bmw.corp) ([160.48.96.46])
 by esabb2.muc with ESMTP/TLS; 13 May 2020 10:59:50 +0200
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10j.europe.bmw.corp
 (160.48.96.46) with Microsoft SMTP Server (TLS;
 Wed, 13 May 2020 10:59:51 +0200
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Wed,
 13 May 2020 10:59:51 +0200
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <mans.zigher@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] Is there a relationship between the sstate and the machine?
Thread-Topic: [yocto] Is there a relationship between the sstate and the
 machine?
Thread-Index: AQHWKQG6LE1aVkdnB0OaraU07ls33ailli0A
Date: Wed, 13 May 2020 08:59:51 +0000
Message-ID: <20200513085950.GK5896@korppu>
References: <CAEhQi8=B7VDVovCKKCHGer-o8WDQ743TjHUdMN4hjqyUKxT=Pw@mail.gmail.com>
In-Reply-To: <CAEhQi8=B7VDVovCKKCHGer-o8WDQ743TjHUdMN4hjqyUKxT=Pw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8DC39D6A74CE6E4C87358BCBB5176C58@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, May 13, 2020 at 10:36:49AM +0200, Mans Zigher wrote:
> I am using a build environment based on the yocto project from one of
> the big HW suppliers in the mobile industries. They are continuously
> breaking the principles behind the yocto project and at one point they
> managed to break the sstate cache because they are doing things in
> there own way instead of using what already exists. They managed to
> fix the sstate cache but it now looks to only work when using there
> machines when I am defining my own machine even though it is a copy of
> one of theirs the sstate cache it is not working. The sstate cache is
> detect and the SSTATE_DIR is correct but it finds only a handful of
> matches and builds the rest from scratch. Is there a logical
> explanation for this? Or is this yet again some custom crap that this
> supplier have done. FYI if you know what supplier I am talking about I
> would very much recommend staying the hell away from them this is the
> worst linux distro I have ever worked with both on the build and on
> the system it is some kind of freak combination of a normal linux
> system and android worst combination ever.

This is a common problem. It is likely that I know which SoC supplier you
are talking about and have had the exact same issues. We have managed to
fix or workaround all of them. In most cases by reducing what the SoC layer=
s
do by BBMASK'ing all non-essential BSP recipes, reverse engineering the
machine configuration and bbclasses to only use bare minimal ones.

I can only hope that our feedback in terms of patches and workarounds also
going back the supplier chain(s) and you at some point see the same patches=
.
For example we updated the yocto open source layers from 2.5 sumo to 3.0 ze=
us
with very minimal support from the SoC and other suppliers and their layers
are still only compatible with 2.5 sumo, officially. Also switched from
using a custom Android based binary toolchain(s there were multiple
at some point) to using meta-clang.

If you have detailed question or problems, it would be nice to discuss them
here, but I know that some details may be closed. At least some general
aspects how to debug issues may be discussed without exposing too much
details or, well, company names.

Cheers,

-Mikko=
