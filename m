Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EEFAC47258
	for <webhook@archiver.kernel.org>; Fri,  2 Feb 2024 09:08:37 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.19030.1706864913974135332
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Feb 2024 01:08:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=buZsDYb4;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2762c4343e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4124nNI5027596;
	Fri, 2 Feb 2024 01:08:33 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=6lvLPCMw82joYNjGmSZrjKe6KlRh4hgZHCCRckb+Znc=; b=
	buZsDYb4WZx1CoLPFnIxqkjA3BXkoaTSefL515ZFryrsvpPsSkbb9W9t4ynxIpbL
	WONOSw015CqKeN+ej8zId03DAR5JIg8lhvaVjXcE/OIV73yU/xBBzOVQbGEfoqsp
	QSZ0WTCS549DS59l/ukIW/Fup/+SXWw5mYrf7p07trfKYqzMUh7YnopL4TEB7Tbk
	AuxNjZo6zjCyXEbn7AZ3oJ+MWlDWAqoFu9uHRu9zEPj9VGmfIMaiBM5arIU/9rdB
	9EBL+t8tZMG/zXjN/WMaFmCz55zyXZXPegs/7v1jRPcQrzLFvOIb6QOxS3xUorC/
	zunSBcIs4sz3blr1omV2DQ==
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w0px589es-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 02 Feb 2024 01:08:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IYKEtiQJbr9HruZ0SAOmiNdcLwhSJt3ciXRnBZF0BcivKwdX9PH2LGLc5XnirEn3TwF5q3G82A9t6bs3dytY8VTeBjvl/NmwTtClVLARR3PVsyzjEaXIuExkKFMkzHIJzHgRGMNmMrDaQjkuBdVqMFi66WpEl9xEdpGA9jh/hGBfo/91YY8DS/SLPLVuycP9BXi3tZtlX2NR0VeaOaobKUL0hx+NiNgDrqo8gSXyGhTbk97uko7BHQF90BdVl80CDHwHMFulmAWapfyspSeKBU1cUlTgALBDCol1PA57py4xr2hdtf19TPi4tSAFXyaHh2keM//pzoBqyrp+ocRqDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6lvLPCMw82joYNjGmSZrjKe6KlRh4hgZHCCRckb+Znc=;
 b=XLDRZUXsNREgJj2Rnrjetu7VMA54eVfq9EOSlM+sOnWoVMyQtpK2lDPbaQuqfKATP3XhEKWV/UYps4/+sipqEX9Ly85HnSr8GXI98R9jAbIp97Qb+G9Go6J9KdNlhf8K+wrgeCLlWF8FqGsQfqRqEOi7WJsYZs5CvQAhgsJx7ZvwLeLyMwuudZCB0Cq5b5iTIk1JWL5KY9N+EFj+cCfgeklCK3tNLAAcGcCFw/p5ITJAj4UKCzeLBBIUPZseaUHbGCoTGgk6GVY98wFkLZPQO6GWdEZNgVMGQQMBiNhoVwl0kI2kch94Uhpsi7ZsqGnpZr023sXCmMbz3Oj/cJJBYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.29; Fri, 2 Feb
 2024 09:08:31 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b%7]) with mapi id 15.20.7228.029; Fri, 2 Feb 2024
 09:08:30 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 2/3] eudev: remove PACKAGECONFIG[selinux]
Date: Fri,  2 Feb 2024 17:08:17 +0800
Message-Id: <20240202090818.285479-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240202090818.285479-1-yi.zhao@windriver.com>
References: <20240202090818.285479-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR05CA0046.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|SJ0PR11MB4896:EE_
X-MS-Office365-Filtering-Correlation-Id: c6cf5e00-641b-4093-070b-08dc23ce860e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	6OvdH+TJjmKpZwTTYRfY0W0vlusKr1mp/VLiRZelUhSGIxOIyOqwBlqIbBMs37k72RnwwGRB6E1zUItYzZrnwU/Rrimw8ZSmYR4e7B3Qk1+K/aLI4ijAUkDkFRu8DmtkTsce5bFrNLi7XjIrLDjbyII0mq1hMfPKuTbPar2w8vAVWmnNKBd9Zm6Sx9n2CjkGmj8SvyAj16hbl5H89L7omJ5qN9iuaHBByqNI8tQwponnV1EHHLNAUe7VuJrkLq2X8SjcZ1kJvQU5lOau8GJIUosnCMfcfLZHRp9tLl/qH8sEZeai+9JPjSsBd2LlRjJ8OVzGZnpTwbJZ7VAUgGGw7+yMusuqzuySenKrSxY8L9bXxNjEWxRdbtrVoE66F/AHstI7B09ery0Tc/GE+o/K0g1VkPEUSZy+qvWlRbhjPdTS0hvql609+SGl9rNI14jCsoehdOnd6bFb9UthIBJL61zcQVGsprQ767BX3tiMhjRplIe2mYE2xMwmfV/4/E5U8vbGFiAE70OL5BTS5DKxqPPc0ls4rJj5r2PwGuJon6YI3sUZs4+oP5v7E3FkxIuUD2PYHRXYq3/w1dBAXHyF4dtwBAFAn/rV9GgoCDKa2uU=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(376002)(366004)(39850400004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(26005)(36756003)(38350700005)(966005)(8676002)(66946007)(2906002)(86362001)(66476007)(8936002)(5660300002)(44832011)(4744005)(66556008)(316002)(6666004)(6486002)(6506007)(38100700002)(52116002)(478600001)(6512007)(83380400001)(1076003)(41300700001)(2616005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?lMAk5zGhioNxmGA0KmwXYYzIvUg3DqVL/7PYJQhxHiEugfRIeNstHXcGvKsE?=
 =?us-ascii?Q?xMu8z94w6nr+nbsVZL30w8cSHw0PVphU0CSYvQ2vhr1F1yayUcLcCTlbWhSQ?=
 =?us-ascii?Q?fCH/GcxdddWmJMDAguZVYViFLyxrvsZDJ0gIkJf714rCt0pXpcU/zTVMie+o?=
 =?us-ascii?Q?1uTY8vxKj0A609FiSnPOjN7v7YIi6aJMQvLODdgIJ/T1fxgN7HyWqXSUgsL5?=
 =?us-ascii?Q?YGgLv10dZlHHNurGCkb1B/GvKCAqKpmCLQZiJs9b8TMTzzZDtRGTJTH3OBm6?=
 =?us-ascii?Q?H7bJ/N4rBQNYw/+hyYnpw70oI0dKE6/Y1RSq2cxjf9vSyVtYAlo177lgFcN5?=
 =?us-ascii?Q?hQEC/Pf5L+B/n1FrXsk0iBCN4fuEI4+XleVD30iEYpramL/CDDqi3HI0IyX+?=
 =?us-ascii?Q?4Ot0x+sQnEgJK22iU9mjak1OJ0Jac2UrdeaF5BMzaKqONSwZxpffsODC56W6?=
 =?us-ascii?Q?KWZqNgRQEnMkwbP9gnmWVsSBhJG8iJJx9zb6o8Enc4rPzT2C+HPjyymtjoZw?=
 =?us-ascii?Q?DuZW17Hfbwxn9ivslOqDkfV9Ym9oCx6pqdLKNWUT87kgMjHOPVwdphX3Pes/?=
 =?us-ascii?Q?59QEnkatyGcnN8npPUAOf1eYaDN6WcA9FYnM0D4RBnZM2WVfER0bIfHAhIci?=
 =?us-ascii?Q?CLciFHTiYrT6owJtNEpdw7nC5qBFwTYqWGpNPyd9QfHr7aE7qkVEHPfwvxGd?=
 =?us-ascii?Q?EzMKJbrjEdiPRc6GJh34jZu5UxWeItf2CLr/FZyW5rtuNxbFNWmGQjBz1NYU?=
 =?us-ascii?Q?5Ol+B2lEriaBhNEWVEM2Bu5dzF4cazGrI/2DFmWjMnlb3b2lZyKcAKj55jd6?=
 =?us-ascii?Q?K1YsPOVoK2CTejj53tPGwGtkhhexHVhz7aFSjjmj20aEzDVQz1upC9Qj+vkO?=
 =?us-ascii?Q?1Nowt4DaCyD1+8W9vEOc8qWmEc/mhV2YZfsmNwTRKC4EfxfCu/PEvbFpvBti?=
 =?us-ascii?Q?bsPjCf7NwzzAIid83XizGdHiWj3fZo+gSSpv55S9GIU3023K3OvsJt0tbhzQ?=
 =?us-ascii?Q?TJ38fhBz5jQpgUJTK9p62we3340D02wMWT9WE/vA69Ol+H9nAtAEEFBMMjgX?=
 =?us-ascii?Q?kXeACPhGb0ZtpVZOZVgXaV069r6yWF1X05/IOPAZpMx2GmvSZmLl/pSNq2i2?=
 =?us-ascii?Q?UN1U15A3JlHCZdMhmHbCSITHPEw8WeK4FZNUWDYAuW4NeQV9Gf7JL2fSnYOy?=
 =?us-ascii?Q?lWi0KpwwmrD2klwFTcG62IP5KOtZA/xoC1FerGISe2uszk1a1LSD8ykYrEfw?=
 =?us-ascii?Q?Nd2glevNpJxfE+vOB5jzmtmoeym2mlQqGfxsszPzrKv8ceRD7fLYYNuR2QoF?=
 =?us-ascii?Q?WCCx6oFyN/3YJXB9AWtYE0wMGceFHUbhUVyEJQmaSuuYmWbEoLS4LSY1bpde?=
 =?us-ascii?Q?CJENM3neyDOR2qYfpZGpU9yjawGGhZJYNpeGboWOMYB/FMyMZF6WwMbpJWjC?=
 =?us-ascii?Q?gPmGUpO/2zTNmYRy959h8XDZMu6pokJDIyNUos9C29BDupiC5c9Z+IaNdByi?=
 =?us-ascii?Q?/MqW8sz7Q5YLchbXGUrmD1Xj9cQf+W/S1WOieK4Q4xUWNWwPuEWH0R4fiwxF?=
 =?us-ascii?Q?UpGfxnOx6TCiY0k2xAvKUcVFO/h3M1iNSIsHK0p6?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6cf5e00-641b-4093-070b-08dc23ce860e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 09:08:30.1994
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rBcL8Owt3S9g+x7Sn42FpkzHS42O6emxzhR6lHytoLG0K4B4yqbY9fSPQkmWsJWhZAqO8CN/Gurz27Ct/EeCew==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
X-Proofpoint-GUID: Y_hhF842iuwdflAy_L_8h20nQ9HtsVoq
X-Proofpoint-ORIG-GUID: Y_hhF842iuwdflAy_L_8h20nQ9HtsVoq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-02_03,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=559 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2401310000
 definitions=main-2402020065
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Feb 2024 09:08:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62381

Drop PACKAGECONFIG[selinux] as it was added to eudev recipe in
oe-core[1].

[1] https://git.openembedded.org/openembedded-core/commit/?id=e6c18c9d9d0e11a6a93cca14dbe622707cf25515

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-core/eudev/eudev_selinux.inc | 1 -
 1 file changed, 1 deletion(-)

diff --git a/recipes-core/eudev/eudev_selinux.inc b/recipes-core/eudev/eudev_selinux.inc
index 976cb23..94950f5 100644
--- a/recipes-core/eudev/eudev_selinux.inc
+++ b/recipes-core/eudev/eudev_selinux.inc
@@ -1,4 +1,3 @@
 FILESEXTRAPATHS:prepend := "${THISDIR}/files:"
 
 inherit enable-selinux
-PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,libselinux"
-- 
2.25.1


