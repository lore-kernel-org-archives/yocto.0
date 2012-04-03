Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA91E0044D
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 09:44:34 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so3406499wib.11
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 09:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=fYukrabj/h0OtJBYEC/3SpPPPIJtZtVbnmkeHr5wkBY=;
	b=qA3Y6wzTD8ToOg7YJ8/Pk0RTnvhsU4AgdPINGnb6q22ITdcAti4FFjJVSes97lyE9v
	X4PjQE0/uavm347H4iTjbUfpGILk98KTFaDmIfpis1LOHoxQuVQTwW+PHZLcX/Y4Nqz0
	6gEpO6iB93JwboJm4MibvWqFkZhlef0wp0DAy6kef3rSz8NyfH/rgTBO4GH6eJMRdo1o
	S5qTV1slZIUVc/ZoYUQ4uIjBSOFaP2YOHbwZjbgwh3YXs4jECT2NbJBgxrzJ0Frt262k
	zejwGf772+04AMHP5F+ou4KWE5ZY+Ytmm61uNvk8anooMBiEhkfl3gIdYAg1mQL1n4Q8
	FVhQ==
Received: by 10.180.102.129 with SMTP id fo1mr38047285wib.6.1333471473848;
	Tue, 03 Apr 2012 09:44:33 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ea6sm44063879wib.5.2012.04.03.09.44.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 03 Apr 2012 09:44:33 -0700 (PDT)
Date: Tue, 3 Apr 2012 18:44:32 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120403164432.GC3943@jama.jama.net>
References: <1EF3F9CE-3074-4925-8C57-B6382C0DAD83@dominion.thruhere.net>
	<4F764FB7.2080508@linux.intel.com>
	<95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F7B261B.1090101@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 16:44:35 -0000
X-Groupsio-MsgNum: 5764
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="XMCwj5IQnwKtuyBG"
Content-Disposition: inline

--XMCwj5IQnwKtuyBG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 03, 2012 at 09:32:27AM -0700, Darren Hart wrote:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>=20
>=20
>=20
> On 04/03/2012 09:25 AM, Martin Jansa wrote:
> > On Tue, Apr 03, 2012 at 09:01:01AM -0700, Darren Hart wrote:
> >> -----BEGIN PGP SIGNED MESSAGE----- Clear reproducible testing
> >> results. Whether or not a pair of git clones and some tinkering
> >> can result in the same thing as a poky repository or not isn't
> >> relevant in my opinion. I believe that we need a consistent mode
> >> of validating support for a Yocto Project X.Y release. Now if
> >> that is accomplished by building with the poky repository of the
> >> same vintage or by running some script that pulls the right bits
> >> together independently.... I honestly don't care, but I do think
> >> it should be consistent.
> >=20
> > so teach setup script something like: poky.sh checkout X.Y (which
> > checkouts whatever parts are needed for X.Y) poky.sh update X.Y
> > (dtto)
> >=20
> > Which creates the same structure like poky repository has, but by=20
> > checkouting upstream repositories or using submodules or whatever.
> >=20
> > That's what oebb.sh and SHR makefile does for master/shr HEADs, but
> > can be extended do it for particular version too.
> >=20
>=20
>=20
> This is certainly doable, but it doesn't address the stabilization
> buffer poky provides that I mentioned.

And is it?
OE @ ~ $ diff -rq openembedded-core/ projects/poky/ | grep -v '\.git'
Files openembedded-core/README and projects/poky/README differ
Only in projects/poky/: README.hardware
Only in projects/poky/: bitbake
Only in openembedded-core/: dev
Only in projects/poky/: documentation
Only in openembedded-core/meta/conf: bblayers.conf.sample
Only in openembedded-core/meta/conf: local.conf.sample
Only in openembedded-core/meta/conf: local.conf.sample.extended
Only in openembedded-core/meta/conf: site.conf.sample
Only in projects/poky/: meta-yocto
Only in projects/poky/scripts: lib
Files openembedded-core/scripts/oe-setup-builddir and projects/poky/scripts=
/oe-setup-builddir differ
Only in projects/poky/scripts: yocto-bsp
Only in projects/poky/scripts: yocto-kernel

OE @ ~ $ diff -rq projects/bitbake/ projects/poky/bitbake/ | grep -v '\.git'
Only in projects/bitbake/: MANIFEST.in
Only in projects/bitbake/: TODO
Only in projects/poky/bitbake/bin: bitbake-runtask
Only in projects/bitbake/: classes
Only in projects/bitbake/: conf
Only in projects/bitbake/lib/bb: fetch
Only in projects/poky/bitbake/lib/bb: shell.py
Only in projects/bitbake/: setup.py

Those changes doesn't look like stabilization buffer.. which is fine we don=
't need=20
bigger diff between oe-core repo and poky copy, smaller would be nice.

And "dangerous" changes are stopped to oe-core AFAIK, see e.g. my 13 pendin=
g patches...

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--XMCwj5IQnwKtuyBG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk97KPAACgkQN1Ujt2V2gBzIhwCfYd7Q0jmTralWlWoy8psMZHXF
A0YAn1C3mrJGQCQltbk83HXDAjOix0XS
=K10U
-----END PGP SIGNATURE-----

--XMCwj5IQnwKtuyBG--
