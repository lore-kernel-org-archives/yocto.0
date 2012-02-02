Return-Path: <martin.jansa@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DAA8E00595
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 23:22:20 -0800 (PST)
Received: by eaai11 with SMTP id i11so962841eaa.35
	for <yocto@yoctoproject.org>; Wed, 01 Feb 2012 23:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=PShS5q+U+pX/yRShRhs7gComS3+HVPxpvRHPTNQaJ3U=;
	b=LwsVqVaT2FsXffV8HpMWNLyC/9l11x/k/XvAt12XordNEfuoEZo/dK3TEkr40o2aWf
	dt0uZQMCc2X1JpuIL5sYO4Abh5ZlKjzg5RbfANTW/lcL/FpZaHXXORaEgS5/qczjYkcq
	/dufoqsUlHedDrQ4Lk7GtlkQKENcgjL/m/o8c=
Received: by 10.213.28.75 with SMTP id l11mr303525ebc.47.1328167338690;
	Wed, 01 Feb 2012 23:22:18 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id y12sm6040952eeb.11.2012.02.01.23.22.17
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 01 Feb 2012 23:22:17 -0800 (PST)
Date: Thu, 2 Feb 2012 08:22:16 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Message-ID: <20120202072215.GA3697@jama.jama.net>
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<6c598896584af47478c75ec08f3b4e8fd954b5fb.1328135056.git.dvhart@linux.intel.com>
	<4F29BF45.8060008@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F29BF45.8060008@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
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
X-List-Received-Date: Thu, 02 Feb 2012 07:22:20 -0000
X-Groupsio-MsgNum: 4584
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="xHFwDpU9dbj6ez1V"
Content-Disposition: inline

--xHFwDpU9dbj6ez1V
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 01, 2012 at 02:40:05PM -0800, Joshua Lock wrote:
>=20
>=20
> On 01/02/12 14:26, Darren Hart wrote:
> > ranpwd is used to generate random strings of various types, including
> > passwords, UUIDs, and MAC addresses.
> >
> > Signed-off-by: Darren Hart<dvhart@linux.intel.com>
> > ---
> >   meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb |   23 +++++++++++=
+++++++++
> >   1 files changed, 23 insertions(+), 0 deletions(-)
> >   create mode 100644 meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
> >
> > diff --git a/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb b/meta-=
sys940x/recipes-extended/ranpwd/ranpwd_git.bb
> > new file mode 100644
> > index 0000000..66fcc26
> > --- /dev/null
> > +++ b/meta-sys940x/recipes-extended/ranpwd/ranpwd_git.bb
> > @@ -0,0 +1,23 @@
> > +DESCRIPTION =3D "Random password generator"
> > +#SECTION =3D "utilities"
>=20
> We may as well delete this line, no?
>=20
> > +LICENSE =3D "GPLv2+"
> > +LIC_FILES_CHKSUM =3D "file://ranpwd.c;beginline=3D1;endline=3D11;md5=
=3D0e8585e19117526efedfaeb50c345d7a"
> > +PR =3D "r0"
> > +
> > +inherit autotools
> > +
> > +SRC_URI =3D "git://git.zytor.com/utils/ranpwd.git"
> > +SRCREV =3D "b62aab579e288715b82d5575befaa2b8ff210c2b"

What about PV? Do you really want just "git"?

> > +
> > +S=3D${WORKDIR}/git
>=20
> Variable assignments are usually quoted.
>=20
> S =3D "${WORKDIR}/git"
>=20
> > +
> > +do_configure_prepend () {
> > +	if [ ! -e acinclude.m4 -a -e aclocal.m4 ]; then
> > +		cp aclocal.m4 acinclude.m4
> > +	fi
> > +}
> > +
> > +do_install() {
> > +	install -d ${D}/${bindir}
> > +	install -m 0755 ${S}/ranpwd ${D}/${bindir}/ranpwd
> > +}
>=20
> --=20
> Joshua Lock
>          Yocto Project "Johannes factotum"
>          Intel Open Source Technology Centre
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--xHFwDpU9dbj6ez1V
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8qOacACgkQN1Ujt2V2gBy2jwCfTI0KmCGMfNcSM/VYXaGdEWA8
fpUAoLmyrbHE6OWfbzKoJKhGde6sP06c
=DTVL
-----END PGP SIGNATURE-----

--xHFwDpU9dbj6ez1V--
