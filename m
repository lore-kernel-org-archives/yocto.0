Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38380E0073D; Thu, 28 Jan 2016 09:23:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EB12E00444
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:23:22 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id r129so34872975wmr.0
	for <yocto@yoctoproject.org>; Thu, 28 Jan 2016 09:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=2WHLEh3z0HLvsS7OqF2uQocqyH43Q0TfgMyBZe3jGS4=;
	b=OWKkB+ZUZecsoe7Kn77EXKN+DTLSqDP3uZpf7otNJHYmHkwYao7AIvx0kvCJeUpXzX
	Uk0Cqy5DksQjicrUjz0i53jgpzIUYNS3XLUTvf0NOrlzmLzzynAYMWDEpweKTUwelk6S
	mM5Ef2dCQLzOt4q77khzKQ4iIOxOKs3SYyKc3IMLRB6HuFgl4p/qP61XZ2cHu5wzaim6
	hTNJTO5pC4E7wSRKzJ0sasyqUjbDipw0olRZkJgYex8EzdNnLwQuFMDQosNruhYD1zke
	TUFZIAYjqQVM1LVY48CdYRwlPDgkaGxwrKMI0K2ZFUhp4bV7DH0XnO86p6hYc9prPui8
	IQKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=2WHLEh3z0HLvsS7OqF2uQocqyH43Q0TfgMyBZe3jGS4=;
	b=G1S8ib3NDKZ5XJXvTjV01JgE6ahN1E9Tl1Y45svl6rg6Byn1num9Slvn9VTFLkrk2N
	BaMB4Zxm8qjiClOTDAqZtkeoNS6tJNJIuDJkN1YeeJh5DWpGAQHFowyymzKVJFfIqI/f
	2zlxm1uWmwMTi1yCcmYZ98e2pyj4C7CLzu2Ucjgau2EEvtv6FkJakRwBm7dBbyTCTgYe
	u91czQQpXowIMIsZ1GuUXEyV5AOaInHb0GuBAYAn6GA+9ToqG+I2RL/5SIuKkG0XgQw+
	iTQ9jKW016ZFVrMvP3uUkdJwz+/QL3bP2AtPHE9LVNVMVETCe5QiK9/97gyQs1UcbWzD
	yhCA==
X-Gm-Message-State: AG10YOSx/ruWmI4IWzrUapKfwgfvbmrOFiey8kDmKnF5ut3f+bWYqZm6LG75vOPv14p6lA==
X-Received: by 10.28.99.69 with SMTP id x66mr4457949wmb.10.1454001801651;
	Thu, 28 Jan 2016 09:23:21 -0800 (PST)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id
	193sm3792215wmg.16.2016.01.28.09.23.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Jan 2016 09:23:20 -0800 (PST)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Thu, 28 Jan 2016 18:25:39 +0100
To: Ross Burton <ross.burton@intel.com>
Message-ID: <20160128172539.GB2574@jama>
References: <1454000855-26774-1-git-send-email-ross.burton@intel.com>
MIME-Version: 1.0
In-Reply-To: <1454000855-26774-1-git-send-email-ross.burton@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][yocto-autobuilder] nightly-world-lsb: blacklist qwt
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
X-List-Received-Date: Thu, 28 Jan 2016 17:23:24 -0000
X-Groupsio-MsgNum: 28135
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="WYTEVAkct0FjGQmd"
Content-Disposition: inline

--WYTEVAkct0FjGQmd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 28, 2016 at 05:07:35PM +0000, Ross Burton wrote:
> qwt (from meta-qt4) doesn't build without errors but gets pulled into wor=
ld
> poky-lsb builds.  Until this is fixed, blacklist it.

Why not set INSANE_SKIP to make it more specific?

> Signed-off-by: Ross Burton <ross.burton@intel.com>
> ---
>  buildset-config.controller/nightly-world-lsb.conf | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/buildset-config.controller/nightly-world-lsb.conf b/buildset=
-config.controller/nightly-world-lsb.conf
> index 7341f6c..df08e8d 100644
> --- a/buildset-config.controller/nightly-world-lsb.conf
> +++ b/buildset-config.controller/nightly-world-lsb.conf
> @@ -17,7 +17,7 @@ steps: [{'SetDest':{}},
>          {'CheckForWorldLsb':{}},
>          {'CreateAutoConf': {'machine': 'qemux86', 'SDKMACHINE' : 'x86_64=
',
>                              'buildhistory' : False, 'multilib': True,
> -                            'atextprepend': 'QTDEMOS_remove =3D "qmmp"\n=
',
> +                            'atextprepend': 'QTDEMOS_remove =3D "qmmp"\n=
PNBLACKLIST[qwt] =3D "already stripped errors"\n',
>                              'distro': 'poky-lsb'}},
>          {'CreateBBLayersConf': {'buildprovider' : 'yocto'}},
>          {'BuildImages': {'images': 'world'}},
> --=20
> 2.6.4
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--WYTEVAkct0FjGQmd
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlaqTxIACgkQN1Ujt2V2gBxZcQCdEEBd5b7qHpqv2zuu+6rELP0g
xbEAmwSiQ+HTViHSvTJnea2GmQ+1OJuK
=h14J
-----END PGP SIGNATURE-----

--WYTEVAkct0FjGQmd--
