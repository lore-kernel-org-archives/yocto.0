Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C021E00B9D; Tue, 13 Oct 2015 22:14:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f173.google.com (mail-wi0-f173.google.com
	[209.85.212.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA45BE00708
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 22:14:26 -0700 (PDT)
Received: by wicgb1 with SMTP id gb1so214651363wic.1
	for <yocto@yoctoproject.org>; Tue, 13 Oct 2015 22:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=ojtyIXnbYHwRcLBsD3iCFZe/eLidECzf2K87wCNSyO4=;
	b=KAlj0uP6BdAaE72MmhpL9MROJne7hELszJ7OnNsWXrI+/8GIEKr/bvdPb8+6viBWq0
	P9NLCx9ApGxFOCUUipTvqkgOFK4a+uwGmnEvCwUV2LlzJt9DdTB/CA+1SHcMoWMPHa18
	7rIVOFHqE9f/2kJ/e3HzIMNstxqnUzrWeXFgc+E702j60a9Sf60sTgGDMtz2U4ucGEX0
	ElD0IJMQY9J8hVDOsN4ReyMaU1FUxCjXm7V/mvvFhQQwSPHVAdJFVJ03VURMnbhC9+L4
	kkN1DxSx6B0yCkHQt6fq5jh1wUuZkvxuYa+jAzhKgQ5d7hR64fwojWQ/knqulPlEJ1FJ
	Zq3A==
X-Received: by 10.194.114.104 with SMTP id jf8mr1540295wjb.155.1444799665360; 
	Tue, 13 Oct 2015 22:14:25 -0700 (PDT)
Received: from [172.22.60.125] (ip-109-91-252-249.hsi12.unitymediagroup.de.
	[109.91.252.249]) by smtp.gmail.com with ESMTPSA id
	fv5sm17650724wic.7.2015.10.13.22.14.24
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 13 Oct 2015 22:14:24 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
From: Jens Rehsack <rehsack@gmail.com>
In-Reply-To: <20151013211737.GI2396@jama>
Date: Wed, 14 Oct 2015 07:14:23 +0200
Message-Id: <5D7784B7-9FA2-4637-AC57-13C1C1EC18A2@gmail.com>
References: <879F0FCD-B2D4-4767-ADB4-6E479A42B25A@gmail.com>
	<20151013211737.GI2396@jama>
To: Martin Jansa <martin.jansa@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org, Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [PATCH 1/6][meta-openembedded] llvm: update 3.5.2 to have a sane ARM JIT for OpenJDK-8
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
X-List-Received-Date: Wed, 14 Oct 2015 05:14:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> Am 13.10.2015 um 23:17 schrieb Martin Jansa <martin.jansa@gmail.com>:
>=20
> On Tue, Oct 13, 2015 at 10:27:54PM +0200, Jens Rehsack wrote:
>>=20
>> llvm introduced new JIT technology MCJIT with llvm 3.4 and fixes ARM =
in 3.5
>> (see =
http://llvm.org/releases/3.5.2/docs/ReleaseNotes.html#changes-to-the-arm-b=
ackend).
>>=20
>> Ensure JIT is built with llvm
>>=20
>> Signed-off-by: Jens Rehsack <sno@netbsd.org>
>> ---
>> meta-oe/recipes-core/llvm/llvm.inc                 |  8 +---
>> ...r-output-from-configure-if-CFLAGS-is-set-.patch | 52 =
----------------------
>> .../{llvm3.3 =3D> llvm3.5}/arm_fenv_uclibc.patch     |  0
>> .../llvm/{llvm3.3_3.3.bb =3D> llvm3.5_3.5.2.bb}      | 11 +++--
>> 4 files changed, 9 insertions(+), 62 deletions(-)
>> delete mode 100644 =
meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-CF=
LAGS-is-set-.patch
>> rename meta-oe/recipes-core/llvm/{llvm3.3 =3D> =
llvm3.5}/arm_fenv_uclibc.patch (100%)
>> rename meta-oe/recipes-core/llvm/{llvm3.3_3.3.bb =3D> =
llvm3.5_3.5.2.bb} (71%)
>>=20
>> diff --git a/meta-oe/recipes-core/llvm/llvm.inc =
b/meta-oe/recipes-core/llvm/llvm.inc
>> index 0597be1..cc45ca7 100644
>> --- a/meta-oe/recipes-core/llvm/llvm.inc
>> +++ b/meta-oe/recipes-core/llvm/llvm.inc
>> @@ -20,11 +20,6 @@
>> DESCRIPTION =3D "The Low Level Virtual Machine"
>> HOMEPAGE =3D "http://llvm.org"
>>=20
>> -# 3-clause BSD-like
>> -# University of Illinois/NCSA Open Source License
>> -LICENSE =3D "NCSA"
>> -LIC_FILES_CHKSUM =3D =
"file://LICENSE.TXT;md5=3Dd0a3ef0d3e0e8f5cf59e5ffc273ab1f8"
>> -
>=20
> Why do you move this?

Because the md5 changed. Since ${PV}.inc should remain unchanged when =
updating (gz vs. xz is probably unfortunate, either),
move it to .bb (date update changes md5)

> Still wrong ML. Should go to openembedded-devel with [meta-oe] in
> subject - the same for other patches in this set.

Ok.

>> DEPENDS =3D "libffi libxml2-native llvm-common"
>>=20
>> inherit perlnative pythonnative autotools
>> @@ -32,7 +27,7 @@ inherit perlnative pythonnative autotools
>> LLVM_RELEASE =3D "${PV}"
>> LLVM_DIR =3D "llvm${LLVM_RELEASE}"
>>=20
>> -SRC_URI =3D "http://llvm.org/releases/${PV}/llvm-${PV}.src.tar.gz"
>> +SRC_URI =3D "http://llvm.org/releases/${PV}/llvm-${PV}.src.tar.xz"
>> S =3D "${WORKDIR}/llvm-${PV}.src"
>>=20
>> LLVM_BUILD_DIR =3D "${WORKDIR}/llvm-${PV}.build"
>> @@ -42,6 +37,7 @@ EXTRA_OECONF +=3D "--disable-assertions \
>>                  --enable-debug-runtime \
>>                  --disable-expensive-checks \
>>                  --enable-bindings=3Dnone \
>> +                 --enable-jit \
>>                  --enable-keep-symbols \
>>                  --enable-libffi \
>>                  --enable-optimized \
>> diff --git =
a/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-=
CFLAGS-is-set-.patch =
b/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-=
CFLAGS-is-set-.patch
>> deleted file mode 100644
>> index 44387e8..0000000
>> --- =
a/meta-oe/recipes-core/llvm/llvm3.3/Remove-error-output-from-configure-if-=
CFLAGS-is-set-.patch
>> +++ /dev/null
>> @@ -1,52 +0,0 @@
>> -=46rom d4bf7a3853dab12c11cbfc8088fd76f548a8d017 Mon Sep 17 00:00:00 =
2001
>> -From: Patrik Hagglund <patrik.h.hagglund@ericsson.com>
>> -Date: Tue, 24 Sep 2013 11:38:45 +0000
>> -Subject: [PATCH] Remove error output from configure if CFLAGS is set =
(r174313).
>> -
>> -This fixes PR16724.
>> -
>> -git-svn-id: https://llvm.org/svn/llvm-project/llvm/trunk@191289 =
91177308-0d34-0410-b5e6-96231b3b80d8
>> -
>> =
-https://github.com/llvm-mirror/llvm/commit/d4bf7a3853dab12c11cbfc8088fd76=
f548a8d017
>> -
>> -Upstream-Status: Backport
>> -
>> -Signed-off-by: Andre McCurdy <armccurdy@gmail.com>
>> ----
>> - autoconf/configure.ac | 4 ++--
>> - configure             | 4 ++--
>> - 2 files changed, 4 insertions(+), 4 deletions(-)
>> -
>> -diff --git a/autoconf/configure.ac b/autoconf/configure.ac
>> -index f9c365c..45f2fe4 100644
>> ---- a/autoconf/configure.ac
>> -+++ b/autoconf/configure.ac
>> -@@ -61,8 +61,8 @@ fi
>> -=20
>> - dnl Default to empty (i.e. assigning the null string to) CFLAGS and =
CXXFLAGS,
>> - dnl instead of the autoconf default (for example, '-g -O2' for =
CC=3Dgcc).
>> --${CFLAGS=3D}
>> --${CXXFLAGS=3D}
>> -+: ${CFLAGS=3D}
>> -+: ${CXXFLAGS=3D}
>> -=20
>> - dnl We need to check for the compiler up here to avoid anything =
else
>> - dnl starting with a different one.
>> -diff --git a/configure b/configure
>> -index f3a6594..9090cda 100755
>> ---- a/configure
>> -+++ b/configure
>> -@@ -1992,8 +1992,8 @@ echo "$as_me: error: Already configured in =
${srcdir}" >&2;}
>> -   fi
>> - fi
>> -=20
>> --${CFLAGS=3D}
>> --${CXXFLAGS=3D}
>> -+: ${CFLAGS=3D}
>> -+: ${CXXFLAGS=3D}
>> -=20
>> - ac_ext=3Dc
>> - ac_cpp=3D'$CPP $CPPFLAGS'
>> ---=20
>> -1.9.1
>> -
>> diff --git a/meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch =
b/meta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch
>> similarity index 100%
>> rename from meta-oe/recipes-core/llvm/llvm3.3/arm_fenv_uclibc.patch
>> rename to meta-oe/recipes-core/llvm/llvm3.5/arm_fenv_uclibc.patch
>> diff --git a/meta-oe/recipes-core/llvm/llvm3.3_3.3.bb =
b/meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb
>> similarity index 71%
>> rename from meta-oe/recipes-core/llvm/llvm3.3_3.3.bb
>> rename to meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb
>> index 60a2221..7289b81 100644
>> --- a/meta-oe/recipes-core/llvm/llvm3.3_3.3.bb
>> +++ b/meta-oe/recipes-core/llvm/llvm3.5_3.5.2.bb
>> @@ -1,14 +1,17 @@
>> require llvm.inc
>>=20
>> +# 3-clause BSD-like
>> +# University of Illinois/NCSA Open Source License
>> +LICENSE =3D "NCSA"
>> +LIC_FILES_CHKSUM =3D =
"file://LICENSE.TXT;md5=3D47e311aa9caedd1b3abf098bd7814d1d"
>> +
>> DEPENDS +=3D "zlib"
>> EXTRA_OECONF +=3D "--enable-zlib"
>>=20
>> -SRC_URI +=3D =
"file://Remove-error-output-from-configure-if-CFLAGS-is-set-.patch"
>> -
>> SRC_URI_append_libc-uclibc =3D " file://arm_fenv_uclibc.patch "
>>=20
>> -SRC_URI[md5sum] =3D "40564e1dc390f9844f1711c08b08e391"
>> -SRC_URI[sha256sum] =3D =
"68766b1e70d05a25e2f502e997a3cb3937187a3296595cf6e0977d5cd6727578"
>> +SRC_URI[md5sum] =3D "f5a4dc595f7e8bd23397684d0906d014"
>> +SRC_URI[sha256sum] =3D =
"44196156d5749eb4b4224fe471a29cc3984df92570a4a89fa859f7394fc0c575"
>>=20
>> PACKAGECONFIG ??=3D ""
>> PACKAGECONFIG[r600] =3D "--enable-experimental-targets=3DR600,,,"
>> --=20
>> 1.9.1
>>=20
>> This patch is required to apply meta-java my updates for OpenJDK 8.
>>=20

Cheers
--=20
Jens Rehsack - rehsack@gmail.com


