Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50090E0174E
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 08:11:06 -0800 (PST)
Received: by mail-ea0-f173.google.com with SMTP id g10so3567976eak.18
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 08:11:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=DbycplyTgtBAWd9FGb6x4vJ+TFN4aSIH60j1Nz6cgUE=;
	b=minczrTamcMvVkR8hwySaLL4f4PyA8k+/aiPnpoAVKaVj9mv4YamVcu4IZidBWm95B
	mqcKgFggfWp8y0OlgtWOMOgvUgSLhAF/KFpAvif4d1B3CbdSSNnZw3zNDayjp9uiRmQj
	B5jrGUn7wnzoX6b452f/2NsSoLVI3ecTGNR57gMsay1C/vHy3aeUnLi5EaVpuuL3o9nX
	ZmJWUrM6MA4x9b3FthfYGgZDNdaiAYfPo1QfzkoiONc1h+quMk+evK2cyFXE6cLB76rw
	djfSXaZSzw6DPK9UyYU/koLbmH90xSHXO03IYJeWN29J0f4BDE+5BspAD8RjRLCEzoXL
	L3zQ==
X-Received: by 10.14.198.66 with SMTP id u42mr3415055een.80.1383581465056;
	Mon, 04 Nov 2013 08:11:05 -0800 (PST)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107]) by mx.google.com with ESMTPSA id
	u46sm48451144eep.17.2013.11.04.08.11.03 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 04 Nov 2013 08:11:03 -0800 (PST)
Date: Mon, 4 Nov 2013 17:11:12 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Hans =?iso-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Message-ID: <20131104161112.GE3684@jama>
References: <CAFyqS9pSWH5Lee1xTCKmj8gTLYrQRgk340a-UcYTjWsGj+wjfw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFyqS9pSWH5Lee1xTCKmj8gTLYrQRgk340a-UcYTjWsGj+wjfw@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-openembedded/meta-oe and busbox issues in 'dora'
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
X-List-Received-Date: Mon, 04 Nov 2013 16:11:07 -0000
X-Groupsio-MsgNum: 16942
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="CGDBiGfvSTbxKZlW"
Content-Disposition: inline

--CGDBiGfvSTbxKZlW
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 04, 2013 at 05:05:43PM +0100, Hans Beck=E9rus wrote:
> Hello. We get the below error when trying to build our image in Yocto
> 1.5 'dora'.
>=20
> ERROR: No recipes available for:
>   /home/poky/meta-openembedded/meta-oe/recipes-core/busybox/busybox_1.20.=
2.bbappend
> ERROR: Command execution failed: Exited with 1
>=20
> We use the 'dora' branch also in meta-openembedded.

Why are you using meta-openembedded from 'dora' branch when your oe-core
branch is 'master'?

Use the same branches for all layers.

> But busybox has been upgraded to 1.21.1 in Yocto. Is there some simple
> way to workaround this issue (besides removing the busybox recipe from
> meta-oe)?
> I.e is there some clean way to tell bitbake that it is expected that
> this specific recipe is missing?
>=20
> Thanks.
> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--CGDBiGfvSTbxKZlW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlJ3xyAACgkQN1Ujt2V2gBzNNACdGLWw3QXVFUe9UlTCUG3S3TYD
oOQAmgMAOgft2MTi3CFukkIW9VkeF254
=NecK
-----END PGP SIGNATURE-----

--CGDBiGfvSTbxKZlW--
