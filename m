Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7062.1608124131597001773
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:08:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=gU/w4ywf;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2077.outbound.protection.outlook.com [40.107.93.77])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3E91438C0677
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:08:51 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m6jeDar2H3pJhaSshlPb6bTMcw6qxi34dTXvMVYpOb/IRD1u4vQjhuJH9v9y+/1uiYS66JyK+AL5+GINChfBUXBS2gRG5gfh5ApcxFi3XAMbMXwI5m7wogxv8r0cwGO3Et5n74Rn1eJoIwy0SQmJOtP8HMHD+F9J3+d8EQpYnm52m6523odD/xY91ecJDGcldtIX33480ccO9SURwNiScC4lIv25NOrRmAY3YLARU62NKnmEbvSidrQW8MJpqAhLWynZyr5VAHiMBEzgaQ2DPcnbnzpW+0M8dwKHPi/Tnf0gGfNy5UhzGUTo3vWtddYSy2+JivtEpVbkGG5Nys8jig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2CroM4eZmCNvDLDLOZ3jiOQuo7u0Yw51eDVOuXdEyH8=;
 b=GeHimAa3ExP20hBmRi0V3CM9YnTTCBlHGqwVKk2qAWCjspGRfvfqAP+s21584EduGAm3kea1lqORTamLCoPZEvlODwr6gkfdUmMmHCvlCn85YgpunEtwRMOwicDyWc6fLSKFr8lyU/uYSa+WqyGu8duFCwDN25ZErdCwH6mNPNFswkyOWv3j1jkAXWxiDuzoeh67shkJzX51D1uWHkhhSjMIM1Rkphpwg4FzaiNJZHX35cVcKlQ/E9BhOYfVCp32gVZPcNkqvhxCAcxpqTtO/7NOJF0wKW5HicVfrtLK4AQ/GWv2sQIV5SiIAu1dqrbCzmltCTLEPYkBXebok1Uy+A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2CroM4eZmCNvDLDLOZ3jiOQuo7u0Yw51eDVOuXdEyH8=;
 b=gU/w4ywfboMM8ZtBbfCvWPusECOKjQfIT83HtkSWv25TQAOo+o/+JKYrFH24cQsLGuZnZ4SsFGko6bwpyUaM34eOEMF5+vHzCmVME2h9WewluDV7Bsv3XGT2xeVeoh9vXriTConUDCs0CDqqRDmKTGvVd6KJwER5Im3abuWvJ6w=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:08:48 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:08:48 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 3/25] tensorflow: 1.13.0 -> 2.4.0
Date: Wed, 16 Dec 2020 21:08:00 +0800
Message-Id: <20201216130822.28476-4-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d95371c4-6490-4c44-bdc2-08d8a1c3ba17
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB457754CC5A40655294959B1094C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:635;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yNggENGPleivJD9JwazOpxQ611pXgDCFgH8qUEUEdN2YyN31+c9aCcm75VQ0YHKt841oqQV0Rjc3ok2G/ykvK5TONJ+phjdxptie3SXsS6COF7aizHoHBcpGJ0cs7rZQ0Bqw875vGOpoWWvf2zHMpVPIyX8DcerZJ5/nRfrVHAlaieV0li+gzZtCOyFHy+kErU8r0/GGBmFz8UV3UfZC3wA+pa+EBHWdncZeyvCw/w68X2ejp5d/eEquVctBcbX41pnzfqt59MbmiZD6Tg3StjV/oejkQ3YGuh6tnHELfn/ix+cV9drkB6StQr2NMbvdydebSrv+eQ9f7cREVLZ/3uHTm5s9xm6VCHz0hQjKp4vpXrC/3U2Dr1LcfWPPJNjja3c/Xq7K/rMQ6TalmmNuWA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(45080400002)(52116002)(6666004)(30864003)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(19627235002)(966005)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007)(579004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?7iupzXzjLqVKa3NmU1ojl7TUeQbtYFYSHtgn6vvZKD0CprScrrI7uSfv6x/u?=
 =?us-ascii?Q?8mJ0iQfDI16BDQaz4uyecS8snjUeAoFqLCJojjjd4ZSYRWRbZVkEvUQUK/FV?=
 =?us-ascii?Q?xa8NdNuHC7i4EtiHkolIwC3zFyZH5P7YjuRK9TY3opORCEx57AfTOjnPGT8a?=
 =?us-ascii?Q?SbsP6CeAxkveRXoc4vFfJj4GN21JOs1cC+ia4DDvuuFxdDfS19nJHjJmAfpB?=
 =?us-ascii?Q?eqZR8ElAiKSrYilbaDz547cPsDR9AqE18kGl4YDUp8dN6YZH2GtVSlpihCZM?=
 =?us-ascii?Q?QdjuMJszi9tbJfubSkkZ49gqqpJqUZpEC4l4PRBRQhFHINc+Su7XZRNWcGey?=
 =?us-ascii?Q?WcEptfWJIUNZaPeJ6dHDKBfTLV9J+iBHkQhzTKGKL/is1UIaq4WEbX3fb/Jx?=
 =?us-ascii?Q?o9kRuRDMLMBxFyfnxic0GA2z8q/2BwOurLDa6LQG3jm5URrBuQYRJD0NzAEd?=
 =?us-ascii?Q?5T2RGzjH9sM2Kvx+8xu/jjiGk4pa9+tQTfBBmIsge64/fIyUmAV/ylHbLag7?=
 =?us-ascii?Q?jxMWoftOp0FjI9iG+goSf4ILo5dIAn8lSSxOkYs53MnzHQE8CyWcsP6T5fYh?=
 =?us-ascii?Q?DjOJ41yavaNPbUSFCcHJY5aeX8AoTRSF522TuxutZAntPCIlrg80w7WDdpBF?=
 =?us-ascii?Q?8UEmEwl43MZ/3IlAAaE8q81bo8vrehEpm2sAL6+2cC4ZqvvjYGIYD9P5Nf80?=
 =?us-ascii?Q?xJdQ3g7vu1Vi78RJYriMZ0v630z2GjcyDOt4lcqYHEm/RmEyysMIE4evRPLu?=
 =?us-ascii?Q?iBY4+ELSO70/1dUPh8FrUi8V97PrEjPa+HhRPoJ9STtRADRC8pcqeRrB7Jd8?=
 =?us-ascii?Q?QjyEn23LHeFy1en8oW1UXKIoDbdXuo8G4bRf+EwVEoeCfHHudD+xtRoiyP8c?=
 =?us-ascii?Q?CBSetYf1DBwcqKReQNl8CjmPj4h/x77QHpbymW6UkkDu0/t71YUr7S9matDO?=
 =?us-ascii?Q?lqJC6WuzJy9NRLe4hj5L80PmvqnT1POARur6sX9pxRSIuf88kTpUqbE3aZXq?=
 =?us-ascii?Q?lmGw?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:08:48.5198
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d95371c4-6490-4c44-bdc2-08d8a1c3ba17
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nVeES4BXmIEdQq1IHz+YGrbegKOEwPQUVqiiu2aPvzgkywrBBdynnPjktwPnbttqILlaoAwSkQEz3hMCRe5Sujc/TeEHCE+fSF29Yh78Miw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Refresh patches to 2.4.0
- 0001-support-musl.patch
- 0001-third_party-eigen_archive-workaround-ice-failure-whi.patch
- 0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch
- 0001-add-yocto-toolchain-to-support-cross-compiling.patch
- 0001-fix-build-tensorflow-lite-examples-label_image-label.patch
- 0001-label_image.lite-tweak-default-model-location.patch

Drop backported patches
- 0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch
- 0001-Provide-overload-to-cope-with-const-ness-change-of-N.patch
- 0001-Rename-gettid-functions.patch
- 0001-SyntaxError-around-async-keyword-on-Python-3.7.patch
- 0001-fix-compilation-error.patch

Minor change on LICENSE, copy year

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...ensorFlow-on-Python-3.8-logger-issue.patch |  55 --------
 ...-to-cope-with-const-ness-change-of-N.patch |  52 --------
 .../files/0001-Rename-gettid-functions.patch  | 125 ------------------
 ...r-around-async-keyword-on-Python-3.7.patch | 116 ----------------
 ...toolchain-to-support-cross-compiling.patch |  60 ++++-----
 ...flow-lite-examples-label_image-label.patch |  38 +++---
 .../files/0001-fix-compilation-error.patch    |  58 --------
 ...ge.lite-tweak-default-model-location.patch |  21 +--
 .../tensorflow/files/0001-support-musl.patch  |  39 +++---
 ...n_archive-workaround-ice-failure-whi.patch | 121 ++++++++++++-----
 ...el-to-workaround-bazel-paralle-issue.patch |  24 ++--
 ...e_1.13.0.bb => tensorflow-native_2.4.0.bb} |   0
 recipes-framework/tensorflow/tensorflow.inc   |  11 +-
 ...nsorflow_1.13.0.bb => tensorflow_2.4.0.bb} |   1 +
 14 files changed, 183 insertions(+), 538 deletions(-)
 delete mode 100644 recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch
 delete mode 100644 recipes-framework/tensorflow/files/0001-Provide-overload-to-cope-with-const-ness-change-of-N.patch
 delete mode 100644 recipes-framework/tensorflow/files/0001-Rename-gettid-functions.patch
 delete mode 100644 recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch
 delete mode 100644 recipes-framework/tensorflow/files/0001-fix-compilation-error.patch
 rename recipes-framework/tensorflow/{tensorflow-native_1.13.0.bb => tensorflow-native_2.4.0.bb} (100%)
 rename recipes-framework/tensorflow/{tensorflow_1.13.0.bb => tensorflow_2.4.0.bb} (99%)

diff --git a/recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch b/recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch
deleted file mode 100644
index 714cfed..0000000
--- a/recipes-framework/tensorflow/files/0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch
+++ /dev/null
@@ -1,55 +0,0 @@
-From db8840ea06bee6c8384d88edba2faa027ed74c02 Mon Sep 17 00:00:00 2001
-From: Yong Tang <yong.tang.github@outlook.com>
-Date: Sun, 3 Nov 2019 19:52:04 +0000
-Subject: [PATCH] Fix TensorFlow on Python 3.8 logger issue
-
-This fix tries to address the issue raised in 33799
-where running tensorflow on python 3.8 (Ubuntu 18.04)
-raised the following error:
-```
-TypeError: _logger_find_caller() takes from 0 to 1 positional arguments but 2 were given
-```
-
-The issue was that findCaller changed in Python 3.8
-
-This PR fixes the issue.
-
-This PR fixes 33799
-
-Signed-off-by: Yong Tang <yong.tang.github@outlook.com>
-
-Upstream-Status: Backport [https://github.com/tensorflow/tensorflow/pull/33953/commits/ea3063c929c69f738bf65bc99dad1159803e772f]
-
-Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
----
- tensorflow/python/platform/tf_logging.py | 13 +++++++++++--
- 1 file changed, 11 insertions(+), 2 deletions(-)
-
-diff --git a/tensorflow/python/platform/tf_logging.py b/tensorflow/python/platform/tf_logging.py
-index 813bcb89be..4862e70e4d 100644
---- a/tensorflow/python/platform/tf_logging.py
-+++ b/tensorflow/python/platform/tf_logging.py
-@@ -57,9 +57,18 @@ def _get_caller(offset=3):
-     f = f.f_back
-   return None, None
- 
--
- # The definition of `findCaller` changed in Python 3.2
--if _sys.version_info.major >= 3 and _sys.version_info.minor >= 2:
-+if _sys.version_info.major >= 3 and _sys.version_info.minor >= 8:
-+  def _logger_find_caller(stack_info=False, stacklevel=1):  # pylint: disable=g-wrong-blank-lines
-+    code, frame = _get_caller(4)
-+    sinfo = None
-+    if stack_info:
-+      sinfo = '\n'.join(_traceback.format_stack())
-+    if code:
-+      return (code.co_filename, frame.f_lineno, code.co_name, sinfo)
-+    else:
-+      return '(unknown file)', 0, '(unknown function)', sinfo
-+elif _sys.version_info.major >= 3 and _sys.version_info.minor >= 2:
-   def _logger_find_caller(stack_info=False):  # pylint: disable=g-wrong-blank-lines
-     code, frame = _get_caller(4)
-     sinfo = None
--- 
-2.17.1
-
diff --git a/recipes-framework/tensorflow/files/0001-Provide-overload-to-cope-with-const-ness-change-of-N.patch b/recipes-framework/tensorflow/files/0001-Provide-overload-to-cope-with-const-ness-change-of-N.patch
deleted file mode 100644
index 8d9411c..0000000
--- a/recipes-framework/tensorflow/files/0001-Provide-overload-to-cope-with-const-ness-change-of-N.patch
+++ /dev/null
@@ -1,52 +0,0 @@
-From 75ea0b31477d6ba9e990e296bbbd8ca4e7eebadf Mon Sep 17 00:00:00 2001
-From: Christian Sigg <csigg@google.com>
-Date: Fri, 26 Jun 2020 05:08:10 -0700
-Subject: [PATCH] Provide overload to cope with const-ness change of NumPy's
- PyUFuncGenericFunction.
-
-See https://github.com/tensorflow/tensorflow/issues/40688, https://github.com/tensorflow/tensorflow/pull/40654.
-
-PiperOrigin-RevId: 318452381
-Change-Id: Icc5152f2b020ef19882a49e3c86ac80bbe048d64
-
-Upstream-Status: Backport
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
-
----
- tensorflow/python/lib/core/bfloat16.cc | 8 +++++++-
- 1 file changed, 7 insertions(+), 1 deletion(-)
-
-diff --git a/tensorflow/python/lib/core/bfloat16.cc b/tensorflow/python/lib/core/bfloat16.cc
-index feb01f11a1..bb6b720feb 100644
---- a/tensorflow/python/lib/core/bfloat16.cc
-+++ b/tensorflow/python/lib/core/bfloat16.cc
-@@ -517,7 +517,7 @@ bool RegisterBfloat16Cast(int numpy_type, bool cast_is_safe) {
- }
- 
- template <typename InType, typename OutType, typename Functor>
--void BinaryUFunc(char** args, npy_intp* dimensions, npy_intp* steps,
-+void BinaryUFunc(char** args, const npy_intp* dimensions, const npy_intp* steps,
-                  void* data) {
-   const char* i0 = args[0];
-   const char* i1 = args[1];
-@@ -532,11 +532,17 @@ void BinaryUFunc(char** args, npy_intp* dimensions, npy_intp* steps,
-   }
- }
- 
-+// Numpy changed const-ness of PyUFuncGenericFunction, provide overload.
- template <typename Functor>
- void CompareUFunc(char** args, npy_intp* dimensions, npy_intp* steps,
-                   void* data) {
-   BinaryUFunc<bfloat16, npy_bool, Functor>(args, dimensions, steps, data);
- }
-+template <typename Functor>
-+void CompareUFunc(char** args, const npy_intp* dimensions,
-+                  const npy_intp* steps, void* data) {
-+  BinaryUFunc<bfloat16, npy_bool, Functor>(args, dimensions, steps, data);
-+}
- 
- struct Bfloat16EqFunctor {
-   npy_bool operator()(bfloat16 a, bfloat16 b) { return a == b; }
--- 
-2.21.0
-
diff --git a/recipes-framework/tensorflow/files/0001-Rename-gettid-functions.patch b/recipes-framework/tensorflow/files/0001-Rename-gettid-functions.patch
deleted file mode 100644
index 1e42ad3..0000000
--- a/recipes-framework/tensorflow/files/0001-Rename-gettid-functions.patch
+++ /dev/null
@@ -1,125 +0,0 @@
-From cf196efd43e489c91e29f7509529a4cc1e68b8b2 Mon Sep 17 00:00:00 2001
-From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Fri, 3 Apr 2020 11:11:35 +0800
-Subject: [PATCH] Rename the grpc versions to avoid naming conflicts
-
-Backport patch from grpc upstream to fix grpc conflicts issue
-
-Upstream-Status: Backport
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- tensorflow/workspace.bzl                      |  1 +
- .../0001-Rename-gettid-functions.patch        | 88 +++++++++++++++++++
- 2 files changed, 89 insertions(+)
- create mode 100644 third_party/systemlibs/0001-Rename-gettid-functions.patch
-
-diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
-index a281803f41..66679e686d 100755
---- a/tensorflow/workspace.bzl
-+++ b/tensorflow/workspace.bzl
-@@ -466,6 +466,7 @@ def tf_workspace(path_prefix = "", tf_repo_name = ""):
-         sha256 = "1aa84387232dda273ea8fdfe722622084f72c16f7b84bfc519ac7759b71cdc91",
-         strip_prefix = "grpc-69b6c047bc767b4d80e7af4d00ccb7c45b683dae",
-         system_build_file = clean_dep("//third_party/systemlibs:grpc.BUILD"),
-+        patch_file = clean_dep("//third_party/systemlibs:0001-Rename-gettid-functions.patch"),
-         urls = [
-             "https://mirror.bazel.build/github.com/grpc/grpc/archive/69b6c047bc767b4d80e7af4d00ccb7c45b683dae.tar.gz",
-             "https://github.com/grpc/grpc/archive/69b6c047bc767b4d80e7af4d00ccb7c45b683dae.tar.gz",
-diff --git a/third_party/systemlibs/0001-Rename-gettid-functions.patch b/third_party/systemlibs/0001-Rename-gettid-functions.patch
-new file mode 100644
-index 0000000000..be338568ae
---- /dev/null
-+++ b/third_party/systemlibs/0001-Rename-gettid-functions.patch
-@@ -0,0 +1,88 @@
-+From fb56354fe381c705f930484117b01442a233063d Mon Sep 17 00:00:00 2001
-+From: Hongxu Jia <hongxu.jia@windriver.com>
-+Date: Fri, 3 Apr 2020 11:03:02 +0800
-+Subject: [PATCH] Rename gettid() functions.
-+
-+glibc 2.30 will declare its own gettid; see
-+https://sourceware.org/git/?p=glibc.git;a=commit;h=1d0fc213824eaa2a8f8c4385daaa698ee8fb7c92.
-+Rename the grpc versions to avoid naming conflicts.
-+
-+Signed-off-by: Benjamin Peterson <benjamin@dropbox.com>
-+Upstream-Status: Backport [https://github.com/grpc/grpc/commit/57586a1ca7f17b1916aed3dea4ff8de872dbf853]
-+
-+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
-+---
-+ src/core/lib/gpr/log_linux.cc          | 4 ++--
-+ src/core/lib/gpr/log_posix.cc          | 4 ++--
-+ src/core/lib/iomgr/ev_epollex_linux.cc | 4 ++--
-+ 3 files changed, 6 insertions(+), 6 deletions(-)
-+
-+diff --git a/src/core/lib/gpr/log_linux.cc b/src/core/lib/gpr/log_linux.cc
-+index 561276f..8b597b4 100644
-+--- a/src/core/lib/gpr/log_linux.cc
-++++ b/src/core/lib/gpr/log_linux.cc
-+@@ -40,7 +40,7 @@
-+ #include <time.h>
-+ #include <unistd.h>
-+ 
-+-static long gettid(void) { return syscall(__NR_gettid); }
-++static long sys_gettid(void) { return syscall(__NR_gettid); }
-+ 
-+ void gpr_log(const char* file, int line, gpr_log_severity severity,
-+              const char* format, ...) {
-+@@ -70,7 +70,7 @@ void gpr_default_log(gpr_log_func_args* args) {
-+   gpr_timespec now = gpr_now(GPR_CLOCK_REALTIME);
-+   struct tm tm;
-+   static __thread long tid = 0;
-+-  if (tid == 0) tid = gettid();
-++  if (tid == 0) tid = sys_gettid();
-+ 
-+   timer = static_cast<time_t>(now.tv_sec);
-+   final_slash = strrchr(args->file, '/');
-+diff --git a/src/core/lib/gpr/log_posix.cc b/src/core/lib/gpr/log_posix.cc
-+index 0acb225..cd0b702 100644
-+--- a/src/core/lib/gpr/log_posix.cc
-++++ b/src/core/lib/gpr/log_posix.cc
-+@@ -30,7 +30,7 @@
-+ #include <string.h>
-+ #include <time.h>
-+ 
-+-static intptr_t gettid(void) { return (intptr_t)pthread_self(); }
-++static intptr_t sys_gettid(void) { return (intptr_t)pthread_self(); }
-+ 
-+ void gpr_log(const char* file, int line, gpr_log_severity severity,
-+              const char* format, ...) {
-+@@ -85,7 +85,7 @@ void gpr_default_log(gpr_log_func_args* args) {
-+   char* prefix;
-+   gpr_asprintf(&prefix, "%s%s.%09d %7tu %s:%d]",
-+                gpr_log_severity_string(args->severity), time_buffer,
-+-               (int)(now.tv_nsec), gettid(), display_file, args->line);
-++               (int)(now.tv_nsec), sys_gettid(), display_file, args->line);
-+ 
-+   fprintf(stderr, "%-70s %s\n", prefix, args->message);
-+   gpr_free(prefix);
-+diff --git a/src/core/lib/iomgr/ev_epollex_linux.cc b/src/core/lib/iomgr/ev_epollex_linux.cc
-+index 06a382c..371bd19 100644
-+--- a/src/core/lib/iomgr/ev_epollex_linux.cc
-++++ b/src/core/lib/iomgr/ev_epollex_linux.cc
-+@@ -1150,7 +1150,7 @@ static void end_worker(grpc_pollset* pollset, grpc_pollset_worker* worker,
-+ }
-+ 
-+ #ifndef NDEBUG
-+-static long gettid(void) { return syscall(__NR_gettid); }
-++static long sys_gettid(void) { return syscall(__NR_gettid); }
-+ #endif
-+ 
-+ /* pollset->mu lock must be held by the caller before calling this.
-+@@ -1170,7 +1170,7 @@ static grpc_error* pollset_work(grpc_pollset* pollset,
-+ #define WORKER_PTR (&worker)
-+ #endif
-+ #ifndef NDEBUG
-+-  WORKER_PTR->originator = gettid();
-++  WORKER_PTR->originator = sys_gettid();
-+ #endif
-+   if (grpc_polling_trace.enabled()) {
-+     gpr_log(GPR_INFO,
-+-- 
-+2.17.1
-+
--- 
-2.17.1
-
diff --git a/recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch b/recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch
deleted file mode 100644
index 75cb572..0000000
--- a/recipes-framework/tensorflow/files/0001-SyntaxError-around-async-keyword-on-Python-3.7.patch
+++ /dev/null
@@ -1,116 +0,0 @@
-From 8abbdce7a7ec7428b7f657e313ee0b6642c1de76 Mon Sep 17 00:00:00 2001
-From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Thu, 14 Feb 2019 10:45:55 +0800
-Subject: [PATCH] SyntaxError around async keyword on Python 3.7
-
-Backport a fix from upstream astor to fix the error
-
-Upstream-Status: Pending
-
-Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
----
- tensorflow/workspace.bzl                           |  1 +
- ...-Don-t-use-async-as-a-keyword-argument-94.patch | 79 ++++++++++++++++++++++
- 2 files changed, 80 insertions(+)
- create mode 100644 third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch
-
-diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
-index aefab03..a281803 100755
---- a/tensorflow/workspace.bzl
-+++ b/tensorflow/workspace.bzl
-@@ -278,6 +278,7 @@ def tf_workspace(path_prefix = "", tf_repo_name = ""):
-     tf_http_archive(
-         name = "astor_archive",
-         build_file = clean_dep("//third_party:astor.BUILD"),
-+        patch_file = clean_dep("//third_party/systemlibs:0001-Don-t-use-async-as-a-keyword-argument-94.patch"),
-         sha256 = "ff6d2e2962d834acb125cc4dcc80c54a8c17c253f4cc9d9c43b5102a560bb75d",
-         strip_prefix = "astor-0.6.2",
-         system_build_file = clean_dep("//third_party/systemlibs:astor.BUILD"),
-diff --git a/third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch b/third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch
-new file mode 100644
-index 0000000..aafb172
---- /dev/null
-+++ b/third_party/systemlibs/0001-Don-t-use-async-as-a-keyword-argument-94.patch
-@@ -0,0 +1,79 @@
-+From fe1ef7f9d746847c157197e4cb2ab6505fe19faf Mon Sep 17 00:00:00 2001
-+From: Berker Peksag <berker.peksag@gmail.com>
-+Date: Fri, 23 Mar 2018 16:50:21 +0300
-+Subject: [PATCH] Don't use 'async' as a keyword argument (#94)
-+
-+Fixes #86
-+
-+Upstream-Status: Backport[https://github.com/berkerpeksag/astor.git]
-+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
-+---
-+ astor/code_gen.py | 18 +++++++++---------
-+ 1 file changed, 9 insertions(+), 9 deletions(-)
-+
-+diff --git a/astor/code_gen.py b/astor/code_gen.py
-+index 7c27f70..47d6acc 100644
-+--- a/astor/code_gen.py
-++++ b/astor/code_gen.py
-+@@ -308,8 +308,8 @@ class SourceGenerator(ExplicitNodeVisitor):
-+         self.statement(node)
-+         self.generic_visit(node)
-+ 
-+-    def visit_FunctionDef(self, node, async=False):
-+-        prefix = 'async ' if async else ''
-++    def visit_FunctionDef(self, node, is_async=False):
-++        prefix = 'async ' if is_async else ''
-+         self.decorators(node, 1 if self.indentation else 2)
-+         self.statement(node, '%sdef %s' % (prefix, node.name), '(')
-+         self.visit_arguments(node.args)
-+@@ -322,7 +322,7 @@ class SourceGenerator(ExplicitNodeVisitor):
-+ 
-+     # introduced in Python 3.5
-+     def visit_AsyncFunctionDef(self, node):
-+-        self.visit_FunctionDef(node, async=True)
-++        self.visit_FunctionDef(node, is_async=True)
-+ 
-+     def visit_ClassDef(self, node):
-+         have_args = []
-+@@ -364,24 +364,24 @@ class SourceGenerator(ExplicitNodeVisitor):
-+                 self.else_body(else_)
-+                 break
-+ 
-+-    def visit_For(self, node, async=False):
-++    def visit_For(self, node, is_async=False):
-+         set_precedence(node, node.target)
-+-        prefix = 'async ' if async else ''
-++        prefix = 'async ' if is_async else ''
-+         self.statement(node, '%sfor ' % prefix,
-+                        node.target, ' in ', node.iter, ':')
-+         self.body_or_else(node)
-+ 
-+     # introduced in Python 3.5
-+     def visit_AsyncFor(self, node):
-+-        self.visit_For(node, async=True)
-++        self.visit_For(node, is_async=True)
-+ 
-+     def visit_While(self, node):
-+         set_precedence(node, node.test)
-+         self.statement(node, 'while ', node.test, ':')
-+         self.body_or_else(node)
-+ 
-+-    def visit_With(self, node, async=False):
-+-        prefix = 'async ' if async else ''
-++    def visit_With(self, node, is_async=False):
-++        prefix = 'async ' if is_async else ''
-+         self.statement(node, '%swith ' % prefix)
-+         if hasattr(node, "context_expr"):  # Python < 3.3
-+             self.visit_withitem(node)
-+@@ -392,7 +392,7 @@ class SourceGenerator(ExplicitNodeVisitor):
-+ 
-+     # new for Python 3.5
-+     def visit_AsyncWith(self, node):
-+-        self.visit_With(node, async=True)
-++        self.visit_With(node, is_async=True)
-+ 
-+     # new for Python 3.3
-+     def visit_withitem(self, node):
-+-- 
-+2.7.4
-+
--- 
-2.7.4
-
diff --git a/recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch b/recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch
index 5fa5f91..8b42572 100644
--- a/recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch
+++ b/recipes-framework/tensorflow/files/0001-add-yocto-toolchain-to-support-cross-compiling.patch
@@ -1,6 +1,6 @@
-From dd303f745d159a2359c81922a2171a409998a71d Mon Sep 17 00:00:00 2001
+From d4d9365e0731afcfbc3a07bb97a689bf7da81151 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Thu, 31 Jan 2019 20:37:26 +0800
+Date: Wed, 9 Dec 2020 09:41:10 +0800
 Subject: [PATCH] add yocto toolchain to support cross compiling
 
 Upstream-Status: Inappropriate [oe specific]
@@ -15,12 +15,12 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  5 files changed, 27 insertions(+)
 
 diff --git a/WORKSPACE b/WORKSPACE
-index 7057d3f..869c180 100644
+index 9db1d9b80eb..6aa952642f2 100644
 --- a/WORKSPACE
 +++ b/WORKSPACE
-@@ -53,6 +53,12 @@ android_configure(name="local_config_android")
- load("@local_config_android//:android.bzl", "android_workspace")
- android_workspace()
+@@ -12,6 +12,12 @@ http_archive(
+     ],
+ )
  
 +new_local_repository(
 +    name = "yocto_compiler",
@@ -28,17 +28,18 @@ index 7057d3f..869c180 100644
 +    build_file = "//:BUILD.yocto_compiler",
 +)
 +
- # Please add all new TensorFlow dependencies in workspace.bzl.
- tf_workspace()
- 
+ # Load tf_repositories() before loading dependencies for other repository so
+ # that dependencies like com_google_protobuf won't be overridden.
+ load("//tensorflow:workspace.bzl", "tf_repositories")
 diff --git a/tensorflow/BUILD b/tensorflow/BUILD
-index 823ad8f..6270301 100644
+index 56b33a493fc..85e172afa03 100644
 --- a/tensorflow/BUILD
 +++ b/tensorflow/BUILD
-@@ -100,6 +100,15 @@ config_setting(
+@@ -125,6 +125,15 @@ config_setting(
+     visibility = ["//visibility:public"],
  )
  
- config_setting(
++config_setting(
 +    name = "yocto_armeabi",
 +    values = {
 +        "crosstool_top": "@local_config_yocto_compiler//:toolchain",
@@ -47,24 +48,23 @@ index 823ad8f..6270301 100644
 +    visibility = ["//visibility:public"],
 +)
 +
-+config_setting(
+ config_setting(
      name = "android_arm",
      values = {
-         "crosstool_top": "//external:android/crosstool",
 diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
-index aefab03..12c6fab 100755
+index a6ea0094dde..f6c47187c54 100755
 --- a/tensorflow/workspace.bzl
 +++ b/tensorflow/workspace.bzl
-@@ -12,6 +12,7 @@ load("//third_party/sycl:sycl_configure.bzl", "sycl_configure")
- load("//third_party/systemlibs:syslibs_configure.bzl", "syslibs_configure")
+@@ -10,6 +10,7 @@ load("//third_party/systemlibs:syslibs_configure.bzl", "syslibs_configure")
+ load("//third_party/toolchains/remote:configure.bzl", "remote_execution_configure")
  load("//third_party/toolchains/clang6:repo.bzl", "clang6_configure")
  load("//third_party/toolchains/cpus/arm:arm_compiler_configure.bzl", "arm_compiler_configure")
 +load("//third_party/toolchains/yocto:yocto_compiler_configure.bzl", "yocto_compiler_configure")
+ load("//third_party/toolchains/embedded/arm-linux:arm_linux_toolchain_configure.bzl", "arm_linux_toolchain_configure")
  load("//third_party:repo.bzl", "tf_http_archive")
  load("//third_party/clang_toolchain:cc_configure_clang.bzl", "cc_download_clang_toolchain")
- load("@io_bazel_rules_closure//closure/private:java_import_external.bzl", "java_import_external")
-@@ -76,6 +77,13 @@ def tf_workspace(path_prefix = "", tf_repo_name = ""):
-         remote_config_repo = "../arm_compiler",
+@@ -116,6 +117,13 @@ def tf_repositories(path_prefix = "", tf_repo_name = ""):
+         remote_config_repo_aarch64 = "../aarch64_compiler",
      )
  
 +    # Point //external/local_config_yocto_compiler to //external/yocto_compiler
@@ -74,25 +74,25 @@ index aefab03..12c6fab 100755
 +        remote_config_repo = "../yocto_compiler",
 +    )
 +
-     mkl_repository(
-         name = "mkl_linux",
-         build_file = clean_dep("//third_party/mkl:mkl.BUILD"),
+     # TFLite crossbuild toolchain for embeddeds Linux
+     arm_linux_toolchain_configure(
+         name = "local_config_embedded_arm",
 diff --git a/third_party/aws/BUILD.bazel b/third_party/aws/BUILD.bazel
-index 5426f79..b106b12 100644
+index d9e40703caa..e1058edaba4 100644
 --- a/third_party/aws/BUILD.bazel
 +++ b/third_party/aws/BUILD.bazel
-@@ -24,6 +24,9 @@ cc_library(
-         "@org_tensorflow//tensorflow:raspberry_pi_armeabi": glob([
+@@ -30,6 +30,9 @@ cc_library(
+         "@org_tensorflow//tensorflow:freebsd": glob([
              "aws-cpp-sdk-core/source/platform/linux-shared/*.cpp",
          ]),
 +        "@org_tensorflow//tensorflow:yocto_armeabi": glob([
 +            "aws-cpp-sdk-core/source/platform/linux-shared/*.cpp",
 +        ]),
          "//conditions:default": [],
-     }) + glob([
-         "aws-cpp-sdk-core/include/**/*.h",
+     }) + select({
+         "//conditions:default": glob([
 diff --git a/third_party/repo.bzl b/third_party/repo.bzl
-index bad6d20..9823cab 100644
+index ef729b5223d..39ec07eb328 100644
 --- a/third_party/repo.bzl
 +++ b/third_party/repo.bzl
 @@ -16,6 +16,7 @@
@@ -104,5 +104,5 @@ index bad6d20..9823cab 100644
  
  def _is_windows(ctx):
 -- 
-2.7.4
+2.18.2
 
diff --git a/recipes-framework/tensorflow/files/0001-fix-build-tensorflow-lite-examples-label_image-label.patch b/recipes-framework/tensorflow/files/0001-fix-build-tensorflow-lite-examples-label_image-label.patch
index ba40d51..10b25bd 100644
--- a/recipes-framework/tensorflow/files/0001-fix-build-tensorflow-lite-examples-label_image-label.patch
+++ b/recipes-framework/tensorflow/files/0001-fix-build-tensorflow-lite-examples-label_image-label.patch
@@ -1,6 +1,6 @@
-From 1930f8aabbfe00debd2914f759cb5ac263215d49 Mon Sep 17 00:00:00 2001
+From 6b0a33d63954991637903028af4cfdd9a59cff0b Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Sun, 24 Feb 2019 03:33:00 -0500
+Date: Wed, 9 Dec 2020 09:47:49 +0800
 Subject: [PATCH] fix build //tensorflow/lite/examples/label_image:label_image
  failure
 
@@ -16,37 +16,35 @@ Upstream-Status: Inappropriate [oe specific]
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 ---
- tensorflow/lite/kernels/internal/BUILD | 10 ++++++++++
- 1 file changed, 10 insertions(+)
+ tensorflow/lite/kernels/internal/BUILD | 8 ++++++++
+ 1 file changed, 8 insertions(+)
 
 diff --git a/tensorflow/lite/kernels/internal/BUILD b/tensorflow/lite/kernels/internal/BUILD
-index 4be3226..959a9f0 100644
+index 94135c6adbe..9a07177e93a 100644
 --- a/tensorflow/lite/kernels/internal/BUILD
 +++ b/tensorflow/lite/kernels/internal/BUILD
-@@ -93,6 +93,13 @@ config_setting(
+@@ -116,6 +116,13 @@ config_setting(
+     },
  )
  
- config_setting(
++config_setting(
 +    name = "armeabi",
 +    values = {
 +        "cpu": "armeabi",
 +    },
 +)
 +
-+config_setting(
+ config_setting(
      name = "haswell",
      values = {
-         "cpu": "haswell",
-@@ -504,6 +511,9 @@ cc_library(
-         ":armeabi-v7a": [
-             ":neon_tensor_utils",
-         ],
-+        ":armeabi": [
-+            ":neon_tensor_utils",
-+        ],
-         ":armv7a": [
-             ":neon_tensor_utils",
-         ],
+@@ -772,6 +779,7 @@ cc_library(
+             ":arm",
+             ":arm64-v8a",
+             ":armeabi-v7a",
++            ":armeabi",
+             ":armhf",
+             ":armv7a",
+             ":ios_armv7",
 -- 
-2.8.1
+2.18.2
 
diff --git a/recipes-framework/tensorflow/files/0001-fix-compilation-error.patch b/recipes-framework/tensorflow/files/0001-fix-compilation-error.patch
deleted file mode 100644
index 995b83b..0000000
--- a/recipes-framework/tensorflow/files/0001-fix-compilation-error.patch
+++ /dev/null
@@ -1,58 +0,0 @@
-From c1d33029372d7b4d3b5cc1d52d92c414c97ca763 Mon Sep 17 00:00:00 2001
-From: Chen Qi <Qi.Chen@windriver.com>
-Date: Fri, 21 Feb 2020 11:45:04 +0800
-Subject: [PATCH] fix compilation error
-
-This fix references https://github.com/tensorflow/tensorflow/issues/34197.
-
-Upstream-Status: Pending
-
-Signed-off-by: Chen Qi <Qi.Chen@windriver.com>
----
- tensorflow/python/eager/pywrap_tfe_src.cc           | 2 +-
- tensorflow/python/lib/core/bfloat16.cc              | 2 +-
- tensorflow/python/lib/core/ndarray_tensor_bridge.cc | 2 +-
- 3 files changed, 3 insertions(+), 3 deletions(-)
-
-diff --git a/tensorflow/python/eager/pywrap_tfe_src.cc b/tensorflow/python/eager/pywrap_tfe_src.cc
-index 9ce500bc08..6c6cb215f2 100644
---- a/tensorflow/python/eager/pywrap_tfe_src.cc
-+++ b/tensorflow/python/eager/pywrap_tfe_src.cc
-@@ -1216,7 +1216,7 @@ static PyTypeObject TFE_Py_Tape_Type = {
-     sizeof(TFE_Py_Tape),                          /* tp_basicsize */
-     0,                                            /* tp_itemsize */
-     &TFE_Py_Tape_Delete,                          /* tp_dealloc */
--    nullptr,                                      /* tp_print */
-+    NULL,                                      /* tp_print */
-     nullptr,                                      /* tp_getattr */
-     nullptr,                                      /* tp_setattr */
-     nullptr,                                      /* tp_reserved */
-diff --git a/tensorflow/python/lib/core/bfloat16.cc b/tensorflow/python/lib/core/bfloat16.cc
-index fde3a83770..9b8fa97958 100644
---- a/tensorflow/python/lib/core/bfloat16.cc
-+++ b/tensorflow/python/lib/core/bfloat16.cc
-@@ -317,7 +317,7 @@ PyTypeObject PyBfloat16_Type = {
-     sizeof(PyBfloat16),                        // tp_basicsize
-     0,                                         // tp_itemsize
-     nullptr,                                   // tp_dealloc
--    nullptr,                                   // tp_print
-+    NULL,                                   // tp_print
-     nullptr,                                   // tp_getattr
-     nullptr,                                   // tp_setattr
-     nullptr,                                   // tp_compare / tp_reserved
-diff --git a/tensorflow/python/lib/core/ndarray_tensor_bridge.cc b/tensorflow/python/lib/core/ndarray_tensor_bridge.cc
-index 0d5838505f..50c1f885f4 100644
---- a/tensorflow/python/lib/core/ndarray_tensor_bridge.cc
-+++ b/tensorflow/python/lib/core/ndarray_tensor_bridge.cc
-@@ -86,7 +86,7 @@ PyTypeObject TensorReleaserType = {
-     0,                                /* tp_itemsize */
-     /* methods */
-     TensorReleaser_dealloc,      /* tp_dealloc */
--    nullptr,                     /* tp_print */
-+    NULL,                     /* tp_print */
-     nullptr,                     /* tp_getattr */
-     nullptr,                     /* tp_setattr */
-     nullptr,                     /* tp_compare */
--- 
-2.17.1
-
diff --git a/recipes-framework/tensorflow/files/0001-label_image.lite-tweak-default-model-location.patch b/recipes-framework/tensorflow/files/0001-label_image.lite-tweak-default-model-location.patch
index 9185c54..597021a 100644
--- a/recipes-framework/tensorflow/files/0001-label_image.lite-tweak-default-model-location.patch
+++ b/recipes-framework/tensorflow/files/0001-label_image.lite-tweak-default-model-location.patch
@@ -1,32 +1,35 @@
-From 6d519e53de0a47cebb72111608f7424d7585c6bb Mon Sep 17 00:00:00 2001
+From dd73bef88a23d29299bc6e2f3c892ed81d65a86c Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Tue, 5 Mar 2019 22:06:34 -0500
+Date: Wed, 9 Dec 2020 09:53:30 +0800
 Subject: [PATCH] label_image.lite: tweak default model location
 
 Upstream-Status: Inappropriate [oe specific]
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 ---
- tensorflow/lite/examples/label_image/label_image.h | 6 +++---
- 1 file changed, 3 insertions(+), 3 deletions(-)
+ tensorflow/lite/examples/label_image/label_image.h | 8 +++++---
+ 1 file changed, 5 insertions(+), 3 deletions(-)
 
 diff --git a/tensorflow/lite/examples/label_image/label_image.h b/tensorflow/lite/examples/label_image/label_image.h
-index 88b047f..c541fec 100644
+index 1c00edb6558..a5bcf8c64d8 100644
 --- a/tensorflow/lite/examples/label_image/label_image.h
 +++ b/tensorflow/lite/examples/label_image/label_image.h
-@@ -29,9 +29,9 @@ struct Settings {
+@@ -34,10 +34,12 @@ struct Settings {
    int loop_count = 1;
    float input_mean = 127.5f;
    float input_std = 127.5f;
 -  string model_name = "./mobilenet_quant_v1_224.tflite";
++  string model_name = "/usr/share/label_image/mobilenet_v1_1.0_224_quant.tflite";
+   tflite::FlatBufferModel* model;
 -  string input_bmp_name = "./grace_hopper.bmp";
 -  string labels_file_name = "./labels.txt";
-+  string model_name = "/usr/share/label_image/mobilenet_v1_1.0_224_quant.tflite";
 +  string input_bmp_name = "/usr/share/label_image/grace_hopper.bmp";
 +  string labels_file_name = "/usr/share/label_image/labels_mobilenet_quant_v1_224.txt";
-   string input_layer_type = "uint8_t";
++
++
    int number_of_threads = 4;
    int number_of_results = 5;
+   int max_profiling_buffer_entries = 1024;
 -- 
-2.8.1
+2.18.2
 
diff --git a/recipes-framework/tensorflow/files/0001-support-musl.patch b/recipes-framework/tensorflow/files/0001-support-musl.patch
index f76041b..355b0cb 100644
--- a/recipes-framework/tensorflow/files/0001-support-musl.patch
+++ b/recipes-framework/tensorflow/files/0001-support-musl.patch
@@ -1,6 +1,6 @@
-From 02e58aa624aa6c330984474b9119c6b29a1ed77d Mon Sep 17 00:00:00 2001
+From a37010bee0ef08a2b42c10fc6ca1f3bd793b0e6a Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Thu, 14 Feb 2019 10:26:27 -0500
+Date: Tue, 8 Dec 2020 17:06:52 +0800
 Subject: [PATCH] support musl
 
 Build fails looking for `execinfo.h` when building against musl
@@ -10,40 +10,41 @@ Build fails looking for `execinfo.h` when building against musl
 execinfo.h: No such file or directory
 
 Upstream-Status: Pending
+
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 ---
- tensorflow/core/platform/default/stacktrace.h  | 3 ++-
- tensorflow/core/platform/stacktrace_handler.cc | 3 ++-
+ tensorflow/core/platform/default/stacktrace.h          | 3 ++-
+ tensorflow/core/platform/default/stacktrace_handler.cc | 3 ++-
  2 files changed, 4 insertions(+), 2 deletions(-)
 
 diff --git a/tensorflow/core/platform/default/stacktrace.h b/tensorflow/core/platform/default/stacktrace.h
-index c8e297f..8fecf05 100644
+index 0a8c124ff51..db7945611d3 100644
 --- a/tensorflow/core/platform/default/stacktrace.h
 +++ b/tensorflow/core/platform/default/stacktrace.h
-@@ -18,7 +18,8 @@ limitations under the License.
- 
+@@ -20,7 +20,8 @@ limitations under the License.
  #include "tensorflow/core/platform/platform.h"
- #if !defined(IS_MOBILE_PLATFORM) && defined(PLATFORM_POSIX) && \
--    (defined(__clang__) || defined(__GNUC__))
-+    (defined(__clang__) || defined(__GNUC__)) && \
+ // clang-format on
+ 
+-#if !defined(IS_MOBILE_PLATFORM) && (defined(__clang__) || defined(__GNUC__))
++#if !defined(IS_MOBILE_PLATFORM) && (defined(__clang__) || defined(__GNUC__)) && \
 +    defined(__GLIBC__)
- #define TF_GENERATE_BACKTRACE
+ #define TF_HAS_STACKTRACE
  #endif
  
-diff --git a/tensorflow/core/platform/stacktrace_handler.cc b/tensorflow/core/platform/stacktrace_handler.cc
-index ff31c97..41d62f7 100644
---- a/tensorflow/core/platform/stacktrace_handler.cc
-+++ b/tensorflow/core/platform/stacktrace_handler.cc
+diff --git a/tensorflow/core/platform/default/stacktrace_handler.cc b/tensorflow/core/platform/default/stacktrace_handler.cc
+index 70fcdc27042..f38fe71c917 100644
+--- a/tensorflow/core/platform/default/stacktrace_handler.cc
++++ b/tensorflow/core/platform/default/stacktrace_handler.cc
 @@ -16,7 +16,8 @@ limitations under the License.
  #include "tensorflow/core/platform/platform.h"
  
- #if !defined(PLATFORM_GOOGLE) && !defined(IS_MOBILE_PLATFORM) && \
--    defined(PLATFORM_POSIX) && (defined(__clang__) || defined(__GNUC__))
-+    defined(PLATFORM_POSIX) && (defined(__clang__) || defined(__GNUC__)) && \
+ #if !defined(IS_MOBILE_PLATFORM) && defined(PLATFORM_POSIX) && \
+-    (defined(__clang__) || defined(__GNUC__))
++    (defined(__clang__) || defined(__GNUC__)) && \
 +    defined(__GLIBC__)
  #define TF_GENERATE_STACKTRACE
  #endif
  
 -- 
-2.8.1
+2.18.2
 
diff --git a/recipes-framework/tensorflow/files/0001-third_party-eigen_archive-workaround-ice-failure-whi.patch b/recipes-framework/tensorflow/files/0001-third_party-eigen_archive-workaround-ice-failure-whi.patch
index 354e988..5b6c292 100644
--- a/recipes-framework/tensorflow/files/0001-third_party-eigen_archive-workaround-ice-failure-whi.patch
+++ b/recipes-framework/tensorflow/files/0001-third_party-eigen_archive-workaround-ice-failure-whi.patch
@@ -1,6 +1,6 @@
-From dc5a05a06ad107141a9914635cd96bf7d60b9c25 Mon Sep 17 00:00:00 2001
+From 66ce33e48d8e48743d923fe2c152079604c9c386 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Mon, 6 Apr 2020 16:09:01 +0800
+Date: Tue, 8 Dec 2020 17:42:01 +0800
 Subject: [PATCH] third_party/eigen_archive:workaround ice failure while
  building from source with gcc 7.3.1
 
@@ -14,34 +14,46 @@ Upstream-Status: Inappropriate [wr-installer specific]
 
 Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 ---
- tensorflow/workspace.bzl                      |  1 +
- ...ailure-while-building-from-source-wi.patch | 38 +++++++++++++++++++
- 2 files changed, 39 insertions(+)
- create mode 100644 third_party/systemlibs/0001-workaround-ice-failure-while-building-from-source-wi.patch
+ third_party/eigen3/gpu_packet_math.patch | 97 +++++++++++++++++-------
+ 1 file changed, 70 insertions(+), 27 deletions(-)
 
-diff --git a/tensorflow/workspace.bzl b/tensorflow/workspace.bzl
-index 66679e686d..983f6a19b4 100755
---- a/tensorflow/workspace.bzl
-+++ b/tensorflow/workspace.bzl
-@@ -138,6 +138,7 @@ def tf_workspace(path_prefix = "", tf_repo_name = ""):
-         build_file = clean_dep("//third_party:eigen.BUILD"),
-         sha256 = "753fbb58d0a49b6bcbcfb126ebfa2e21fc97f7471529ba835a096008ce588d8a",
-         strip_prefix = "eigen-eigen-9f48e814419e",
-+        patch_file = clean_dep("//third_party/systemlibs:0001-workaround-ice-failure-while-building-from-source-wi.patch"),
-         urls = [
-             "https://mirror.bazel.build/bitbucket.org/eigen/eigen/get/9f48e814419e.tar.gz",
-             "https://bitbucket.org/eigen/eigen/get/9f48e814419e.tar.gz",
-diff --git a/third_party/systemlibs/0001-workaround-ice-failure-while-building-from-source-wi.patch b/third_party/systemlibs/0001-workaround-ice-failure-while-building-from-source-wi.patch
-new file mode 100644
-index 0000000000..d6c06b61e6
---- /dev/null
-+++ b/third_party/systemlibs/0001-workaround-ice-failure-while-building-from-source-wi.patch
-@@ -0,0 +1,38 @@
-+From c6748051ee8a5526801ce2070856061eb82ebe12 Mon Sep 17 00:00:00 2001
+diff --git a/third_party/eigen3/gpu_packet_math.patch b/third_party/eigen3/gpu_packet_math.patch
+index c0f466c24d3..9ebced7be41 100644
+--- a/third_party/eigen3/gpu_packet_math.patch
++++ b/third_party/eigen3/gpu_packet_math.patch
+@@ -1,32 +1,30 @@
+-diff -ru a/Eigen/src/Geometry/arch/Geometry_SSE.h b/Eigen/src/Geometry/arch/Geometry_SSE.h
+---- a/Eigen/src/Geometry/arch/Geometry_SSE.h
+-+++ b/Eigen/src/Geometry/arch/Geometry_SSE.h
+-@@ -33,13 +33,14 @@
+-     Packet4f b = be.template packet<BAlignment,Packet4f>(0);
+-     Packet4f s1 = pmul(vec4f_swizzle1(a,1,2,0,2),vec4f_swizzle1(b,2,0,1,2));
+-     Packet4f s2 = pmul(vec4f_swizzle1(a,3,3,3,1),vec4f_swizzle1(b,0,1,2,1));
+--    pstoret<float,Packet4f,ResAlignment>(
+--              &res.x(),
+--              padd(psub(pmul(a,vec4f_swizzle1(b,3,3,3,3)),
+--                                    pmul(vec4f_swizzle1(a,2,0,1,0),
+--                                               vec4f_swizzle1(b,1,2,0,0))),
+--                         pxor(mask,padd(s1,s2))));
+--    
+-+    pstoret<float, Packet4f, ResAlignment>(
+-+        &res.x(),
+-+        padd<Packet4f>(
+-+            psub<Packet4f>(pmul<Packet4f>(a, vec4f_swizzle1(b, 3, 3, 3, 3)),
+-+                           pmul<Packet4f>(vec4f_swizzle1(a, 2, 0, 1, 0),
+-+                                          vec4f_swizzle1(b, 1, 2, 0, 0))),
+-+            pxor<Packet4f>(mask, padd(s1, s2))));
+-+
+-     return res;
+-   }
+- };
+-diff -ru a/Eigen/src/Core/GenericPacketMath.h b/Eigen/src/Core/GenericPacketMath.h
++From 791079e4f45c8ab706c6384b3efde387db09557b Mon Sep 17 00:00:00 2001
 +From: Hongxu Jia <hongxu.jia@windriver.com>
-+Date: Mon, 6 Apr 2020 15:55:21 +0800
-+Subject: [PATCH] workaround ice failure while building from source with gcc
-+ 7.3.1
++Date: Tue, 8 Dec 2020 17:32:22 +0800
++Subject: [PATCH] 1. gpu_packet_math
++
++2. workaround ice failure while building from source with gcc 7.3.1
 +
 +The root cause is gcc ice issue:
 +https://gcc.gnu.org/bugzilla/show_bug.cgi?id=89752
@@ -53,14 +65,55 @@ index 0000000000..d6c06b61e6
 +
 +Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
 +---
-+ unsupported/Eigen/CXX11/src/Tensor/TensorReduction.h | 4 +++-
-+ 1 file changed, 3 insertions(+), 1 deletion(-)
++ Eigen/src/Core/GenericPacketMath.h            | 46 ++++++++-----------
++ Eigen/src/Geometry/arch/Geometry_SSE.h        | 15 +++---
++ .../Eigen/CXX11/src/Tensor/TensorReduction.h  |  4 +-
++ 3 files changed, 31 insertions(+), 34 deletions(-)
 +
++diff --git a/Eigen/src/Core/GenericPacketMath.h b/Eigen/src/Core/GenericPacketMath.h
++index fad9453..d8bbc76 100644
+ --- a/Eigen/src/Core/GenericPacketMath.h
+ +++ b/Eigen/src/Core/GenericPacketMath.h
+-@@ -255,49 +255,43 @@
++@@ -255,49 +255,43 @@ EIGEN_DEVICE_FUNC inline std::complex<RealScalar> ptrue(const std::complex<RealS
+    return std::complex<RealScalar>(b, b);
+  }
+  
+@@ -96,3 +94,48 @@ diff -ru a/Eigen/src/Core/GenericPacketMath.h b/Eigen/src/Core/GenericPacketMath
+  }
+  
+  /** \internal \returns the bitwise and of \a a and not \a b */
++diff --git a/Eigen/src/Geometry/arch/Geometry_SSE.h b/Eigen/src/Geometry/arch/Geometry_SSE.h
++index 108cc9f..43677f4 100644
++--- a/Eigen/src/Geometry/arch/Geometry_SSE.h
+++++ b/Eigen/src/Geometry/arch/Geometry_SSE.h
++@@ -33,13 +33,14 @@ struct quat_product<Architecture::SSE, Derived, OtherDerived, float>
++     Packet4f b = be.template packet<BAlignment,Packet4f>(0);
++     Packet4f s1 = pmul(vec4f_swizzle1(a,1,2,0,2),vec4f_swizzle1(b,2,0,1,2));
++     Packet4f s2 = pmul(vec4f_swizzle1(a,3,3,3,1),vec4f_swizzle1(b,0,1,2,1));
++-    pstoret<float,Packet4f,ResAlignment>(
++-              &res.x(),
++-              padd(psub(pmul(a,vec4f_swizzle1(b,3,3,3,3)),
++-                                    pmul(vec4f_swizzle1(a,2,0,1,0),
++-                                               vec4f_swizzle1(b,1,2,0,0))),
++-                         pxor(mask,padd(s1,s2))));
++-    
+++    pstoret<float, Packet4f, ResAlignment>(
+++        &res.x(),
+++        padd<Packet4f>(
+++            psub<Packet4f>(pmul<Packet4f>(a, vec4f_swizzle1(b, 3, 3, 3, 3)),
+++                           pmul<Packet4f>(vec4f_swizzle1(a, 2, 0, 1, 0),
+++                                          vec4f_swizzle1(b, 1, 2, 0, 0))),
+++            pxor<Packet4f>(mask, padd(s1, s2))));
+++
++     return res;
++   }
++ };
 +diff --git a/unsupported/Eigen/CXX11/src/Tensor/TensorReduction.h b/unsupported/Eigen/CXX11/src/Tensor/TensorReduction.h
-+index bda1147..e2d7113 100644
++index 0a65591..0b00a31 100644
 +--- a/unsupported/Eigen/CXX11/src/Tensor/TensorReduction.h
 ++++ b/unsupported/Eigen/CXX11/src/Tensor/TensorReduction.h
-+@@ -798,8 +798,10 @@ struct TensorEvaluator<const TensorReductionOp<Op, Dims, ArgType, MakePointer_>,
++@@ -815,8 +815,10 @@ struct TensorReductionEvaluatorBase<const TensorReductionOp<Op, Dims, ArgType, M
 +       const Index firstIndex = firstInput(index);
 +       for (Index i = 0; i < PacketSize; ++i) {
 +         Op reducer(m_reducer);
@@ -73,8 +126,8 @@ index 0000000000..d6c06b61e6
 +     } else if (PreservingInnerMostDims) {
 +       const Index firstIndex = firstInput(index);
 +-- 
-+2.17.1
++2.18.2
 +
 -- 
-2.17.1
+2.18.2
 
diff --git a/recipes-framework/tensorflow/files/0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch b/recipes-framework/tensorflow/files/0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch
index 14e8e47..e7b666e 100644
--- a/recipes-framework/tensorflow/files/0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch
+++ b/recipes-framework/tensorflow/files/0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch
@@ -1,6 +1,6 @@
-From ecc7014fe42ac0bc7bc502f2671a8da09c90d6ea Mon Sep 17 00:00:00 2001
+From 71e1fc302b41523aa4852ddf780cb2a42cf03f20 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Wed, 13 Mar 2019 17:55:08 +0800
+Date: Tue, 8 Dec 2020 17:11:48 +0800
 Subject: [PATCH] use local bazel to workaround bazel paralle issue
 
 Upstream-Status: Inappropriate [oe specific]
@@ -11,18 +11,18 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/configure.py b/configure.py
-index 4f8cae2..2121a90 100644
+index b4907775d93..2a85871e52e 100644
 --- a/configure.py
 +++ b/configure.py
-@@ -454,7 +454,7 @@ def check_bazel_version(min_version, max_version):
-     print('Cannot find bazel. Please install bazel.')
-     sys.exit(0)
-   curr_version = run_shell(
--      ['bazel', '--batch', '--bazelrc=/dev/null', 'version'])
-+      ['../bazel/bazel', '--batch', '--bazelrc=/dev/null', 'version'])
+@@ -480,7 +480,7 @@ def check_bazel_version(min_version, max_version):
+     sys.exit(1)
  
-   for line in curr_version.split('\n'):
-     if 'Build label: ' in line:
+   stderr = open(os.devnull, 'wb')
+-  curr_version = run_shell(['bazel', '--version'],
++  curr_version = run_shell(['../bazel/bazel', '--version'],
+                            allow_non_zero=True,
+                            stderr=stderr)
+   if curr_version.startswith('bazel '):
 -- 
-2.7.4
+2.18.2
 
diff --git a/recipes-framework/tensorflow/tensorflow-native_1.13.0.bb b/recipes-framework/tensorflow/tensorflow-native_2.4.0.bb
similarity index 100%
rename from recipes-framework/tensorflow/tensorflow-native_1.13.0.bb
rename to recipes-framework/tensorflow/tensorflow-native_2.4.0.bb
diff --git a/recipes-framework/tensorflow/tensorflow.inc b/recipes-framework/tensorflow/tensorflow.inc
index a729bdd..cd6518c 100644
--- a/recipes-framework/tensorflow/tensorflow.inc
+++ b/recipes-framework/tensorflow/tensorflow.inc
@@ -1,18 +1,13 @@
 DESCRIPTION = "TensorFlow C/C++ Libraries"
 LICENSE = "Apache-2.0"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=64a34301f8e355f57ec992c2af3e5157"
 
 DEPENDS = "bazel-native protobuf-native util-linux-native protobuf"
-SRCREV = "c8875cbb1341f6ca14dd0ec908f1dde7d67f7808"
-SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r1.13 \
-           file://0001-SyntaxError-around-async-keyword-on-Python-3.7.patch \
+SRCREV = "97c3fef64ba9937a52af2d72fb4104b6e541d4b2"
+SRC_URI = "git://github.com/tensorflow/tensorflow.git;branch=r2.4 \
            file://0001-support-musl.patch \
            file://0001-use-local-bazel-to-workaround-bazel-paralle-issue.patch \
-           file://0001-fix-compilation-error.patch \
-           file://0001-Fix-TensorFlow-on-Python-3.8-logger-issue.patch \
-           file://0001-Rename-gettid-functions.patch \
            file://0001-third_party-eigen_archive-workaround-ice-failure-whi.patch \
-           file://0001-Provide-overload-to-cope-with-const-ness-change-of-N.patch \
           "
 
 S = "${WORKDIR}/git"
diff --git a/recipes-framework/tensorflow/tensorflow_1.13.0.bb b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
similarity index 99%
rename from recipes-framework/tensorflow/tensorflow_1.13.0.bb
rename to recipes-framework/tensorflow/tensorflow_2.4.0.bb
index 90b152b..aeb1a80 100644
--- a/recipes-framework/tensorflow/tensorflow_1.13.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
@@ -30,6 +30,7 @@ RDEPENDS_${PN} += " \
     python3-grpcio \
     python3-absl \
     python3-astor \
+    python3-astunparse \
     python3-gast \
     python3-termcolor \
     tensorboard \
-- 
2.21.0

