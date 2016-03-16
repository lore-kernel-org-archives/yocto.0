Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B77DCE00BB9; Wed, 16 Mar 2016 09:09:36 -0700 (PDT)
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
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F7C7E00B8C
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:09:34 -0700 (PDT)
Received: by mail-wm0-f48.google.com with SMTP id p65so79615320wmp.0
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 09:09:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=yVrAdTW1gF8Ly7EtLz2WAw9MK3We2nyzAHOXeEmi5d0=;
	b=pnBlFBS6yF+Zz9pL2je1wOnqAvNMrgnPO7ogPgSjb9yraNJDKh3XgTz1q7XwvKYLhl
	TQ70+qXtGkpTVQ03MCJO4oNdACrIixXF8BxtXkuRfOWIIBA1W6U7F1he1hcCsWU3DjDD
	WTP6acTCnC+5v6q4RpJvTBXkp3viRmYdqleTVmR3ZZqFUjnukfl5qpp5nzJnmHY7Yeci
	i8TiNVLKVqD/ywtM4XPnMy/MGPeAk7UowAbZ+DCVD7lsAzm7kVs1F4Gmm3YiMEWKysMB
	zoHUT+Q/AQB2q0bEp8EDtrtXqYz33plZ1X0RJzXYopzxllkXf25lEwjzOmaO/rTP/xc5
	XjHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=yVrAdTW1gF8Ly7EtLz2WAw9MK3We2nyzAHOXeEmi5d0=;
	b=ICmKy35iv2JWdyVFfLNmcabRtF71IGcS+qn/rM1v0060n7U+BFoZDbNgdjVPx0Iw60
	xk/qsDEzcgjCck38xcOwKXjoLknyNR5r/uYlwLYrWvVknlUEDRdsE+mxlmxxZgcegdxU
	WK9FOppbKwj9+iuUVroQhNsCue1n3QIHhq0CQnWIG5zJwx3PvhbiM9V9bNWSj13MIGgq
	A2y7IjDpKNpXWlA29CX5HkL8N0zADFoGnSLij3Bpnnesym79XKoWq3oJCJwCbV7z2Cku
	o2dTuNrw2dF3gD8Bs+RJ5rdvm8Z9cTTCGdx+XY1o4wXf0jOekoTpO+pehGX/EfPTOAns
	2ZFg==
X-Gm-Message-State: AD7BkJLQhjtD8qzT1N856KCUnadH81PTlHKe5bTsGuBZfcoGyc1I5fVwCMELkX6QVumjkQ==
X-Received: by 10.28.131.141 with SMTP id f135mr30349091wmd.33.1458144573798; 
	Wed, 16 Mar 2016 09:09:33 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by smtp.gmail.com with ESMTPSA id 8sm26330349wmk.13.2016.03.16.09.09.31
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Mar 2016 09:09:32 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 16 Mar 2016 17:13:08 +0100
To: Ashish Shrivastava <ashish.shrivastava@axis.com>
Message-ID: <20160316161308.GB2557@jama>
References: <1458140066928.8568@axis.com>
MIME-Version: 1.0
In-Reply-To: <1458140066928.8568@axis.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Not able to disable introspection in gstreamer
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
X-List-Received-Date: Wed, 16 Mar 2016 16:09:36 -0000
X-Groupsio-MsgNum: 29054
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="5I6of5zJg18YgZEa"
Content-Disposition: inline

--5I6of5zJg18YgZEa
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 16, 2016 at 02:54:27PM +0000, Ashish Shrivastava wrote:
> ?Hi,
>=20
>=20
> I am trying to build latest poky version from upstream but it was failing=
 in "gobject-introspection-data?".
>=20
> I disabled it with comments mentioned in:
>=20
> http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?id=3D8c14c=
746da1784c4bdaa621dde6fccd99e72ef1b
>=20
>=20
> by adding folloing line in config:
>=20
> MACHINE_FEATURES_BACKFILL_CONSIDERED =3D "gobject-introspection-data"
>=20
>=20
> Now gstreamer is throwing error for introspection.
>=20
>=20
> I am trying to disable it but with no success.
>=20
>=20
> Anyone who knows how to disable introspection in gstreamer would be of gr=
eat help.

Our gstreamer recipes are also failing even when COMBINED_FEATURES don't
contain gobject-introspection-data (I've used
DISTRO_FEATURES_BACKFILL_CONSIDERED because I want to disable it for all
MACHINEs).

I think it's because COMBINED_FEATURES conditional is used only to add
--enable-introspection in EXTRA_OECONF, but other changes like
introspection.m4 changes are done in all builds.

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--5I6of5zJg18YgZEa
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iEYEARECAAYFAlbphhMACgkQN1Ujt2V2gBwRagCcCvlSgRvjgHgEYDT/40a5s4qD
D+YAoKR86N47J2UK9Uw3qaPgDKIN+wEr
=RVWw
-----END PGP SIGNATURE-----

--5I6of5zJg18YgZEa--
