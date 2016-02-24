Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6986AE00D64; Wed, 24 Feb 2016 08:38:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14F3EE00D09
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 08:38:10 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id g62so280482211wme.1
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 08:38:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=CX69N6zhSFV5jz38lCk3rosYqLNhXsRec6yNrbAziss=;
	b=EgmxXeDNU1CpZ+dKVqaH+jE76KvG3XXeoO9VZOdSkqYqOVJCF7fimuEsbJuDKg4tIj
	6p3nO9DrnAmLdDJty5HZhOiU4REGO5bS3LdjdDaLdzUKEn1gmRxAK1at6ZFTqw9g7sk3
	BBMeOgJF/c3mGNgxqfcdUfhiF4Wtfa3FxuOrhaKEZkg9Aa6LJGTZ4w2NM3WL9gZ4b40l
	NG+1M4Wi58PUcJMwZbEHqxsoOf4d+9JreXCth7oj2pvCVbYqsnZ27x/UZ654+zqwYNdg
	JUy/ooEY0GNsl3SsNZ5L4d2LszA5BUrK3x3JR5eN5zWbpqgc40r7E+kD7cCew7bA7PHt
	vC1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=CX69N6zhSFV5jz38lCk3rosYqLNhXsRec6yNrbAziss=;
	b=Xr4LyqEYmVaZ/k2cctYBbUz2GDOtKDydDX/ZTKXUpPeX2mJ9TLkGKkcPt7La/apmVP
	yUpvLJp0ZIYw9pJDjOUU2F8jRPh7/SK0EKbOecPpzg1uIHv51OP4mdi7BfNg/h8Rk5bJ
	TceXAcoaD+hl/zVteDd0jc7IM6GOCllK+T5TQuhNZsBwa/K5qA3lToLbF/Sd7Yav9CrU
	ZzRfungZ3c6c5JGwTdFqNZVkw1qKy2DJ1jgsFKJYiK/zkVAsRCwU5io9Wf22WDdIur6H
	QUbdJSg6HBy0EELV9W2ESd5kbeTT71KORAxYKgjiGxYUAqnI549DZfyoKjJeSwJ0+P3L
	NJrQ==
X-Gm-Message-State: AG10YOTcPS8WkSaNeRCLO+2sYoQLAVmGHPzu/botN7Jv/q9MwqRqqSpsBF6uv1ThD/+Gcg==
X-Received: by 10.194.3.110 with SMTP id b14mr40533673wjb.116.1456331889727;
	Wed, 24 Feb 2016 08:38:09 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	fv6sm3825458wjc.12.2016.02.24.08.38.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 24 Feb 2016 08:38:08 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 24 Feb 2016 17:39:15 +0100
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <20160224163915.GG2560@jama>
References: <EC7BC1CD2E085743BB2AE634252C39C171A8EE@server.exchange.local>
	<CAMKF1srvkpRBAQHfuPPTLdFtZEaRHNDeL39kWP-RqEWqJFcHbg@mail.gmail.com>
	<56CDD400.8090805@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <56CDD400.8090805@linux.intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: : git tag and PV variable
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
X-List-Received-Date: Wed, 24 Feb 2016 16:38:12 -0000
X-Groupsio-MsgNum: 28602
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="t4apE7yKrX2dGgJC"
Content-Disposition: inline

--t4apE7yKrX2dGgJC
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 24, 2016 at 06:02:08PM +0200, Alexander Kanavin wrote:
> On 02/24/2016 05:35 PM, Khem Raj wrote:
> >
> >     I have this command in my qmake pro files:____
> >
> >     VERSION =3D $$system(git describe --abbrev=3D0 --tags)____
> >
> >     __ __
> >
> >     I would like to have the package manager follow the tag versioning.=
____
> >
> >     __ __
> >
> >     Which means I would like to have something like:____
> >
> >     PV =3D "git describe --abbrev=3D0 --tags"____
> >
> >     SRC_URI =3D "${STUDIEL_GIT}/core.git;protocol=3Dfile;tag=3D${PV}"__=
__
> >
> >     __ __
> >
> >     It does not work for sure. What is the correct way to do this ?
> >
> >
> > =E2=80=8BSRC_URI is required by fetcher and there is nothing to git des=
cribe
> > before it is fetched.=E2=80=8B
> > so thats your problem.
>=20
> It's possible however to write an external script that updates the PV=20
> version in the recipe, but it needs to be run outside of bitbake.

We already have 2 bbclasses to do that
meta-openembedded/meta-oe/classes/gitpkgv.bbclass
meta-openembedded/meta-oe/classes/gitver.bbclass

there were some plans to get one of them to oe-core, but IIRC it was
decided to create support for this in bitbake fetcher, I'm not sure how
far it went with actual implementation.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--t4apE7yKrX2dGgJC
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbN3LIACgkQN1Ujt2V2gBwXBQCeMEW7kllBe/rsDq84gLm+Dl1R
iDoAnRQ5oA3dV0toT9aOs0qLTTiHsCOp
=x6lg
-----END PGP SIGNATURE-----

--t4apE7yKrX2dGgJC--
