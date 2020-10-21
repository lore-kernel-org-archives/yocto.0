Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by mx.groups.io with SMTP id smtpd.web08.7319.1603258552698389712
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 22:35:52 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 192.55.52.88, mailfrom: naveen.kumar.saini@intel.com)
IronPort-SDR: DkOSwuOSWvgqjunh+jGCs7Lsb3zIW8Y85+HtNUhVYXQTLKXD7gzg1sSZVsUZqwR3dvcR+RXskH
 3OaRFb1RmNUg==
X-IronPort-AV: E=McAfee;i="6000,8403,9780"; a="184969438"
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; 
   d="scan'208";a="184969438"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Oct 2020 22:35:51 -0700
IronPort-SDR: G0ZGkz01DsKhQ95OXaqH9bx+zhGeeus3jsaqHJcp3ircd0vXLlZCj8JrKbiunODJBuqr9vhX+Q
 v0825CJwwAsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,400,1596524400"; 
   d="scan'208";a="466176890"
Received: from kmsmsx601.gar.corp.intel.com ([172.21.219.141])
  by orsmga004.jf.intel.com with ESMTP; 20 Oct 2020 22:35:50 -0700
Received: from kmsmsx603.gar.corp.intel.com (172.21.219.143) by
 kmsmsx601.gar.corp.intel.com (172.21.219.141) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 21 Oct 2020 13:35:49 +0800
Received: from kmsmsx603.gar.corp.intel.com ([172.21.219.143]) by
 kmsmsx603.gar.corp.intel.com ([172.21.219.143]) with mapi id 15.01.1713.004;
 Wed, 21 Oct 2020 13:35:49 +0800
From: "Naveen Saini" <naveen.kumar.saini@intel.com>
To: Ross Burton <ross.burton@arm.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [meta-zephyr][PATCH] zephyr: use TCLIBC=newlib directly
Thread-Topic: [meta-zephyr][PATCH] zephyr: use TCLIBC=newlib directly
Thread-Index: AQHWpt6LxzB7jS1O/0eIMuxvSROcL6mhiQkw
Date: Wed, 21 Oct 2020 05:35:49 +0000
Message-ID: <aa6dbe8064824081b832cb11cfe98eb2@intel.com>
References: <20201020124254.471303-1-ross.burton@arm.com>
In-Reply-To: <20201020124254.471303-1-ross.burton@arm.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-product: dlpe-windows
dlp-version: 11.5.1.3
x-originating-ip: [10.108.32.68]
MIME-Version: 1.0
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Few kernel testcases have dependencies on gperf-native, so we should keep i=
t in DEPENDS.

Regards,
Naveen

-----Original Message-----
From: Ross Burton <ross.burton@arm.com>=20
Sent: Tuesday, October 20, 2020 8:43 PM
To: yocto@lists.yoctoproject.org
Cc: Saini, Naveen Kumar <naveen.kumar.saini@intel.com>
Subject: [meta-zephyr][PATCH] zephyr: use TCLIBC=3Dnewlib directly

Instead of setting TCLIBC=3Dbaremetal and then adding newlib in various pla=
ces, just set TCLIBC=3Dnewlib directly.

This also means we can use the standard DEPENDS instead of reinventing them=
.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 conf/distro/zephyr.conf                               | 7 +------
 recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc | 3 ---
 2 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/conf/distro/zephyr.conf b/conf/distro/zephyr.conf index 44448a=
f..a98da32 100644
--- a/conf/distro/zephyr.conf
+++ b/conf/distro/zephyr.conf
@@ -5,16 +5,11 @@ DISTRO_VERSION =3D "1.0"
=20
 TARGET_VENDOR =3D "-yocto"
=20
-TCLIBC =3D "baremetal"
-TCLIBCAPPEND =3D ""
+TCLIBC =3D "newlib"
=20
 TEST_TARGET =3D "QemuTargetZephyr"
 TEST_SUITES =3D "zephyr"
=20
-PREFERRED_PROVIDER_virtual/libc =3D "newlib"
-PREFERRED_PROVIDER_virtual/libiconv =3D "newlib"
-
-TOOLCHAIN_TARGET_TASK +=3D " newlib"
 INHERIT +=3D "siteinfo-zephyr"
=20
 INHERIT +=3D "uninative"
diff --git a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc b/recipe=
s-kernel/zephyr-kernel/zephyr-kernel-common.inc
index 7fa4b25..b947472 100644
--- a/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
+++ b/recipes-kernel/zephyr-kernel/zephyr-kernel-common.inc
@@ -19,9 +19,6 @@ EXTRA_OECMAKE_append_arm =3D " -DZEPHYR_MODULES=3D${S}/mo=
dules/cmsis"
 export ZEPHYR_BASE=3D"${S}"
=20
=20
-# We always need a toolchain to cross-compile.
-INHIBIT_DEFAULT_DEPS =3D "1"
-DEPENDS +=3D "gcc-cross-${TARGET_ARCH} libgcc ${TOOLCHAIN_TARGET_TASK} gpe=
rf-native"
 DEPENDS +=3D " python3-pyelftools-native python3-pyyaml-native python3-pyk=
walify-native"
 CROSS_COMPILE =3D "${STAGING_BINDIR_TOOLCHAIN}/${TARGET_PREFIX}"
=20
--
2.25.1

