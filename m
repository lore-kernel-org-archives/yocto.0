Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5781.1575648433006572181
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Dec 2019 08:07:13 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@bmw.de header.s=mailing1 header.b=nJ3qUiV0;
 spf=neutral (domain: bmw.de, ip: 140.211.169.56, mailfrom: prvs=236fbe635=mikko.rapeli@bmw.de)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8270DE01158; Fri,  6 Dec 2019 08:07:12 -0800 (PST)
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
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www; Fri, 06 Dec 2019 08:07:11 PST
Received: from esa5.bmw.c3s2.iphmx.com (esa5.bmw.c3s2.iphmx.com [68.232.139.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B4D9E01156
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2019 08:07:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=bmw.de; i=@bmw.de; q=dns/txt; s=mailing1;
  t=1575648432; x=1607184432;
  h=from:to:cc:subject:date:message-id:references:
   in-reply-to:content-id:content-transfer-encoding:
   mime-version;
  bh=svJ8ztyrCp+o2Ne48i/nAtbebrlLno5Gp6IRxj13MUw=;
  b=nJ3qUiV0ortNmoA8GicVgmhFTdPTGxdLbrjBJWDqxmQv9TRFpupqYRP7
   RW8ouUm9aicuHLnxq8JmdhWSbyc/6JLi4knV1yGzyfJsER3C6O0ThxLy1
   jXbRMdz2rh3Ce7kdJnfjsn+RKb3qE5RI4d7S6lJUtuqC2xF46/iuOx+Dx
   E=;
IronPort-SDR: eFHdK9698SowBaBIvIGWvl6+EPyoZOzrOMYqZ2jjIimuBcgPZ6kLzF10FGRBJ7ZPB2HuPKE4Ek
 6Lb7WMCyuAtVEDIOcGwOUfoxim6liQMHHBY9+nTyuFPq+4C1+4U1gQVbSRZcy7O/3hLNit/qwa
 5XgBwXFPl8a3i8fzAugcHWAWFx9dJ6c1fOdZ/2H1K67ArpUSFBdgpoYB0G46Zc2SbUGilsmiwn
 jC5lGg+v3sJ6Uhhbud0j8Kr8KjKUK0izVxWiwObj9Bt5sp7W+xwlRHAw7tlE9Y1u4T3ddMRmJt
 SdI=
Received: from esagw1.bmwgroup.com (HELO esagw1.muc) ([160.46.252.34]) by
 esa5.bmw.c3s2.iphmx.com with ESMTP/TLS; 06 Dec 2019 17:06:07 +0100
Received: from esabb4.muc ([160.50.100.33])  by esagw1.muc with ESMTP/TLS;
 06 Dec 2019 17:06:06 +0100
Received: from smucm10k.bmwgroup.net (HELO smucm10k.europe.bmw.corp) ([160.48.96.47])
 by esabb4.muc with ESMTP/TLS; 06 Dec 2019 17:06:05 +0100
Received: from smucm10k.europe.bmw.corp (160.48.96.47) by smucm10k.europe.bmw.corp
 (160.48.96.47) with Microsoft SMTP Server (TLS;
 Fri, 6 Dec 2019 17:06:05 +0100
Received: from smucm10k.europe.bmw.corp ([160.48.96.47]) by
 smucm10k.europe.bmw.corp ([160.48.96.47]) with mapi id 15.00.1473.005; Fri, 6
 Dec 2019 17:06:05 +0100
From: "Mikko Rapeli" <mikko.rapeli@bmw.de>
To: <mans.zigher@gmail.com>
CC: <yocto@yoctoproject.org>
Subject: Re: [yocto] What should I expect when using SSTATE_MIRROR?
Thread-Topic: [yocto] What should I expect when using SSTATE_MIRROR?
Thread-Index: AQHVrDY1GI10gFSdLkeY679dPLT/cqetNPCA
Date: Fri, 6 Dec 2019 16:06:05 +0000
Message-ID: <20191206160605.GD3527@hiutale>
References: <CAEhQi8n1NL+e+dhPGK_94stmXhE-H6+F3NHm=u10ACgSJ2wMsQ@mail.gmail.com>
In-Reply-To: <CAEhQi8n1NL+e+dhPGK_94stmXhE-H6+F3NHm=u10ACgSJ2wMsQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <3BC2114E7E0B32439A42D0406C8E83B5@bmwmail.corp>
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Dec 06, 2019 at 02:07:47PM +0100, Mans Zigher wrote:
> Hi,
>=20
> I am trying to use the sstate cache by using a SSTATE_MIRROR. I have
> built everything from scratch once and pushed my sstate-cache
> directory to the server. I then wen't over to another machine and did
> a clean build but this time I made sure it used SSTATE_MIRROR but the
> result was not what I expected
>=20
> Sstate summary: Wanted 1255 Found 233 Missed 2044 Current 0 (18%
> match, 0% complete)
>=20
> I have tried it multiple times on different machines with the same
> result the only time it works as expect is when running the build on
> the first machine from which the sstate cache was originally coming
> from. Am I missing something? Or is this expected?

Maybe host tool versions differ which trigger recompilation of things
like gcc and thus everything gets recompiled. You can use bitbake-diffsigs
to figure out why rebuild was triggered.

I work around this by using a build container based on LXC and Debian stabl=
e
everywhere, in CI and on developer machines with various Linux distros.

Hope this helps,

-Mikko=
