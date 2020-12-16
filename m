Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7111.1608124144840590902
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=bvraqW2H;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690085.outbound.protection.outlook.com [40.107.69.85])
	by mail.yoctoproject.org (Postfix) with ESMTPS id ACDAF38C070D
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a6nO5Y/ePxeWfpJnh9/IPoI7VWuQql5BmxwVDE3J7A6CYJFN92F0TA6JplrN4BO4CeynB5PgzNA5mNDDSWverjBwDGGPVUUuz/srSQM2ich2jfJWMhI037VeT5ekxM2g9Ug0/7jzyoxi9Nlt5n8FnFtlJgge1xQg0b+HoX+BgAbMJqhK1bnX8ckmuB3cjzxIxmdC+bD+GLNzPEX9FsSCTaQjOtdQEt/GeSW+sh0qe4z6YS7+/RGIm0jc23M8wQpUbapIURrkWTYc0a6qwavXrhDL7o35nHJbzEMdqmIJRy8LaFPyU6ToW1r1M77/jBO+GQFDK7UXnsP/z4hnDzLk+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=okQRyTPMnkjJoAFOvRZR0ejS8yb3nQajGmvq1JKqeb8=;
 b=BAnXoGU//1p+lcZ1kAimDJBhQBw7Dl5k8yXAXSbmNy2Y5OFUDlWl4NukKBXEQx/txN4jmMXBeOaMwp49FVgxnH97QvWp61HFNcN7heOST6WPbHs9xGr2nCjVLyeBV8znidI1E48lLswBKMjPRS5tth9P9/yosbW75+GLPuZqmRLO/reQ+MbB5eQLR62Qeh0+F3R2J/GhGwrRQD9IdZKsTgNm9CQMfJB3LvMKlmCEvDfA5f7GrwdHPUamkj0Dh7hJGon9+EkV28ivGq2oFa+8ZgQuxgb58Khz1zl650m4qzOX0uRwpQWaeJkOrNxXSl4JOEf8krgZaCULfgrFZrhHeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=okQRyTPMnkjJoAFOvRZR0ejS8yb3nQajGmvq1JKqeb8=;
 b=bvraqW2H1EeFepZmD7x51ovbU/vTf9c43sYtpswRygtk4jTI6TEUxQfwAYMzMcjIpTsqk3IKOPcvJpXGpDNJ5GMF2kQo0B/kPSt5LkuNdEFCpdjnN9hNgD6v6raMKtapQbfbbXjft1v2thrHMsegA45sbn1zEoMq/XuAkqu7UNY=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:04 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:04 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 9/25] bazel-native/bazel.bbclass: use default Bazel toolchain to build Yocto native tools
Date: Wed, 16 Dec 2020 21:08:06 +0800
Message-Id: <20201216130822.28476-10-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:02 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: df5b2f8f-636a-4b86-0d1d-08d8a1c3c34f
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB457750E36B662D354FED7E6594C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	kNTcTdYAvf3PEORuwSPpx4Ac1vg7t3dlv1+ceDS2R0zOA2wuyXdfY7X7pVfeqVLFfm8TPATg1xUsBuojtHFK+wEuGjKxcwnJMK1RpMjeYsK7nt7s3W6xGL11lZ7ghdCNCfffiREf2/ycZFquUUDqfEDnE3tel4RVtaimRqYk25HyxgM+qsGUVdVgw4a1vAt39eqLjyt7te5dwGP2Xp1hBA0tykcU7iQ9C6rdXWaI3peu6h47WvPC1JBq8zmoEhpu10JA4COCBZeCV+3JdWZ7qiu3tXehkXw/T2U6L9a7VoAD1Xwtteh045CN5Rs5V6JcVn5r74ZjX0sTCLaZ99N1ccEjF7Ws69kpAiifAeTI9oXV4RViW9l4TksJjIwLWCP7ngJMuXZJusEznA/Ut2DM6Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?RX2Lu99YApZ+pXo/B3ZLxqp8ghmHbxLNjz6Fb7f/Q/7Q/ESb3Z5j5RxhhHKm?=
 =?us-ascii?Q?tp3R1+9U8Xinx3BbOLyDn8iqhN/YuywU9jvyDyooqODex++cdwa9Pz1IPTZc?=
 =?us-ascii?Q?BwYeYE/To6mLBmhurAOzpNuMK4kTSAAJIVvr56Ac11+kBoMLaAFvJISrdeHO?=
 =?us-ascii?Q?CBevAfP453svk2lBi31TxNz6us2k9oM5lkYjQjKQ6sfg9D/c2Fz/WV1JlyG7?=
 =?us-ascii?Q?9n1dlVXoIB/GftJmvSmvz5EstpPump6Qm1kdnHaSbA51prl92hy9v6pHRZIG?=
 =?us-ascii?Q?g9rRRsMdWCkqmXELWr4Cvn9tO6tnj6AzBIFl4b7//Clo30XL62bdqNE5gmF9?=
 =?us-ascii?Q?fy7tHYhCkPlj7MAg68a6TFqc8Wv5nvivOuwORK1w4It70/VW0VOcEY2uWlFU?=
 =?us-ascii?Q?R+RdhF8VrALTWC+TTdyYF8hxp2+7nuOl4lPe87LlYWCZNk4YKyzSe5M7SDYg?=
 =?us-ascii?Q?aoXot3EYnFRrhSkNxGXj4LTe3u77QBmJANJxv2vHfBCdtjSFqUWIDdQvnm+o?=
 =?us-ascii?Q?z0KF929deuD9RaHbwEQg0/Ie10bmMgwCpTGZDpz7G+XBpkHO2ZIlDOstvqpe?=
 =?us-ascii?Q?zkS1pemKAUlg/HehfPGdIYQN4Xr4gyt6YGt5+8Sweyp8JwBp6IfTYWi8jJ/H?=
 =?us-ascii?Q?RYvjhe1HMvd786TJcUoYBofTvFG8PCFsj3LbXmak5PaF8iS7AHVT+W/VMa4y?=
 =?us-ascii?Q?f29BgUsHNOKExMYJXzzOM5w0pTkJ2+B/8II5u+NjZoOsKzKuk5FPuEzzd4sv?=
 =?us-ascii?Q?PV9FpwDwxadEtO9qj7VJ2BHrsITULZ4PhsgDkNzM5t8UoOZ+xfuWGwSEmcA3?=
 =?us-ascii?Q?RqrVCKcN5w3IakD2vz7Lez4yoDPArK0Bo6Y6kvc4xmtMPsWipmAbM5b8vZFg?=
 =?us-ascii?Q?paSBk2gBNDRlEINHNT/o/cZb+EtkDovCAd7q/GyFT2v0Gd4CxFJSSwHVacA8?=
 =?us-ascii?Q?2EBSh0FnOj8N8ZTdJfQfHVHZTCGeA2+BFvvb5rRgFQa4PLo/QkqvJ3zF18xt?=
 =?us-ascii?Q?sN7F?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:03.9738
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: df5b2f8f-636a-4b86-0d1d-08d8a1c3c34f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Cs3e88UCNHzG3R83oGTmAFz4as8ckeL860ICq6YCv0SDaQEFL5laAGkHP4uBVfIx8XhyMUFT5+RV8/nRVWSwnIfYXoQ9sIuw7kNQnjhCUI0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

While using the default Bazel C++ toolchain to build Yocto native tools
(bazel build --host_crosstool_top=@bazel_tools//tools/cpp:toolchain),
it failed with `bazel references a path outside of the execution root',

Add Yocto native sysroot dir (YOCTO_NATIVE_SYSROOT) to
builtin_include_directories could fix the issue

If not set YOCTO_NATIVE_SYSROOT, use NOT_SET_YOCTO_NATIVE_SYSROOT
to replace as a warning

Set YOCTO_NATIVE_SYSROOT in bazel.bbclass

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/bazel.bbclass                         |  2 +
 recipes-devtools/bazel/bazel-native_3.1.0.bb  |  1 +
 ...-sysroot-dir-to-the-default-Bazel-to.patch | 39 +++++++++++++++++++
 3 files changed, 42 insertions(+)
 create mode 100644 recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index 65d2932..b4c2a7f 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -109,3 +109,5 @@ EXPORT_FUNCTIONS do_configure
 CCACHE_DISABLE = "1"
 
 inherit unsupportarch
+
+export YOCTO_NATIVE_SYSROOT="${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler/recipe-sysroot-native"
diff --git a/recipes-devtools/bazel/bazel-native_3.1.0.bb b/recipes-devtools/bazel/bazel-native_3.1.0.bb
index f3efde1..0555f2f 100644
--- a/recipes-devtools/bazel/bazel-native_3.1.0.bb
+++ b/recipes-devtools/bazel/bazel-native_3.1.0.bb
@@ -9,6 +9,7 @@ SRC_URI = "https://github.com/bazelbuild/bazel/releases/download/${PV}/bazel-${P
            file://0001-HttpDownloader-save-download-tarball-to-distdir.patch \
            file://0001-fix-unzip-command-not-found.patch \
            file://0001-python3.patch \
+           file://0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch \
 "
 
 inherit native python3native
diff --git a/recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch b/recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch
new file mode 100644
index 0000000..b08c65a
--- /dev/null
+++ b/recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch
@@ -0,0 +1,39 @@
+From 707ba08068432262b3d02b29804c00afe7133ff6 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Thu, 10 Dec 2020 16:12:51 +0800
+Subject: [PATCH] add Yocto native sysroot dir to the default Bazel toolchain
+
+While using the default Bazel C++ toolchain to build Yocto native tools
+(bazel build --host_crosstool_top=@bazel_tools//tools/cpp:toolchain),
+it failed `bazel references a path outside of the execution root',
+
+Add Yocto native sysroot dir (YOCTO_NATIVE_SYSROOT) to
+builtin_include_directories could fix the issue
+
+If not set YOCTO_NATIVE_SYSROOT, use NOT_SET_YOCTO_NATIVE_SYSROOT
+to replace as a warning
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ tools/cpp/unix_cc_configure.bzl | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/tools/cpp/unix_cc_configure.bzl b/tools/cpp/unix_cc_configure.bzl
+index 84f5479..e17aa9d 100755
+--- a/tools/cpp/unix_cc_configure.bzl
++++ b/tools/cpp/unix_cc_configure.bzl
+@@ -424,6 +424,9 @@ def configure_unix_toolchain(repository_ctx, cpu_value, overriden_tools):
+         ),
+     )
+ 
++    # Customize for Yocto
++    builtin_include_directories.append(get_env_var(repository_ctx,"YOCTO_NATIVE_SYSROOT", "NOT_SET_YOCTO_NATIVE_SYSROOT"))
++
+     write_builtin_include_directory_paths(repository_ctx, cc, builtin_include_directories)
+     repository_ctx.template(
+         "BUILD",
+-- 
+2.18.2
+
-- 
2.21.0

