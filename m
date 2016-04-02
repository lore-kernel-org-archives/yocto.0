Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A360E00CA5; Sat,  2 Apr 2016 01:14:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A2CFE00BB9
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 01:14:27 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id x3so107189075pfb.1
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 01:14:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=JIx0Xa/AB9cqPfelb9vdM1NG5AeJdMNG6KsMlYYbmd0=;
	b=dGtK6DiFKKaHFkUq9hJALrdQ7nM/pYXJ3ukuHQEHhR0MNoDgyIXRYT4uRHn7tovrwh
	MlhWxRrV+D2sn5NqYOmyDYGiuuihqqWJd9I4OtJ7aqer4cNNv5dua9T/0T0IRijKy9EO
	0FK08TwFIx5hcHQ8IhG9msbIItdCJ/fkAIkwKvNp0AlAvlAn0ef2e3teCxM2wjmoo9Yy
	0yirmPqxW457TXsYqhbzoX9CFCeqJLbvkTY82B741KUxVRuzj2sjCatABGxzCV9ybXf2
	oGbHtk5PrtMF/vVSME260UHbxSLLKFTfE828srLy6/wydhdue9xDV1fzlXvvoWNAdQuN
	AqTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=JIx0Xa/AB9cqPfelb9vdM1NG5AeJdMNG6KsMlYYbmd0=;
	b=DT9BL2cBSPaaAL3eTt/eWs/nrN8h85mGhFgAPdGKFy5XZfsBOnt+3CjBkL8XbkHrst
	dDtQLcpgfZpiiKNc9MPec0GUK8/wE+yDOYJMddXsghPZ+2ns+nfkGZXOzGf+FV/kf86q
	RFiDO5Etaa7umyF6b8r6cFUaFE4pT419U6FROwYFYiqhadyKkjIbRXjtEHQmoUc0QJ7B
	kdxstsY6bqHhwEKGNolLKsGv7ZodH9KYEBIrQwDLnyeofxLIP2QkNkQqTVkef7ufijTs
	Lsph1hJZ5PxFclHoyOd1gkvw+HLcUlr6Y6/8uWrJp1iQ//BlDKIn9Y0w/VMjwKWT8Bfx
	/tYQ==
X-Gm-Message-State: AD7BkJJD4VlnHFoUD5+/W7Z/wkUdT0mG76FfNVwCYrw/HyL5uyCyq4MPjwWoFenHJYPr0g==
X-Received: by 10.98.8.91 with SMTP id c88mr7673162pfd.47.1459584867185;
	Sat, 02 Apr 2016 01:14:27 -0700 (PDT)
Received: from ?IPv6:2601:646:8800:5a9a:1156:ef7c:5e3a:2bb9?
	([2601:646:8800:5a9a:1156:ef7c:5e3a:2bb9])
	by smtp.gmail.com with ESMTPSA id
	q2sm24868920pfq.88.2016.04.02.01.14.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 02 Apr 2016 01:14:26 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1459510631-20294-1-git-send-email-andrei@gherzan.ro>
Date: Sat, 2 Apr 2016 01:14:26 -0700
Message-Id: <B0AEC937-52AB-4910-8612-93C06577FACC@gmail.com>
References: <1459510631-20294-1-git-send-email-andrei@gherzan.ro>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] userland: In case of wayland configuration build needs wayland-native
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
X-List-Received-Date: Sat, 02 Apr 2016 08:14:28 -0000
X-Groupsio-MsgNum: 29252
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F965396E-FBBF-4684-BA0E-C430AC3D866B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_F965396E-FBBF-4684-BA0E-C430AC3D866B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Apr 1, 2016, at 4:37 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> Building wayland support requires availability of wayland-scanner to =
avoid
> build errors like:
>=20
> | /bin/sh:
> | =
/home/andrei/work/yocto/build-rpi-master/tmp/sysroots/x86_64-linux/usr/bin=
/wayland-scanner:
> | No such file or directory
>=20
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
> recipes-graphics/userland/userland_git.bb | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/recipes-graphics/userland/userland_git.bb =
b/recipes-graphics/userland/userland_git.bb
> index ca9123e..536c3ec 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -45,7 +45,7 @@ EXTRA_OECMAKE =3D "-DCMAKE_BUILD_TYPE=3DRelease =
-DCMAKE_EXE_LINKER_FLAGS=3D'-Wl,--no-a
>=20
> PACKAGECONFIG ?=3D "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', =
'wayland', '', d)}"
>=20
> -PACKAGECONFIG[wayland] =3D "-DBUILD_WAYLAND=3DTRUE =
-DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=3D${STAGING_BINDIR_NATIVE}/wayland-s=
canner,,wayland"
> +PACKAGECONFIG[wayland] =3D "-DBUILD_WAYLAND=3DTRUE =
-DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=3D${STAGING_BINDIR_NATIVE}/wayland-s=
canner,wayland-native,wayland=E2=80=9D

this is ok.

>=20
> CFLAGS_append =3D " -fPIC"
>=20
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F965396E-FBBF-4684-BA0E-C430AC3D866B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlb/f2IACgkQuwUzVZGdMxT/YQCcDvJdTfr/UZmBKykRNImStDbU
qroAnR+CYEWiUq8a5MuAYHFlHSev0pjc
=wpZM
-----END PGP SIGNATURE-----

--Apple-Mail=_F965396E-FBBF-4684-BA0E-C430AC3D866B--
