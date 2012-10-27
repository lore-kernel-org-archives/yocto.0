Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22A52E0049B
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2012 03:58:30 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b45so1582635eek.35
	for <yocto@yoctoproject.org>; Sat, 27 Oct 2012 03:58:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=97TyITvCz44xiNR8S7l2E4ND0z93hDxX9z9Q1EqiuS0=;
	b=r8spHNBzBDzKL2THKhg+F45XY+nm1ovtsdqBMgPBwRlKJNPtHRQs0WU8dxxwZtd/V6
	1kpfdpBBwfhKV86YtYkr5CMy8zA04eKAKfvf5CjKpnkJgpkGkk248Rx75bBHtvwtDxM2
	+1J0Ja/CYON7DRkJ2vu7DO6TGVFxK51n2ShQdKt0x5yCpdXjb63TZq2C8tTwTCsNJVnw
	zt8aoP+s+VPH1ZsaxCtnoCblzsV/BP6XqEljeid+09H1Xa5ZiBLSS5CvgACLOl4qbN/f
	nSO0IKQJ+DfEJ1RLQ83ihSkFO2sYcuDJWJ5perXCMn0hcX02jnvG3pR2mV628F+R0CO1
	jT3w==
Received: by 10.14.179.6 with SMTP id g6mr41411052eem.46.1351335509328;
	Sat, 27 Oct 2012 03:58:29 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id k2sm8531232eep.15.2012.10.27.03.58.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 27 Oct 2012 03:58:28 -0700 (PDT)
Date: Sat, 27 Oct 2012 12:58:23 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Jean-Baptiste Reich <jeanbaptiste.reich@gmail.com>
Message-ID: <20121027105823.GA3391@jama.jama.net>
References: <CAEiadgU210YCP9tM7ZQNJxK6=W5DUZ9H5TLhFyTctXYu+mU4NA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEiadgU210YCP9tM7ZQNJxK6=W5DUZ9H5TLhFyTctXYu+mU4NA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Busybox configuration
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
X-List-Received-Date: Sat, 27 Oct 2012 10:58:31 -0000
X-Groupsio-MsgNum: 10331
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="h31gzZEtNLTqOjlF"
Content-Disposition: inline

--h31gzZEtNLTqOjlF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 27, 2012 at 12:50:07PM +0200, Jean-Baptiste Reich wrote:
> Hi
>=20
> I'm starting to use yocto and I would like to know if there is a standard
> way to modify busybox defconfig from another layer ?
> In fact I am creating a separated layer to build a custom image and I wou=
ld
> like to have some commands from busybox which are not set by default.
> Do I need to completely override the file or can I merge a modification ?

You have to add own complete defconfig and .bbappend.

Similar question on oe-core ML:
http://lists.linuxtogo.org/pipermail/openembedded-core/2012-October/031272.=
html

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--h31gzZEtNLTqOjlF
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlCLvk8ACgkQN1Ujt2V2gBxLcgCeMv22fnwvmXdAC3WFuG21Cu7l
B/YAn2ZlNObHjtIEg1RpI79eXSl4k1L6
=KOCD
-----END PGP SIGNATURE-----

--h31gzZEtNLTqOjlF--
