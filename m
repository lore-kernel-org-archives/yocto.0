Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8821FE0027F
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 08:19:53 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so2979516pbb.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 08:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=tvfgPIR2f65ODtuRKCR5IWcJSXrUkmy/1V0m+XcfoqY=;
	b=OMtS81jbcQA2Hlfgb/JnMtK5BVQjvEUqLaBJoC2ZHwGkH4s05u3k7gdZsI5owjgkXp
	/zit2eyArC/gToyWfy3gOuKEfxy8DNQzqKXSUZ7931OMAKPlzPTiMRla9r8dPoxSZDci
	KbRJqeE1qMGs4ifSN4Ci7ZCDkQFmfE9TTcVAxB0+lEFlHXRL9zbDu7segjGXW/vOK6Jj
	zBbuFFkvcaFyylNASA9PHChjILHPIkJShgGmIDPxaRoSZ4CCYDoM2oBRHHik9h/W4AVP
	0YHr8Di5x0u+eR1BMzQVQqW2JlsO1tq4dMrvTRePJ8sslOmRxaT4NfBBtW4iV0EcRilx
	z2bg==
Received: by 10.68.203.34 with SMTP id kn2mr4919119pbc.144.1346944791052;
	Thu, 06 Sep 2012 08:19:51 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id rr10sm1484613pbc.71.2012.09.06.08.19.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Sep 2012 08:19:48 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
Date: Thu, 6 Sep 2012 19:19:43 +0400
Message-Id: <12E1ABCF-B181-4763-88A6-5B7E51758231@gmail.com>
References: <CAHUNapQUS19axgi+i=wAr0r_ogFj+UsSBpsBY_mhd+ac=5w8-g@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: any success with spartan6-lx9mb?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Sep 2012 15:19:53 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       =20
On Sep 4, 2012, at 6:25 AM, Trevor Woerner wrote:

> I was playing around with the meta-xilinx layer and tried to build
> "core-image-minimal" for the spartan6 without success. I was wondering
> if anyone has tried this lately and/or if anyone has any tips to
> suggest?

Can you please list which version of the Xilinx ISE tools you are using? =
e.g. 12.4, 14.1, 14.2 ?

Could you also please list the Xilinx development board that you are =
using? e.g. SP601 (Spartan6) ?

>=20
> configuration:
>=20
> I'm using the latest HEAD:
>    BB_VERSION        =3D "1.15.3"
>    TARGET_ARCH       =3D "microblaze"
>    TARGET_OS         =3D "linux"
>    MACHINE           =3D "spartan6-lx9mb"
>    DISTRO            =3D "poky"
>    DISTRO_VERSION    =3D "1.2+snapshot-20120904"
>    TUNE_FEATURES     =3D "m32 microblazeel"
>    TARGET_FPU        =3D "soft"
>    meta
>    meta-yocto        =3D =
"master:37c8597e7600385367257e8a513e003947ebef5b"
>    meta-xilinx       =3D =
"master:d196fa93c7ff5e080d4c44e2b83aed472f32b2c7"
>=20
> conf/local.conf:
>    BB_NUMBER_THREADS =3D "4"
>    PARALLEL_MAKE =3D "-j 4"
>    MACHINE ??=3D "spartan6-lx9mb"
>    DL_DIR =3D "/home/trevor/devel/Downloads"
>    DISTRO ?=3D "poky"
>    PACKAGE_CLASSES ?=3D "package_rpm"
>    EXTRA_IMAGE_FEATURES =3D "debug-tweaks"
>    USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
>    PATCHRESOLVE =3D "noop"
>    CONF_VERSION =3D "1"
>=20
> conf/bblayers.conf:
>    LCONF_VERSION =3D "5"
>    BBPATH =3D "${TOPDIR}"
>    BBFILES ?=3D ""
>    BBLAYERS ?=3D " \
>      /home/trevor/devel/yocto/git-method/poky/meta \
>      /home/trevor/devel/yocto/git-method/poky/meta-yocto \
>      /home/trevor/devel/yocto/git-method/poky/meta-xilinx \
>      "
>=20
> issues:
>=20
> The first problem I encountered was trying to build gcc-cross-initial:
>    This target does not support --with-float.
>=20

If you look at the tune file, it says TARGET_FPU =3D "soft", which means
software floating point emulation.

However, the gcc toolchain recipes are trying to build with hardware =
floating
point support, from the error message.

Let me know what you ISE development tool configuration and development
board is, and I'll see if I can divert a bit from target platform, and =
try to=20
explore getting the toolchain to build for the Microblaze processor.

I've got the following boards with me:
- Xilinx ML507 (Virtex 5 FX70T with PowerPC 440)
- Xilinx SP601 (Spartan 6)
- Xilinx Zynq (ARM Cortex A-9)

Best regards,

Elvis Dowson


