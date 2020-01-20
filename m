Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.64])
 by mx.groups.io with SMTP id smtpd.web12.14969.1579544127772720510
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2020 10:15:28 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=permanent DNS error (domain: denix.org, ip: 64.68.198.64, mailfrom: denis@denix.org)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id 0C64F40C04;
	Mon, 20 Jan 2020 18:15:27 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo14-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lXpsFLC_w-HM; Mon, 20 Jan 2020 18:15:27 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-86-127.washdc.fios.verizon.net [100.15.86.127])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id DE3A540A13;
	Mon, 20 Jan 2020 18:15:24 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 3659C1743A3; Mon, 20 Jan 2020 13:15:24 -0500 (EST)
Date: Mon, 20 Jan 2020 13:15:24 -0500
From: "Denys Dmytriyenko" <denis@denix.org>
To: Andreas =?iso-8859-1?Q?M=FCller?= <schnitzeltony@gmail.com>
Cc: Khem Raj <raj.khem@gmail.com>, yocto@lists.yoctoproject.org
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
Message-ID: <20200120181524.GA4735@denix.org>
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org>
 <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 17, 2020 at 09:55:55PM +0100, Andreas M=FCller wrote:
> On Fri, Jan 17, 2020 at 9:21 PM Denys Dmytriyenko <denis@denix.org> wro=
te:
> >
> > On Fri, Jan 17, 2020 at 09:15:09PM +0100, Andreas M?ller wrote:
> > > On Fri, Jan 17, 2020 at 7:35 PM Khem Raj <raj.khem@gmail.com> wrote=
:
> > > >
> > > > On 1/17/20 6:16 AM, Ross Burton wrote:
> > > > > Python 2 ceased being maintained on the 1st January 2020.  We'v=
e already
> > > > > removed all users of it from oe-core so the final step is to mo=
ve the
> > > > > recipe and supporting classes to meta-python2.
> > > > >
> > > > > The following are removed in this commit:
> > > > > - python and python-native 2.7.17
> > > > > - python-setuptools
> > > > > - The classes pythonnative, pythondir, distutils, setuptools
> > > > >
> > > >
> > > > perhaps add them to meta-py2 first before this lands
> > > Just a question: What is the plan with all those recipes which are
> > > going to fail (most headaches I have with old waf): Will meta-oe /
> > > meta-networking..., depend on meta-py2 or kick them out or?
> >
> > What, not calling it the worst patch of the year? And the year's just
> > started... :)
> Denys
>=20
> 1. Would you accept an apologize for that one?

Don't worry about that, let's file it under "overreaction due to stress"=20
category, shall we? :)


> 2. I did not ask for stopping this - just asked how to continue and I
> did that for certain reasons: For example: Few minutes ago we saw a
> series for npm rework on oe-core. Unfortunately npm as is requires
> python2 and many modules. Or the waf stuff: That means somebody has go
> to all the projects and ask them for waf upgrade or prepare patches
> there (and that means not just upgrading waf). So again: How do we
> handle/get rid recipes requiring python2 to build?

Yes, all good points. I would agree with Khem - let's drop it and try to=20
fix as many issues as possible, while we still have time until the releas=
e.=20
Distros can have own dependency on meta-python2, but meta-openembedded an=
d=20
openembedded-core should not depend on deprecated components, IMHO.

--=20
Denys
