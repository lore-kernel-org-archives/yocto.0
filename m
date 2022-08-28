Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A25FC0502E
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:16 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.55791.1661653816069381646
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=EzVBqTRZ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2UF8v010885;
	Sat, 27 Aug 2022 19:30:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=t9c9wiLe3qI3CCbDguJNoqULs7bqoio0kd8LLFmr4Ak=;
 b=EzVBqTRZ7WgmOFqaEmLbpfWSx6uPHBL+gr23eeNxOM+Y+Z2pWobWi3kVCWJmA9SE0+G6
 6yE/EYW53AW8pIxkGhUf3ZWe/RQyerup5S0G/wa+Qk04dl1Xhk8AraLEMHSc0mAuV4Op
 NRmrd3O37jDKC3lxMJMYBZV02gGALVUfczfSKk/vryCEMqofzC6i/iTVGZ1rZ1EJzqGK
 82BsdvmsLC2oGRqYydycYHM1xEOpSKZxUAuwUcfa2U5tim6f1uLNduE09W16dhJz6Y8Q
 /kKCAgUz7hvZW5fW1x7o+LCU2QMqjkKRtJZsHXmE5RdWJOfLR39gNiTpFtFT4mCoy1Bb bw==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2046.outbound.protection.outlook.com [104.47.66.46])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7ej60hj5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:30:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XXjuDTEgm6echOQ1LJqanOr6wmnXWqukJKJC5cPaIKbRwd04ZiuVpx8nyj7zrR9XhssNyHo5PqgsBU/xC50UQVgllfyaZ01qlpN2sqI/4XBCeenTeAcDl5fX+gzsFsSKF7zXZb2o0Yxswgyq1iim/dzkHpgu9GEvA1+ulPdJD75owcMUmaUenBvqwFlbV8vZY/cyNTpalf2qIht8GgvSFP16XJ8bNmZ99GKab8bPAqDbE43olbYAxPCrnbaspwwqgGO+zQEIWkagh5poIuYmuggH6StfhMggHE9gfTfAsGbgUbOgx7f1KhDw4JAKqTgPeg7AXJhXJboG5fmifLeptg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=t9c9wiLe3qI3CCbDguJNoqULs7bqoio0kd8LLFmr4Ak=;
 b=G/eWPuo/k+umLyGp8O7xsGS7d9if6qf+tISjP3ysGbwkPSg39YBYLtWZ+XukG9uLAtwmENcw3Bu5nbQd8Fcw32wk3QxPWlOI4zW0achBTbe7M2mhA6mXDPfhbB2IgdFJWcMceAWFSiXhbxvKqhcqeyNRv+w2eeMkNV5CDsKdU6WzvS59j5vdmTZHiWPc97YiBtqw6TW8zPg9rYeKBojv+TtcbFe/7rigdYVLpxEpK4Mm5xBSDoy4CSYzqm6Jd432X+jQnNPPjWn9PC9v48ecEgkiPN7knm7/yOjuUSHAkzmPSvdtXFMIo1EixUggHr2WsDwKagbWFQqqEu7c4hGcrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:13 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:13 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 16/16] setools: fix buildpaths issue
Date: Sun, 28 Aug 2022 10:29:34 +0800
Message-Id: <20220828022934.47592-16-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae7eac73-fcd9-41c4-610e-08da889d3cbc
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	x+i8t4o8ksHhrLGEpwx/eFWmio1XE7jHbqgIrxz4dF7bB1eBmL9rRiLhhGB8rrafSryydU7uPZc+TEliwExxfmuDSQoMsbOig6vTqgEikxE/iALUp0VkqDpZGh5Eb/EL8gwuMl7fC6b1tK6VdOQj94C4Vq8dlUFHkEb2Lm/frRQ2hbzFHxDamPis0iPCHnVaQWK1ECpfp0jmRjg2dX4/paGjawSBSy600dyyPDK3kfucBBPNjio+SWfMM6fEyuWUyUNEDxKFlcBa6CxJB3uKZ6jr71xbe40/aJ8Z5aPIlOqDMplLWOQX/v1mR6ld7bPna8BFz0P8yoGzn4oePan8zeY8MVroXg+ylZVL7JUFODLnsndWfKuVOhmKeYm1OP6oMYIxQtKFPwx72+77SXhQrL+MvPS18zO/kLWhEmvQnBnojqfDWBoAiqQvHCZsl6SVJL9eH2A1zjkvRoiunvLOjsIt19/H8KUCf/rGuIc49w1rC2iYAcTtL6EqS4z9oAmOTC9MsN+sRugC+Spwqj7X652umG+npUKSsFLPue+6Sq7URBkuVS3fLvGbheGo0wjcsJ6lJcE0dxkhai4pJ2Jj9k00BfUAbBEYmUjBmMXHtnH9wnILLOrhuEeRYQojazcZ5kqwhP0AsTa5HuCZ0a3Td5wnELfdSuT8vS9MpZ65WdopJVJjy1dd4m9gfxQnzKirtQoLPDKT28IK6DL5+Sib67rZIfy1k4ua5/yrTLiC8ICXY1lb1SIrRA1D9NwSa5EhoKiWX/0VHGuHJv58hYfnXg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?PWxQM6e55/fQlrnrhbeg9cVSw2UyL1ryrHB2SXM+BmH5kWDJe2Geph3igA3g?=
 =?us-ascii?Q?81shGuvOwsXEqGrDp4p5ovhzqbyROkbDPVIsPrR0wWYxXMjSFQizt9/+DsAt?=
 =?us-ascii?Q?43rCji3NSs9tQHKUtqfQ3mSaoyyUKpw7T5hfW8LE9wJl7P/GvvpoQf2N8hP2?=
 =?us-ascii?Q?PnPomSccSa85Z0DNVGnTWfF3FDVMVtHIK53gj7s3rxETnyW9NPPfUx5MBn8a?=
 =?us-ascii?Q?/SxRhjnr9pRjOflMU6Dig4NGwxxiJUk/ptGTuDjHyF81Z3+mDZ/bSjj86qhZ?=
 =?us-ascii?Q?Pv1W/aFeXc2wXRta63vaZp1JVNsN4R/eAjieqhnvP8BNZ7WMNqw78q0KZBwu?=
 =?us-ascii?Q?M76UeemzHUjio4rhG+2EdXXU1wGx0g05BXKA4Wlo0vONXPA8qWcsnaAivQoz?=
 =?us-ascii?Q?sMVyC6KCNmUHqknkGzSLOOw0DV/RMlwdTDf8FxQJqvdp/4XQQWeIB3i//6aQ?=
 =?us-ascii?Q?UWVA1p3z7ObWfunWLckeY9Uar1nq/VJEsHCGEg1E2JA8XG6aVJB0XrWjiCa/?=
 =?us-ascii?Q?vx3EbvStKoytItZ0TGfw+s/4KrVCzuixXf2+mxEYpt1msPkI0spD52t/yBE7?=
 =?us-ascii?Q?uIKiOjE3XC3UgAck1TUz/Mbk4S9I9nX5YifNY5wNohi4b+jaTBNyBs4ceXEl?=
 =?us-ascii?Q?XqFQNc6sKUYSFx1uApgTmyG8+n5D0uXcgpdqSkQxn3DzzORjyhP3kTQq9GQJ?=
 =?us-ascii?Q?yJgs+Kh1PFPHjvIvJ79h7tWrGtPCtoapyIDGnd7Q9Tnen0UnO7IAvCFK7HEN?=
 =?us-ascii?Q?s6DBX8CN0fAASQPkTTxRM5UxzhmFQdP1PniOKx/x2PDWurS2XjYrLWpP8gCO?=
 =?us-ascii?Q?+7O2Lodv90GpQCXj2vufn6/vWVtpNoTWaLAsVQli4OYoiaDqOevoRnDDxybK?=
 =?us-ascii?Q?gGBpFL/zuvX/xmIYiqItXqbWwD0ZnpBxmBFJ4jtzCeEDgDpWeiWIql5IApq5?=
 =?us-ascii?Q?+XUm3URIzFC5kj2x7xEXQtj5OeuVkme1S9gTkOBEheu29mz46sySi+ADWR9T?=
 =?us-ascii?Q?xf0ztae0AjJfIFesuXORL9cP3f0KzZZ8Ki6eVUMSHHhu0J/gm/fs3FjbavDq?=
 =?us-ascii?Q?0oYJMVYMw/AIHnnhHJb+9iMgEawDB7tWpQeNk5cffwJ1fvMhMUiI2GZ/L2hF?=
 =?us-ascii?Q?WC3RRWpla+/ewQBrV/wVMUsIxhDspCB3dwlWpgVSKjRGYuVKB+Dt/90UC9Se?=
 =?us-ascii?Q?AKFH0aYro/CCYaFxvxVlb1TzkR+qVSYISFHRLJqrDN2fo8z6qMS2pcNPrYIP?=
 =?us-ascii?Q?0t61zzjAi/UWr4pAznOOuLs3kB7vWKon0rY9BSvEGKV4iY/pJqkZlN8kR+yK?=
 =?us-ascii?Q?ID6+FymK4i29KmN7aBhVW1API9ooXY090TWSS4+TCJqjmxZfeFk3lTn35HW1?=
 =?us-ascii?Q?nOB7uGlFrO3MJVX2zxO9nKwnQGlNILQ73MQaiVG/Cw0H15b/eOrDis+gyz8j?=
 =?us-ascii?Q?fEwsIhI9ZLS4W1vZHExDTCfln09PV9UgUJCf88z/jpVa/FYqCYkkQTfvVigN?=
 =?us-ascii?Q?G4bDOY4e+XNAGHsxTAPlMnQ+B0XROkCWQWxleblTX+ma9cDUjjwl0JOqdRKT?=
 =?us-ascii?Q?YvGRwPIBo1Zk3UTLfa/oN4fIbM7FgSzFNB9dHsbN?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ae7eac73-fcd9-41c4-610e-08da889d3cbc
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:13.7817
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 9kyBG418YwX9JXqYzeo3CmZIDpFopUUtXBunAuOIWB2EXoU6IR2B8Wac3z/2sfksFlxt1Jj/DHLALwbWYgSxkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: 8v9hYlbwW8fAeIWS4VyyjctQxfDwQLJH
X-Proofpoint-GUID: 8v9hYlbwW8fAeIWS4VyyjctQxfDwQLJH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 mlxscore=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 mlxlogscore=985 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57931

Fixes:
QA Issue: File /usr/src/debug/setools/4.4.0-r0/setools/policyrep.c in package setools-src
contains reference to TMPDIR [buildpaths]

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/setools/setools_4.4.0.bb | 33 ++++++++++++-----------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/recipes-security/setools/setools_4.4.0.bb b/recipes-security/setools/setools_4.4.0.bb
index f1557b1..81b0bfb 100644
--- a/recipes-security/setools/setools_4.4.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -1,37 +1,38 @@
 SUMMARY = "Policy analysis tools for SELinux"
 DESCRIPTION = "\
 SETools is a collection of graphical tools, command-line tools, and \
-libraries designed to facilitate SELinux policy analysis. \
-\n\
-This meta-package depends upon the main packages necessary to run \
-SETools."
+libraries designed to facilitate SELinux policy analysis."
 SECTION = "base"
 LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 
-S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
            file://setools4-fixes-for-cross-compiling.patch \
-"
-
+          "
 SRCREV = "4758cdf803d93274f49cb6445cb2bab527d6549f"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=83a5eb6974c11f30785e90d0eeccf40c \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
                     file://${S}/COPYING.LGPL;md5=4fbd65380cdd255951079008b364516c"
 
-DEPENDS += "bison-native flex-native swig-native python3 python3-cython-native libsepol libselinux"
+S = "${WORKDIR}/git"
+
+DEPENDS = "python3-cython-native libsepol libselinux"
 
-RDEPENDS:${PN} += "python3-networkx python3-decorator python3-setuptools \
-                   python3-logging python3-json libselinux-python"
+RDEPENDS:${PN} = "python3-networkx python3-setuptools \
+                  python3-logging libselinux-python"
 
-RPROVIDES:${PN} += "${PN}-console"
+RPROVIDES:${PN} = "${PN}-console"
 
 inherit setuptools3
 
+do_install:prepend() {
+    sed -i -e 's:${RECIPE_SYSROOT}::g' ${S}/setools/policyrep.c
+}
+
 do_install:append() {
-	# Need PyQt5 support, disable gui tools
-	rm -f ${D}${bindir}/apol
-	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setoolsgui
-	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setools/__pycache__
-	rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setools/*/__pycache__
+    # Need PyQt5 support, disable gui tools
+    rm -f ${D}${bindir}/apol
+    rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setoolsgui
+    rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setools/__pycache__
+    rm -rf ${D}${libdir}/${PYTHON_DIR}/site-packages/setools/*/__pycache__
 }
-- 
2.25.1


