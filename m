Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D406FE00AAB; Wed, 22 Jun 2016 10:17:41 -0700 (PDT)
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
	*      [209.85.192.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97EF0E00A6D
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 10:17:38 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id c74so4537646pfb.0
	for <yocto@yoctoproject.org>; Wed, 22 Jun 2016 10:17:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=1H97ziVDSl3gouzlvET/HW2hs2zpFh4tjKq3ab0D5cw=;
	b=NUmm95yLccZXF28xBUInNOVsy0Z1W6zUS43GMDxhJPVAMWc18tuF8mXAUfa8hlkyir
	XmN02bMBoAXMWSPm2/dYljG78V4t9Yuwp6VTcTgVlNPR7SiO/9QHDsf23e6q6ZQStOy7
	F7At2GeBq8TSHBHnmw6FiRKCeXQ7tN1jsyp+CibPx+BI7Xe0WtHZ+6fk0l4WTNpn5j+E
	TDepgqLTLJKMPcZlACtzwUbFP21e62oFzv6hItBaySh2Wy0+0JQcCnqTYLg/CaL7noWT
	/7mLcCHDNFklvuh8Xt7Wrx9V56/s4n+3BAiXviqpwL1CUydhOt6eZBEBbyL7K/vhHjn3
	5awA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=1H97ziVDSl3gouzlvET/HW2hs2zpFh4tjKq3ab0D5cw=;
	b=UK9OQ6uEMD/PTA/cj+KZth1hF27gU0ocM1EmJwHlYYQZ0V1Zk5Vk4ZK670TSTxGUj+
	tc7hO86Azp+hAXpMK5qhSetkpMc9ilX1jvYcwuZk1m5dW+K8y268QL9bRD+XI3stu8fj
	eVQygPvbqNWGt4Tx8+wm4AyDRKxGRcGdIEsV2iNqZ2p3RN4kENl5UvctxVHhRPgXXbjI
	sDYhSbcg5NezmUaY4aZEqTF3DKbhdSKcY1U9GV9wmd4SZdUbdzDIXmVfBmozKxx9rWv5
	AWxv2wHimuYUV2t+fsE55kX94fHOXmQspOb47LhXziWBRDoZhGOi0SLRD/juzg9RzbRU
	yZgQ==
X-Gm-Message-State: ALyK8tLsop0w+yOO25oO3wIWYlfcwVsRRhVS1GMj6+xtfzPiLWjbOmpYtXJkq61EpxD9Ww==
X-Received: by 10.98.58.203 with SMTP id v72mr35773080pfj.113.1466615857995;
	Wed, 22 Jun 2016 10:17:37 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:fcd1:61e:b1e8:f28?
	([2601:646:8882:b8c:fcd1:61e:b1e8:f28])
	by smtp.gmail.com with ESMTPSA id 7sm1128208pfa.28.2016.06.22.10.17.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 22 Jun 2016 10:17:37 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail 2.6b2
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1464711861504.4240@seescan.com>
Date: Wed, 22 Jun 2016 10:17:30 -0700
Message-Id: <007DA630-C32F-40E2-B65B-532D122B8957@gmail.com>
References: <1464704048-29897-1-git-send-email-bobadeshrikant@gmail.com>
	<1464711861504.4240@seescan.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: calibrator fails to run
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
X-List-Received-Date: Wed, 22 Jun 2016 17:17:41 -0000
X-Groupsio-MsgNum: 30707
Content-Type: multipart/signed;
	boundary="Apple-Mail=_65CE3D4B-6AA4-4596-8CC2-F57BADB38E73";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_65CE3D4B-6AA4-4596-8CC2-F57BADB38E73
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On May 31, 2016, at 9:24 AM, Fred Ollinger <Fred.Ollinger@seescan.com> =
wrote:
>=20
> Goal: Run a cross compiled executable called calibrator from =
git://git.ti.com/wilink8-wlan/18xx-ti-utils.git
>=20
> Here's my build script:
>=20
> export NFSROOT=3D/srv/imx/CS65X-dev
>=20
> export =
CROSS_COMPILE=3D/opt/prickle/1.7.2/sysroots/x86_64-pricklesdk-linux/usr/bi=
n/arm-prickle-linux-gnueabi/arm-prickle-lin    ux-gnueabi-
>=20
> export NLVER=3D3
>=20
> export CFLAGS=3D"-mfloat-abi=3Dhard =
-I/opt/prickle/1.7.2/sysroots/cortexa9hf-vfp-neon-prickle-linux-gnueabi/us=
r/include/libnl3    "
>=20
> make
>=20
> sudo make install NFSROOT=3D/srv/imx/CS65X-dev


You have two options.

1. Write a recipe for this package and let OE build it and you can add =
it to your image with IMAGE_INSTALL if you want it in final image. For =
OE recipe you can follow devtool workflow to add new recipe or you can =
manually do it by copying a similar looking recipe and making needed =
changes.

2. if you dont want to work with OE immediately then you can generate =
SDK with bitbake -cpopulate_sdk <your image>
install the resulting SDK using the self installer ( .sh file) and then =
using the SDK, ensure that you use CC, CXX and its ilk
as it is after sourcing the environment.



>=20
> ----------------------------------------------------------------
>=20
> This will build the library and install it onto my system.
>=20
> However, when I run it, I get:
>=20
> root@yocto:~# /usr/bin/calibrator
> -sh: /usr/bin/calibrator: No such file or directory

you might need to do chmod +x for this file. Secondly it might be using =
wrong ABI  ( hard-float or not ) ensure that
the ABIs of the system and your app are same.

>=20
> But the file does exist, and it even looks like the proper type of =
executable:
>=20
> root@yocto:~# file /usr/bin/calibrator
>=20
> /usr/bin/calibrator: ELF 32-bit LSB executable, ARM, EABI5 version 1 =
(SYSV), dynamically linked (uses shared libs), for GNU/Li
> nux 2.6.32, BuildID[sha1]=3D96e4d113a9e1a0e90fd60d8d0a59e19323457b5d, =
stripped
>=20
> Here's my hardware info:
>=20
> root@yocto:~# cat /proc/cpuinfo
> processor       : 0
> model name      : ARMv7 Processor rev 10 (v7l)
> BogoMIPS        : 1988.29
> Features        : swp half thumb fastmult vfp edsp neon vfpv3 tls
> CPU implementer : 0x41
> CPU architecture: 7
> CPU variant     : 0x2
> CPU part        : 0xc09
> CPU revision    : 10
>=20
> Hardware        : Freescale i.MX6 Quad/DualLite (Device Tree)
> Revision        : 0000
> Serial          : 0000000000000000
>=20
> Any ideas on where to start?


readelf -A <your app>
readelf -A <some app on target>

should be same.

>=20
> Thanks.
>=20
> Frederick
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_65CE3D4B-6AA4-4596-8CC2-F57BADB38E73
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAldqyC0ACgkQuwUzVZGdMxQ/ugCfXkcFXi62OyVzsiOlb5GoS0QU
dzIAn0GOvLY+cmsc9Xyxc6rDejUxnL/C
=YboD
-----END PGP SIGNATURE-----

--Apple-Mail=_65CE3D4B-6AA4-4596-8CC2-F57BADB38E73--
