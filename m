Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8C03EE0071C; Sun,  8 Nov 2015 04:02:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA851E00343
	for <yocto@yoctoproject.org>; Sun,  8 Nov 2015 04:02:48 -0800 (PST)
Received: by wmec201 with SMTP id c201so52562554wme.0
	for <yocto@yoctoproject.org>; Sun, 08 Nov 2015 04:02:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=l03DujSIFjmG2MqkkjQz4JNme7vpfh9y272r6flp7OE=;
	b=C9CEIDufaZwmaPIcKdj1K9j7TovvDvu0Zydzrt+cUhInVF+vBsQ3+yBKU9UeIFOfOe
	C64n1iC9MsaZfWtOgwr39S5YIrUQ+kkHijGCba9i/Gs6aUd807hSsFTdYgkbwOxxGAJV
	jZe2ejVWRnD18IEn1V5qH1ovpb3B9UBqw6+lckMH2Sk5smPkciU9ub8ioDCbGqYE08Lb
	MQGvgqAO3OTvB8XY7pa9toOK6iykDWpM/3m5b44UkYXTCpDpAJC/N0VcjSyvMSEQN1Ma
	Ws5kWX6hcPpFk9cFP0yxdxiDL5LmMsfpMn5Kx2duW47goEAGsfKGVi7PXVJu8deGa7rF
	zpYA==
X-Received: by 10.28.129.82 with SMTP id c79mr1285624wmd.80.1446984167585;
	Sun, 08 Nov 2015 04:02:47 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	197sm8554386wmx.23.2015.11.08.04.02.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 08 Nov 2015 04:02:46 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Sun, 8 Nov 2015 13:03:01 +0100
To: allen.curtis@curtisembedded.com
Message-ID: <20151108120301.GA2546@jama>
References: <20151107015237.Horde.ATpewpTEwwDHYfMHj0c_6w1@box410.bluehost.com>
MIME-Version: 1.0
In-Reply-To: <20151107015237.Horde.ATpewpTEwwDHYfMHj0c_6w1@box410.bluehost.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: SVN based AUTOREV detection?
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
X-List-Received-Date: Sun, 08 Nov 2015 12:02:52 -0000
X-Groupsio-MsgNum: 27211
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="huq684BweRXVnRxX"
Content-Disposition: inline

--huq684BweRXVnRxX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 07, 2015 at 01:52:37AM +0000, allen.curtis@curtisembedded.com w=
rote:
>=20
> Hello,
>=20
> Is there a way to use the feature during development when you are =20
> working off trunk/HEAD?
>=20
> This doesn't work (obviously). Is it possible to pull the HEAD version =
=20
> in the recipe?
>=20
> -------------------
> PR =3D "r0"
> PV =3D "0.1+svn${SRCPV}"
>=20
> SRCREV =3D "${AUTOREV}"
>=20
> SRC_URI =3D =20
> "svn://project/trunk;module=3Dlibproject;protocol=3Dsvn+ssh;rev=3DHEAD;su=
bdir=3Dsvn"

try to drop rev=3DHEAD, setting SRCREV should be enough.

>=20
> -------------------
>=20
> TIA
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--huq684BweRXVnRxX
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlY/OfIACgkQN1Ujt2V2gBxBEgCffpqGLF+G8MZPqFt40cY6m2vD
FrEAn2j934oOZnDxvC/4Pu2VvZEp+JQk
=T7fj
-----END PGP SIGNATURE-----

--huq684BweRXVnRxX--
