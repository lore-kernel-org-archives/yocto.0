Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7105.1608124151090742099
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=KVWdQHVj;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2071.outbound.protection.outlook.com [40.107.93.71])
	by mail.yoctoproject.org (Postfix) with ESMTPS id CFFEF38C0849
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:10 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XrQBZvZLG92DXGeMJmD2dlB/uCqdguoQnl4dGaK0vA9115ZJgOKv73KI/GP8dj0B6Q0JzL3QN1e3gD2a7JDIZsapNFLKoB0kJIKSdfVj+ZZIS96zOockInNtoM2e1PXy9gUJSw0vGfZDj/xHI7DZPVTYnPSQMd2fubVNjPZrketKkCGUbbh1xbamqQKZmTpVb6HXohH5zWk0eQdKW+cxfwzzTNr6GRw8e96Wl7vQqEPEZItCP9jSq2JpghjYQotFs0Sywa/WSBasITv/EKAwFdy23z0en80daumQaO+qeTB5+OHgJ02OWpN+yO3BZJ89jQIGb/HElbzfqlgf7ppIYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=at9xEADsvWF6dOs3He5MB4yBDyN+vXCQ2D5S656ITzI=;
 b=EwwqKNDs4R7U/YbrjqnOml8SIdujPkT+pN6aYbC/VYVvu6kcVX+yIhqGZHEofIDfdaaPhFjTVrFBHV94GoQ0GPSKVcFCcTLr6jLMdnNdusptQsIuXGpbw+O2NqHKlp6vyibv/e/Jrg7Kbx8vI7rl+CzrKAIJxpYRKK7Ji9H8M2iOv7psnGZrJPr/zfJYbm6TYuzC7jdzC86NGS5o2WK/mfh4gHT50MVYnB1A/HXf5yoVmXa0XqZ509KA9BY+XnG6Q0xkGTrenMi5W7ShkK2g+WiT28kLg6r3fcJhOJExzkkKs1Gx0G9QBk4BNQP7YDuNWZ18G5AG+qVhUyT0c8kmQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=at9xEADsvWF6dOs3He5MB4yBDyN+vXCQ2D5S656ITzI=;
 b=KVWdQHVjRR/mZlrIDlzAZeXmnnHwpmk4FdiaEdUJ73vw70Pbh3Lx4T4/99rvs/+eOnuANsG4aw0j0dXxhugyQLIuI64ChXRalTloFu6mNKJQo4Jsypw4dKLwTG283mM8ahoH03L4Q7P/A4BfLrk2aJWR5tholYSqbS+6YTwW9ww=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:09 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:09 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 11/25] tensorflow: update cross compile support
Date: Wed, 16 Dec 2020 21:08:08 +0800
Message-Id: <20201216130822.28476-12-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8b3cd0e9-a3cd-4709-3ecb-08d8a1c3c674
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577A0C7E62C1A40E7A81ACA94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	08i69SjRyNEaaE1eusCZ9tFs8LCA5uR7nXGThStVCtnWU0nGVc74l0p60w5zv2drZxKrxmkDmgUMN4VFR5CD9Ol31nxFDDHF8tP5bsPCKbRnzAdsY957yXVu9GbwOv55yZJHq0xh0QqKdEytjo34kbDyBjMOMryuMTatI+xER9F6iQ+xTCGhXA7AGTJ9c1EmKo55ywBOAQasmJIjxXv96GXDAYWfmph+/e8SiRe0cxKpMgumGeXpo+/2SWSPbWDTYNGAVS3SvyruD5SrWxgBjSRy2z1A8rIAQTEomllrZs16sk462Jh3U0ORs2IC9Y406NL25neo3WwIauDJlY1iHKHYkgrT+G7xLo040WI4u9JqeT6Rd6utOtghiXJKMgbA2rSNRaiu2QsDrqT/s4t3jw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(30864003)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?2Kkp3mbnnk6YhDn4FFV2hpGYJzbNrx2fzu2DVLMk23VjoRyVrahvfJ6HqsQb?=
 =?us-ascii?Q?OMYv46w0r5olHTdkqmwOfuvh1WBtVY6N1iyBd1pGn2uZLHj5bL2wHcH37pAe?=
 =?us-ascii?Q?5+FqoswkckQ6wRvL3D3ZKdHps2dqUM7YtNlEgKBiK9pVuefjUCnHVRfJzVUR?=
 =?us-ascii?Q?VmO0MLW2KVZCjM7JQcy9TZt/V7l/w/6XfAEars6OyMSh1CLF4C105ydK5wbN?=
 =?us-ascii?Q?eTb6PVZ+vBjv1ebqHjSEbz8jGbCZpYUX882ZOyqPpg1QCCYK9ilq4ekG63r9?=
 =?us-ascii?Q?MzExvRhOUdB1LoY8B6jpcCsTF0PIgfrOd+cw1PNofdfT2OO42L6gvO4TITkr?=
 =?us-ascii?Q?9k3m+Ts/mLV4kjogNyMCm11RhqfmGMJ1Saw+UxwnGBmt8JYbvh9nBG8p/viL?=
 =?us-ascii?Q?imlQmZ7QvaNHix0Lfgl3pbHCOTHMmUmfVyUuFOZMauU0lYz+yAR4BzSAmfAS?=
 =?us-ascii?Q?/nC64yNebDLaAqImn+TuzS9T4uo1wV14M9TZPcHU/1mtIA/0Vn0ckYrk6ZL1?=
 =?us-ascii?Q?UiKNbrR6of1CE0Zkilqf8wFbS/9z0nnb1jDXvnPvho1mHxFIl7TKCnynGHVY?=
 =?us-ascii?Q?1R9kAlQx2VfCW+tb38CY/JlP2qlz+bP0alEuvWUin/43cVwNIPB+pCJos8A+?=
 =?us-ascii?Q?w7JZJIAMskNHfVa40I0WZMDZktjiEwIJWvIi6zKfleKofcerNWsJmai0xvdB?=
 =?us-ascii?Q?lS7MpXcVjHuY6Uar5GcyQvvseJJ8HE2Q2pk/g+IqX+3Y2zpAkYcExM5WeMq1?=
 =?us-ascii?Q?xhMv6RhI45f5Uesa1+UyQQjOrgr1RkXriNyuA9+bNtF/mFTBAKKgV+i6pYoi?=
 =?us-ascii?Q?XP9ds0UR3b3IiIc1p8wSADHa0DlE8+AqkTkBNwWrYWPQPj9D61RZpZkAWSan?=
 =?us-ascii?Q?8xDlZTbRnawGnikC7QpTbcvRfBWmey+ooP8g7xqZkM2WJWEGxT5NZ7oyrlh3?=
 =?us-ascii?Q?TwWph4utgYDmhd9Z8hqmOtg1jOIOZagGK4u2I5ytrW7AEcLSPXBRj5g+jid7?=
 =?us-ascii?Q?+ngq?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:09.2047
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b3cd0e9-a3cd-4709-3ecb-08d8a1c3c674
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EYHTjBId3gxF7Zp8dG8OXVX8WhGzaNkXzh61W3TAeboun2W+EE8E5UqiEFSyy69fc8waEGcHz8ZgMYuGJ1ralz+ZTQOJwcDdMARmYxjLeuc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

- CROSSTOOL files are no longer supported after Bazel v0.26+,
  so converted over to the new toolchain config format

- Support 32 bit x86 and 64 bit x86 for Yocto

- Support 32 bit arm and 64 bit arm (aarch64) for Yocto

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/bazel.bbclass                         |   7 +-
 classes/unsupportarch.bbclass                 |  13 +-
 ...support-32-bit-x64-and-arm-for-yocto.patch | 129 ++++++
 recipes-framework/tensorflow/files/BUILD      |  56 ---
 recipes-framework/tensorflow/files/BUILD.in   |  40 ++
 .../tensorflow/files/cc_config.bzl.tpl        | 411 ++++++++++++++++++
 .../files/yocto_compiler_configure.bzl        |  26 +-
 ...or_1.13.bb => tensorflow-estimator_2.4.bb} |   0
 .../tensorflow/tensorflow_2.4.0.bb            |  21 +-
 9 files changed, 634 insertions(+), 69 deletions(-)
 create mode 100644 recipes-framework/tensorflow/files/0001-support-32-bit-x64-and-arm-for-yocto.patch
 delete mode 100644 recipes-framework/tensorflow/files/BUILD
 create mode 100644 recipes-framework/tensorflow/files/BUILD.in
 create mode 100644 recipes-framework/tensorflow/files/cc_config.bzl.tpl
 rename recipes-framework/tensorflow/{tensorflow-estimator_1.13.bb => tensorflow-estimator_2.4.bb} (100%)

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index 2a64156..5a76244 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -75,13 +75,16 @@ bazel_do_configure () {
     cat > "${S}/bazelrc" <<-EOF
 build --verbose_failures
 build --spawn_strategy=standalone --genrule_strategy=standalone
-buuld --jobs=${BAZEL_JOBS} --local_ram_resources=4096 --local_cpu_resources=${BAZEL_JOBS}
+build --jobs=${BAZEL_JOBS} --local_ram_resources=4096 --local_cpu_resources=${BAZEL_JOBS}
 test --verbose_failures --verbose_test_summary
 test --spawn_strategy=standalone --genrule_strategy=standalone
 
 build --linkopt=-Wl,--no-as-needed
 build --host_linkopt=-Wl,--no-as-needed
 
+build --host_conlyopt=-D_PYTHON_INCLUDE_NATIVE --host_cxxopt=-D_PYTHON_INCLUDE_NATIVE
+build --conlyopt=-D_PYTHON_INCLUDE_TARGET --cxxopt=-D_PYTHON_INCLUDE_TARGET
+
 build --strip=never
 
 build --python_path=python3
@@ -108,6 +111,8 @@ EXPORT_FUNCTIONS do_configure
 
 CCACHE_DISABLE = "1"
 
+PSEUDO_IGNORE_PATHS .= ",${WORKDIR}/bazel"
+
 inherit unsupportarch
 
 export YOCTO_NATIVE_SYSROOT="${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler/recipe-sysroot-native"
diff --git a/classes/unsupportarch.bbclass b/classes/unsupportarch.bbclass
index 8aecca3..f169c35 100644
--- a/classes/unsupportarch.bbclass
+++ b/classes/unsupportarch.bbclass
@@ -1,8 +1,11 @@
-UNSUPPORTED_TARGET_ARCH ??= "powerpc"
-UNSUPPORTED_TARGET_ARCH_mipsarchn32_append = " mips64"
+BAZEL_TARGET_CPU ??= ""
+BAZEL_TARGET_CPU_x86 = "x86"
+BAZEL_TARGET_CPU_x86-64 = "k8"
+BAZEL_TARGET_CPU_arm = "arm"
+BAZEL_TARGET_CPU_aarch64 = "aarch64"
 
 python __anonymous() {
-    target_arch = d.getVar("TARGET_ARCH")
-    if target_arch in d.getVar("UNSUPPORTED_TARGET_ARCH").split():
-        raise bb.parse.SkipPackage("TensorFlow does not support Target Arch '%s'" % target_arch)
+    if not d.getVar("BAZEL_TARGET_CPU"):
+        target_arch = d.getVar("TARGET_ARCH")
+        raise bb.parse.SkipPackage("BAZEL_TARGET_CPU is not set\nTensorFlow does not support Target Arch '%s'" % target_arch)
 }
diff --git a/recipes-framework/tensorflow/files/0001-support-32-bit-x64-and-arm-for-yocto.patch b/recipes-framework/tensorflow/files/0001-support-32-bit-x64-and-arm-for-yocto.patch
new file mode 100644
index 0000000..7324136
--- /dev/null
+++ b/recipes-framework/tensorflow/files/0001-support-32-bit-x64-and-arm-for-yocto.patch
@@ -0,0 +1,129 @@
+From 52b0c97764b65e4351aa2005217b0827d94b842f Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Sat, 12 Dec 2020 21:41:29 +0800
+Subject: [PATCH] support 32 bit x64 and arm for yocto
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ tensorflow/BUILD                              |  1 -
+ tensorflow/workspace.bzl                      |  1 +
+ .../0001-XNNPACK-support-32-bit-x86.patch     | 29 +++++++++++++++++++
+ third_party/aws/BUILD.bazel                   |  6 ++++
+ third_party/aws/aws-c-common.bazel            |  9 ++++++
+ third_party/cpuinfo/BUILD.bazel               |  1 -
+ 6 files changed, 45 insertions(+), 2 deletions(-)
+ create mode 100644 third_party/0001-XNNPACK-support-32-bit-x86.patch
+
+diff --git a/tensorflow/BUILD b/tensorflow/BUILD
+index 85e172afa03..4d2d90cd755 100644
+--- a/tensorflow/BUILD
++++ b/tensorflow/BUILD
+@@ -86,7 +86,6 @@ config_setting(
+ config_setting(
+     name = "android_x86",
+     values = {
+-        "crosstool_top": "//external:android/crosstool",
+         "cpu": "x86",
+     },
+     visibility = ["//visibility:public"],
+diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
+index f6c47187c54..fce3c53fff0 100755
+--- a/tensorflow/workspace.bzl
++++ b/tensorflow/workspace.bzl
+@@ -140,6 +140,7 @@ def tf_repositories(path_prefix = "", tf_repo_name = ""):
+         name = "XNNPACK",
+         sha256 = "4b199c96fb2d551450b48eb5549843b41c023ad200aa86760a7c56d0dc0da806",
+         strip_prefix = "XNNPACK-68447302abcfad0d4b6b19a1efe7d7eef8833f4a",
++        patch_file = clean_dep("//third_party:0001-XNNPACK-support-32-bit-x86.patch"),
+         urls = [
+             "https://storage.googleapis.com/mirror.tensorflow.org/github.com/google/XNNPACK/archive/68447302abcfad0d4b6b19a1efe7d7eef8833f4a.zip",
+             "https://github.com/google/XNNPACK/archive/68447302abcfad0d4b6b19a1efe7d7eef8833f4a.zip",
+diff --git a/third_party/0001-XNNPACK-support-32-bit-x86.patch b/third_party/0001-XNNPACK-support-32-bit-x86.patch
+new file mode 100644
+index 00000000000..9e9ae3bb554
+--- /dev/null
++++ b/third_party/0001-XNNPACK-support-32-bit-x86.patch
+@@ -0,0 +1,29 @@
++From be12104d25bf9a74daeabd6eae388291196ebdc1 Mon Sep 17 00:00:00 2001
++From: Hongxu Jia <hongxu.jia@windriver.com>
++Date: Fri, 11 Dec 2020 23:29:23 +0800
++Subject: [PATCH] XNNPACK: support 32 bit x86
++
++Use android_x86 as a workaround to support 32 bit x86
++
++Upstream-Status: Inappropriate [oe specific]
++
++Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
++---
++ BUILD.bazel | 1 -
++ 1 file changed, 1 deletion(-)
++
++diff --git a/BUILD.bazel b/BUILD.bazel
++index ec7d05a..be0beba 100644
++--- a/BUILD.bazel
+++++ b/BUILD.bazel
++@@ -6475,7 +6475,6 @@ config_setting(
++ config_setting(
++     name = "android_x86",
++     values = {
++-        "crosstool_top": "//external:android/crosstool",
++         "cpu": "x86",
++     },
++ )
++-- 
++2.18.2
++
+diff --git a/third_party/aws/BUILD.bazel b/third_party/aws/BUILD.bazel
+index e1058edaba4..a86591997f3 100644
+--- a/third_party/aws/BUILD.bazel
++++ b/third_party/aws/BUILD.bazel
+@@ -33,6 +33,12 @@ cc_library(
+         "@org_tensorflow//tensorflow:yocto_armeabi": glob([
+             "aws-cpp-sdk-core/source/platform/linux-shared/*.cpp",
+         ]),
++        "@org_tensorflow//tensorflow:android_x86": glob([
++            "aws-cpp-sdk-core/source/platform/linux-shared/*.cpp",
++        ]),
++        "@org_tensorflow//tensorflow:arm": glob([
++            "aws-cpp-sdk-core/source/platform/linux-shared/*.cpp",
++        ]),
+         "//conditions:default": [],
+     }) + select({
+         "//conditions:default": glob([
+diff --git a/third_party/aws/aws-c-common.bazel b/third_party/aws/aws-c-common.bazel
+index ab9406805c2..d1078b0d701 100644
+--- a/third_party/aws/aws-c-common.bazel
++++ b/third_party/aws/aws-c-common.bazel
+@@ -12,6 +12,15 @@ load("@org_tensorflow//third_party:common.bzl", "template_rule")
+ cc_library(
+     name = "aws-c-common",
+     srcs = select({
++        "@org_tensorflow//tensorflow:arm": glob([
++            "source/posix/*.c",
++        ]),
++        "@org_tensorflow//tensorflow:android_x86": glob([
++            "source/posix/*.c",
++        ]),
++        "@org_tensorflow//tensorflow:yocto_armeabi": glob([
++            "source/posix/*.c",
++        ]),
+         "@org_tensorflow//tensorflow:linux_aarch64": glob([
+             "source/posix/*.c",
+         ]),
+diff --git a/third_party/cpuinfo/BUILD.bazel b/third_party/cpuinfo/BUILD.bazel
+index 9b007cc0daa..1fca02facfc 100644
+--- a/third_party/cpuinfo/BUILD.bazel
++++ b/third_party/cpuinfo/BUILD.bazel
+@@ -248,7 +248,6 @@ config_setting(
+ config_setting(
+     name = "android_x86",
+     values = {
+-        "crosstool_top": "//external:android/crosstool",
+         "cpu": "x86",
+     },
+     visibility = ["//visibility:public"],
+-- 
+2.18.2
+
diff --git a/recipes-framework/tensorflow/files/BUILD b/recipes-framework/tensorflow/files/BUILD
deleted file mode 100644
index fd1f99a..0000000
--- a/recipes-framework/tensorflow/files/BUILD
+++ /dev/null
@@ -1,56 +0,0 @@
-package(default_visibility = ["//visibility:public"])
-
-cc_toolchain_suite(
-    name = "toolchain",
-    toolchains = {
-        "armeabi|compiler": ":cc-compiler-armeabi",
-        "local|compiler": ":cc-compiler-local",
-        "armeabi": ":cc-compiler-armeabi",
-        "k8": ":cc-compiler-local",
-        "piii": ":cc-compiler-local",
-        "arm": ":cc-compiler-local",
-        "s390x": ":cc-compiler-local",
-    },
-)
-
-filegroup(
-    name = "empty",
-    srcs = [],
-)
-
-filegroup(
-    name = "arm_linux_all_files",
-    srcs = [
-        "@yocto_compiler//:compiler_pieces",
-    ],
-)
-
-cc_toolchain(
-    name = "cc-compiler-local",
-    all_files = ":empty",
-    compiler_files = ":empty",
-    cpu = "local",
-    dwp_files = ":empty",
-    dynamic_runtime_libs = [":empty"],
-    linker_files = ":empty",
-    objcopy_files = ":empty",
-    static_runtime_libs = [":empty"],
-    strip_files = ":empty",
-    supports_param_files = 1,
-    toolchain_identifier = "local_linux",
-)
-
-cc_toolchain(
-    name = "cc-compiler-armeabi",
-    all_files = ":arm_linux_all_files",
-    compiler_files = ":arm_linux_all_files",
-    cpu = "armeabi",
-    dwp_files = ":empty",
-    dynamic_runtime_libs = [":empty"],
-    linker_files = ":arm_linux_all_files",
-    objcopy_files = "arm_linux_all_files",
-    static_runtime_libs = [":empty"],
-    strip_files = "arm_linux_all_files",
-    supports_param_files = 1,
-    toolchain_identifier = "yocto-linux-gnueabihf",
-)
diff --git a/recipes-framework/tensorflow/files/BUILD.in b/recipes-framework/tensorflow/files/BUILD.in
new file mode 100644
index 0000000..2e230a6
--- /dev/null
+++ b/recipes-framework/tensorflow/files/BUILD.in
@@ -0,0 +1,40 @@
+package(default_visibility = ["//visibility:public"])
+
+load(":cc_config.bzl", "cc_toolchain_config")
+
+cc_toolchain_suite(
+    name = "toolchain",
+    toolchains = {
+        "%%CPU%%": ":cc-compiler-yocto",
+    },
+)
+
+filegroup(
+    name = "empty",
+    srcs = [],
+)
+
+filegroup(
+    name = "yocto_linux_all_files",
+    srcs = [
+        "@yocto_compiler//:compiler_pieces",
+    ],
+)
+
+cc_toolchain_config(
+    name = "yocto_config",
+    cpu = "%%CPU%%",
+)
+
+cc_toolchain(
+    name = "cc-compiler-yocto",
+    all_files = ":yocto_linux_all_files",
+    compiler_files = ":yocto_linux_all_files",
+    dwp_files = ":empty",
+    linker_files = ":yocto_linux_all_files",
+    objcopy_files = "yocto_linux_all_files",
+    strip_files = "yocto_linux_all_files",
+    supports_param_files = 1,
+    toolchain_config = ":yocto_config",
+    toolchain_identifier = "yocto-linux-toolchain",
+)
diff --git a/recipes-framework/tensorflow/files/cc_config.bzl.tpl b/recipes-framework/tensorflow/files/cc_config.bzl.tpl
new file mode 100644
index 0000000..7ab7ea8
--- /dev/null
+++ b/recipes-framework/tensorflow/files/cc_config.bzl.tpl
@@ -0,0 +1,411 @@
+load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl",
+    "action_config",
+    "artifact_name_pattern",
+    "env_entry",
+    "env_set",
+    "feature",
+    "feature_set",
+    "flag_group",
+    "flag_set",
+    "make_variable",
+    "tool",
+    "tool_path",
+    "variable_with_value",
+    "with_feature_set",
+)
+load("@bazel_tools//tools/build_defs/cc:action_names.bzl", "ACTION_NAMES")
+
+def _impl(ctx):
+    toolchain_identifier = "yocto-linux-toolchain"
+    host_system_name = ctx.attr.cpu
+    target_system_name = ctx.attr.cpu
+    target_cpu = ctx.attr.cpu
+    target_libc = ctx.attr.cpu
+    abi_version = ctx.attr.cpu
+    abi_libc_version = ctx.attr.cpu
+
+    compiler = "compiler"
+
+    cc_target_os = None
+
+    builtin_sysroot = None
+
+    all_compile_actions = [
+        ACTION_NAMES.c_compile,
+        ACTION_NAMES.cpp_compile,
+        ACTION_NAMES.linkstamp_compile,
+        ACTION_NAMES.assemble,
+        ACTION_NAMES.preprocess_assemble,
+        ACTION_NAMES.cpp_header_parsing,
+        ACTION_NAMES.cpp_module_compile,
+        ACTION_NAMES.cpp_module_codegen,
+        ACTION_NAMES.clif_match,
+        ACTION_NAMES.lto_backend,
+    ]
+
+    all_cpp_compile_actions = [
+        ACTION_NAMES.cpp_compile,
+        ACTION_NAMES.linkstamp_compile,
+        ACTION_NAMES.cpp_header_parsing,
+        ACTION_NAMES.cpp_module_compile,
+        ACTION_NAMES.cpp_module_codegen,
+        ACTION_NAMES.clif_match,
+    ]
+
+    preprocessor_compile_actions = [
+        ACTION_NAMES.c_compile,
+        ACTION_NAMES.cpp_compile,
+        ACTION_NAMES.linkstamp_compile,
+        ACTION_NAMES.preprocess_assemble,
+        ACTION_NAMES.cpp_header_parsing,
+        ACTION_NAMES.cpp_module_compile,
+        ACTION_NAMES.clif_match,
+    ]
+
+    codegen_compile_actions = [
+        ACTION_NAMES.c_compile,
+        ACTION_NAMES.cpp_compile,
+        ACTION_NAMES.linkstamp_compile,
+        ACTION_NAMES.assemble,
+        ACTION_NAMES.preprocess_assemble,
+        ACTION_NAMES.cpp_module_codegen,
+        ACTION_NAMES.lto_backend,
+    ]
+
+    all_link_actions = [
+        ACTION_NAMES.cpp_link_executable,
+        ACTION_NAMES.cpp_link_dynamic_library,
+        ACTION_NAMES.cpp_link_nodeps_dynamic_library,
+    ]
+
+    objcopy_embed_data_action = action_config(
+        action_name = "objcopy_embed_data",
+        enabled = True,
+        tools = [tool(path = "/usr/bin/objcopy")],
+    )
+
+    action_configs = []
+
+    opt_feature = feature(name = "opt")
+
+    dbg_feature = feature(name = "dbg")
+
+    sysroot_feature = feature(
+        name = "sysroot",
+        enabled = True,
+        flag_sets = [
+            flag_set(
+                actions = [
+                    ACTION_NAMES.preprocess_assemble,
+                    ACTION_NAMES.linkstamp_compile,
+                    ACTION_NAMES.c_compile,
+                    ACTION_NAMES.cpp_compile,
+                    ACTION_NAMES.cpp_header_parsing,
+                    ACTION_NAMES.cpp_module_compile,
+                    ACTION_NAMES.cpp_module_codegen,
+                    ACTION_NAMES.lto_backend,
+                    ACTION_NAMES.clif_match,
+                    ACTION_NAMES.cpp_link_executable,
+                    ACTION_NAMES.cpp_link_dynamic_library,
+                    ACTION_NAMES.cpp_link_nodeps_dynamic_library,
+                ],
+                flag_groups = [
+                    flag_group(
+                        flags = ["--sysroot=%{YOCTO_COMPILER_PATH}%/recipe-sysroot"],
+                        expand_if_available = "sysroot",
+                    ),
+                ],
+            ),
+        ],
+    )
+
+    unfiltered_compile_flags_feature = feature(
+        name = "unfiltered_compile_flags",
+        enabled = True,
+        flag_sets = [
+            flag_set(
+                actions = [
+                    ACTION_NAMES.assemble,
+                    ACTION_NAMES.preprocess_assemble,
+                    ACTION_NAMES.linkstamp_compile,
+                    ACTION_NAMES.c_compile,
+                    ACTION_NAMES.cpp_compile,
+                    ACTION_NAMES.cpp_header_parsing,
+                    ACTION_NAMES.cpp_module_compile,
+                    ACTION_NAMES.cpp_module_codegen,
+                    ACTION_NAMES.lto_backend,
+                    ACTION_NAMES.clif_match,
+                ],
+                flag_groups = [
+                    flag_group(
+                        flags = [
+                            "-Wno-builtin-macro-redefined",
+                            "-D__DATE__=\"redacted\"",
+                            "-D__TIMESTAMP__=\"redacted\"",
+                            "-D__TIME__=\"redacted\"",
+                            "-no-canonical-prefixes",
+                            "-fno-canonical-system-headers",
+                        ],
+                    ),
+                ],
+            ),
+        ],
+    )
+
+    objcopy_embed_flags_feature = feature(
+        name = "objcopy_embed_flags",
+        enabled = True,
+        flag_sets = [
+            flag_set(
+                actions = ["objcopy_embed_data"],
+                flag_groups = [flag_group(flags = ["-I", "binary"])],
+            ),
+        ],
+    )
+
+    default_compile_flags_feature = feature(
+        name = "default_compile_flags",
+        enabled = True,
+        flag_sets = [
+            flag_set(
+                actions = [
+                    ACTION_NAMES.assemble,
+                    ACTION_NAMES.preprocess_assemble,
+                    ACTION_NAMES.linkstamp_compile,
+                    ACTION_NAMES.c_compile,
+                    ACTION_NAMES.cpp_compile,
+                    ACTION_NAMES.cpp_header_parsing,
+                    ACTION_NAMES.cpp_module_compile,
+                    ACTION_NAMES.cpp_module_codegen,
+                    ACTION_NAMES.lto_backend,
+                    ACTION_NAMES.clif_match,
+                ],
+                flag_groups = [
+                    flag_group(
+                        flags = [
+                            "-fstack-protector",
+                        ],
+                    ),
+                ],
+            ),
+            flag_set(
+                actions = [
+                    ACTION_NAMES.assemble,
+                    ACTION_NAMES.preprocess_assemble,
+                    ACTION_NAMES.linkstamp_compile,
+                    ACTION_NAMES.c_compile,
+                    ACTION_NAMES.cpp_compile,
+                    ACTION_NAMES.cpp_header_parsing,
+                    ACTION_NAMES.cpp_module_compile,
+                    ACTION_NAMES.cpp_module_codegen,
+                    ACTION_NAMES.lto_backend,
+                    ACTION_NAMES.clif_match,
+                ],
+                flag_groups = [flag_group(flags = ["-g"])],
+                with_features = [with_feature_set(features = ["dbg"])],
+            ),
+            flag_set(
+                actions = [
+                    ACTION_NAMES.assemble,
+                    ACTION_NAMES.preprocess_assemble,
+                    ACTION_NAMES.linkstamp_compile,
+                    ACTION_NAMES.c_compile,
+                    ACTION_NAMES.cpp_compile,
+                    ACTION_NAMES.cpp_header_parsing,
+                    ACTION_NAMES.cpp_module_compile,
+                    ACTION_NAMES.cpp_module_codegen,
+                    ACTION_NAMES.lto_backend,
+                    ACTION_NAMES.clif_match,
+                ],
+                flag_groups = [
+                    flag_group(
+                        flags = [
+                            "-g0",
+                            "-O2",
+                            "-DNDEBUG",
+                            "-ffunction-sections",
+                            "-fdata-sections",
+                        ],
+                    ),
+                ],
+                with_features = [with_feature_set(features = ["opt"])],
+            ),
+            flag_set(
+                actions = [
+                    ACTION_NAMES.linkstamp_compile,
+                    ACTION_NAMES.cpp_compile,
+                    ACTION_NAMES.cpp_header_parsing,
+                    ACTION_NAMES.cpp_module_compile,
+                    ACTION_NAMES.cpp_module_codegen,
+                    ACTION_NAMES.lto_backend,
+                    ACTION_NAMES.clif_match,
+                ],
+                flag_groups = [
+                    flag_group(
+                        flags = [
+                            # Include target pyconfig.h
+                            "-D_PYTHON_INCLUDE_TARGET",
+                        ],
+                    ),
+                ],
+            ),
+        ],
+    )
+
+    default_link_flags_feature = feature(
+        name = "default_link_flags",
+        enabled = True,
+        flag_sets = [
+            flag_set(
+                actions = all_link_actions,
+                flag_groups = [
+                    flag_group(
+                        flags = [
+                            "-lstdc++",
+                            "-Wl,-z,relro,-z,now",
+                            "-no-canonical-prefixes",
+                            "-pass-exit-codes",
+                            "-Wl,--build-id=md5",
+                            "-Wl,--hash-style=gnu",
+                        ],
+                    ),
+                ],
+            ),
+            flag_set(
+                actions = all_link_actions,
+                flag_groups = [flag_group(flags = ["-Wl,--gc-sections"])],
+                with_features = [with_feature_set(features = ["opt"])],
+            ),
+        ],
+    )
+
+    supports_dynamic_linker_feature = feature(name = "supports_dynamic_linker", enabled = True)
+
+    supports_pic_feature = feature(name = "supports_pic", enabled = True)
+
+    user_compile_flags_feature = feature(
+        name = "user_compile_flags",
+        enabled = True,
+        flag_sets = [
+            flag_set(
+                actions = [
+                    ACTION_NAMES.assemble,
+                    ACTION_NAMES.preprocess_assemble,
+                    ACTION_NAMES.linkstamp_compile,
+                    ACTION_NAMES.c_compile,
+                    ACTION_NAMES.cpp_compile,
+                    ACTION_NAMES.cpp_header_parsing,
+                    ACTION_NAMES.cpp_module_compile,
+                    ACTION_NAMES.cpp_module_codegen,
+                    ACTION_NAMES.lto_backend,
+                    ACTION_NAMES.clif_match,
+                ],
+                flag_groups = [
+                    flag_group(
+                        flags = ["%{user_compile_flags}"],
+                        iterate_over = "user_compile_flags",
+                        expand_if_available = "user_compile_flags",
+                    ),
+                ],
+            ),
+        ],
+    )
+
+    features = [
+            default_compile_flags_feature,
+            default_link_flags_feature,
+            supports_dynamic_linker_feature,
+            supports_pic_feature,
+            opt_feature,
+            dbg_feature,
+            user_compile_flags_feature,
+            sysroot_feature,
+            unfiltered_compile_flags_feature,
+        ]
+
+    cxx_builtin_include_directories = [
+            "%{YOCTO_COMPILER_PATH}%",
+        ]
+
+    artifact_name_patterns = []
+
+    make_variables = []
+
+    tool_paths = [
+        tool_path(
+            name = "ar",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-ar",
+        ),
+        tool_path(name = "compat-ld", path = "/bin/false"),
+        tool_path(
+            name = "cpp",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-cpp",
+        ),
+        tool_path(
+            name = "dwp",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-dwp",
+        ),
+        tool_path(
+            name = "gcc",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-gcc",
+        ),
+        tool_path(
+            name = "gcov",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-gcov",
+        ),
+        tool_path(
+            name = "ld",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-ld",
+        ),
+        tool_path(
+            name = "nm",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-nm",
+        ),
+        tool_path(
+            name = "objcopy",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-objcopy",
+        ),
+        tool_path(
+            name = "objdump",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-objdump",
+        ),
+        tool_path(
+            name = "strip",
+            path = "%{YOCTO_COMPILER_PATH}%/recipe-sysroot-native/usr/bin/%{CT_NAME}%/%{CT_NAME}%-strip",
+        ),
+    ]
+
+    out = ctx.actions.declare_file(ctx.label.name)
+    ctx.actions.write(out, "Fake executable")
+    return [
+        cc_common.create_cc_toolchain_config_info(
+            ctx = ctx,
+            features = features,
+            action_configs = action_configs,
+            artifact_name_patterns = artifact_name_patterns,
+            cxx_builtin_include_directories = cxx_builtin_include_directories,
+            toolchain_identifier = toolchain_identifier,
+            host_system_name = host_system_name,
+            target_system_name = target_system_name,
+            target_cpu = target_cpu,
+            target_libc = target_libc,
+            compiler = compiler,
+            abi_version = abi_version,
+            abi_libc_version = abi_libc_version,
+            tool_paths = tool_paths,
+            make_variables = make_variables,
+            builtin_sysroot = builtin_sysroot,
+            cc_target_os = cc_target_os
+        ),
+        DefaultInfo(
+            executable = out,
+        ),
+    ]
+cc_toolchain_config =  rule(
+    implementation = _impl,
+    attrs = {
+        "cpu": attr.string(mandatory=True),
+    },
+    provides = [CcToolchainConfigInfo],
+    executable = True,
+)
diff --git a/recipes-framework/tensorflow/files/yocto_compiler_configure.bzl b/recipes-framework/tensorflow/files/yocto_compiler_configure.bzl
index 19c7cd1..403df06 100644
--- a/recipes-framework/tensorflow/files/yocto_compiler_configure.bzl
+++ b/recipes-framework/tensorflow/files/yocto_compiler_configure.bzl
@@ -9,11 +9,31 @@ def _tpl(repository_ctx, tpl, substitutions={}, out=None):
       Label("//third_party/toolchains/yocto:%s.tpl" % tpl),
       substitutions)
 
-
 def _yocto_compiler_configure_impl(repository_ctx):
-  _tpl(repository_ctx, "CROSSTOOL")
-  repository_ctx.symlink(repository_ctx.attr.build_file, "BUILD")
+    # We need to find a cross-compilation include directory for Python, so look
+    # for an environment variable. Be warned, this crosstool template is only
+    # regenerated on the first run of Bazel, so if you change the variable after
+    # it may not be reflected in later builds. Doing a shutdown and clean of Bazel
+    # doesn't fix this, you'll need to delete the generated file at something like:
+    # external/local_config_arm_compiler/CROSSTOOL in your Bazel install.
+    if "CROSSTOOL_PYTHON_INCLUDE_PATH" in repository_ctx.os.environ:
+        python_include_path = repository_ctx.os.environ["CROSSTOOL_PYTHON_INCLUDE_PATH"]
+    else:
+        python_include_path = "/buildarea/raid5/hjia/wrlinux-20/build_master-wr_ts_intel_2020120722/build/tmp-glibc/work/corei7-64-wrs-linux/tensorflow/2.4.0-r0/recipe-sysroot/usr/include/python3.9"
+
+    if "CT_NAME" in repository_ctx.os.environ:
+        cross_tool_name = repository_ctx.os.environ["CT_NAME"]
+    else:
+        cross_tool_name = "x86_64-wrs-linux"
 
+    _tpl(repository_ctx, "cc_config.bzl", {
+        "%{YOCTO_COMPILER_PATH}%": str(repository_ctx.path(
+            repository_ctx.attr.remote_config_repo,
+        )),
+        "%{PYTHON_INCLUDE_PATH}%": python_include_path,
+        "%{CT_NAME}%": cross_tool_name,
+    })
+    repository_ctx.symlink(repository_ctx.attr.build_file, "BUILD")
 
 yocto_compiler_configure = repository_rule(
     implementation = _yocto_compiler_configure_impl,
diff --git a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb b/recipes-framework/tensorflow/tensorflow-estimator_2.4.bb
similarity index 100%
rename from recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
rename to recipes-framework/tensorflow/tensorflow-estimator_2.4.bb
diff --git a/recipes-framework/tensorflow/tensorflow_2.4.0.bb b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
index aeb1a80..ba441a7 100644
--- a/recipes-framework/tensorflow/tensorflow_2.4.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
@@ -6,9 +6,11 @@ SRC_URI += " \
            file://0001-label_image-tweak-default-model-location.patch \
            file://0001-label_image.lite-tweak-default-model-location.patch \
            file://0001-CheckFeatureOrDie-use-warning-to-avoid-die.patch \
-           file://BUILD \
+           file://0001-support-32-bit-x64-and-arm-for-yocto.patch \
+           file://BUILD.in \
            file://BUILD.yocto_compiler \
            file://CROSSTOOL.tpl \
+           file://cc_config.bzl.tpl \
            file://yocto_compiler_configure.bzl \
           "
 
@@ -33,6 +35,11 @@ RDEPENDS_${PN} += " \
     python3-astunparse \
     python3-gast \
     python3-termcolor \
+    python3-wrapt \
+    python3-opt-einsum \
+    python3-google-pasta \
+    python3-typing-extensions \
+    flatbuffers-python3 \
     tensorboard \
     tensorflow-estimator \
 "
@@ -40,8 +47,9 @@ RDEPENDS_${PN} += " \
 export PYTHON_BIN_PATH="${PYTHON}"
 export PYTHON_LIB_PATH="${STAGING_LIBDIR_NATIVE}/${PYTHON_DIR}/site-packages"
 
+export CROSSTOOL_PYTHON_INCLUDE_PATH="${STAGING_INCDIR}/python${PYTHON_BASEVERSION}${PYTHON_ABI}"
+
 do_configure_append () {
-    CROSSTOOL_PYTHON_INCLUDE_PATH="${STAGING_INCDIR}/python${PYTHON_BASEVERSION}${PYTHON_ABI}"
     if [ ! -e ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h ];then
         mv ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig.h ${CROSSTOOL_PYTHON_INCLUDE_PATH}/pyconfig-target.h
     fi
@@ -61,8 +69,10 @@ do_configure_append () {
 ENDOF
 
     mkdir -p ${S}/third_party/toolchains/yocto/
-    install -m 644 ${WORKDIR}/BUILD ${S}/third_party/toolchains/yocto/
+    sed "s#%%CPU%%#${BAZEL_TARGET_CPU}#g" ${WORKDIR}/BUILD.in  > ${S}/third_party/toolchains/yocto/BUILD
+    chmod 644 ${S}/third_party/toolchains/yocto/BUILD
     install -m 644 ${WORKDIR}/CROSSTOOL.tpl ${S}/third_party/toolchains/yocto/
+    install -m 644 ${WORKDIR}/cc_config.bzl.tpl ${S}/third_party/toolchains/yocto/
     install -m 644 ${WORKDIR}/yocto_compiler_configure.bzl ${S}/third_party/toolchains/yocto/
     install -m 644 ${WORKDIR}/BUILD.yocto_compiler ${S}
 
@@ -82,14 +92,16 @@ ENDOF
 TF_ARGS_EXTRA ??= ""
 TF_TARGET_EXTRA ??= ""
 do_compile () {
+    export CT_NAME=$(echo ${HOST_PREFIX} | rev | cut -c 2- | rev)
     unset CC
     ${BAZEL} build \
         ${TF_ARGS_EXTRA} \
         -c opt \
-        --cpu=armeabi \
+        --cpu=${BAZEL_TARGET_CPU} \
         --subcommands --explain=${T}/explain.log \
         --verbose_explanations --verbose_failures \
         --crosstool_top=@local_config_yocto_compiler//:toolchain \
+        --host_crosstool_top=@bazel_tools//tools/cpp:toolchain \
         --verbose_failures \
         --copt -DTF_LITE_DISABLE_X86_NEON \
         //tensorflow:libtensorflow.so \
@@ -159,6 +171,7 @@ do_install() {
 
 FILES_${PN}-dev = ""
 INSANE_SKIP_${PN} += "dev-so \
+                      already-stripped \
                      "
 FILES_${PN} += "${libdir}/* ${datadir}/*"
 
-- 
2.21.0

