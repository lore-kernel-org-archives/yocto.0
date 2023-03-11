Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5629AC7618B
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.44269.1678540414061008037
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:34 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=fQ0CMQWZ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BCu5el008507;
	Sat, 11 Mar 2023 05:13:32 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=mtaIde9kf7qurZzUvYjKpLyj6liGFkCxn2KIwUE9yEI=;
 b=fQ0CMQWZ3YMLKXwQE9TB89KrM/W/Y3DgS/nIrf7ZyD2XwdmpNaJFr1mJF1PMr0mq+S/9
 Hs6bhOwqPTrfTeqR7J9enFcjifxeraGJUiebq5Av99CTUTNBeT/H43U19ahVU34OLRt1
 oDliaMVeTLt/gAPrQAKFVEC7DkHmxjdxeH2jarNXQv+K9sa1v0QT+LzH8B1lz9Lggb6Z
 8IFxvOK/LWyCPnk/mInn/3hDb9KKhGGz5KgoL1qDWLkTPyEQpHi3/gllFlK/gcYNlLVD
 2jJQ1l/nHWq38GMBs20FT6H0wD3xmADFzRUiWprgIc860jCVGDr24B8CT1T3mcxAregK yQ== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8t1r00br-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3T/AFC8Vc0MA83hkMF5EF6K6QmFAGj7dOFW+xZJdqe1bbQMnI4iHXVTOo13m5lMiCjAH/+MU45/RQmkPYiTmkDu0B0KhTVQrjoyUKQmN/+GmbNyD1axa1ImbrGbO1oXsd6j7WPCyp5iAsymv+2F5ABXRMEJ2E1n3i5k6iky+Q1W8c+4dWllfuI7igtb4y+ma7lAs5zXeTqNunK6SGJWnuaRZkDbWeJV0wSTXXmylA62ERoEOOgkfxZaiSM5Yz7SqkNZckABsbySt8+2wBG9kZ/mjcACderow+aywwWQ7qCf1EtV5P1irGrEBd54flTh+8451tJ7sRDtoHM7dDv+oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtaIde9kf7qurZzUvYjKpLyj6liGFkCxn2KIwUE9yEI=;
 b=NYovUJxLZO7cqKZGo37yk7TGXG/EsAQWGk5xYPY0N6JWpFOn4dlFaE7ttnfdi5Qh/QQT5fZgrEUyN9rDZcNFi4rNIRKL3N/dPa3MNjkdUqQuSptu0+JdhcDVIIEOedFoANVT8mQLbmKZU/Y14dpL9H67kkP2omc/pi5k9ka23a9J82Q53vLNDHOdGCQ6/zLJ99ij4BqbG/4jwYn8sDpGb+8l02bf/z77iJDn8/sWLUdDt1HRB3BTThAs8gqpaKczbHezesDEMk8nl6LJBBVN1wF7DbEEMDsPF/Ix6LGYjQzbveOmCFt1EblvtaxKanhmdmVb/Xaf+fFVtjUAHkqs8Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:31 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:31 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 05/17] libselinux: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:12:56 +0800
Message-Id: <20230311131308.1337339-5-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: dc985a82-395c-4dea-45db-08db223268ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	7QkmzcgVWRaIM6vF6/yPrW32iPfOJmxLyH9gibLzidy2uT5HIN+xjGB0/JNTiiFgBljdw9DZElmsfEfExZGkrX99pwhdu6c2V8z5sVg9FqIljlTnjOgkTWA6vHtiqcwWWHHLVimdb5BMfFQG8JI8SXKfFpDj7gxRQy4JuQB+kGym4TG4/USgR6kpd51km6zTCUddvs/nmvx/XNswHSEkvdhTlGVqMkSO89onMuKQFyP34nlgJFrJ7mi6WZnKhoCSOsGDILrBflw8Adoxcf6j1JfcsR0HwE+jnfJNK74Y39uni37dtDIA8B2389jpJeCWFRcD6t2v6nn71sVcegfJqZgpgLaU+2o3dtZFDRH7fMbm7t4/g0cULMbpgJeZKB/gUCAeoasXtOJUnLHtuL+nwM4DA8kzRjQ/m3g2PgX6PrBPdqTsp/nG9bh7Ztxjrv2FpgbBaGLDkkrsVWHg8elKFs3+9rNBrudM55kY2x2cQO+q3YBHbLr6DSTyN5kL46BTelpkdEDY+yVdbkIx5AoqSHWMeDqsi2nH2RRLDWVgDvoKxu7UJGWDgfbYokATjrl3tJ1+5L8UgS76lw5NZkto2jRiks6nhnPwR4dStAh0jOylgnHNkUk7XTBE1TX2xM8lbO5eau6Jvx16QtwQZdFhT4w9kI38WeD9YqeCqHJiCZQlPjYD6dhbHUbJgrmj+YVexx66nIEWHP4T/aSuypoIBg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(4744005)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?aVkdXp/DHsDOfld7u3/JSVkLq0pGzxN9/z65kVlEIISHBgFR9MqIYRlp5LGj?=
 =?us-ascii?Q?D/7TB6fu41qPeHE/nLbVZuBUnYi/KldJdNJunhbDqzfoO3SiM3ro7ZvmCca4?=
 =?us-ascii?Q?bmFLyMrYcExX76RbgkjSFfx1uAhakm5zw6aQWUNPU9iYFuYNSdyFZoj4iJlO?=
 =?us-ascii?Q?gMuB0Z1R2rQMAnJeupqXsX2T/u6sbyHkZVQ6Jm9SwMP2m/PMip/ky0c2uzbn?=
 =?us-ascii?Q?t86+5wAI3nWkbz4r0fJWTwmN+Me2stNy3CuAgrNsFWMpKeClmBuwEKIoGvei?=
 =?us-ascii?Q?8nAQR2PU1XR+s0u97ZTl0jPtRctTIflFJPtnv37RNMTt+CfK6vcJMi8ZTYgh?=
 =?us-ascii?Q?HQzh4Yxo1GvAosqo8Gvr9CugGsrMyN2LzLugnWrnSztlwbC9oXsSFHncj42m?=
 =?us-ascii?Q?S1DvpkrPbWEWlNujJH9vlkEzAgPMmBhezPvvdxR5MNgFMQ3LpGhHp43NFw5S?=
 =?us-ascii?Q?eXx4VNU2RQx1gbMpB/1of9m9hujYj40R6i+TKvjBizzS0weQP2yi4Apr1rw/?=
 =?us-ascii?Q?6L2lPiIiO2QnHdUoSBjyQfp4aqJjVuHG5gbl9a3BLLeQImQKwUwpc9gwutHe?=
 =?us-ascii?Q?nAFa0QR+HjPINN+HTXqu5jPAro2PVRe3qtcVBwk/Sq0zRQuTk+wco6SgpFj2?=
 =?us-ascii?Q?RHHws+QgIVJFdf3HqzDcAVzMqWH03+gkKIy1sa7V5PQNKX/4rEZ/IXCV5mc1?=
 =?us-ascii?Q?YTtME0LhO5VF2ZRIdXK6NwNvfxeCaDUCsQRADQHJwyvgFvCBfFlHzelGjHrk?=
 =?us-ascii?Q?J4izaYHds9TivBS9l2gHvu5TrLAmKPvgU0w0S1uXd3h1rzk3q1Pbpml091pj?=
 =?us-ascii?Q?uc6t9W/dAgPI7oV3tAsUBt6ZlFAUnTKinwocqd7v0RpgUgDAksVOUkTSlVDa?=
 =?us-ascii?Q?6jcP75JYDFOIzDU7hB5R6T37SC0MighCymIGv8rIw3DQkAnycr8d7oH1lQq+?=
 =?us-ascii?Q?jBlW/XI6sDW+opXVMLftDsxWq/akog5hRDjYGaFFzIkUHYbHiu9VVe6gcmRT?=
 =?us-ascii?Q?LiXy1h0/6EfPpx2nC/96Aphz257vfswOxHEbpGBNhr9zs6XQ/nulDUZLx2pR?=
 =?us-ascii?Q?vXBHX1KV+xKoqabMT2zr7R7DrEcMkg36WrBetVaoq5sIKS8MDfGND1OSRawj?=
 =?us-ascii?Q?rLcwtXxwmVt0NlyFTEGvTa6XjUEdvyS7TVhqHb1PzvCOeByRIyq9F1MZu2lx?=
 =?us-ascii?Q?eFgksg1pD0oPJ1s34ntwPi764Fkumkq60mk6Hot2itTb3U9tHI9owbRDfXfO?=
 =?us-ascii?Q?xbOIg/FoT4l1JpXfaMfgcqFrjCXBI1jcKfsQmTUJfmLBTQi8Tym6MECQjuqZ?=
 =?us-ascii?Q?7uQOcv71zYEuTNnduEIZoL/ZEgV1bLivBPAKVAjTCj3vWO7kxMSY/WwlLm2v?=
 =?us-ascii?Q?m+Ve4bg+K/3Srk7HSHyxKo/GyQZeYtn1fVlwdUnAu8B5d2tp3Tt9jN3F9Wat?=
 =?us-ascii?Q?htgNlrOJIt2wE7ZJZWGlD6GyzBBTUNEsr0sNcTif3fbVp3dGiqcQkCpw19Wm?=
 =?us-ascii?Q?KGmpFZAK2F9PD5+j1KsiK50G+R/XQkhR4T7Ny20JsQVfhYu6l29QguItTRPe?=
 =?us-ascii?Q?Pepo5eJvTAMf5v9BzKYgLHWxGtrd4IVdFfaqFe3S/HAWcKt4Aur4Ujq7RhWd?=
 =?us-ascii?Q?kw=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dc985a82-395c-4dea-45db-08db223268ea
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:30.9930
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JuVLhRjNjTip1wq+ksM83hqRn/I879drdWuKh9hoG9GZoWjzMsNDX73MDn7pC0/nW/iIX3/ADZks4p81XvNy+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: sp1Y_cqLYMyV6_8PkRfWFne574g8xaoV
X-Proofpoint-GUID: sp1Y_cqLYMyV6_8PkRfWFne574g8xaoV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 mlxlogscore=550
 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59388

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/{libselinux_3.4.bb => libselinux_3.5.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{libselinux_3.4.bb => libselinux_3.5.bb} (100%)

diff --git a/recipes-security/selinux/libselinux_3.4.bb b/recipes-security/selinux/libselinux_3.5.bb
similarity index 100%
rename from recipes-security/selinux/libselinux_3.4.bb
rename to recipes-security/selinux/libselinux_3.5.bb
-- 
2.25.1


