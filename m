Return-Path: <martin.jansa@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EC63E00593
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 02:30:06 -0800 (PST)
Received: by eekd4 with SMTP id d4so527761eek.35
	for <yocto@yoctoproject.org>; Fri, 27 Jan 2012 02:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=rNosZJwpy9/VADZDTsS0gajZuVFsQVLBJgs69SiKSCc=;
	b=u1N2es0rTD9nfRTGQXnfq95xS37A+7db7942CMBmVQMQNeTWGF4fbHLmzxkipwtDKD
	k7D7gbD42k0W23hhFsGvam0nHV35Aq3OUegtfOSbl1/Im4woh19Ny3VKRDNqDgZ+SxIi
	pKkQAeig7fwG6AV4Yv3ZwTHFJ1V+5/wXjOBCs=
Received: by 10.14.2.16 with SMTP id 16mr1993269eee.103.1327660204985;
	Fri, 27 Jan 2012 02:30:04 -0800 (PST)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id w46sm27724770eeb.0.2012.01.27.02.30.03
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 27 Jan 2012 02:30:03 -0800 (PST)
Date: Fri, 27 Jan 2012 11:30:02 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Message-ID: <20120127103001.GC3779@jama.jama.net>
References: <4F21FDEF.2010500@linux.intel.com>
	<4F220105.3080600@linux.intel.com>
	<4F220477.8030600@linux.intel.com>
	<20120127080849.GB3779@jama.jama.net>
	<1327659778.2964.16.camel@babel.joshhome>
MIME-Version: 1.0
In-Reply-To: <1327659778.2964.16.camel@babel.joshhome>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: New recipes not installing in core-image-minimal
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
X-List-Received-Date: Fri, 27 Jan 2012 10:30:07 -0000
X-Groupsio-MsgNum: 4451
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="kVXhAStRUZ/+rrGn"
Content-Disposition: inline

--kVXhAStRUZ/+rrGn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 27, 2012 at 03:52:58PM +0530, Joshua Immanuel wrote:
> Hello Martin,
>=20
> On Fri, 2012-01-27 at 09:08 +0100, Martin Jansa wrote:
> > > Perhaps, but it didn't fix this particular problem. Neither
> > > /usr/bin/ranpwd nor /etc/init.d/genmac appear in the rootfs.
> > > However, each still appears in their respective workdir/image:
> >=20
> > Are they in workdir/packages-split/genmac/etc/init.d/genmac
> > workdir/packages-split/ranpwd/etc/init.d/ranpwd=20
>=20
> I too have a similar issue when I try to include a manually constructed
> fstab file into the rootfs image. The file is available in the following
> locations
>      1. core2-poky-linux/${PN}-${PV}-${PR}/etc/fstab
>      2. core2-poky-linux/${PN}-${PV}-${PR}/packages-split/${PN}/etc/fstab
>=20
> but not in the final rootfs image. May be I am missing something
> trivial.

Maybe it depends on used package-manager bud I guess that at least
opkg will refuse to overwrite /etc/fstab provided by base-files by
/etc/fstab from your fancy PN and even if it allows it in do_rootfs,=20
then it's not good idea for image with online package management,
because your custom fstab will be overwritten as soon as base-files are
changed.

Why not .bbappend base-files and customize fstab there?

> Eager to know the solution on this thread.
>=20
> Regards
> Joshua
> --=20
> Joshua Immanuel
> HiPro IT Solutions Private Limited
> http://hipro.co.in



> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--kVXhAStRUZ/+rrGn
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.18 (GNU/Linux)

iEYEARECAAYFAk8ifKkACgkQN1Ujt2V2gBw82wCgo9BWR8/5ohXlScgoOtYa+OZ0
mzgAoK9+jhgni/XG/IYHyNszo7eKIzzZ
=UlwG
-----END PGP SIGNATURE-----

--kVXhAStRUZ/+rrGn--
