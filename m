Return-Path: <dean.saridakis@baesystems.com>
Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com
	[149.32.232.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A37BE00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 07:54:32 -0700 (PDT)
X-SENDER-IP: 10.37.225.65
X-SENDER-REPUTATION: None
X-IronPort-AV: E=Sophos;i="4.87,476,1363132800"; 
   d="scan'208";a="5624188"
Received: from rfc1918.na.baesystems.com (HELO cascms99801.na.baesystems.com)
	([10.37.225.65])
	by dmzms99802.na.baesystems.com with ESMTP/TLS/RC4-SHA;
	15 Apr 2013 14:54:29 +0000
X-SENDER-IP: 10.37.194.19
X-SENDER-REPUTATION: None
X-IronPort-AV: E=Sophos;i="4.87,476,1363132800"; d="scan'208";a="180302894"
X-IPAS-Result: AqAEAIsTbFEKJcIT/2dsb2JhbAAuIsRAgR10gh8BAQEBAgE6PxACAQgiFBAyJQIEDg2IBrtjjmYxB4JgYQOrIYIo
Received: from GLDMS99983.goldlnk.rootlnka.net (10.37.199.132) by
	gldms99919.goldlnk.rootlnka.net (10.37.194.19) with Microsoft SMTP
	Server (TLS) id 8.3.279.5; Mon, 15 Apr 2013 10:53:54 -0400
Received: from GLDMS85003.goldlnk.rootlnka.net (10.37.161.195) by
	gldms99983.goldlnk.rootlnka.net (10.37.199.132) with Microsoft SMTP
	Server (TLS) id 14.2.318.4; Mon, 15 Apr 2013 10:53:54 -0400
Received: from GLDMS85001.goldlnk.rootlnka.net ([fe80::136:899e:bab0:2587]) by
	GLDMS85003.goldlnk.rootlnka.net ([172.16.0.147]) with mapi id
	14.02.0318.004; Mon, 15 Apr 2013 10:53:53 -0400
From: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Thread-Topic: [yocto] Config fragment not being picked up
Thread-Index: AQHONxaPciO3n1vSLEGHMocqsqv435jXWHfA
Date: Mon, 15 Apr 2013 14:53:53 +0000
Message-ID: <B98BBFB67D89184E8E876F332BDBC3E0A23616@GLDMS85001.goldlnk.rootlnka.net>
References: <20130411231941.C175BE0146C@yocto-www.yoctoproject.org>
	<51675860.3030204@windriver.com>
In-Reply-To: <51675860.3030204@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.37.161.240]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Config fragment not being picked up
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Apr 2013 14:54:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> >>> Think I've followed the example in the manual correctly. My append fi=
le
> is
> >> pretty simple:
> >>>
> >>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}"
> >>
> >> It looks like you forgot the colon at the end of the path.
> >> Try this:
> >>    FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> >>
> >> -Kevin
> >
> > Good eye, but afraid that didn't help (maybe the path was empty
> before???). I think the files are getting picked up, since fetch will fai=
l if
> change the file name to force a not found error.
> >
>=20
> What release are you using ? I tested this just last night before the
> 1.4 release final RC .. so it definitely still works!
>=20
> How are you determining that it isn't being picked up?

I believe the SDK is based on Yocto 1.2 / Poky 7.0 -- bitbake is 1.15.2.
kernel.bbclass kernel_do_configure() looks like it only does a make oldconf=
ig on defconfig...?
Should I expect to see the .cfg files being eppended there?

The .config I end up with doesn't have the definitions from my .cfg fragmen=
t files.=20

>=20
> Cheers,
>=20
> Bruce

