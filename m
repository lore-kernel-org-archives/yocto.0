Return-Path: <martin.jansa@gmail.com>
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA052E00746
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 01:00:35 -0700 (PDT)
Received: by wgbdq13 with SMTP id dq13so1373660wgb.11
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 01:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=RxHMTRam/fs1aRD+IIoDydSsHV3lMdhznWBt0bAMDLg=;
	b=KZ8dSoqTM34uv8JIGIoOOoLkgGUdFaW5s+vVX2cUjJj6v6ZKOzb0pv4FCu/4lM4LSP
	OfAhZbQm5rQj2zOL4/VWXLRjhPy+vJePSkArrd6j6eziLPOHqyOQ+acai5P+jyac9zF4
	RJ5JXOnTFL9hmarP+TbfgAabts8+NwvSQDxraYl0hBexQ43j+t7qTssNxhC2kGqCtxXe
	PBzyLpVxVPUT/4O5Bbi4SLfjLCB5w1P27jO3WC5hKoW0+LizebYHj24bfbINI+22IM0z
	jIVrFz40jFrNoLAaS9t9go0fIjPh8q5MZUcpqzxjFBl6+32G05RYpEIh0P6P9/UoF0un
	kDvg==
Received: by 10.180.86.132 with SMTP id p4mr3458366wiz.15.1334217634523;
	Thu, 12 Apr 2012 01:00:34 -0700 (PDT)
Received: from localhost ([94.230.152.246])
	by mx.google.com with ESMTPS id ea6sm50578941wib.5.2012.04.12.01.00.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 12 Apr 2012 01:00:33 -0700 (PDT)
Date: Thu, 12 Apr 2012 10:00:22 +0200
From: Martin Jansa <martin.jansa@gmail.com>
To: Joshua Immanuel <josh@hipro.co.in>
Message-ID: <20120412080021.GA3661@jama.jama.net>
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
	<1334216100.2759.2.camel@babel.joshhome>
MIME-Version: 1.0
In-Reply-To: <1334216100.2759.2.camel@babel.joshhome>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Yocto Project <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Build time data
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
X-List-Received-Date: Thu, 12 Apr 2012 08:00:36 -0000
X-Groupsio-MsgNum: 6039
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline

--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 12, 2012 at 01:05:00PM +0530, Joshua Immanuel wrote:
> Darren,
>=20
> On Wed, 2012-04-11 at 17:30 -0700, Darren Hart wrote:
> > I run on a beast with 12 cores, 48GB of RAM, OS and sources on a G2
> > Intel SSD, with two Seagate Barracudas in a RAID0 array for my /build
> > partition. I run a headless Ubuntu 11.10 (x86_64) installation running
> > the 3.0.0-16-server kernel. I can build core-image-minimal in < 30
> > minutes and core-image-sato in < 50 minutes from scratch.=20

why not use so much RAM for WORKDIR in tmpfs? I bought 16GB just to be
able to do my builds in tmpfs and keep only more permanent data on RAID.

Cheers,

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--r5Pyd7+fXNt84Ff3
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.19 (GNU/Linux)

iEYEARECAAYFAk+Gi5UACgkQN1Ujt2V2gBwfdQCdEaBxitydfLu30CKcJf2XRR9H
glMAn3qSO6uyQbYIjSMKZUvrZUJBkvn8
=bEHD
-----END PGP SIGNATURE-----

--r5Pyd7+fXNt84Ff3--
