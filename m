Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09A4AC46CC6
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:21 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.12147.1702714932991759631
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=nAjtDpBc;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG7x7cW016058;
	Sat, 16 Dec 2023 00:22:12 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=sR59E+nWZ6jMvqsR7BPsLv5dntOToMDaaB3X0mbuapg=; b=
	nAjtDpBcIahwBp8zFjoqnF23Z/bokPMz7IRs7YpZsajTJpdWFv8Y1FUznKbZxF7D
	Dr27arxqRcK6erG5igGuvbGlgEueJGYDVIsiS70iRlCw7xuWFZ1fE/AJAHjoNVU5
	R8ns55cWWoWlUY/hO46ElZBpEjvOGaaTJyMLaJyb9zJL8cFjFa6yeg+WekjfMz+u
	68am/5u5a9RypRv9GQ+0AnIvKsxdubHn0cGNQhyF6rl7ypNsepcP4z+T7v9+J+32
	buRfOH1pTLTflHtWURXMG+S5dBVYGMGJ5QylYBf7lUpoNwCk9r3L6Ey36g8i64Gh
	BzMc23xZ72dQgIERxgMF6g==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uyr7dje3q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 00:22:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeaObZ9NCFTEZgbvLnaEPHrl/1jqU6sx7rYQ0B9EAFwEToTt+qlQSEIR5x2aBTvXAqwAStu157L9mU98gFCSKz+eDnT5zKVXIjAipxay6jh4Dy/JA6leIopFVp3NMXPxnV0sRXA2v2S+tjh2uYmz38PXRfOTMKnoRZFx674JsUKlc+XIPjGIVimcud1zzRFe3+aK/nPIlmEH2Hg0BWL51cGoqGbyzvcOAAYSejfxnJIqPi38HiaNhmyL1kVzb5PueBlx4hxOoSyTpuMOU3VzpG+beZQQidpS0u3ntTOrVPobZSD63ZbGtlpuM3HcgHYd65I0Bjtu/85GJliI6QIRyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sR59E+nWZ6jMvqsR7BPsLv5dntOToMDaaB3X0mbuapg=;
 b=Fq5Mp9Vs9IsNZEllEW9pywaNZopMB3dlqmf0vT4Ak0/Cf0J82mLF6B7ws0d7rktxoj1gSn4PeczuWvGiiSyKkbj+JPweoAz4jhgHc9tHQdUNYKSvIZPfqN0ClYCd8WXctCqHL0/JZNKZ+Af/2++KfHYfKo++w3mGv8VJRQbBDBz7RjpcKLbagxMECyqRhPRDOnxnDa4JXApuvho4E+U4wiTsLBgxPhhcU3Awmt9JvKR0YNN2dSBM8x4pAMi3NLf7psHW8vA0YQOHP8Ok0zi2vPm++bHl3YLX+ORh3wSu3n58YtyJbNeKlurBMiaMwMalRZ/p0yE4dfH2sK8Uq3B38Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:10 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:10 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 08/15] mcstrans: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:35 +0800
Message-Id: <20231216082142.198501-8-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 2eae1e18-9f45-4a31-1523-08dbfe101972
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VftMgcGwyO/GurmPWXZR9afn2N4ONZVu7pkIFKaIxTbVJfa4i+eQ5DUgFy+0JcqpmJ0aOw+LRezd+tUkGcl4/hN+PNB76gL+3hgnu68Yx/T5R24rJKf5K04PhizdHlnWffiSGEaOgP/v9w4Zd8T9dLYcG3RINhGhiTX7Z/7Vgh9eZEGXBFV4L4zWilHdrVuaz38Z0NWsbI/kDxexIpW42lSk/7KJqV8UTbBP0jH8BocecEa4VC7SDNCQpARwOh/39b6p0lrrdTiGMvE7hxvHeKvPlHrUCZToD1n7jE69fdeIrc6Ai0UT89irhHDhEff2JEYgE5Knmjr/Y8mZIxT/GY9eupjyYM/tqfzuOEyjABklbFR9SlAmA0e2swcI6MRIugoQLfsXbCBsg8HrgiVCBQ6p21VhvGMCaMCqAmflepcfX6EgJgMJAKSNoGT2NrAbR+59BteD6cxqe+hYHtxyMyw2YPB5Wa6jbtBz/IIYsRsHHxPrcVhpeAq3vDjiWX83oCa5izpLSvjH72Gk0oCFNHdOVK2v6Z1SUNyFoSiEnNcuqNskle1zFA+3cZ3cKsYb2lj/ZEVcb7dG+fAKBjiIHNwQcodHsfqyPW5Ge5QjdcedEjj/cqFb3XMlcEwK//0Y
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?vWb0jNBPPou4/BBZLQEB5EitaTX1cws/1rBpYo8RuvzDUFiLqLjZu0PdqACU?=
 =?us-ascii?Q?ugfUr3ytMRbRmHvtOO5ChAf04XTpT4QfDq303X33Coljv7Up5hUVZE2JBuM9?=
 =?us-ascii?Q?tdlXzI1jamSfWkp0brVRXNTyoqQKZDBg04BDbzcVLXZGs1JWE15B0c9W11hi?=
 =?us-ascii?Q?PH4Ey+fqIUfDRe1afgQuScOvSaeQTRZ1RRaQGtlE4qbScaStgOOmPYyaYvJb?=
 =?us-ascii?Q?17S11CtHDa/yItoSxDnekgqHpAGrOoJOXks9+G5cXvTeXG5RR8oGkZVdPe68?=
 =?us-ascii?Q?HsSY1LrgLOtnDUN6L1n6mucBl07hOy3EhAirNAQrSO7n6c9Ly5KX2jgq7L7t?=
 =?us-ascii?Q?lZcwLkKcuAEOI4KQ6pP7nvsvTSkceeTojbeHuycTQBTsOr9iudYYT/CY0n4j?=
 =?us-ascii?Q?arY+aiRP6bOcU8C03DrqfdZig7nCpUr8aORBNJYCmcz/LWgzIhLW6BGgyjHE?=
 =?us-ascii?Q?rZjWDwj2jo3aTyb3gwXzbzwzEpJGIUsf8pHs08TTykhWfYaf0eJlA0Q15avt?=
 =?us-ascii?Q?nQG+rdoLdE9MS3xkQqqSWRtdmfgVEY1Ar05SAPwwizQV84pc7zy9cQIMNZzF?=
 =?us-ascii?Q?oX1IR+8Nes+x3CqhJBL2uax+9ayGqgVYeLMkHI+uGIGNmOlBTOafTVeMNkRh?=
 =?us-ascii?Q?sLM+HRUTLPVcP3+CvvUMMXUWL6mrqHfpc+ElEOkGitVeP/zwJsP+3aXIuQ/7?=
 =?us-ascii?Q?gsMalStzRyVRcl2TJ1qoAJqw+z8K70HwGqJWmxKR0jz1Kzj+B5EESvSIv1DN?=
 =?us-ascii?Q?8x4auygysjAID9msyv/fIJuvr3PgVL1cIr+ES9+Am5140Pf/2QJ7krRj9+qC?=
 =?us-ascii?Q?I5pGhS0/3ULq1fVLc8pMy1bjM2fXxprxC6FGiNokJp1OhppSOUDK1zcVM2Hk?=
 =?us-ascii?Q?4AGeU6/RzTnkMKx0UScwRmQDvcT7n58/M46MZp51NCISQElYBMgkp9yHydec?=
 =?us-ascii?Q?2FBpHzh01cSB8jMsB7guyAQEchfKEaQWXzOTxQfGs58O+2mlnb+dANi8Tw7i?=
 =?us-ascii?Q?iCAmRcw4HSyKSL3t2Dl7Mskb65cw0T/VhofT/HKSahyWtnlMBPW8652YXp9D?=
 =?us-ascii?Q?MvvO3bgqBZaNtJYK/M1+V21oCezYg9W32iID9Q+2XUqmRVZ0dYPNsrerVovl?=
 =?us-ascii?Q?Plexo203CJFgiCV9z/USzCwycvoWPoSFzNtP/p2o+uXaglQvI95Z6OtQD/o9?=
 =?us-ascii?Q?PwlPWrRXto8K56+/WFP3igR9ixiVwnnCBbyxIV51ItLr8OL2LHfsc/sTfDrQ?=
 =?us-ascii?Q?YErp52VOuSlWteM04DJCVlednCuPsVnBhQLWiXaXrq1HDX3WF+p2DP6v6fOq?=
 =?us-ascii?Q?JszT7qxLM/0rsQ7o1chlsPYsMMvf7J2lFNzIqjVTy8ztkfmFduC1T9uahyYp?=
 =?us-ascii?Q?rMvkUL/u34V3pWsUCNQXkKJsVEoWa8u9C5Rs+Q1DKHChr17Rcy7s9mrb8w6A?=
 =?us-ascii?Q?qaCq3u/zg2P5OxCewlLcT7AgAzYZWVZjdDPu/Rdv51u/ug14b5eAcTBmlDhH?=
 =?us-ascii?Q?Ej9DzymwTryggwCurAJkMnIKKeforQrIHFHXBQFiqMu2JRl852MGeC58xkWU?=
 =?us-ascii?Q?KjXd8os5B05Ny13tEJQTcN7HPvWwD/5h7BZF2PgK?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2eae1e18-9f45-4a31-1523-08dbfe101972
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:10.6526
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +CpIsMTA1GOsBRyYeJkHjNzWZPG1PHKn34LDMIvRpzfQR4hh+gLdcfsLHOCuc05/mEyqRdXWpIbqfiShzl+QOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: 08vIm97lavvBwo-ZabVCqLR4TW7Die1A
X-Proofpoint-GUID: 08vIm97lavvBwo-ZabVCqLR4TW7Die1A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=495
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61934

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/{mcstrans_3.5.bb => mcstrans_3.6.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{mcstrans_3.5.bb => mcstrans_3.6.bb} (100%)

diff --git a/recipes-security/selinux/mcstrans_3.5.bb b/recipes-security/selinux/mcstrans_3.6.bb
similarity index 100%
rename from recipes-security/selinux/mcstrans_3.5.bb
rename to recipes-security/selinux/mcstrans_3.6.bb
-- 
2.25.1


