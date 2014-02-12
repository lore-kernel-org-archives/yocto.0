Return-Path: <joe@deserted.net>
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D61E007AC
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 17:15:38 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id k19so10091800igc.5
	for <yocto@yoctoproject.org>; Tue, 11 Feb 2014 17:15:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=BucZl7xfUzGGVypGDxWobmClRLT5no1M/9TMl87mvIo=;
	b=l64gK5NRe67XF6itWEdnRI5TQKoGFqjJs/xvWi6ZQM9auSWoG+5yvjHmYBMypME1uN
	VTaVJ7x4MWMOLkp/qjuRxVT1M5ywhhK9yZLdMtuWsIUW+K+13LxRx1Kk3KCB2hHpRzLp
	LVvirUlUPxpkG9XSN4NxiYLm6JpCWQ0a11CWuVlnlZ3aOgPNNWDaaXyySqZ5vr/jLm4X
	hEmQQ/yHGnS9Wt5Qgna2tqgr1tzfYk2upIX+OW8sa+B9RUn8WJYpJw3vort9VnX+QG0S
	IrzKtCOh+rvt9uq/QtZIWvuFkl5+JfAlJ9kUiYENSep9InqB89fuD0a8s7k82niOiYSC
	MzEQ==
X-Gm-Message-State: ALoCoQlMzk8VxXKt5UTtoCg2QmYyzFvglvRXJZRNJ2gDhlkppeRLx/REn8t9vtQAwb0mDesf80SI
X-Received: by 10.50.78.200 with SMTP id d8mr1333966igx.38.1392167737864;
	Tue, 11 Feb 2014 17:15:37 -0800 (PST)
Received: from deserted.net (24-246-4-250.cable.teksavvy.com. [24.246.4.250])
	by mx.google.com with ESMTPSA id
	kb10sm3029021igb.6.2014.02.11.17.15.35 for <multiple recipients>
	(version=TLSv1.2 cipher=RC4-SHA bits=128/128);
	Tue, 11 Feb 2014 17:15:36 -0800 (PST)
Date: Tue, 11 Feb 2014 20:15:33 -0500
From: Joe MacDonald <joe@deserted.net>
To: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <20140212011520.GA23405@deserted.net>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
	<52FA83EF.7000805@windriver.com>
MIME-Version: 1.0
In-Reply-To: <52FA83EF.7000805@windriver.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-703 http://www.vim.org
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wildcards in place of version numbers.
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
X-List-Received-Date: Wed, 12 Feb 2014 01:15:39 -0000
X-Groupsio-MsgNum: 18072
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="TakKZr9L6Hm6aLOc"
Content-Disposition: inline

--TakKZr9L6Hm6aLOc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

[Re: [yocto] [meta-selinux][PATCH 0/4] Begin mingrating bbappends to use wi=
ldcards in place of version numbers.] On 14.02.11 (Tue 15:11) Randy MacLeod=
 wrote:

> On 14-02-06 10:09 PM, Philip Tricca wrote:
> >The current trend in OE recipes seems to use a wildcard in place of vers=
ion numbers for bbappends. AFAIK this is a relatively new feature but a wel=
come one. This is a sort of RFC in that I think it's probably best for meta=
-selinux to use this mechanism to keep from having to rename bbappends ever=
ytime something in oe-core changes. I guess the right way to implement this=
 is to change the bbappends in meta-selinux when the version numbers change=
 upstream.
> >
>=20
> Hi Philip,
>=20
> This might work out but I'm somewhat attached to the manual process.

It's a change I'd been advocating for quite some time now.  (Actually,
it was something I was somewhat surprised wasn't possible when I first
came to bitbake in general, so at least to me this change seems pretty
sensible.)

The risks you outline are real, but historically this hasn't shown
itself to be a significant problem so far.  The types of things this'll
hit on are characterized well in Phil's RFC set.  Stuff like sudo and
libcgroup which require bbappends but the contents haven't had any
meaningful change since the stone age.  :-)

I think this is actually a win for meta-selinux in terms of reducing the
number of commits like f0adb425.

I've already staged the proposed change in my tree and it seems happy,
so I'm inclined to merge it, FWIW.

-J.

> Manual matching shows that someone is:
>    - paying attention,
>    - fixed the bbappend version number,
>    - gotten someone else to review,
>    - hopefully built the software for at least one arch,
>    - hopefully tested run-time for at least one arch.
>=20
> With a wildcard matching rule, there will be times when the
> underlying package has changed and then the recipe changes and
> perhaps code patches still apply but are to some extent broken.
> Have people accepted this as a possible outcome that they
> believe will be rare? Have you tried your approach with a few
> different oe-core baselines such as dora, random, master?
>=20
> I'm not agaist this change but I'm trying to be sure that people
> agree that it's a good approach and that we've tested the idea
> with some historical changes.
>=20
> Thanks,
>=20
> ../Randy
>=20
>=20
> >Philip Tricca (4):
> >   busybox: Use wildcard for version number in busybox bbappend.
> >   libcgroup: Use wildcard for version number in libcgroup bbappend.
> >   sudo: Use wildcard for version number in sudo bbappend.
> >   libxcb: Use wildcard for version number in libxcb bbappend.
> >
> >  recipes-core/busybox/busybox_%.bbappend        |   87 ++++++++++++++++=
++++++++
> >  recipes-core/busybox/busybox_1.21.1.bbappend   |   87 ----------------=
--------
> >  recipes-core/libcgroup/libcgroup_%.bbappend    |   12 ++++
> >  recipes-core/libcgroup/libcgroup_0.38.bbappend |   12 ----
> >  recipes-extended/sudo/sudo_%.bbappend          |    3 +
> >  recipes-extended/sudo/sudo_1.8.8.bbappend      |    3 -
> >  recipes-graphics/xcb/libxcb_%.bbappend         |    8 +++
> >  recipes-graphics/xcb/libxcb_1.9.3.bbappend     |    8 ---
> >  8 files changed, 110 insertions(+), 110 deletions(-)
> >  create mode 100644 recipes-core/busybox/busybox_%.bbappend
> >  delete mode 100644 recipes-core/busybox/busybox_1.21.1.bbappend
> >  create mode 100644 recipes-core/libcgroup/libcgroup_%.bbappend
> >  delete mode 100644 recipes-core/libcgroup/libcgroup_0.38.bbappend
> >  create mode 100644 recipes-extended/sudo/sudo_%.bbappend
> >  delete mode 100644 recipes-extended/sudo/sudo_1.8.8.bbappend
> >  create mode 100644 recipes-graphics/xcb/libxcb_%.bbappend
> >  delete mode 100644 recipes-graphics/xcb/libxcb_1.9.3.bbappend
> >
>=20
>=20
--=20
-Joe MacDonald.
:wq

--TakKZr9L6Hm6aLOc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iEYEARECAAYFAlL6yzEACgkQwFvcllog0XyrRQCgiLFhjnuys1n8sArea8B/NLdS
luMAoJxA5g2mkzllbi2jcZuqHjbMczCb
=FkgI
-----END PGP SIGNATURE-----

--TakKZr9L6Hm6aLOc--
