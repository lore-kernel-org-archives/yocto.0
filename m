Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.5117.1624439721972095437
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Jun 2021 02:15:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=n/NmFbBL;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=18086a9b12=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 15N9ERYv023442
	for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 09:15:20 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2043.outbound.protection.outlook.com [104.47.66.43])
	by mx0a-0064b401.pphosted.com with ESMTP id 39bdsc8v6k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Wed, 23 Jun 2021 09:15:20 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKhlfXIFgH/4CqKYnK8qQ8Xk6zHcENZoMwYzrFoJXSjnMRjU2JVz90urEgSWYCX0Rug9TuhH+XSK2TML+vF6TSBQNcHXyfDURVoeXIuAVSokOV+uCdDuHiVJwVMjraTyUqCTnNVEk1WP26MlRKjVOiTOE1L1+roJdYYlpSeqTfY37yB7rYeN2kWIq2o+znVAYQpLNAJGrTj0ncUpqrA47SFb9JSbOgdJ9Cse7Y/6qp2QFxdujdtRbFBzIQjB3irOJED4r14SFf36GC8WIzl2j1H9CGItL8MtLr9aUV6+PKh1/n9INeuUzbq8NjjoOXPrOPltTzyxkY7IXAwWH+PqdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwLGDFZu5+wbyRmrTyXd7ZB7JVemBCpPL6EH3fLTGn8=;
 b=HL2CZb0SyFDB45Uxa06PbMsw8b2YwQga7sSd8BCFGuhkJ/FNaadK7EhdW+jupjDQlBysf6ndkT1HrKf07q2hm8OUxyd+RUcfdLR0mPjFr5Wovl9ACP0zz0bgax2515fpSjfP9fbsZB+p44fh96XtSIcgDIX03kCEtBmw8dbn6H9HsJHKWGhHuO/GNpohmvzB3eLeBsOG2+nKXpnpUkpwGnfSs2Sx9KwBtfFGKy8eKLNPSV/1x9y5sHxWiZlf6Ve6I52dDp3VZg1+2Fr9V4hdmP1N3/OBHTBvg1F/xQON3A/TucnS+fXiVvKxoI4ovrj2QBXjjG/8fy8BLktIA9Y+nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AwLGDFZu5+wbyRmrTyXd7ZB7JVemBCpPL6EH3fLTGn8=;
 b=n/NmFbBL5a/ioiX1782gP/dFKH0n8Uw0BsOvzker7tUG8iQf67QCeekEZqh50Ljo1l45TPVROskMIMKjALdBeXnpL4nqbzWHj9G5+Q1BWA6UIxb+SHryzZA5JkYw2ZZpGg7k3qOOwWKZ+06Q36d9LWtM0hB84YWUkctEhK0KS1M=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4556.namprd11.prod.outlook.com (2603:10b6:303:5b::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4242.22; Wed, 23 Jun
 2021 09:15:17 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::91f4:8d17:8e0d:a122]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::91f4:8d17:8e0d:a122%8]) with mapi id 15.20.4264.019; Wed, 23 Jun 2021
 09:15:17 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] apparmor: upgrade 3.0 -> 3.0.1
Date: Wed, 23 Jun 2021 17:15:03 +0800
Message-Id: <20210623091504.1283317-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK0PR03CA0102.apcprd03.prod.outlook.com
 (2603:1096:203:b0::18) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0102.apcprd03.prod.outlook.com (2603:1096:203:b0::18) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18 via Frontend Transport; Wed, 23 Jun 2021 09:15:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85808f7e-974f-4ceb-65a7-08d936276a71
X-MS-TrafficTypeDiagnostic: MW3PR11MB4556:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB45563BB4526D2BEC80DB270BF9089@MW3PR11MB4556.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	oR/7XeNt6HL3WMUS4M/gc8O+xwYgB0vmyWUj3xGLn56yir5yOj98r8WId5f2/JarUjMoY9HvO52tmbvMtesSHlef2KaBU59gr4RqC0Sd1T1c/lpbeKR7Py7njxedwrC2h/PI20tUGktZFsmT0G0vnuyfKBc+dlgK3RmgaAbhCU/5+gdTok1SnBdXOGVMmm9xeGh7HYvZWwk52v2zFoOQztoguu+6jY6ss4bp/yFpIBIbJTIlWpCDohgtUvSXuKTgDErQsqIdbsa/kUA+kewfdVjb9aYx46oJkME7WMaXbfix9iSLijCxL7JAN99AoAgi4VtvlqNGZtxYyiOxAHFT+N2NASD8dZ+L+zsjnk+yGzut7Ab5aEI3o2OfKt2/gtIpZSIvYo8yO1x1qU00Fv3YEb243D/CS9o+EVdkBUMueU3iy5ZuORl1j15SakWZiVHUCn+ojbfrqk5JRjl9xFgkJPvwxVbwyyJ96m/tk8NcUJGzpmVba0eWVtM/fO3PvGyG7aJYGZrif244PL4jSTjDaVJIJWZcLAiF3lsiZrzK8Q4lzwWjfHen4yv7E13OWDmrl9v8ppC3jpCMYwFv87inZnMstOMEcjywni1WSqnbcsrX3tyO+4lUhyg78g4+EVyrFp5WUXQBnTVbfR6h/7W/Z+7CkmYucA0yF6owXHSOCDk=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39840400004)(376002)(396003)(366004)(346002)(136003)(66946007)(19627235002)(52116002)(30864003)(2616005)(66556008)(44832011)(6916009)(5660300002)(956004)(66476007)(86362001)(1076003)(478600001)(36756003)(6666004)(6512007)(83380400001)(8676002)(316002)(26005)(2906002)(38350700002)(6506007)(15650500001)(8936002)(38100700002)(16526019)(186003)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?y7/lBLoCreIXVLsJvh+Pi03vNBolxdXlFPQUuJ91gJTbF8NI8iNOoCmWXyt2?=
 =?us-ascii?Q?sVW/M7En3fwgQOnrmvD4iyI3W1V7AGIpRn5ubVn7hd5I/QmIs4nnodkljp7q?=
 =?us-ascii?Q?8vIubJ3f1M3zDDFhT1vdYv26chXMkxX1ghXiF5lh6K3LNx6PYjgCegSEfiI5?=
 =?us-ascii?Q?4qMpYXDIHIZ9FgB/bA6ok/TEc/5d1x1iGdLYWnwPcr0UwveTyqg/8dDkQ75t?=
 =?us-ascii?Q?FcCLr5iebQQuGBVxbdcSY5ETMfk3XGAbasksuoFBa0uPfsdNeGNE4tNkJ/5o?=
 =?us-ascii?Q?v0pVU3KFVOMe6Q8fEwMZ9NdJWchJBkCdzSJ9JLhp+i0nDNMEZiOBcX7r4bF0?=
 =?us-ascii?Q?6RbsmheNbTqIc3U22CEpQvhruaNkSSFHU8BKIoUy31RAKMlosBNLmV99QiRG?=
 =?us-ascii?Q?LV3g1XoF26nQKboUIC/UdIQUoy4eWOfJPamzeJzyJeF3qmax7oz6MSlabCKT?=
 =?us-ascii?Q?5uyU6tfPvWg5sbhvDpyAqnK/egegOQ+6rZTZk2LvzH8Y62qm0pw05w2r1vRE?=
 =?us-ascii?Q?qEjWGt2x+xr6Q9MYPWrIexq83BBUr6Z4EXqMwjHvtxYWnX2ZCk2XtSu1Ldbc?=
 =?us-ascii?Q?Din5NBMKtvk3Gkuk4HjTZhnpGbKixgEilvlbqnRQLVFKG9OJTobQ0YdLR9Xn?=
 =?us-ascii?Q?Vwg+74cAebc/U0YsAw4n86bYTlz02VX6pgR0x/is+65v2B8EPqCp5PK+pLeu?=
 =?us-ascii?Q?coLddwDgfra6TgVsKVBiWjsN9UFkINpRbdvYwtsbE1U92o5/RTXwfLK/5NW1?=
 =?us-ascii?Q?CiU6ySpinADcmBJgjoM8A8qb0H7owfpmes2MBM66HieWAyJ1SWNi9Jb2uaTq?=
 =?us-ascii?Q?uJzfNRQ1X+/OPmlOZFOKf+qz8LznZbbfgCTJ2HYGCUhvBmFoio3moc9R8lrF?=
 =?us-ascii?Q?N9P1keHmiynLNw8/6yfLlkUmUJROWW7/BVoY7EXUghz85YpSrexwaJbrjuEI?=
 =?us-ascii?Q?P3RwnzH+k9z7oZPgQFXBz4jV/qfFO2cszHrhJVbbt0tKvwmAeq4kpTd2+q5d?=
 =?us-ascii?Q?DValREL1qsbNTXi99xNAgiM7syQkepz7Qirdyja9y2vPD2A+9wNaD1URTZgk?=
 =?us-ascii?Q?4kIb9AiLh6YjZc/mNAgI7sg8HN5AzxQt+343bHtmaE1oJ4xuqFdbtQJhP9PG?=
 =?us-ascii?Q?zMLwx2yh69q5xcOhZXr/bUxN7qOZXVoq3+RkfOndjckQrpBAkFN5niZAf/nB?=
 =?us-ascii?Q?nElyqlftX/k0TDIuoe73N6IVpVX9NvhKmc4uo1nItW+7xXLEiyjppUeGWvZQ?=
 =?us-ascii?Q?zL7SgyBPINaeHRt72A+85kLtIXbgc2SjpOwHQekChEtbrPHcwPJnf8QulV3f?=
 =?us-ascii?Q?tQcbEUGsxpSJGPKujkam2H/g?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85808f7e-974f-4ceb-65a7-08d936276a71
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jun 2021 09:15:16.9436
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V1bFDaPNbj5GKPGJH286fS8HkIamFGRMu03ND7mUvUC1e5vLExIgA2Tsm2O+NFISB75EMVNBPNPUglFL7Ibm7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4556
X-Proofpoint-ORIG-GUID: qYKHwTuDRuXYU8oH7OoWIapLL6hejAL7
X-Proofpoint-GUID: qYKHwTuDRuXYU8oH7OoWIapLL6hejAL7
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-06-23_03:2021-06-22,2021-06-23 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999 mlxscore=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 impostorscore=0 phishscore=0
 clxscore=1011 priorityscore=1501 suspectscore=0 adultscore=0 bulkscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2104190000
 definitions=main-2106230055
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Drop backport patches:
  0001-apparmor-fix-manpage-order.patch
  0001-libapparmor-add-missing-include-for-socklen_t.patch
  0002-libapparmor-add-aa_features_new_from_file-to-public-.patch
  0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch
  0001-aa_status-Fix-build-issue-with-musl.patch
  0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../{apparmor_3.0.bb => apparmor_3.0.1.bb}    |  8 +---
 ...Update-make-check-to-select-tools-ba.patch |  2 +-
 ...-aa_status-Fix-build-issue-with-musl.patch | 31 -------------
 .../0001-apparmor-fix-manpage-order.patch     | 43 -------------------
 ...or-add-missing-include-for-socklen_t.patch | 36 ----------------
 ...dont-force-host-cpp-to-detect-reallo.patch | 37 ----------------
 ...aa_features_new_from_file-to-public-.patch | 37 ----------------
 ...-add-_aa_asprintf-to-private-symbols.patch | 34 ---------------
 recipes-mac/AppArmor/files/disable_pdf.patch  | 33 --------------
 9 files changed, 2 insertions(+), 259 deletions(-)
 rename recipes-mac/AppArmor/{apparmor_3.0.bb => apparmor_3.0.1.bb} (92%)
 delete mode 100644 recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch
 delete mode 100644 recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch
 delete mode 100644 recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch
 delete mode 100644 recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch
 delete mode 100644 recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch
 delete mode 100644 recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch
 delete mode 100644 recipes-mac/AppArmor/files/disable_pdf.patch

diff --git a/recipes-mac/AppArmor/apparmor_3.0.bb b/recipes-mac/AppArmor/apparmor_3.0.1.bb
similarity index 92%
rename from recipes-mac/AppArmor/apparmor_3.0.bb
rename to recipes-mac/AppArmor/apparmor_3.0.1.bb
index d9c3e4d..6377683 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.bb
+++ b/recipes-mac/AppArmor/apparmor_3.0.1.bb
@@ -23,16 +23,10 @@ SRC_URI = " \
     file://apparmor.service \
     file://0001-Makefile.am-suppress-perllocal.pod.patch \
     file://run-ptest \
-    file://0001-apparmor-fix-manpage-order.patch \
     file://0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch \
-    file://0001-libapparmor-add-missing-include-for-socklen_t.patch \
-    file://0002-libapparmor-add-aa_features_new_from_file-to-public-.patch \
-    file://0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch \
-    file://0001-aa_status-Fix-build-issue-with-musl.patch \
-    file://0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch \
     "
 
-SRCREV = "5d51483bfecf556183558644dc8958135397a7e2"
+SRCREV = "b0f08aa9d678197b8e3477c2fbff790f50a1de5e"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
diff --git a/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch b/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
index 791437d..e7abd60 100644
--- a/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
+++ b/recipes-mac/AppArmor/files/0001-Revert-profiles-Update-make-check-to-select-tools-ba.patch
@@ -6,7 +6,7 @@ Subject: [PATCH] Revert "profiles: Update 'make check' to select tools based
 
 This reverts commit 6016f931ebf7b61e1358f19453ef262d9d184a4e.
 
-Upstream-Statue: OE specific
+Upstream-Status: Inappropriate [OE specific]
 These changes cause during packaging with perms changing.
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
diff --git a/recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch b/recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch
deleted file mode 100644
index 239562a..0000000
--- a/recipes-mac/AppArmor/files/0001-aa_status-Fix-build-issue-with-musl.patch
+++ /dev/null
@@ -1,31 +0,0 @@
-From 2bf15cc68f31c9f41962bb60a669ab2b453a039b Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Wed, 7 Oct 2020 08:27:11 -0700
-Subject: [PATCH] aa_status: Fix build issue with musl
-
-add limits.h
-
-aa_status.c:269:22: error: 'PATH_MAX' undeclared (first use in this function); did you mean 'AF_MAX'?
-|   269 |    real_exe = calloc(PATH_MAX + 1, sizeof(char));
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
----
- binutils/aa_status.c | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/binutils/aa_status.c b/binutils/aa_status.c
-index 78b03409..41f1954e 100644
---- a/binutils/aa_status.c
-+++ b/binutils/aa_status.c
-@@ -10,6 +10,7 @@
- #include <stdio.h>
- #include <stdlib.h>
- #include <string.h>
-+#include <limits.h>
- #include <sys/types.h>
- #include <sys/stat.h>
- #include <sys/wait.h>
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch b/recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch
deleted file mode 100644
index 9f3dce4..0000000
--- a/recipes-mac/AppArmor/files/0001-apparmor-fix-manpage-order.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-From c9baef0c70122e1be33b627874772e6e9a5d7744 Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster808@gmail.com>
-Date: Fri, 2 Oct 2020 19:43:44 -0700
-Subject: [PATCH] apparmor: fix manpage order
-
-It trys to create a symlink before the man pages are installed.
-
- ln -sf aa-status.8 /(path}/apparmor/3.0-r0/image/usr/share/man/man8/apparmor_status.8
- | ln: failed to create symbolic link '{path}/apparmor/3.0-r0/image/usr/share/man/man8/apparmor_status.8': No such file or directory
-
-Upstream-Status: Pending
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-...
-
-install -d /{path}/apparmor/3.0-r0/image/usr/share/man/man8 ; install -m 644 aa-status.8 /{path}/apparmor/3.0-r0/image/usr/share/man/man8;
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
----
- binutils/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/binutils/Makefile b/binutils/Makefile
-index 99e54875..3f1d0011 100644
---- a/binutils/Makefile
-+++ b/binutils/Makefile
-@@ -156,12 +156,12 @@ install-arch: arch
- 	install -m 755 -d ${SBINDIR}
- 	ln -sf aa-status ${SBINDIR}/apparmor_status
- 	install -m 755 ${SBINTOOLS} ${SBINDIR}
--	ln -sf aa-status.8 ${DESTDIR}/${MANDIR}/man8/apparmor_status.8
- 
- .PHONY: install-indep
- install-indep: indep
- 	$(MAKE) -C po install NAME=${NAME} DESTDIR=${DESTDIR}
- 	$(MAKE) install_manpages DESTDIR=${DESTDIR}
-+	ln -sf aa-status.8 ${DESTDIR}/${MANDIR}/man8/apparmor_status.8
- 
- ifndef VERBOSE
- .SILENT: clean
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch b/recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch
deleted file mode 100644
index 2a56d8b..0000000
--- a/recipes-mac/AppArmor/files/0001-libapparmor-add-missing-include-for-socklen_t.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From 47263a3a74d7973e7a54b17db6aa903701468ffd Mon Sep 17 00:00:00 2001
-From: Patrick Steinhardt <ps@pks.im>
-Date: Sat, 3 Oct 2020 20:37:55 +0200
-Subject: [PATCH] libapparmor: add missing include for `socklen_t`
-
-While `include/sys/apparmor.h` makes use of `socklen_t`, it doesn't
-include the `<sys/socket.h>` header to make its declaration available.
-While this works on systems using glibc via transitive includes, it
-breaks compilation on musl libc.
-
-Fix the issue by including the header.
-
-Signed-off-by: Patrick Steinhardt <ps@pks.im>
-
-Upstream-Status: Backport
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- libraries/libapparmor/include/sys/apparmor.h | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/libraries/libapparmor/include/sys/apparmor.h b/libraries/libapparmor/include/sys/apparmor.h
-index 32892d06..d70eff94 100644
---- a/libraries/libapparmor/include/sys/apparmor.h
-+++ b/libraries/libapparmor/include/sys/apparmor.h
-@@ -21,6 +21,7 @@
- #include <stdbool.h>
- #include <stdint.h>
- #include <unistd.h>
-+#include <sys/socket.h>
- #include <sys/types.h>
- 
- #ifdef __cplusplus
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch b/recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch
deleted file mode 100644
index 9f7ad3c..0000000
--- a/recipes-mac/AppArmor/files/0001-parser-Makefile-dont-force-host-cpp-to-detect-reallo.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From 965bb9c3e464f756b258a7c259a92bce3cde74e7 Mon Sep 17 00:00:00 2001
-From: Armin Kuster <akuster@mvista.com>
-Date: Wed, 7 Oct 2020 20:50:38 -0700
-Subject: [PATCH] parser/Makefile: dont force host cpp to detect reallocarray
-
-In cross build environments, using the hosts cpp gives incorrect
-detection of reallocarray. Change cpp to a variable.
-
-fixes:
-parser_misc.c: In function 'int capable_add_cap(const char*, int, unsigned int, capability_flags)':
-| parser_misc.c:297:37: error: 'reallocarray' was not declared in this scope
-|   297 |   tmp = (struct capability_table *) reallocarray(cap_table, sizeof(struct capability_table), cap_table_size+1);
-
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
-Upstream-Status: Pending
-
----
- parser/Makefile | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/parser/Makefile b/parser/Makefile
-index acef3d77..8250ac45 100644
---- a/parser/Makefile
-+++ b/parser/Makefile
-@@ -54,7 +54,7 @@ endif
- CPPFLAGS += -D_GNU_SOURCE
- 
- STDLIB_INCLUDE:="\#include <stdlib.h>"
--HAVE_REALLOCARRAY:=$(shell echo $(STDLIB_INCLUDE) | cpp ${CPPFLAGS} | grep -q reallocarray && echo true)
-+HAVE_REALLOCARRAY:=$(shell echo $(STDLIB_INCLUDE) | ${CPP} ${CPPFLAGS} | grep -q reallocarray && echo true)
- 
- WARNINGS = -Wall
- CXX_WARNINGS = ${WARNINGS} ${EXTRA_WARNINGS}
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch b/recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch
deleted file mode 100644
index 333f40f..0000000
--- a/recipes-mac/AppArmor/files/0002-libapparmor-add-aa_features_new_from_file-to-public-.patch
+++ /dev/null
@@ -1,37 +0,0 @@
-From c9255a03436e6a91bd4e410601da8d43a341ffc2 Mon Sep 17 00:00:00 2001
-From: Patrick Steinhardt <ps@pks.im>
-Date: Sat, 3 Oct 2020 20:58:45 +0200
-Subject: [PATCH] libapparmor: add `aa_features_new_from_file` to public
- symbols
-
-With AppArmor release 3.0, a new function `aa_features_new_from_file`
-was added, but not added to the list of public symbols. As a result,
-it's not possible to make use of this function when linking against
-libapparmor.so.
-
-Fix the issue by adding it to the symbol map.
-
-Signed-off-by: Patrick Steinhardt <ps@pks.im>
-
-Upstream-Status: Backport
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- libraries/libapparmor/src/libapparmor.map | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/libraries/libapparmor/src/libapparmor.map b/libraries/libapparmor/src/libapparmor.map
-index bbff51f5..1579509a 100644
---- a/libraries/libapparmor/src/libapparmor.map
-+++ b/libraries/libapparmor/src/libapparmor.map
-@@ -117,6 +117,7 @@ APPARMOR_2.13.1 {
- 
- APPARMOR_3.0 {
-   global:
-+	aa_features_new_from_file;
- 	aa_features_write_to_fd;
- 	aa_features_value;
-   local:
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch b/recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch
deleted file mode 100644
index 543c7a1..0000000
--- a/recipes-mac/AppArmor/files/0003-libapparmor-add-_aa_asprintf-to-private-symbols.patch
+++ /dev/null
@@ -1,34 +0,0 @@
-From 9a8fee6bf1c79c261374d928b838b5eb9244ee9b Mon Sep 17 00:00:00 2001
-From: Patrick Steinhardt <ps@pks.im>
-Date: Sat, 3 Oct 2020 21:04:57 +0200
-Subject: [PATCH] libapparmor: add _aa_asprintf to private symbols
-
-While `_aa_asprintf` is supposed to be of private visibility, it's used
-by apparmor_parser and thus required to be visible when linking. This
-commit thus adds it to the list of private symbols to make it available
-for linking in apparmor_parser.
-
-Signed-off-by: Patrick Steinhardt <ps@pks.im>
-
-Upstream-Status: Backport
-Signed-off-by: Armin Kuster <akuster808@gmail.com>
-
----
- libraries/libapparmor/src/libapparmor.map | 1 +
- 1 file changed, 1 insertion(+)
-
-diff --git a/libraries/libapparmor/src/libapparmor.map b/libraries/libapparmor/src/libapparmor.map
-index 1579509a..41e541ac 100644
---- a/libraries/libapparmor/src/libapparmor.map
-+++ b/libraries/libapparmor/src/libapparmor.map
-@@ -127,6 +127,7 @@ APPARMOR_3.0 {
- PRIVATE {
- 	global:
- 		_aa_is_blacklisted;
-+		_aa_asprintf;
- 		_aa_autofree;
- 		_aa_autoclose;
- 		_aa_autofclose;
--- 
-2.17.1
-
diff --git a/recipes-mac/AppArmor/files/disable_pdf.patch b/recipes-mac/AppArmor/files/disable_pdf.patch
deleted file mode 100644
index c6b4bdd..0000000
--- a/recipes-mac/AppArmor/files/disable_pdf.patch
+++ /dev/null
@@ -1,33 +0,0 @@
-Index: apparmor-2.10.95/parser/Makefile
-===================================================================
---- apparmor-2.10.95.orig/parser/Makefile
-+++ apparmor-2.10.95/parser/Makefile
-@@ -139,17 +139,6 @@ export Q VERBOSE BUILD_OUTPUT
- po/${NAME}.pot: ${SRCS} ${HDRS}
- 	$(MAKE) -C po ${NAME}.pot NAME=${NAME} SOURCES="${SRCS} ${HDRS}"
- 
--techdoc.pdf: techdoc.tex
--	timestamp=$(shell date --utc "+%Y%m%d%H%M%S%z" -r $< );\
--	while pdflatex "\def\fixedpdfdate{$$timestamp}\input $<" ${BUILD_OUTPUT} || exit 1 ; \
--		grep -q "Label(s) may have changed" techdoc.log; \
--	do :; done
--
--techdoc/index.html: techdoc.pdf
--	latex2html -show_section_numbers -split 0 -noinfo -nonavigation -noaddress techdoc.tex ${BUILD_OUTPUT}
--
--techdoc.txt: techdoc/index.html
--	w3m -dump $< > $@
- 
- # targets arranged this way so that people who don't want full docs can
- # pick specific targets they want.
-@@ -159,9 +148,7 @@ manpages:	$(MANPAGES)
- 
- htmlmanpages:	$(HTMLMANPAGES)
- 
--pdf:	techdoc.pdf
--
--docs:	manpages htmlmanpages pdf
-+docs:	manpages htmlmanpages 
- 
- indep: docs
- 	$(Q)$(MAKE) -C po all
-- 
2.25.1

