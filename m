Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 859E2E009C3; Tue, 11 Aug 2015 18:36:40 -0700 (PDT)
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
	*      [209.85.220.45 listed in list.dnswl.org]
Received: from mail-pa0-f45.google.com (mail-pa0-f45.google.com
	[209.85.220.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FB0FE007B1
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 18:36:34 -0700 (PDT)
Received: by pabyb7 with SMTP id yb7so2669729pab.0
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 18:36:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=erYIo56afgI3c0Gc2sCNgEfkdLALVtPNUfd9m2Ud8FM=;
	b=OheXO1aBhxnGv63V4EbznDXO+SI2UvMFka+fRWyp8bDHHFgDfr913l63kjTE3WhZ3d
	qB5058DTZdbOzl2PfqM6Tf4DoplGpf1gAy7Z2bM3y8KaQX15q7rw42Z6SQSA1gTYfPVT
	Hbczms7Oh3ixmRqpglC5Nwy4R7ytH4tV1j75j23mUonPZPR6S976j22tOXa4vS7Tm48v
	1vB9ELsFM8pwkCKdiOXcLByhKK+a7HHCrvuoS12AxMhOxK2SnQ2+EquEjCi8RwncqAge
	JhcyDUK7R3WAJVyAsHU0EP/gn9phWk3nuVkQAHIiawPn4mHejhisNDLcrPeHYD3251R4
	u6TA==
X-Received: by 10.66.138.40 with SMTP id qn8mr62054850pab.19.1439343394302;
	Tue, 11 Aug 2015 18:36:34 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:157:79f9:ef5c:d3d0?
	([2601:646:8601:4580:157:79f9:ef5c:d3d0])
	by smtp.gmail.com with ESMTPSA id
	oq7sm4198767pbb.31.2015.08.11.18.36.33
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 11 Aug 2015 18:36:33 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAHWMYyDRB9nO0cxM+-Pi4hWz_cfViiPND6qi+9cP2Y=ZRFF0Eg@mail.gmail.com>
Date: Tue, 11 Aug 2015 18:36:28 -0700
Message-Id: <53C7D019-CC77-4FDB-A40E-16FCF6D00781@gmail.com>
References: <CAHWMYyDRB9nO0cxM+-Pi4hWz_cfViiPND6qi+9cP2Y=ZRFF0Eg@mail.gmail.com>
To: Todd Efflam <todd.efflam@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: No '/lib/modules' directory in image, modprobe fails
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
X-List-Received-Date: Wed, 12 Aug 2015 01:36:40 -0000
X-Groupsio-MsgNum: 26039
Content-Type: multipart/signed;
	boundary="Apple-Mail=_28C6A655-03BA-41C9-8CAC-C4AFC3722CF3";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_28C6A655-03BA-41C9-8CAC-C4AFC3722CF3
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Aug 11, 2015, at 5:53 PM, Todd Efflam <todd.efflam@gmail.com> =
wrote:
>=20
> Hello,
> We're trying to load and unload modules using modprobe but are having =
problems.  The command fails with "modprobe: can't change directory to =
'/lib/modules': no such file or directory".  There is actually no =
/lib/modules directory on the image at all.  We tried to install the =
linux-libc-headers package but it failed and I think the reason is we =
are using the 3.14 kernel and the package is 3.19.  Any help would be =
appreciated!

linux-libc-headers is kernel APIs for userland. The modules are =
generated as individual packages during kernel build. You can choose =
which modules you want to package
default it none. if you want all default modules to be included in image =
you can add

MACHINE_EXTRA_RRECOMMENDS =3D " kernel-modules=E2=80=9D

to you machine.conf

Otherwise if you know which ones your system needs then you can add it =
to IMAGE_INSTALL individually.

IMAGE_INSTALL +=3D "kernel-module-<name-of-module>=E2=80=9D



--Apple-Mail=_28C6A655-03BA-41C9-8CAC-C4AFC3722CF3
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXKoyAACgkQuwUzVZGdMxRAiQCeM0VgsfyHwnhjDM+Pc6DYyqOZ
HzYAmgKZszVfyVYn9W2zBqK2BAjMstUv
=1bI8
-----END PGP SIGNATURE-----

--Apple-Mail=_28C6A655-03BA-41C9-8CAC-C4AFC3722CF3--
