Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDD0CC433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 09:06:41 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web09.2861.1636103200636283042
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 02:06:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=JoA7sl0E;
 spf=pass (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=69438ba20e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1A590n6u013931;
	Fri, 5 Nov 2021 09:06:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=L3odeCdEY9fCYGkzWZra0KC9X4lJWa6ymqkWVXTY/54=;
 b=JoA7sl0ED4/yejlHVFdvRQdvrIGX0MAUBkkbZAul8BwmLwT9SZ98aubSM3lD/d5F5ZHI
 /ZcSYpE3EqWpfCQG0kh5S0/F93ipHUzjbfjQzhWXMKNB7cK/SJNKb8FKN/kCvzNEXpq5
 AH0UjART3JMve+QRBFLsT73lbj3GkS+iA9R2Hf2Hb4pMdCyRptwS6T8QYq2nbwm9fyxF
 cSMxnCgxbJfpH3hOsBNmRWYurC57y8BOFyz23xZ/7ITvE9EqMgeVeR7KAab+zz4pN5Uz
 yjbpNlfrs5OeE2IOPOpVCuPdXI9CTyE0qPIHCplZQZmZZQlzkJrllWKomro4z76S0xX6 0Q==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2107.outbound.protection.outlook.com [104.47.58.107])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3c4t3cr9gy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 05 Nov 2021 09:06:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y5QA0Cm2Gf7f1q4OVw/LEB4IvCzL2xH2v7afWtV1goVgh9Pnr26UDy0c4W+p4hNruLBxJ8y9XbGg1kvaoD+kEiXCVcAhIaoue+SUc8AfB7jWwWcIh90uB+vFvB8zRv4xgLCEUtJeri171XOYWLFrmLUBAoJpfLru4lu8u3y6ZqLqHzJPRt2YWs7KaDVfz5RorihDXD6EegHTaoaVlW4P88FPtixrY2L5vWmU+84xIyGfRzy3Rd3WSxxEmpoykPirZMiqCkTt+IDUpUE6urPK/Xwcu3Jz9Z2V9FXvVdDaGSCuTIl+Odt1gHoxGAhqzb0ZXpnzncV4XL+nPXQay+IYCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L3odeCdEY9fCYGkzWZra0KC9X4lJWa6ymqkWVXTY/54=;
 b=bsSG+x1SHQpPYfU4T3wMPYfyvB948/bNy/7TSIVpZTHcnfH6WeP6tIuNEUrozNGw1v9/vF23SCQhMwBaGikoA976+67dhTDCHTIDAqF1zrgKYjGmsUpSTZxUJrKCVqMCjkH3JvqO4j1cwDebdSvSkvxfD2avfrdELN+FQfl6Dfyx2YWOriDqvurZXBqtk2eQu8f7JZZsmikQ+Oy5ecwe3FmdN/wSCDPjBOSDJr52Apg8NUrXitb0UntLTTLzwBaG/I/2CQBclnlkFajNI6Msa3HPQh2WwAueIUrCLgYZae0nnPFjRXTLnvASr8qpK5eX7aI5otP/EdDPpWZyEvZbZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Fri, 5 Nov
 2021 09:06:37 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4669.013; Fri, 5 Nov 2021
 09:06:37 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH] recipes: update SRC_URI branch and protocols
Date: Fri,  5 Nov 2021 17:06:25 +0800
Message-Id: <20211105090625.574370-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR03CA0049.apcprd03.prod.outlook.com
 (2603:1096:202:17::19) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR03CA0049.apcprd03.prod.outlook.com (2603:1096:202:17::19) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.7 via Frontend
 Transport; Fri, 5 Nov 2021 09:06:36 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51420959-5df4-4626-45a6-08d9a03b928c
X-MS-TrafficTypeDiagnostic: CO1PR11MB4849:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB484971B563B5CDA32D6C9CCAF98E9@CO1PR11MB4849.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:229;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	5qrC85KLAN2nMsDfJafYa6Tebwv4GjhLDNs9/8iWZMMeD7ZLduLVuOBIbiYbeKZtmJnKzpvhBZCNqKXlVOggxtdrflUhQ0Yaaz89c+aUBx13D05IVga7ta+CfBsC2GP8QJcetNlHsXe5M35PIdK3dvlp64qX6NPZ5anpwue1wd+1Be690qknVmXF+4kfKa2qItnfgE/o4HJxC8RGhgp4XOQn8L6DzdwxDpPxfzKIW/j+AR14DHBAV3VDWSD4QR+VC4k8vMrqk2ULq49vqNL3GFN0zkM5TDJkUa+mOBRdFf+ZP1l4RlTm/wIJzTRZAHmaLPLsaR+s9qom9Xy0lHWyKI/cBwd87+CQEOWyJAxFcl8YOggCXaWKoQe1qAD1CROc52y0cjycbFQuFEjjzS4o/tmWFu3Tu7DdwHFRNWr2Ws9YXmkk1NQ3NY5Qu+08aWEW2cwizilhV3jv21AMpyw71BdRw61SdqXdqK78HinxNxr0n7WokFS/+Mb5A5ZXykoLs/YmSdzE65YcB/Pi7AuBopblrWbAv+h33lUgE55od+VDZ3rLXTktuJHl5zmANapJBH7cSyK4GlcrIFrG/TpB/Pw8uZGxYJnIKRdwWAkQ2jnGU1Y5pKvL0k8tr0LoZ/WKAeB7RO35HKESURRPYalFJcjwUxzBl3jtwm2EUrGuVJBRftEz0hxlM0ZLhB7cYG6xNBfQJLQwbgvZPSaxewH+AQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(83380400001)(316002)(38100700002)(6666004)(6486002)(38350700002)(956004)(86362001)(6512007)(66946007)(66556008)(186003)(66476007)(8676002)(2906002)(26005)(6506007)(8936002)(508600001)(44832011)(52116002)(5660300002)(2616005)(15650500001)(36756003)(1076003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?lJbtoXxQYnSnIvpXci1f0wGD7q0I2NTCTsaJnCYqJADhJq0/H/aVkFBZNY3V?=
 =?us-ascii?Q?+VRC6aKl73Q4w3R5IaNoc/j8y8WquK8vIqP0Byfb5FcoZQZ41zAQWCYDJPRV?=
 =?us-ascii?Q?M9CWW0CuhGvpPLqx13TJpBGi9Y0Vyn2/OiH2Uiz4J8/Q+p62NS67v0urzYpp?=
 =?us-ascii?Q?JltfhiWxJI5jOtXz20uANZXg6o/ZWIdTR+RGw39AoiR4bhVJ4VuXGT3qU3mW?=
 =?us-ascii?Q?gXxIjoz90XjQ7a9LeP5ruY9Ozubgebx0+c7ZRHVlVZsE86mgXccCT9bFCxsj?=
 =?us-ascii?Q?lNP9aXaF9UHNgrsKvpY/M8IIRmqp2Yir+WaO1fOzipnf9CgThiMMcMcZmKqU?=
 =?us-ascii?Q?lGu9AB4LmVvRdnpyT9KCtKn8MvA9vb/aou6SzmzabSwrJpTmu5T6BZ3QxnlB?=
 =?us-ascii?Q?BLOjxU5amRNfnLONS0wR3YGgdXZJrkCWnMXW1aj0fufgFd/b29Z7nt0eFzwD?=
 =?us-ascii?Q?bpkBHJjea/hHENac7NM82spsccS1Gr0IbWdEdGhpjRVKSXJQjYITMXqNANsn?=
 =?us-ascii?Q?/v/ff9BIDsB45aOy22cBI65jozNmBGiL575wWXFbv8tYry59FGg+pOZ1JbpF?=
 =?us-ascii?Q?d8J7L7Wz5zjKph7C9jPJk5gbq4OGrnyGNkiBTkRiEAiHb504kUnv0giKSV3L?=
 =?us-ascii?Q?EDoBAPyE2ZPDpT7VmFnTq1KkdsCfxK8cpQMEBCO1hFkGTyO5wckSvL2a8ZwM?=
 =?us-ascii?Q?7heb2597EdMzPC4Z7vnK9s3ILpB+e+U5H6Zia7LzTCGkpCYcAjk02/TyPNnO?=
 =?us-ascii?Q?YsJJDBMM1Q71+ice65D1gsuCagmM+zKuE66OcvgN6clSWPfKqb0TpCBLHfpH?=
 =?us-ascii?Q?QnWagvw7wrE32fmH+Iu7oAsktDgf8tWDb24KHQ8M/evIkxPuuR6VRhsLeFD9?=
 =?us-ascii?Q?oSo/0sHLzz1P71vp4W2I5bf0aAiX3WRdRsl1fMNX+KvrvWxp3tTv4zH1PnvK?=
 =?us-ascii?Q?Vf9iKrGbFwgoYT1zjWPMFI40m4P+lAkiHLsND4gkphPm5qmrtDkh5tE3qsj0?=
 =?us-ascii?Q?sbtLixs/b+nv6qoH6FUILZYp/KLEGRM9xw6OVMvbv6ikOAyQh3NXN3PKfqp9?=
 =?us-ascii?Q?vYzx1wNVZ1KIVEVg/2k6UI5K73WQoH2xsMWPiLa4xhOWLVI8LF0ADYGLhm2q?=
 =?us-ascii?Q?AqLgND4+HwZ/uF064mU3+Qm0JNyJsf8w8/OoNjuGQ3anR+YFuYZaQGx40IPQ?=
 =?us-ascii?Q?7glUfAvGaSnKwIuBLygqm3bIaKX+Rl4tQdHpMZgKf0pE7G/O2zVcBXJ1hW+3?=
 =?us-ascii?Q?VbKHcOIDUU0m3/rRqNBfrjk/VjIGwT0SiJCrfziXDMZfAKZjW21Btsh9L6m9?=
 =?us-ascii?Q?15oOVCXFZtX+BF42XaPzpa6tAOnMJaAEiJydEsDWFwdlOhAIJU7/1g3OwxuK?=
 =?us-ascii?Q?YF/dHkB/DPctD7hA57l3AJ9BK8/xzXlKiLaV3szO4YYyrqZMIUv5+ESYI6VY?=
 =?us-ascii?Q?s1RYNH2YB7umjDU1/Qqrs1gOx0x3HabY9nZUIPwdVM+DqXBgYztrX+OBUeLD?=
 =?us-ascii?Q?ZDG6sM6jtFMCkgggBVYEemHNTU+xWXXAi3V4HnxeOwKvkhgO13+94bysE6w/?=
 =?us-ascii?Q?J5/AGheFgQj5zc7K2XbwaqVA8r81oVy5wpcjV1EXcLO17vHptjukZYUGHHLh?=
 =?us-ascii?Q?qnnvtQtrFIoDk8kG1besqIE=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 51420959-5df4-4626-45a6-08d9a03b928c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2021 09:06:37.3628
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 yHOTWmvbBAQqkyLHpNse7QUpg24x8J01ChWuZlWXpjvQKpcmxoT8xeR5MAiaAq1CAD4FThoXt7yzpEglbyKJIA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
X-Proofpoint-ORIG-GUID: d_GMcDcs2OB2X-la4xp28ffDYFbvaTjK
X-Proofpoint-GUID: d_GMcDcs2OB2X-la4xp28ffDYFbvaTjK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-05_01,2021-11-03_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0
 mlxlogscore=999 malwarescore=0 spamscore=0 impostorscore=0 clxscore=1015
 priorityscore=1501 bulkscore=0 mlxscore=0 suspectscore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111050054
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 09:06:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55245

Update SRC_URIs using git to include branch=master if no branch is set
and also to use protocol=https for github urls.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb | 2 +-
 .../cluster-resource-agents/resource-agents_4.5.0.bb            | 2 +-
 meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb                | 2 +-
 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb    | 2 +-
 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb        | 2 +-
 meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb        | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index 9221f06..acd3149 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=b70d30a00a451e19d7449d7465d02601 \
 DEPENDS = "libxml2 libtool glib-2.0 bzip2 util-linux net-snmp openhpi"
 
 SRC_URI = " \
-    git://github.com/ClusterLabs/${BPN}.git \
+    git://github.com/ClusterLabs/${BPN}.git;branch=master;protocol=https \
     file://0001-don-t-compile-doc-and-Error-Fix.patch \
     file://0001-ribcl.py.in-Warning-Fix.patch \
     file://0001-Update-for-python3.patch \
diff --git a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
index bd906b2..261681c 100644
--- a/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-resource-agents/resource-agents_4.5.0.bb
@@ -14,7 +14,7 @@ LICENSE:${PN}-extra = "GPLv3"
 LICENSE:${PN}-extra-dbg = "GPLv3"
 LICENSE:ldirectord = "GPLv2+"
 
-SRC_URI = "git://github.com/ClusterLabs/resource-agents \
+SRC_URI = "git://github.com/ClusterLabs/resource-agents;branch=master;protocol=https \
            file://01-disable-doc-build.patch \
            file://02-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://03-fix-header-defs-lookup.patch \
diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
index 531a053..43393d8 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
@@ -13,7 +13,7 @@ DEPENDS = "asciidoc-native \
 RDEPENDS:${PN} = "pacemaker python3-lxml python3-parallax gawk bash python3-doctest"
 
 S = "${WORKDIR}/git"
-SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
+SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=master;protocol=https \
            file://tweaks_for_build.patch \
            file://0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch \
           "
diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
index fa38006..7c32c54 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.6.bb
@@ -12,7 +12,7 @@ SECTION = "System Environment/Base"
 LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8ef380476f642c20ebf40fecb0add2ec"
 
-SRC_URI = "git://github.com/markfasheh/ocfs2-tools \
+SRC_URI = "git://github.com/markfasheh/ocfs2-tools;branch=master;protocol=https \
     file://0003-vendor-common-o2cb.ocf-add-new-conf-file.patch \
     file://ocfs2-tools-1.8.5-format-fortify.patch \
     file://no-redhat.patch \
diff --git a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
index c86c282..006ed9b 100644
--- a/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
+++ b/meta-cgl-common/recipes-cgl/pacemaker/pacemaker_2.0.5.bb
@@ -13,7 +13,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=000212f361a81b100d9d0f0435040663"
 
 DEPENDS = "corosync libxslt libxml2 gnutls resource-agents libqb python3-native"
 
-SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
+SRC_URI = "git://github.com/ClusterLabs/${BPN}.git;branch=master;protocol=https \
            file://0001-Fix-python3-usage.patch \
            file://0001-pacemaker-set-OCF_ROOT_DIR-to-libdir-ocf.patch \
            file://volatiles \
diff --git a/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
index 4c7c080..0388afe 100644
--- a/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
+++ b/meta-cgl-common/recipes-cgl/racoon2/racoon2_202003018.bb
@@ -13,7 +13,7 @@ RDEPENDS:${PN} += "perl"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://COPYRIGHT;md5=99a60756441098855c538fe86f859afe"
 
-SRC_URI = "git://github.com/zoulasc/racoon2 \
+SRC_URI = "git://github.com/zoulasc/racoon2;branch=master;protocol=https \
            file://0001-Add-DESTDIR-to-install-commands.patch \
            file://0002-Enable-turning-of-kinkd-and-iked.patch \
            file://0003-Replace-perl_bindir-with-usr-bin-env-perl.patch \
-- 
2.25.1


