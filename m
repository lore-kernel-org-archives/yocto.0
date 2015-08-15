Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F191E006BC; Sat, 15 Aug 2015 12:22:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.51 listed in list.dnswl.org]
Received: from mail-pa0-f51.google.com (mail-pa0-f51.google.com
	[209.85.220.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C82B5E0052C
	for <yocto@yoctoproject.org>; Sat, 15 Aug 2015 12:22:18 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so79982983pab.0
	for <yocto@yoctoproject.org>; Sat, 15 Aug 2015 12:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=x1oRVGloNmt82lD9gjq2l8ZfpMb1pll7Wygc7c2JMbU=;
	b=zobZiOnsgLMD/JyG7DPzQXoGjCGCk8cRiSkz5c6FXi+BVfrlqEYZ03Cs39ntHTOMQR
	BUPExgtyn8ATfzzjAIursBND2fE0P6wspu6/RKdhsZTNiQo15qgXaaH+ScUpJrp1e3sr
	78BdaqYBmC7aqYnm3NqRM+4qvfOe/uUr0k4KZdehm41n/ZhyzoEWsyxjwKf1a8WqH0kA
	A7nurfONHcqt0ELkLr/3iqVry7Bc+aMKCj+r+uUhlYO5jNmn36FH1GxTG22/JmtYWwBK
	n1wD5iVZ2sUuRT8xFMqcLSwPZ4yKXJN/PgRJFebgS52CnbZzx4+Bc255desqibSQQU/8
	E+Gw==
X-Received: by 10.68.68.161 with SMTP id x1mr838648pbt.107.1439666538327;
	Sat, 15 Aug 2015 12:22:18 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:3486:a8d6:107a:4b76?
	([2601:646:8601:4580:3486:a8d6:107a:4b76])
	by smtp.gmail.com with ESMTPSA id
	da17sm9602283pac.29.2015.08.15.12.22.17
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 15 Aug 2015 12:22:17 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJJ_cjS8CCtzid1rsFO1-xGpkhkENxNu3SCN_UYNLw5qcpuMnQ@mail.gmail.com>
Date: Sat, 15 Aug 2015 12:22:08 -0700
Message-Id: <A1078771-9866-457D-A4D0-C3ED3BA5C029@gmail.com>
References: <CAJJ_cjS8CCtzid1rsFO1-xGpkhkENxNu3SCN_UYNLw5qcpuMnQ@mail.gmail.com>
To: Keshav Peswani <keshavpeswani@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: OE/Meta Gnome : Login Panel username and password
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
X-List-Received-Date: Sat, 15 Aug 2015 19:22:22 -0000
X-Groupsio-MsgNum: 26132
Content-Type: multipart/signed;
	boundary="Apple-Mail=_18BA3D8C-81AA-4591-9C3F-7C27BE92DCCC";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_18BA3D8C-81AA-4591-9C3F-7C27BE92DCCC
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 4, 2015, at 12:54 AM, Keshav Peswani <keshavpeswani@gmail.com> =
wrote:
>=20
> Hi ,
>=20
> As part of a project, I had built custom distro for raspberry-pi =
through yocto which included meta-gnome as my desktop/UI layer. After =
the build completed , the login panel for gnome is asking for username =
and password which I couldn't figure out even after searching the recipe =
files. It would be great if you could help me out in knowing the default =
user name and password that 'gdm' uses and where to change it in recipe =
files. PFA my gnome recipe file and screen shot of login screen.
>=20
>=20

if you have debug-tweaks to your image then it should let you in with =
passwordless entry for root user
EXTRA_IMAGE_FEATURES =3D "debug-tweaks=E2=80=9D in local.conf is what =
you might need.

> Thanks
> Keshav
> <gnome.bb><login-gnome.jpg>--
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_18BA3D8C-81AA-4591-9C3F-7C27BE92DCCC
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXPkWgACgkQuwUzVZGdMxQFlQCfTZKRl0ynlpLIxN+ABiHR2H43
fJQAn2sUrTKlYbBSgdPrynGBWL35WTtA
=tYIK
-----END PGP SIGNATURE-----

--Apple-Mail=_18BA3D8C-81AA-4591-9C3F-7C27BE92DCCC--
