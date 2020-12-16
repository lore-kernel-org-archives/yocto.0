Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.7127.1608124176317780354
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:36 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=OnWj3MSt;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690086.outbound.protection.outlook.com [40.107.69.86])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 29B3A38C063A
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l69hr4xvNDweujA037Ky/71LEA8qChKUJWO37doDHgEBnzJTBPZBXN0hYijaqtwa79X0rXPlNq5n6lSNZ3A+m+TUkLWU6xUMkFhKipMpUu7sGiabZOa/Ii/Ttg8iPSrVBFll6r6+V1lTmAC+ifmnXgqHo9Deznpf61fyUdy++gCxelqjenrWHSF4JjFB9Z0mxbKmeVtjIJS1/8V7wljpgZ6P4mXPVAChEptPfX5TGBVUaq+ZAxOfMOt6VVh4X00KoxPLKRBXNlbV1S+1mfq2qQpmcRF62jWb2PRwUP94lxTiYaP2IFUXURn6DOUkCvIcvxNIDX3pa8EQ5oI8YVDWyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JOu7AGz48EWy7apJbr50yWU/if0p8L4//vtfFww4CHM=;
 b=QAutHnSPT2r0vz3dot7SSRatWK8eF6Z+M0wkKgqOaNrzCM018jle0E98NOFkGq/zBN4KoasT6MSYjBQChyJNV/0fsqd+yscHTgUq7FkTXUU42M1dRjJDC+Wk4hfiWWf8q1Rg8Zq5lOPwvNDcEQ5VCli4xMxGgP/Sd0L1bHnN9ywTsNevPRpAqAwzCOa8SBei5uJRLRkgfrGNq+pUBQWUuocPqrEAafghlo2WE/xCMbM6Cc6kt2SVDaQ280eWQOwHPEB0F+78JgejIEhadO+7j2PQzx08e6+SxfF3r/bcRhbl30B4DFrX8sfzQo7GYn5HV21YySqgnr8gMYohU3PC5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JOu7AGz48EWy7apJbr50yWU/if0p8L4//vtfFww4CHM=;
 b=OnWj3MSt2cMA2ebmHe0iFNTaXVD31wy1wgQ94q6OfzLtaeGjkCM8JpiJtfzWc1Rukf/p6j3vDbHmNbCl6o0M4/5tYEVu1Y5aTEFoE8fbRrdnYY6aRDH24oXNvJ8UmRx60phHuKS9DHJAf7v5nadtDTxD1+HTeQJV6IAB97R7dbE=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:35 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:35 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 22/25] bazel-native/bazel.bbclass: support bazel build without limitation
Date: Wed, 16 Dec 2020 21:08:19 +0800
Message-Id: <20201216130822.28476-23-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:33 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 702d5c75-6be0-4d94-f7d7-08d8a1c3d615
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577F0C911CA28367A2F062794C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:67;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	eAzc6hPIWAuGM/kG09waLLvamqymsXrhVzDlx7+eBSFRx7kOuwcC+f5I+b0qil+x/1bbnzPFKhEPKpfs2hcZ8fidXH/RDHVVo0JiFO8DjxIEECQ40HJz3cO/tNYHsnX4WMjsmaSUDbugxyzwZUjtYniil2jgKgCjtSXu+NlsMGiZ06NyYDrC0mQX7WlbpCWnHsriYybjRzoBihsquEVcJRC7SDAJfqAd+saKNM3GsVolcVH9ooWpLtB3K4XaWrxuvdEkwJ3KPNRdnR6Lzei2QnChfYfmq7NiYnfa8VO2rdsRiEZLLV7ziTKP5VSrYyN7cpypqbF1RtyMR15l6CFzbA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?x7dAKUJU0uYtj9hKlBBgQtaGA0lMZpPrAu5VoSYhFT4hGVYyk/m6zbQRYq2y?=
 =?us-ascii?Q?9pw9E8hJErjoHudK//23J7rXjz8+Ud4yVxUIvnz/KC04RoNPETBAMsrj2zBe?=
 =?us-ascii?Q?bQUZ01WW/0KZDi8IhbVk7VKWXRzqNDrJgkm3RhXDJfoEO1gzobvQPn+F3R4s?=
 =?us-ascii?Q?E/rnKmBcS4R6YoGcwkk09djsLsbgDcQeYKwYdHdiZ7+XEhIhginKtqDYq/zd?=
 =?us-ascii?Q?mSJjuyc6cFpSQPvEn4e3Fr/i+WB36Yj2PFyplnhqnI/IPYf9hdI1CZ+IBfMH?=
 =?us-ascii?Q?S5b/DdWj4uALCtTLIGTzzDfN8T/zzEzxNB6COkbItrD2+Is+9J9CUgGuxWuF?=
 =?us-ascii?Q?vTK3F28ZxAm08reT3L+hiZIKYRQB/AZoL6wp3anXYkSqcsV4Vf+37jCZCWG1?=
 =?us-ascii?Q?BhJOlT2fYlCYMxIDyqMoLx1soi7P245q35lVc0BewhSg7+bi+9yyzgij2iFU?=
 =?us-ascii?Q?FqI5aMm6w+YTMhAK8kTX6RsNZk1ViKOQCeMayc481BM1J60hCVehwHPANwOD?=
 =?us-ascii?Q?x+7pTtETiD5iUsy3JtDXeTOTk/IerD/Tw3RzFXbzLfs2yIKc+mHOtm60IrOP?=
 =?us-ascii?Q?Q4lHo63Y/J6llFcavCl6/kNKDQoZq+1WWKeswohoHEf6itfqVCrmijm2FAjl?=
 =?us-ascii?Q?oMhzb26wn9omaq+RL4SQcKrt58npOoqUO7QQSkB5KEl1Owc4H1xnhRND1kpa?=
 =?us-ascii?Q?EhEC0NFv5SmZEo8N1lGlnMTtc4G+6o4hmh2vz1tqJd9dKxDIpATzjadXe1zL?=
 =?us-ascii?Q?UN9D+maFRwZj3KNJyOzPi4zu8eSJFKQxHg23NIzU4IIg06ZaJjK+upDi/LO9?=
 =?us-ascii?Q?OxAdc/J4eq7SUmojCGKCbMsG01EWAASvrYy5+J8oWETZ6Ch86fXA7qtMphvF?=
 =?us-ascii?Q?IP6we65VHtzEac1zRO589jxai2BQEafM8gGqlG9cfBYUxyxUZpvF4zY2FwU1?=
 =?us-ascii?Q?EID9TM0cA1o9sRbqSS46w2rRBz41f4S9Dhzy6B7nJFj/qNaRCQJuHyCbOv9P?=
 =?us-ascii?Q?iLYV?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:35.4664
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 702d5c75-6be0-4d94-f7d7-08d8a1c3d615
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ym7SnpDqSbGhhx4nzjNgSPzgYijo+ZEBKbefuPW3dLKjHBk/74vq9VHYsl6tV3sa5SRhTuZMXgN7PLC4ZuV/iHWfiwr9M9zoA+tW70uVeNM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Set BAZEL_JOBS and BAZEL_MEM with empty string to make bazel build without
limitation

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/bazel.bbclass                        | 9 ++++++++-
 recipes-devtools/bazel/bazel-native_3.7.1.bb | 6 +++---
 2 files changed, 11 insertions(+), 4 deletions(-)

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index 8a3dadf..f5dc597 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -77,13 +77,20 @@ def bazel_get_flags(d):
         flags += "# From TOOLCHAIN_OPTIONS\n"
         flags += "build --linkopt=%s\n" % i
 
+    if d.getVar("BAZEL_JOBS"):
+        flags += "# From BAZEL_JOBS\n"
+        flags += "build --jobs=%s --local_cpu_resources=%s\n" % (d.getVar("BAZEL_JOBS"), d.getVar("BAZEL_JOBS"))
+
+    if d.getVar("BAZEL_MEM"):
+        flags += "# From BAZEL_MEM\n"
+        flags += "build --local_ram_resources=%s\n" % (d.getVar("BAZEL_MEM"))
+
     return flags
 
 bazel_do_configure () {
     cat > "${S}/bazelrc" <<-EOF
 build --verbose_failures
 build --spawn_strategy=standalone --genrule_strategy=standalone
-build --jobs=${BAZEL_JOBS} --local_ram_resources=${BAZEL_MEM} --local_cpu_resources=${BAZEL_JOBS}
 test --verbose_failures --verbose_test_summary
 test --spawn_strategy=standalone --genrule_strategy=standalone
 
diff --git a/recipes-devtools/bazel/bazel-native_3.7.1.bb b/recipes-devtools/bazel/bazel-native_3.7.1.bb
index 03cff37..4f2e28b 100644
--- a/recipes-devtools/bazel/bazel-native_3.7.1.bb
+++ b/recipes-devtools/bazel/bazel-native_3.7.1.bb
@@ -30,9 +30,9 @@ inherit bazel-base
 EXTRA_BAZEL_ARGS = " \
     --host_javabase=@local_jdk//:jdk \
     --python_path=python3 \
-    --jobs=${BAZEL_JOBS} \
-    --local_ram_resources=${BAZEL_MEM} \
-    --local_cpu_resources=${BAZEL_JOBS} \
+    ${@oe.utils.conditional("BAZEL_JOBS", "", "", "--jobs=${BAZEL_JOBS}", d )} \
+    ${@oe.utils.conditional("BAZEL_JOBS", "", "", "--local_cpu_resources=${BAZEL_JOBS}", d )} \
+    ${@oe.utils.conditional("BAZEL_MEM", "", "", "--local_ram_resources=${BAZEL_MEM}", d )} \
 "
 
 do_compile () {
-- 
2.21.0

