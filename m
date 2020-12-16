Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7125.1608124174386095236
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Tyhd4XuJ;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2050.outbound.protection.outlook.com [40.107.93.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 2D11938C0677
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:34 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n0czWnFlHwp6Y8Q6H6KA8TUbGzwtK9ZN4eoZQJLRZf4wjTAykAIRvlEbaZ7h201PFx+BMKl/vVqwDNPmTdlVvL9YwkjkEapGrvN780dUnLNVynemvexj9ccNLiuUOX+/muvx0biLnJ+H91lqufoAA94YkLua8vctBu6DbyEMjmmK4rGfe4CNpI2KXulbq5+IY6DRxCG4+Xkg1DQ1vPu5KIgs+8m9YykNVkiHsbhyq7Q/7yqml6eH91y2lXxH15c9etKwN/xIwsyrnQNWh0I+ziwxnvKyIFhuiXTCn8XhRoWFRbZVcDULO4DZowy9jY2UUxdx3icZzasC2/CurK295Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sj6WxEOCXsqzUDSB6prSXhe21fSHb2l6lGKsde6H1tI=;
 b=Sk8CXi5am8FwW/XZQD1QtAKXoy7vJ4PVEayDM1rq7+p+DtCcRNKWnwG9hYZaEVXINT/EP5doB96vQ2oqWjryu638SSINozu4SPsHlL+/lxYqZwIOfIijkkaMWdGkf0ilYXfz2FOOAUY6M0ZQis1RxjcvBEaAuY2l+V9Fjn3wGH3vriUmfNX2hSLHsg7RiLnPwsPQvODlyCso+Mz1FY3ORCq1gMM/YF5qD6CiO4qdUj7hyTDmBZVSbW6nRlG/sn0Lg0d8CnvHO7vsaCZREPvaQHKpDKVupLv3CTQpQjyxAX82tl+xSXnblWXkb+UPBuFQfa/pv12AVJ1ScSsM6EwdrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sj6WxEOCXsqzUDSB6prSXhe21fSHb2l6lGKsde6H1tI=;
 b=Tyhd4XuJV2ouvPo4xauUISLS5DpE6scNGxQYKAaxlWNGy6IVUeb5+m1jVlPKDCizIuNh34m3mtscnjZZ/XiQQiSPDIcckA32ATNXIIlOofW3IyAZRq3uhUaut2cV2R0fna3x20tGy8hThKOma69IMPAK7YmN9qKNweOS/laDCOk=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:33 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:33 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 21/25] add classes/bazel-base.bbclass and imporve classes/bazel-base.bbclass
Date: Wed, 16 Dec 2020 21:08:18 +0800
Message-Id: <20201216130822.28476-22-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:31 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae9fee55-4a45-4239-e894-08d8a1c3d494
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45779ACDB72E46C2FC3C476194C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:239;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	1qhU01B3zOqarXl4nnqqK6n16XuqC7BlPGP3vvr+OS/BQ+0S3myI2HNnC96zx6LXQnE79Bsd3vyctTddAqNUZNiKxBL5RloBKFjG2eTbbpt3MJ7BLZ92bsNg023Ypqy6qk24aiIVEYepScEy5ZYVBuidsCyyfYV/7K/PIz5n14QB42lD8LWsxffNcfND3xG8h48gAnVq/jYo9TOklvj8Qtcheed/W7F926SJJZKT0ZsdbQnIEmgcrWINWXdURwm4WrsnnfJgKa56fkW3d3Nc0M0AGr5xvhKaF9o1KmUudIjmQ+5yc+DF1Y1PioFM7YkfcdjgXLhBkJlLzluzvQIzJQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?/+svoYH6MePtV3YuUGAa82islei5rJr7QTCd0102q9R4nO4vVnLqKXsFmh8n?=
 =?us-ascii?Q?Bs9rczjNY480q7nYSLyEGbmHWjiIhG6Wj0cK7w/NkupTS2CM/I0KDEjLiaFH?=
 =?us-ascii?Q?hbxCi9iTGyWyXcCC/NK0AA7FlY+mRzqGJpNpcjXX/+8X3TLetJQ+TJ4sdBsJ?=
 =?us-ascii?Q?+6cczsvToGCubLSuIJ/QTMfjGAimIl/gGfTmBhM1f7Nzl6yDxvMoqUrLQoWO?=
 =?us-ascii?Q?JMnTmhoHgqxmH+k5G6/GO2YIjjgl2jDAvCmLF5vwXcU5MmOaJl1ZRvbyre3K?=
 =?us-ascii?Q?WE5gmp4dYAM9++xHpvz9P87JJ82ijPWOM5K0NJQjvEMw8gePVj5dzQQiDIWT?=
 =?us-ascii?Q?0u+wsVXJRSKDHY1xR6gII0W90LUKaYSF2eJVra1S6WiZLqK885R+wxLWXKP6?=
 =?us-ascii?Q?uSx+qpQNwb2b+t1LFC88BeFWEmdojwkXsdnW5DIyza5LZdEvENHimVyqDUkO?=
 =?us-ascii?Q?wTGst4ihT1bo9KGe1Cxr/7XPEe46WCOxs4bGpL2D+QWu5XfzgRL0YITJtd0s?=
 =?us-ascii?Q?IzuUlnyphzeQrN1h0Ny4XTvuVNJoMsjCLekU0vYqsviyPsCbQ9715fzE4oWB?=
 =?us-ascii?Q?UYQAJs42FvoSCWjArXZbQ3nz/nngXYCCwPE0x4diugLc/6zgMChWzjN2R3xQ?=
 =?us-ascii?Q?aFS0Xr3kJnY8praNDCCimYUr5MTpUHJlC3MJ0l5h9+gBbF/Kqezyae7fyi0F?=
 =?us-ascii?Q?Sp74EgFGQ9+YC6VuvBpV4GuM3kTi8t5yLgkPtjRdkLpXvbwBrIptSKtf4mKK?=
 =?us-ascii?Q?/fmG5Pz0B0+jhX5I4kUv3O3PzYwnzRw8qENm0PCY5wZjkAkiP+xfzhRxTjoI?=
 =?us-ascii?Q?VxdYR/3xFPEvgUKQ+3ydkNsfn0CmJFZjWzHgDdLaU4rnc7zFoWzILz6NwLGi?=
 =?us-ascii?Q?IWQ9R8Lk0N+FKz+OGfweXrVQMS2HPKIClW2GbsJ9kaWd50807B587IKQLuak?=
 =?us-ascii?Q?+kkItmxyr5p+rP504sQz2Ydmy+q0PyShpvRvtibtaq46TUGR8ScNEgQvTa6m?=
 =?us-ascii?Q?bzRe?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:32.9079
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: ae9fee55-4a45-4239-e894-08d8a1c3d494
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fAG3M7TgJ1oEtDp5TTJ7uQldoJDsHabrwaM2c6DaQgoA5Wi+JST6m6H52cPviBfnLrSGsL2Ezz/JauzLs6BE4rRY9RigU6b43JdosDXeYbs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

- Move common config settings to bazel-base.bbclass

- Improve bazel_get_flags to make each flag per line with comments

- Use BAZEL_MEM rather than hardcoded for option --local_ram_resources

- Explicitly remove dir ${BAZEL_DIR} before do_clean

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/bazel-base.bbclass                   | 11 +++++
 classes/bazel.bbclass                        | 47 ++++++++++++--------
 recipes-devtools/bazel/bazel-native_3.7.1.bb |  6 +--
 3 files changed, 41 insertions(+), 23 deletions(-)
 create mode 100644 classes/bazel-base.bbclass

diff --git a/classes/bazel-base.bbclass b/classes/bazel-base.bbclass
new file mode 100644
index 0000000..a067733
--- /dev/null
+++ b/classes/bazel-base.bbclass
@@ -0,0 +1,11 @@
+export JAVA_HOME="${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native"
+
+BAZEL_JOBS ??= "4"
+
+# Memory 4GB
+BAZEL_MEM ??= "4096"
+
+TS_DL_DIR ??= "${DL_DIR}"
+
+CCACHE_DISABLE = "1"
+
diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index 3ace2ba..8a3dadf 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -3,6 +3,8 @@ DEPENDS += "bazel-native \
           "
 DEPENDS_append_class-target = " python3"
 
+inherit bazel-base
+
 BAZEL_DIR ?= "${WORKDIR}/bazel"
 BAZEL_OUTPUTBASE_DIR ?= "${BAZEL_DIR}/output_base"
 export BAZEL_ARGS="--output_user_root=${BAZEL_DIR}/user_root \
@@ -11,8 +13,6 @@ export BAZEL_ARGS="--output_user_root=${BAZEL_DIR}/user_root \
                    --batch  \
                   "
 
-export JAVA_HOME="${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native"
-
 BAZEL ?= "${BAZEL_DIR}/bazel"
 
 do_prepare_recipe_sysroot[postfuncs] += "do_install_bazel"
@@ -26,56 +26,64 @@ do_install_bazel() {
 def bazel_get_flags(d):
     flags = ""
     for i in d.getVar("CC").split()[1:]:
-        flags += "--conlyopt=%s --cxxopt=%s --linkopt=%s " % (i, i, i)
+        flags += "# From CC\n"
+        flags += "build --conlyopt=%s --cxxopt=%s --linkopt=%s\n" % (i, i, i)
 
     for i in d.getVar("CFLAGS").split():
         if i == "-g":
             continue
-        flags += "--conlyopt=%s " % i
+        flags += "# From CFLAGS\n"
+        flags += "build --conlyopt=%s\n" % i
 
     for i in d.getVar("BUILD_CFLAGS").split():
-        flags += "--host_conlyopt=%s " % i
+        flags += "# From BUILD_CFLAGS\n"
+        flags += "build --host_conlyopt=%s\n" % i
 
     for i in d.getVar("CXXFLAGS").split():
         if i == "-g":
             continue
-        flags += "--cxxopt=%s " % i
+        flags += "# From CXXFLAGS\n"
+        flags += "build --cxxopt=%s\n" % i
 
     for i in d.getVar("BUILD_CXXFLAGS").split():
-        flags += "--host_cxxopt=%s " % i
+        flags += "# From BUILD_CXXFLAGS\n"
+        flags += "build --host_cxxopt=%s\n" % i
 
     for i in d.getVar("CPPFLAGS").split():
         if i == "-g":
             continue
-        flags += "--conlyopt=%s --cxxopt=%s " % (i, i)
+        flags += "# From CPPFLAGS\n"
+        flags += "build --conlyopt=%s --cxxopt=%s\n" % (i, i)
 
     for i in d.getVar("BUILD_CPPFLAGS").split():
-        flags += "--host_conlyopt=%s --host_cxxopt=%s " % (i, i)
+        flags += "# From BUILD_CPPFLAGS\n"
+        flags += "build --host_conlyopt=%s --host_cxxopt=%s\n" % (i, i)
 
     for i in d.getVar("LDFLAGS").split():
         if i == "-Wl,--as-needed":
             continue
-        flags += "--linkopt=%s " % i
+        flags += "# From LDFLAGS\n"
+        flags += "build --linkopt=%s\n" % i
 
     for i in d.getVar("BUILD_LDFLAGS").split():
         if i == "-Wl,--as-needed":
             continue
-        flags += "--host_linkopt=%s " % i
+        flags += "# From BUILD_LDFLAGS\n"
+        flags += "build --host_linkopt=%s\n" % i
 
     for i in d.getVar("TOOLCHAIN_OPTIONS").split():
         if i == "-Wl,--as-needed":
             continue
-        flags += "--linkopt=%s " % i
+        flags += "# From TOOLCHAIN_OPTIONS\n"
+        flags += "build --linkopt=%s\n" % i
 
     return flags
 
-TS_DL_DIR ??= "${DL_DIR}"
-BAZEL_JOBS ??= "4"
 bazel_do_configure () {
     cat > "${S}/bazelrc" <<-EOF
 build --verbose_failures
 build --spawn_strategy=standalone --genrule_strategy=standalone
-#build --jobs=${BAZEL_JOBS} --local_ram_resources=4096 --local_cpu_resources=${BAZEL_JOBS}
+build --jobs=${BAZEL_JOBS} --local_ram_resources=${BAZEL_MEM} --local_cpu_resources=${BAZEL_JOBS}
 test --verbose_failures --verbose_test_summary
 test --spawn_strategy=standalone --genrule_strategy=standalone
 
@@ -98,8 +106,10 @@ EOF
 
 bazel_do_configure_append_class-target () {
     cat >> "${S}/bazelrc" <<-EOF
-# FLAGS
-build ${@bazel_get_flags(d)}
+# FLAGS begin
+${@bazel_get_flags(d)}
+# FLAGS end
+
 build --linkopt=-Wl,-latomic
 
 EOF
@@ -109,8 +119,6 @@ EOF
 
 EXPORT_FUNCTIONS do_configure
 
-CCACHE_DISABLE = "1"
-
 PSEUDO_IGNORE_PATHS .= ",${WORKDIR}/bazel"
 
 inherit unsupportarch
@@ -125,4 +133,5 @@ clean_bazel() {
             ${BAZEL} clean
         fi
     fi
+    rm ${BAZEL_DIR} -rf
 }
diff --git a/recipes-devtools/bazel/bazel-native_3.7.1.bb b/recipes-devtools/bazel/bazel-native_3.7.1.bb
index a1575d6..03cff37 100644
--- a/recipes-devtools/bazel/bazel-native_3.7.1.bb
+++ b/recipes-devtools/bazel/bazel-native_3.7.1.bb
@@ -25,19 +25,17 @@ DEPENDS = "coreutils-native \
 
 S="${WORKDIR}"
 
-TS_DL_DIR ??= "${DL_DIR}"
+inherit bazel-base
 
-BAZEL_JOBS ??= "4"
 EXTRA_BAZEL_ARGS = " \
     --host_javabase=@local_jdk//:jdk \
     --python_path=python3 \
     --jobs=${BAZEL_JOBS} \
-    --local_ram_resources=4096 \
+    --local_ram_resources=${BAZEL_MEM} \
     --local_cpu_resources=${BAZEL_JOBS} \
 "
 
 do_compile () {
-    export JAVA_HOME="${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native"
     TMPDIR="${TOPDIR}/bazel" \
     VERBOSE=yes \
     EXTRA_BAZEL_ARGS="${EXTRA_BAZEL_ARGS}" \
-- 
2.21.0

