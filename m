Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D191A4C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 18:42:06 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 14 Jul 2011 16:42:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,531,1304319600"; d="scan'208";a="26034086"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2011 16:42:06 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 14 Jul 2011 16:42:06 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.12]) with mapi id
	14.01.0289.001; Thu, 14 Jul 2011 16:42:05 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] why does quick start guide refer to non-provided
	"poky-image-sato"?
Thread-Index: AQHMQm2TyEy9BqWLZ02OIHDJpGLJg5TsWn0wgAB5DQCAAAfDgIAAC8OAgAABO4D//5FRgA==
Date: Thu, 14 Jul 2011 23:42:01 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237903150A@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
	<1310682531.7553.2.camel@vorpal.jf.intel.com>
	<alpine.DEB.2.02.1107141854400.3059@localhost6.localdomain6>
	<1310685321.20015.1209.camel@rex>
In-Reply-To: <1310685321.20015.1209.camel@rex>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: why does quick start guide refer to non-provided "poky-image-sato"?
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
X-List-Received-Date: Thu, 14 Jul 2011 23:42:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I do have two branches (master and Bernard) in my yocto-docs contrib area. =
 The master branch is used for updates to the upcoming release and is in va=
rious states of correctness/completeness.  I guess I will need to take the =
time to do a push for every change I make to my local copy of yocto-docs ma=
ster.

The docs that are on the website are Bernard only until we release.

ScottR

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Richard Purdie
Sent: Thursday, July 14, 2011 4:15 PM
To: Robert P. J. Day
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] why does quick start guide refer to non-provided "poky=
-image-sato"?

On Thu, 2011-07-14 at 19:10 -0400, Robert P. J. Day wrote:
> On Thu, 14 Jul 2011, Joshua Lock wrote:
>=20
> > As I understand it documentation repository updates are reflected on
> > the website so the docs tend to reflect the released version.
> >
> > It would be nice to be able to provide development & release
> > documentation but I can't see it happening any time soon.
>=20
>   ok, that explains it but it doesn't defend it.  IMHO, any single
> versioned tarball or repository checkout should always be internally
> consistent, and that includes embedded documentation.  when i do a
> "git pull" of any software, i expect the contents of any docs/
> directory to reflect what's there.
>=20
>   if you want to publicly publish the docs that reflect the last
> official release, then build those docs from the appropriate git tag.

I agree that the docs in master should reflect the code in master and
that the docs on the bernard branch should be the ones which make the
bernard references.

Which or both can end up on the website as needed which is a separate
issue.

I thought this had been fixed and Scott had two branches so what's going
wrong? :/

Cheers,

Richard

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

