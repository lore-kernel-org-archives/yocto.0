Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.767.1609817681732326361
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 19:34:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=nAb6fW6s;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: changqing.li@windriver.com)
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2089.outbound.protection.outlook.com [40.107.220.89])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E6A5938C088E
	for <yocto@yoctoproject.org>; Tue,  5 Jan 2021 03:34:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aFZC/thTX/gQqui8RYn0kIomD+n9mJ1mhcI+yjgc2PxFzWfYJtWjhjxzfKGhSw0LVxVR49QYFP6KxlWnkbLrPcr77BcvfLggAFLz8x7OduL7HscZXolx+nvw51J13mbdU0We3wsOy/ldrYezh8qfdOSbtXLexghNVIn13it4DDGPxjggbJXSf4ekkp7OHJZMQM3ED4JZyLIO/tiESjnXtVBiUj0xd5BH6yxBDAaw0xKPh375IrF2+BH2BIo2Ajd/Hy7AueNe7I+jeq3gTx6SNMy9hJdm1+2V2Z7+JDKwN2i+/yknKm3EtVwor86yQdPout2q6WmrzSG65LQ6gYL33w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjlhIfKtGhAjNl0EY7ovYXkU376b38wvwONbwLg8Kkc=;
 b=N5Uhi4Dv4QF/Qm0iZB/0fUt0k3p7LQndTCBNUCJivQf1NYyqZRfnS+J40j/sPAZMSZSTswAtO2bKjtXz/2x+K9J8w0jWhU4L02qxBiL02tkaTBqXICrQfVqVMvzh1oQ8Bg9iKTD9cffwhPMnGSUUic/mxFXMcbghf28NVsv5f51gBEDBCwmXYtAodR0/zK2+5dQnSnWpH9hXQSR4zZallDpEsubqj1WQg24zJs2LJCyBlxmwP2fjxP7ZSztfQdOBCgJztMRXP5LZxU/OmdcEdY+dWPPsqSBwWYI2pwe+R+z7/4/YgGpnK7PjkyTkS7A1D6t3y5slKJ6LFEDPODcjOA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XjlhIfKtGhAjNl0EY7ovYXkU376b38wvwONbwLg8Kkc=;
 b=nAb6fW6stz2U0TpSG+9MJ1L6Sv92haad1Jl15Z1PQMM3+S6KvFEuOocrqce7dbr98CBKDKeMX87LaN5SB/jBiu8udtqHEvxhQRZur4PP7x9CMoBr0tLbH0mjrjeYyGjSF6Z4I6Bm8S9Vh64j7Uzi2CbTbow+O7aJyL4IIh9xvRM=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from SN6PR11MB2557.namprd11.prod.outlook.com (2603:10b6:805:56::33)
 by SN6PR11MB2687.namprd11.prod.outlook.com (2603:10b6:805:54::27) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.24; Tue, 5 Jan
 2021 03:34:37 +0000
Received: from SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::3832:57b1:4d51:5781]) by SN6PR11MB2557.namprd11.prod.outlook.com
 ([fe80::3832:57b1:4d51:5781%7]) with mapi id 15.20.3721.024; Tue, 5 Jan 2021
 03:34:37 +0000
From: "Changqing Li" <changqing.li@windriver.com>
To: yocto@yoctoproject.org
Subject: [meta-mingw][PATCH] openssl: support for building nativesdk of mingw
Date: Tue,  5 Jan 2021 11:31:19 +0800
Message-Id: <20210105033119.425-1-changqing.li@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR0302CA0021.apcprd03.prod.outlook.com
 (2603:1096:202::31) To SN6PR11MB2557.namprd11.prod.outlook.com
 (2603:10b6:805:56::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core2.corp.ad.wrs.com (60.247.85.82) by HK2PR0302CA0021.apcprd03.prod.outlook.com (2603:1096:202::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3742.4 via Frontend Transport; Tue, 5 Jan 2021 03:34:35 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: aacd668d-35c4-489a-e841-08d8b12ad3c1
X-MS-TrafficTypeDiagnostic: SN6PR11MB2687:
X-Microsoft-Antispam-PRVS: 
	<SN6PR11MB26870C1F59A464A887043EC182D10@SN6PR11MB2687.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1468;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rYQ4ZS0SdJWWZoMb1553qdVyUEk3XqomAgpJ4rv1CNNrDi3vhtACh6HuCQJ4MW65+gmZx3s/FFzve28ujmqBSmfPauAn/5ng5QWhzh7Laju/A9QlVBXb8BNeioXsp+YduSte5CgGIgd9BUrqPmGGf4BcsRgtj8CkquPNpxaXVKMonGLcP1+scusvGBxALcwsFpRqhfWvxtCmmce5OrjdpdA0MpxTM4JTvoafwWfIiQ5n4fQWOIpFpcesFi1hSSS0VrgyEW/AvHujgbdC0QjTLsDFPMQHgPkuhPzDCYxRNDyOhx1mJGrymg+PwG+HHZenL8Q8jG6si8/+nMFbh/ab/NF0ool8VMDdaQzgzQsfsafLtkCnDPzwwHKmCYlDg7IZLLRoJxWT33AUbHo5rgInqKLxSe6vqXaAfNVwdGWGN53iGvMtED4pTi6+tJ9pacEsNWBPZYwMXvads3DeDYRcpQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SN6PR11MB2557.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(39850400004)(346002)(376002)(396003)(36756003)(316002)(5660300002)(2906002)(86362001)(478600001)(1076003)(8676002)(956004)(2616005)(16526019)(6506007)(44832011)(6486002)(186003)(6916009)(26005)(966005)(6512007)(66476007)(66556008)(6666004)(66946007)(8936002)(52116002)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Ogw/wf6cc9kk31uzpCZDsIVuHH8oFe6DciQYGUXhNcASe1Z7H8Y4lYZSFzoK?=
 =?us-ascii?Q?oCp+lNS52IUrWlf1iYJgi+AJrQvrA7hf1DfoVp7zj/vom8bzXXoUzck3Pw1l?=
 =?us-ascii?Q?bU0Zmo1f3D2r7lAcXV+uV5C30K6Ky8wa7iH0XiWK7AJxjFixWQlEOCrbw9hd?=
 =?us-ascii?Q?86C9DwTfBS3/hXqG2YeRHoPml3S9W1IqMdH7ou8qJHMI/IpkORJHTNM2sZCM?=
 =?us-ascii?Q?QRQrgp1TZ1vQhlePkzHPhrbTaCHxenbLeOcgYEsIbI0MrVBcngRHEBe5AKVh?=
 =?us-ascii?Q?kFkQ/XVhPK4FyPm5S2NcS1oP4iknQg1D5rztRsLnXjgPx70iUHaHDacIM4ka?=
 =?us-ascii?Q?tnjvKBGBflnunih3NnCScEAovcAq6t6OzNUZRVMG3qj9jMJdBHxwWczjOvXv?=
 =?us-ascii?Q?ApPUtn/yiI0XXwxhSLBf89ATqDfq265Gp0LXzqL9Y6FoASlnUpEWtJ/CciRr?=
 =?us-ascii?Q?AVHC1uKnnk27KuS6rxLLSwbVHOchksLdsYLK4ptvn9hk9uhNQzsrO56sle+F?=
 =?us-ascii?Q?JhRUj6Lf52iHMPa+YqyQl4NHuOMD3Yft9shPQWhp0CzRpBS5XeceJhRkGsSD?=
 =?us-ascii?Q?pV/k5L/SgXqadGTDSRUWGOtxLoLzPJD7jm5FqeOGz4+WCfZIqloKb1/6efVn?=
 =?us-ascii?Q?AiQ3eVpgile78fnSbBbmJth7Hj5h/p1LMDCRkT4b+sYz71JTXsXFxzK8kC0U?=
 =?us-ascii?Q?1jM+PlEesvDJRWfP27ChKeG5MDtQ08UghtQPplvvboozbm8t+LuM6BJUs9R3?=
 =?us-ascii?Q?QbMHW4yQbM5B0xLbmnBF3a74+14X8J4obyZaXsFrrMY+fR/7mwUGV2GvvGIg?=
 =?us-ascii?Q?jcrPDJnuF0cBgGc18Su5fu+gztPX2VGBZhpcq2baJgpe8+n1Te+of4Y+Oe6k?=
 =?us-ascii?Q?ARmJHn7G6JvhHhJCAO+Rw6P3Awf1knkb3F119Qj28A2qDou1wtY2AHyNhTCd?=
 =?us-ascii?Q?I0OD6KZgVdu/Cj/vzPRTbDDD42kb18VCxpvJgWvQJwdrf/bwBcY3WD/XKkeh?=
 =?us-ascii?Q?JMOS?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB2557.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2021 03:34:37.1588
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: aacd668d-35c4-489a-e841-08d8b12ad3c1
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: quEKkT62qOaSBXii4yx/A2hMJe5YxRZXx0aJeTYQK32f9T/3H7+CWd+MQicmoOzb+JXn6SEM0GJd6SvRkmLLZON8eQnInq81sQSnr2/S5pY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2687
Content-Type: text/plain

* add support for mingw32
* Engines are installed in a slightly different path, which is
  urgly, patch it to make the path shorter
* remove runtime dependency from perl for mingw nativesdk

since commit 70da1f956bfbb627691c47eba7451182aca758e3 of oe-core
'openssl: Add c_rehash to misc package and add perl runtime dependency'

package openssl-misc have runtime dependency on perl, and perl then
have depenency on another 3 recipes, db/gdbm/libxcrypt. according to
http://arsv.github.io/perl-cross/usage.html, perl don't support
cross-compile build for mingw32 and another 3 recipes also don't
support mingw well. so remove the dependency of perl, don't support
c_rehash for mingw.

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 ...ile.tmpl-don-t-add-prefix-for-libdir.patch | 32 +++++++++++++++++++
 .../openssl/openssl_%.bbappend                | 31 ++++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
 create mode 100644 recipes-connectivity/openssl/openssl_%.bbappend

diff --git a/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
new file mode 100644
index 0000000..028431b
--- /dev/null
+++ b/recipes-connectivity/openssl/files/0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch
@@ -0,0 +1,32 @@
+From 8fe5c9421acfaff35b637e7ad55d1df598bb7081 Mon Sep 17 00:00:00 2001
+From: Changqing Li <changqing.li@windriver.com>
+Date: Tue, 22 Dec 2020 09:22:10 +0800
+Subject: [PATCH] unix-Makefile.tmpl: don't add prefix for libdir
+
+we had pass libdir to Configure, don't use prefix again to
+avoid engineer dir set to:
+/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/opt/poky/3.2+snapshot/sysroots/x86_64-w64-mingw32/usr/lib/engines-1_1
+
+Upstream-Status: Inappropriate[oe-specific]
+
+Signed-off-by: Changqing Li <changqing.li@windriver.com>
+---
+ Configurations/unix-Makefile.tmpl | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Configurations/unix-Makefile.tmpl b/Configurations/unix-Makefile.tmpl
+index bbafb98..eecb63e 100644
+--- a/Configurations/unix-Makefile.tmpl
++++ b/Configurations/unix-Makefile.tmpl
+@@ -244,7 +244,7 @@ LIBDIR={- our $libdir = $config{libdir} || "lib";
+           File::Spec::Win32->file_name_is_absolute($libdir) ? "" : $libdir -}
+ ENGINESDIR_dev={- use File::Spec::Win32;
+                   our $enginesdir =
+-                      File::Spec::Win32->catdir($prefix,$libdir,
++                      File::Spec::Win32->catdir($libdir,
+                                                 "engines-$sover_dirname");
+                   our ($enginesdir_dev, $enginesdir_dir, $enginesdir_file) =
+                       File::Spec::Win32->splitpath($enginesdir, 1);
+-- 
+2.17.1
+
diff --git a/recipes-connectivity/openssl/openssl_%.bbappend b/recipes-connectivity/openssl/openssl_%.bbappend
new file mode 100644
index 0000000..7fd82f1
--- /dev/null
+++ b/recipes-connectivity/openssl/openssl_%.bbappend
@@ -0,0 +1,31 @@
+FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
+
+SRC_URI_append_mingw32_class-nativesdk = " \
+           file://0001-unix-Makefile.tmpl-don-t-add-prefix-for-libdir.patch \
+"
+
+do_configure_mingw32 () {
+	os=${HOST_OS}
+	target="$os-${HOST_ARCH}"
+	case $target in
+        mingw32-x86_64)
+                target=mingw64
+                ;;
+        mingw32-i686)
+                target=mingw
+                ;;
+        esac
+
+        useprefix=${prefix}
+        if [ "x$useprefix" = "x" ]; then
+                useprefix=/
+        fi
+        # WARNING: do not set compiler/linker flags (-I/-D etc.) in EXTRA_OECONF, as they will fully replace the
+        # environment variables set by bitbake. Adjust the environment variables instead.
+        HASHBANGPERL="/usr/bin/env perl" PERL=perl PERL5LIB="${S}/external/perl/Text-Template-1.46/lib/" \
+        perl ${S}/Configure ${EXTRA_OECONF} ${PACKAGECONFIG_CONFARGS} --prefix=$useprefix --openssldir=${libdir}/ssl-1.1 --libdir=${libdir} $target
+        perl ${B}/configdata.pm --dump
+}
+
+FILES_${PN}-engines_mingw32_class-nativesdk = "${libdir}/engines-1_1"
+RDEPENDS_${PN}-misc_remove_mingw32_class-nativesdk = "perl"
-- 
2.17.1

