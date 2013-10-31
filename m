Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24CB7E017D5
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 13:32:56 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id r16so1690760ead.3
	for <yocto@yoctoproject.org>; Thu, 31 Oct 2013 13:32:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=xgF66VA/rN0p0F0y/ZilfItNPuvbhe9DX5S9YSiSwD0=;
	b=0h7h9/ISgEfJkCpK7z8SECPlN4FzXsEhtbt/IntJHJjm3BTIUG/bJkS6R84HNxuKvU
	MemExsNw6vm28atBYAc6RhE/I3RpMhzrEv7neuJEZnKMx7bYOrEPKvW7vOO/3rdHn2Dg
	zlB7DgpqNX0IojCoAKvgz2/ypr/esK3wvORNF04s+Yaj/TfP6zsE2aAiD/cX3vROAXFI
	MYbicc3J2542ilxFzsnqDWTuW1F+sATZ6eD92kUHBLJqApRaBNEczz+sOXLkdRDH5I/r
	UrtHVtjM5E1WVPo0hRwpmUXSdLpHdWB8/v7QKS2doDo29a/YAkoCHwkkWSDP41Oy1pYp
	+Jig==
X-Received: by 10.14.42.6 with SMTP id i6mr4861121eeb.65.1383251575663;
	Thu, 31 Oct 2013 13:32:55 -0700 (PDT)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107]) by mx.google.com with ESMTPSA id
	bn13sm13409456eeb.11.2013.10.31.13.32.54 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 31 Oct 2013 13:32:54 -0700 (PDT)
Date: Thu, 31 Oct 2013 21:32:57 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Leo Schwab <lschwab@sensity.com>
Message-ID: <20131031203257.GK32015@jama>
References: <CALb2248JBMiWJJ8ppDBhV+D15rArsg5VxTnW7OAjwUi76U9VgA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALb2248JBMiWJJ8ppDBhV+D15rArsg5VxTnW7OAjwUi76U9VgA@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Adding Custom Files to Build
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
X-List-Received-Date: Thu, 31 Oct 2013 20:32:59 -0000
X-Groupsio-MsgNum: 16865
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="RUqJLqMNe5u4kDWT"
Content-Disposition: inline

--RUqJLqMNe5u4kDWT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 31, 2013 at 01:28:27PM -0700, Leo Schwab wrote:
> This may seem rather basic, but something that I haven't been able to
> find any clear discussion on is how to add or modify files in the
> final rootfs image.
>=20
> We have customized versions of /etc/network/interfaces and
> /etc/wpa_supplicant.conf, with more to come.  Right now I've been
> adding them by hand to the SD cards, but I would prefer they were
> added to the rootfs and the .sdcard images as part of the build.
>=20
> I briefly considered creating a .bbappend file to modify the build for
> the wpa_supplicant.bb recipe, but it turns out that
> /etc/wpa_supplicant.conf itself comes from a custom file inside the
> recipe, and it wasn't at all clear how to hook in or override that.
>=20
> I also get the impression that writing a recipe that simply copies
> stuff to final image will get me yelled at by the build system, since
> I'm overwriting files already provided by another recipe.
>=20
> Can anyone point me in the right direction?

Creating .bbappends is the right direction, you just need to read a bit
more docs (hint: FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:")

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--RUqJLqMNe5u4kDWT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlJyvnkACgkQN1Ujt2V2gBzDtwCfShmRyYF1UHeaflNhkE3imaDk
TuAAoISLS+3ab/iXBhaUc7Ks2y4BqHtz
=1gxo
-----END PGP SIGNATURE-----

--RUqJLqMNe5u4kDWT--
