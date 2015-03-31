Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A681FE0092E; Tue, 31 Mar 2015 10:26:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62A99E00837
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 10:26:08 -0700 (PDT)
Received: by wgbdm7 with SMTP id dm7so27129082wgb.1
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 10:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=u+i0STsWHlAU4C/XmCDYIASSP5sC3b4/3eT62BX9tnA=;
	b=wEzIOqGdboQ/POSzTAOOLTEREHpxyh9KcrPIJ7byzWp8QcWCkq1azooZlJP7MzhcUW
	553j3+SgubrCXG2QYNIGTA2khSUViErHDMJfVk+zBmaASLhP6ra00Tu6062DRaWalW6K
	c+fHmiSwRMcTcYI54COR2xOawoGgluTOFKKl+yrEET9MFuKI67H5I2dROSeHGlHlBAlb
	t6bE1xLTm4xPTGQfgjQN1SuhNVZcA8xpzT+//BZLFWs97G/8U2wlC+RvvcpHtAd4JSyd
	MCpky4Y7e5WvA+wdPIKmxYgXbVCdGucBJaNsX3m15qaQ7uCEJxoBD6ttfJk5KJdW2ji/
	NkKQ==
X-Received: by 10.194.211.104 with SMTP id nb8mr77240487wjc.51.1427822766232; 
	Tue, 31 Mar 2015 10:26:06 -0700 (PDT)
Received: from localhost (ip-89-176-104-3.net.upcbroadband.cz. [89.176.104.3])
	by mx.google.com with ESMTPSA id
	ed14sm3262844wic.11.2015.03.31.10.26.04
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 31 Mar 2015 10:26:04 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Tue, 31 Mar 2015 19:26:28 +0200
To: openembedded-devel@lists.openembedded.org
Message-ID: <20150331172628.GJ14928@jama>
References: <1427796186892.42571@tataelxsi.co.in>
MIME-Version: 1.0
In-Reply-To: <1427796186892.42571@tataelxsi.co.in>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] tip and cu utility
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
X-List-Received-Date: Tue, 31 Mar 2015 17:26:11 -0000
X-Groupsio-MsgNum: 24251
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="07FIeBX8hApXX6Bi"
Content-Disposition: inline

--07FIeBX8hApXX6Bi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 31, 2015 at 10:03:07AM +0000, PRAVEEN KUMAR R wrote:
> Is there any existing package that provide tip and cu utility ?

http://layers.openembedded.org/layerindex/branch/master/recipes/

>=20
>=20
> http://man.cx/TIP(1)?
> ?
>=20
> --=20
> _______________________________________________
> Openembedded-devel mailing list
> Openembedded-devel@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-devel

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--07FIeBX8hApXX6Bi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlUa2MQACgkQN1Ujt2V2gBzkKQCgmnWbYRn+V69B+VORCHB5yVfM
UJ8An22VOOXPNkoIiXXEP9YEEav8IWEX
=RM0d
-----END PGP SIGNATURE-----

--07FIeBX8hApXX6Bi--
