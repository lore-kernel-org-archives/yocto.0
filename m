Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.1807.1628234027153861884
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 Aug 2021 00:13:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=TwmBLfrq;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=3852e488c3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 1766kce5009481
	for <yocto@lists.yoctoproject.org>; Fri, 6 Aug 2021 00:13:47 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=AZhbT5yu+BunDBEiH+sYc7x8AGmOfmK1tqk7XcO3WK4=;
 b=TwmBLfrqO7p33SPXZ8Ztt6fk+sOHDrYZ/ZYQUylMx1KElIZcBCEVhIaNuQJfm4FH3cQy
 CNIXDuUnignYPJ+OWjbeN6FagjbYbj/yGt+gK6DjJYBLK1HypYiBjUKqGxBRdJUy9JBC
 LsVqmR6OXxrajOfAMisAOmPqB/ToVjbBpY+3Ya50jmRNHOlASxY+FOAEuy/V/KqgOubO
 rfDuSBp1IvKC5Qv+OehoL9adgjxv6u86dazyBMpxlCwk0zNohUMLkVnmbSqpedDn+Ly5
 BIZVUZClwSAwUe0hlFk4zjKDBJdbcw3NRhPxdACC06l3yJHNQxEfFDmf4cGqlJXXpa0w aw== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2108.outbound.protection.outlook.com [104.47.58.108])
	by mx0a-0064b401.pphosted.com with ESMTP id 3a8ke0gfex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 06 Aug 2021 00:13:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KK+BmmiGsRPFDlkbdQbJFl1kQAn6lnNpsWMf31Nu3LHiis096hXrCYzeovtkbjuRU6da1XS/J1sZgAttq6gakNiY31qlyFCrEKD/VsNcL3EdpaqLo33H91zTWpQ902dEies6JdEG7vsXgFfaLrXUrpJBw+3vFEVC6CrkqdF3uvT0Tc/MxLq6mBZoALtJzPWkvcy3dRQtYbYP3/YEYynwesdlfE+7sMoKvhk9KtW4SMyckQizpexiKgiuAUf5DceSqj0c4b10LdDSeLTm2a/cwCQNRyYRiaouIoYXQrbOBfTmJEpd4XpS7T9pdv8GGGUqFBBCUYB8urmBLf7+cttdmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AZhbT5yu+BunDBEiH+sYc7x8AGmOfmK1tqk7XcO3WK4=;
 b=UvXDR+oB1FytstII0SbkVy8Iapo702f95cDbFiw/YDBF/NLcJ/JZjDmAgzst5c2KYv5lsZMmNH1G6aMrHOrbMAeoAP5pLVhbDCQixT0MjSiykfUA8yLmwH5SMmmMnt8Wj1QqqMqT6lZqyI2eQc6Y2uysg2pfKfvMeoRf7HFgLHopm030kZCsHH9fcCERxXGkUJ538/VJxS4UNig/MK70YTYEWGqpBCFHiDFfysDo6yBmw3f98jINsaNu6e2g0o1YGZNI32pzWrlelKxM0/1g5Tz/8QZmAqF/AFd/7epg915+pi8r6JcZIQjinEA1+ZWUC1FB+XPQhsZ5lsRZZ31nBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1421.namprd11.prod.outlook.com (2603:10b6:300:24::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.17; Fri, 6 Aug
 2021 07:13:44 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4394.019; Fri, 6 Aug 2021
 07:13:44 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: jason.wessel@windriver.com, yocto@lists.yoctoproject.org
Subject: [meta-openssl102-fips][PATCH 3/3] meta-openssl102-fips: convert to new override syntax
Date: Fri,  6 Aug 2021 15:13:29 +0800
Message-Id: <20210806071329.414087-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210806071329.414087-1-yi.zhao@windriver.com>
References: <20210806071329.414087-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0109.apcprd03.prod.outlook.com
 (2603:1096:203:b0::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0109.apcprd03.prod.outlook.com (2603:1096:203:b0::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.16 via Frontend Transport; Fri, 6 Aug 2021 07:13:43 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 58041d3b-156d-432c-be9e-08d958a9ba11
X-MS-TrafficTypeDiagnostic: MWHPR11MB1421:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1421A1D0E39B178AD1148706F9F39@MWHPR11MB1421.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	KWxY0oOIn4SWEOmPF9TTRQ6A6RAaYVpJJhni/XXK964TIden2HM5og9hFKGxTnMWW++JkasT/WimbVAlF7wVDFV4Dop/YRYw+DgCEYRdMMCmGDEsIbguEb7n3yP/RDr3ctvYtu+jt5MCzt7aMFeAL57gdHgK4USN9qRVeBzCnp4EeN3r2v7cXmIXC8BUcxAs9U22/2jlEIYr82qqW/jcKPL+lBC3F8om8w+CT9s785fdei3xZCFuhaQZHsVJasc93In42wCTwnWl8YC1W+YZ2E22835oG8PpVTI4cTjtJN+UTmz0g9PBXfsP/OO9THozeM3LCsxDrbmejo1DwZRo76TNrOTDaNroQuH0gMUVhD+kBanig9Nnk2Pg1KDxRw9TczrLkXXujDd9t6gP76qqJB8YQPc2o0ewMwu0aePzBdXqEoICCsTgnxA22ZXiI8bacljG7xD9JAhj7PvKUwT0kKFY0dAknzuOchxboC6Zp/ZGIA9Zgzcvqrb6N9lLZT9YuaJVA+Hm05PZGYoCdyVrcEfxtdcwEISXs+TqHlKiHtn69gLqN8WNEd3TMW8gJ8FsQcZgBDyvINOTRS3aWm1D1kz+8Tdd7kvv1xfTla8iEC7pd/txAgSysObgz1XYk8NNY+LDyJLPjoy4TVefk91wsU304c6EftL1AlSJIZb+vF+r9DImwegQ+4a5lvurnhPR3q0IRvk9lMyrZhoxBDuAsw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(366004)(136003)(39850400004)(376002)(346002)(52116002)(956004)(26005)(8676002)(186003)(8936002)(83380400001)(316002)(478600001)(44832011)(2616005)(6506007)(38350700002)(38100700002)(1076003)(36756003)(6512007)(6486002)(30864003)(66556008)(5660300002)(66476007)(66946007)(86362001)(2906002)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?GjWuYopEiTvORg574qeNhWQmW9mHr49E1b8RCCbgL1/NvqvHhYutv3svZc/X?=
 =?us-ascii?Q?2R60anUGB9QTG8c1gIYH+tP1Aj4nHJwbJoKWI/IkqLWtSPX8TaheXXpHgbC5?=
 =?us-ascii?Q?zFaBRd+at43dZr3EvziO3ewIzmDctx7dHt+BFsmXTHl4HHMk8bdLbPzHab1r?=
 =?us-ascii?Q?CMAWZ1GWx8vJXmKn3IWooGdjp5X5YfwggPPLPCkNehjXlcB7cWHB3xbIT4kJ?=
 =?us-ascii?Q?NV4Io0bJOOFRFtlJ0C+glUEVCUwB741OdrfMeEFNQVOzcsd+be+XI/zypJ+U?=
 =?us-ascii?Q?Ym3an0GiYB3eOMXzwbgjIXmvEpm63tt2G6EsJbAcKq0irWtkDnDmIq7XjVaP?=
 =?us-ascii?Q?kozkIj1cFKVraRZ2TB7GH8f7HJRWs9fkOyxOzBqImAweo5veq79Znb/i/sjo?=
 =?us-ascii?Q?hbj+i0il2qB2MjGatfaT82XWm3nQigLuKt6G69J7N4luL7JZBfwyXJOp3/y5?=
 =?us-ascii?Q?uIiXtoNFzI5p+FaDd4v7x/8WlBZyrxR8XFG0/p4zmfbQ6H2Bp5CEKyj5s6/T?=
 =?us-ascii?Q?rV2g3sYFx/WR1B3zLWxFq/F4Z9UOKLK7MSEh7uritnoiga/OlgWeEuDzqN5y?=
 =?us-ascii?Q?MgkQB63qB6n95zkWc0a4H+TKX/4ag54+DGMXGzU6eK2hKycHLqnSEb1YZVcZ?=
 =?us-ascii?Q?2MjJxFyX8oOp06zjVa8Au8pbwTTaygqz1aVOQ1eSY1KzJfqWvf3fbJyZNr6+?=
 =?us-ascii?Q?lOEDWxoVld+eYH7rh8W30aVIthUhcfzOEoyZZrDV4Uqae7Bsz2j2ZwbSh71K?=
 =?us-ascii?Q?W3U+Jq7UXRW+DFD9DhH4jqXT8/1zWD8ex407U8fCQ/A12AkiDBPYYFCQLKlg?=
 =?us-ascii?Q?P8mWeo/+5RvNRzOXn6OWUzK/sIOKHj1gvn6Q9E1FqWaX7r4jZ1sL3EBIIo9x?=
 =?us-ascii?Q?pHO6XimrmCz+UjQ9D+eH0YRQkfOU4gz2D2GWOl9nzjuALO6HgeTVVUFZ3FkP?=
 =?us-ascii?Q?47bKDu1SbZOxCH+M6V7L0sFjkuV10Hv0dfbziLqKufkbbWq6FTx41cNy1u1B?=
 =?us-ascii?Q?zqlrh3nznZXEGmYeusl1myPJQVh3qgomRkjuxqmPN5jiphpQWVs/ioE7RvJI?=
 =?us-ascii?Q?bf3swvUX/xNpGxzifAn3FAwq06RyPzqObUWbc7e7hbXQ/i8CBk88agHapYEv?=
 =?us-ascii?Q?z1/S0oV6Nykll5y2wg8j/iVic7IkjE1axeeVX4EBjkaUPcYKnu9CSPK0txg8?=
 =?us-ascii?Q?XgiFuSlrf9x/pbnEaYI/a5o9ZvEW1vLbOuGdwdPmgI0BhyQeSUNWVqdUWxWt?=
 =?us-ascii?Q?VEuU9Ws6h0junwAXGy0ngnXnOnD46U8N60HfUuJmLxMJZ0lVUI/ytASKTq8q?=
 =?us-ascii?Q?R84zYvCz23//JFoxfqbeA9p4?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58041d3b-156d-432c-be9e-08d958a9ba11
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2021 07:13:44.6776
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LYwnWNkxbn0LAp7cdur47QYY+oMeo8Y+f2mpV5eGDdpl6r963TO0mPSON/QN+pg7fH+gdKIajAhfUSoxPycN/Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1421
X-Proofpoint-ORIG-GUID: ik6jazD266hSqCbh82_vM9-6kz9O-v6W
X-Proofpoint-GUID: ik6jazD266hSqCbh82_vM9-6kz9O-v6W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-06_02,2021-08-05_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 phishscore=0 mlxscore=0 mlxlogscore=999 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2107140000 definitions=main-2108060049
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This is the result of automated script conversion:
poky/scripts/contrib/convert-overrides.py meta-openssl102-fips

Converting the metadata to use ":" as the override character instead of "_".

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 README.build                                     |  8 ++++----
 README.openssh_cavstest                          |  2 +-
 classes/fips_kernel.bbclass                      |  4 ++--
 classes/image-enable-fips.bbclass                |  2 +-
 conf/layer.conf                                  |  4 ++--
 .../openssh/openssh_8.%.bbappend                 |  2 +-
 recipes-connectivity/openssh/openssh_fips.inc    | 16 ++++++++--------
 .../openssl/openssl-fips-example_2.0.16.bb       |  6 +++---
 .../openssl/openssl-fips_2.0.16.bb               |  6 +++---
 .../openssl/openssl_1.0.2%.bbappend              |  2 +-
 recipes-connectivity/openssl/openssl_fips.inc    |  8 ++++----
 recipes-support/fipscheck/fipscheck_1.5.0.bb     |  6 +++---
 recipes-support/rng-tools/rng-tools_6.%.bbappend |  2 +-
 recipes-support/rng-tools/rng-tools_fips.inc     |  2 +-
 14 files changed, 35 insertions(+), 35 deletions(-)

diff --git a/README.build b/README.build
index 36e3875..b675686 100644
--- a/README.build
+++ b/README.build
@@ -44,7 +44,7 @@ to image [3]
 [2] git://git.yoctoproject.org/meta-openssl102
     Manually set 1.0.2% to openssl preferred version
     echo "PREFERRED_VERSION_openssl = '1.0.2%'" >> conf/local.conf
-[3] echo "IMAGE_INSTALL_append = ' packagegroup-core-buildessential'" >> conf/local.conf
+[3] echo "IMAGE_INSTALL:append = ' packagegroup-core-buildessential'" >> conf/local.conf
 
 The easiest way to do this with Wind River Linux is include:
 
@@ -56,7 +56,7 @@ Additionally you will need a way to get the openssl-fips module source to
 the target for the build.  Adding ssh/scp is recommended, to add these
 add the following to your local.conf file:
 
-    IMAGE_INSTALL_append = " openssh-ssh openssh-scp"
+    IMAGE_INSTALL:append = " openssh-ssh openssh-scp"
 
 If you are building with configurations that have security software enabled,
 such as SE Linux, you may be required to boot in a non-enforcing mode to
@@ -132,7 +132,7 @@ Building Steps (based on section 4 of the UsersGuide-2.0.pdf):
     prebuilt tar archive.
 
     For Yocto, in your build directory, edit conf/local.conf, add:
-      IMAGE_INSTALL_append = " openssl-fips-dev"
+      IMAGE_INSTALL:append = " openssl-fips-dev"
       OPENSSL_FIPS_ENABLED = "1"
       OPENSSL_FIPS_PREBUILT = "<path>"
 
@@ -230,7 +230,7 @@ program, and embed the fingerprint.
 
 On host:
 edit local.conf to add openssl-fips-example to image
-$ echo 'IMAGE_INSTALL_append = " openssl-fips-example"' >> conf/local.conf
+$ echo 'IMAGE_INSTALL:append = " openssl-fips-example"' >> conf/local.conf
 $ bitbake <image>
 
 On target:
diff --git a/README.openssh_cavstest b/README.openssh_cavstest
index 2c31209..975a782 100644
--- a/README.openssh_cavstest
+++ b/README.openssh_cavstest
@@ -1,5 +1,5 @@
 1. Install openssh-cavs to images
-$ echo "IMAGE_INSTALL_append = ' openssh-cavs'" >> conf/local.conf
+$ echo "IMAGE_INSTALL:append = ' openssh-cavs'" >> conf/local.conf
 $ bitbake <image>
 
 2. Run tests on target
diff --git a/classes/fips_kernel.bbclass b/classes/fips_kernel.bbclass
index 064088f..1a2525d 100644
--- a/classes/fips_kernel.bbclass
+++ b/classes/fips_kernel.bbclass
@@ -1,4 +1,4 @@
-FILESEXTRAPATHS_prepend := "${LAYER_PATH_meta-openssl-one-zero-two-fips}/recipes-kernel/linux/files/:"
-SRC_URI_append = " \
+FILESEXTRAPATHS:prepend := "${LAYER_PATH_meta-openssl-one-zero-two-fips}/recipes-kernel/linux/files/:"
+SRC_URI:append = " \
     file://crypto_fips.scc \
 "
diff --git a/classes/image-enable-fips.bbclass b/classes/image-enable-fips.bbclass
index fcb5a40..5792883 100644
--- a/classes/image-enable-fips.bbclass
+++ b/classes/image-enable-fips.bbclass
@@ -1,4 +1,4 @@
-ROOTFS_POSTPROCESS_COMMAND_append = " enable_system_fips;"
+ROOTFS_POSTPROCESS_COMMAND:append = " enable_system_fips;"
 
 enable_system_fips() {
     install -d ${IMAGE_ROOTFS}${sysconfdir}
diff --git a/conf/layer.conf b/conf/layer.conf
index fc1dcbd..e9ac874 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -18,8 +18,8 @@ LAYERDEPENDS_meta-openssl-one-zero-two-fips = " \
         meta-openssl-one-zero-two \
 "
 
-IMAGE_CLASSES_append = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else ' image-enable-fips'}"
+IMAGE_CLASSES:append = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else ' image-enable-fips'}"
 
 LAYER_PATH_meta-openssl-one-zero-two-fips = "${LAYERDIR}"
 
-KERNEL_CLASSES_append = " ${@bb.utils.contains('OPENSSL_FIPS_ENABLED', '1', ' fips_kernel', '',d)}"
+KERNEL_CLASSES:append = " ${@bb.utils.contains('OPENSSL_FIPS_ENABLED', '1', ' fips_kernel', '',d)}"
diff --git a/recipes-connectivity/openssh/openssh_8.%.bbappend b/recipes-connectivity/openssh/openssh_8.%.bbappend
index 07799f6..a2e3aca 100644
--- a/recipes-connectivity/openssh/openssh_8.%.bbappend
+++ b/recipes-connectivity/openssh/openssh_8.%.bbappend
@@ -1,4 +1,4 @@
 FIPSINC = ""
-FIPSINC_class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'openssh_fips.inc'}"
+FIPSINC:class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'openssh_fips.inc'}"
 
 require ${FIPSINC}
diff --git a/recipes-connectivity/openssh/openssh_fips.inc b/recipes-connectivity/openssh/openssh_fips.inc
index efba8db..b13e06e 100644
--- a/recipes-connectivity/openssh/openssh_fips.inc
+++ b/recipes-connectivity/openssh/openssh_fips.inc
@@ -1,9 +1,9 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/openssh:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/openssh:"
 DEPENDS += " \
     openssl-fips \
     fipscheck \
 "
-RRECOMMENDS_${PN}-sshd_remove = "rng-tools"
+RRECOMMENDS:${PN}-sshd:remove = "rng-tools"
 
 SRC_URI += " \
     file://0001-openssh-8.6p1-fips.patch \
@@ -14,13 +14,13 @@ SRC_URI += " \
     file://0001-ssh-cavs-set-kex-sessin_id-via-sshbuf_put.patch \
 "
 
-do_install_append() {
+do_install:append() {
     install -d ${D}${libdir}/fipscheck
 }
 
 inherit qemu
 
-pkg_postinst_append_${PN}-ssh () {
+pkg_postinst:append:${PN}-ssh () {
     if [ -n "$D" ]; then
         if ${@bb.utils.contains('MACHINE_FEATURES', 'qemu-usermode', 'true','false', d)}; then
             ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
@@ -33,7 +33,7 @@ pkg_postinst_append_${PN}-ssh () {
     fi
 }
 
-pkg_postinst_append_${PN}-sshd () {
+pkg_postinst:append:${PN}-sshd () {
     if [ -n "$D" ]; then
         if ${@bb.utils.contains('MACHINE_FEATURES', 'qemu-usermode', 'true','false', d)}; then
             ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
@@ -47,10 +47,10 @@ pkg_postinst_append_${PN}-sshd () {
 }
 
 PACKAGES =+ "${PN}-cavs"
-SUMMARY_${PN}-cavs = "CAVS tests for FIPS validation"
-FILES_${PN}-cavs = " \
+SUMMARY:${PN}-cavs = "CAVS tests for FIPS validation"
+FILES:${PN}-cavs = " \
     ${libexecdir}/ctr-cavstest \
     ${libexecdir}/ssh-cavs \
     ${libexecdir}/ssh-cavs_driver.pl"
 
-FILES_${PN} += "${libdir}/fipscheck"
+FILES:${PN} += "${libdir}/fipscheck"
diff --git a/recipes-connectivity/openssl/openssl-fips-example_2.0.16.bb b/recipes-connectivity/openssl/openssl-fips-example_2.0.16.bb
index 1a720cd..c6d069f 100644
--- a/recipes-connectivity/openssl/openssl-fips-example_2.0.16.bb
+++ b/recipes-connectivity/openssl/openssl-fips-example_2.0.16.bb
@@ -19,14 +19,14 @@ DEPENDS = " \
    openssl \
 "
 
-RDEPENDS_${PN} = " \
+RDEPENDS:${PN} = " \
    openssl-fips-dev \
    openssl-dev \
    openssl-staticdev \
    packagegroup-core-buildessential \
 "
 
-FILES_${PN} += "${libdir}/ssl/fips-2.0/test"
+FILES:${PN} += "${libdir}/ssl/fips-2.0/test"
 
 do_configure[noexec] = "1"
 
@@ -47,7 +47,7 @@ do_install() {
     sed -i "s:@LIBDIR@:${libdir}:g" ${D}/${libdir}/ssl/fips-2.0/test/Makefile
 }
 
-INSANE_SKIP_${PN} += "dev-deps"
+INSANE_SKIP:${PN} += "dev-deps"
 
 python __anonymous() {
     if d.getVar("OPENSSL_FIPS_ENABLED", True) != "1":
diff --git a/recipes-connectivity/openssl/openssl-fips_2.0.16.bb b/recipes-connectivity/openssl/openssl-fips_2.0.16.bb
index b7cb34b..7a2949a 100644
--- a/recipes-connectivity/openssl/openssl-fips_2.0.16.bb
+++ b/recipes-connectivity/openssl/openssl-fips_2.0.16.bb
@@ -11,7 +11,7 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=f9a8f968107345e0b75aa8c2ecaa7ec8"
 # Set "OPENSSL_FIPS_PREBUILT" to the location of the prebuilt
 # openssl-fips-TARGET_ARCH-install.tar.bz2 files.
 #
-FILESEXTRAPATHS_prepend := "${OPENSSL_FIPS_PREBUILT}:"
+FILESEXTRAPATHS:prepend := "${OPENSSL_FIPS_PREBUILT}:"
 
 PREBUILT_OPENSSL_FIPS = "openssl-fips-${PV}-${TARGET_ARCH}-install.tar.bz2"
 
@@ -20,8 +20,8 @@ SRC_URI = "file://${PREBUILT_OPENSSL_FIPS} \
 "
 S = "${WORKDIR}"
 
-RDEPENDS_${PN}-dev = ""
-FILES_${PN}-dev += "${bindir}/fipsld ${libdir}/ssl/fips-2.0"
+RDEPENDS:${PN}-dev = ""
+FILES:${PN}-dev += "${bindir}/fipsld ${libdir}/ssl/fips-2.0"
 
 INHIBIT_PACKAGE_DEBUG_SPLIT = '1'
 INHIBIT_PACKAGE_STRIP = '1'
diff --git a/recipes-connectivity/openssl/openssl_1.0.2%.bbappend b/recipes-connectivity/openssl/openssl_1.0.2%.bbappend
index 517f1c2..41a7302 100644
--- a/recipes-connectivity/openssl/openssl_1.0.2%.bbappend
+++ b/recipes-connectivity/openssl/openssl_1.0.2%.bbappend
@@ -1,4 +1,4 @@
 FIPSINC = ""
-FIPSINC_class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'openssl_fips.inc'}"
+FIPSINC:class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'openssl_fips.inc'}"
 
 require ${FIPSINC}
diff --git a/recipes-connectivity/openssl/openssl_fips.inc b/recipes-connectivity/openssl/openssl_fips.inc
index 5480096..9ae23cd 100644
--- a/recipes-connectivity/openssl/openssl_fips.inc
+++ b/recipes-connectivity/openssl/openssl_fips.inc
@@ -1,11 +1,11 @@
-PACKAGECONFIG_append = " fips"
+PACKAGECONFIG:append = " fips"
 
 PACKAGECONFIG[fips] = "fips --with-fipsdir=${STAGING_DIR_TARGET}${libdir}/ssl/fips-2.0,,openssl-fips,,"
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/openssl:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/openssl:"
 
 # This adds the necessary symbols if fips is enabled.
-SRC_URI_append = " file://openssl-fips-version.patch \
+SRC_URI:append = " file://openssl-fips-version.patch \
                    file://0001-make-fips_premain_dso-support-cross-compiling.patch \
 "
 
@@ -14,7 +14,7 @@ DEPENDS += "qemu-native"
 inherit qemu
 
 # We need to run the special fips_premain_dso under QEMU
-do_compile_prepend() {
+do_compile:prepend() {
     qemu_binary="${@qemu_wrapper_cmdline(d, '${STAGING_DIR_HOST}', ['${STAGING_LIBDIR}','${STAGING_BASELIBDIR}'])}"
     cat << EOF > fips_premain_dso
 #! /bin/sh
diff --git a/recipes-support/fipscheck/fipscheck_1.5.0.bb b/recipes-support/fipscheck/fipscheck_1.5.0.bb
index 970640d..df72454 100644
--- a/recipes-support/fipscheck/fipscheck_1.5.0.bb
+++ b/recipes-support/fipscheck/fipscheck_1.5.0.bb
@@ -27,13 +27,13 @@ EXTRA_OECONF += " \
 EXTRA_OEMAKE += " \
     -I${STAGING_LIBDIR_NATIVE}/ssl/fips-2.0/include \
 "
-do_install_append() {
+do_install:append() {
     install -d ${D}${libdir}/fipscheck
 }
 
 inherit qemu
 
-pkg_postinst_${PN} () {
+pkg_postinst:${PN} () {
     if [ -n "$D" ]; then
         if ${@bb.utils.contains('MACHINE_FEATURES', 'qemu-usermode', 'true','false', d)}; then
             ${@qemu_run_binary(d, '$D', '${bindir}/fipshmac')} \
@@ -54,4 +54,4 @@ python __anonymous() {
         raise bb.parse.SkipPackage("To enable the fipscheck recipe set OPENSSL_FIPS_ENABLED = '1'.")
 }
 
-FILES_${PN} += "${libdir}/fipscheck"
+FILES:${PN} += "${libdir}/fipscheck"
diff --git a/recipes-support/rng-tools/rng-tools_6.%.bbappend b/recipes-support/rng-tools/rng-tools_6.%.bbappend
index c487175..7eeaecb 100644
--- a/recipes-support/rng-tools/rng-tools_6.%.bbappend
+++ b/recipes-support/rng-tools/rng-tools_6.%.bbappend
@@ -1,4 +1,4 @@
 FIPSINC = ""
-FIPSINC_class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'rng-tools_fips.inc'}"
+FIPSINC:class-target = "${@'' if d.getVar('OPENSSL_FIPS_ENABLED', True) != '1' else 'rng-tools_fips.inc'}"
 
 require ${FIPSINC}
diff --git a/recipes-support/rng-tools/rng-tools_fips.inc b/recipes-support/rng-tools/rng-tools_fips.inc
index d5f6435..e3b89ca 100644
--- a/recipes-support/rng-tools/rng-tools_fips.inc
+++ b/recipes-support/rng-tools/rng-tools_fips.inc
@@ -1,2 +1,2 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/rng-tools:"
+FILESEXTRAPATHS:prepend := "${THISDIR}/rng-tools:"
 
-- 
2.25.1

