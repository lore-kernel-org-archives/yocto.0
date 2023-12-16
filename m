Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B78D4C38147
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:10 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.12141.1702714921520247320
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=DPDaj4WO;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG7pS4K009366;
	Sat, 16 Dec 2023 08:21:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=xIrZbM2o0QOXyRSDLZRLKFBnv/Sn7OaRvpyNnggIK58=; b=
	DPDaj4WO/thyJAOVmmgeYfyuKE6st9Vwt6Q1tvQFqQdpyettOHxpYWjYWAmbfXeB
	+lTJwC5j9Vdr09pkq9gKxHnncVqo07lu9rJ5a+Ox4O1mT8lLncyztTbRgQFzxTop
	b6bGa8TwrZSb3PqKugn6yk+AK/tnXL6t5M6IzNkZHiog0uqE4xs3K1dxaFC9USbF
	S8vuz+bKI54dGXnEYxcHvkiaBzFHCCrLssYSY5dipqU2mOP0fhcq+8FBA4RFP62T
	pR1ZM0WtvvhIIvfFibnlVmkdnJfxMREmBIwChU50CHyzkE3gHUvrZKVZGbSNTNbE
	wDUqarlHj1h9msKepPcguQ==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v113x87ft-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:21:59 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gfY9AM8iubmUtXfO0hlkJqvMkEUsO7pcNy752FWl9JHy68rlsEr2SYP+2rzCK8AyKUM2v/9zNnzULOYb1xQ6PyavHwN3251fFm0CRWxSfZGBtqobqiCyZ4bavuyz9hjKT1MretLSTSE9nF/ZaOrs3/ltKKYw51mVjUCDdqK/ZBqjV0Ogxn6YnTcPASAbaTSYl+/cDVWi51HiWxHkcI/EuEg5fA5GZHxVH+isjcSL1bszwt8TbDO1wtLysde8/gHMW5rpF/MbBI2X4rrH71oaCxeeFtSk6DObHaxXPC+UkD/jhWIzjEwj9x99Yl0beBapgsaXvhRaip2ewbdf2epQCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xIrZbM2o0QOXyRSDLZRLKFBnv/Sn7OaRvpyNnggIK58=;
 b=ZGlTE49FeYMsHMExWv/In4JAvTgAW0j9uaD7YP27gA/ynwnrF6fI99lpj2omg928dqSUwNecS9NE0JodxTpXrP+UDvZMQ8yE+G7LcBBUXgkLSXohHjL96ccT+D2z5JewgheFc3WafGTvqTAi0ZF2IaAxqwzoa3TFDHEbI4GDW7LTmSdWXdSPCzUBVudR5zBsopMVkFEF4l+fLrG8bcyY8Nsf01+IksoVlfBoB9E3uij6OD8hz1/KT8YeDq/nL9S+G6Ugzo8HjoImLnmqA1RzVXMN14ilf09xTYAY8kxFq/9GEs2DN7x70TuTn6EXFApDkArPlbu47byGy/3mAQRWNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:21:57 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:21:57 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [[meta-selinux]PATCH 02/15] libsepol: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:29 +0800
Message-Id: <20231216082142.198501-2-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 2776bec6-930a-4d62-cdb4-08dbfe101157
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XfziKNXYYMkgJL7P3j7Os7+SlYwzCB0klgUUcegwGFHuKB5N8yk+RV79gJelloBU8+yRim+ok59YQXBWv5FD30oviCWlej5tA3fmMuNN3M2RTe6/8fbJBFHRhXmDfVdvSRjmWTOGLTQH/EREOp4FXEp1ODE+qXBtpYvGhGQj2/4Zq1nvQrc/DxnOX7qTXXT/Nvsutd9twfSCOv8EFYdy4L4SQ0ywjF+hgFuVPosXb1lWLdGD6cBScxDQJ/jRPr5QqClmG5s5ODsuLAqU5800t1F/b8DscELkh+MR8aL/TFJUkL8C7U7h5p1QmhLKVqZWsAGPiwsflsiHhPhZYA0og6INe2X3xPqdgK7w7+SN5+6tBEOecjbW9jiPeoEETBumyalzLDEnLtVPuvLBSgic4Mo/t54qfjbrTLylaL6r9DxeH9AIV1sTaw4I2MEVR+bD44BwZSI0O6AwTmr+B23JN9rXTjVsJmpiQirlW4+C+jcJO1h5XMN59XCIv59lQhZmK3wotwsHK99PucU9RfYbSBx+NZ3jj+xLDh8loo7FTbSo73WvreZPp536IkKy/uK0p4By9X7R57TrKQ5jSM/mN4gMR3irCVc+U6IIy/zwqYbBovBrPHukXrKfw/SUEH0P
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?VGF1Mx7kZsc3rmWRakempEp5UviRfNYQh0THSAc8bX2TK/xE/BorA9mgIN/2?=
 =?us-ascii?Q?Bki6KJLwO9KM/pQuPY5A2vJ043gLhmzxhDWx0I8iUo1Cj91IkgkCxGKdmG8h?=
 =?us-ascii?Q?n08Pw9I0RflQGJHyPnKE/lFN6oj4fujyBAQAf/rX9jhYO1a7rgcpIoQAxtNQ?=
 =?us-ascii?Q?pSxzAwsDikSNDEq0eWS3XseWn5DSDZd6U2/Wkd0aMh7kkSuY93elHx4HpCJp?=
 =?us-ascii?Q?AojUfW3R2MqZJ6PUg19unhXRrHu7pWQDz7IAiro82Qqc/MyNqYUZTUJ2P3vC?=
 =?us-ascii?Q?McIHcaJ3R8EMB0Nr5tro/PaOkwDhefhXqlmEwyj0b3EmFv1vAQschxr2nBrk?=
 =?us-ascii?Q?ROnzkUltavGUq6+dyMdSdrN4a1WY35uAfPT5rU//u0pt7E2v2O7+RMpHi3UJ?=
 =?us-ascii?Q?9lAd2OKtXq9mYv3pc+qtpNu1ZlT8O4hzVRvLlGEFdJDvV6KJh0bt/Gm6fRGt?=
 =?us-ascii?Q?fPwBBpP/SyCV9VdCCA/wOxfWLZg841EYHWc76kJ8iCdHXV/Ur2bSh++vSBOd?=
 =?us-ascii?Q?RAqtwzda1vSLZF//MYMI0gthK7e7jgJf6ElxoOUCi0Bp8AT8qdjlWr5lv5z9?=
 =?us-ascii?Q?x4UzpzxGuEHF3iQYo1EMLy4unTFqDK6rjqUtNCRHwsrxKWl5RU1S3UjuDHkA?=
 =?us-ascii?Q?TbgD3rLNCkDX/w4ShDRBZHbRzuGKRtjrU8ENLe896Tan8OC/R2rWWQSpcLny?=
 =?us-ascii?Q?5HJ0LT2nqMxLFpT/ygAqmMYbbwFV74+/QF6fuyWoeG8bIThy0wgThTIaSO+r?=
 =?us-ascii?Q?3w40aGzuEp9vTwsyOe6z2Dx5SJQjpq9CpXvJ2LCEkInNBZpLWP1fdSIA8acs?=
 =?us-ascii?Q?cTVSbbASJqph6kY6LwRpHdLUmEZrgKxs6OnEImN0glTgc2SRTwfmypwWHV1p?=
 =?us-ascii?Q?TG1jC6XGCdeZhFInbQ9HOiNSN7C9jK01MQ1JBHR+FmiUhLvobE57btTbMRAz?=
 =?us-ascii?Q?nysfE+tQfGi1rwnddtqHlzbhCniIt9upqpX9Fog1uJK/nmzqV4ZKirb8MrEN?=
 =?us-ascii?Q?utlSr9nqoj7bQvf6XlpPZuUjvUnVbAGefTAj8FYImljV9AzbUgXSY4wnQMk2?=
 =?us-ascii?Q?KryhH/YhtgVP71r1P7iAjwmspGekPImIw+P1BmtcMhhzhVSxuVi7HZZaZ1yD?=
 =?us-ascii?Q?8Jdsa2KyAakioTcEjmnWb1Tnba1HLsdgZwRkiWMbVBVS529tV1S2blnOEMgj?=
 =?us-ascii?Q?SCcHcES1osHkX7IwWQn3dDb1g7BGvvbPlxMz76ykxEfzMYRjqx/kbZItCCK4?=
 =?us-ascii?Q?BONRjGwOFxNs50HVD4FZPC+EjzMTgsbiKkmbbOJgsOkZnKJ0p9lAgB9DrvqU?=
 =?us-ascii?Q?DNYOjjRixdYopGlO1JhRL/OpsTmApByh1TQNJa7lRuDKhpcJ8nZK+Ux6tQJ8?=
 =?us-ascii?Q?Q6pUIFWWgP7AlXTzfXu8fABvAr4+3w1y6D+RKjufy1JXv4pbLMwepWvXFwKb?=
 =?us-ascii?Q?q2MqTHkVbpEc4vyoibcge7lWn0XtJwlnZOYjzLq4IVW2t7O/LslRqoi89yJa?=
 =?us-ascii?Q?SxbckCEKDOsZWVFO4tqGgY17et4rErS713HPN8Zl+h1E9AYrZ7fMriWhbwoM?=
 =?us-ascii?Q?Desn0P4fpCFIO7rAePCTOPB+A6kiZ70knA95R4IB?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2776bec6-930a-4d62-cdb4-08dbfe101157
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:21:57.0365
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GQ0YiwniIZe2LFMI/bVzpRgxQjR0fBZZwvseyL48rguHydKaAweJ+AtqY77gOODZoWNNkJVaQmOEKIxxlVYddw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: Ibg9hSBDjs5zc8w6rvxG444EOk3iJiTy
X-Proofpoint-GUID: Ibg9hSBDjs5zc8w6rvxG444EOk3iJiTy
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 mlxlogscore=432 malwarescore=0 spamscore=0 clxscore=1015
 priorityscore=1501 adultscore=0 lowpriorityscore=0 mlxscore=0
 suspectscore=0 impostorscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61927

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/{libsepol_3.5.bb => libsepol_3.6.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{libsepol_3.5.bb => libsepol_3.6.bb} (100%)

diff --git a/recipes-security/selinux/libsepol_3.5.bb b/recipes-security/selinux/libsepol_3.6.bb
similarity index 100%
rename from recipes-security/selinux/libsepol_3.5.bb
rename to recipes-security/selinux/libsepol_3.6.bb
-- 
2.25.1


