Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7071.1608124147092554855
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=lDZeNGgm;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690054.outbound.protection.outlook.com [40.107.69.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E779538C0731
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:06 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MPhtV+0uV1iqs83OZtvHb8qWWS19HHlO683Mgnqq87onI02toUqO0XDGCTnDwXtsnUQIFnvxCMQw/VyzM+TKK3FsgOjJsB2gDuDet/yXLVXeHV/HGn9HC5Pd2NKF5JjU/u5otNW5FvYGmK59EQxD/3rvMLvUWErRf2iGYlfgQuOpcGxSLVCcnRF9RaTsxWyzhLV5C4nuED/Cv09cu5tzKh/xUD/fm/l+K80BSOUjHiKgwfg393CCEXBfKGRJniSfCYs7//qpGO6LjzSZ628UmHAKQbc9bBKFP29pG1ORd/UvhHgYsirXW7EgSK4F3VpdrX7RCZx+pjimMOLgca8WXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S0qBiDuRPGbbp0CY+MsmLqmEAO7xGgySsnMcOr1h7RY=;
 b=LwHC+qijkJiyJZPX6uVb2/QnmUCVjtSDlWdjKle7z6VFJBQX72+CChInIER5y6MyQ3tS8JBr/p+r09nbhAOl3N4XtwBwotOKSITjviiGbM+G7yorg1TNEs1bx3boWtc0srORIXHTOuEtSeb6TgjX/Suei1RH3zhY/cBy9E3w2iuFfNMSBb2iFLI4rje1m9SzxTLI1PLLidSxjW7Y78WwhGIL2nRa7RC4Uow9ld0bAO3EAiS7kj4JCeJY1kS/R+7KYgEUNeLqCrSsRBnaxlY238uZtgh8G7/GtNF1qUuujXFSRhbs7LKn6X56aKjBZpYYZDZwBxtOBR9ROKavyEQ2aA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=S0qBiDuRPGbbp0CY+MsmLqmEAO7xGgySsnMcOr1h7RY=;
 b=lDZeNGgmN32j3vi4StvigJKcHMTIoDLRlb+DCEaFZkCeMFRbaFKR2AdgYXzzAdXtMR98Z2Qyc8nUpgyg0Gk703UiMN0dlS5ydqbjQF8E/2Gq9rL/5MGqwGyBXEAi7AgY60e9zOahCFv0ZzZaLvm7t5rJU9u7MxrcnAdHlOvqAiI=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:06 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:06 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 10/25] bazel-native/bazel.bbclass: replace deprecated --local_resources
Date: Wed, 16 Dec 2020 21:08:07 +0800
Message-Id: <20201216130822.28476-11-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:04 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2b247476-6126-414c-a23f-08d8a1c3c49d
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45770ACB60C3982FAABABA7E94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:608;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	krr+xYOJ+IL+/zy6zRdiWluyE3hoDKZyDPBjfdifzJ2TPVbwbxHAigAzTUMU+LARFw5LK17DAL4popF8Q3wxOCER0pielaJzMn5Ck7VaLtPcQp/+xf3a15rizRozD342evWKLLbbH6xjRIiRfBg1KmRhknX3ZJVhFMINgD73eRLC2HO4FzM9Cd4DYSADMglsShfno5S1KI+hXrkb/figEHaWHvYBuCFqwH/YC8iYomMUBvvMDHUBUorNzVE0tYnL0odpG1d6atHNoZG/41GHKMGpQdcTYYfLBDWXdpBmVDfy2pf4njeLGqhJzHRQPn5NQExI7KcqOKv20aazcDUmYQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?RH9zzww7rUevOuVay5UJIpZnfJk0bW+OwBH1qWZBItk8eZg8+pQ91Xg9xLsD?=
 =?us-ascii?Q?tAJd0TzjGj8aPaXlpBlVLYoHRgBctWxXoM0LdWsfG9Dn7ZJUxYHQP0LOl/oA?=
 =?us-ascii?Q?3UoBtXqwMWiEBungcURnpGoDf/CunGDw4coIW8eqrcrCvLYnPPYn3hQl3ZTL?=
 =?us-ascii?Q?wuAswgYdtSycjJ+K9s/hdmr+faGed4a16MqtUqsuSBQXrBoljx3LB42f8yog?=
 =?us-ascii?Q?MIs+Tp/OCvtW2fE267pZ9t/xsJR169+lGqbankSawjUr/Tnk650mfll8mqu6?=
 =?us-ascii?Q?dh8XKzpPVfXo9g9IfMM36z6U7HHZjBfrNSw9Na2LDUasR5w+v5GEBkZrfBsY?=
 =?us-ascii?Q?xkF6CpXau37pEMQ1eKdf8wf+ZfhEDK/o+gn0zyyT3nmaIcBM1hAhVbJCCgGQ?=
 =?us-ascii?Q?c+388GLGmJ7hYatJqFEy4Eg13K4Y9/gywCVMyMcBzbcuUOwXJ9Fb/PyCkPZW?=
 =?us-ascii?Q?OCGhonUekGyTEX5fkF5upWnQYyf3cnH7VALqDphCIHXZ25/pVNdwPdQJMvTW?=
 =?us-ascii?Q?zevfGVxhi+Rm07P/wzeihcDjRyO69v4IHTbOzEm4MOnnllJrMAJ4qankzS/A?=
 =?us-ascii?Q?YEiPNVCoKjfy+vaboPc4Yqfenf0D22KOMEDLOK6MJhBicDuQrz7OYS6l0cIU?=
 =?us-ascii?Q?dQyXOo0laTkwR1jxMAQnieCBIGC6Cqeyd6ypowYflFyjYrF2zGVpgsmEyyYI?=
 =?us-ascii?Q?yTceru5rvTDPoYkdfiub4WSD2AkJJpj/rNw8qIfDSKRx7f3nOBBaL81P1xis?=
 =?us-ascii?Q?6xZWw/bCXNvicQlu072/Z+XOul8u8bRzEC9t0mZYype5yk6GZuxTDuKbQHBB?=
 =?us-ascii?Q?TS2/P7tuNGtyc1YmdpjegGoycyvcpp8OF1tyFKhKcYA5/0t7tvTFR46COgfC?=
 =?us-ascii?Q?IZDaWM3Csl+k7ABYbUCcV77wvQqQuG7L1lKe4YVUtuE/ZuEHBVHNZufiMj9p?=
 =?us-ascii?Q?ZgV9MKDGvLw4V+z09hVASaY62qAgQtTyXmXHi5RK7ypVgi15Nqx/WFUgX72J?=
 =?us-ascii?Q?DLw5?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:06.1355
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b247476-6126-414c-a23f-08d8a1c3c49d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PbLy3JeLJVSlIeKScBlyfScP/bwsxW4s/2Mu0uFB4z63doASg4r12zBIlD+40/oC4j6Hgj5nrHWGgL3nzAiOQYoGdo4E6KvEC72QprGc1nw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

1. Use --local_ram_resources and --local_cpu_resources to replace
deprecated --local_resources

2. Add options to bazel-native build

|ERROR: --local_resources is deprecated. Please use --local_ram_resources and/or --local_cpu_resources

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/bazel.bbclass                        |  2 +-
 recipes-devtools/bazel/bazel-native_3.1.0.bb | 12 +++++++++++-
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index b4c2a7f..2a64156 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -75,7 +75,7 @@ bazel_do_configure () {
     cat > "${S}/bazelrc" <<-EOF
 build --verbose_failures
 build --spawn_strategy=standalone --genrule_strategy=standalone
-build --jobs=${BAZEL_JOBS} --local_resources=4096,${BAZEL_JOBS},1.0
+buuld --jobs=${BAZEL_JOBS} --local_ram_resources=4096 --local_cpu_resources=${BAZEL_JOBS}
 test --verbose_failures --verbose_test_summary
 test --spawn_strategy=standalone --genrule_strategy=standalone
 
diff --git a/recipes-devtools/bazel/bazel-native_3.1.0.bb b/recipes-devtools/bazel/bazel-native_3.1.0.bb
index 0555f2f..1336da8 100644
--- a/recipes-devtools/bazel/bazel-native_3.1.0.bb
+++ b/recipes-devtools/bazel/bazel-native_3.1.0.bb
@@ -26,11 +26,21 @@ DEPENDS = "coreutils-native \
 S="${WORKDIR}"
 
 TS_DL_DIR ??= "${DL_DIR}"
+
+BAZEL_JOBS ??= "4"
+EXTRA_BAZEL_ARGS = " \
+    --host_javabase=@local_jdk//:jdk \
+    --python_path=python3 \
+    --jobs=${BAZEL_JOBS} \
+    --local_ram_resources=4096 \
+    --local_cpu_resources=${BAZEL_JOBS} \
+"
+
 do_compile () {
     export JAVA_HOME="${STAGING_LIBDIR_NATIVE}/jvm/openjdk-8-native"
     TMPDIR="${TOPDIR}/bazel" \
     VERBOSE=yes \
-    EXTRA_BAZEL_ARGS="--host_javabase=@local_jdk//:jdk --python_path=python3" \
+    EXTRA_BAZEL_ARGS="${EXTRA_BAZEL_ARGS}" \
     ./compile.sh
 }
 
-- 
2.21.0

