Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21D66C46CC6
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:31 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web11.11931.1702714944961320612
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=ddI8E8EM;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG8MOPY025867;
	Sat, 16 Dec 2023 08:22:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=oTK6ZhZ70v7CA7DYGdjRDvRfH+xJlnd5s13FNeIP2pw=; b=
	ddI8E8EM/resiEVaO1zlMQASxyJKwz/z5HAqMQSbCzhgI9sVZeR12CFSXZ7CxOQP
	0Nv5EudY8DlOXoA3/UiWcr4fgxjSOtGo/KM1P1UFT8gKsM8PRTw4ayqkdGbpXS3X
	wd3P7nPXKWEklYqfOy5V72L06NR0Sa57ar8Jq3esThvX1/AXyg/iVlsn87CwqB82
	Ddcpijm+gtU5oKk0NQwvkcdGKtlTYvB4/5rSNHPM9Gqb+TbSoSvJvPVbM4q5uttd
	UkE25u3WU0Iho+RF3ikgPeeFlMRZ/aaS9ERZSVuFJF4uEYNSWcAwmAVBXM/vrcTU
	0N6vbZdmF+u/DctyXRc/dA==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3v12v5r5rf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 08:22:23 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HpyZSY2kzSPUtFDJfhIXZx117axflkQexZMzOd6Bh1jwz/3bKA0Un8+VDtFkGhaRcrWdU0pBHHT9pHJJY3vdi6sJBpMhEerNvjZWVAzd3L7U6arPphHbWz4UI12J0RSccW+zLnrCg+fJheKFkbzQhdoSy9qh4xmIMTWtaHlgSMPvcbmchhiVp0SSwQgdgERa6z5pAK0ZPEPsJKlkDAQowVAYyjFN7pGTCMU3G41jvVJjhqvZVjDLHchxinHbzrSuYD3JVEncgx2D+HSCOXpwIYscz1yHwY39eTiuoVS9YCWg9BubKgqrnKr2hzF8Lxq8OmfJni+oPptRMcSgyFJvTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oTK6ZhZ70v7CA7DYGdjRDvRfH+xJlnd5s13FNeIP2pw=;
 b=PeK4fu6FMtL/mqX+bMP1zhF/sHOzi4MAQ2CEgO+QvYOLKcC2Nw3AvNTW+2NLlpF3ICdwZcv6NIE0xlmbCGYZnUjNdngnX/OgcLRsu9H/EwBQ5vA8GpH2JIvizvNK17oKd55Ne1aqVdDiFW453tnLCJcZJwHlJrCGx8x3EMh3/RZ8XDO5vXgPGCW4ut+5qDgkoXmIHbZyTEj1+RzsbLjQc+gm8x6sDLeXd9FwEO6jemuSG/fOw5nITjAWCOZ3656ID1ttnJxfVEQMdhUzDYPdXYfvQGLqpOYB43wRnv+/neHdktbXxN2nmEG6pFlrzKQvbAX+qRiISrPA1RsX7rMTQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:22 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:22 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 13/15] selinux-sandbox: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:40 +0800
Message-Id: <20231216082142.198501-13-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 49e3b554-f691-45d2-5679-08dbfe102043
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	USWHHXFHZfOPbmmQPiU1DMHTOj1w680dAre0J35GgnUbjHc1DhRtnutnAtMITo+OHD82VzDBx9kjaV73I+dnr+g9QCvS3HNFI0UcLE/hwUMy8645ot6CvC9FLVWPfzUth1a/xm5PfnX3mL2QUnwfbXgOe/KetWjdNPZ3EhdnSv+a9GeRHntqPqJGjlmMWxVymHUgif7wPE7VPx8865gcdXftL7uYH7ffmdht0mxVECs+m39/x9hmkn0jH/1xPh8702j+DtbuxZBO+CjEYyDXAOqQzXRfE+YR/VFxLLe7XRcTKvK2IIAS1x93yuhmjrO7vD5Nlty+D2QMlIQWeTjxJeVaBiAODSRMEULPWp5gdiYzk3sLcOUYw+uPz1+8qM4U0m5z1yocAqkItqrMBlW9wwX2jp+uslULF3KOmjAvNlxBshBBZ6b1jnWyrjfdjYFSYhqmgjANDc4hYgna5gsSFpCJplOgpLvfY53EjGfHCXBALKuztXV83NfyJCtglKpOI/yW72iYXoQj+xIS2Od2eBqbhXl5M3w8qiFROowQCu9zg92o0a2hNvKAS8RZIUy2PJjtI/xh7eWZG9zPBGomtXdjBkrmc88vnqvB97Azu4FfcUzIN9+uSRGLKlRLVYaN
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(4744005)(86362001)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?TuFkt65Uw0YnP5h1wucK5s70/jaSh6FPoWeQ+ych1bN0Dc28owryDy7fstII?=
 =?us-ascii?Q?uwxAefLPU8uMUYpaDVXiCzAjfZuoZS6dByYhyaWm+aQWaWleDBxwhfBkKGu7?=
 =?us-ascii?Q?VMFC4Fw8nltTIGDXfwbUNlp3rN2774t56bXhJ7jFQRHczKej1EcRAo35jCp/?=
 =?us-ascii?Q?tB0O09QoxBQincpkbnIF1OhX5PSxyXnbuWbSPzuyy4ISVJIQEQNH7OhDK+PD?=
 =?us-ascii?Q?JQ2vrds8s4XvcxxwsTyZxBpXJeNz5jy5eV3/kgE0Zg7CXPN2B7yHNcrQBo3p?=
 =?us-ascii?Q?JHQ2cV4dYzJR4FEmRea0BEk75mdPH3/fAigfSkVi2+QuFmQAAocr+xRaJyq5?=
 =?us-ascii?Q?PVLo5uylnWWxYSTOa8Jw/he4cio/T4MbXZLhwJkBqU+mAUMZhuSJG52RRQkM?=
 =?us-ascii?Q?VIn0JTPiT/GAGk7FlBJJkZ9VjGuWYZRgfajB3x6oGSTMKJdSNhmIeA853QWJ?=
 =?us-ascii?Q?qbpfilxqDX/J6M60JM/Rw+hZK9dU8dqfjqQKXOqnd5zykCyDoNYKgLJbwcXm?=
 =?us-ascii?Q?ad+W74iIoG0w9XkTRSkqY8ttTyxWdhIzwRBIJaiLmySYQZPDasTstmclJeZ2?=
 =?us-ascii?Q?1ngUlGk3KDDXCbRVBkwmow5XOOH/FU3fIZcNutfKH46ALSDYfIlZHpnd7Ttz?=
 =?us-ascii?Q?jkwouNONBPdMJ6KfJc07v1OgAkHe9YFBq3/t0Excgiu2evc/5wVNwXtjeLlT?=
 =?us-ascii?Q?ENjcH3rjYzsgM0GFnEZjoQdjoXjKXiWIvGpXPMkt+jhLtBJJGPz24sJtNy4X?=
 =?us-ascii?Q?YqV4EtNo8Uz1I3E2JXhRSZUjIQy8uFsZQxlWWz1+Xtduh71dQbOL4qIMyNw8?=
 =?us-ascii?Q?XsCZd0tF+v2K+3WJaYMush+THLd4TGLnF0WG2pEKylW2DjZtt/nJLupumjwV?=
 =?us-ascii?Q?VMFNshldNbEdqPUHTzYRVdW41C3dfoHw1eyJ/tabczL5lhkJmSf+I8ojPR6J?=
 =?us-ascii?Q?5426hYW3+s94S42YzpEz5+YXmZGFD4HTGXnOt+S7eDhw+MB1boiWKRA35SrW?=
 =?us-ascii?Q?Z0Tra3seIuFGn90ZYBFp6qkHCnChIbITXFIyJHq0Od3qPCJRWxVopYcb26K9?=
 =?us-ascii?Q?ByWTcp7TJ8dUY0kF6sq55au7C+ZLGMCxOstjRDB8/xQR7hERfPA2hIR+NtI7?=
 =?us-ascii?Q?+YEeiZrhek6aEaXeeAVVmO+9VP6/Y1fP1L2dzr9iWGI3lejFGy7K8zN6h8TM?=
 =?us-ascii?Q?lkXqEHH72E6kn1la8RndrLkyE7C3laUifsfFXMEKurO0in96veJbUUjcOUkh?=
 =?us-ascii?Q?fmTduJzJmxDO1itNGXpE9BjNu4A7R2p+CFwn0+fVSHngvgst0/t9eb328vtR?=
 =?us-ascii?Q?NPB9m3S13CJib7/H3kg1QyINp432A98dKAhdqxKxmzFQUjCKiEv64TTho8br?=
 =?us-ascii?Q?Bsa5L1V+Ykbc4TxxwrEfjtXM3/Bw4RSI3rsK9kMdowSR0vduHHFdz2M0DOqa?=
 =?us-ascii?Q?LiKQsuWDTR4vNLGO1aJLdQ65Sxek1UInG3lgS9PFJvbUj1vH1guVVRQvGgIU?=
 =?us-ascii?Q?fFlE+dmd8lEPUolOx5X3Cop0BcHmvXgBDJcf+W1sQPPh834heTu+83Qhls74?=
 =?us-ascii?Q?Jz9IvaVYeKJFUYVtkCBdDs2W/MtBHJvHse5mnLv0?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 49e3b554-f691-45d2-5679-08dbfe102043
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:22.1244
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yCZklhmnCVFkDOHJuAH2Syr+pL+HfXMzOVqa4V7mDtF0EnLX6Nmk8Y44T8wkI4xud6Ptgqv/lwrF2r8p0j/iCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: DBuWc8efmXnh89BCacA1tK7rqVUfAGxx
X-Proofpoint-GUID: DBuWc8efmXnh89BCacA1tK7rqVUfAGxx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 impostorscore=0 suspectscore=0 bulkscore=0 phishscore=0 mlxlogscore=700
 priorityscore=1501 spamscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61939

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/{selinux-sandbox_3.5.bb => selinux-sandbox_3.6.bb}    | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-security/selinux/{selinux-sandbox_3.5.bb => selinux-sandbox_3.6.bb} (100%)

diff --git a/recipes-security/selinux/selinux-sandbox_3.5.bb b/recipes-security/selinux/selinux-sandbox_3.6.bb
similarity index 100%
rename from recipes-security/selinux/selinux-sandbox_3.5.bb
rename to recipes-security/selinux/selinux-sandbox_3.6.bb
-- 
2.25.1


