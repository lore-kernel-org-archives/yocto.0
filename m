Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8E6DE00848; Thu, 20 Oct 2016 10:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 587AEE00756
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:40:48 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id 139so7129302itm.2
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 10:40:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=4aezzKAjz+tcF3yn+DJapE1Jv5pGcpjMemA+n1vmDgA=;
	b=XGGKUqSI8Zc6Hnf56Z9wCvtxQRBlmBwP0eDcmb1M8iNTcboNvMCeicyhrQdfdEU7TH
	Z17X93tGKzPal0voxZoxQiFzzlawANoNXNfuZbGXXYRJVgZkYGIbD6j6v7ce+zHPP95d
	PI4+td10XJLL7pQbM14f+7bW1qrOdyvgcsgJ86FuCGCMoCbCqjjYXhHzSpRuCpORVxFe
	SHTzT8gfKcwrvHpOvHjLx1ztucwXRFUXbLl8vz0AwYHV1eypDtiTgnmTVOo7iuBPcDz8
	TKnZy78nT8yhCKKsjh9E2Pzhkf9CoPGkUtnrMZgpZ7GOouti5EIW41gIaDw9WEaZcz4p
	k3Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=4aezzKAjz+tcF3yn+DJapE1Jv5pGcpjMemA+n1vmDgA=;
	b=kXJVfMqw5gVS3Ia/Qg3cNFuKzsfd0ae2x7jpqipbyGH7s2oJ/PSG9dXPiEisrivh5+
	a+6A7vFo1P94n46Y5y109GxJRCG/GCxTivlyB82xi+jRdLbvRXJLVFwNErCaexbhJ3kI
	kw9VYWwwxm7nRGgiwN+lkGK0EhGgnj49dDhIGy4PSFJPxhp16rzRvKBDWD8m8x6v40fZ
	veBKcI53aaSYJkPJa7W2GLCYLJVSejPm2jmrSP6sQEmKFqBGdSHWyVh7TGsxkjyXEk+t
	dBH0Vm4EQYsOxM8MtG3UVFZ3C5tTVPhlkkU8brUSQY68LyMZbVIdmM03v4OPA97ptv/0
	Ilhg==
X-Gm-Message-State: AA6/9Rmi8r/yskzY2YN5Rd9N9h+9jKM91oyYyiIwoUgdqtN2mx62YRBHw05rempiIFyeDA==
X-Received: by 10.36.26.3 with SMTP id 3mr2266784iti.46.1476985248009;
	Thu, 20 Oct 2016 10:40:48 -0700 (PDT)
Received: from [192.168.0.130] (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	r200sm492729itc.13.2016.10.20.10.40.46
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 20 Oct 2016 10:40:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1476984900-22569-2-git-send-email-juro.bystricky@intel.com>
Date: Thu, 20 Oct 2016 10:40:42 -0700
Message-Id: <5F47B618-9962-40C0-BE64-57FBD301B5EB@gmail.com>
References: <1476984900-22569-1-git-send-email-juro.bystricky@intel.com>
	<1476984900-22569-2-git-send-email-juro.bystricky@intel.com>
To: Juro Bystricky <juro.bystricky@intel.com>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-mingw][PATCH 1/1] binutils-cross-canadian: Fix LTO failure
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
X-List-Received-Date: Thu, 20 Oct 2016 17:40:50 -0000
X-Groupsio-MsgNum: 32541
Content-Type: multipart/signed;
	boundary="Apple-Mail=_8C98BDE3-6389-432B-A170-92B96FA7CA1B";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_8C98BDE3-6389-432B-A170-92B96FA7CA1B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Oct 20, 2016, at 10:35 AM, Juro Bystricky =
<juro.bystricky@intel.com> wrote:
>=20
> GCC was failing with a message similar to:
>=20
> =
e:/windri~1/lx8.sdk/qemux8~1.800/sysroots/i686-w~1/usr/bin/i586-w~3/../../=
libexec/i586-wrs-linux/gcc/i586-wrs-linux/5.2.0/real-ld.exe: =
unrecognized option '-plugin'
>=20
> The issue was that by default plugin support was disabled in binutils. =
 By
> enabling the plugin support, the LTO support should also now work =
properly.
>=20
> Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
> Signed-off-by: Juro Bystricky <juro.bystricky@intel.com>
> ---
> recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git =
a/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend =
b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
> index 026c932..5845fe0 100644
> --- a/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
> +++ b/recipes-devtools/binutils/binutils-cross-canadian_2.2%.bbappend
> @@ -1,4 +1,4 @@
> -EXTRA_OECONF_append_sdkmingw32 =3D " --disable-plugins --disable-nls"
> +EXTRA_OECONF_append_sdkmingw32 =3D " --disable-nls=E2=80=9D

This looks ok to me.

> LDFLAGS_append_sdkmingw32 =3D " -Wl,-static"
>=20
> DEPENDS_remove_sdkmingw32 =3D "nativesdk-gettext"
> --
> 2.7.4
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_8C98BDE3-6389-432B-A170-92B96FA7CA1B
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgJAZ0ACgkQuwUzVZGdMxS6jACdHSBLaThPFGd16Go/JWeuX6lA
if8AnA1d0tDBIW/Br1+Wykna96WByeba
=WIeJ
-----END PGP SIGNATURE-----

--Apple-Mail=_8C98BDE3-6389-432B-A170-92B96FA7CA1B--
