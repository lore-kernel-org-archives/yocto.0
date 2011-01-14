Return-Path: <kevin.tian@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id AD1684C80039
	for <yocto@yoctoproject.org>; Thu, 13 Jan 2011 23:28:26 -0600 (CST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 13 Jan 2011 21:28:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,321,1291622400"; d="scan'208";a="374475671"
Received: from pgsmsx602.gar.corp.intel.com ([10.221.43.81])
	by azsmga001.ch.intel.com with ESMTP; 13 Jan 2011 21:28:25 -0800
Received: from shsmsx601.ccr.corp.intel.com (10.239.4.112) by
	pgsmsx602.gar.corp.intel.com (10.221.43.81) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Fri, 14 Jan 2011 13:27:46 +0800
Received: from shsmsx502.ccr.corp.intel.com ([10.239.4.96]) by
	shsmsx601.ccr.corp.intel.com ([10.239.4.112]) with mapi;
	Fri, 14 Jan 2011 13:27:45 +0800
From: "Tian, Kevin" <kevin.tian@intel.com>
To: "rdelaet@mri-inc.net" <rdelaet@mri-inc.net>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Fri, 14 Jan 2011 13:27:43 +0800
Thread-Topic: [yocto] Building all packages using the released toolchain
Thread-Index: AcuzOF7Hv9aN1lf4QIOUxXm2QWK5ZwAazxUA
Message-ID: <625BA99ED14B2D499DC4E29D8138F1504D7895E936@shsmsx502.ccr.corp.intel.com>
References: <1294881695.3219.20.camel@laptop>
	<625BA99ED14B2D499DC4E29D8138F1504D7895E2F4@shsmsx502.ccr.corp.intel.com>
	<1294891924.3219.86.camel@laptop>
	<625BA99ED14B2D499DC4E29D8138F1504D7895E5E8@shsmsx502.ccr.corp.intel.com>
	<1294932995.26323.1.camel@laptop>
In-Reply-To: <1294932995.26323.1.camel@laptop>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Wolfgang Denk <wd@denx.de>
Subject: Re: Building all packages using the released toolchain
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
X-List-Received-Date: Fri, 14 Jan 2011 05:28:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Rick De Laet [mailto:rdelaet@mri-inc.net]
> Sent: Thursday, January 13, 2011 11:37 PM
>=20
> > > > Btw, could you post your errors?
> > >
> > > My gcc version is 4.4.4, the latest available from yum update for Fed=
ora 12.
> > > My poky-4.0-build/conf/local.conf is attached.
> >
> > OK, I remembered that there're a series of patches to make FC14 happy a=
fter
> Laverne
> > release:
> >
> 	https://lists.yoctoproject.org/pipermail/poky/2010-December/001023.ht
> ml
> >
> > So it's better you can try the poky master for your experiment here:
> > 	git://git.pokylinux.org/poky.git
> >
> > Thanks
> > Kevin
>=20
> I assume that the way I get the master is with the following command:
>=20
> 	git clone git://git.pokylinux.org/poky.git

Yes.=20

>=20
> or is there an additional option to get the "master" branch?  I tried
> the above and have the same build error

Poky.git is a repo which contains a bunch of branches. One simple way you c=
an verify
is to use "git branch", and if "*master" is shown then you're using the mas=
ter branch.

If it still doesn't work for you, it ends up to other issues. I did another=
 round of read on
original fedora 14 mail thread. It looks that your error is a little bit di=
fferent to that
one:=20
	(yours) ./ld: invalid option -- 'p'
	(original) ./ld: unrecognized option '--no-add-needed'

The common point is that elfutils's own ./ld is used which supports less op=
tions and thus
Triggers the error. You can look at the bugzilla here:
	http://bugzilla.pokylinux.org/show_bug.cgi?id=3D572

Wolfgang has "." included in his PATH which is before /bin and /usr/bin. Id=
eally this
has been fixed by commit 68030f4 (I had a quick test that "." does be warne=
d out in
master branch). Yours looks similar and I'm not sure how local ".ld" is ref=
erenced here.
Could you post your PATH variable from your build directory?

BTW, I missed the latter part in your last post, and thus reply here:

> > Long term what I want to do is build an embedded linux system from scra=
tch
> to
> > run on our own hardware.
> >
> > I only found out about yacto today through searching around the Intel E=
DC
> web

http://yoctoproject.org/ is the project homepage.

> > site.  We have the Intel Atom based eval board (EG20T) with Tunnel Cree=
k
> and
> > saw today that this is a newly supported platform in yocto so I was ver=
y
> anxious

Good to know that. :-)

> > to try it out.  I thought it would be best to first try and build a sta=
ndard
> > configuration first just to learn the
> > tool, so short term, yes, I want to build the complete sato image.   We
> > are building our own Intal Atom/ Tunnel Creek embedded platform and on =
the
> > surface it looks like yacto is a perfect fit.  Trying to decide now if =
commercial
> > linux is required or if something like yocto will work.

Yes, Yocto is a perfect choice for your prototype purpose here.

> >
> > For developing embedded products I like the idea of having an "isolated=
"
> > toolchain so I can built a consistent product, regardless of what updat=
es I do
> to
> > my laptop distribution.  So is there a way to configure yocto to use th=
e
> > /opt/poky toolchain rather than the fedora tools?

For this you can refer to Yocto development manual:
	http://www.yoctoproject.org/docs/poky-ref-manual/poky-ref-manual.html

CH5 provides guidance to use /opt/poky toolchain for application developmen=
t.
However we don't have doc now about using an external toolchain to compile
the whole yocto yet, though it does be supported. The closest info you coul=
d=20
refer to now is the openembedded manual (CH5.5). Could you fill a bug for t=
his=20
documentation requirement? We'll address that in coming release.

But there may be one confusion I'd like to clarify here. What /opt/poky con=
tains
are a set of cross-toolchains which are used to compile binaries running on=
 the
target machine. For them Fedora doesn't provide. On the other hand, for the
make-native/elfutils-native, which are running on the build host, they have=
 to
be compiled with Fedora toolchains which is the starting point of the whole
yocto build process. :-)

Thanks,
Kevin

