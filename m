Return-Path: <james.woodyatt@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2182E0096C; Thu,  1 May 2014 16:04:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 01 May 2014 16:04:01 PDT
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9F2BE00478
	for <yocto@yoctoproject.org>; Thu,  1 May 2014 16:04:01 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 May 2014 16:02:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,967,1389772800"; d="scan'208";a="524674914"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
	by fmsmga001.fm.intel.com with ESMTP; 01 May 2014 16:02:57 -0700
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 1 May 2014 16:02:56 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.80]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.229]) with mapi id
	14.03.0123.003; Thu, 1 May 2014 16:02:56 -0700
From: "Woodyatt, James" <james.woodyatt@intel.com>
To: Yocto Project Main <yocto@yoctoproject.org>
Thread-Topic: [PATCH 1/1] dylan: fix C++ standard library headers on OS X
Thread-Index: AQHPZZF9y6Ed61iBiEeKazT6i7KYyA==
Date: Thu, 1 May 2014 23:02:56 +0000
Message-ID: <9B489023-F966-4C06-ACD4-A5028E46D5F1@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.232.24.19]
MIME-Version: 1.0
Subject: [PATCH 1/1] dylan: fix C++ standard library headers on OS X
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
X-List-Received-Date: Thu, 01 May 2014 23:04:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="Windows-1252"
Content-ID: <B96FCD189A780C43A559015EDE512BD8@intel.com>
Content-Transfer-Encoding: quoted-printable

commit 562fa987cea60d61c256195adce7e83bf1c1a8c9
Author: james woodyatt <james.woodyatt@intel.com>
Date:   Thu May 1 14:44:39 2014 -0700

    Fix C++ standard library header directory configuration.
   =20
    Remove the 4.2.1 directory from the --with-gxx-include-dir path provide=
d
    to the configure script for GCC 4.7 in the cross-canadian build.

diff --git a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend b/recipes=
-devt
index 3fcc012..083b930 100644
--- a/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
+++ b/recipes-devtools/gcc/gcc-cross-canadian_4.7.bbappend
@@ -4,7 +4,7 @@ INSANE_SKIP_${PN}_append_darwinsdk =3D " staticdev"
 LDFLAGS_darwinsdk =3D "${BUILDSDK_LDFLAGS} -L${libdir}/.."
=20
 # Change gxx-include-dir
-EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/sysr=
oots/${TU
+EXTRA_OECONF_PATHS_darwinsdk =3D "--with-gxx-include-dir=3D${SDKPATH}/sysr=
oots/${TU
                       --with-build-time-tools=3D${STAGING_DIR_NATIVE}${pre=
fix_nat
                       --with-sysroot=3D${SDKPATH}/sysroots/${TUNE_PKGARCH}=
${TARGE
                       --with-build-sysroot=3D${STAGING_DIR_TARGET}"

=97
james woodyatt <james.woodyatt@intel.com>
Software Architect, New Devices Group


