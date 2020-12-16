Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7118.1608124171695218760
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=GnXIiCpo;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690050.outbound.protection.outlook.com [40.107.69.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7F0BE38C063A
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:31 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dwfOA4v01DALNdATKzuvGU95fCYYtLOp3oLWTBiuOFbnkhVv6FP2WFupjIh8npgIIJOqF+9zyLqH+5dD3aiEZh3tm7rbrUPGASlUxjEzcVAFMxSWj/8g9UEsVAjbUlcT/dk8pb7SuEFALBcLt46PuuVqyHLtL/+6joiASi/VR8kLz4kof2s3i4pOg1/idK4Gdw/6mng5HHaWR0FgY1o8ExO32xUNzDlwQFvGJ7WiPtePXW5hVt/i4P4fqvG+zbB0znyfLEm7tMU6nCm1i1G8rj4KsYBfenPCln5aL56jDJSN0FjKLypwAeWG6tsdRFcdfVv5jfiMn1G/FSbhSG5ksA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=75+WDGpkAYkLHtvpUIEQ9+NuB20yBAKRybE57GoJFJA=;
 b=dalQMDuxK/Sl5NP5TfRnYXZhtpIDdL5BX/Zy6JjSqa5l7PLp/bI1etgLniuubz0HPWa2lRTXLkAsW6/Cl5HCYWx7Xw0G+9jnKYKSWxLFoEZA8gWNQpz/3Pro6L2dbzICmJ4PJQauX23VokV+ifuvtBG9u1wD16JKEO+4k2rKmUlWNWT2ZTd5LJ/DZ6KMRpp8/lEHeCHUbAdS+SpChjyamE6TcY1axa5nN0pA3QUNjjocHUsHzuZFbYQ7EPdJ9y3BAGQi5tNkWyNC5trnEnjGtkM4IS2LJqdGwdgHFrprHR/Nt5oRjb6Ugrao4nhd/HDiXip7g8EyZekyux7fSCjh4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=75+WDGpkAYkLHtvpUIEQ9+NuB20yBAKRybE57GoJFJA=;
 b=GnXIiCpoAHFnhpJRDxqYfGVT0zi899fqKbk/6IfzL5OmNY1T7Moo4UnG9xWFxc5ht9ON/MAnGyox1WGcgwnN4emJR8VnbEaz1EZbA9N1/tz2Uwt3U6SWPlf/5rGLiXUCK+tzP2n0PD0RCJXrDzTEYTs+wIa80Rf3VtKkRC3ZU5w=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:30 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:30 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 20/25] bazel-native: 3.1.0 -> 3.7.1
Date: Wed, 16 Dec 2020 21:08:17 +0800
Message-Id: <20201216130822.28476-21-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0979b1ae-d4f5-49cc-5044-08d8a1c3d336
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577FC7A3EB59DF753D1ED5594C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LDlmtqoh+ufpnOSX3Ahql+SLOH4N/mw31UkOUrD8/xnXhFx5jngiJlEq3PHiOi3unI90ooaedicKjfmhv+WdtZ0mmS4o6paQvSWK157lRYIfP3fTzZ+4hwAIwS3d3BR6hqqFqtBIdvRw02jJrDSZFyRQyPHM6AAuZeZ/0bnwXwL59ReLTabUruumTLy09lcNANqPxR+e0OXhDayLFO605KpXCC2yTOUKlhv4A7OzKVYRm5K/k1ZoEcPJH20rE0jq1YBl4PaaT9GZbObQoilkhtvOKOQESQpRBijMudrvecWdzRg5SAPx/F55uxNyEv63fmq1IynAV0lz02a8sPNQVcYNA10sIP/9i2dKWhVc1pxTVufuhd3ddiurBF3/9OgeK8fcB1W6MylXZz/sArqf9FccFxOftEo8W71nyeRztPWurV8uesQJqTsiAtgSQFeRd2udexta/4MuH/eoFSnc4Q==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007)(60764002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?cnR2fZwLIJGv/IbDsvNVQzEmhfOaNvn7EbDYNNW6KCoq9A88vb8nkEEvPjPf?=
 =?us-ascii?Q?A7tQf9dDzX234oS9FG58PLMViW8OMBIsMS8RFvmRc2Zi6snhinL83vVLNdzI?=
 =?us-ascii?Q?qReudI8uYEDn2QL73PQVAOlxO7BP3FvSJNHc+mThztjFLK7NzcEqucceADMU?=
 =?us-ascii?Q?MJavrko1x3paq9kcx9H+j0wie/FwnN3YiS8bNdKlu94G9gZQuXU2H7AOGQHb?=
 =?us-ascii?Q?Mfor59foiPyKKBZ4RCn2hm+QUmjAPy4y3eTZLGcP9lugiOML+vGWnolfbrzi?=
 =?us-ascii?Q?PuqvWksyUKh6ZePA8ajTihhzUgmY2bHGUDpKaB1IBxRj4JMYswDHQ6Qicwk2?=
 =?us-ascii?Q?M6ADl7EL/VlTJ5knbuYgoKICYNw/Wjj0FMrfQuZ98ly9/+FMQM7wavHSHP7r?=
 =?us-ascii?Q?uVQPODqeY6PiY1s3Al6IR8z3TfT4a71yTUWWIqnAj0aVKPRiHQUQ20X3HoXG?=
 =?us-ascii?Q?NHlPIVKzztZuUxsk/JudEODrZ4lAjhiGr1YkkCxPqUHo0lz7YUYlo75k24b8?=
 =?us-ascii?Q?uMY+MFR/lY9NYpfaiYrAxXCKUFiHsYG0WkEt6rHaeUpIZhRI9z0F/2arre+A?=
 =?us-ascii?Q?Ip2yFPx5tBemseXgZbFjdaSN+W9UDJbABIlfAvvUwtH5cXbCAIrdEAvsGqfe?=
 =?us-ascii?Q?d23p+MG0V/oJ/QIZLdWyozs5Ls/Wm05MLlbeL82rB2NdkVweJvv6DlBAtnGP?=
 =?us-ascii?Q?Mw5iWG5kZtCc48R2er5tC0M1HIoDFhLkYvD06W707Xar3alfpkrOrSHLFgWs?=
 =?us-ascii?Q?Wg7I2eH+r4lIrZSetFGXimGq+Gath/RgGBqWbG+sxh3o+kxNBC+wz2YtU3hC?=
 =?us-ascii?Q?Ozioc6qkqQuwdCrJTu6/vPVzk5fXU5mlaPHRBFCOlHpyidplXIvHHjNz7oH4?=
 =?us-ascii?Q?LVb3p8hRMR94FCOPYHauVWwpRtoAS116ZFaX7L62/V6QTfe9qShj5S8S3hbj?=
 =?us-ascii?Q?oSTIJNGgzYgY25N2slznkNv0PauRdS9w7sLl+Z9BzwEnsM0EmWIfqHdGyF/U?=
 =?us-ascii?Q?2A0S?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:30.6612
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 0979b1ae-d4f5-49cc-5044-08d8a1c3d336
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6JHVKxn8fvflz1E9WwYUgXMjxtbFAFIQnMvJsorqOrvcmZk7HIKqUD0Yxoze3kJbAZ1aVzw8E+hiVbN7fMA+czPNP6vRNTfLj5be1OrheZI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 ...l-native_3.1.0.bb => bazel-native_3.7.1.bb} |  4 ++--
 ...e-sysroot-dir-to-the-default-Bazel-to.patch | 12 ++++++------
 .../bazel/files/0001-python3.patch             | 18 +++++++++---------
 3 files changed, 17 insertions(+), 17 deletions(-)
 rename recipes-devtools/bazel/{bazel-native_3.1.0.bb => bazel-native_3.7.1.bb} (90%)

diff --git a/recipes-devtools/bazel/bazel-native_3.1.0.bb b/recipes-devtools/bazel/bazel-native_3.7.1.bb
similarity index 90%
rename from recipes-devtools/bazel/bazel-native_3.1.0.bb
rename to recipes-devtools/bazel/bazel-native_3.7.1.bb
index 1336da8..a1575d6 100644
--- a/recipes-devtools/bazel/bazel-native_3.1.0.bb
+++ b/recipes-devtools/bazel/bazel-native_3.7.1.bb
@@ -2,8 +2,8 @@ DESCRIPTION = "Bazel build and test tool"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
-SRC_URI[md5sum] = "381ca27503c566ce5e489d1ba07d1d25"
-SRC_URI[sha256sum] = "d7f40d0cac95a06cea6cb5b7f7769085257caebc3ee84269dd9298da760d5615"
+SRC_URI[md5sum] = "cc255121586e849c4de2483a8a5814b6"
+SRC_URI[sha256sum] = "c9244e5905df6b0190113e26082c72d58b56b1b0dec66d076f083ce4089b0307"
 
 SRC_URI = "https://github.com/bazelbuild/bazel/releases/download/${PV}/bazel-${PV}-dist.zip \
            file://0001-HttpDownloader-save-download-tarball-to-distdir.patch \
diff --git a/recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch b/recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch
index b08c65a..7d73eb7 100644
--- a/recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch
+++ b/recipes-devtools/bazel/files/0001-add-Yocto-native-sysroot-dir-to-the-default-Bazel-to.patch
@@ -1,6 +1,6 @@
-From 707ba08068432262b3d02b29804c00afe7133ff6 Mon Sep 17 00:00:00 2001
+From 34c4dc1a10140addf75d3503d4b9f427303fe212 Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Thu, 10 Dec 2020 16:12:51 +0800
+Date: Mon, 14 Dec 2020 16:45:31 +0800
 Subject: [PATCH] add Yocto native sysroot dir to the default Bazel toolchain
 
 While using the default Bazel C++ toolchain to build Yocto native tools
@@ -21,12 +21,12 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  1 file changed, 3 insertions(+)
 
 diff --git a/tools/cpp/unix_cc_configure.bzl b/tools/cpp/unix_cc_configure.bzl
-index 84f5479..e17aa9d 100755
+index d48485b..0d297bf 100755
 --- a/tools/cpp/unix_cc_configure.bzl
 +++ b/tools/cpp/unix_cc_configure.bzl
-@@ -424,6 +424,9 @@ def configure_unix_toolchain(repository_ctx, cpu_value, overriden_tools):
-         ),
-     )
+@@ -443,6 +443,9 @@ def configure_unix_toolchain(repository_ctx, cpu_value, overriden_tools):
+             paths["@bazel_tools//tools/cpp:generate_system_module_map.sh"],
+         ))
  
 +    # Customize for Yocto
 +    builtin_include_directories.append(get_env_var(repository_ctx,"YOCTO_NATIVE_SYSROOT", "NOT_SET_YOCTO_NATIVE_SYSROOT"))
diff --git a/recipes-devtools/bazel/files/0001-python3.patch b/recipes-devtools/bazel/files/0001-python3.patch
index 93eee2d..c14dec7 100644
--- a/recipes-devtools/bazel/files/0001-python3.patch
+++ b/recipes-devtools/bazel/files/0001-python3.patch
@@ -1,6 +1,6 @@
-From e43263d6163f7ba1622b268e93635bf42493f758 Mon Sep 17 00:00:00 2001
+From aa31b751f9b2e5263e4510c8719f29050b8ce0de Mon Sep 17 00:00:00 2001
 From: Hongxu Jia <hongxu.jia@windriver.com>
-Date: Tue, 8 Dec 2020 11:09:44 +0800
+Date: Mon, 14 Dec 2020 16:43:45 +0800
 Subject: [PATCH] set python3 interpreter
 
 Since many distrobution choose python3, and drop python2,
@@ -20,28 +20,28 @@ Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
  2 files changed, 2 insertions(+), 2 deletions(-)
 
 diff --git a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java
-index 2c0ae4d..ae39cc9 100755
+index 9be9ef3..dec19e5 100755
 --- a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java
 +++ b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/BazelPythonSemantics.java
-@@ -237,7 +237,7 @@ public class BazelPythonSemantics implements PythonSemantics {
+@@ -247,7 +247,7 @@ public class BazelPythonSemantics implements PythonSemantics {
          PathFragment shExecutable = ShToolchain.getPathOrError(ruleContext);
          // TODO(#8685): Remove this special-case handling as part of making the proper shebang a
          // property of the Python toolchain configuration.
 -        String pythonExecutableName = OS.getCurrent() == OS.OPENBSD ? "python3" : "python";
 +        String pythonExecutableName = OS.getCurrent() == OS.OPENBSD ? "python3" : "python3";
+         // NOTE: keep the following line intact to support nix builds
+         String pythonShebang = "#!/usr/bin/env " + pythonExecutableName;
          ruleContext.registerAction(
-             new SpawnAction.Builder()
-                 .addInput(zipFile)
 diff --git a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt
-index 59c00e8..31d29a4 100755
+index 29f043f..c83891a 100755
 --- a/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt
 +++ b/src/main/java/com/google/devtools/build/lib/bazel/rules/python/python_stub_template.txt
 @@ -1,4 +1,4 @@
 -#!/usr/bin/env python
 +#!/usr/bin/env python3
  
- from __future__ import absolute_import
- from __future__ import division
+ # This script must retain compatibility with a wide variety of Python versions
+ # since it is run for every py_binary target. Currently we guarantee support
 -- 
 2.18.2
 
-- 
2.21.0

