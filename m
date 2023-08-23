Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C249AEE49B5
	for <webhook@archiver.kernel.org>; Wed, 23 Aug 2023 15:22:27 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.14434.1692804146981277655
 for <yocto@lists.yoctoproject.org>;
 Wed, 23 Aug 2023 08:22:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=e5gYD3zJ;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=7599c7e7ca=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 37NDXc3B028169;
	Wed, 23 Aug 2023 08:22:26 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=NNG31GUjtKsuN6zT4aHGxiuMIC1HVcDM3Tg7Mg1lszo=; b=
	e5gYD3zJiRLCRw4aVpOqnCryaSwbClNVV454TDZSoWqTvhTz0vdKKdymZd/Q9dO1
	tFcOo+3Ti1LBFhOUP1Cp3btrMVwOB4oY6F9NE7sqAm6Jjgra8pvfkV3S+F9nRLg8
	1OGfDwqTGgTlodbonGls+BcHwDTmQ21H7bGpjh0KGWVXWDV1fuIL7xPWSx5u5E8Q
	BiomXm3TEn/wqN0l4rYS6Y9rBLf7vTXczH9Lo9gbd38enV3rfHPDJ4/IcUTsDcc9
	zIvpkND6yQ2QVvOmCma5MjJkVbtsjnFNf90vHoeK/o/Iv6OPVU/ccfFNHu8c2kwf
	NAVD+EHm278Aczenilifpg==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2049.outbound.protection.outlook.com [104.47.66.49])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3sn20dgwgs-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 23 Aug 2023 08:22:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aCNQaxCRSQDoYDZH4/PHyb9gHH7UcIsbMYJzz0AOZ5u8otXsiy2izQHdyeK1R0nfIVZ9ORw1WR7Ium2KatTBZVRSSKoHimDxsxl+aimSjpbS3d5sI4edUvBNAGwNSan31TRkHRuOO8O08gQlt54CTX2Qg1IL2E71R1fe9L7RelVnj9UF8EGzlOD0f5WvQEXuVvAjn5ZqA8NaA22wZi1AZk64hQ5WLrpxspTuH447EGI8Z9+KLEvuDRA4Nr6WfFkwrqcXCnOmNw4Q6XwFcHakOTd2RS8HG7fzh8EgNdV9S6IpxVR0aLoYE170/8nOxYNtMv50Mn4G9cVCut4zCCIFnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NNG31GUjtKsuN6zT4aHGxiuMIC1HVcDM3Tg7Mg1lszo=;
 b=Dr+wEgofOTDngY3JtJO11tIAqz2wfp/0CzIn+imLmo29+qj9uscXalwyDthO8CUWburhSa4ZPkkd6VeAD7MQVfPVqEQQp2vUhFTtJTkHxn5yzUDp7QK4v6mRE4esPwS/rqOx4Sx/Amaj/9DOyyKdekM5XqjYyEfYJJfg3BP6969JwkZF3oZEUo7Mvb5tTUw4g5TAexOL9BiPo6ia640sjCn3JbhLVbEAK7m7BkN2YDTpetQOxkJ+8TvC+PFkCx5MPFwygbSRh7RL7eO4HC5lc7hn4NubiAs4NUdhs99NNuN9x4ZJYJiXiqjroFlDsvTUJiHdTz1aFKtHXIg54XzYqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by PH8PR11MB7966.namprd11.prod.outlook.com (2603:10b6:510:25d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 15:22:23 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6699.026; Wed, 23 Aug 2023
 15:22:23 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 3/3] linux-yocto: drop CONFIG_SECURITY_SELINUX_DISABLE
Date: Wed, 23 Aug 2023 23:22:06 +0800
Message-Id: <20230823152206.2932585-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230823152206.2932585-1-yi.zhao@windriver.com>
References: <20230823152206.2932585-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR04CA0010.apcprd04.prod.outlook.com
 (2603:1096:4:197::11) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|PH8PR11MB7966:EE_
X-MS-Office365-Filtering-Correlation-Id: b9c7558f-eb9f-4da1-cb98-08dba3ecbfb6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	a7AQjkfVVSIX49JPF3puytQjqm/yum1AquryFli87vZtVko3aB2jAo0MYGp2UB3knusfgmMN8OGQKEQiibfWjUyWwCd1FA8LI0ru7fcOO/Y44CLfS8gbQurIl/V+xudC8CJSiyZpMakuRqzqBZ629gzh8H7EvLc5HC7h/nEwpSeFevUn8g5KgVSzS03L9QFG+7/JdXB032wlDLVs7z+Jo/tZWhRfUSfvVsFKXwzX5N9wz7My1fq8gjXdU5yg7Ql5Z9/9c2NwZ2I0f+L2X5NYEGvb6q5uthu648qK+dJAr/9Y8jJLb6Le5HWBrSEAc9yuzvNwrG0apJo53Exc1q/cZuZMcniJ8wgkSpwsXX2ZSGyuIq+thKtRVX/FtIAWltY17qUntvIjejsIn0IplIG0LUquNAqqobF/IWpzwLOvcHoIdXboXYwOqSFWZtyXsZWf6rvNsci6NjNVw6jMoTE87DkEcKQXb7+cAAROE8Y8he2phUKdZvjZI62VCH2K9moSDncLoGh4sb4c9HK2fjwxgfiuIlF7DEyaiNHOeeAO4U94ybrUHRj9MBEKXKilXOXNqQUHAQtYpDGDDTRBlgy8nfkw9QPX+IbvdowKUURDrRkBa8vGJ+g61W0ZV6eXI2W9izlcHqDWe+KQhpRszYtS8rA+Sb2YKMw6woi7dSrhwKM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(39850400004)(376002)(346002)(366004)(396003)(136003)(451199024)(186009)(1800799009)(83380400001)(4744005)(2906002)(316002)(6486002)(6506007)(66556008)(66476007)(52116002)(6666004)(66946007)(966005)(478600001)(86362001)(36756003)(44832011)(1076003)(5660300002)(26005)(2616005)(38100700002)(41300700001)(6512007)(38350700002)(8676002)(8936002)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?4a7KmQueUBy9qxw7BFEv2Nw4SZjMp71nucrlaeQPvWtPa+4vZtmqQlvu1S5T?=
 =?us-ascii?Q?VbwB2d9WcIDvy/z9jr7cN89aT21Y9Lk42v5/d9G1jIOaoa0qKgwFhwszT9xA?=
 =?us-ascii?Q?RQxdzE2NUwwWa7nG2owRxX3B+ya1G/dStID0yc8cGjWh/0b66aABXEPgq6gP?=
 =?us-ascii?Q?JKo9IZWn5kmkNWuTQYq0ipL1dwb0cAGR0DEtyAqD9qu3IP+Sg3TVj4hkRAQn?=
 =?us-ascii?Q?7v+pOaIJSbI17V0CdJlAi3goMcwtCY6stMpE+ucoXjqprw9jVIg9trftZwyw?=
 =?us-ascii?Q?o61kNTbnVun/1cuqCp9h7a2rbH9oMmdyYLkJSnAdBcOcek1aIWg9UeN9lFmB?=
 =?us-ascii?Q?YL9gaUhiFehfPI0qjeRUQB+yF3B9hCwHfzWM/R5orpOo7cVa1ubuga0V56HM?=
 =?us-ascii?Q?3YeHmAXzT4NfKV+nCUqxBtxUzat13pB/qVYMz9nTXebQwOrxIzCNiCg40tez?=
 =?us-ascii?Q?v4gy195p1yB5OeP8qnnCpZ9/NG+EolDQt9HvVgrONdMBSnT5XBYDS+ylIgWV?=
 =?us-ascii?Q?o4HOtpVOlmldwJ/rmzDrXdOACpOfDutI5IBEPlTGUQlp87Y/MTb+LWfzY38T?=
 =?us-ascii?Q?DJnflzIWDxlBBXw2nqcrQYMeo75MX/sc9OD2F2VoWW3A3ul/C+KJVgD9RfUe?=
 =?us-ascii?Q?+JPCAySNO1LHHZeOl0yp4UwtqpaCuEKSOWSpCNxWJwljmC1pp1JdEvXalFWq?=
 =?us-ascii?Q?L2uaGgOEoZ+ETxC0W6gw53aQDLt+lDQJu+WfY5yesyIm/axg8sUSXJqLvYyI?=
 =?us-ascii?Q?VQSGZxQQ5H3X2ixUf70Hbda4qm8NaDmwPMysT3oNCcS6nAXn1/fayR/RXPvC?=
 =?us-ascii?Q?xObql+RWezRGvx1vd0unfRgSlAzr8MLf3PYmoq9Uw60Dayc2xO+HsfAbZJT3?=
 =?us-ascii?Q?duwX8c4vWjs5lkmOUbyTsd/jLQ1UeHx13en7my8qQsKmfrT69MdPyDL4WxBo?=
 =?us-ascii?Q?ulaP1Fc4/OxPHfEwFfVD2On8u3afl1OSmVc1+uaMX/A4Gq0cHZRrYNp/aO3e?=
 =?us-ascii?Q?piAKXsi2HG8/AV/Pf6wQDb5Y3xvx8SPtUfP+iecech97dEkzN3TnT49qg3uM?=
 =?us-ascii?Q?JxNfvs0uXpp+nXTdLrCv5mUHqayondFV9GmK+wf1PvNUzrW3CWsa7wtgQOYU?=
 =?us-ascii?Q?pIHNNhIZk/WZU6v++xhI94nbgwBh2mJDCjr7Y9SuJPSV2bJcC/bEQ+XV7f/g?=
 =?us-ascii?Q?5qJqUWRAYnFwDUiwTLSWDBx6yxdCCxz2BL9C2wRc7AedpZTR9QAem5SzLAD8?=
 =?us-ascii?Q?amMu2M8J6AjxwZhFVUeFz+Ut8J71njWm6XxdQZUQIXuMOcf9YTYRva0WVE3E?=
 =?us-ascii?Q?VcNn1x87WGwnqd8B5uHLLetN1vj3gi97mvc/EfB+n2ls1S3RrFjwolwnIzGH?=
 =?us-ascii?Q?43judVbkP1o+1FxhxaWPljjklSqu250+yfi0Vs1it34ANxcKToWtI8WTsx7D?=
 =?us-ascii?Q?HsUk5ciXmhXT9XPY5AAGxxBjNoR5XclQ46aiB/e0yP4S1calqKU1t/W/Us2v?=
 =?us-ascii?Q?1wgGWSdx7b4PrCZKYD7qskGui+LHHv+pd04XycG3JGzVmXkZU1HNTAV8bgAk?=
 =?us-ascii?Q?CEh1l97cWQWxI2yEBVcFt12u9ItYPcd3GwaDJVTm?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9c7558f-eb9f-4da1-cb98-08dba3ecbfb6
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 15:22:22.9855
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2Ih1UEBhmIsQDe2MPCWfnJgzRCTBoE9vsnkDk4PS1HRkpzwM6ArBqCr/QE+QpIccxvwG57AZmwEsO6UeACwHSA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7966
X-Proofpoint-ORIG-GUID: ro1egXxxMZpBdMdeKJo0Ovj9NEIUTWkl
X-Proofpoint-GUID: ro1egXxxMZpBdMdeKJo0Ovj9NEIUTWkl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.957,Hydra:6.0.601,FMLib:17.11.176.26
 definitions=2023-08-23_09,2023-08-22_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 lowpriorityscore=0 malwarescore=0 bulkscore=0 clxscore=1011
 mlxlogscore=762 priorityscore=1501 spamscore=0 impostorscore=0
 adultscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2308100000 definitions=main-2308230140
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 23 Aug 2023 15:22:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60862

CONFIG_SECURITY_SELINUX_DISABLE has been removed since kernel 6.4[1][2].

[1] https://github.com/SELinuxProject/selinux-kernel/wiki/DEPRECATE-runtime-disable
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=f22f9aaf6c3d92ebd5ad9e67acc03afebaaeb289

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-kernel/linux/files/selinux.cfg | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-kernel/linux/files/selinux.cfg b/recipes-kernel/linux/files/selinux.cfg
index a081095..8333a05 100644
--- a/recipes-kernel/linux/files/selinux.cfg
+++ b/recipes-kernel/linux/files/selinux.cfg
@@ -23,7 +23,6 @@ CONFIG_SECURITYFS=y
 CONFIG_SECURITY_NETWORK=y
 CONFIG_SECURITY_SELINUX=y
 CONFIG_SECURITY_SELINUX_BOOTPARAM=y
-CONFIG_SECURITY_SELINUX_DISABLE=y
 CONFIG_SECURITY_SELINUX_DEVELOP=y
 CONFIG_SECURITY_SELINUX_AVC_STATS=y
 CONFIG_AUDIT_GENERIC=y
-- 
2.25.1


