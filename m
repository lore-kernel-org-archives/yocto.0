Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88193C433EF
	for <webhook@archiver.kernel.org>; Wed,  5 Jan 2022 08:52:19 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.4771.1641372738025334778
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jan 2022 00:52:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=ipOL5WkQ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=8004391f67=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 2058hO4Q022034;
	Wed, 5 Jan 2022 08:52:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=GsdlP1lHkIhsnquO8SKyZgKVsZv8+mmyeuJTKXUcLN4=;
 b=ipOL5WkQAjaIhIOz1lCPglCqETfPaMCiWUPNvVefc6UYEAirXIYzSyIMCC9E+hMCIdiJ
 CHyL9OQWB8W+MBAdMExOUnGw/UXoViX7hQBMe17K9OB3oTW7VyJDE+9eSMoZbquocMYK
 f0cWJcEeDox8TwvxEwgTtecrt4ZOiss1SBjDh0bqRdYwmU4xRxtBD0reEmy76NRYAtEZ
 LDxrdHnBTZ+hczfZIH788F9AvKg2jfs56RBroAwAeK749USQDfdyvDnYpA5IiDh7qn6p
 EuS4eHiSwU2gq4yaqwhNLIpeeQy+jqDOPYwqK8+maRh0+72vzxc3KocCiInOfqag9iLh lQ==
Received: from nam11-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam11lp2173.outbound.protection.outlook.com [104.47.57.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3dc53094xb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 05 Jan 2022 08:52:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLV88j/K9s257mQ2O7bX2zBFo+ZyoeKUU98r/l5EqS7ZacFSW8aR9FlHffi54Kw5NK1o6SMIfAUbp6NmJP4z5USp8ftJOpLZYRmmPKkPgvlgqqVA4vdYXbhSnvG0VAYvlHq4ylp3VgHPcn7QZ5l9IydPNWAkez03+dKkG38sX2AXsmQw6H68yqd5VpkeOW19Wz/mFQ0jAI25cV+HUxrWwqMrdyVbsGvQ+e6zr1Cf86PqBvkp33IPNAOtdCw5i9QzabtRmRdFmkvPmfVYZRM7amrjyDysL0hQtPTYCONfr0HPytBfR5diUXOELsQuAd+VkCOwlzE0uAhhyRcHuzxOhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GsdlP1lHkIhsnquO8SKyZgKVsZv8+mmyeuJTKXUcLN4=;
 b=LLI5SliJiMeVuXT1xJu8CpaAFzeHiQ4AYwqLDMJMNCNpeaHdeQoib6Hbkg1W94Yl2z6ZRKonbxycY+0wN8vVLqbSlucFXE3jHGh5R7nYm68DDS2dDqXism8Is88qWiycGlfnwYdLjPPSJ8j81a4uRoNWZkis5JQ9BqbtVspp5vftAw40v2m1znIaotjatrTKjJG9P1m1hh01SZCsnCHvUZkewBjzYVLIJ3/Byl9LTwFMfUFauF1YWK4lz3wWSYtH7/fSYqMda0irOOxfTVkzl1ULCCZPYGtMmEdzPlzB7vcAYNX4cY0f7GpI/FCAHegYKzVRtLnb2iI653JgEGypuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4769.namprd11.prod.outlook.com (2603:10b6:303:91::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4867.7; Wed, 5 Jan
 2022 08:52:14 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%6]) with mapi id 15.20.4867.009; Wed, 5 Jan 2022
 08:52:14 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][RESEND][PATCH 1/4] selinux: move selinux scripts to
 selinux-scripts
Date: Wed,  5 Jan 2022 16:51:59 +0800
Message-Id: <20220105085202.69468-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HKAPR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:203:d0::20) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 441a1ec3-1c5f-47f0-d2a2-08d9d028ab9d
X-MS-TrafficTypeDiagnostic: CO1PR11MB4769:EE_
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4769DDD1E9FFF6EAD0423725F94B9@CO1PR11MB4769.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:497;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	ROisI80FycwWsBqgG9aAOPqACuHLak6f7G+X5fN6eCQ7H1iTYVA7IiRPz3gUcKbO2apZR1FFUhDXRIKNpuvbGovab2CQz3fSloF9omp0A5F8BySCcpOpGprnnbd6adTjY8Ue0gQ2K+yczgTNtkHaF7zJz58FajrtdDPv1Zi0wFMKZjPmIj3sJ4JiGgy1EJrF1GSpT+IZqxsL9Fd8G8q/mOJz7FgG7YS1EsO2cZRjP5Ms6nj9U/C4RGLZ89XlqZFnawsfKXyQixq9StQxf1HrR7TxHDTeHLhvi4wArw1LK+176i8d2l/c8w9vYgHTUa6KYJBtbeCafmH4BYtWJrq6nzYeRsv07BOVuZPnig/xIyXZIx4+xC1uREdZEqfwoo836psVdEVZe35JD3Z13f/o3UT1vP4fckyWY30xH3LShhTbtrFotNvpjZRx5n6BQgqExVVc+4YfEbzlew82KQK2RIOUtwHavHq00TrRywKKHqQs/Nnx83AVhEu61KeCei/xRyYgE3bhpjv+15yXlg/PdissUzNI7gO3M+QcPrO8Ibyo0gn+2a9umpfFBkUe/eTmnkKB0rDHw0FIwPb3NqfKvK5f+3UMPX2sVCFFMgy3ySo22AJR0BtleG8FgFZjBw03ymXP2XHpOY/tPjuqYTp2Po8aUD7osI+aXk7ei17+HPi86JEEElz1V9SYLMYhwWQgnreoo8Yz4PW7QCyfnsa5VHCQqP/+6oHjSAZjCBRCADQ=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(66556008)(66476007)(44832011)(83380400001)(316002)(38100700002)(38350700002)(6666004)(6512007)(2616005)(1076003)(6486002)(508600001)(8676002)(8936002)(52116002)(36756003)(186003)(26005)(6506007)(5660300002)(2906002)(86362001)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?cU/ybKBrFjslwHyWlYX7E9nGEreZO3dfaEyVuF6Pj1280Hr5bLiOV0lE7ys5?=
 =?us-ascii?Q?wsZ5WVGIarelZ4HNGC1Ml0qzrZYZAbV8gBp/RGkVM+YHYa7JiY1PSrAziwrS?=
 =?us-ascii?Q?RCc7TYlkwOzEMv6GbC/Vq8jzqgHJg8NbbijrNt/84L9t9JntN8NUyLNPY/A+?=
 =?us-ascii?Q?grH6PDezus94SEIgBM5DsPt5vcxc7/7jO4NG6ow9vBA0eYZTXJINJWJEb4yM?=
 =?us-ascii?Q?UeJWnVorNDpdN753TcqhbGBCvbS6ZcteLSHDBI9wT+X/ebU2Qb9KeJO/Jhy5?=
 =?us-ascii?Q?utFPDBiPCJ7EIlC3WNCrd6AoLk3ixQzr4Od08uhIaxMmZQ25LoGAgen0iHvD?=
 =?us-ascii?Q?k/xo/Xlz9upg3kBCY9tBOYGgQhoDqvy+/2vF7tV/lprxkv5oCQinATD/BMuU?=
 =?us-ascii?Q?NrrR0xaxcnb8cIJN3NfSfv4WWtTN64RLGSyoIxOG5JeJelYON4E8980rkHgb?=
 =?us-ascii?Q?tHRpnm04uriHNabaELC6j1Kao35+A+LiO+wA7k/H580qjxyybAemk63gUhts?=
 =?us-ascii?Q?7D97xR0zxyPvDFgL0LKfO35y95aigBMhA/nMKbEdbEVbq2Zp3hIjYdhXkc5w?=
 =?us-ascii?Q?rLoJkIcKir2RE3Q3prhrDu7qZGzUk/XR+aVbmBMhqTZwQIQlQCel2E4M/Z5l?=
 =?us-ascii?Q?VPjwDBlnuiJ5k1sdn7vi752MP2iFOErhC0/9pwV/v0JBrwq3FdNst6WXcmNO?=
 =?us-ascii?Q?tbP6Q/udzYIOFnxPTehNQEil00i5lJreBoic8mx+kDm//qPweJRuCOC0bSrY?=
 =?us-ascii?Q?jqOEuEwAPWj3sva5GZBoyw27CEzmf8u1KdxGMe7P8b7mmVbD9y1D9T7v5Vz8?=
 =?us-ascii?Q?Z8X48kqZshewPWYlB9ofX6x5OxXQnfIlEBUEmOBHgtyWqcDu5tbfxLWd3/K7?=
 =?us-ascii?Q?yfzMn16P1Mc1z58qx9TsnI+iKui8oo6ByC9dLCJE6dAlevkbTrxm9rTLawss?=
 =?us-ascii?Q?7i0dTV6Kw82U2GQEAri3/4avtJ7q/klXTM4HzmUvFmb1FNc5NuxMsV4ckWQX?=
 =?us-ascii?Q?xE/5G5awF1eoKr4FGJGuAjyYxBp/5AYWJup1XQl4JLmubWFxpTkpuF6C9To1?=
 =?us-ascii?Q?5VVn6+OJL3Ol9JT/3k8Gwz+U/663DNgggNHPaLaO92Xoov0AknH9xH0dJBDf?=
 =?us-ascii?Q?arbwyAjtP1H/ok3YkHQ3/Dh23IVwQ0m5d3qfgOOv11mHwg7n6MTRcszECvGb?=
 =?us-ascii?Q?4Nm33mdk98ZVD12u+lt2WB3QcDEmzQ9bs4RcqWLO398cK7b9A1YRCBpVTSLU?=
 =?us-ascii?Q?IV0Zu2Erh39Lb2fwVrAYfGvwQzp7DYzQXMyjTsImSEbO9/+GStWq0Jzpba8n?=
 =?us-ascii?Q?M7QbKWXsz23xRH6Y5BA4zKRaoLFWxKy7O7wLeTYriI5NWI0PCePRYDa/Mc64?=
 =?us-ascii?Q?SPKi89oM3v1yg7l7VCiq5eCQAv5NyonlAX5ajfNGrd8Yfi7bv6tq/3v2kxsS?=
 =?us-ascii?Q?I2gRbxrA2D6cglvX92GTH46nn42O0ogWBZIbqHjk72t0Qbg5iuclICLFWxni?=
 =?us-ascii?Q?HfMNJF32ERv21EcLYF4b7cxt9twpSIQxvNKSOSNdn7y0FimuA0LBdmZbzAKk?=
 =?us-ascii?Q?QBGceVGd+Bl3X0blMcKjapY5SWyecjRX5WpJHmiutU1DfdtUZrRqlYZqASKY?=
 =?us-ascii?Q?rMcCIohiLDtl/o5ZDq2QOC0=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 441a1ec3-1c5f-47f0-d2a2-08d9d028ab9d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jan 2022 08:52:14.7087
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 4qaJzGjUTm4O3LayHZzX4UL/t6/ILNkBn1A9OsbtkrQJigJxs7nfnufX8/t/6Y+F9NvIfHj3uvbcq4ONpJiqkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4769
X-Proofpoint-ORIG-GUID: S7FwB11sL5zbJNJdOaeITOjQr3XLHTrp
X-Proofpoint-GUID: S7FwB11sL5zbJNJdOaeITOjQr3XLHTrp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2022-01-05_02,2022-01-04_01,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0
 malwarescore=0 clxscore=1011 impostorscore=0 mlxscore=0 lowpriorityscore=0
 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0 mlxlogscore=926
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2110150000
 definitions=main-2201050059
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jan 2022 08:52:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55734

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


