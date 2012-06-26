Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1062FE006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 10:08:30 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Jun 2012 10:08:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="162960938"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by orsmga002.jf.intel.com with ESMTP; 26 Jun 2012 10:08:30 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 10:08:30 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.59]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.167]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 10:08:30 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] <rant>the current yocto FAQ is pretty much
	valueless</rant>
Thread-Index: AQHNU72C7klf1Ez29kKvlFnQx8szmpcM1I4Q
Date: Tue, 26 Jun 2012 17:08:27 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A1323A@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<3228700.TZNO2vyRAD@helios>	<alpine.DEB.2.02.1206261247100.5915@oneiric>
	<7137339.IoCmExdDEI@helios>
In-Reply-To: <7137339.IoCmExdDEI@helios>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much	valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 17:08:31 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

So this situation might lend itself to a nice FAQ question.... Something li=
ke "How do I isolate site and machine specific information during a build?"=
  And the solution can tell them how to use a site.conf file.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Paul Eggleton
Sent: Tuesday, June 26, 2012 10:02 AM
To: Robert P. J. Day
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] <rant>the current yocto FAQ is pretty much valueless</=
rant>

On Tuesday 26 June 2012 12:51:15 Robert P. J. Day wrote:
> On Tue, 26 Jun 2012, Paul Eggleton wrote:
> > On Tuesday 26 June 2012 12:26:28 Robert P. J. Day wrote:
> > >   i thought that was the technique for centralizing personal config
> > >=20
> > > preferences that you *didn't* want to manually copy into every
> > > local.conf file you created.  if you add that personal content into
> > > each local.conf, then of course you don't need those options.
> >=20
> > I guess it depends on what you mean by "personal content". Certain
> > settings are really part of distro policy and if you're finding that
> > you're setting them all the time for all of the builds that you're
> > doing, it would make more sense to create a distro layer that sets
> > them - then it's simply a matter of ensuring that layer is added to
> > your bblayers.conf and you set DISTRO as appropriate.
> >=20
> > AFAIK the command line options in question were added to allow
> > frontends to inject configuration into bitbake rather than something
> > the user would normally use directly.
>=20
>   ok, that makes sense.  but would it also make sense for bitbake to
> perhaps support another option that *does* allow personal content to,
> say, be effectively appended to one's local.conf.  for instance, every
> single local.conf i create immediately gets this added to the end:
>=20
> SOURCE_MIRROR_URL ?=3D "file:///home/rpjday/dl/"
> INHERIT +=3D "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS =3D "1"
> # BB_NO_NETWORK =3D "1"

OK, looking at the settings you've listed, I think these are the kinds of=20
things that site.conf was invented for - stuff that is specific not to the=
=20
builds you are doing but to the host machine / site. You can simply put the=
se=20
settings in a file called site.conf next to local.conf and they'll be read =
from=20
there; for new build directories you can just copy it in or symlink it from=
=20
some common location.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

