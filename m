Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56758C433F5
	for <webhook@archiver.kernel.org>; Tue, 26 Oct 2021 07:46:14 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.9090.1635234372835763490
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Oct 2021 00:46:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=j5uYc6tE;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5933689bef=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19Q6PjuX026008;
	Tue, 26 Oct 2021 00:46:12 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=D5FeFeKAz1ZEuNa2KYgfY+3+Gids78PlgM9SmmIIcek=;
 b=j5uYc6tEiiWXGetdZLxnYVHXCV1P8zWIZSOopu1i9eyfpkmHKecfnXLXWW5CPZa4xdas
 fBsu8aQCFNie+FGazmZXgrXA2Zv281Fx9Q9A5jeuZdY42Aajr0LehyuYWpUDr43e2gcf
 ag2QADREnvw7PYMCOECTHJEIKNaRC8ZauU2hDuhutfcgmFCddbeWXz+++oMyUajNrvND
 jdfo2vebDsg0DA6M1INuRyqrupxb63QSI7GXNJa/6VV3Cqp4nS6IDc7PpvRuh9X0vGIr
 J+iB/DT3HluX1YxFPzUDKzxoE/QsQ6Z5pCRUIvPYcj7o2gruW4kU3FjSaFlKeTccwCCD qA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2045.outbound.protection.outlook.com [104.47.66.45])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bx4uwga0r-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 26 Oct 2021 00:46:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kntC7Y7f1V4zYyGOYDVXVrFPB1ZvSXpbLx3XjNSOw6mWMMExug36Izo07FDI8nCAUnKxRL2nvFjzKqMfE71IYO1PdXzXQlyLCFmmITb5jBScIogBycItiWtj4fCTbEBGSuu7PQfUE/3oJpCv47LzgnA+WYwpD/xXp3UvAEc+jXQQUMg5pSXeluD/cgpL9hI+8ORF2R7g4LgWLpeCQ3XbCO3+2EeM45sGONyAkNU56K9cQn8STTO+OFzOQlHMpPDnd2RK+PpHSFWVNZjAF17E7fdD2r/jtaf0GPXUOqhPslor5Eda0AxmB4tppMy1tLHbEJf38Yw/9aEcEajqU3O3kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D5FeFeKAz1ZEuNa2KYgfY+3+Gids78PlgM9SmmIIcek=;
 b=Y9c6dOHWAdBBUXTL8h4zHf+JSYqTI96w+7gFMTCv41iN6IdxHOuQX7o9t33gMsLo3CpP7wwmU8EUB+2rnmwgxLq9nwMjjx2zUxhGdMx72raTjpQ5gZe0BFxRk0t8z/OiAgaOpWB5mbbuIJOdU3ex5AGtLSZKgUE7P+jzg7qJWQ6GsGeq7XqtW3ypNBu5ViIfmpCBGRxhx7iYZD3ZwkJxXJQypW9SkXfjjHrGyJtDw4HOzu1U+0KZJlCmfYFQ97A9kiPvtJ5L5PRpZVjun+IrY8VGOsZFj2bunAippCihuvvNKuo9JVr8wQX8BGyWTi1nFg6GnjzN3Vuqv6XudjYezw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1581.namprd11.prod.outlook.com (2603:10b6:301:d::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4628.18; Tue, 26 Oct
 2021 07:46:09 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%8]) with mapi id 15.20.4628.020; Tue, 26 Oct 2021
 07:46:09 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, jpuhlman@mvista.com
Subject: [meta-cgl][PATCH 1/2] crmsh: fix deprecation on
 collections.MutableSet
Date: Tue, 26 Oct 2021 15:45:57 +0800
Message-Id: <20211026074558.159072-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HKAPR03CA0001.apcprd03.prod.outlook.com
 (2603:1096:203:c8::6) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HKAPR03CA0001.apcprd03.prod.outlook.com (2603:1096:203:c8::6) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.12 via Frontend
 Transport; Tue, 26 Oct 2021 07:46:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ac83fbf-2549-4f18-1f7a-08d99854ace5
X-MS-TrafficTypeDiagnostic: MWHPR11MB1581:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1581993D84B78C9C8DFF3CC7F9849@MWHPR11MB1581.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6108;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	RQ2DVlFOSrJwVeiioZjKtIrvEeUHbxSNWjdhupaO/ppXGit2IuZ+Cj756si83s5N2RSFrziHBNY6dSZox/6EJJ1Q/ZR/O6rOcUtAr8ps4BY4GnArqXEc3RDy6ZJYH+HnbMWK5yT4hTM4v9htgziPxWPURfl0uqHF479GY7vto9yXCaCRkrzFsifgYdbhve12PomtAyeva+eeOqp3BNj74CiEGvnB2mVDK45jr+EnRj5y1tkzKgGYMWLmQwIo3jYLC5hBFr5IRtDCOIn8FmLEVtUVMWIzWUCOmIKmPhj2130VqafLXso71E9wlr8844Jwet+6JMVgT7qJzEg7kLwuGfXs1/nRATI7unCSOEsRAyfB+UfQKTlvCVwN2Q1pInm/7iv5YoNwTJeXmNmS4OPXFPollay7JpHJyllDWgpofS+IsaKsfEAiImb7I0DazIOeCvp6qjH9iQTIgPqHDca/JpkV/83fjo90PsZZDtgzbKS1916V8L6lL4gPB7CRJ0h0rTi8ebeSCsaegKpI6oXC2gFqC2ch26MKIHqHpOvJ+/ev6JjpK/iFlMit4o1T7dNEcICqPunnhUDG+VBjUPtG3nmzuADGKKy8BGL6/PfZBHSwCw1at18XvnPVNgSKWHyatYe8fhlhkgpmQptOZDUiEsUqYM9gkrmXC5R8INHIHpOQqjnSNOMkhIA5TNpHBgcPXvvip7wxEVZpZ9I8bGQMB9yjoxaLxs4XvM5kR0WRHSFJpiJn/XcLxy1RQUkgviu1XtM4KH6fVP+Vh1u65csfFSuJeSvq1MtM5CfOlLqbIiU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(1076003)(186003)(8676002)(5660300002)(44832011)(66556008)(83380400001)(36756003)(66946007)(6506007)(508600001)(86362001)(66476007)(316002)(2616005)(52116002)(6666004)(966005)(6486002)(956004)(26005)(6512007)(38350700002)(38100700002)(8936002)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Q4fjCEGUO1KclklX7jQvqcHYwMRTMrvRpp1Eudgtnhls7geC0ZmmdCEjOUzD?=
 =?us-ascii?Q?lhbD4Xh4MgzLA6CsKXrZdkpzt8Iy6y5g6jQibt5JJzEU8zFgAPg4wK0sZoYK?=
 =?us-ascii?Q?7YbubYSNGqEwLmOWF3H3CFt0/PbUy2FcTAyUBNEwwMUeOYbFEk0nZOKxEPQc?=
 =?us-ascii?Q?I1zVTsveKI/tdVbjNug09QvIqIJhQCMxT/he/SEgEk1LciJEwGw96D0a8EXw?=
 =?us-ascii?Q?dp5+KH4GikJ3/wPdsKc+QLN+wL6rW2jEJAJwxWjM9CixUv/JnM1h6HDj0vXk?=
 =?us-ascii?Q?Lq+q4T2cswDjqrLZLIYVKk1hChGwD9yOmg+9zyqBaINmOxCXxJK1dv28L5e+?=
 =?us-ascii?Q?E/JpMk7j745AYajvbLwdC9lZp9376MP6+FvAP4ggMEvscAeOkd7mWzjOTtAa?=
 =?us-ascii?Q?43Mu0Xl5OeLBYi0qM1noYwng+yrQzG3dvz7lL74TWofa6vZ3hlEfCFc24ujv?=
 =?us-ascii?Q?WtIEDeC2wHQyaNqo53LXMJYo7TzyLI+PSlqiylAH5C2uVR3tCRl4H5l7xmPQ?=
 =?us-ascii?Q?F0pDJrPAHL3adji2ce+8HUT1L165FmO8Qt6Zd6987r3TGv9/GmLCufFxG5cj?=
 =?us-ascii?Q?eceglPLNhz8/1TB+2iV6Xc2muD4Cz/szZmdF1OeYodi4Rqjh+308WLqu/nIy?=
 =?us-ascii?Q?wNDJ0h7+qToaGdtgbsvmQoSIoU/XNVF6NRFTZ4oqh4PwrBZZFZpQhfd2WWQN?=
 =?us-ascii?Q?X+k0xMjSfHFGuhPGvnTAxvTBL2G1X1N1Da/WhJv8cCZQlYaC385RLAhqG4UE?=
 =?us-ascii?Q?MOEe+FP5qIi60ofzv9rdx4K6kmcY9Sl1T1ppkLY+ziczQmOSO8FsxV2G/8zE?=
 =?us-ascii?Q?OHLUDZFOV/RajxZND//eIcA99VxwytbeFk0X1yLHim10RkNAb29J5z7qzH6n?=
 =?us-ascii?Q?zGqXQW4ywjzCTi/jm25wC3NQ27rNcaMW7oC96rauTsBmhV1qhOM1CodJZNAQ?=
 =?us-ascii?Q?Pcc9Pa5SgQp4/6esAyhi0jX9MDJWUwFlQbfFk/gnEXwAZQ3g8mheARd1LuuI?=
 =?us-ascii?Q?z9LWgdieWsqhoIV9Cl7C6JhbbY5vkMraLqXsNAQ7CyZL1DvRYjacW/EVM/zo?=
 =?us-ascii?Q?X5BNAA5X2mOkJmoD7uegRPuEQ8wepT2dk0Vf8y9O6/GYLxFBSbMgWN7rAkio?=
 =?us-ascii?Q?o4DLt8WwwbGnZoVLg/yLFgHxf7+XzEy8nbTc3mT8DSQZLbNcNby20vJwUfIU?=
 =?us-ascii?Q?20DB4T2dSE9upTrSVui5tAMljQaxIV5VqMNpkSm8hlCyKmJbGjem2MdhZ+RM?=
 =?us-ascii?Q?9Pl88LyVkHZmvAm5/W5P6yrhKbhaii1cRo5LMeioT0I4DikEyejfllkjlRP3?=
 =?us-ascii?Q?jG1X5Z3PBo2r8k4icoQloEU2+RtsHMAOEWSRogSldsX4TGpcMnZ8bTlVIb5D?=
 =?us-ascii?Q?LGpS/9IYzmdmVfgvCvF6k7T1eHMuJfDfWiUwt7+VH+BA51xri3TRuJA5ykGA?=
 =?us-ascii?Q?usvcsQSfxHmgem7nH+Smo1yIUSCKe67cuP2iy3hNBA0tUFjPrCsUsSGmHBj0?=
 =?us-ascii?Q?2Y2nZSh032rB0YHkaVxN6DabZ61dHMA3XKsa7Y41uEho1mHOfYanazzuSSZo?=
 =?us-ascii?Q?d9dH26AP/WcYTpwDwsrNeV2YKJiDILVQmgCeRiPgik1SFE9lDzX51cX6EspY?=
 =?us-ascii?Q?FTKbvzriCIWYvVWhQS4hA38=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 2ac83fbf-2549-4f18-1f7a-08d99854ace5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Oct 2021 07:46:09.6411
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 56/YZZ6HTrx8w3KzN+6CZ7pp6TTFoc+kSE8NkGxoeKFrnGiJQF2GP1B3UdIwp/7dYcxcV8DupFTKBDubjLicVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1581
X-Proofpoint-ORIG-GUID: 2BJHtaA08ZK5AUsE5bTNm_Cf6Vix0O_9
X-Proofpoint-GUID: 2BJHtaA08ZK5AUsE5bTNm_Cf6Vix0O_9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-25_08,2021-10-25_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 malwarescore=0 bulkscore=0 impostorscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 mlxscore=0 phishscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2110260043
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Oct 2021 07:46:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55161

Python 3.10 removes the deprecated aliases to collections abstract base
clases [1]. Using 'collections.abc.MutableSet' instead of
'collections.MutableSet'

[1]: https://bugs.python.org/issue37324

Fixes:
$ crm
Traceback (most recent call last):
  File "/usr/bin/crm", line 29, in <module>
    from crmsh import main
  File "/usr/lib64/python3.10/site-packages/crmsh/main.py", line 18, in <module>
    from . import ui_root
  File "/usr/lib64/python3.10/site-packages/crmsh/ui_root.py", line 23, in <module>
    from . import ui_cib
  File "/usr/lib64/python3.10/site-packages/crmsh/ui_cib.py", line 16, in <module>
    from .cibconfig import cib_factory
  File "/usr/lib64/python3.10/site-packages/crmsh/cibconfig.py", line 23, in <module>
    from . import orderedset
  File "/usr/lib64/python3.10/site-packages/crmsh/orderedset.py", line 29, in <module>
    class OrderedSet(collections.MutableSet):
AttributeError: module 'collections' has no attribute 'MutableSet'

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...x-deprecation-on-collections.Mutable.patch | 52 +++++++++++++++++++
 .../recipes-cgl/crmsh/crmsh_4.3.1.bb          |  1 +
 2 files changed, 53 insertions(+)
 create mode 100644 meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch

diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch b/meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch
new file mode 100644
index 0000000..62db8e8
--- /dev/null
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh/0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch
@@ -0,0 +1,52 @@
+From c1356d64086d2e3f9d113f346a14e6dff1c2acb0 Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Tue, 26 Oct 2021 14:01:09 +0800
+Subject: [PATCH] orderedset.py: fix deprecation on collections.MutableSet
+
+Python 3.10 removes the deprecated aliases to collections abstract
+base clases [1]. Using 'collections.abc.MutableSet' instead of
+'collections.MutableSet'
+
+[1]: https://bugs.python.org/issue37324
+
+Fixes:
+$ crm
+Traceback (most recent call last):
+  File "/usr/bin/crm", line 29, in <module>
+    from crmsh import main
+  File "/usr/lib64/python3.10/site-packages/crmsh/main.py", line 18, in <module>
+    from . import ui_root
+  File "/usr/lib64/python3.10/site-packages/crmsh/ui_root.py", line 23, in <module>
+    from . import ui_cib
+  File "/usr/lib64/python3.10/site-packages/crmsh/ui_cib.py", line 16, in <module>
+    from .cibconfig import cib_factory
+  File "/usr/lib64/python3.10/site-packages/crmsh/cibconfig.py", line 23, in <module>
+    from . import orderedset
+  File "/usr/lib64/python3.10/site-packages/crmsh/orderedset.py", line 29, in <module>
+    class OrderedSet(collections.MutableSet):
+AttributeError: module 'collections' has no attribute 'MutableSet'
+
+Upstream-Status: Submitted
+[https://github.com/ClusterLabs/crmsh/pull/882]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ crmsh/orderedset.py | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/crmsh/orderedset.py b/crmsh/orderedset.py
+index 21ec480c..27233289 100644
+--- a/crmsh/orderedset.py
++++ b/crmsh/orderedset.py
+@@ -26,7 +26,7 @@ import collections
+ KEY, PREV, NEXT = list(range(3))
+ 
+ 
+-class OrderedSet(collections.MutableSet):
++class OrderedSet(collections.abc.MutableSet):
+ 
+     def __init__(self, iterable=None):
+         self.end = end = []
+-- 
+2.25.1
+
diff --git a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
index 75e720b..0b6ecd3 100644
--- a/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
+++ b/meta-cgl-common/recipes-cgl/crmsh/crmsh_4.3.1.bb
@@ -15,6 +15,7 @@ RDEPENDS:${PN} = "pacemaker python3-lxml python3-parallax gawk bash python3-doct
 S = "${WORKDIR}/git"
 SRC_URI = "git://github.com/ClusterLabs/${BPN}.git \
            file://tweaks_for_build.patch \
+           file://0001-orderedset.py-fix-deprecation-on-collections.Mutable.patch \
           "
 
 SRCREV = "00ec69054edecd068deda54c6184c0385d90ebd2"
-- 
2.25.1


