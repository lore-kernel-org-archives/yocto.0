Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web09.7769.1626960556618730290
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jul 2021 06:29:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=g2e9iE33;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2837e0545f=trevor.gamblin@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 16MBnNUv003270;
	Thu, 22 Jul 2021 06:29:15 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=B9PXOOS0+2XJkQp8VMnQlUVE3RrISnSqsYq/LC+gH3k=;
 b=g2e9iE335h74WxcHCocvUIMe7ls73otbJxWMDkhRf8WwFYESk3L72KbPYjZNjbrxFrkJ
 O22SbeJwaiIj1C42JEDWBoNyOISrm+s2T4gxeDOD3autqtDdCJvM3ExovPWKCr/UY9WT
 W9hEGFhVOttUAqV9ayPo0E9olsMQKr88BMwJAcq9EeDDBveK6OctVKCjH+GGKNMPL8Yg
 Q4ZigAeuJVTfdbgRugzpvta/tTTNrMdh58rYzWVdxMKIcjDTDGgoeoMat/3K0S9X1kpV
 qgExXtjgMyjzq/B5yQ6n1LbdRAFbd2by+vVbNcy5+40bGVwD1ZcpPyXfYwu1nv3IlvNU aQ== 
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2109.outbound.protection.outlook.com [104.47.55.109])
	by mx0a-0064b401.pphosted.com with ESMTP id 39y6kr8424-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 22 Jul 2021 06:29:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fNgNQ9Fr1sozGzI7x4FqySY4RBN0axGo9E+gvqYMSsqr/jQAIa74MC+RnXY6EVNark63KxWMU3HbmSX2BFDHXWddCE6rGSvZchPWI8cdPNz7LmdIGRvpV2ld28UxD8v+pNP4oq+mE+iR0DzMMymoTgvRoS4eeZo6gqc0q1uXTBgtboPY+kA/v+F7sBLqSTAz7M3MPGeRFfhCCBfBYIKckZa58VaXN2CO2m4HiZxo/jbGDqaypJAH1caxpNIl1lEd1qk4IL2Gi3eobxuDAlhAKWVKoW8zscpcZhmhaVxFPYMTJy9m6t86BnfTN4aC59dF6mPJRtoISegT+fvlhZFKjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B9PXOOS0+2XJkQp8VMnQlUVE3RrISnSqsYq/LC+gH3k=;
 b=JK/KvolKKF1+YJSyLvS2la1oUdAeL6lR5AD6Bc8fAHSv/qBqNWhid9H2OpMBkPNyaAxCh3GMsW74tfEOQgAczo3UwmjUoXEQsIYrGc7L7os3jEeqrQV4V5mdcdQ/H2JrzsPq3nj7yrXXKUuPF87FR1JDzOqYSBdK86QbIOWAuSmx4knLApNQMcdE7C+HBeyP5H1VeukQGuts3mTRgVT2bD9BlG67wNq0DGNmzwKvFG/53ZhfqY/BCju+sReKC3gdwPZ03N/AhWTYW45Imdv4EDNCXc2+VX+Ivr2iJroUf2Pw0cNCPGKOkQgsGAABmErloaFdo1uGzXZN+LdnJreHhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BY5PR11MB3909.namprd11.prod.outlook.com (2603:10b6:a03:191::13)
 by BY5PR11MB4152.namprd11.prod.outlook.com (2603:10b6:a03:191::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.26; Thu, 22 Jul
 2021 13:29:12 +0000
Received: from BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4]) by BY5PR11MB3909.namprd11.prod.outlook.com
 ([fe80::1dda:f315:a48c:fd4%4]) with mapi id 15.20.4352.026; Thu, 22 Jul 2021
 13:29:12 +0000
From: "Trevor Gamblin" <trevor.gamblin@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: anuj.mittal@intel.com
Subject: [yocto-autobuilder-helper][gatesgarth][PATCH] config.json: track system load with PARALLEL_MAKE
Date: Thu, 22 Jul 2021 09:29:01 -0400
Message-Id: <20210722132901.150565-1-trevor.gamblin@windriver.com>
X-Mailer: git-send-email 2.31.1
X-ClientProxiedBy: MN2PR15CA0047.namprd15.prod.outlook.com
 (2603:10b6:208:237::16) To BY5PR11MB3909.namprd11.prod.outlook.com
 (2603:10b6:a03:191::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from yow-tgamblin-lx3.corp.ad.wrs.com (2607:fea8:c29d:d7c0::f245) by MN2PR15CA0047.namprd15.prod.outlook.com (2603:10b6:208:237::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4331.24 via Frontend Transport; Thu, 22 Jul 2021 13:29:11 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ba8bface-a0a0-49ca-133b-08d94d14b18b
X-MS-TrafficTypeDiagnostic: BY5PR11MB4152:
X-Microsoft-Antispam-PRVS: 
	<BY5PR11MB41523F41E23920E1E2811EDC9FE49@BY5PR11MB4152.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	rACIhYk0sdqmjt4v4JGSAeQkfKqaqt9ElNbd7s6TXSKohPShtNIyCtY4ynuetijR/V2Iu1WDukEOgskt4N9qL5SYTwXzMrexYpJZGVbujXpoAI4vgW2r+ePXOKUKnd5pKgJj98dvdbTL+2HhaCiNDj5EG6yLMRC+jmCt0UAmXsETfNMsFzvrKLpEL7+U/1lg8Nq8KVunYLMVyH9i/ogsmy6c4BJ1mxWEhREPkUgcHAlk3mczFCg9s804UcYydwq9oWcSpN02uV/VU9UqFLuru+bJSy4mzsDua55GLBtlUen2Px5ibhxCvbzfC3k0/w3Urh8MuRzUaJS/i2bm2C0OPvUW60uB56wvmH41QvJynBhqX1QSxEOCa2tIiN6HW1Rrq+fV3uMk+U5fac75LcdbmiZICloKaeTIjZHnVcXrWSYlwxjCtF1IksYhqy3MbsBeKdbVOZOp9eev9IASdYy8K9V4dPCjcc3Yl+uA5NmCjCrUa9kSrC/iAHcOtszJOrLo2kArwlKdSm43PnjTVPIjlozNiaFdaOZDfSQ9kXJg4Fc3hXcqzcZjhf/grtWLtQ3TX7ymAv697igKjHOjcjwvW3LLQ7M1kAR2kWGYbS6xojZa0U9u/e0b2QBh24/2YUWDYx4lld9aUBRPUGZY6mF59A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3909.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(39850400004)(346002)(136003)(376002)(396003)(366004)(6666004)(5660300002)(38100700002)(86362001)(83380400001)(186003)(478600001)(2616005)(4326008)(6486002)(52116002)(44832011)(66476007)(6512007)(8936002)(66556008)(8676002)(36756003)(1076003)(6506007)(6916009)(2906002)(316002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?/PvW5VGV51yXrIOFIc8XyVMojwwQBeS24j0GfobGcsO839C5NmPh3yQmaexK?=
 =?us-ascii?Q?fA1t94nhNNg1FVxkW26vj9mPFt2fOq+snImP9kU4Rw0Qpf8qxVsKlUjmcQYt?=
 =?us-ascii?Q?MFTHGWXNKE4k+om5cJMiOQAVbfRcycuaGyURs3TWX43EM8U1aj4AuhgX0Rru?=
 =?us-ascii?Q?YwBUcaxvfWXU9Wezy+B9UCz6F8E9PF6f2inU3IWg3P60usoKGa3SJ1DinZ+w?=
 =?us-ascii?Q?qNKtDsbRZ7Ravo8wPzAfXAq+GL3mpzvl97VfHKhmpuPg82Yczir9uYhO5sq8?=
 =?us-ascii?Q?h/PUEdAcqD4gF/qXuMg4ihE4+tGxXScGKq/pNi6Y9lSqzx42ksR/up8Vgpz3?=
 =?us-ascii?Q?s4dxgDwuRsRWJZBBRMzu3+duhi9Z916F+9TY2nNq7ZYk/J3xmAv5d0Mn+J4d?=
 =?us-ascii?Q?RPvXijMINomaQYkdsS6vzCUfNeZsSWTEQGLrmxgIBDE4+In99jfsMqvyk9D0?=
 =?us-ascii?Q?Ps51+lQhRJKLm8cww8F/fRYT6cycsvBy/9mKz/Iu7JAQomh9MIXWlv1MsKCc?=
 =?us-ascii?Q?0kCxcCRdfv3ks8ri0fI7vgIIvXi3p19R09A0RFnvlEyL04eXJ7sFOoZpAAh+?=
 =?us-ascii?Q?4NnoGFoqOCDzyyLtNVSPh6BQe/sqwd33S2mq5lNWcdfYX7eNq2wPLl4czg0Z?=
 =?us-ascii?Q?48NZuoGSfOg742W9qB+kZlmrD9CAdMPBpHJ1TdR9l+MSnzsgD3sC3DnRO/R9?=
 =?us-ascii?Q?JTtz1hBtCtO7DodJntHURr2m6HxHCWv+COUrRI/FWyEteJyrNYBdFaQdv72W?=
 =?us-ascii?Q?FtTKb9Lw3Xr62HWoWdLVIr2GH9UlK9wpNCjm1bufGsr3kMEL+uuOV4L9uRa4?=
 =?us-ascii?Q?2D2LeI8u/U/buKrhFCnKmM/HKu115QNlLUpKR+UTWpV4E2Wq0c56wwAdlshq?=
 =?us-ascii?Q?NhEeQ9UgFzKKSDE7PCOJLFoNNCGdHlvoPQhSuKObe6TAxlWBMBmwLfRtG8li?=
 =?us-ascii?Q?liqkoKPSXyKMn0ms93r4gE/TczM4UgIH9S5uM8YA7NRNAPKDuWCvdkutRHkt?=
 =?us-ascii?Q?LaC1BsJ4t5hXp7eHEwQdK6+WdpSK5zwJ98BsqV5IjL7iTK6ieuZDni+4XnS2?=
 =?us-ascii?Q?tddDOIMr+cA0bLD162ps7RnNNeP2SSnnlBaLY9qVFpC0upRZTxuPDC8pcQ0v?=
 =?us-ascii?Q?sagXKAE65wQEtawKojhtANaslq9LWFmpioJt8vpW82IVFOgaqyh0EVHCinp5?=
 =?us-ascii?Q?TB6jRqoUopT6lbdYSQUBYfjtAYsN5I9ZvWOVubFBDKvoQTZpjxP6wBT6qiLY?=
 =?us-ascii?Q?wacVSmGnzf73z47qyloS6rYji+8vJV1vHzqfO4kZHS4/ENfuIRK3s6+MIeWa?=
 =?us-ascii?Q?JbloVNT4QikH1914H1zURJCCrfhayHEcVix1IDCxMcrEug=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ba8bface-a0a0-49ca-133b-08d94d14b18b
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2021 13:29:12.4611
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /pqoH87BSUw8Kwnt0lvngo7DHQb5m9guo2TnfW6dF4miyMk56Adz5Jf20yq2o6rupgsn+JpB34k0KbYLBFh+bgTU77ogLDKlLsTiJGe9flk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4152
X-Proofpoint-GUID: 639g5X9uoNpK_Ur8XUsv5_wBj7CWzGoa
X-Proofpoint-ORIG-GUID: 639g5X9uoNpK_Ur8XUsv5_wBj7CWzGoa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-07-22_07,2021-07-22_03,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 spamscore=0
 mlxlogscore=999 lowpriorityscore=0 suspectscore=0 malwarescore=0
 phishscore=0 clxscore=1031 bulkscore=0 priorityscore=1501 mlxscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104190000 definitions=main-2107220090
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

Backport for gatesgarth since we have been running for ~1 week with this
patch in master and the same load limiting may help reduce build
failures for gatesgarth itself as well as when its builds are running
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
index 5dda653..8a4343a 100644
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
@@ -56,7 +56,8 @@
             "SDK_EXT_TYPE = 'minimal'",
             "SDK_INCLUDE_TOOLCHAIN = '1'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,100K ABORT,${TMPDIR},100M,1K ABORT,${DL_DIR},100M ABORT,${SSTATE_DIR},100M ABORT,/tmp,10M,1K'",
-            "BB_HASHSERVE = 'typhoon.yocto.io:8686'"
+            "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
+            "EXTRA_OEMAKE = ' --debug=j'"
         ]
     },
     "templates" : {
-- 
2.31.1

