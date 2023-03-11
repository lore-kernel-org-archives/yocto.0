Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D59AC7618B
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:46 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.44233.1678540424724939313
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Q4hkZM5A;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BCu5er008507;
	Sat, 11 Mar 2023 05:13:42 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=qWmx7YYeAqFh21C1FVFbYcx17xa5DYOl61GXFwwMElY=;
 b=Q4hkZM5AAaMT2l3HSWNCaXjxz8dVEWP0bmyGPameD+XAhn/2iWhPyeWIbdwefR/7lfyB
 rKUW28Jt5DNhkKFA3XwbeY3C3ZlJnLKKQSh4BxMMouG4nuBY6udCCElX0d5B7JGvVs6B
 kM4xftkwCnTHadnfr1jNz/oL+PKSbqK2swxu9vDPNKk/PxZCDItxWr688Hutr+5DrRnm
 OyQRJkIFwAczpbr81tvbkrmLohRqrSCTr40fpbp83Q5q6q5bueT1o52Ph+fDVfO+In3i
 gYURQuqJdhz8Le1NOJZ3CJqm/DMiNhsnyNypykTvVOpaHFcfymZMb38tMz1r9bMobHwz 3Q== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8t1r00cr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HRBXb2kSMYTK5ffF/TZ6r28rq//xeiSG88fpugreoPpUpWqiu5b+TS63WpyASYpzKPcMeW3pN5RQYGhStlyK7L59SalPU5NUzQPZ0DKsngGvdydQj6OUWLF9YfWS4a5I4350/b4WIAM+/SH3UkPUvCXIH2aIR4FLweoF7CrfLys2rssocq6vzVdTMb+BZJmduVOXPDjj8xW3pOUliY9V+FMY0gjQ33h91SOrDuX2rM7lT0XOSPcZQ0RYwBEC7OkECMyOH9L2CnIAzFdvhbr63ahW25QT3/P8KPPc7M+fpTxTpOIFxzlsCoKmIGIsph2O3tQaXFZGlws/md0wtjtz6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qWmx7YYeAqFh21C1FVFbYcx17xa5DYOl61GXFwwMElY=;
 b=h+TSnu2Trr+UTE+eiTN5Kj6aHKyKuFifCTCkV2ukvNny2aOR4A/2VIYTvZ9K6G/x+Z6V9jwwLKoLOw30/Z8thaz9iyGdMxKf5as0ZQgLSO978ja1j+jaWEdVvefxgZWwFA9QM95xgrVPObGbzvzhthZ0IhH3jP6FpjitIIfh/zyZJ8qi+9HqwKSTF1ALtvhCC1rBRfaK8w7SWMqnDnnIy2AHSf1jILI7tHqJggJ7e3nqFoRK8UFCwSeAsaVIhM/zhy0gtVXgPWpxQJ4fX0hiXrABxqKIREjSR+DNLXkrd6LesKZM4Vg2WW2c3w8/Q6CP4at3CuZDzGDVY/qBVy+pXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:40 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:40 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 10/17] policycoreutils: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:01 +0800
Message-Id: <20230311131308.1337339-10-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 1520fb7f-4442-4cfd-8934-08db22326eba
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	9YjhLz6aZfU4HFW/oXAcuw/V4AJq10LcUikOyb2kynN4oPIMiD2YRJuwG98RJB4K5rfrbwm40K8xpUiHzVoUhY2XB2A/njXLaBhlTKvYBz1kjx+cLp761aEt6InRc96dTgYZJ5KXcFxuYYSur9V/6KZayu0g2jzB0cQaG6N0uAHPy2MgaGT1XBYhNJloJBNh3DRSTjNH+0WAnAySYrO6G3MAcHwaaP1WEGKYZ+l+v3Zo5KhErV92R3Vt2/32DQmQXyQJEx4FANHDSXiyfYpzQHM/Vq8JCM57dYDJfgpWgkiR31617fDsnOCgwI9aAm2xZnkYv00OIDq+9xUk5EroF2c1Yeffn/U9+qALVEX2WHrmPCno17xHeryCsaaBm/Qj2OeLUF5ELGnmLj6nipapjbARIHvjDn5i4sHNMkHANqspm+YeNFPFnwGmbRSp/K1VEQx7ykXkX+VgirHa2VL01Gsja0goYRbFQclk+jeNDdlJQzcxQhl3IHaXvBWLtqc+TjUbzZ+Gc1oTvqT8Dk/oOUQlOzX87/km4ruQULx1+HbSxy5orsfxFeMcLH41nhpdZcDOTpCnDsiSQyvVcqN03XPaiE1A2+XWmo1chdbXZlUDphXg2204F7Dbx81ujx9wUKqd/TVIvmK2/8pbdh8K3HtFQ9oVAhhbE6v+iAqDdvhPhF5jzCa+3TE11LGZt5blytj4znbfvikjP7GWLQnI3w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(53546011)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/AxyH3KY5gvgYEYKU8qcphqljEFbUUl3lmyGUf+CyegaJ+XPMmIhGQj45+/L?=
 =?us-ascii?Q?UnpdD4YBUyS7CqtK1+R2Pq1v1QVuwSMOpnxe7zS6vNNVomqiTIshZpjrqsEt?=
 =?us-ascii?Q?EakrnbfEfYpwZGSGDPzhuqCIO9j7jvXp7lllG9JlDR1AyWu1IatCgu6kSWR5?=
 =?us-ascii?Q?86/4Lj0UmQJgi+ZLQ4c1eiZCPcI46WQ3oP3pQ1KPs7ISovwzroM+QNmkEtpz?=
 =?us-ascii?Q?5P2YoEts3CkdSPtc+D2MQ+DekWGgUo/QX4xMBTf95UJtiIN+A9QKX0kyuIw+?=
 =?us-ascii?Q?B8l4uqWO+OmbTvR8TmEB+zFfc+4BWO9gA+ZkKmHHh+vZoAK+AzsR9XDPedNq?=
 =?us-ascii?Q?v8TTbsMCwHiwJKLkITCGqei1SY3xWvWWKgq+W2IManNLncSJy4kGSu87UJu0?=
 =?us-ascii?Q?NHLWt9zB2kBbDUhvof5el6qcVcWSHkSetoNufc/r4ymnp6AkLBUcLPdPE0px?=
 =?us-ascii?Q?wB0/92XQwI4ytOJjL7W4RikEX9HICNjswsYzntnCgd/LeG+a5Lcc6UojwQLX?=
 =?us-ascii?Q?IucSMIYjINUN6rYzZiA1YIv9W2M+0BkBjKo4Ie/kw8TTUT7CViySLl8/GipG?=
 =?us-ascii?Q?D7opweU7vRK+uSRT+iYSg8FC/Cxl8Lyi8c2KZC0loA9TrBPQaHcmAZ21XGP+?=
 =?us-ascii?Q?ykHfiQVycnM8H2w1raaJQHFG7rhWgTMr1C3KzS60rymPDqKwSykauOiBYuW8?=
 =?us-ascii?Q?CqnM1P6MQ6pZKAE5Lw3OS4U68MG5rqG4avsTgQXawdR7C1VkCwFME5CJ/p8I?=
 =?us-ascii?Q?kHpQvFo6+qwStE2ehtrcAcdUvjRw0zs3ToPCqNtM1k/HBCmrBG1dLlUk1IjZ?=
 =?us-ascii?Q?rJ4v6IYCTM49J02V6YUjuL3XOPKp2vGrd8nO6l4j3KfCOIBv9EQDSg3Dc5pR?=
 =?us-ascii?Q?BhnGEqvzz9Tkeh5a6jnbQ/M+eLHSSkxEGoeSFAteIBo1ouGIfc/fV1b/xmH5?=
 =?us-ascii?Q?E+++f+Lo1qhdo3N/QVLdUQcJLeGjy7qwQP4vnIpV4s2zX1A8KghDrFqkJaJ7?=
 =?us-ascii?Q?ti3AibL+eofpa7jy/Td+YGuY4xALZtMIjVuNySeYz0mhExoGWNGmLDPlJO0N?=
 =?us-ascii?Q?yQVMHRvVGnScpf/gAaWu18yWY+1Tf8ikVkeM5qsrUNrgpJfnd1U+eOaejQPp?=
 =?us-ascii?Q?a3xzUjWUDTmD3nxnslnzyA+IXsAHpEvi2Wrpmd+UTI6nOg0c9PJ62pF+21ob?=
 =?us-ascii?Q?oii3CaEhKHH5D1CMQn1jhhbG5siGCphPzSuKMsh1/2UAumE172d96zKvzzq1?=
 =?us-ascii?Q?7LIdthebOXf6Ts4jwj+J7pMsE6iROFX+A5ETfYnyJschUSVUw4riTVBenL5d?=
 =?us-ascii?Q?Z7XY+Q6kQltnRM+gK/kYShEEIUkXbuZ0tZk37Ovk15EaJF5OtRhjSruUyvbh?=
 =?us-ascii?Q?NkQCDRaecwr04EBuWEz4oioYV2Zg4pqmkwJ9VANskYw52noP+LWlqaxphPqN?=
 =?us-ascii?Q?j/ppeDG1Qd9QLW5W7GclHdzRw/vY5/SOtgyg6xrJ8N3UUC09K57ZV8nv8rHb?=
 =?us-ascii?Q?66RLJKA1uuKBS3nRCMJIdSqVNegcjCGO8LyVZMp2VoIU71lh9fO4XgNUpUFk?=
 =?us-ascii?Q?onZ5zCCyk8KgReaZYYL8hmGfbAFe1A9KdhbK2M/ZwfSVic0bAzxe8OceRIgC?=
 =?us-ascii?Q?hw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1520fb7f-4442-4cfd-8934-08db22326eba
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:40.6828
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l3iVwNKrMCxPnW1uZ3QM9x7mNnwI0T2iuWHGwoZjRZPEcsCeGic2m3fHDPBZb8OWZFlLpaZo7Q1lyG2d+ClTog==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: Ts1ThmivRppY441qyMqWJ0_GLLBj9IpS
X-Proofpoint-GUID: Ts1ThmivRppY441qyMqWJ0_GLLBj9IpS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 mlxlogscore=827
 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59393

License-Update: Rename COPYING to LICENSE. No content changes.

* Refresh patch.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../policycoreutils-fixfiles-de-bashify.patch             | 8 ++++----
 .../{policycoreutils_3.4.bb => policycoreutils_3.5.bb}    | 4 ++--
 2 files changed, 6 insertions(+), 6 deletions(-)
 rename recipes-security/selinux/{policycoreutils_3.4.bb => policycoreutils_3.5.bb} (97%)

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
index 0e80959..5dcb5e4 100644
--- a/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fixfiles-de-bashify.patch
@@ -1,4 +1,4 @@
-From cdc8f6e887d9ab8944e3ae89dd18bf55edf080c4 Mon Sep 17 00:00:00 2001
+From 624d6231ca9daf494e33352d562ff97cb0219f2d Mon Sep 17 00:00:00 2001
 From: Joe MacDonald <joe_macdonald@mentor.com>
 Date: Fri, 20 Feb 2015 17:00:19 -0500
 Subject: [PATCH] fixfiles: de-bashify
@@ -19,7 +19,7 @@ Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
  1 file changed, 14 insertions(+), 9 deletions(-)
 
 diff --git a/scripts/fixfiles b/scripts/fixfiles
-index c72ca0e..143cc2e 100755
+index 166af6f..a23cdc6 100755
 --- a/scripts/fixfiles
 +++ b/scripts/fixfiles
 @@ -1,4 +1,4 @@
@@ -74,8 +74,8 @@ index c72ca0e..143cc2e 100755
 +    fi
  }
  
- #
-@@ -295,7 +300,7 @@ relabel() {
+ # unmount tmp bind mount before exit
+@@ -315,7 +320,7 @@ relabel() {
  	exit 1
      fi
  
diff --git a/recipes-security/selinux/policycoreutils_3.4.bb b/recipes-security/selinux/policycoreutils_3.5.bb
similarity index 97%
rename from recipes-security/selinux/policycoreutils_3.4.bb
rename to recipes-security/selinux/policycoreutils_3.5.bb
index ab871a3..c106ee7 100644
--- a/recipes-security/selinux/policycoreutils_3.4.bb
+++ b/recipes-security/selinux/policycoreutils_3.5.bb
@@ -6,7 +6,7 @@ to switch roles, and run_init to run /etc/init.d scripts in the proper \
 context."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
@@ -136,7 +136,7 @@ do_compile:prepend() {
     export PYLIBVER='python${PYTHON_BASEVERSION}'
     export PYTHON_CPPFLAGS="-I${STAGING_INCDIR}/${PYLIBVER}"
     export PYTHON_LDFLAGS="${STAGING_LIBDIR}/lib${PYLIBVER}.so"
-    export PYTHON_SITE_PKG="${libdir}/${PYLIBVER}/site-packages"
+    export PYTHON_SITE_PKG="${PYTHON_SITEPACKAGES_DIR}"
 }
 
 do_compile:class-native() {
-- 
2.25.1


