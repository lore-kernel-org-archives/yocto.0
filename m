Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E72CE00C0A; Mon, 19 Oct 2015 05:12:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B97FEE00C06
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 05:12:04 -0700 (PDT)
Received: by wicll6 with SMTP id ll6so2523814wic.1
	for <yocto@yoctoproject.org>; Mon, 19 Oct 2015 05:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=HLUEifYicC1W3ifGvcg+rWrsr1pzDU/a4cUeF5P0U6s=;
	b=krcZ3F9073+UHxFiRSRp1KP6Bld1uJygjacdfUEQxCg/qUrK6P7HwkjePgL8j511R2
	IMOJtzYHo5DF1L0sAcRVc9fmiOiOxrDRbFmE/k6oYk5Z9PB3mWYTCtBJ9G6hA40/Zlgl
	9xoiwU2eDH1XWlPV9zBXeoPFhqZh6FTBeHJhWhlLX630J44GFmXMwrtyrA0EA4WUwpJl
	ZNF7eHSEm+oUb51MPIptgwkhJlEeUtBHHdhkDxyzQtX62D1mkOz5NctrwqvLHPa6CCm7
	lt0a0xfHEHbYRqOF+ikG1AWCsaZh4QwRYfzH2oIiFMv6gqv1qRbW65+v+nMsn73+/kUp
	yWPw==
X-Received: by 10.180.188.101 with SMTP id fz5mr21629062wic.3.1445256723247;
	Mon, 19 Oct 2015 05:12:03 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	nd9sm14763828wic.0.2015.10.19.05.12.00
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Oct 2015 05:12:00 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 19 Oct 2015 14:12:07 +0200
To: =?iso-8859-1?B?Suly9G1l?= OLIVIER <jerome.olivier@outlook.com>
Message-ID: <20151019121207.GC2549@jama>
References: <DUB125-W70B91D5FCA7A2A9CC289A78A3A0@phx.gbl>
MIME-Version: 1.0
In-Reply-To: <DUB125-W70B91D5FCA7A2A9CC289A78A3A0@phx.gbl>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Disable sstate-cache for one recipe
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
X-List-Received-Date: Mon, 19 Oct 2015 12:12:07 -0000
X-Groupsio-MsgNum: 26899
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="NKoe5XOeduwbEQHU"
Content-Disposition: inline

--NKoe5XOeduwbEQHU
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 19, 2015 at 10:18:41AM +0000, J=E9r=F4me OLIVIER wrote:
> Hi everyone,
>=20
> I use yocto 1.7.2. I have some problem with sstate-cache.
> I would like to disable totally sstate_cache for only one recipe. Is that=
 possible?

You can for oe-core and apply
http://patchwork.openembedded.org/patch/17039/

>=20
> Thank you,
>=20
> --=20
> J=E9r=F4me OLIVIER
> TEL : +337 52 46 29 25
> @ : jerome.olivier@outlook.com 		 	   		 =20

> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--NKoe5XOeduwbEQHU
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlYk3hYACgkQN1Ujt2V2gBzoYgCcCBC9y/w7ndPcNHdg9UArZEvd
AeYAoLp+ItkTTmvbzO9tskMqhBxSNWHA
=GARo
-----END PGP SIGNATURE-----

--NKoe5XOeduwbEQHU--
