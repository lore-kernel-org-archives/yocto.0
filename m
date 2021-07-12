Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.9992.1626091892968952532
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jul 2021 05:11:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=LUyTDOmL;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2827191552=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16CCBWxa023970
	for <yocto@lists.yoctoproject.org>; Mon, 12 Jul 2021 05:11:32 -0700
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2044.outbound.protection.outlook.com [104.47.66.44])
	by mx0a-0064b401.pphosted.com with ESMTP id 39r5tsrgrf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Mon, 12 Jul 2021 05:11:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U9ZizWk9XnzlwPVUo/tlQM68Zux7qSf2QrfXB8Rq3RO9vxWYxstedJCNHN7uvcFW8KpXxepLzM2E99a6zFRiNH/mFsiO+1tZyyJLBzpg9GaH5Uy/1L1AMJKAQ4TRHMf7luVkY7dmbJdZJlJPH84YB8mAWS2oU5QUwgtGRxKLXbT1INmOYJzsAX7x8Zbeyl9ytmMrM/6U9sovjk+Tw7oN5V9QJpP4m38sEBXt2ZIvzt15nUJWKuFXQqTGr7dpsESyA1frOM9hijFsSNDqqcMZdu0dcyjMu9lc6EMClSI8VOKqiqK57hpXjPtDBcoWCWHiHX8fSq3cVCR5Z2V99yLDag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x7N6gdIN6JWZYKdkZUaHa2stkBPLWqIF9hzgE52wmAI=;
 b=E12VyyOj6gWw3KHd3Y+MCj2KCj22Z4JbN+itJRH5SnRbOQ9tO5pyKo3ov3Pw6WB7ZD2S9G4Frjx9lsfs3ZUXMZzH80umIVRgbvrPG7YokHvKFfqmqA8vhs1DM4vpjD99bbqVxnnhtvGVj33i6IUsO1FoLuwedy+WgT/ir5xiKwuMtfuhEJDyjk8AcTjjIAF565b4jc0SBU9n3X5FanCMFTl+fFkMS3N2aPPt8k6XCvkhbWgkzV2tNGhKKHT6TD2tkW+JXxvj7422Wn6lOpVAbmN9tvqHPxZUiepMDC8Fty5caRD6PFu4tBuA+R8qnmsp2ifaMLQOjHmrI7QWdrdKAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=x7N6gdIN6JWZYKdkZUaHa2stkBPLWqIF9hzgE52wmAI=;
 b=LUyTDOmLQ08DTanklycUoTEN3FBjtT7OZ5lCHtDq8oGzCUMrCxoPh+iuDqazE3hijCIqQheKNqeJzP7AIM22ksDUittBMPyaht7+NwSeUKf8T0lxsAVLN80EtwTTqNqZrtxSKY4ESTF2GW+DRL4fbps2Y1c6rkPUOMydBnPWAZE=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by SJ0PR11MB5088.namprd11.prod.outlook.com (2603:10b6:a03:2df::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.23; Mon, 12 Jul
 2021 12:11:29 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e%4]) with mapi id 15.20.4308.027; Mon, 12 Jul 2021
 12:11:29 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: track system load with PARALLEL_MAKE
Date: Mon, 12 Jul 2021 08:11:16 -0400
Message-Id: <20210712121116.218723-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: BLAPR03CA0066.namprd03.prod.outlook.com
 (2603:10b6:208:329::11) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::f245) by BLAPR03CA0066.namprd03.prod.outlook.com (2603:10b6:208:329::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20 via Frontend Transport; Mon, 12 Jul 2021 12:11:28 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e2d15ecb-6290-42e2-8eec-08d9452e2dfa
X-MS-TrafficTypeDiagnostic: SJ0PR11MB5088:
X-Microsoft-Antispam-PRVS: 
	<SJ0PR11MB508880AE9D00DDCE70CACCBA9F159@SJ0PR11MB5088.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NpaEgwJutZbuzqOJpkGs72lS9nSdVamFpKkXiMZJJL1IS2MS9sak4l9s9KiivSlvBXIK2cR3tXyT6WEyrcAEclxkC1nkc1UwIK76RG00kzgx/Akb7t1Z26jNdIyZL/yZGuzkyeZ3i2TbVfP0H+Q+4Qa2UY6S1/NNAt5pM6CjwnG5RlTM66df5tvzsGA1o0QuNXDaJhkY9qrdxrxc7NA0OBnhgm/OKxxqKY+0K9H4wrRvb+V0/HHm21YEn4DOPHHOMwHTKyvBwZN/idSVg/OflCV9Ie9ZsW6/uoho+Ip4daS6z1/2zGNBQwx4NSjNzsIKdc9Pr3sH/HeHUQoPSnjBSUL0TFOfbK+jXtNUm63LomtlLzvtsfTXzmgBL0uOt01hRTjtIiG1hasXwknM9w3mKlljpAo4ZUiYpfntsdGqnEdhseTo5wzhhL2IjEOi8/Dub/+gtyyodIRhq++FjVyMKHxOy6ojIHYU/2L1DuFhU96uEm7J7RR/IlyQtlliJQlP9s9gmfnfdf9BwExHaktZari+FS7U4Y/3Pvey9zmsz2gG1bJx8sCUVdacebh0V90DH5GwnDSr4MkeUH48NJWr33j+aLIMdXBSj/EXKSeFB6/3FOcz1nTD9l7PlAQ2fGcNCY2F85Wg8MhWYev8htt5oA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(39850400004)(136003)(366004)(396003)(346002)(2906002)(6512007)(66946007)(478600001)(6506007)(44832011)(186003)(6916009)(6666004)(86362001)(2616005)(8936002)(66556008)(66476007)(316002)(6486002)(1076003)(52116002)(5660300002)(36756003)(83380400001)(38100700002)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?OaDxXkz7bSL5cv6rys5OFVqi62UhAmwtoaGi62qperPpSllbVv4S8Fxh55+O?=
 =?us-ascii?Q?5cWM4QlwTVryMaBQ7V+c+VyE00NXfktGaaIYHC3UoQONbYZfg3epIqc+egFu?=
 =?us-ascii?Q?3hUDz4VrkiXsj2GJ50aS/NDJFPT6zCxogqLn5cjxR7UlRHEM1awH42lKWijn?=
 =?us-ascii?Q?UjJLwIkwCNAsBgqakAE0m3/EBfCbRYa0ySGIQxq7JCO9IqNnPtJOqeQCzHxk?=
 =?us-ascii?Q?Yp0+BDIzZ7dl7Q+qHkFcbkM4YlPQXZFbHq6KwbFSXAUzDHFf+H0V9iyA+Upt?=
 =?us-ascii?Q?0OphbUEB2u2tUJb4BIu8JbYaphlHLj+pOY78u2so0+OyWGqAFRO/M/NRwcfV?=
 =?us-ascii?Q?MZMI02K7g6lTOKJucj2LHxnIzR483FBsWvcpzTLIw2IHhdJyEopKwLh1mBcD?=
 =?us-ascii?Q?d/aplEH4CaxnNB3GCGK4SAZaipId0FxkmbV4FBgjqzFmYcvCBofsBPRfrQZa?=
 =?us-ascii?Q?lWsW5FAFPwmhvLLRsmRathe0WUMjs4bJqbyT357nXh3GsQ8aSEyihP0dM9RR?=
 =?us-ascii?Q?ZZMLc7drv1YIl8swLNcyxiDUn/R2Zu4TLXtqf3YB8NBtwugi1Mkqx50boyG6?=
 =?us-ascii?Q?ot3u2pOyDS5lThiBAu4Y7lbWoOS4bhCqCnE+4hwN5a0ImYTiUGRnpTIFaOHY?=
 =?us-ascii?Q?E0fICwi6Rrm0So8teGEc05oH8W6aR15Nw9QXr5ejCsRmexIa41Pb+1lhS6bS?=
 =?us-ascii?Q?AReDHrs++UQOXufqDqEsrShuaG9dd3I+dLWiqWJZ1ugK7yIrIG2t4JOmd0p3?=
 =?us-ascii?Q?UeYGOkgwBoyXTXg7pBmutNW2MgpJynR95cv9wZkV5Je1DFw2Kb0+m2t/d591?=
 =?us-ascii?Q?ZNen4HOsuETz9IzLJWXMYExLpkOvkIuiQweIIuzpVY26qTWQ7YoRi3P98l4E?=
 =?us-ascii?Q?2REqChp+ZjxEZwMqgDITXVj74CXFvIZmB/VfUAoqtWgOSZfik9+GivFcNANg?=
 =?us-ascii?Q?vnJcJvcXlNUsHwzdUscTuXMNAi5xfQAsCtLY/I+lD6Vj4jNtk1SPfHCKM//R?=
 =?us-ascii?Q?ljnCJZK26pe4cI3rBXXc45UWvhBp3RR9ZtTcpkxx7ozWDboGZK4sCC5Y1r85?=
 =?us-ascii?Q?KPgIe4zef4sOt9i9kUlI++OjaFpxpsFmJFy/2KNdZ5iUesVDNOeHbgtBaF5u?=
 =?us-ascii?Q?Fzn2H4TDieL21ATTLOFSqkjtVsSdeOZIVZjZ/Vr8CD1X4AJ/+NXxE5r8oHZW?=
 =?us-ascii?Q?lYLPdFGnyaWC+IcMhtyrRK5fj9swikb9fW6GHdddEx+Y84QrGNglAy1/KFg5?=
 =?us-ascii?Q?pLjxTfFnb2JKUCZaDDSGzHJzaU/kEbjZoMXwgrdxPKGqJ2t0o2fZs2exf+TI?=
 =?us-ascii?Q?jF7mEN/34fQ6i6tjf7f4Swzz9ocdelyDpjvx+jD1T3FlGA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2d15ecb-6290-42e2-8eec-08d9452e2dfa
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jul 2021 12:11:29.3302
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J/A5ItOd0ZBRPIZsCuYp3St0WDPx52+D2jRY62tpiGuE4H+k1/6ifQduhunuhlLgQ8egBpYVvlwQC1gMowGeRm0lajbgVGgtcVFE6dQuN3E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5088
X-Proofpoint-ORIG-GUID: M0Wd9uQzBWvNZ4afxXMuD1SNPuBC-zMA
X-Proofpoint-GUID: M0Wd9uQzBWvNZ4afxXMuD1SNPuBC-zMA
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-12_05:2021-07-12,2021-07-12 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 phishscore=0 spamscore=0 adultscore=0 clxscore=1031
 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 priorityscore=1501
 mlxscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107120095
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

This adds the "-l" option to PARALLEL_MAKE in config.json with an
initial testing value of 100 (100% system load). This option is supported
by both Make and Ninja. However, we also require the "--debug=j" option
to be passed to Make in order for the latter to report perceived system
load in the do_compile logs, and since this option is not supported by
Ninja, also add EXTRA_OEMAKE to the EXTRAVARS so that we can determine if
the target load percentage needs to be adjusted.

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 config.json | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index f54081b..7fc89ea 100644
--- a/config.json
+++ b/config.json
@@ -44,7 +44,7 @@
             "PREMIRRORS = ''",
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
-            "PARALLEL_MAKE = '-j 16'",
+            "PARALLEL_MAKE = '-j 16 -l 100'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
@@ -61,7 +61,8 @@
             "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
             "BB_HEARTBEAT_EVENT = '60'",
             "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
-            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh 100'"
+            "BB_LOG_HOST_STAT_CMDS_INTERVAL = 'oe-time-dd-test.sh 100'",
+            "EXTRA_OEMAKE = ' --debug=j'"
         ]
     },
     "templates" : {
-- 
2.31.1

