Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 23060C001DF
	for <webhook@archiver.kernel.org>; Mon,  7 Aug 2023 02:23:00 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.25653.1691374975479906918
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Aug 2023 19:22:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=bP2M8u4e;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=7583a3dcf4=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37725Aaq000931;
	Sun, 6 Aug 2023 19:22:55 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=r4/9R++82XvzE2PVW5
	uxvSrLkNq+It1485lf2icsDyM=; b=bP2M8u4eRYXasHZakpuE13OBcJu8xi/kw4
	GO2FfIPB09BD2pgU7e7yk3TzaqLX98zJcwA3qP8Gg7zHf/zWvHUpotGkUjq+ROb4
	RmFcroZt12wDQETvoOd5Drh8y5oFFuE8hDx6R+fhGNmQViiucUw2UnV874hRSfG8
	xB7x6GHf01gSsvb53goJBrf1Lsr9G89yp5n79t3D9nApcBAkwjayc6CgD7n2LTwe
	H9m0C1irUnNUUZDOKrbDgnDVbGlNUVfJhkJxY4ILhJ5Qah9ZcSvmQIH+bMr9WSP5
	c708FxHLwQsityBpcuDExcEP5Qcyb/lSSNyavHTObOor+WpGWWjQ==
Received: from nam10-mw2-obe.outbound.protection.outlook.com (mail-mw2nam10lp2108.outbound.protection.outlook.com [104.47.55.108])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3s9hq093tt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sun, 06 Aug 2023 19:22:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g9AUZ67vTDBT4I1rU6gTvELlBEpHbJdIrTWy0uON9MIJns7krj4ZFX64mvum4mbkhil6cNjWujcgZm0TXyQmGEeH1QNfB2zu2QqowgphXMSgTZyv2BA4VgwX4ihK3lhnAwlfRetwENRfH4IFIrAUbi75BJu7WslUbCRjOfiZoIt267v8ng3pfCkaBlG5rHRxXuDFtAIcWY3B/sabgy6jA/fDvkRsGIqXZknI8XuQ3+yAM3PIqFfYFrY2PWtKNMeLTDMs5HkeL8ub3vXQ/zuRrOgPy0sSvu3jVJQJbyzrMjbTCyI29e7Rk+W5VOM5JfGWHe/YDE+EYu+l8H2MBnfOPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r4/9R++82XvzE2PVW5uxvSrLkNq+It1485lf2icsDyM=;
 b=aAjIQvcwpZVGicSZ0tuwfgqP1e3QbtZcFvhVe+iKGRs77+ntG5/utrVPGxMhj2lN9GXsxeIjSy29d2Oipn+9/eDbXC4K0TtVrXXUYkJW0K6I5j/BT/UU2gy9Ya6txFUPcBuhtkOFg8UhsMMRGbO4I6RxgphPa5iyHZWz1PwjDMomdB+wlvUeMXp3ir48nCLGQgiKEY1aqU71UyEyMU3Yotz5Q1WdWNRy4Mc+M6GuSM6w8zcodJmUVzluxj2DhiCc4eY9LCAmikn4xduXahUbVsBeLGdk8t4t16uBEo6/agHO2zFMN5/NlH19q+xsfxmVf6Sig7XsEocyerxH+HUT1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH0PR11MB7709.namprd11.prod.outlook.com (2603:10b6:510:296::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.26; Mon, 7 Aug
 2023 02:22:53 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6652.026; Mon, 7 Aug 2023
 02:22:53 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH] setools: upgrade 4.4.2 -> 4.4.3
Date: Mon,  7 Aug 2023 10:22:43 +0800
Message-Id: <20230807022243.60749-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: PH0P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:510:d3::8) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH0PR11MB7709:EE_
X-MS-Office365-Filtering-Correlation-Id: 223dff0f-2018-40f2-256d-08db96ed33ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	gpj2WDosFgHBJ8T490uVZAZ8ZQHiFkxu4Y0w2tr9d4BZx8BgPf7jaYSOlRjDkbFagZDr3wXB2j9a+3nzw5/YRN/LNLFtbHHuTiZ2cr8YYcSaueAQMjAVjiFlJqG1I9xHMkcO+IujZKaWBZIppRXdmIuDS+27Qw7y+l9gx3r29x/7GjwYWDKZiYw6A20vJKWbej9QYwNhNh6vDa6vVMABANgMtQ5SVt/B4WY35k6riH/oVpCKMAOrI1OL1tx7lBnfZuyv74F1U19+VRz4gV+P/aiIP1BAIJb78z80tIW32Sadx39sUVo2pm7cXw+J2arDXotUfCXsRWZsxndNQ63wYu2cIMjs/euvlMVUrnd0ZUae57lGgd1SxbxEs2JngDrZzm5VwYKoV4JgNwuewuX32H7NirQw2w70cErw9CWVXJ0u2p71FYMUM1ctSVpKfx7D/cmPMTkl1wnyFNPQavpu4GAF2K5URaXSdzFlwPt87N+tmWFqhoVcxogZv8Yu1QRNIIQlLPcHgx6nwZu3XtDJh1atbrWyxo9D0YW6rpX/0iV42LpJg/vZjBzwHsv3U2gecwyLkjeNNEqHLKrM46qur9G9RVOnWoqlX8BGmNjsEiU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(346002)(39840400004)(376002)(366004)(396003)(136003)(186006)(1800799003)(451199021)(1076003)(41300700001)(26005)(2906002)(44832011)(5660300002)(83380400001)(8936002)(8676002)(2616005)(478600001)(86362001)(316002)(6506007)(38100700002)(38350700002)(6486002)(66476007)(66556008)(52116002)(6666004)(66946007)(6512007)(966005)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?gtTzpZMgBNNQD8H91ziq2e+o5560xSisHeyH8ELOvxZ0meWESBSGjornCZ52?=
 =?us-ascii?Q?Gl5PZBSoadDLd2an58uEpDlKTBfj25o+rrD3rfsnv8TL3jeiOp94008fzXdt?=
 =?us-ascii?Q?LnG0dQlB4UhDdbh2wfA3LT8VlKyoPGVE82h7HBM8es0Dv93HTCt2yS1GTFTh?=
 =?us-ascii?Q?0wQrd1UZ+XYRkD1MfxHP1tM4KaCI+4EGweW/dVrwps6WR/B62p8H291yiEiX?=
 =?us-ascii?Q?t8U1sGVhmXLuINg2fW1Vs/fF0olY5M3/TCkTFcfjVDolHbDRvyE2npYyAb2V?=
 =?us-ascii?Q?gqbMa8laT5C6Tgv+CGPIuZv0g0VDPf+igc3jwwFi6i+LsCPc19JR9b4MRapm?=
 =?us-ascii?Q?/SZl2YxLV3aERlLIiQTwXyqFsRbrFCsfWDkrs9nAZ39o+vwws/dJcSF+jvBG?=
 =?us-ascii?Q?74Xsr9gv4yyuAyW6elbL/EIFeDKoJ3ui9/2MHssgrB22hm69rTghqPdBiNwY?=
 =?us-ascii?Q?JMtSPRfrFWa08kY6t/Ua0UMObMWAgVvXUQYBVmx+fT4gL8Mu0LDAaz6qDt//?=
 =?us-ascii?Q?h1Iuj7usNLbZoSA4rOH4w/KYtqQyaKXUiv+L0NzTHRx3WSe0BzSXjt0W07pj?=
 =?us-ascii?Q?7ImP8IcoAMYrmXxw9pJL49fkc+xCrsrPALKnwqd5e+QSN9opW8Rgn84E2rqW?=
 =?us-ascii?Q?ahoRuGrUPpXEaiijYudGmYrf+wgDP6oEDtd5iu1slFPC3EC/hChwsJYK//0h?=
 =?us-ascii?Q?P7c5t84l5pzTmvHczhg/FId4T1nwGWNRNZ6Gma3y/O3XRs3YnQfYx1P3AoiR?=
 =?us-ascii?Q?J3fgdmujfO8G5vUW7B2jM0PeiTJgXdt/SnHkMeSr/hv6Zw8STOeEz4eO5L4h?=
 =?us-ascii?Q?FpbmVx/KIwPxmtGU9NaD7lEDBp0anXk9x3hFxsWnz5oIKZIQ2qTYXNq3hPza?=
 =?us-ascii?Q?IZnRG1D9tYrjiykHvkTS9KSKHMWCeBMd3F7Sk7A1PDj+jFUy/g6IfNuRLTA0?=
 =?us-ascii?Q?lf1mKzZ0y87HP1SQEwbXew0OEHy/YeamBekcIibKS3MCwR7HVIZhfFsfB9wQ?=
 =?us-ascii?Q?mqpt84tOY3gnKUrsKFQWdBXio94tonTokKsChVAKAtchGkzFPsSrtslxofqe?=
 =?us-ascii?Q?HC2bSEfhJOs1YcPQVRV3nGDSgOXLtCeXtIeUg0SCBGoNQDQ4TcFQJIBb2DCL?=
 =?us-ascii?Q?DKn6sl4x1il1is2DgCjVU4/QyLoGE+Xnm7hu166/PteQwfbq8VboKwflEEdZ?=
 =?us-ascii?Q?lKTlPyWFvZ+2n5zYD5g6ZcpFZBK7UZfgqfJnPKgxxKDmhPMCoX3S7WFVf++6?=
 =?us-ascii?Q?yJkyhgxdeys3sNctAK+zd0ohjh/hCQrhX5AxewrhQFRSyN1qvC1gqn9KBGK8?=
 =?us-ascii?Q?PwAPhvawlIndj1F6FhlqiVojzpxGs6fdfY7u1SQtHbJBXvQQQbM7PVbDyoNy?=
 =?us-ascii?Q?3yg3qpI5odeOex5UCx6tL6cVfNnUYmI42pldjrYOa8iG+cgYhJEULgCSN3j0?=
 =?us-ascii?Q?l9oOwJ/nth2tC8CSCQ+Em1VeY8xPOBIdWLN5mosS2tBHP1j21b1qo7n1T9H/?=
 =?us-ascii?Q?e9TlSxrSy4iMgrGk4mHxMGVSC+frCiTZyJBqJ6dGsqCbuEWngvbHk6y2LsmG?=
 =?us-ascii?Q?FbK+OnGp5ysHTcihz1Xhpo/l9ITBR1w7C+AvTo4u?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 223dff0f-2018-40f2-256d-08db96ed33ff
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2023 02:22:52.9156
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fKGk0FFV0YBG36Rm9jZi7rc11xcmYs6tZIHBUkcqdaMv/2vvrQffHqkM+aHZwrLLtZDX9TEG06rGUC7pXYhkvQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7709
X-Proofpoint-ORIG-GUID: UjYNiM3F-YJH32C_zCivssAIwzXOIcpH
X-Proofpoint-GUID: UjYNiM3F-YJH32C_zCivssAIwzXOIcpH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-06_24,2023-08-03_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 phishscore=0
 impostorscore=0 spamscore=0 clxscore=1011 mlxscore=0 priorityscore=1501
 lowpriorityscore=0 suspectscore=0 bulkscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2306200000
 definitions=main-2308070020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 02:23:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60718

ChangeLog:
https://github.com/SELinuxProject/setools/releases/tag/4.4.3

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/setools/{setools_4.4.2.bb => setools_4.4.3.bb} | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/setools/{setools_4.4.2.bb => setools_4.4.3.bb} (96%)

diff --git a/recipes-security/setools/setools_4.4.2.bb b/recipes-security/setools/setools_4.4.3.bb
similarity index 96%
rename from recipes-security/setools/setools_4.4.2.bb
rename to recipes-security/setools/setools_4.4.3.bb
index 4e41c69..313dd0b 100644
--- a/recipes-security/setools/setools_4.4.2.bb
+++ b/recipes-security/setools/setools_4.4.3.bb
@@ -8,7 +8,7 @@ LICENSE = "GPL-2.0-only & LGPL-2.1-only"
 SRC_URI = "git://github.com/SELinuxProject/${BPN}.git;branch=4.4;protocol=https \
            file://setools4-fixes-for-cross-compiling.patch \
           "
-SRCREV = "d8d0dcc4c70c858784b56c5400203d52dfe01755"
+SRCREV = "d3dbddb4e162dda3a25c419d10afe042a3dff7fa"
 
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=69a7b68f0a4a570d7c0c43465333ecbc \
                     file://${S}/COPYING.GPL;md5=b234ee4d69f5fce4486a80fdaf4a4263 \
-- 
2.25.1


