Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 47EA5E006E9; Thu,  3 Nov 2016 12:09:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C74C1E00509
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:09:32 -0700 (PDT)
Received: by mail-pf0-f181.google.com with SMTP id d2so36378059pfd.0
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 12:09:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=vH28q73mqVvoclhiv4fQ9RqTuAppuKCnkDr68Fhvn0M=;
	b=K/p3ac24RtbmATRtMVUbASV9LQg7S/pxpM58BKJrNXafq2KNCbLtwrypTl6P3XrJGw
	CI1Yr2Jd1qJuWeKxwfLb4VdQkz2N1wWKcNvhsopa7rKxI3y9ODK9WXSLHMaV7PIdPcel
	X9l1EFNClqK+sl//K1/6xg+8a4WZmCmoAREgMHdiHfDkjEiyP7TKGzlAKyL7u582ZvUM
	kCKbM+606fpJXl+WKrsto6v2iN4XQZ5tZdmcCO98ymPsV9jr/+Sk2H3r6m6nhUsu99ez
	L211hiOkMblxdxLSCzKHOH5uBXGGGZwG/EG/Nk2OzeIouRr6uXy5ekuHLnm19qzTGkhx
	ky1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=vH28q73mqVvoclhiv4fQ9RqTuAppuKCnkDr68Fhvn0M=;
	b=AzBw9P/c/kAfhVtK/sn8m/t7/oHbxwBKKVop7ODD0CXHRXU0d3RJP6GEDtbPoTGJ1P
	mRck9RdyOlgUjAOx9wmUFCTiPgXXygWaNXzUN6whtPDtU2gcb5HaU20M314SLXFKm6gV
	H/YELQsnkh77lT9oG9lgqp5Ay++U66L06keYTScb7brXN5dHvEheCx5fcyZzfrBqM8vt
	GR5cOOXghq+BuLYg62cIS+IXzcDDpaSo8CtDQZV7fXTKeDAF5ybR0h+uaoqDCVvGboel
	r+R7Q4/GAlrycxbxoCjhaTFwW2w8kVBQS9FVsk9HzeENASEifLSRDK7ringGOO633AHX
	2YDw==
X-Gm-Message-State: ABUngvf86ZgGmCMQMH5pWdFpvR8gn/g9Tova2GPX9xm4kaHR/soGN1BUldq10THaXcg7Lw==
X-Received: by 10.98.63.1 with SMTP id m1mr5887153pfa.31.1478200172513;
	Thu, 03 Nov 2016 12:09:32 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:a08a:c533:b969:820?
	([2601:646:8882:b8c:a08a:c533:b969:820])
	by smtp.gmail.com with ESMTPSA id
	j63sm14473414pfj.70.2016.11.03.12.09.31
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 03 Nov 2016 12:09:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <356DF612-5CB8-4D89-92D8-0F7EDD7AF609@supercoders.com.au>
Date: Thu, 3 Nov 2016 12:09:26 -0700
Message-Id: <4C6E2DF7-BB83-428F-9A5C-2D1A6FDD0941@gmail.com>
References: <356DF612-5CB8-4D89-92D8-0F7EDD7AF609@supercoders.com.au>
To: Andrew Stuart <andrew.stuart@supercoders.com.au>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: Guide to how to build a minimal system
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
X-List-Received-Date: Thu, 03 Nov 2016 19:09:36 -0000
X-Groupsio-MsgNum: 32824
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B4D905A0-E260-467E-A6FB-8D3D356FBE01";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B4D905A0-E260-467E-A6FB-8D3D356FBE01
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Nov 2, 2016, at 4:02 AM, Andrew Stuart =
<andrew.stuart@supercoders.com.au> wrote:
>=20
> I want to build a minimal Nginx system that does nothing else but =
serve static files. Preferably with nothing else installed at all apart =
from network configuration via /etc/network/interfaces. Perhaps also =
optionally with ssh.
>=20
> Ideally I would be able to provide the HTML files that make up the =
website via an initramfs file.
>=20
> I=E2=80=99d like this to run on x86-64 on KVM.
>=20
> I=E2=80=99m looking for a guide that shows me the key steps to =
implement something minimal like this.  Does such a guide exist?
>=20
> I=E2=80=99ve watched several hours of Youtube videos on Yocto, I=E2=80=99=
ve read various getting started guides and spent several hours =
installing and building.
>=20
> Quite how to configure something down to minimal still is not clear.
>=20
> Can someone guide me please as to where to find such docs?

You can start by building core-image-minimal which should be a bare =
bootable system. So in your own layer write a recipe for your image
and seed it with

require recipes-core/images/core-image-minimal.bb

and then add IMAGE_INSTALL +=3D =E2=80=9Cnginx=E2=80=9D

then build upwards to whatever you need.

>=20
> One additional specific question - I can see that there is a web =
servers layer, but how to only get the one webserver that I want (nginx) =
as opposed to getting them all?
>=20
> thanks
>=20
> Andrew
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B4D905A0-E260-467E-A6FB-8D3D356FBE01
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgbi2oACgkQuwUzVZGdMxQc0gCfcoMRxcy92mI3nc5DIKVo+Zxu
2JIAn3Q7M2fnG1L7OVVrl3Uq0ISPl2Fr
=nBqd
-----END PGP SIGNATURE-----

--Apple-Mail=_B4D905A0-E260-467E-A6FB-8D3D356FBE01--
