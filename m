Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.3735.1609991048236679077
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jan 2021 19:44:08 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=F/a9QE9E;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2056.outbound.protection.outlook.com [40.107.94.56])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2173138C0895
	for <yocto@yoctoproject.org>; Thu,  7 Jan 2021 03:44:08 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gPcsmo6Drs6ZMtM0TPmyqeTZ3dZ7Oq1yL6UkTtSR5AmYAt3nKpiEhwg27gpWxWuJq2r7wA14uVALuTN8rj4aoKFZp5k2KGRY2X1gVT4sA2QqJF8FP5rA/5dQsNwaXteIasFh8jjPHv9cv+K9/LBN3ayOCFwZB/B0qTRYAH9e5rG3xjw3XHKR3bfx2UmRMlos7VxtAHKC0q1OOVUYrf8HQ1H5n2kVfKjLM0+cM4h8zOqpcoOzWklzgYZw8Ei9Sb8Shk/nWYn4ucP9VUspe5wKtnbENGRfZ1GACo0dKDyN8iuhqSgp/Wjvj6SKZ6zbsC2J7T0V5Y3lCBTRbVL7gbwdLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KUYIsO10yTe6S3svcEOZkF6SMqVP4oJvZJh8eYYnK7U=;
 b=WxkjR8O4iWNW6mMc5sXXdCTdoei+3zx/mMFxNw32xsaZkHmCcdMoqHagCWs1tC/is2YJ5EkXZ15kGYxlTsHXOBsSXib6Ha36KuTWzIrlFUn1dCELj7oqSvMdeOgnlO4HjWWXPmnQcbJclBXbaRFo57E0Ry/fnyuLBDlbBx6QUSSrDabJfhJhRGw+gM/D7xEr1g1EFd9ZNbyakUrgtLYTi+SqLblgf7kVaLzCl2nxUkUf2KiBlGYJUj6xBScnbtRCmY5Dbsr7jS5Mf1/FUgqLLPiavE1dt1aM1KU3YcEDvJfyALa6IFM0cGIEeC5tdal/q9TjmKshTsHEgrby0Wp0Kg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KUYIsO10yTe6S3svcEOZkF6SMqVP4oJvZJh8eYYnK7U=;
 b=F/a9QE9EBM1lLlnVUPR0tWrPVY2QFuoryhugSLVPEoyJivJa9luICyFUOIKLmfas0RiC+WKxB2G++hCEPmiKrlXMCyocyqq+DPDN3mOx0/mS03GVXqA2DiNo40I0/B7Y5s2bHvOd0/lBwDLQYBBWiqin5r7P7GyPbJRK1o0JXIc=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1584.namprd11.prod.outlook.com (2603:10b6:301:e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6; Thu, 7 Jan
 2021 03:44:07 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3721.024; Thu, 7 Jan 2021
 03:44:07 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 05/17] libselinux: upgrade to 3.1 (20200710)
Date: Thu,  7 Jan 2021 11:43:33 +0800
Message-Id: <20210107034345.37200-6-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210107034345.37200-1-yi.zhao@windriver.com>
References: <20210107034345.37200-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR02CA0130.apcprd02.prod.outlook.com
 (2603:1096:202:16::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK2PR02CA0130.apcprd02.prod.outlook.com (2603:1096:202:16::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.6 via Frontend Transport; Thu, 7 Jan 2021 03:44:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff271ead-ebbe-41a8-6a7b-08d8b2be7c49
X-MS-TrafficTypeDiagnostic: MWHPR11MB1584:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1584E2D346302F72C3CC4965F9AF0@MWHPR11MB1584.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iWAj9Mzzo2WN5M5cnnZdHsQ5FktTVd0Nk3GUqRt4Pt9a17ZKodSNHVFJ8yhENaJl8WEOeUM2LCF0hCFFpU2sxQdwAvd6mq1e5pxzoWYBlO4z3a362r9EKswe7vRPb+f8RHOLyQMFoKSGsuZ52oVVwA7YfZnaqHm3c2mog2k0XgPRwVVappIepQoJb2QjZz6Hit411eHgW3RZnfV4mHd+azAxX0V5kjAPc5MWL+IMde5tpiEdSBpmMvBxlpvnuvNaXoVQMVfdrSdoTcC1tWUwRam8FYzED7Q78nBGBLQaUmfOQu5aU2D7LXTsZEcwZtO8Ik9NNPZJcSgUnbThDwV0P3BPhdbIlzKv++MFMjCVziNNohghIqrNCUBlC6Aw148fDXtbqbxIEf7Z0AmwKeWcyYaWS50LJqPs0nMwJqCiv7SvtPym8RGEiRlwlVCCsrE2+9kCaMCFURZRHjh8O+EC5A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(396003)(136003)(346002)(376002)(366004)(316002)(66946007)(8676002)(478600001)(5660300002)(6486002)(66556008)(66476007)(83380400001)(8936002)(1076003)(2906002)(6666004)(186003)(36756003)(16526019)(44832011)(6512007)(86362001)(52116002)(2616005)(956004)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?dMZGiVyGqC/A5UdjPJSBlDxGW1b/5q1ttUkR2zuncLKdwLQZL/ztl+1Ty2C6?=
 =?us-ascii?Q?rBRZBWGU5J1CVBP05vIj1jt5MNxu6C/Lk9MEV3zVAowm9/GdFNoH3GOWtbVx?=
 =?us-ascii?Q?TNHqCzYbnbKgc1QoXaZi38Rfd0VE/z6Wuk7uCZ+vM6PHEhMwV1gxjacjQcmg?=
 =?us-ascii?Q?SbdbNswRBVccDS/7LhcBCFiVezzEJuqKXe3T/sgiCb7LCMvJ469QWW9qdNbo?=
 =?us-ascii?Q?gUTCYAMOW5Msrqbe91MTwUB8o/5v1dgrPpHjADEgdBdIIB5MSlaC7r47aYY2?=
 =?us-ascii?Q?LoowvctTA+70OdqEH8ai8iyWKmcKON0AHfMOdaBZfzSoRGaP3vix9R2/p0fu?=
 =?us-ascii?Q?dmabWfPfTL0Nhur4+rB2qn3pT2ZANi0r7o92vo9G/4DmwBS92jN4b40kK7qj?=
 =?us-ascii?Q?o40T12BiYLAEz2lQ0557j0Cr8ya0Uc/6gHfrTKjumZBxVIZre7brAhGfu0cX?=
 =?us-ascii?Q?xtNwUiKQlhIojTo+9MSlGhH+C/reNg6isErd9+rbzVFyPXA+zssui99BBIr9?=
 =?us-ascii?Q?xkm90LbcB2bls2cz47vcCga1FEmxxf1x9JZGaREQwLKsWG03tcWGJ38rAhVX?=
 =?us-ascii?Q?gMkixNtok+Q+ge9Dc0aujVKOCE8DvKdJAKsPE4C1VYt/mlOUcYJC7CIiX/ip?=
 =?us-ascii?Q?R+pjT92IefX0zbCY42LMpBIhji4AGVUqyc5O6QnjEVPYdbw5up+LWmQx+TSK?=
 =?us-ascii?Q?JFq3MtJjO5ZBRZLcRrwhFb44UuQRJHt9ER0EGgldzqR+tfzE7jVprcQvRBBL?=
 =?us-ascii?Q?OwRElbYwY3Ro1AVIp6tZupFrQODNtA3B+qdBsqQUv4qRTVJxAx1Gb8nK5Umm?=
 =?us-ascii?Q?FhwgSNSvhjYR0Q/YUyCY1UnEq5RW+NKQKckSUPz8KsUFa0j1yzspMkbCCJnD?=
 =?us-ascii?Q?l1Y003/NMcjqdaB8gXIeaUhJuoQaOQqaDtReM9Gdux3XU9Wl+9XkdKBSR5L1?=
 =?us-ascii?Q?A3VYt3ab/Vd2dLjJwivO/YzbeKBrnsghlSSOj0vjMp3wZcV3rfD2tGJDYnuS?=
 =?us-ascii?Q?xsnQ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jan 2021 03:44:07.0954
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: ff271ead-ebbe-41a8-6a7b-08d8b2be7c49
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ne4NBYhvWi0frg7fn6X16AxZI4YkIuZNywF+Oi+Orv6iICgGK6zInmvpqUFRMiOq0207lNcmi2HLN8oLyJBdXw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1584
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Drop backported and obsolete patches:
  0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch
  libselinux-drop-Wno-unused-but-set-variable.patch

Add patch to fix build on musl:
  0001-libselinux-do-not-define-gettid-for-musl.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ainst-musl-and-uClibc-libc-libraries.patch | 38 ---------------
 ...elinux-do-not-define-gettid-for-musl.patch | 47 +++++++++++++++++++
 ...nux-drop-Wno-unused-but-set-variable.patch | 26 ----------
 recipes-security/selinux/libselinux_3.0.bb    | 15 ------
 recipes-security/selinux/libselinux_3.1.bb    | 17 +++++++
 5 files changed, 64 insertions(+), 79 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux/0001-Fix-building=
-against-musl-and-uClibc-libc-libraries.patch
 create mode 100644 recipes-security/selinux/libselinux/0001-libselinux-d=
o-not-define-gettid-for-musl.patch
 delete mode 100644 recipes-security/selinux/libselinux/libselinux-drop-W=
no-unused-but-set-variable.patch
 delete mode 100644 recipes-security/selinux/libselinux_3.0.bb
 create mode 100644 recipes-security/selinux/libselinux_3.1.bb

diff --git a/recipes-security/selinux/libselinux/0001-Fix-building-agains=
t-musl-and-uClibc-libc-libraries.patch b/recipes-security/selinux/libseli=
nux/0001-Fix-building-against-musl-and-uClibc-libc-libraries.patch
deleted file mode 100644
index 8308553..0000000
--- a/recipes-security/selinux/libselinux/0001-Fix-building-against-musl-=
and-uClibc-libc-libraries.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From 61bfcbffce32be51d712040c3f84293b78428184 Mon Sep 17 00:00:00 2001
-From: Adam Duskett <Aduskett@gmail.com>
-Date: Tue, 7 Apr 2020 13:53:05 -0700
-Subject: [PATCH] Fix building against musl and uClibc libc libraries.
-
-Currently, the src/Makefile provides the FTS_LDLIBS when building agains=
t musl
-or uClibc. However, this is missing from utils/Makefile, which causes li=
nking
-to fail.
-
-Add the FTS_LDLIBS variable to the LDLIBS variable in utils/Makefile to =
fix
-compiling against uClibc and musl.
-
-Signed-off-by: Adam Duskett <Aduskett@gmail.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/aa40067b7b86d5e4c951fc=
cae1aa98baff148613]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- utils/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/utils/Makefile b/utils/Makefile
-index 3615063..a5632b7 100644
---- a/utils/Makefile
-+++ b/utils/Makefile
-@@ -45,7 +45,7 @@ endif
-=20
- override CFLAGS +=3D -I../include -D_GNU_SOURCE $(DISABLE_FLAGS) $(PCRE=
_CFLAGS)
- override LDFLAGS +=3D -L../src
--override LDLIBS +=3D -lselinux
-+override LDLIBS +=3D -lselinux $(FTS_LDLIBS)
- PCRE_LDLIBS ?=3D -lpcre
-=20
- ifeq ($(ANDROID_HOST),y)
---=20
-2.7.4
-
diff --git a/recipes-security/selinux/libselinux/0001-libselinux-do-not-d=
efine-gettid-for-musl.patch b/recipes-security/selinux/libselinux/0001-li=
bselinux-do-not-define-gettid-for-musl.patch
new file mode 100644
index 0000000..5d6e409
--- /dev/null
+++ b/recipes-security/selinux/libselinux/0001-libselinux-do-not-define-g=
ettid-for-musl.patch
@@ -0,0 +1,47 @@
+From 5f6f4a095bc82b29c3871d4d8a15d9c16cef39ef Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Wed, 6 Jan 2021 10:42:11 +0800
+Subject: [PATCH] libselinux: do not define gettid() for musl
+
+The musl has implemented gettid() function:
+http://git.musl-libc.org/cgit/musl/commit/?id=3Dd49cf07541bb54a5ac7aec1f=
eec8514db33db8ea
+
+Fixes:
+procattr.c:38:14: error: static declaration of 'gettid' follows non-stat=
ic declaration
+   38 | static pid_t gettid(void)
+      |              ^~~~~~
+In file included from procattr.c:2:
+/build/tmp/work/core2-32-poky-linux-musl/libselinux/3.1-r0/recipe-sysroo=
t/usr/include/unistd.h:194:7:
+note: previous declaration of 'gettid' was here
+   194 | pid_t gettid(void);
+       |       ^~~~~~
+
+Upstream-Status: Pending
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ src/procattr.c | 8 +-------
+ 1 file changed, 1 insertion(+), 7 deletions(-)
+
+diff --git a/src/procattr.c b/src/procattr.c
+index 926ee54..519e515 100644
+--- a/src/procattr.c
++++ b/src/procattr.c
+@@ -24,13 +24,7 @@ static __thread char destructor_initialized;
+=20
+ /* Bionic and glibc >=3D 2.30 declare gettid() system call wrapper in u=
nistd.h and
+  * has a definition for it */
+-#ifdef __BIONIC__
+-  #define OVERRIDE_GETTID 0
+-#elif !defined(__GLIBC_PREREQ)
+-  #define OVERRIDE_GETTID 1
+-#elif !__GLIBC_PREREQ(2,30)
+-  #define OVERRIDE_GETTID 1
+-#else
++#if !defined(__GLIBC_)
+   #define OVERRIDE_GETTID 0
+ #endif
+=20
+--=20
+2.17.1
+
diff --git a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unus=
ed-but-set-variable.patch b/recipes-security/selinux/libselinux/libselinu=
x-drop-Wno-unused-but-set-variable.patch
deleted file mode 100644
index 688b4e3..0000000
--- a/recipes-security/selinux/libselinux/libselinux-drop-Wno-unused-but-=
set-variable.patch
+++ /dev/null
@@ -1,26 +0,0 @@
-From 865b8c40b331235ce2c9df1fcbbb3876c9b79338 Mon Sep 17 00:00:00 2001
-From: Randy MacLeod <Randy.MacLeod@windriver.com>
-Date: Tue, 30 Apr 2013 17:28:34 -0400
-Subject: [PATCH] libselinux: drop flag: -Wno-unused-but-set-variable
-
-Upstream status: Inappropriate [older compilers only]
-
-Signed-off-by: Randy MacLeod <Randy.MacLeod@windriver.com>
-
----
- src/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/src/Makefile b/src/Makefile
-index 2408fae..a89c0f7 100644
---- a/src/Makefile
-+++ b/src/Makefile
-@@ -96,7 +96,7 @@ PCRE_LDLIBS ?=3D -lpcre
-=20
- override CFLAGS +=3D -I../include -D_GNU_SOURCE $(DISABLE_FLAGS) $(PCRE=
_CFLAGS)
-=20
--SWIG_CFLAGS +=3D -Wno-error -Wno-unused-variable -Wno-unused-but-set-va=
riable -Wno-unused-parameter \
-+SWIG_CFLAGS +=3D -Wno-error -Wno-unused-variable -Wno-unused-parameter =
\
- 		-Wno-shadow -Wno-uninitialized -Wno-missing-prototypes -Wno-missing-d=
eclarations
-=20
- RANLIB ?=3D ranlib
diff --git a/recipes-security/selinux/libselinux_3.0.bb b/recipes-securit=
y/selinux/libselinux_3.0.bb
deleted file mode 100644
index 05d2346..0000000
--- a/recipes-security/selinux/libselinux_3.0.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-require selinux_20191204.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d=
0d0"
-
-SRC_URI[md5sum] =3D "b387a66f087b6d97713570e85ec89d89"
-SRC_URI[sha256sum] =3D "2ea2b30f671dae9d6b1391cbe8fb2ce5d36a3ee4fb1cd3c3=
2f0d933c31b82433"
-
-SRC_URI +=3D "\
-        file://libselinux-drop-Wno-unused-but-set-variable.patch \
-        file://libselinux-make-O_CLOEXEC-optional.patch \
-        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
-        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        file://0001-Fix-building-against-musl-and-uClibc-libc-libraries.=
patch \
-        "
diff --git a/recipes-security/selinux/libselinux_3.1.bb b/recipes-securit=
y/selinux/libselinux_3.1.bb
new file mode 100644
index 0000000..9d1cda5
--- /dev/null
+++ b/recipes-security/selinux/libselinux_3.1.bb
@@ -0,0 +1,17 @@
+require selinux_20200710.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D84b4d2c6ef954a2d4081e775a270d=
0d0"
+
+SRC_URI[md5sum] =3D "693680c021feb69a4b258b0370021461"
+SRC_URI[sha256sum] =3D "ea5dcbb4d859e3f999c26a13c630da2f16dff9462e3cc8cb=
7b458ac157d112e7"
+
+SRC_URI +=3D "\
+        file://libselinux-make-O_CLOEXEC-optional.patch \
+        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
+        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        "
+
+SRC_URI_append_libc-musl =3D " \
+        file://0001-libselinux-do-not-define-gettid-for-musl.patch \
+        "
--=20
2.25.1

