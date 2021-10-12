Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6389C433F5
	for <webhook@archiver.kernel.org>; Tue, 12 Oct 2021 07:01:01 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.10206.1634022060937719213
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Oct 2021 00:01:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=bW3o6+84;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=5919fa73df=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id
 19C6uHe3032472;
	Tue, 12 Oct 2021 00:00:59 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=gAkM4mPGwqryZigwzLHSF/kBBCKla/vqC0RgLzvluFQ=;
 b=bW3o6+84D1FNN0c39SUprtmblyx9oO/tbjMY72RemGDMu8s9HiUGNxe6enn3bnX9Bi71
 1bXlbnSmucY2ChKFyZuU6mRZ5v+AtdYlqso+37LxgW0svhjuYlB1b7IDZJuIO6Hmig0k
 nlWencQQyxYZhB+YwP/nI+z5k4acqL9fOWnnPxMscTSCF1V4JwZDK+JjCPoINkqIfpRk
 R60SZqXpJMgy14eW6f0yh9z60bpBmY1GyULo/KJitxOgU9c+OsqltO+h+9k734kiMjWG
 UMV6cjyNUxPxEwzmBA/wSo8nR9KFGT9RGx+4UdmNSuQKXcvpwRKN4vWECNZCqAh5GLOb 2g==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2042.outbound.protection.outlook.com [104.47.66.42])
	by mx0a-0064b401.pphosted.com with ESMTP id 3bmy72g7ea-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 12 Oct 2021 00:00:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XXZKGdPmDFt7/fzAJ1UNQfhtbrmMejVXopbfPWsGld8oqV+EZMKa1xTknGbsgCsWpFn9pvL1VGW6U3Ly1qxV4xxZc2mGuGi168vlaCnLwSl1LD5ZPnyonGXr1XIuCWF4tIOYrtATIq1y8FkYkw6T1IK/lJJi/ioTt+NjWCJbTIyCPr5rSbianIwzjsI/S6O4qWDyYc4J2AI6cXfEk+//BBvY0o44iWMs8VgFu5mqGmy7XMr31+8tnPgbxezBN5rjlZtlIwYnCUqAkRAuKMZHUrF08yxsZSHW8ZawwEkBYj/VXyY6f3NczVP9pJMUyv58k2GyKmobBR/16eV5lPWAxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gAkM4mPGwqryZigwzLHSF/kBBCKla/vqC0RgLzvluFQ=;
 b=F1xPRD4ZomtUSoLvAFWp+qkdKBJv+mT5z1QAf2FWyjEGrJ3g3XNy2shy6SvIKAiLKIJo5lZAbW2nX3Vfxf44nHrKns5gK5dvT5pL3vrIqxq8gpC2Ex4nqHisyu6bJDXKDxOXc7ZcvwHCi44yqE8vk9Zmy3KPUgsdp3RXFbVmgkzOgxBWYKnsN9BoKr3p6TFObbAma3ETVQdWow9GdtaT1jKBN2cIncMKUsCmLbPQhmgyfzmgPLCtrOlQkS9FE2/GKsG6U+avAtdAZ+0TdxczDMoh+/WGaN83b5oq+IQuIFaF/uy61/0jEZLvBae75QKeixvnwfrRtr9rncLL7nF29A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2239.namprd11.prod.outlook.com (2603:10b6:301:5b::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Tue, 12 Oct
 2021 07:00:52 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4587.026; Tue, 12 Oct 2021
 07:00:52 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 4/4] selinux: move selinux scripts to
 selinux-scripts
Date: Tue, 12 Oct 2021 15:00:32 +0800
Message-Id: <20211012070032.124425-4-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211012070032.124425-1-yi.zhao@windriver.com>
References: <20211012070032.124425-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:82::13) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 YT3PR01CA0045.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01:82::13) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.25 via Frontend
 Transport; Tue, 12 Oct 2021 07:00:50 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7b0b3232-e67c-4318-c270-08d98d4e0777
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2239:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB22394E55B45FE6AA8CA954FAF9B69@MWHPR1101MB2239.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4714;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	MpnGI8WMbL+jVput2TInySMfaJ9Ud9BhndkjN4TjYgzAl6CyjEhHtm/LAVHooikz8BIazajC6vQ7GRRQu1hdA5vMlPhAHTAF/Mau0sY61QQH1KZ0om5nDTOfkfp9xh/rYy6Sj82nbZpd5Pb8jlEmgdPD2eU/msr8qEKPSCbbj4stsdzGyALX3juzw2muSnJlhF69ifzB2O+qRvAhp0XXLvOlfQ4ZSO1VRiwLw6/s9ZzY61/bs1ZLxr46iPSYY+o8wzqbOWLesjWxGsY8ktiYu0R6MNiCveg6uqtV4Wmlkg9KSgjvQ5Cmfnps1viYYM8VwyXc3jTZH/0em18YYO5BsDC67yckZ5AfWBWhaY3ZIPPI2cmDVYTW5QkGkJ+5sCxlPp2aUws+v8hguNUEpMr4BGyBQwq+cQY1ein7jbYTKvxidrP7tvXcImlv2NlibafKrzKbmK1POjX9VOMEtbSI47tXqO2t7q3bm/ysrqx9F6gypHCwdrnhv2F6MEAIBBaXJmCCVUA/5klFvrJG0qoxb8XFrec+RclaZ/HIQ/34pt1O9RssE8yVmasoKt1Ga5+inRKEjRxB3fOmbuUZqF2OU9RBSIrJrLExq0bWykW5PJyWWsOkLfsf6Le454l8ie1Sm30+G2dzBNIDv3oikZHrAhG2R5yug12JFx/5g50ic721NxPUmQU41DoGYd/piQldqcQnlwoppCoDz51I8gk24vauHym8MIccA7o1F93fk2E=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(316002)(2616005)(6512007)(44832011)(956004)(6666004)(5660300002)(83380400001)(38350700002)(38100700002)(66556008)(6486002)(6506007)(86362001)(26005)(8676002)(1076003)(508600001)(66946007)(36756003)(8936002)(186003)(66476007)(52116002)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?YWJtmF5UNgemsmqTT1Ch7C/MobhsmDeydKIGzHPpNj5gN2mk5HKUMdNutSoN?=
 =?us-ascii?Q?mrr8BG04Wnx5xttUaCAmpiVFslKGIUiAaVk947/7r4j7d6owOPZtDFXOHNJR?=
 =?us-ascii?Q?3xn2s6ubD7YzQs1K4V7PdR+hnWj2Ziym+E4wn/VbeviTmftJUXJr9SRZseqH?=
 =?us-ascii?Q?W+DZplep/cPiTGhaQhYKXcnl/1FYQw3wlavziiSX+lGseXzCVrfkqYIO8SXx?=
 =?us-ascii?Q?XYf4or7U4n0df1gCHIZlQR0f7/9iy6bfP0agkdRqd1tB2P4no8f7UKPMuJsr?=
 =?us-ascii?Q?EwpJZ03DoxM7/5vX+1dcQL1/EAW8bm28LU+0Dp+zaQigEPdctxPZhDgs6oHL?=
 =?us-ascii?Q?KHXTKskmvOqZRLob80xQ1O13JzQdAhAAcJnpLu5Lvbz2AJ8ft+7C9w3aURfU?=
 =?us-ascii?Q?Zcfg2DTcuzgZZC7ioEA62hE2/gV6e3IdD6SBhURIU600g+lPrRxDd514YQrr?=
 =?us-ascii?Q?es+d8XEU0+/XeMBCZv0yjL+qz3syAybFbVXXC3C3kYAhz5NFlLubiNc04DtM?=
 =?us-ascii?Q?n9LkvuMLlMfhAyp4a1EJPXXXO54193EEvm2QhEhLkIiKzCS4f3kCDDUnSloM?=
 =?us-ascii?Q?w4JtNYpkmKfcb6a1+5iHCJPesOK8R6fBLv47IEgVzdR9QH3HSnnPl8ayOwph?=
 =?us-ascii?Q?Rc082vS/2vh4wzCoakqNABtWykyW6zy/3JttAFYMv+zEBAq5fE+IU9FpfFa0?=
 =?us-ascii?Q?oxIwYPRrAUQFpba4sm2yR3vXeJ/oaAB0ImKLa8jkrJxBH9GJRWH3DK2bqTJr?=
 =?us-ascii?Q?htfktfyQFagR2a+9lCK+3wEfUY3a7dqOqCVv3E0EW8pofxqk4WoJKE/pPZeJ?=
 =?us-ascii?Q?2FGJ778Wa+DRFALUdKV4ie+vz+Qi5+bYBkxxGOZedapw6v1PacNHPqdCW92J?=
 =?us-ascii?Q?UwkGIJ+prWHinvCEnRrj0WTwmI5XIlH+aa4CbAqWABJC5EPS25HALsSM+iRm?=
 =?us-ascii?Q?+y9WD4nM6Yc8nuQWvZ+cILutFRrXuyeDs/L/Zazcp98FgVjJQyEmAeSI0BGS?=
 =?us-ascii?Q?p6efOd+0J5SjybGBnFQxU5iWmqltUFQYoFkYUVNcSD2r183/nFJXnz0PzkSK?=
 =?us-ascii?Q?Cj2Q6NkueQ+Zzp72HQ0kt98w/IqxOtPaMKETizzUOCsrIWVQCGpWBu34WQgf?=
 =?us-ascii?Q?mB8y8QBH/bBVd04pg1BXhybryvZlgwU6mxCB3Ia8/fDvnh0nr75lqGrx0TUa?=
 =?us-ascii?Q?WNutd1M6sLDgHyBYbD6gihOmGwPRoMkiBaB6NhYMwtwtQLu/3IDTAz4ceQMi?=
 =?us-ascii?Q?klq/FpbX+ATNf+j16+swUDVuGUuLjXsPHiFlP0QLOEnvI9yJbk9MgA7ARhRX?=
 =?us-ascii?Q?eJCrpFXeFp2zu3jwgD4NZdxd?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 7b0b3232-e67c-4318-c270-08d98d4e0777
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2021 07:00:52.3573
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 EYYV1W48H0EqHAeyh8er38835ms5EzXUwvjiq//+tGkx9V+5iRRC8GRHmQcpDjdsj0wk7+ZQP/60lN91WHUR/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2239
X-Proofpoint-ORIG-GUID: 6M8NG1MTMTIfPgAQQ5gnLhVlbv2cI2uM
X-Proofpoint-GUID: 6M8NG1MTMTIfPgAQQ5gnLhVlbv2cI2uM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-10-12_01,2021-10-11_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 lowpriorityscore=0 mlxscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 mlxlogscore=953 clxscore=1015
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2109230001 definitions=main-2110120038
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Oct 2021 07:01:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55031

There are too many recipes in recipes-security/selinux. Keep the selinux
userspace recipes and move selinux scripts to selinux-scripts directory
to make the directory hierarchy clearer.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux-autorelabel/selinux-autorelabel.service               | 0
 .../selinux-autorelabel/selinux-autorelabel.sh                    | 0
 .../{selinux => selinux-scripts}/selinux-autorelabel_0.1.bb       | 0
 .../selinux-init/selinux-init.service                             | 0
 .../{selinux => selinux-scripts}/selinux-init/selinux-init.sh     | 0
 .../selinux-init/selinux-init.sh.sysvinit                         | 0
 recipes-security/{selinux => selinux-scripts}/selinux-init_0.1.bb | 0
 recipes-security/{selinux => selinux-scripts}/selinux-initsh.inc  | 0
 .../selinux-labeldev/selinux-labeldev.service                     | 0
 .../selinux-labeldev/selinux-labeldev.sh                          | 0
 .../{selinux => selinux-scripts}/selinux-labeldev_0.1.bb          | 0
 11 files changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/{selinux => selinux-scripts}/selinux-autorelabel/selinux-autorelabel.service (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-autorelabel/selinux-autorelabel.sh (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-autorelabel_0.1.bb (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init/selinux-init.service (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init/selinux-init.sh (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init/selinux-init.sh.sysvinit (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-init_0.1.bb (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-initsh.inc (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-labeldev/selinux-labeldev.service (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-labeldev/selinux-labeldev.sh (100%)
 rename recipes-security/{selinux => selinux-scripts}/selinux-labeldev_0.1.bb (100%)

diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service b/recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.service
similarity index 100%
rename from recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.service
rename to recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.service
diff --git a/recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh b/recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.sh
similarity index 100%
rename from recipes-security/selinux/selinux-autorelabel/selinux-autorelabel.sh
rename to recipes-security/selinux-scripts/selinux-autorelabel/selinux-autorelabel.sh
diff --git a/recipes-security/selinux/selinux-autorelabel_0.1.bb b/recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb
similarity index 100%
rename from recipes-security/selinux/selinux-autorelabel_0.1.bb
rename to recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb
diff --git a/recipes-security/selinux/selinux-init/selinux-init.service b/recipes-security/selinux-scripts/selinux-init/selinux-init.service
similarity index 100%
rename from recipes-security/selinux/selinux-init/selinux-init.service
rename to recipes-security/selinux-scripts/selinux-init/selinux-init.service
diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh b/recipes-security/selinux-scripts/selinux-init/selinux-init.sh
similarity index 100%
rename from recipes-security/selinux/selinux-init/selinux-init.sh
rename to recipes-security/selinux-scripts/selinux-init/selinux-init.sh
diff --git a/recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit b/recipes-security/selinux-scripts/selinux-init/selinux-init.sh.sysvinit
similarity index 100%
rename from recipes-security/selinux/selinux-init/selinux-init.sh.sysvinit
rename to recipes-security/selinux-scripts/selinux-init/selinux-init.sh.sysvinit
diff --git a/recipes-security/selinux/selinux-init_0.1.bb b/recipes-security/selinux-scripts/selinux-init_0.1.bb
similarity index 100%
rename from recipes-security/selinux/selinux-init_0.1.bb
rename to recipes-security/selinux-scripts/selinux-init_0.1.bb
diff --git a/recipes-security/selinux/selinux-initsh.inc b/recipes-security/selinux-scripts/selinux-initsh.inc
similarity index 100%
rename from recipes-security/selinux/selinux-initsh.inc
rename to recipes-security/selinux-scripts/selinux-initsh.inc
diff --git a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.service b/recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.service
similarity index 100%
rename from recipes-security/selinux/selinux-labeldev/selinux-labeldev.service
rename to recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.service
diff --git a/recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh b/recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.sh
similarity index 100%
rename from recipes-security/selinux/selinux-labeldev/selinux-labeldev.sh
rename to recipes-security/selinux-scripts/selinux-labeldev/selinux-labeldev.sh
diff --git a/recipes-security/selinux/selinux-labeldev_0.1.bb b/recipes-security/selinux-scripts/selinux-labeldev_0.1.bb
similarity index 100%
rename from recipes-security/selinux/selinux-labeldev_0.1.bb
rename to recipes-security/selinux-scripts/selinux-labeldev_0.1.bb
-- 
2.25.1


