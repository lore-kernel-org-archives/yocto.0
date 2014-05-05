Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0C04E00B7C; Mon,  5 May 2014 16:12:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D170E00B5D
	for <yocto@yoctoproject.org>; Mon,  5 May 2014 16:12:45 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 05 May 2014 16:07:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,992,1389772800"; d="scan'208";a="506380931"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by orsmga001.jf.intel.com with ESMTP; 05 May 2014 16:12:44 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 5 May 2014 16:12:40 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX160.amr.corp.intel.com ([169.254.13.252]) with mapi id
	14.03.0123.003; Mon, 5 May 2014 16:12:40 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 1/1] dylan: fix C++ standard library headers on
	OS X
Thread-Index: AQHPZZF9y6Ed61iBiEeKazT6i7KYyJszGU+A
Date: Mon, 5 May 2014 23:12:39 +0000
Message-ID: <E6278F08-161F-41AF-B417-756C0B2DA6A2@intel.com>
References: <9B489023-F966-4C06-ACD4-A5028E46D5F1@intel.com>
In-Reply-To: <9B489023-F966-4C06-ACD4-A5028E46D5F1@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.28]
MIME-Version: 1.0
Subject: Re: [PATCH 1/1] dylan: fix C++ standard library headers on OS X
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
X-List-Received-Date: Mon, 05 May 2014 23:12:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <133104BCC5F041448F98CC3EFA976439@intel.com>
Content-Transfer-Encoding: quoted-printable

Resend, this time with all contents.

commit 562fa987cea60d61c256195adce7e83bf1c1a8c9
Author: james woodyatt <james.woodyatt@intel.com>
Date:   Thu May 1 14:44:39 2014 -0700

    Fix C++ standard library header directory configuration.
   =20
    Remove the 4.2.1 directory from the --with-gxx-include-dir path provide=
d
    to the configure script for GCC 4.7 in the cross-canadian build.

diff --git a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend b/recipes=
-devtools/gcc/gcc-cross-canadian_4.7.bbappend
index 3fcc012..083b930 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
@@ -4,7 +4,7 @@ INSANE_SKIP_${PN}_append_darwinsdk =3D " staticdev"
 LDFLAGS_darwinsdk =3D "${BUILDSDK_LDFLAGS} -L${libdir}/.."
=20
 # Change gxx-include-dir
-EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/sysr=
oots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS}/usr/include/c++/4.2.1 \
+EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/sysr=
oots/${TUNE_PKGARCH}${TARGET_VENDOR}-${TARGET_OS}/usr/include/c++ \
                       --with-build-time-tools=3D${STAGING_DIR_NATIVE}${pre=
fix_native}/${TARGET_SYS}/bin \
                       --with-sysroot=3D${SDKPATH}/sysroots/${TUNE_PKGARCH}=
${TARGET_VENDOR}-${TARGET_OS} \
                       --with-build-sysroot=3D${STAGING_DIR_TARGET}"


=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group

On May 1, 2014, at 16:02, Woodyatt, James <james.woodyatt@intel.com> wrote:

> commit 562fa987cea60d61c256195adce7e83bf1c1a8c9
> Author: james woodyatt <james.woodyatt@intel.com>
> Date:   Thu May 1 14:44:39 2014 -0700
>=20
>    Fix C++ standard library header directory configuration.
>=20
>    Remove the 4.2.1 directory from the --with-gxx-include-dir path provid=
ed
>    to the configure script for GCC 4.7 in the cross-canadian build.
>=20
> diff --git a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend b/recip=
es-devt
> index 3fcc012..083b930 100644
> --- a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
> +++ b/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
> @@ -4,7 +4,7 @@ INSANE_SKIP_${PN}_append_darwinsdk =3D " staticdev"
> LDFLAGS_darwinsdk =3D "${BUILDSDK_LDFLAGS} -L${libdir}/.."
>=20
> # Change gxx-include-dir
> -EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/sy=
sroots/${TU
> +EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/sy=
sroots/${TU
>                       --with-build-time-tools=3D${STAGING_DIR_NATIVE}${pr=
efix_nat
>                       --with-sysroot=3D${SDKPATH}/sysroots/${TUNE_PKGARCH=
}${TARGE
>                       --with-build-sysroot=3D${STAGING_DIR_TARGET}"
>=20
> =97
> james woodyatt <james.woodyatt@intel.com>
> Software Architect, New Devices Group
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


