Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27F2AE00C27; Fri, 28 Aug 2015 06:53:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E37A5E00A54
	for <yocto@yoctoproject.org>; Fri, 28 Aug 2015 06:53:15 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 28 Aug 2015 06:53:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,424,1437462000"; d="scan'208";a="634010500"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.13.245])
	by orsmga003.jf.intel.com with ESMTP; 28 Aug 2015 06:53:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Lenivyy Viktor <Viktor.Lenivyy@author.kiev.ua>
Date: Fri, 28 Aug 2015 14:53:13 +0100
Message-ID: <7748623.B9dvoC9P17@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.5-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <3a01e2ad749d46e2addcdcdec22eb968@E2013a.CORP.ICS.COM.UA>
References: <c3b592dd4c494830a1259662eb37bfa1@E2013a.CORP.ICS.COM.UA>
	<5075633.xNTnaMU5g6@peggleto-mobl.ger.corp.intel.com>
	<3a01e2ad749d46e2addcdcdec22eb968@E2013a.CORP.ICS.COM.UA>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: How to recreate rootfs image
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
X-List-Received-Date: Fri, 28 Aug 2015 13:53:22 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="utf-8"

On Friday 28 August 2015 13:32:23 Lenivyy Viktor wrote:
> > On Thursday 27 August 2015 08:25:38 Lenivyy Viktor wrote:
> > > > In your kernel recipe are you using SRC_URI to fetch from a git=

> > > > repository (e.g. git:// URI) or from a local directory?
> > >
> > > This kernel is fetched from local directory.
> > >
> > > > I guess that if you're using a local path, there can be either =
some
> > > > uncommitted changes, or a stale git index.
> > >
> > > No, because kernel built from sources in local directory doesn=E2=
=80=99t have
> > > =E2=80=9C-dirty=E2=80=9D in version string.
> > >=20
> > > > You can try just for the experiment to add your current kernel
> > > > sources to a test git repo and point the SRC_URI to it, so bitb=
ake
> > > > can clone the repo by git revision (SRCREV =3D "${AUTOREV}" wil=
l skip
> > > > the need to update the recipe revision constantly during
> > > > development). This should work fine, without the "-dirty" versi=
on
> > > > suffix.
> > >
> > > I can try this, but it doesn't answer main question:
> > > how can I recreate rootfs image starting from the point after fet=
ching
> > > Linux sources, so Yocto=E2=80=99s copy will remain intact?
> >=20
> >=20
> > Well one way would be:
> >=20
> >=20
> >  bitbake -C compile virtual/kernel <imagename>
> >=20
> >=20
> > (note the capital -C, not -c).
>=20
> Hi, Paul. And thank you.
> Looks like the most relevant answer.
> IMO this "-C" flag is poorly documented. Thus if you don't know what =
it's
> doing, you can't figure out to use it.
> Only some info in maillists found
> by Google can give a clue what "--clear-stamp" is intended for.=20

Right, that may well be the case.
=20
> > In the near future "devtool modify" should support the kind of work=
flow
> > that it looks like you're attempting to get (where you want to modi=
fy
> > the kernel sources locally and then build them and/or incorporate t=
hem in
> > an image) - it already works well for non-kernel recipes.
>=20
> I think this workflow is useful for many things, not only for workaro=
und
> "-dirty", as in my case. It's not very convenient to wait for fetchin=
g
> sources every time you do some little modification.
> Why we need separate
> command i.e. "devtool modify" if we can go without it?

The assumption is that you wouldn't normally be fetching the source fro=
m a=20
local path as you are, you would fetch it from some repository (though =
that=20
repository may be internal to your organisation). At some point you run=
=20
"devtool modify" which is effectively a way of saying "I want to start =
working=20
on the source for this particular recipe in this location" - at which p=
oint=20
either you're specifying an existing source checkout that you've prepar=
ed, or=20
you specify -x and it prepares it for you. Having run that, the fetch/u=
npack=20
tasks are disabled, and the specified external source tree will be used=
 in the=20
build. Additionally, that external source tree is yours to keep should =
you=20
wish - it will never be deleted by the build system; the same *cannot* =
be said=20
of the build system's temporary source checkout under tmp/work - your w=
ork in=20
progress can be lost in an instant if you run -c clean or have rm_work=20=

enabled. There really are two different modes here - normal build, wher=
e you=20
want the sources as anyone else building the system would fetch, and=20=

development, where you want your own sources that you are in control of=
.

Cheers,
Paul

--=20

Paul Eggleton
Intel Open Source Technology Centre

