Return-Path: <martin.jansa@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF181E00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 12:15:30 -0800 (PST)
Received: by mail-pa0-f48.google.com with SMTP id fa1so2511893pad.35
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 12:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=YMNkT1lMKP2TYRv/hSn67Hy7ay670lG0D0/pkgHCK+Q=;
	b=AxydqByPJ4l7mfuIUJPlV7fv6h5M7HmLpR849IPQe5DQdl2tKBrFfZloJmIrqk484c
	yEN7qjcQ4Wq5zdiUZOm0h2c4rJWwkyMssJsiRczLOQWpHtXxqE2ul8NU+V9bHlVj5mOJ
	W+U6QVEfE6EB8HSLhrDqyssH8C6Vxlp0iyOq7kullYjf1RBc0iM0L/IdbzbUg8cwIKV8
	xMjXPw6aZzWmuaVuC1bE8eaEbQU1yHFJ4Bn11248Yx0TFCkwQoiu4nfGMIzvOXrb3/KX
	sMA8O2FOPERlYJ0NIzZkNQqDNgpUzpXQkjjztWhVd2kRHJ480H8xuVkcX192rfJeTnmD
	vNIA==
Received: by 10.68.135.133 with SMTP id ps5mr18463806pbb.132.1355516130775;
	Fri, 14 Dec 2012 12:15:30 -0800 (PST)
Received: from localhost (ip-62-24-80-7.net.upcbroadband.cz. [62.24.80.7])
	by mx.google.com with ESMTPS id sb3sm2515592pbc.44.2012.12.14.12.15.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 14 Dec 2012 12:15:28 -0800 (PST)
Date: Fri, 14 Dec 2012 21:15:40 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20121214201540.GD8699@jama.jama.net>
References: <alpine.DEB.2.02.1212141442080.21542@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1212141442080.21542@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is distro_tracking_fields.inc actually used?
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
X-List-Received-Date: Fri, 14 Dec 2012 20:15:31 -0000
X-Groupsio-MsgNum: 11111
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="+SfteS7bOf3dGlBC"
Content-Disposition: inline

--+SfteS7bOf3dGlBC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 14, 2012 at 02:43:08PM -0500, Robert P. J. Day wrote:
>=20
>   from https://wiki.yoctoproject.org/wiki/Distro_Tracking
>=20
> "The Distro Tracking Fields
> (meta/conf/distro/include/distro_tracking_fields.inc) is a location
> for sharing information about the status of recipes and tracking
> version information. Not all of this information can be generated
> automatically (yet), so the manual editing is needed."
>=20
>   i don't see that file so what's the story?

Why don't you use git log if you're interested in stories?

git log -- meta/conf/distro/include/distro_tracking_fields.inc
commit e8808c85a6bba8422cd82631b2bbc367543e4cdd
Author: Saul Wold <sgw@linux.intel.com>
Date:   Tue Jun 12 07:03:27 2012 -0700

    distro_tracking_fields: move to meta-yocto as seperate files
   =20
    We are going to take a phased approach of breaking up the
    distro_tracking_fields, first is to remove it from oe-core,
    then create new files in meta-yocto.  We are doing this because
    the distro_tracking_fields is getting unweildly and some of
    the data can be part of a burn down list instead continually
    stored, thus it will get split up.
   =20
    Signed-off-by: Saul Wold <sgw@linux.intel.com>
=2E..

=2E/meta-yocto/conf/distro/include/upstream_tracking.inc

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--+SfteS7bOf3dGlBC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAlDLiOwACgkQN1Ujt2V2gBxvlgCgsk8kOPLTL0s5K4wJr+0WQjF2
JJgAn15bvdDYBiouvWsTmYOYwQ5qmJW+
=d+t3
-----END PGP SIGNATURE-----

--+SfteS7bOf3dGlBC--
