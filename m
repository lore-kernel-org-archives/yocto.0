Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.65780.1629348446959278062
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Aug 2021 21:47:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=Rq+qOGmR;
 spf=pass (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38650d81cc=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 17J4isuk005254;
	Wed, 18 Aug 2021 21:47:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=TR3d1BvF7x0CUsMyecB44+EKM2YoRMoh2XUGdJca5fM=;
 b=Rq+qOGmRJhHIHPgTQCBVOup8Foiu8CqLC76gAkkJYriFQTOSRbvJsSUDrW+0L8LwKmOI
 fBq7YZ5yRjGDEyx5YHD5+/bAnFhqqMMGGFZAMqc/qZwLOkqZLAN9EQaJ8wXvJPuU3wjn
 zZ6eq4lpBXPKE4LdhXjwfqGjonCckEVqmV1Zx8iEdBZDsF0rD72aICPiYF3sISSvPlJv
 z6MPLJ89pml9KtHQTPGdNmaMqrTkSfdQBDRo3nNevIsuW3iZE/f+dPjLwNMGFd5KSXCk
 ltNs0UCMVdES3mMKIAD9I0NaBsTnmM/aqrUPM7kBD2C9fQIp465h8glvsZMcWJbLS+A1 vg== 
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam08lp2049.outbound.protection.outlook.com [104.47.74.49])
	by mx0a-0064b401.pphosted.com with ESMTP id 3agsx8gwss-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 18 Aug 2021 21:47:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kTRfKpZs7zmhALE0Tuc93VyF3sHuu2gv7+7+onGmh+KAQ8gS1QwbhxBlc4TJVwWlvnk9162u1kOSTszcV7h95VlEtOVBNMudKWRqSQU5AjeIVCFzp+cIvwR0wjd4MLqrL23ZzDDFmbL7EPSlYzGOdvTOlTvUieT+KQotfHQiKln9pdcFdxEoO6vuiQfJCfx53nK+sU7IXq8adXMCcbUJWNjKEcTiS4UL6Zq2+RiSSRe0urhYD8TjforedXy+6hJcuNZTgolbKWFk6z59zMbVA8aeYyHWRNI3EtZn0HCCiXu2yB5jJGd/9sNy4djXjNNMAT6Lil4ANBcbTkCeBDKaZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TR3d1BvF7x0CUsMyecB44+EKM2YoRMoh2XUGdJca5fM=;
 b=MlejiVoN3M7Q84H5Buq6dRVgDHNHKP1LmnuNAyejrQ+RomOMj3xkFzSPFXCSMLghW2TkVwTgbzUwT8mPVx7isxXbJCRDmr2g1Ds8pxiwn40ghIUQ8qTeX0iXqD3llV+e8F5D6m0YlWgSY9ujlmTEYYVzv87c4fjPJ3F2KehSQd7AeOKxMFZvYdcZ2GscbpQTvG6+NNPkE6lnzYgnxFr3Ymjo3mleN2mJMbV5dgApzV1vsYghSwi+jzrv17+gtWXVnUqzFRPzCtp/5gGxTK7w7Gzi78L/dp2j0tBruY5G0V5OWw8sofRw46vzzI/bl12RgExc8OjYMuyEtR+bzFzMMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.22; Thu, 19 Aug
 2021 04:47:23 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::fdca:2b03:6e20:2d99%2]) with mapi id 15.20.4415.024; Thu, 19 Aug 2021
 04:47:23 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 03/12] logrotate: drop bbappend
Date: Thu, 19 Aug 2021 12:46:59 +0800
Message-Id: <20210819044708.105282-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819044708.105282-1-yi.zhao@windriver.com>
References: <20210819044708.105282-1-yi.zhao@windriver.com>
X-ClientProxiedBy: HK0PR03CA0105.apcprd03.prod.outlook.com
 (2603:1096:203:b0::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HK0PR03CA0105.apcprd03.prod.outlook.com (2603:1096:203:b0::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4436.19 via Frontend Transport; Thu, 19 Aug 2021 04:47:21 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 463a590b-58da-4791-cf25-08d962cc6f3b
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB4867F917F76BFAD7C8A779A1F9C09@CO1PR11MB4867.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	JeYuTNy5Ag7URVGnUgJPmu0jDnZfRJpUtoD2Xx3l6j4Tbd5UsxDaDQOxRY5xFXpJyu6agz5suNK5ZRr54B2fkoVTF1stF4TbQiCDVA0FoNbZR7d6fVNp5vkMepz8++UW7iWSjzhkFLTp9kgFMjQqLDYNcPLipFQxOTceZRgx5eP/fFTtAM5tdi2siT515yjR7AgNUrmh9FTLkqxFS/98GV1JfPUsVMJXT8scUV90ipLc6gMAAIQotf3A7FMDs+Z5/dmzHBg51jmEn9jIL8pt2huhyQltP9AZy14yqtFFEVSG8yVLExZvOCjCfERm+PMbe22iaLAANfwRrSYMCQN1nM1zID7f1g+y8yh1ptDzrNFLSZxS8danRmXYsbI+4he2JFzn4lFik9KXam5KqScNoKJwk91XORiK6dGV8ptyvAE+JvZydK27LyFg4nAPVRdnGh8T62YgWr6RkhaU+X/Xxxg7QOCafymNpwNs8DM2yzw8G1oBaRnPtPCu1jHpRxbGLel4DbqExLGPX8ZwfASzLe4i5tgohGn6+/jwkBC95asFmnyKULRBgXCs6dRNi/4uHVtiMKK9hoznmOEicWyF/Ry1/zoSkm60MQSNJn3+toz3jQgR6MqP4hDftV6JyuBKTJhQNcjeFxylwNDgaCQ2zMkj3mXzCgXUPtVFFV7s+F5L2XlJFrQb+W8HTRI6Cg3JNgTLSd3r38Oqj1maoY2S2A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(376002)(39850400004)(366004)(136003)(6666004)(52116002)(26005)(186003)(6486002)(316002)(86362001)(2906002)(66946007)(6506007)(66556008)(66476007)(1076003)(5660300002)(38100700002)(36756003)(6512007)(8676002)(83380400001)(38350700002)(956004)(2616005)(44832011)(478600001)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Xgh/RE1vce//iNjXGAnPPGzt1YrMQRR/VBZBETxks9T3pjfZZ8bU4R6nZjIl?=
 =?us-ascii?Q?k6U2RmkMkg5FmBvaq25mQfsjc5xlF4GaPdOpvLCWm/yDCRTQ7VrckzZN3GKp?=
 =?us-ascii?Q?eaAKtK+hf1xuFThZxtTmTdkxhT6bUlI2sEK0KuxRfD4Hs0bfj6DhM3QFtkHe?=
 =?us-ascii?Q?fMJGA5LYIrT/vZwIvhxSM6gRWgs34ZKDuCKvvZOSlAKVGLt1LbIWjVrL+Aks?=
 =?us-ascii?Q?4WLRp7Vv+R0k8Ctl+YERb2i2U78itJQBrLeoch15dlRtL5B55W+g20BO4Fva?=
 =?us-ascii?Q?nj1qjWldfSEEpVBlXHgfwimnQt4k8hO5J22IETH0YPSEzky+PmnSuF4UskSI?=
 =?us-ascii?Q?jLir2eS5HRvLvBJTNu5TjT/yUtXgwiWvIrHNQq16IJ8ct8N1SfWFlNTm8eRT?=
 =?us-ascii?Q?HVIzp5tiG9zV6Tv2mXP4GpMZK3e7jXjP0Dz6cfSwgnx3k04e3zsZBak2T1uo?=
 =?us-ascii?Q?CaF0P9wTx1QQ7UC9SUl6nkW5cD8/v05E6CGId8JiZss5usx0vWcjjO+H09RV?=
 =?us-ascii?Q?4pfqHCbc++8cXPJvfDyvw+av0WPyHtUrxp4uYnuigtTZiO9XT7RPKVUK1RMg?=
 =?us-ascii?Q?mxn7qyMsokBD4/BDIROuvMskRBpElpHwnCk/7ogtJeztMmQCb3faGJUckCEX?=
 =?us-ascii?Q?yruFtbDQ9OFCJsUCAeVIp90Rj6KDbU5D+wS1nNez+kUntbCrjfBTrs5cYfb7?=
 =?us-ascii?Q?zgoqsFIZQq5fYNgmPCCOD7vQ2tPeazJqsjqAML0Lf6+/c7d5DWwUe5+zVoDR?=
 =?us-ascii?Q?VaDa/IK1iSkzFc07WfrgiaUzw6CGkaAd+yxPZFXGQ3OGCu7ntKSL6vzAKI07?=
 =?us-ascii?Q?/DbFzjgt9ffQIIQdWaEwsJFWQ+zA/mvvD4fW+JplfJOLbUf/FTZqBfxWPuOf?=
 =?us-ascii?Q?isE5+kVj0X90kIvVMsivCI43CWNrBOzKvm54QhP92FfmqvrHQTrM7nisRtdC?=
 =?us-ascii?Q?hFy2y81QYELPW5CRBw7HrGKAIQIMhcw29uZrCSTPZoK34c6/DRSYQjaWuIVy?=
 =?us-ascii?Q?0yCAatKFJr/czvtNxWwXQJwGZLEPL+N2omcGGk5im19FrI3xv7bwPXBPoPF9?=
 =?us-ascii?Q?cKcfQTj6jZQkSEtOPUMGG0VFZoHi1QaYvF8v9yXu6/13gmssbmlvfs74cmXm?=
 =?us-ascii?Q?DKQhMMkk85nZxxFX7EJgV+aRpOc24P17b8JYXxANR9Id1MwKSRRQC18zHfV5?=
 =?us-ascii?Q?1WiA/0g3SMOqheqwXfQWv+/dTCUlXMAvu8AWgdGguh4Nn1HQ61cLZF09lfk8?=
 =?us-ascii?Q?EJrasMQiNbQGZB/RZ8ptobf7c580QrZT+PnCAXbkDciOXKRwuyC9fgo6jzQe?=
 =?us-ascii?Q?Su8QfnZx6IPS1WXuDgDQdqUT?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 463a590b-58da-4791-cf25-08d962cc6f3b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Aug 2021 04:47:23.1663
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d3JE4VzH+K6b5Wa8eBIM7YIaY3n8dMoY6yf+dDTPDNoNjsDpsmEDRezbedmT03vsoaMyqq0gH0o6SxpB8lSC5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4867
X-Proofpoint-ORIG-GUID: 4HELcaMnmuDXUgj9ozRqVbSaYux5J1Mp
X-Proofpoint-GUID: 4HELcaMnmuDXUgj9ozRqVbSaYux5J1Mp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-08-19_01,2021-08-17_02,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=741
 impostorscore=0 mlxscore=0 bulkscore=0 adultscore=0 malwarescore=0
 spamscore=0 suspectscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2107140000 definitions=main-2108190025
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The content of the bbappend is already contained in logrotate recipe.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-extended/logrotate/logrotate_%.bbappend  | 1 -
 recipes-extended/logrotate/logrotate_selinux.inc | 5 -----
 2 files changed, 6 deletions(-)
 delete mode 100644 recipes-extended/logrotate/logrotate_%.bbappend
 delete mode 100644 recipes-extended/logrotate/logrotate_selinux.inc

diff --git a/recipes-extended/logrotate/logrotate_%.bbappend b/recipes-extended/logrotate/logrotate_%.bbappend
deleted file mode 100644
index 7719d3b..0000000
--- a/recipes-extended/logrotate/logrotate_%.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-require ${@bb.utils.contains('DISTRO_FEATURES', 'selinux', '${BPN}_selinux.inc', '', d)}
diff --git a/recipes-extended/logrotate/logrotate_selinux.inc b/recipes-extended/logrotate/logrotate_selinux.inc
deleted file mode 100644
index 1bdca98..0000000
--- a/recipes-extended/logrotate/logrotate_selinux.inc
+++ /dev/null
@@ -1,5 +0,0 @@
-inherit selinux
-
-DEPENDS += "${LIBSELINUX}"
-
-EXTRA_OEMAKE += "${@target_selinux(d, 'WITH_SELINUX=\"yes\"')}"
-- 
2.25.1

