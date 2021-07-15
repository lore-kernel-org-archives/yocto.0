Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.8366.1626357822950586428
 for <yocto@lists.yoctoproject.org>;
 Thu, 15 Jul 2021 07:03:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=R5KRxSJe;
 spf=pass (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2830b77ae9=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 16FDwBuo018338
	for <yocto@lists.yoctoproject.org>; Thu, 15 Jul 2021 14:03:42 GMT
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
	by mx0a-0064b401.pphosted.com with ESMTP id 39tnjw01ev-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Thu, 15 Jul 2021 14:03:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XfWctWQEeI0Mz8iDHSNHyhVnJZ+gwcwPz8iAY2/qk9TjMiV/KHNjCe4Qou8lVxA3bfcNEvXx58ZTdQd2D/IQcOUocli6BJfNYdpuYy7/3QKGDmvX9MGGWtMROfLLhujNHEPMGedDnj3x2nSeFFJLxLRoCrWw0kWt8BIokvWct2othaIe5NZWonZNDwKb/0b8PkaH4XPJ6eKzjrSyeQZHy2HitiVhPS6X//8Pw+Y1LJG2lte5YJjQQieCaKAcPytNT5W3VYV3gPSaGcJB1q67ZzgP/sW1piYolE+R7cI0/svudU8maX54RY9Q6LdKQ+ev6Z3ui2znB4/+HHLUHZPV/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JX++qfwlVWpDeghBqdC+v36bDD9tNcz7/dMUJtULJX4=;
 b=L/zIgAuLYB5DFit/cMm6Qx6cKGqvPvcn4H+XsLQ34XKShSIWKpQTlwk2Napa/t5FuUDzNfBlyd7MPxY2IvoQVgRLr2hP1OiHDmewfRTCsBTC7d4pmhv6FIl1uDQR1o2YISEloekbGQndseYrYTEOkGbobSehGyvlkEXcC8j5bcPVqXzwyT8oV9yB9hwX3RGpk2vvsgieFKFr3z/9K97rBYCg/th35QAp4nvZa072jqQ7ltRSJlDvs6PD4bTNGu4eYY5UQKopiRMrpRsmFiYJJRzykka0pMWXXsJKfYjictX217/SU56KTbWT753n6MmHPnLF7PSe8Ivnljyi4VGrSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JX++qfwlVWpDeghBqdC+v36bDD9tNcz7/dMUJtULJX4=;
 b=R5KRxSJeMFohJrOkl8CtRzqRazicQqV//nx17oLQs+rtz9XYhiMWaxa62UPI1enZqtGhl5czwR5W14la4+EgseZSspFs+/OJvyR3oSA1H2dJ1omGIrs9KSwF5H3m9vJiUBVjcAGJo8g6mXtkb+f1JuOaRs49ToYr/i7oDrXVqS8=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BYAPR11MB2918.namprd11.prod.outlook.com (2603:10b6:a03:92::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.22; Thu, 15 Jul
 2021 14:03:40 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::8d6:5e1b:3029:341e%4]) with mapi id 15.20.4331.022; Thu, 15 Jul 2021
 14:03:40 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][PATCH] config.json: set max load in PARALLEL_MAKE
Date: Thu, 15 Jul 2021 10:03:28 -0400
Message-Id: <20210715140328.350924-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: YT1PR01CA0072.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:2d::11) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::f245) by YT1PR01CA0072.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:2d::11) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.21 via Frontend Transport; Thu, 15 Jul 2021 14:03:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: da95fbdc-260f-4fca-4ab3-08d947995928
X-MS-TrafficTypeDiagnostic: BYAPR11MB2918:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB2918E303BBE294B7FF0EF2489F129@BYAPR11MB2918.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	+6JHq3ftXULrO8sH653yWDEgl1d9evHeY3Mre16Qqf7oNtHpidlL8zXIUaM8YesO3Xx0JLfkGldrPMbv0Dqlqk52ttRM6fki9geLydZ0OVcMErZkdjgRbPoRkK5CVxjmke6dSamt6lAd4RTO1b4153esuf5LG3L7qStek2JUyx9fWilpPzsYygbB4iYTlTH3fXpWVCPkVHPcBXE0D0hbi5BS1RYHepmfEqtPXtkIrMR4f+lGXYk3iupObRKbEsTvBak3yuMGOcRshRO2IRy3FKM4XlF0h1hmN7uc/9hHLOYo+hQLpLd9NBqSowd/WWa8oMT8k2Y4bGp0EOdWoUMzbvqYRG1wvr8ECspERrGrfucTOTm9fqGQE9Em9kwGKo3fnG3U5WKmOxlIpMopskoUuibSq0+6+HQbB7q61SbVZxl9lkfIe1y48rdytS1JxN+CG7Ly47DEnEJnMDgszVb3kAe2fEFngfG2+l2YHmrORugdLpZ5I1R45o3t/YLzseBQMnX5Wmtxn9u0gy9kbH/Ic68qjt4W7XmPXXVHdC62CpDmIDDjTAguOgM1Dq+4ojcNlEyP5j3fbKEb7D8vg2IqT9buMptLfIR6UfqTqgM8K6T8OvAJoGwXDZ6PhUHCAe47nb/T7xludFwBHhTllBcSqGve81QH93CQhN3eHGEd+BaWsuGVLDJNXodCDc2PF792U7Iz2nb5dzJOVd4KB1MhkdurcFW4O7wiFDv0rEvIyDg=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(366004)(136003)(39850400004)(376002)(396003)(83380400001)(66946007)(8676002)(6666004)(36756003)(8936002)(44832011)(966005)(478600001)(2616005)(6916009)(38100700002)(6506007)(86362001)(52116002)(316002)(2906002)(5660300002)(6486002)(1076003)(66556008)(66476007)(186003)(6512007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?7zy79nqcqIIBlFxRPMMwivQz5y9Pok7D6Flp/1yqzTZDXC+O1mA+xURbb9Mj?=
 =?us-ascii?Q?ZSQf4yx2KWBBhpBN9HJjxB68EROSABrwrmzA2Dse6uHGfud79Sxo7Z4uyh7e?=
 =?us-ascii?Q?cjqGJgUiFFOr6QyPegG32F//ghlJjRAR39tx4y0wQDr0C6WdhswHlPtfTuag?=
 =?us-ascii?Q?oguV/+WCzi+9MRzoR0arC0mfg5FlAhTsk6MWjrsDdSog/2pvnXZdlLTCQ4wF?=
 =?us-ascii?Q?UIYBfimE7UPvw5t8KyCBPT/J7+RJD4vAwiKX3iYghgt2UhRB92XQ0rjLzgPc?=
 =?us-ascii?Q?FUJEzONN7K0ZYUyGL64qOg5Ls4NlTLtr6HHX/yb32HlFytXMdhQKaBM/yv7q?=
 =?us-ascii?Q?YQQLe/AVWBDWYbQ8pVUCnRXBt4HVBxhb1tcVZ0qa3KCSeILcw/MRXC1fQfT1?=
 =?us-ascii?Q?oEZmWG+iKWLuI9RNEB3GxwhfyJ3Z8K9CAFfgERDQ3zkwINDa6OYwq70RyayY?=
 =?us-ascii?Q?9orAZrXO19TfdXUrwQdi1d8+JitjmzuAyQ2/cdAhx205pzi+r8Bxv34rHhOY?=
 =?us-ascii?Q?dDh+ZFvxF5rWOyjX5vyyp9RX8263ExDwQFsKvFGnGPqZZsaDt9HYFek1kDBr?=
 =?us-ascii?Q?lINVtq/sU/ixYop+E3oyt6XkeNIqdMudjuOlg3Ej4dr3epBScPqa7Kag+uyJ?=
 =?us-ascii?Q?xglJe38n22T8/JLxekRZ9dCeq+xi5zUNRkVKaAGoy7/4e8D6F949/B7bsUea?=
 =?us-ascii?Q?DCXj7D/zkYAPsBqWXfvYeBSX5EBpkjYYckozn41Ks9ylVtysMY4X05dZLH7G?=
 =?us-ascii?Q?j2/iyyZUjtAGs95tM+TpBZ6T9LtbcLzYVnDF4Fpe9eK9U4FHQbI0WGNeTelQ?=
 =?us-ascii?Q?NZIc7JYjfA0T5eIVJLHSm/nlPl4pc5az/STBoeBO/MJ6EnlWW+r0fEuajrLF?=
 =?us-ascii?Q?hCC8Gk4whZ6F2ocvAYhgW6Xb7L+Af2z3CYaXeMI13Jdc4oSxyWGIiFo5HE/G?=
 =?us-ascii?Q?tkpGdLTKs/2U5qaE3oNXaCUmkPNwnQDZ1N+VzcLv9yxvqFfplViuVhQNM/yn?=
 =?us-ascii?Q?5F4mbiL8NgdGaBH1cetDmSPhGoAIk6am+yFFoTTBxiSkf70euHfCvv4+qvxb?=
 =?us-ascii?Q?Oym7GtFrzBK7FyBNorWjcTBjHG47OifO6W98l1bf/xKhxrxM27HM2tXSzWJV?=
 =?us-ascii?Q?5aVRdVw03UB2Bj4LnwAlLdah0T6fV9Mt6pyR2ybXauVtykr7cZ/sJhEHrBJ8?=
 =?us-ascii?Q?AZ4s92db4zBMCbzPltNHMHM4EkX7Hc29XF4zJvH9fykia6UukhzxM3QS6Hk3?=
 =?us-ascii?Q?WQonWrwsPcakiTRjaCt9bYJ2fS4pyAsGs8LkIV336ZgqzstQXqvlOB9DHDXo?=
 =?us-ascii?Q?AE5G3qd20ifdiXi4J1dLzHA1BiKWxlgA3g446r0LQujwpA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da95fbdc-260f-4fca-4ab3-08d947995928
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jul 2021 14:03:40.3245
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 16LSLHglNubEWPnjhOwSVjKqcFB4+lCDWZRqKCyJqUed2L+ipWWIknwhQOmBtM+L0UALP7UaHeA0PyLhctjm9hOgoyJIech3gPZATy1hZBs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2918
X-Proofpoint-GUID: N6gOxlk4S4A9Uh6RVyhiQTGvzRd5D_Ct
X-Proofpoint-ORIG-GUID: N6gOxlk4S4A9Uh6RVyhiQTGvzRd5D_Ct
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-07-15_07:2021-07-14,2021-07-15 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 bulkscore=0
 mlxlogscore=999 lowpriorityscore=0 clxscore=1031 priorityscore=1501
 spamscore=0 phishscore=0 suspectscore=0 malwarescore=0 impostorscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107150100
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Add "-l 52" to PARALLEL_MAKE in config.json to limit Make and Ninja
builds based on the detected system load. With this option added, if
either tool has at least one job running and detects that the system
load exceeds the given value, it will wait until either the system load
average drops below that limit, or until all other jobs are finished
before starting additional jobs.

Since most autobuilder machines have 56 cores, this should help keep the
system from being overloaded during builds.

Reference: https://www.gnu.org/software/make/manual/html_node/Parallel.html

Signed-off-by: Trevor Gamblin <trevor.gamblin@windriver.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 7be0df7..3709b40 100644
--- a/config.json
+++ b/config.json
@@ -44,7 +44,7 @@
             "PREMIRRORS = ''",
             "BB_GENERATE_MIRROR_TARBALLS = '1'",
             "BB_NUMBER_THREADS = '16'",
-            "PARALLEL_MAKE = '-j 16'",
+            "PARALLEL_MAKE = '-j 16 -l 52'",
             "XZ_MEMLIMIT = '5%'",
             "XZ_THREADS = '8'",
             "BB_TASK_NICE_LEVEL = '5'",
-- 
2.31.1

