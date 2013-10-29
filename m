Return-Path: <martin.jansa@gmail.com>
Received: from mail-ea0-f181.google.com (mail-ea0-f181.google.com
	[209.85.215.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 421E0E017A0
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 05:00:22 -0700 (PDT)
Received: by mail-ea0-f181.google.com with SMTP id d10so2906974eaj.12
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 05:00:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=k+UhG7dnOdlpYpsUmzOmMrBDZwHMV8QPSjq360BlTA4=;
	b=c+6kuDTMuQ80SfA+/QrwyqsaJSph5SF2lxozSaAkXZBOoNJ+bSQgfwLd6Oq0E1ZhBG
	yw396dM674mfC2JbD3bjmE6F1cX3lGPcU1cSjLOfDojZn/otsHmGqA7MxCQVUGEnsyEz
	tAZm9JEd6Mhn1GHN0vlj6LhmBSa7ZTSWfl2VtwgBJfY3sKfNJ60mqe+hKS/Jo7kK0IDw
	X276rqjWjU2vBARWZbbsPaN6uJHv6tmmSnmuuyEPTsnXvgmu1g15JlcaJeonKDKYzOdd
	lEnV8sp6zEC6cHMj5rF9++W5RbCJxP3UlGwjyG2FTjXwaVvF8Imu1trw8OTVRYfF+V5I
	GEpA==
X-Received: by 10.14.88.132 with SMTP id a4mr7374775eef.60.1383048021533;
	Tue, 29 Oct 2013 05:00:21 -0700 (PDT)
Received: from localhost (ip-89-176-104-107.net.upcbroadband.cz.
	[89.176.104.107])
	by mx.google.com with ESMTPSA id a1sm69516491eem.1.2013.10.29.05.00.20
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 29 Oct 2013 05:00:20 -0700 (PDT)
Date: Tue, 29 Oct 2013 12:00:34 +0100
From: Martin Jansa <martin.jansa@gmail.com>
To: Hans =?iso-8859-1?Q?Beck=E9rus?= <hans.beckerus@gmail.com>
Message-ID: <20131029110034.GF3697@jama>
References: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFyqS9qh4GgseGVMVjYTo5jK5SURWVgDR5NdgoGv_Pw7q72kmg@mail.gmail.com>
User-Agent: Mutt/1.5.22 (2013-10-16)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SRCREV how is it supposed to work?
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
X-List-Received-Date: Tue, 29 Oct 2013 12:00:23 -0000
X-Groupsio-MsgNum: 16767
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="IvGM3kKqwtniy32b"
Content-Disposition: inline

--IvGM3kKqwtniy32b
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 29, 2013 at 12:46:18PM +0100, Hans Beck=E9rus wrote:
> Hi. I am wondering if we are using SRCREV wrong somehow.
> Is it expected that if we use SRCREV =3D "${AUTOREV}", that any changes
> to the remote should be automatically detected and downloaded/fetched?
> I can no see that this is actually what happens. Any changes made to
> the remote still need to be manually fetched or indirectly by stepping
> the recipe revision.
> Are we using SRCREV wrong or is this actually the way it is supposed
> to work? Also, is there some way to force a download to me made every
> single time by a recipe,
> irrespective of if the remote changed or not?

It's supposed to run git ls-remote while parsing to get latest revision
in remote repo and then rebuild the package because of SRCPV change in
PV, are you using something like:

PV =3D "1.0+git${SRCPV}"

?

>=20
> Thanks.
> Hans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--IvGM3kKqwtniy32b
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iEYEARECAAYFAlJvlVIACgkQN1Ujt2V2gBwGWgCfTwTDD9fOiFr33T3F2PUG+SYO
iQUAnRwjlaZfJ4jfzxvlzqeQqw6PqxJW
=SjtZ
-----END PGP SIGNATURE-----

--IvGM3kKqwtniy32b--
