Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 526C2E006C9
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 07:18:15 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 13 Dec 2012 07:18:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,274,1355126400"; d="scan'208";a="263546644"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by fmsmga002.fm.intel.com with ESMTP; 13 Dec 2012 07:18:14 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.20]) with mapi id
	14.01.0355.002; Thu, 13 Dec 2012 07:18:14 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] bitbake user manual vs mega manual, and more info on
	local file fetcher?
Thread-Index: AQHN2Ttx4aDZEf74mEO65d8fL7y5SJgW1xxA
Date: Thu, 13 Dec 2012 15:18:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACCE36@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1212130857190.5702@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212130857190.5702@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: bitbake user manual vs mega manual, and more info on local file fetcher?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 13 Dec 2012 15:18:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hey Robert,=20

Great questions... we are revising the BitBake manual as part of the YP 1.4=
 release.  And, we are currently discussing exactly how to position it.  So=
 the answers to your questions are in the works. =20

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Thursday, December 13, 2012 6:09 AM
>To: Yocto discussion list
>Subject: [yocto] bitbake user manual vs mega manual, and more info on
>local file fetcher?
>
>
>  first question -- is the bitbake user manual that comes bundled with
>the bitbake source considered part of the yocto doc collection?  as
>in, if one wants detailed info on bitbake, does one read the bitbake
>user manual (which is not mentioned on the yocto docs page), or is
>bitbake user info assumed to now be scattered throughout the yocto
>docs?  i think it's important to identify the canonical location for
>that documentation.
>
>  following on that, i'm asking since the bitbake user manual is
>definitely a *little* deficient on info for the local file fetcher.
>here's the sum total of its examples:
>
>SRC_URI=3D "file://relativefile.patch"
>SRC_URI=3D "file://relativefile.patch;this=3Dignored"
>SRC_URI=3D "file:///Users/ich/very_important_software"
>
>but there's no mention that (as i read it) that protocol accepts
>wildcards:
>
>meta-angstrom/recipes-angstrom/angstrom/angstrom-uboot-
>scripts.bb:SRC_URI =3D "file://*.cmd"
>
>i had no idea that was even true until i stumbled over the above (if
>that's indeed what it means).
>
>  there's also no comprehensive coverage of how to define and use
>patches in the yocto docs.  the only mention i see is in the ref
>manual, in the variable glossary under SRC_URI, which isn't even
>complete (no mention of apply=3D or patchdir=3D).
>
>  so basic question -- is the bitbake user manual still under active
>maintenance and is it considered part of the yocto docs collection?
>since all that bitbake information should be *somewhere* but it's not
>clear where.
>
>rday
>
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

