Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7110.1608124142930497399
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=AKcnmJw9;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690085.outbound.protection.outlook.com [40.107.69.85])
	by mail.yoctoproject.org (Postfix) with ESMTPS id AA29738C06F7
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:02 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGNkHgVVWcmC+6ViSg0jym8mmXdgHGV8leYFCVG6CwWErGlGjm77bdyGFaYm7ZcmS+GSkHexzhikMMfVe42uNTbqS/VX0nMtTWDwY/+RFL/VIAugwP1PNffNvG4t5r9x9qt155kh3Z9dpwf4sMrsfawndeC83eO0lhrwJjduiVIK7vXExrBJWwT9NWKXzEHMlWiwl9vI2bflGLEZpqpEX5922j13VMm8UULgIfg+FxR3y+furtkclZlgdDlX7zme8Tp+asNTAd0iEmKv1Thtu8bMdhZRMCpzADxFxxXqkeUmSFmbhC35AV2fGFkKhDNno3vpeqj4scbVHcRqIAFG1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pik7gnQ2FYYMNMBmT6gAQAwogDko/as+zwrAAh+BTrk=;
 b=OJ/qYDoYgZSx5RMbi6HLAXAnz8Tg7kFzIAHIWj2WfjLAFn/HApct1/ecRPtjMBtZKr3uCSBl0U6E0MjMgxe2NCbwWCQEYa+h7MOhoc5t85Kk9nDc8t4nZi/6DcN86ihqeQ4RnfSDVcf4zEiFMRtsrKWQDIzIag99b7OqkrCjXcwM/ZPyLxU96ye2y5+uCLeRQeSJ2zOGK0ndyqHVCs0Mnm6wFn7GUGouuhdI8vTSUr31BYBzQmHX3hMa43o9YuZm84Tv+WzBbvL4cLkvYec34Deh6qUnKjxv0V02hq7Eg3GEFKNnnHBNJ7Q5y7V2J5U8lCzAXkfyJaJvoGzOf9E/1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pik7gnQ2FYYMNMBmT6gAQAwogDko/as+zwrAAh+BTrk=;
 b=AKcnmJw9+LN2jUqw8yDomo3HWRQcxLy1fr5REo1xrIvSYq0e/Tpu9zT/Gbm2qSD+13wAo/3lf6yGs11+AEiIbUd1d5FOTlwHeTDIlDUDpokk4+IN/Wzc4ogoKLyqOiz4Cg1obWWMD1I1icNUHAXJ/XwQs5PCMOjLtXU/ENd3zlA=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:01 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:01 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 8/25] tensorflow-estimator: 1.13 -> 2.4
Date: Wed, 16 Dec 2020 21:08:05 +0800
Message-Id: <20201216130822.28476-9-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:08:59 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ec6c2197-5c27-4be6-d803-08d8a1c3c1f8
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577AC7505C49B477BDD9A9C94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:765;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	0qygdFlSth+mwZxNsaIcc9DGEOk5zBQY3PTIvUZXLlnNb0XsgCHd9w+ef5f6KeRJt/F/lDMUOEZYcbEGu4f9Q6BrR2HwLqiJ4fUZMyQFDDHWdkpA4qHHUDBgJ7btWch3DGqdKXVrbuajtKq+C7KP3b7+MTLS8o+wRdHAEsg0TI38onoG66XLX3/CLG4SHFzHzEBgd9u5AULBRh9yyrcSoQbVLDznCe4BZl60yi00D6RNDRsrkRw6klH4pdXQKrocW06t8T42T9/bbRK7A88+g7AmROe+pL0C+JVUz9HBrvuwKcm7z19V4+MGBv/Sj8rtFPz1YbCBGFNDaSovB3tH4w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?HQ8WChZVwICFlzQP8ydLFxv2MwU6JIQBYzvUmqrwqoVWRZoDdLkEN2KxdjuT?=
 =?us-ascii?Q?4qNm/m0YGFMf6i5qS0GHGsFIk0hTuEMZ+uUFKpBAQg1+bi5Ja67G5OaXzlxM?=
 =?us-ascii?Q?+2eRZpd0gK3entz2SD3gZ3mJ3nlFw0ydQUiwxVfcwIVlmgpqbIIEa8RAAAZY?=
 =?us-ascii?Q?G40o4QNcINGp8IggwbrNiAZH1NlS66e2CiKE+do6K3uxHrC91eGXpejCGmf5?=
 =?us-ascii?Q?XfX0n5GLf4ml4sHQSyz9CwllN+SKVUkbThUM+6PkQh60tqDNTkXKArnoiPcY?=
 =?us-ascii?Q?7eEntr0SvoQIX4aDG5l9K0tk0m26vG1R/gUFb2tVL3ivYhOR45MyQf2H12V3?=
 =?us-ascii?Q?k4tz7i/3vmg+3ICMZHFvixOcsGGfuTWo1yEcH+9fO2c6KC5u3K3AQnqCpjCw?=
 =?us-ascii?Q?U8Pb9OXRAevvHf8ir9FdFC/ctiAFdfum/cNk1gCcO8PwSCkuH7mpJcjAfd4h?=
 =?us-ascii?Q?hh3u0mSESLBI4ZTlZvVr2gkGyhYeKPaBmYG/OthgxbSqMkjOHTkw/aF5Am++?=
 =?us-ascii?Q?7ZUc020fqVNhISGP4TFLppAjV3o6ok5wXSPlPyvCEiJdfkNVzeDm/ALfF4K2?=
 =?us-ascii?Q?Oy+tWzIDXN9zkHLiTto8EbyHaEHoYoaqVRXCOPzLkuVvSRuGTYnp+TdwQTDU?=
 =?us-ascii?Q?ZV9hATqB4TymiDL2KZyvG43LhmRgm2ITMm27rV3idHSVXJh0LN8hVO4VkIvF?=
 =?us-ascii?Q?zgutAos+onCjcwMkRnzf7fb0qdSre/s/9hXx1735lyvjhhhuTI2nlumG1/1T?=
 =?us-ascii?Q?qvUMAI48S8nPgcoRBF4eJQTgzCj9XqEqIw0Pqd5/wU6UH+zMFD0xjbepe4kZ?=
 =?us-ascii?Q?7gfV4luiGdUfV0jx+PCh4a6BMCPkdGeN3C6GLJQYNWyrfCN/RijdDvU4btzI?=
 =?us-ascii?Q?URGCUVTHm+iD5653hEvvRi1DM592B66QvSUy6l4L5283FN73k9SeqlUT1Zd3?=
 =?us-ascii?Q?ZgqZHKhNKcuzR5uiM4qmK7wSw+RLfZXQlKRHiHH0g4HXzN06+3S07UbahkXI?=
 =?us-ascii?Q?WTL8?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:01.7371
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: ec6c2197-5c27-4be6-d803-08d8a1c3c1f8
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yOim1L5C0rgtdGu76KDOZVn/5XuBnXYV+F2n4gfVA6MdRA6j9VgW7cMoZerooVyMxw4ZptO5bbwd7vrmVRwP80X2JcerqscxkOKkBgphcek=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 .../0001-customize-for-yocto.patch            | 28 +++++++++++++++++++
 .../tensorflow/tensorflow-estimator_1.13.bb   | 12 ++++++--
 2 files changed, 37 insertions(+), 3 deletions(-)
 create mode 100644 recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch

diff --git a/recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch b/recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch
new file mode 100644
index 0000000..e9b66d5
--- /dev/null
+++ b/recipes-framework/tensorflow/tensorflow-estimator/0001-customize-for-yocto.patch
@@ -0,0 +1,28 @@
+From a1bcf09a43fc44ad5e04c441ee45cc23d16cf7d2 Mon Sep 17 00:00:00 2001
+From: Hongxu Jia <hongxu.jia@windriver.com>
+Date: Wed, 9 Dec 2020 17:59:01 +0800
+Subject: [PATCH] customize for yocto
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
+---
+ tensorflow_estimator/tools/pip_package/build_pip_package.sh | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/tensorflow_estimator/tools/pip_package/build_pip_package.sh b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
+index d4953a6..e08cd8a 100755
+--- a/tensorflow_estimator/tools/pip_package/build_pip_package.sh
++++ b/tensorflow_estimator/tools/pip_package/build_pip_package.sh
+@@ -38,7 +38,7 @@ function prepare_src() {
+ 
+   # Verifies all expected files are in pip.
+   # Creates init files in all directory in pip.
+-  python tensorflow_estimator/tools/pip_package/create_pip_helper.py --pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tensorflow_estimator"
++  nativepython3 tensorflow_estimator/tools/pip_package/create_pip_helper.py --pip-root "${TMPDIR}/tensorflow_estimator/" --bazel-root "./tensorflow_estimator"
+ }
+ 
+ function build_wheel() {
+-- 
+2.18.2
+
diff --git a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
index f3a5098..5b2fe5d 100644
--- a/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
+++ b/recipes-framework/tensorflow/tensorflow-estimator_1.13.bb
@@ -3,9 +3,10 @@ learning programming."
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=01e86893010a1b87e69a213faa753ebd"
 
-SRC_URI = "git://github.com/tensorflow/estimator.git;branch=r1.13 \
+SRC_URI = "git://github.com/tensorflow/estimator.git;branch=r2.4 \
+           file://0001-customize-for-yocto.patch \
           "
-SRCREV = "340703eed78ba4854862f749ed94f91598826e79"
+SRCREV = "c3e7f2b5bbcc35185ef71797955a28cadce28f60"
 S = "${WORKDIR}/git"
 
 inherit python3native bazel
@@ -19,12 +20,18 @@ DEPENDS += " \
     python3-astor-native \
     python3-gast-native \
     python3-termcolor-native \
+    python3-wrapt-native \
+    python3-opt-einsum-native \
+    python3-astunparse-native \
+    flatbuffers-native \
     tensorflow-native \
 "
 
 do_compile () {
     unset CC
     export TMPDIR="${WORKDIR}"
+    export PYTHON_BIN_PATH="${PYTHON}"
+
     ${BAZEL} build \
         --subcommands --explain=${T}/explain.log \
         --verbose_explanations --verbose_failures \
@@ -32,7 +39,6 @@ do_compile () {
         --python_path="${PYTHON}" \
         //tensorflow_estimator/tools/pip_package:build_pip_package
 
-    PYTHON_BIN_PATH="${PYTHON}" \
     ${S}/bazel-bin/tensorflow_estimator/tools/pip_package/build_pip_package \
         ${WORKDIR}/estimator_pip
 }
-- 
2.21.0

