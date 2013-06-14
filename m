Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f41.google.com (mail-pb0-f41.google.com
	[209.85.160.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C885E013A8
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 11:00:53 -0700 (PDT)
Received: by mail-pb0-f41.google.com with SMTP id rp16so805700pbb.14
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2013 11:00:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=2uKdHSWvLWBk0FiQSW8y9DkA084Jh2+EjXgapIlWtT4=;
	b=MhjJgtTsOXX80dDB4ZU3BVnUbiDGYfbT1Zz0b5pbDvMasCH8l3u/qp/ZTeytEUh/3M
	T8hcVLRNd7sbduYdtpuozrPBFGhmIwVdikDY69RBPSb7OR1sBYVP8zNUh5PRCJl3LOeD
	cwGrMni1Rdo6ijZdb8mBg7dRK/d4oesGsIZRZFHyHsbNgpTzn6ttIkv9hDROiE88Zi79
	SWp2945sktPWJIPR3cGQ/HolVeOz+96a+6VfbmWLI30Jh/xMW7zuArIkPVfQA0y4gRYb
	WQww53hV6851rZiLDiel+fVa+llA4APpEEnj9KBlEi2CLZeo/IQPuy29u7A/aX9IMkVN
	YK9A==
X-Received: by 10.68.138.193 with SMTP id qs1mr3579281pbb.95.1371232853707;
	Fri, 14 Jun 2013 11:00:53 -0700 (PDT)
Received: from [172.24.240.69] (natint3.juniper.net. [66.129.224.36])
	by mx.google.com with ESMTPSA id vb8sm3094617pbc.11.2013.06.14.11.00.52
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 14 Jun 2013 11:00:53 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <loom.20130614T195255-724@post.gmane.org>
Date: Fri, 14 Jun 2013 11:00:52 -0700
Message-Id: <CE727E34-D6D2-4B25-840A-0D2F32318C0A@gmail.com>
References: <CANwz6nxO25BCt2B-H8T9_SO5F3DqfE1w2QDSoXPVnP-qxq994Q@mail.gmail.com>
	<loom.20130614T060308-378@post.gmane.org>
	<1571616.VWc8oWtlLJ@helios>
	<loom.20130614T195255-724@post.gmane.org>
To: Dat Tran <dtran11@gmail.com>
X-Mailer: Apple Mail (2.1508)
Cc: yocto@yoctoproject.org
Subject: Re: gcc enable-languages
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
X-List-Received-Date: Fri, 14 Jun 2013 18:00:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jun 14, 2013, at 10:53 AM, Dat Tran <dtran11@gmail.com> wrote:

> Paul, thanks for your suggestions. I think you are right in that there =
are=20
> more settings we need to set. Here is what I had done with no success:
>=20
>=20
> diff --git a/meta/recipes-devtools/gcc/gcc-4.7.inc b/meta/recipes-
> devtools/gcc/gcc-4.7.inc
> index 1a3e09b..3c48232 100644
> --- a/meta/recipes-devtools/gcc/gcc-4.7.inc
> +++ b/meta/recipes-devtools/gcc/gcc-4.7.inc
> @@ -82,7 +82,7 @@ S =3D =
"${TMPDIR}/work-shared/gcc-${PV}-${PR}/gcc-${PV}"
> B =3D "${WORKDIR}/gcc-${PV}/build.${HOST_SYS}.${TARGET_SYS}"
>=20
> # Language Overrides
> -FORTRAN =3D ""
> +FORTRAN =3D ",fortran"
> JAVA =3D ""
>=20
> EXTRA_OECONF_BASE =3D " --enable-lto \
> diff --git a/meta/recipes-devtools/gcc/gcc-configure-common.inc=20
> b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> index 4eb59fd..48dd606 100644
> --- a/meta/recipes-devtools/gcc/gcc-configure-common.inc
> +++ b/meta/recipes-devtools/gcc/gcc-configure-common.inc
> @@ -10,7 +10,7 @@ JAVA_armeb ?=3D ""
> JAVA_mipsel ?=3D ""
> JAVA_sh3 ?=3D ""
> # gcc 3.x expects 'f77', 4.0 expects 'f95', 4.1 and 4.2 expect =
'fortran'
> -FORTRAN ?=3D ",f77"
> +FORTRAN =3D ",fortran"
> LANGUAGES ?=3D "c,c++${FORTRAN}${JAVA}"
> # disable --enable-target-optspace for powerpc SPE
> # at -Os libgcc.so.1 creates references into
> diff --git a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc=20
> b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> index d40383c..4c641f2 100644
> --- a/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> +++ b/meta/recipes-devtools/gcc/gcc-configure-runtime.inc
> @@ -7,7 +7,7 @@ EXTRA_OECONF_PATHS =3D " \
>     --with-sysroot=3D${STAGING_DIR_TARGET} \
>     --with-build-sysroot=3D${STAGING_DIR_TARGET}"
>=20
> -RUNTIMETARGET =3D "libssp libstdc++-v3"
> +RUNTIMETARGET =3D "libgfortran libssp libstdc++-v3"
> RUNTIMETARGET_append_powerpc =3D " libgomp"
> RUNTIMETARGET_append_powerpc64 =3D " libgomp"
> #  ?

ideally this is all you should need. But then its not frequent tested =
combination
What errors do you run into ?=

