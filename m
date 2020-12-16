Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.6922.1608124154724780161
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ik1liCF4;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2040.outbound.protection.outlook.com [40.107.93.40])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 922C738C085B
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:14 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SAgIz4Ro0ZDxyGlNuOk9OcATcs2b9QRIDnVnlpKTX4mpxE1GnJ2OYQ99FRrEY+fa6Gqe5c7VmDT7x+zzE5HKaAn8TbQRZvrqcfRsQZO4AXY4x7Ljn5eGNK44biGs0lzNPsMmJXe6iKXOd9p8mcbwbyL5XFEYF6O8fPcY3F7hSnhit2wyJGiPuiBSS5dNnEhNblgJHRSWoMSL0HxR0QZob3ESnuB/S5xhCU+7qN8q7W76jvhk5hsRaIuo/JwTRm4P+h+doct/DBcA1gYUfvs9hMeqWm+ITW1NHyD6Y8yUAgX9Dq9P7NOo11FN2X+r2LPvWH5sLGbw9NIp+yDTu2WgxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xWAlyuDw8Wn8Bwi2b/TI6tU+JHwAyyyHngPMaxJ0z6w=;
 b=cQkjQ1GeLa5K/T7ERWFQFX14QcVzql6WcRuv09Cn8tq8sjzEenwVQeDcCVICpom8W1RAyYhPslg2h4+2A2zQOETG+CoFA2jvjwxpEtJ+WfulPeNFeVD9w2ske1WyCay5HEFU1+jNBnJRmAZmEtj/GqvKaMDMkGdleei/IwVDp91R+MzimtBmefX4zt5Vvz2WMrAyMXyVcPv3R6qiPPHv+Lrj3VdIGE7UQWqb0xFHpUiJp9uHEoxoRtPNhNWFQ50ODKYbD35NPb8Bs/y7E6qyCrHkFSwGryeMxb7lKJcB75aUV3+67uRPeIcTTu6a+tkpilRm8dz4kxRwZem26Ln8kQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xWAlyuDw8Wn8Bwi2b/TI6tU+JHwAyyyHngPMaxJ0z6w=;
 b=ik1liCF4aB9GzKeMd/WWJx8Tnw5pv6CWPH0btRKn57X3C3sgDHxTBZ9+uw9mZdyLb1J9B2B5vBaxrny+YMarrhk0fwTcYQBK0s83hc2qTGCv2DX0kATA35dZyo2UN34weS8MQPEx65keNFSR0J9GH76ptqJ7QCVLtsPnzz87exY=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:13 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:13 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 13/25] classes/bazel.bbclass: clean up bazel files before do_clean
Date: Wed, 16 Dec 2020 21:08:10 +0800
Message-Id: <20201216130822.28476-14-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6ee1fd2c-4ba7-48cf-70b3-08d8a1c3c91f
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB45772ABC15164FD5D792840B94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:346;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/A5icrQSR0uKxESbTus/B3lVqgUvdrvKd+1EJiczt2ipqW/Qaaj2JZNT0fvZ7dMLszkW1K5U4FttELmcK+s7u3fafzciudVrjWYf37GUPtO78fw0PNHtzIJv2zq8Dn0LAAJvQfHpJE5FWCgcFynIDK77wALNC3rpMROVwNNVFKk+A8jbBs1Qz7TS+cLZMKkOpz/dWIkX4CVFUGqIr2ei3UL3jb2XM5IZ+2E6h/vA4TF7eWvxt/m0c0FdyiJbgJVyRc/gWTf4s8+6VuRpnnOEPlfcV5OtchZgrZVzAm9j+QZTl3wobBZJAzaewUrM6KYE4Snhl3jAYbVzgylbUXfKTA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?aOYjy5s/F7cYZn3U0knH7ssuBb7fLxNjZsI3421GeueIf/2XHYtYB4bnMd+p?=
 =?us-ascii?Q?Z4e0tDMSe8l2MpvIH9u4LJTCKtGMMCdR24QmsGo//NScSfLRaSDMLo47m0Gw?=
 =?us-ascii?Q?KdATKWr9vPHRW+k1OwJcZZxXvpiTBWiBlPXzKKLDeP9F9PzVPRRAOMx5+5Wa?=
 =?us-ascii?Q?gsgUJ9GZ2PUqPyYYCTWpxzLZuXE9mHxT6hCtzZOSdvIR37V8cmWM8IY0hDGM?=
 =?us-ascii?Q?IxLPomu1PmwE/AcgJZEqr0C+jPiYGabw6LB1Y3gyuN6zWk4DMODYD+9f8OrU?=
 =?us-ascii?Q?6FKyWRbLT32kZZ6VjxRsY6y16A9ycpcOEB0B49RVRuKMcct0An2DDsUnMAa5?=
 =?us-ascii?Q?6+Bg0ISWuF/MVXtpDI4I9sIpAjRy7RG7PorCwkjxmShBh245X17pzhJPLa0X?=
 =?us-ascii?Q?dB5qQf37PgGNBwUySrfjyBwIqf1a+UaAMe6A0BEvbvduxq75SButopPTBjuG?=
 =?us-ascii?Q?dQe/KekJ6QjNqOWvEh4duo9HLZMFs8qFSF6zYSP+gQvVnyVVGaI0G2UGpDWb?=
 =?us-ascii?Q?z1QHcOjuzC/G+2MRWFfW6ucgyZRkDb9oEJiRA5BMU4CKCfbm0BkIZFxkPKbs?=
 =?us-ascii?Q?K1Wa4qJstEzOouUAXfkxWI1atDvM71kJP+yF2xLzWZ/nC9xCP4o994RySWUh?=
 =?us-ascii?Q?FK+chm8dt9H32SOLXWosSyaUhXQk8IH64WtvWT3Csv5KBEoFV0BBtuyANP27?=
 =?us-ascii?Q?xHE2bt8yBcywFE4Y4cJ+DVWK5xsXRwQmjV/12vkFtd+vrEGzOjCxDASFjCek?=
 =?us-ascii?Q?9LNBoulWPbEng0zuq/EPibrjSShvJlVasQ+MnPaxBY+WHCNFUSttHWLs6saH?=
 =?us-ascii?Q?UzRw6f+6XRjUgWHNYhtar9WAHf0w5MPExOGlN+lwbMMGUXAqCl/u+imPI1AN?=
 =?us-ascii?Q?TEmQ6y9TFPzXsoifP04ZXa7gq/RBjinJrpbzF4vBlUeasDmwmZEeiqaB9VqH?=
 =?us-ascii?Q?ehOiQfFKIZUkZnLsuvcFK1QAps6PwqH9tJj1QA9gvfYPn+SyOnSpkWDAtgTH?=
 =?us-ascii?Q?qcTT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:13.7131
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ee1fd2c-4ba7-48cf-70b3-08d8a1c3c91f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tNCO1TCAXcMCs1pFVzaNGKRhSbe9A3HbTDyNZzeC1Qx3fUVUtFBlW2/PTm4JIod6sW/EDyinZ2PeuTjv49eYdz3pu3a3pO7mdR6snw5wnkQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 classes/bazel.bbclass | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/classes/bazel.bbclass b/classes/bazel.bbclass
index 5a76244..3ace2ba 100644
--- a/classes/bazel.bbclass
+++ b/classes/bazel.bbclass
@@ -75,7 +75,7 @@ bazel_do_configure () {
     cat > "${S}/bazelrc" <<-EOF
 build --verbose_failures
 build --spawn_strategy=standalone --genrule_strategy=standalone
-build --jobs=${BAZEL_JOBS} --local_ram_resources=4096 --local_cpu_resources=${BAZEL_JOBS}
+#build --jobs=${BAZEL_JOBS} --local_ram_resources=4096 --local_cpu_resources=${BAZEL_JOBS}
 test --verbose_failures --verbose_test_summary
 test --spawn_strategy=standalone --genrule_strategy=standalone
 
@@ -116,3 +116,13 @@ PSEUDO_IGNORE_PATHS .= ",${WORKDIR}/bazel"
 inherit unsupportarch
 
 export YOCTO_NATIVE_SYSROOT="${BAZEL_OUTPUTBASE_DIR}/external/yocto_compiler/recipe-sysroot-native"
+
+do_clean[prefuncs] += "clean_bazel"
+clean_bazel() {
+    if [ -d ${S} ]; then
+        cd ${S}
+        if [ -e ${BAZEL} ] && [ -e ${S}/bazelrc ]; then
+            ${BAZEL} clean
+        fi
+    fi
+}
-- 
2.21.0

