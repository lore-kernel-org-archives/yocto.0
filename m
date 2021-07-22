Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.7840.1626961145034445734
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 06:39:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=h/xkloE8;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2837e0545f=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16MBoJsS030271;
	Thu, 22 Jul 2021 13:39:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=W5wYFN7nByzZFGs9WGGbNQGcmM7mV5yPsdswXwNZb6A=;
 b=h/xkloE88ZXxOu2f0zQxfKp12QCBTsC0eXhb6lbMOd1qAdAWexgAaTyDhwetFd6E9hiT
 ykRAnQDvru8RbJe2sbWEbNS/+wji00lY2AUNPLAibQePBmaaFYyfItXsT/zS76o0Vu0O
 RWGr8z3lJINBK8DoHP8usewiyj6Tl0qaNP/IUPTenweT1k/Vf305zbouq7xrqd94rj6N
 VyR+lKS0wtyrbt1An6YEtBc/uoppBKfgccm+9P+TnboCSbYh3dJ2hGtwISW7d2May7k/
 Y156N0tMzcZaAQeK+d2XbJ1vzFsEMgKCWxAR5rhxKG9o0+S4yzwBPg/8EELMngQPTAd9 DQ== 
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2173.outbound.protection.outlook.com [104.47.58.173])
	by mx0a-0064b401.pphosted.com with ESMTP id 39y84kg2db-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Jul 2021 13:39:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NpZsD/kQARBE/nrXvtRFU8JYFd7a+On58f+NIe0ZVGhb98vakdsMRah857vQbjqRD2PlJR1oBavj8cBwnykw+gYbyTEj6yGYWYPu/hH6eX1lqaIUljlSoumAohvNUMZMKNgOSfXIX1ULeNqr5d2AcIIXF3JBfWm+YtrMJWpog309rqyyajACQIE1q/cSj8MD46SFaTk4kv1x60yst0/hvMpxYoO+XiymqHu0sC/ivhFacpHv862ox58zY+qf8LtJLT6fK7cEPVYy/ZSX8z7pOjZMbNYS7onTKm2Q8p7g8NsC+S2FH+I97ZntuyCaQ9P3YPJeWbmchavtTq8IRrMAGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W5wYFN7nByzZFGs9WGGbNQGcmM7mV5yPsdswXwNZb6A=;
 b=VCKsqzlPkNS4jLRAuSkLvXcKSXLQm1nVmIk/zoan32vU798LEN93z4xa5X9qZ6Sl/0S4B9NbLBYMjN2mItKN4ZuGguEGzw6sZX94W/DtAedZFxfx4FKjZo2NhowBuQyS9IgFScWPlLd/l6k4R7oWxvwy6oFefPhf9cBtQAskZua4+szMJzUzGz+/znMbyph5x4DWgfwQoQepxVoKrrsGcYfdzjjjcSH5gYBcBNcma5NFrOfadx9iNYWAD/tS6pAmMlPvQvWiOzor0HuEHScG8OBA2xZ8AYRixSGga1LJcWgmsTz207JIpHhbqwn5MCXatnvCtC2BvBNFhe3hwwpCcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB3111.namprd11.prod.outlook.com (2603:10b6:a03:90::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.29; Thu, 22 Jul
 2021 13:38:59 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4%4]) with mapi id 15.20.4352.026; Thu, 22 Jul 2021
 13:38:59 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: anuj.mittal@intel.com
Subject: [yocto-autobuilder-helper][hardknott][PATCH] config.json: track system load with PARALLEL_MAKE
Date: Thu, 22 Jul 2021 09:38:47 -0400
Message-Id: <20210722133847.151111-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: MN2PR11CA0015.namprd11.prod.outlook.com
 (2603:10b6:208:23b::20) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::f245) by MN2PR11CA0015.namprd11.prod.outlook.com (2603:10b6:208:23b::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4352.25 via Frontend Transport; Thu, 22 Jul 2021 13:38:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 220d4daa-f5a3-4df2-2622-08d94d160f1f
X-MS-TrafficTypeDiagnostic: BYAPR11MB3111:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB311123E65D1233F50D4B61099FE49@BYAPR11MB3111.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	xHPT2m/+QItChGhKnN4b0E2b2LN9Uj7n7Ea51E2qndOAtUW3Fx8tF2g/3ZlMDuRScKEvL1oGhomCCdLO0zTYZhnMeQT8WpYtdhqogTVVsoN30VvJKbljBe6GCcelgmTDk3/YSQjVyDelga1MT1CFkpxvLQG0uGE1WHrByM6X4HF3puS9E99LTx7OPVAzQYZJSKR+wpOIaPh7sJLG8XtP+BcPG728ljU5tPuGcRXrH6Wj68eXsXlOOKJZnwhgoljqCbYTuKFuWlBxGXep7zaq5+MlBQBx5SrjA23mwUz7ZbbiSO7rkZubcO2a0LKRSrCnnBSXg/EY10AWRglhn+fD5STGhLEA6bIijZ0xWjI2ew602JR4bvANEGqAHceUmMDfeS5NrNsXjQ/0dy2Z4PUq5CosFpFtxvjAlMdk4GP3HArfsdxMOWu9fJo/uXSgTDYDbpvKpW96y0PBGC+WXDuOj52wbAp86XnKDZjZt4xb7RYC0dpY2H1hCd6b8QlYbKiNZIib/l0+8y6N5EXCPaLoILKJ/A+maQ9Rh//J3srbtRdqaLSFBVL9l6CP2r2P28ipUZ90riClsq/mjIUz3PxEc6dz8UO73TZ06yC69JjMPQdQEuqNRjenzUP66X5EgEVXnvsm+ZnZiu2Ucf6DQab1zQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6486002)(86362001)(6506007)(5660300002)(36756003)(186003)(66556008)(66946007)(44832011)(6512007)(508600001)(66476007)(8936002)(6666004)(2616005)(2906002)(6916009)(52116002)(1076003)(316002)(8676002)(38100700002)(4326008)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?0ztIiE4W7vjIr9/uBJ4QxYukqU2f6g/A/JK+2SIL83WIMuiMG7KN2The5wO7?=
 =?us-ascii?Q?MuF3k4XfPeDZc6t86VANYh3oVEy2Lhx645uY+YfkzgWCUtwMWBoYMMdetW5F?=
 =?us-ascii?Q?u79kGkh3oVAjJhOMtN9VnLbRzbJoSvS7vw7dv+1wRKK53ONqUTkDXFt0b+L5?=
 =?us-ascii?Q?GhXQntS3wuG+jTKhdu5NjC5ZxaLqvW3nVIDZWcnQlhZtvLFwNgiyWxw13+wO?=
 =?us-ascii?Q?cQAhS/1Y4IWJd0otca+pZolyik0BIgQ/X9yM35hzfminjA0+Qz23EZEtXIbi?=
 =?us-ascii?Q?dFNAbMnHURsSSqds2aahqzrtX0VmMs4VDc6OnGj3XqMlKQtNNAAvztvfathh?=
 =?us-ascii?Q?BpfSHcD8P3+qT+CpQR4YOV2x56CCrqYirLW11gQPhEbnXJFa+gNx63JSBXWx?=
 =?us-ascii?Q?pe/iRq96wR1rOV82QOWRjU5WEG8V1HNAllisJ6i7O+UBBzi9OQv9Yd/ZtNUd?=
 =?us-ascii?Q?8x9MYGIEon7U3lw0DXJ9rdXzmmbJ+tSj1JSD/OJW9+LbB7M472ZQBNfsYllK?=
 =?us-ascii?Q?nIt63mniTZcKtYTvqHM+vcwdAU0GRI34FrKNoO2pKsYjOXmyU22AVoYNr1Th?=
 =?us-ascii?Q?hfin50UQI2ahjhVzS/6/wItdqOj/PUr6JkDMKwpni6prxe0WMneH1832PzFa?=
 =?us-ascii?Q?n9raO7ush7TsNJ0Vh3NPmsavHgLFhAv73DCLrm/7ptrtX4Z68HC+s1Txunte?=
 =?us-ascii?Q?pR+WcYWv+8HUbulLovsye6Fy38xKl2+R0dxbIL1HkDeC+yxu+KyVZHWj5SaA?=
 =?us-ascii?Q?4kYi7W3ZYd1Qtm9UlH84wpqbAaNOrZDjTPvzG+0SwzKQ4aDkj4KbEpNAqcf4?=
 =?us-ascii?Q?x9YHt/YEUKypoWftSfcxNrs+SN1vQ20O5Tc3JrB0Z1eBXKHfdMtdXYeqG4jv?=
 =?us-ascii?Q?/97av+ZBE67bY1A08/djB8td29bOlUrwJGosHExdsSHPZKCvr89wg7t1XLF1?=
 =?us-ascii?Q?FE4woXv/ahSTY2wxp9Ndx0A1zisvcamJi+xbUlKTiZw4Bb4LY1RsWuvu0ysv?=
 =?us-ascii?Q?1I4n9Y3fudrBNm7f734FT5QpvozHMvfE6W+2jyJ3e5ACkBgjltgsvsTmVZmr?=
 =?us-ascii?Q?2RF7lXN7aOC75LP7pVQ4hxStXl0dS2JG/KTRJZqbXJ0hi5nFoQwFh4xfDBnU?=
 =?us-ascii?Q?m1xBbTms9Z+Uj7ZuUH6oQxw0omYHtAxtxBlydSiNo6C1zkDOTrC2TBhIxSnT?=
 =?us-ascii?Q?l55AMJBTgCPFPyVjEFxuOsbLu2EA5tETC+haoI9s/jvB65/UqZqS1GGPYd3c?=
 =?us-ascii?Q?sExA7107D+tU0/e4GqyNGZyuyV3EO6t7kvcf/XTIK/lgoz3JE3Pk+fseXNdn?=
 =?us-ascii?Q?0AMCLgSRMqUVcaETt6sWa2z8LZ4RcvrruV1sp+M3hYcgww=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 220d4daa-f5a3-4df2-2622-08d94d160f1f
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2021 13:38:58.9593
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Yyyn64EGE2C+2eTsVm1DCHJfBOtvUmt1ubDX5ZiSHT2B6RuGXeTCYdpifCmeSWgJpZparKqj4/y94PvFb7lyOYv5TrqDbUKjQ6vEEh6vbeo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3111
X-Proofpoint-ORIG-GUID: pJaMgAIFAGJMTX1DorIiuf9yH0lY_fT3
X-Proofpoint-GUID: pJaMgAIFAGJMTX1DorIiuf9yH0lY_fT3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-22_07,2021-07-22_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 phishscore=0 mlxscore=0 clxscore=1031 adultscore=0
 impostorscore=0 mlxlogscore=999 spamscore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107220091
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Backport for hardknott since we have been running for ~1 week with this
patch in master and the same load limiting may help reduce build
failures for hardknott itself as well as when its builds are running
alongside other branches.

This adds the "-l" option to PARALLEL_MAKE in config.json with an
initial testing value of 50 (the previous iteration of this patch both
had it set to 100 and mistakenly stated that this was a percentage,
rather than an absolute representation of system load ala top/htop).
This option is supported by both Make and Ninja. However, we also
require the "--debug=j" option to be passed to Make in order for the
latter to report perceived system load in the do_compile logs, (which we
need in order to track test values), and since this option is not
supported by Ninja, also add EXTRA_OEMAKE to the EXTRAVARS so that we
can determine if the target load percentage needs to be adjusted.

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 config.json | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index 110b0d9..5689cb9 100644
--- a/config.json
+++ b/config.json
@@ -43,7 +43,7 @@
             "PREMIRRORS = ''",
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
-            "PARALLEL_MAKE = '-j 16'",
+            "PARALLEL_MAKE = '-j 16 -l 50'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
@@ -57,7 +57,8 @@
             "SDK_INCLUDE_TOOLCHAIN = '1'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
             "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
-            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'"
+            "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
+            "EXTRA_OEMAKE = ' --debug=j'"
         ]
     },
     "templates" : {
-- 
2.31.1

