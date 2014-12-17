Return-Path: <pbarker@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2969AE00521; Wed, 17 Dec 2014 10:37:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 546 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Dec 2014 10:37:06 PST
Received: from crash.betafive.co.uk (crash.betafive.co.uk [37.187.124.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0616AE002F9
	for <yocto@yoctoproject.org>; Wed, 17 Dec 2014 10:37:06 -0800 (PST)
Received: by crash.betafive.co.uk (Postfix, from userid 1000)
	id 142AC3E1E82; Wed, 17 Dec 2014 18:28:40 +0000 (GMT)
Date: Wed, 17 Dec 2014 18:28:40 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Message-ID: <20141217182839.GA5250@crash.betafive.co.uk>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDB5625DA@MSXBEBVT12.planar.net>
MIME-Version: 1.0
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FDB5625DA@MSXBEBVT12.planar.net>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Debugging opkg installs
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
X-List-Received-Date: Wed, 17 Dec 2014 18:37:19 -0000
X-Groupsio-MsgNum: 22666
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="YiEDa0DAkWCtVeE4"
Content-Disposition: inline

--YiEDa0DAkWCtVeE4
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 08, 2014 at 10:17:37AM -0800, Matt Schuckmann wrote:
> I'm looking for some tips on debugging package install problems.=20
> Recently I've had a problem where edits to a pkg_postinst function in one=
 of my recipes was not getting run when rebuilding my image. The only way I=
 could get the pkg_postinst() function to run was to wipe out my complete o=
penembedded build/tmp directory and let it rebuild everything from scratch =
(and the sstate cache). I'd really like to understand what was going on her=
e. My guess is there was some sort of flag somewhere that was telling the o=
pkg to not run the postinst script for that package because it had already =
been done once.=20
>=20
> It would also be nice to know how to run opkg installs locally on my dev =
system to test out recipes but I haven't quite worked out the right tools i=
n place on my dev system and or what the right commands are.

Hi Matt,

I'm currently the maintainer of opkg so I can probably answer your question=
s.
I'm pretty busy at the minute though so sorry for the late reply.

If you want to run opkg with more verbosity you can add the '-V4' argument =
to
the opkg invocation to run at the highest verbosity level. Within OpenEmbed=
ded I
think you need to append this to self.opkg_args in OpkgPM::__init__ in
meta/lib/oe/package_manager.py to ensure the argument is passed when opkg is
invoked to install packages into the rootfs. There is an OPKG_ARGS variable
which can be set in local.conf and is referenced by the code which invokes =
opkg,
but arguments I've specified in OPKG_ARGS have not been correctly passed to=
 opkg
when I've ran builds. I've not had chance to debug why that variable doesn't
work though.

To install packages on your dev system you should be able to use the opkg b=
inary
created by the build of opkg-native. That should reside in
tmp-glibc/sysroots/x86_64-linux/usr/bin/ within your build directory, thoug=
h the
exact path may change depending on the libc used and the host architecture.=
 The
opkg binary may be called 'opkg-cl'. You'll need to setup an opkg configura=
tion
file for use on the dev system and I'd suggest you do this by copying the
contents of /etc/opkg/*.conf from your target system into a single conf fil=
e on
your dev system. You can pass '-f <path to opkg.conf>' to opkg to instruct =
it to
read from this new configuration file.

That should get you started, any further questions just ask.

>=20
> Thanks,
> Matt S.=20
>=20

Cheers,

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--YiEDa0DAkWCtVeE4
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.12 (GNU/Linux)

iQEcBAEBAgAGBQJUkctXAAoJEBwoJlo7UPQDuBQH/16BTN+ZM+Mi0MiC+J9Zclpo
U+uyrVQjfVQterLi8qi0JsCeLoXJz8veJoqFPDbXrn83JZbE6j2CbICsEccf1mBO
ZUjXRnQZd7a/owcFygn0KomG4GKWZnDVJbfN6aorPomFf7i4yHysae864S9bq8HP
Jabg9IZhXcbTByKdiIrX0smxh1WEN/2vhYCA2WyfDU5p3nk0XyAUlPTJRiGv+6VV
NtlgSfoGvnn6LLBVwDlEciZ9LtBFybEDVPkXaXnXSu693MbUhl8fGS9AVwjSoGvK
uOE9rl4zrKlhRlId4aGb/p9bjXlw12c7zX3NmNZM1iUOOUQHcl2i28rFpDHI7kA=
=1Dpw
-----END PGP SIGNATURE-----

--YiEDa0DAkWCtVeE4--
