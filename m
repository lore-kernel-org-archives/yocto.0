Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73294E00A2F; Mon,  2 Jun 2014 16:03:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.170 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f170.google.com (mail-we0-f170.google.com
	[74.125.82.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CFEE00985
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 16:03:08 -0700 (PDT)
Received: by mail-we0-f170.google.com with SMTP id u57so5972492wes.29
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 16:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=d6JDNeHtd4n2wj0adFav7yeyXkuLwnDMCpqwzYz/s9k=;
	b=rQExpia2Jkn+Doisw2nmwYaVt4SUiQ5KFng9p8XlA5FnPbI/u6K0U91ug82F3f4mvg
	02n2jFFBYIzIXB6DnTLuqlKxa8Bpn0tvTBOJJaonpOL66qPnLStfTWc8VKv9f6qaYKHf
	MXFNEqbU79bxLe8tEw9HFvCC4psOXkz1upbzNOjZ2L/i1d8qV4YmOaVEqjlH8aOIWJxM
	4JFqU+xhgw6QsyuOt582vuLkHJp9mCpjj7wERdKUXM2QVoq3ke8bGrLQJsqNr+3p7itx
	RjTSQb21+NY9AHJ85e76UKwM/W1xxLk2Cf06c18h6+7+ujVwOZ6daCkehcNPUqOinoat
	CAIg==
X-Received: by 10.194.60.49 with SMTP id e17mr21358195wjr.7.1401750187004;
	Mon, 02 Jun 2014 16:03:07 -0700 (PDT)
Received: from gmail.com (ygg.betafive.co.uk. [5.9.90.21])
	by mx.google.com with ESMTPSA id
	hi6sm38942359wjc.32.2014.06.02.16.03.05 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Jun 2014 16:03:06 -0700 (PDT)
Sender: Paul Barker <paul.betafive@gmail.com>
Date: Mon, 2 Jun 2014 23:03:04 +0000
From: Paul Barker <paul@paulbarker.me.uk>
To: Insop Song <insop.song@gmail.com>
Message-ID: <20140602230303.GH7521@gmail.com>
References: <CACzyEJ-RYx+jw9Brqf5kGDivLFJGpD2ZWDRyMbqES=VsTNrWcQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CACzyEJ-RYx+jw9Brqf5kGDivLFJGpD2ZWDRyMbqES=VsTNrWcQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto and jenkins]
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
X-List-Received-Date: Mon, 02 Jun 2014 23:03:17 -0000
X-Groupsio-MsgNum: 19890
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LZFKeWUZP29EKQNE"
Content-Disposition: inline

--LZFKeWUZP29EKQNE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 02, 2014 at 03:38:43PM -0700, Insop Song wrote:
> All,
>=20
> I've been building yocto using jenkins.
>=20
> I want to include yocto's build environment variable "BUILD_NUMBER" to
> yocto's kernel.
>=20
> 1, I've tried this in one of my conf file, add
>=20
> GS_SDK_VERSION =3D "GS-SDK-V1.5-${BUILD_NUMBER}"
>=20
> But ${BUILD_NUMBER} is not expended
>=20
>=20
> 2, I've looked at Keon's example from
> https://git.linaro.org/openembedded/jenkins-setup.git
>=20
> I've put the following in conf/local.conf
>=20
> JENKINS_BUILD_NUMBER =3D "`echo ${BUILD_NUMBER}`"
>=20
> Then add GS_SDK_VERSION =3D "GS-SDK-V1.5-${JENKINS_BUILD_NUMBER}"
>=20
> It still doesn't expand.
>=20
> So my question is
>=20
> - how to include environment variable to yocto's running?

As a guess, bitbake is ignoring the value of the BUILD_NUMBER environment
variable. You can add the variable to BB_ENV_EXTRAWHITE but you need to do =
so
outside of bitbake as the value needs to be set when bitbake starts
(BB_ENV_EXTRAWHITE is an environment variable).

Googling BB_ENV_EXTRAWHITE should provide more information.

--=20
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

--LZFKeWUZP29EKQNE
Content-Type: application/pgp-signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2.0.22 (GNU/Linux)

iQEcBAEBAgAGBQJTjQKnAAoJEBwoJlo7UPQDFLMH/jJq1nJFwopBDQ7tZcsaayvy
4lN+1f3vuAmpwKq5j/OllqXYidf7S+AUsqNyFBw+o5YRtCYx+W63ZT/7+xDuwu3a
Heyh+NgU6PmZF3l9+JxftbLAGIwV+bhsbHDsXOBuw8qxFx7uNqH81JnASbQ/jKqM
i6aMQXfKBTf3pTGCxV5rOZsN5m7EqSK9vdonfqHnthYtm1qN4Dp7tigdirfCZ851
O58Qm1T2bj9z7yrJTtJ96mIUNLClwVIGBVpPkLyk2C6aeb2Wp0hB5UDTg70tNefF
dOTuZRdUMz5puSzRmNATUcu/jr/r1wsSv5Fp6iwD/7JP7JrzowURJxYLrEcbgIQ=
=TdPp
-----END PGP SIGNATURE-----

--LZFKeWUZP29EKQNE--
