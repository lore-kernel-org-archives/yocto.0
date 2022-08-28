Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D5AC0502F
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:29:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web12.55462.1661653791800046085
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:29:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=arWeaJOf;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2MZc0032395;
	Sun, 28 Aug 2022 02:29:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=xo4zqypfynPsH4/oQtA4qbyDTHJnyIQE4/TrIaHQ12Y=;
 b=arWeaJOfSXjZIrgpghnU38JDcsUQwAef+BNMW7/pm6qJk9Thg6wPlGbCC3Jr5URU+kk4
 gSUZEHv8nAH72RpNzfuqfqBFn6y2Sm60RXac6ajsJ9YMb8KadiL9R6FB7mla7xvBg31I
 7lyRqJqtsFTSSxHmwJCKvruTgJk2kkGmIxxDQWm07sVjpp3FboTDq1J1EMld9cjEkhUg
 ddYSgaGvxweYZCaKWwhqOpdlkySEBx1rpv/WN2gPXJoWbLvYW+Md77vrnDftb0IpMULQ
 eL6JgdPpEKOBcpPmySdR/zUZ5/uzGomqbxnSwaSOdNuUhYINhCoPTd4K+PWqea7vuLZu pw==
Received: from nam10-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j78g2gq43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 28 Aug 2022 02:29:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AP2rp1reVJLLpm9anMapvgxC55CMtxBH8s9d6mM23EyKxv2XJXGkwqb9PUrRxquXZvnuIrxkdk+7zVZ6efj/rVFMQgp9b7k1HMf/OtiC6NfEKs9ieGozZw8EFD4OljVLjpiMqIga5Uv7qDw8tEpkEtvcOMNQAWktu6y4IprV7XoRBp3IQpKUyflY7DDhBk6u2EfgqF1DJjULrsUvsptGr/7+IKWRq4lVAlvFrpaQgWo3esWjoS6BSjtenxSqSExRYjgkde1tQMRXMKd/x/+cr5mfnmcO3u+tTAwmM1gB+myQpu5F0WaQDoZ+ZanSnShNpQilk23/fq4/fQAqqOe+5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xo4zqypfynPsH4/oQtA4qbyDTHJnyIQE4/TrIaHQ12Y=;
 b=HpLZlL0gfx72Hopt7tE9ksbDhKduVSey0k50XQwVxhWeaOQgJiUK0kYsoZoqwE+8ijzQt3ktHmRaLvqTlx1WOj2ecehOdPi19Q5rEvpxMNiCF0hxEC57OdtpKZaE4UBpdoWvm3zWuqDL8ZcOGCDVileKIgH4rLLmZ0G4fyU2YyUfSyBMw2/PLScUyOXqtD9yApoVLzrewi80eR5dQN21pi0Hb1ubVEDKymX/k1kxHH0Z4zLOCrAnMvPL9fgvDYPU0UXemkVPJIpKIgX2kNigfSVhatMlMG4VjiZrEj3JicSLmJizxi3YYyRfRjq/0jXILUHVXaZp+O+Ub/iGJXL3qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by BL0PR11MB3473.namprd11.prod.outlook.com (2603:10b6:208:6e::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:29:48 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:29:48 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 02/16] libsepol: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:20 +0800
Message-Id: <20220828022934.47592-2-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 8b2a9038-78f6-4e85-cec3-08da889d2d6d
X-MS-TrafficTypeDiagnostic: BL0PR11MB3473:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	8lG7oyqANtP1lha6pLZLA3fWAmf7z4tgPcGYaYkqoK3reiiv9HIsxUxcNS1+M6EGN7LNCsFEnOZ5HxbAseyzamxdf9GwqfFIY0H1KpaOQejTGKYH8wNJkIC9Ny6HIDVCj/WxmU6rNeZXeMePE+VggmPi9ykimPILnWLHyqb9jsyPm1x65l0eRPvyHQKxSv/Zr+7xITpL8EmIffdGs7KMuk3K9P35RmpCoxrVD2lFxjiwBP326mY7Gv4NPed51M5eRDOLa5GTWeM0sQiGn4HknOr5f/3FVzUfgbi6uXvsSeYGIEbzh4tLoYac+HgYV5HkhdyYd2TQbXeyzZt5fjiwD1rSZ4tOXYHd7sNPhBV7Qklp3rUeLEFA1xNDs9YOw7qua7ZZvJPzp8sLJVOSFwrdl3jKVzlspVMOOCVjr75gSHgXjnNRxxCGHgQTLYAsjn6MGcVrAajJ9ivVEAxzyRPQU31cfStzCbpxljkCemlaaUZM5pZd4JPrBZRHcSOhkFu5uVC/TXS7YIzUO7ti66ON0ddAUIWAv6GJh5D+ajPunWjKng5KrIoody/jKivEmEcER3iJs9odn+ODmNtIuJtBXk65rlSC0ullK5Ami9UfrY+TYwihxvSKWaOBj4TtZhoPssuCoNaj7DnbMCvXlpJdCTgy5PY01g67y9e+dZoGoUPcH4Au8ox8JBEA0NleTfhhipO5aBezyGIHf2L+XnpynYBCB83ysDDvHfC8+qNDrcDUdA6Z/YhtAah0C4VDkBg+
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(366004)(136003)(396003)(39830400003)(6486002)(36756003)(8936002)(44832011)(4744005)(316002)(38350700002)(8676002)(38100700002)(66946007)(66556008)(66476007)(5660300002)(83380400001)(26005)(6506007)(6512007)(6666004)(186003)(2616005)(2906002)(1076003)(52116002)(478600001)(41300700001)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?pE/DEiw0HYdrMCwLN0E/SvyscOV/iVVmAlBGVkFs/STF/ChLVeFE1yYuqcQs?=
 =?us-ascii?Q?v2w7p8tmlUXgGaSL4EaSUUMypopSOjV2xTVkbPbl6gNK9EpiCUjV1OkyiYGZ?=
 =?us-ascii?Q?LF6XniiewS0U25ZroDG3nVwsG6AL6qLWAk4Nd8wKV9la7ySEDzTSJgsrrCgi?=
 =?us-ascii?Q?MJp2b5P2MDGAO5RXA7dpvEq/w8wc92QgSzx1BknoDkkqErutUbaFOv6lVLVG?=
 =?us-ascii?Q?HcTncyjvNPPZNIhCE85u2GP4+L9KLFlhGr6trvdrGZePqK9wXghkmv8FKMdh?=
 =?us-ascii?Q?zHMSwBk4JG8PKaZ9Z+WwPKcJbKX/MHSwswtUEp6K1KvIbjRREp0Ed3rRrYOo?=
 =?us-ascii?Q?hYTsKrdcDkVSA/r43+yNvAVt2iEGRlIUx23JW6LiAnxnFiCBkjBD3lvDe/rh?=
 =?us-ascii?Q?JyGSiXWOKJUZuF1Ha6+frqc1UVXa/NG3W8D4Pa6eg4mjgctJmU7PHTdSPvMH?=
 =?us-ascii?Q?Yjr0Uc7btHmTPwyjx3g1wB26c467wgZTyrVLrQreOqD4dJpbldXnO6Y3wCtO?=
 =?us-ascii?Q?THztydATwLH1wB3KPaUVTus25aEzYlCw1byp1wzSmRxEg4a0TBbwBjkPGcKg?=
 =?us-ascii?Q?siuxZ+Hoer8id9QUMwLKkDeXRCu622RfTBM5EToQuOeysgsmuauMkryocPTR?=
 =?us-ascii?Q?km1uAw84SqEpBM8Evr6vHaEM5Kyd0Yh20qULwXb9AZLE5zaD5sOrJwMm2UOG?=
 =?us-ascii?Q?+LpM0GFunWG4B57xU08CcVXu8yQuPa69aeaNv0FW8dgUfeS+1kQMj1Wo2+Kv?=
 =?us-ascii?Q?y4oksf+gc4ktqTC2jpvhFfwdhbhjwUqA6EgYSL+6bVKjQUkasWmi+ba4dBWP?=
 =?us-ascii?Q?5qpEETaBlZw08ofWu1quOQRSWlGgAjW5Z6zw4k104nfPpTPzOazJgM0P29Wu?=
 =?us-ascii?Q?XkUyO16biFDFy9tvDicd62kHDpyyGj+bDo3XtndTA87p+LYuLlqKY/WhzQyS?=
 =?us-ascii?Q?mBQs6kZkYcnendsyyPtI8FzeyiIEgF9Eev2QvYJGBTNIvS/5ceWBENvtVnFy?=
 =?us-ascii?Q?CucGJ2u/gmuD+UaL0mxcgQsVKnFuxJHd+C7A2hLcVTPTyL9I2zWVPmf2zQYO?=
 =?us-ascii?Q?qUyD7WqfYf4BmnU9xXR1r/GU277breXb6GQjqDDX6kV/FYh8q6aOt1JMwZJg?=
 =?us-ascii?Q?g+YxHR7SPFPdSKDXjS/VJ07Ykq31x2K5l9pEx6Nff3yZM5PuEtpYxlp1ZYZZ?=
 =?us-ascii?Q?sJJWBnpxGkudAyI5QAmcFtgjP3WjwXj3BtvbTNRcxAQuJ7AiH9KEp63CGqWh?=
 =?us-ascii?Q?IR8ds2WSHrKnbwQu2tl1VeipAqymK5zeD+bNhzh5LfyujGrBrCRGZc8Ru7UR?=
 =?us-ascii?Q?tGeT3oozbWW+GACVqOqD618jLIQxFSY3Y2nmlZd5TZ3zlorLAXJgA+6w2eI0?=
 =?us-ascii?Q?HQGSwRk8s7RFy6NBq6sHcu0kc/us3flmEomAAk50LND583j++OxmvuHhD24s?=
 =?us-ascii?Q?mEDx0CGjiO6m3y/Ab92siGNcZcVmTkwpncOi/UidQYFm6RHDZrX31QPC6AM8?=
 =?us-ascii?Q?0guVCV5vTYVNAM0AqxIpdUyjhcpi0tXbHwNlWvAoDSm5ic4jhmXoPyMAVrlN?=
 =?us-ascii?Q?H0lEMI/B+O+MH8nVlBmwtXNfqWvd4XtY6V9H8l3d?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 8b2a9038-78f6-4e85-cec3-08da889d2d6d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:29:48.2728
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 UTOQ8QgIaCSY49Z7LhzUlwAtfYjUZOTHJhupHqy5hvHAWsX/X1uRtydO8iCSY9UonpodhiqY9Arfuzq7ZvAtOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3473
X-Proofpoint-ORIG-GUID: FVipUGS6HNxmipDVxx0NmI-xpYDfcQi1
X-Proofpoint-GUID: FVipUGS6HNxmipDVxx0NmI-xpYDfcQi1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 mlxscore=0 mlxlogscore=834 lowpriorityscore=0 adultscore=0 impostorscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57917

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{libsepol_3.3.bb => libsepol_3.4.bb}            | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)
 rename recipes-security/selinux/{libsepol_3.3.bb => libsepol_3.4.bb} (80%)

diff --git a/recipes-security/selinux/libsepol_3.3.bb b/recipes-security/selinux/libsepol_3.4.bb
similarity index 80%
rename from recipes-security/selinux/libsepol_3.3.bb
rename to recipes-security/selinux/libsepol_3.4.bb
index 80d8819..49312da 100644
--- a/recipes-security/selinux/libsepol_3.3.bb
+++ b/recipes-security/selinux/libsepol_3.4.bb
@@ -13,10 +13,6 @@ inherit lib_package
 
 S = "${WORKDIR}/git/libsepol"
 
-# Change RANLIB for cross compiling, use host-tools $(AR) rather than
-# local ranlib.
-EXTRA_OEMAKE += "RANLIB='$(AR) s'"
-
-DEPENDS += "flex-native"
+DEPENDS = "flex-native"
 
 BBCLASSEXTEND = "native"
-- 
2.25.1


