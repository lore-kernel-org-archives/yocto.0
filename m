Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8585C46CCD
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.12146.1702714928999904275
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=YI8INnpp;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG83Y2l011793;
	Sat, 16 Dec 2023 00:22:07 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=AjGTtqRFkHXV2zyKVJxA44XznBVsdF0PCoXqFPYDBUU=; b=
	YI8INnpp+qT3Bytv/x2zWIV/Z2zmnOt/OEweNRzsBSrETVdQ2DnEDJ8N0X+94xCQ
	ZSjuqoA3adeHi5Yo87SZEeFtSqcGU7TnujuPRL7BR8r9/RjaL53m84ni6JaTunGP
	z53A+Nw8ODRJTy2/7Rzqut/Ae150zypRzfy43vVUC40TTpnafbDKp2GhymEAwSeM
	FeV4qC+LJR5U1fHUyG+dpnoEUZ3xmQFVzXJSU1H/ovZKo35v4n9McsRoanyp1s3h
	42npZ0tfKhoUZufhPHnvCVWa87dCP6aLD1Fh+OsmLyhB9771rJ5fvlGIQJ6PZQDN
	q8XxiYoIgaC/DxRmcgwOog==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2168.outbound.protection.outlook.com [104.47.56.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v1824g09k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 00:22:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=k+N/QLKLMbZl0Cc15exKgBl1UHqzC6MAiZGnHhemvtF2EmsuuFQMiuzbN1V1Dfpkn3MqVXxEu1Go4WTLm73XUF/AGd1+c+q/gGBfj6CyomAzrDyVc+TkCWtl1TIWMtuUZUrbd8KM2jh3m3wdsEm+Fvfxk80TVKFC3UtsaBmmkRoLmFql1IeqeOjABj9Ay9JhI1ABOCXr0zN9X7zkc5q9xryPIPMDvrgiPWW25l3jxjeDYtuCz0a3dNvnV/ieuJYpcKCE+COT+rA0rr9ObsVRltKz1fdGp6YGCRPoBkahPW2ApP6sQkCMTq+UiYQggJVVVgi0YakeNwbOyBc/21XXCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AjGTtqRFkHXV2zyKVJxA44XznBVsdF0PCoXqFPYDBUU=;
 b=VYtOAQYb9mxV+b0c1FlUvvIji1nH64+YEyOHzVij5BgtkrZLLvu85Iy6QKxQjcSqr8aYKAQbzSAufY+98VTtmb26W8DWp6NuUN9GZkzgZNGxiBNbk2eyntwRvyMPSRMpbGUcguJAD6NmwzSPE52N7KmOf3aeRdk4VmYtbOjSbmSYHyknyS+01f8ygX8nl6am9/w4WYuZzCUSR0W2tnrfDsg5LS9M6RvLT+L7iZhiuYgQ2S5hVwkrQ3vID1XYwTNrdUar2Y/aXeWhNG0b0VGN2OJd/UrbK/fEszxfJqHnUjlC2u5ixK6CqQKt0gqfwkHIbC2D0UjrHJaluMGPlNIV3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:06 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:06 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 06/15] secilc: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:33 +0800
Message-Id: <20231216082142.198501-6-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 938e141c-c5b9-4f33-9508-08dbfe1016ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iMCs7gfiijqv2OzCr2CXtM3qpuKwmbHFpiiQE3qlEuTuhmjkdmPXXltWst2cWhnrBi9HA4vuTH48K+VyY7ILNymAqRlKluuIgXsU/TBp05qEJnq6qRUo9PDdhNP2s7Qged2FkbLafENfxw77heDz0BCy0yrl9DsLQljYDamcHmIjHn2VT1kpuTBWcwc4jH6ZPSIO4cS8iLQA7rOk4XnH9y0f9w+zJPGn7n8+hMI9MLmgWEzvyWOzwSO3Dq/h1C7kc2BSmaNhE4VScTvA8SUEMjVNgdtWyVkz908QO2wf25Ey/21iXVk4n5ijYxxK0vzyWTAihIykG33/UcaQlaKzCl3m1bJaOpAEyZCo4GaXoSKuiEfdx5cDmqqdYTTh5R0L0+lnuLYjY60xNwH4PHS9V8C8VB1HXCNO2hwlwHNJVq9nSo/Y0z8MU7AZ8DFSCEqp+/iLyeZGe5Z/jDlZCbJSinXAPr/ktBUg5OdzmJ/8gpFDewmF8OW2ungO5Os1PpAbCCBhfE3bSD5XqylK78Eslk+3KrJsFs1kB1n7uOjvclKQk+dWSDVnJ5yEcLqLXr+YLTlxY5WRhXDhqPVciA94diw/8uMbnLik9pwvy1BwM0wudQbgkKWhnaLfSbBleY90
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Do6RGZYS2fWWCx1/+VduplEQ0HMT9D6XDpWivkMmgva99opw8baMmoLko/3p?=
 =?us-ascii?Q?rSlUloJoRd3KR6PS1sOSsNN+GKS06dOMwl5OaFlyczdFPuzAKuWmKr3BhNyx?=
 =?us-ascii?Q?pd1d/NI64JCJgAJY0qusWqLTgdjw6g6ZHLXnGIqczwgaDRxW+xikzTZ5ptb6?=
 =?us-ascii?Q?o8Rb8hdOWO2EkEf/p1XkskckqGHmlGUnvlDgxqDa5UyABf3mq4Fa1RjjEkub?=
 =?us-ascii?Q?KSzsiG4Y+GLZfC1YKhGFa4vbWO32LcLmxLdqbupX3mZR9Y7mJt15GJadpLut?=
 =?us-ascii?Q?rP5wRovThBPBFlRw2K+dfUkJlM4m2NjWxTEWjcuR4rbILYIqS6gkrQTBtdLu?=
 =?us-ascii?Q?8S6W6unEL4Sv2kCwJtbfAkOJAPxAl9Tptg1zMpowI5QWTu146/zqwogyImPp?=
 =?us-ascii?Q?+x9ywXeF6/gv6jfDRL1uYaacSbflY/cu4u36V9U3SPknDm+azkK7vC//7M/t?=
 =?us-ascii?Q?td3VEiS2y7Oga+7ou7WPfKPTpkgIU3zs4X3erUTo/GDJJ3eTrXSVm5s+jRpT?=
 =?us-ascii?Q?LrbNYIQx0vQfOMvGjau2y/NPZPpF7acF3wtaKEmcy/UAlZGduxXnI9GYNQ+2?=
 =?us-ascii?Q?EBt2cynZ4uQIPcsWyhBpdWwjmpfgu9wP8A5O/eRDFCmRifm40lf+zpQD2I1I?=
 =?us-ascii?Q?76SzZu+Iz+mFqedCsK502TkrrAhYEHJMX1AP1PPfIPKqeahMewlfmDG4tC0N?=
 =?us-ascii?Q?Zkk7EBJtwAx0QwfwukExhES0Hht1fcg1fkXMKK0ROePciecTFllw01oaPyqb?=
 =?us-ascii?Q?a7FT0PlFSjoWPDfdx1DLleZQLNUct5LZLzs4l7p2E45rFD/70M9zqZa2IObJ?=
 =?us-ascii?Q?eysEaImc/FT0w0NmwnqosGnuuPLJ6uuacEv5/0tXk8NQyHhn2za7vfqZA2jT?=
 =?us-ascii?Q?/uaFua5uvpb4EotNk3kJH5WxUQqteh3QXtwM6u0QIU/DtdP80V/+cGPg9i3W?=
 =?us-ascii?Q?uwkgtqG0yqAW6r2mWVCfw/tGhBhoAJfa2NRR+G6ML49EUCl4ecB97lNZnCT/?=
 =?us-ascii?Q?xfLONdKHFVOeNn/cwpi7F320IFETbqY3+fWCBDixvavAP7oO+xHw6BM6ryKZ?=
 =?us-ascii?Q?wO/tAniPNi4qWDbYKJhGxJKAUQkt/3MvGyO+dckugzFVIRxGMS+BVuYp6wiS?=
 =?us-ascii?Q?NlKRU0tqcuuLVYyWJswfBjU5KNJ8YcBuskLc+Tm4/UvQnwa8w8mLWRlhBARu?=
 =?us-ascii?Q?TX+xGARluXPDYDg0UuTUJ8dnz6keMyTeiEiZrlqYL8Z8Rywvdr3rN5r1ay2Z?=
 =?us-ascii?Q?CIFS5fsMUz+SIfb+/KLtISlwYIWkmU309OCpO4K3xkoyfIGs1wwazXhF5sxX?=
 =?us-ascii?Q?QNKOZoim2wuAulH+8ZUMbKZV/8bLVmIf4k17dv2QWX6dRfFwzOWmoGko9FUt?=
 =?us-ascii?Q?rOqC6MssJzEx7ZJWxh7aprRMGJxn9KrP+9JBv5FyqWGlnmY8FXaOulQOEXAH?=
 =?us-ascii?Q?5VdaF3Im6eXK0/NxevvWUmtgXgSpqPn4F0IeScPXcMGucbiylhlZ5hjERKXZ?=
 =?us-ascii?Q?99Elu/06Pd+SglCXgL9bOVbUi5/MRo1qmev1HteUBY0/zg2iZNUCxoU3Px88?=
 =?us-ascii?Q?aNNl630GXKOTFkYMpooS94gt7WDUmUqVs+MaQcGn?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 938e141c-c5b9-4f33-9508-08dbfe1016ab
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:05.9959
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yCLXaAfYa3Q7n6zCTuSRBg/hfc/uuquMtGIwVyIh3PAFB5673yJHnuNqQHxSbdCaxlH1O1D8MBVNdIsQw8Ll7g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: wNWOD24Cvjiopm0LXjItH0InI7iA0pW4
X-Proofpoint-GUID: wNWOD24Cvjiopm0LXjItH0InI7iA0pW4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 phishscore=0
 mlxscore=0 impostorscore=0 mlxlogscore=495 lowpriorityscore=0 bulkscore=0
 adultscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61932

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/{secilc_3.5.bb => secilc_3.6.bb} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{secilc_3.5.bb => secilc_3.6.bb} (100%)

diff --git a/recipes-security/selinux/secilc_3.5.bb b/recipes-security/selinux/secilc_3.6.bb
similarity index 100%
rename from recipes-security/selinux/secilc_3.5.bb
rename to recipes-security/selinux/secilc_3.6.bb
-- 
2.25.1


