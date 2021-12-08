Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2ACB5C433F5
	for <webhook@archiver.kernel.org>; Wed,  8 Dec 2021 07:34:06 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web12.9157.1638948845391134820
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Dec 2021 23:34:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=d08iU0sr;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=7976a6fcf6=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1B87TdAb009076;
	Tue, 7 Dec 2021 23:34:04 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=EhCC1F7zsFPIomM0Uqs1YTIc83urbPMEmWLg6B7ZeSw=;
 b=d08iU0sruAWM6BufneGsstoit4jVDXZO3FTZSrpqKHQUEp/0T6UpMpxgHrd7PMAiLyvM
 gtoE2BXdAP1S+anFWbT9uHeUtNS2e5aXRCpxb3z5GPbSzaOaJfo/XisZBH92J4TuXFza
 PDPpBPVKaXaGCBlrgJBTcjRJPYDlWESLjIMidQPXzUi5+vZDHhppdT5r+7+5puGJsLlE
 GMYlFbjGXDtfdy2JMCFY49qXVcj6fYCm/TzkXCaN939XvLbT7XksKZ4CIvgK9tTloNH6
 DH1q0g9l+isyJZdDm1kEY6Z0slcgNcAFOV1H2aF9fu+W+i3Zm6nF/6/2/tVVSxwpfsx8 /A==
Received: from nam10-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3ctfxvr9us-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 07 Dec 2021 23:34:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BT88sYoGJN3MGYEynDgVFozodNFaBO7APPuClBwqX1jV9zrKwTa5GXMlbdk5GaWtTWHNRrEvXEx1UkDkfo2Mv7x3U6Xeg/I4VuDtzhjHquLFUdOWfORt0/alnK+2UPzxZxvCQlKBxD6BX5g5gKt0WXnF8RxkiI1f9B2XFg6ATwXIVH6bqgJhkDncyoPkvDoaklDI5hYDH1o1xIZFbjExZBV//Pz+viGNHthNAjBAljlsnqJAFmDwEzTwOyk7jgQBNmDjJELXrV8fDsXoWtYj5//LpbZC66VpuApum+NnBMmvbKEy999pSF2EA6FQo4tPopIyuqcMpK9bI7hasWwnXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EhCC1F7zsFPIomM0Uqs1YTIc83urbPMEmWLg6B7ZeSw=;
 b=IvYe25T18xzxF6yZF37mBodrSu3QirKhA47y5Y03BpIpWAnG1wGE/9wocvfpg7aAn5h9lJhJfgJ6UOPAQFKq+sdOHxxyZ6H4SA4fpIEt3JwmOTSSI42eOHlX0nGx+wGF97pDWvIPWL0IZ8wzPJiA81bLVf2FL6h8+YIGLulsWygqbcT4f9ExuAEMvGrWjxg1MpvWJRqvrU70sqwU005mT6hT+5C9rag9rADJ1rXULzXofyi3WV6vSB14z6gu3jxhQbLjJWjx6w3bWjEGBO6J/xhiVHGPM8FwjZhfz4vSmmjS4yHFujDS+WB0tyCtEgz+ny0/zmgvpf8uJuYoifVbzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1262.namprd11.prod.outlook.com (2603:10b6:300:29::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.11; Wed, 8 Dec
 2021 07:34:01 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8962:26c6:20fe:eaa4%6]) with mapi id 15.20.4755.022; Wed, 8 Dec 2021
 07:34:01 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 3/3] selinux: upgrade 3.2 -> 3.3
Date: Wed,  8 Dec 2021 15:33:45 +0800
Message-Id: <20211208073345.38198-3-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211208073345.38198-1-yi.zhao@windriver.com>
References: <20211208073345.38198-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR04CA0086.apcprd04.prod.outlook.com
 (2603:1096:202:15::30) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR04CA0086.apcprd04.prod.outlook.com (2603:1096:202:15::30) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend
 Transport; Wed, 8 Dec 2021 07:34:00 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ad657b75-b2a6-4a90-6ce9-08d9ba1d1a9e
X-MS-TrafficTypeDiagnostic: MWHPR11MB1262:EE_
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1262AE6C247709D031336BA0F96F9@MWHPR11MB1262.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	IPibMWMoM/2SQBL7/xt6Wrrc9qqe8q6iTALwiD05kebQHgC1mfouvNv+Iyi4Rom3OXY+Nw+Z8XTRueaxZNG3ya5mTG+6dmY9fQqZZnfagauBvv5vzJTN/Nsrr7YurFv0yoyU6t9kT+oERCmyxrzLDfDZnJ3AxDZwCgmG2S552cjgpSsgXhPnQLXQMRhib8EcNqdwmILILUnco1/oFxR6BoS8LURs5nZwKECdfY2oBH0Po2osCmxSb9SxdFihMgtqLrQM7wc5usPzW8zME7cQmCiTBC5S9vRMfyrFAbmvAYJnJawUqPCCSm8v8UmUaY/SijPWun/x8yOTrkRX4KsSiykg+Jap9CBByTzMGPldysmRLl34CkX6BFCDIlpn7gWTzHSGezRdRfiGC9pu44yUJiZfKPFnwdf017e4bLEoxLzv1ptvdCll62168BjX/V94tupqgv6KgJWK1wAv2FGQ7nyvGk4J7ccPGR3sb0IxxAbYeKud4YvtwiHEPE99kcgwSF0Q+hcoZ93Fv/ua8yZCV69ofOC4i/1+DI2DEp4dwkNtZ/4o9ol3PBzn8WFPD6yrtYQ43eBT47V/pPWH5S3Ai0lYlKIwkKSXXDHPOz5p/g5gL2+LRzfeKoU9k40L5TFtl6po6wTM4fA9ijV3ZLucGlehbYxhYIKcUXaxWrh3WJ/GKbr1H7bcHyNfV9d673w8fGk/BYIrxsOS+QPcnNV3tn++1+879iQcBo8ZMXWlDD+FdoPoTW6Jr/JNmqnyWg5iKrHei1Blsdws9MZJcnsWg59Zaqjbj6ivNioMx49atFiRp8Pw+Z4kIOL3LWdt/KSYh0fL++k1AoG3jj1A6GXn5g==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(44832011)(36756003)(38100700002)(38350700002)(84970400001)(6486002)(86362001)(5660300002)(186003)(66476007)(8676002)(66556008)(6666004)(6506007)(316002)(66946007)(508600001)(8936002)(30864003)(966005)(6512007)(2906002)(1076003)(26005)(52116002)(2616005)(956004)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?iaWZVFbf7mnlV9wqm4cgxARuXanlV7gRip0WkSUmxVDOQmP4WSZ7gWs3jdXD?=
 =?us-ascii?Q?Ax+JdhP3L5BkGR//tsainvx248v1nWvKiIPota6kDdKL/wMgcBibyTKbsYNn?=
 =?us-ascii?Q?EDChDYd7nzIKuF98+hFg+6U6I2DdRBEw0hApikLJNPU2ewQi+alT99akI8ru?=
 =?us-ascii?Q?GK9ywaLX564AhrO61JdGlWH/JWgXH4aPZctq+KWTBR0KrDE/QiRI36EqDbiF?=
 =?us-ascii?Q?+OLjU6rSsyzhEFcgdBuqTwp1CY5sC287VpY6Nq85xVLQM7lKfxiufXz6Virp?=
 =?us-ascii?Q?pRdwEGBkivD3l8IRRTfRTG6OrkA/3p8iU7LZGIzxnxIJjeIyKGLFpZPLyuHs?=
 =?us-ascii?Q?je66DJiidphvRqMfP0x37iC3aQEZtsq4tScZ4iESbogVBqfAvTCljLYwX2Z6?=
 =?us-ascii?Q?LFHpeuFvyNKPlnv2uFZZ0V2RKi1tQlsLU5ASx5uW+TC+rjwTzJCxSfN0YjHx?=
 =?us-ascii?Q?b1GJXyh+ZRNZjqSHfgo5v3j+HIESk23ga5v4CI91T9Mr/n6DzeYuPwwvriRd?=
 =?us-ascii?Q?Lpi2kJEi36C6jn3EGs5aMyHgqTeh//POf9Cr0J2219fU9oYv8T5MmjozHW81?=
 =?us-ascii?Q?JtNaRHzAZld7ssXW6LniVbZeJj6c7n0W8+khBh0BTN6r256dbq4PRXzUPXac?=
 =?us-ascii?Q?1k3Bo5YmfMq2cGOwTOJJ7H39AOTSsupOG7v8DDZbITGGeXQQiPrhk3eEMc7p?=
 =?us-ascii?Q?YUBtokfC4h6YJzYcRvP+XzUMKqYylOj3tY+kvswlEMJWKOL896RbBstRD3BM?=
 =?us-ascii?Q?HjZf7V8NeXUV/Jvb0Oq45wZOhwY9hxB2ImmfpXnHpyxzLxoBlTjs3/xi4jDz?=
 =?us-ascii?Q?Odec04Zp5kqmuzDyTeAqS7UhdPuWe8DOgmQhOdlk7YuwX3azmIoHfe19aiuA?=
 =?us-ascii?Q?j3PgoDlAGzqK7rV841J7syFgpV6l23jKP5UXfUjrCEV1YUWpZR06kV8p+VMR?=
 =?us-ascii?Q?RyLJGK6AUPEkPCDgEgf0JCiIA+O10uf+ainPAYD2s2eyahxQfuchDx7Lnosc?=
 =?us-ascii?Q?Zqb7XwziTYp860imHvyNTUsQad0lSkBm30vIvQVyustyPAP/veeEn7ceZ0lP?=
 =?us-ascii?Q?GznMZFgHVZkSaIXq6zYnxQHkSCH6ntgFgJaGwq8h26Md5Xnh499XgH/VTmLR?=
 =?us-ascii?Q?ovuTbecvoJZIHLztPae/we8t3Ggo+fzlQpAoSOEJuDpxuTWyEQK7PguMv/CS?=
 =?us-ascii?Q?7vwRl6cl1jCO71UsYgKfDvGfrkR4geEoEqWlRnxgQKTBSJz92dFfTSuNZVUo?=
 =?us-ascii?Q?NTmx/wP1d/iSOAJFfME+xwNAHy96bWhPWfBCuxeyhkG9CKwN6nxhdVPjHtIY?=
 =?us-ascii?Q?aq8ShThsJUCqCwiiQXPHmydIg4ildE4QOlQpvD6OpgYzPhJoN/5wgUesFFiy?=
 =?us-ascii?Q?3Jv8L0hPlMhDF+2pJzbuZmHj8jU3aIsaAg0WMzqY/gsa50ad9NOOcAKKiwcb?=
 =?us-ascii?Q?xlaxzuq5APd8cw0H1HHgzyn3QNdRSarWwDl053RfBrkmX53Zo9Ny4ti9sm6t?=
 =?us-ascii?Q?sszx7E/6WYDS5bluaMixAlmp6CdduLDbarQMIRF/8XaSdvB8WP/IYdLzlfs4?=
 =?us-ascii?Q?QRfavx5Mxx2CoLZoYO5jyPXVxhyToY4KUK+ZUz0z8abHdBs7kpCgFveApxRF?=
 =?us-ascii?Q?e/rsbsFUh/W1rvDH0DHL2Gs=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 ad657b75-b2a6-4a90-6ce9-08d9ba1d1a9e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2021 07:34:01.5682
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 pjFuTRKwnZh5PFD1zL8OO7+avnfDSklK59Zx1vtZutxGcCvLB7VOmherrmq93MKG9Wg3LclAuxe5emy0eU3tsg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1262
X-Proofpoint-ORIG-GUID: G9F6oRahHotV44uLgz4hFb0hiILvuOrQ
X-Proofpoint-GUID: G9F6oRahHotV44uLgz4hFb0hiILvuOrQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.11.62.513
 definitions=2021-12-08_02,2021-12-06_02,2021-12-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0
 impostorscore=0 mlxlogscore=999 adultscore=0 priorityscore=1501
 suspectscore=0 clxscore=1015 bulkscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2112080050
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Dec 2021 07:34:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55512

Drop backport CVE patches.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...{checkpolicy_3.2.bb => checkpolicy_3.3.bb} |   0
 ...python_3.2.bb => libselinux-python_3.3.bb} |   0
 .../{libselinux_3.2.bb => libselinux_3.3.bb}  |   0
 ...{libsemanage_3.2.bb => libsemanage_3.3.bb} |   0
 .../selinux/libsepol/CVE-2021-36084.patch     |  99 -------------
 .../selinux/libsepol/CVE-2021-36085.patch     |  38 -----
 .../selinux/libsepol/CVE-2021-36086.patch     |  46 ------
 .../{libsepol_3.2.bb => libsepol_3.3.bb}      |   4 -
 .../{mcstrans_3.2.bb => mcstrans_3.3.bb}      |   0
 ...oreutils_3.2.bb => policycoreutils_3.3.bb} |   0
 ...{restorecond_3.2.bb => restorecond_3.3.bb} |   0
 .../selinux/secilc/CVE-2021-36087.patch       | 134 ------------------
 .../selinux/{secilc_3.2.bb => secilc_3.3.bb}  |   2 -
 ...elinux-dbus_3.2.bb => selinux-dbus_3.3.bb} |   0
 ...{selinux-gui_3.2.bb => selinux-gui_3.3.bb} |   0
 ...ux-python_3.2.bb => selinux-python_3.3.bb} |   0
 ...-sandbox_3.2.bb => selinux-sandbox_3.3.bb} |   0
 recipes-security/selinux/selinux_common.inc   |   2 +-
 ...ule-utils_3.2.bb => semodule-utils_3.3.bb} |   0
 19 files changed, 1 insertion(+), 324 deletions(-)
 rename recipes-security/selinux/{checkpolicy_3.2.bb => checkpolicy_3.3.bb} (100%)
 rename recipes-security/selinux/{libselinux-python_3.2.bb => libselinux-python_3.3.bb} (100%)
 rename recipes-security/selinux/{libselinux_3.2.bb => libselinux_3.3.bb} (100%)
 rename recipes-security/selinux/{libsemanage_3.2.bb => libsemanage_3.3.bb} (100%)
 delete mode 100644 recipes-security/selinux/libsepol/CVE-2021-36084.patch
 delete mode 100644 recipes-security/selinux/libsepol/CVE-2021-36085.patch
 delete mode 100644 recipes-security/selinux/libsepol/CVE-2021-36086.patch
 rename recipes-security/selinux/{libsepol_3.2.bb => libsepol_3.3.bb} (85%)
 rename recipes-security/selinux/{mcstrans_3.2.bb => mcstrans_3.3.bb} (100%)
 rename recipes-security/selinux/{policycoreutils_3.2.bb => policycoreutils_3.3.bb} (100%)
 rename recipes-security/selinux/{restorecond_3.2.bb => restorecond_3.3.bb} (100%)
 delete mode 100644 recipes-security/selinux/secilc/CVE-2021-36087.patch
 rename recipes-security/selinux/{secilc_3.2.bb => secilc_3.3.bb} (90%)
 rename recipes-security/selinux/{selinux-dbus_3.2.bb => selinux-dbus_3.3.bb} (100%)
 rename recipes-security/selinux/{selinux-gui_3.2.bb => selinux-gui_3.3.bb} (100%)
 rename recipes-security/selinux/{selinux-python_3.2.bb => selinux-python_3.3.bb} (100%)
 rename recipes-security/selinux/{selinux-sandbox_3.2.bb => selinux-sandbox_3.3.bb} (100%)
 rename recipes-security/selinux/{semodule-utils_3.2.bb => semodule-utils_3.3.bb} (100%)

diff --git a/recipes-security/selinux/checkpolicy_3.2.bb b/recipes-security/selinux/checkpolicy_3.3.bb
similarity index 100%
rename from recipes-security/selinux/checkpolicy_3.2.bb
rename to recipes-security/selinux/checkpolicy_3.3.bb
diff --git a/recipes-security/selinux/libselinux-python_3.2.bb b/recipes-security/selinux/libselinux-python_3.3.bb
similarity index 100%
rename from recipes-security/selinux/libselinux-python_3.2.bb
rename to recipes-security/selinux/libselinux-python_3.3.bb
diff --git a/recipes-security/selinux/libselinux_3.2.bb b/recipes-security/selinux/libselinux_3.3.bb
similarity index 100%
rename from recipes-security/selinux/libselinux_3.2.bb
rename to recipes-security/selinux/libselinux_3.3.bb
diff --git a/recipes-security/selinux/libsemanage_3.2.bb b/recipes-security/selinux/libsemanage_3.3.bb
similarity index 100%
rename from recipes-security/selinux/libsemanage_3.2.bb
rename to recipes-security/selinux/libsemanage_3.3.bb
diff --git a/recipes-security/selinux/libsepol/CVE-2021-36084.patch b/recipes-security/selinux/libsepol/CVE-2021-36084.patch
deleted file mode 100644
index 1001563..0000000
--- a/recipes-security/selinux/libsepol/CVE-2021-36084.patch
+++ /dev/null
@@ -1,99 +0,0 @@
-From f34d3d30c8325e4847a6b696fe7a3936a8a361f3 Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Thu, 8 Apr 2021 13:32:01 -0400
-Subject: [PATCH] libsepol/cil: Destroy classperms list when resetting
- classpermission
-
-Nicolas Iooss reports:
-  A few months ago, OSS-Fuzz found a crash in the CIL compiler, which
-  got reported as
-  https://bugs.chromium.org/p/oss-fuzz/issues/detail?id=28648 (the title
-  is misleading, or is caused by another issue that conflicts with the
-  one I report in this message). Here is a minimized CIL policy which
-  reproduces the issue:
-
-  (class CLASS (PERM))
-  (classorder (CLASS))
-  (sid SID)
-  (sidorder (SID))
-  (user USER)
-  (role ROLE)
-  (type TYPE)
-  (category CAT)
-  (categoryorder (CAT))
-  (sensitivity SENS)
-  (sensitivityorder (SENS))
-  (sensitivitycategory SENS (CAT))
-  (allow TYPE self (CLASS (PERM)))
-  (roletype ROLE TYPE)
-  (userrole USER ROLE)
-  (userlevel USER (SENS))
-  (userrange USER ((SENS)(SENS (CAT))))
-  (sidcontext SID (USER ROLE TYPE ((SENS)(SENS))))
-
-  (classpermission CLAPERM)
-
-  (optional OPT
-      (roletype nonexistingrole nonexistingtype)
-      (classpermissionset CLAPERM (CLASS (PERM)))
-  )
-
-  The CIL policy fuzzer (which mimics secilc built with clang Address
-  Sanitizer) reports:
-
-  ==36541==ERROR: AddressSanitizer: heap-use-after-free on address
-  0x603000004f98 at pc 0x56445134c842 bp 0x7ffe2a256590 sp
-  0x7ffe2a256588
-  READ of size 8 at 0x603000004f98 thread T0
-      #0 0x56445134c841 in __cil_verify_classperms
-  /selinux/libsepol/src/../cil/src/cil_verify.c:1620:8
-      #1 0x56445134a43e in __cil_verify_classpermission
-  /selinux/libsepol/src/../cil/src/cil_verify.c:1650:9
-      #2 0x56445134a43e in __cil_pre_verify_helper
-  /selinux/libsepol/src/../cil/src/cil_verify.c:1715:8
-      #3 0x5644513225ac in cil_tree_walk_core
-  /selinux/libsepol/src/../cil/src/cil_tree.c:272:9
-      #4 0x564451322ab1 in cil_tree_walk
-  /selinux/libsepol/src/../cil/src/cil_tree.c:316:7
-      #5 0x5644513226af in cil_tree_walk_core
-  /selinux/libsepol/src/../cil/src/cil_tree.c:284:9
-      #6 0x564451322ab1 in cil_tree_walk
-  /selinux/libsepol/src/../cil/src/cil_tree.c:316:7
-      #7 0x5644512b88fd in cil_pre_verify
-  /selinux/libsepol/src/../cil/src/cil_post.c:2510:7
-      #8 0x5644512b88fd in cil_post_process
-  /selinux/libsepol/src/../cil/src/cil_post.c:2524:7
-      #9 0x5644511856ff in cil_compile
-  /selinux/libsepol/src/../cil/src/cil.c:564:7
-
-The classperms list of a classpermission rule is created and filled
-in when classpermissionset rules are processed, so it doesn't own any
-part of the list and shouldn't retain any of it when it is reset.
-
-Destroy the classperms list (without destroying the data in it)  when
-resetting a classpermission rule.
-
-Reported-by: Nicolas Iooss <nicolas.iooss@m4x.org>
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-CVE: CVE-2021-36084
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- libsepol/cil/src/cil_reset_ast.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-Index: libsepol-3.0/cil/src/cil_reset_ast.c
-===================================================================
---- libsepol-3.0.orig/cil/src/cil_reset_ast.c
-+++ libsepol-3.0/cil/src/cil_reset_ast.c
-@@ -52,7 +52,7 @@ static void cil_reset_classpermission(st
- 		return;
- 	}
- 
--	cil_reset_classperms_list(cp->classperms);
-+	cil_list_destroy(&cp->classperms, CIL_FALSE);
- }
- 
- static void cil_reset_classperms_set(struct cil_classperms_set *cp_set)
diff --git a/recipes-security/selinux/libsepol/CVE-2021-36085.patch b/recipes-security/selinux/libsepol/CVE-2021-36085.patch
deleted file mode 100644
index 4bd05eb..0000000
--- a/recipes-security/selinux/libsepol/CVE-2021-36085.patch
+++ /dev/null
@@ -1,38 +0,0 @@
-From 2d35fcc7e9e976a2346b1de20e54f8663e8a6cba Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Thu, 8 Apr 2021 13:32:04 -0400
-Subject: [PATCH] libsepol/cil: Destroy classperm list when resetting map perms
-
-Map perms share the same struct as regular perms, but only the
-map perms use the classperms field. This field is a pointer to a
-list of classperms that is created and added to when resolving
-classmapping rules, so the map permission doesn't own any of the
-data in the list and this list should be destroyed when the AST is
-reset.
-
-When resetting a perm, destroy the classperms list without destroying
-the data in the list.
-
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-CVE: CVE-2021-36085
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- libsepol/cil/src/cil_reset_ast.c | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-Index: libsepol-3.0/cil/src/cil_reset_ast.c
-===================================================================
---- libsepol-3.0.orig/cil/src/cil_reset_ast.c
-+++ libsepol-3.0/cil/src/cil_reset_ast.c
-@@ -34,7 +34,7 @@ static void cil_reset_class(struct cil_c
- 
- static void cil_reset_perm(struct cil_perm *perm)
- {
--	cil_reset_classperms_list(perm->classperms);
-+	cil_list_destroy(&perm->classperms, CIL_FALSE);
- }
- 
- static inline void cil_reset_classperms(struct cil_classperms *cp)
diff --git a/recipes-security/selinux/libsepol/CVE-2021-36086.patch b/recipes-security/selinux/libsepol/CVE-2021-36086.patch
deleted file mode 100644
index 7a2d616..0000000
--- a/recipes-security/selinux/libsepol/CVE-2021-36086.patch
+++ /dev/null
@@ -1,46 +0,0 @@
-From 49f9aa2a460fc95f04c99b44f4dd0d22e2f0e5ee Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Thu, 8 Apr 2021 13:32:06 -0400
-Subject: [PATCH] libsepol/cil: cil_reset_classperms_set() should not reset
- classpermission
-
-In struct cil_classperms_set, the set field is a pointer to a
-struct cil_classpermission which is looked up in the symbol table.
-Since the cil_classperms_set does not create the cil_classpermission,
-it should not reset it.
-
-Set the set field to NULL instead of resetting the classpermission
-that it points to.
-
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/c49a8ea09501ad66e799ea41b8154b6770fec2c8]
-
-CVE: CVE-2021-36086
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- cil/src/cil_reset_ast.c | 6 +++++-
- 1 file changed, 5 insertions(+), 1 deletion(-)
-
-diff --git a/cil/src/cil_reset_ast.c b/cil/src/cil_reset_ast.c
-index 89f91e5..1d9ca70 100644
---- a/cil/src/cil_reset_ast.c
-+++ b/cil/src/cil_reset_ast.c
-@@ -59,7 +59,11 @@ static void cil_reset_classpermission(struct cil_classpermission *cp)
- 
- static void cil_reset_classperms_set(struct cil_classperms_set *cp_set)
- {
--	cil_reset_classpermission(cp_set->set);
-+	if (cp_set == NULL) {
-+		return;
-+	}
-+
-+	cp_set->set = NULL;
- }
- 
- static inline void cil_reset_classperms_list(struct cil_list *cp_list)
--- 
-2.17.1
-
diff --git a/recipes-security/selinux/libsepol_3.2.bb b/recipes-security/selinux/libsepol_3.3.bb
similarity index 85%
rename from recipes-security/selinux/libsepol_3.2.bb
rename to recipes-security/selinux/libsepol_3.3.bb
index 192f1b3..48d5f49 100644
--- a/recipes-security/selinux/libsepol_3.2.bb
+++ b/recipes-security/selinux/libsepol_3.3.bb
@@ -9,10 +9,6 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
 
 require selinux_common.inc
 
-SRC_URI += "file://CVE-2021-36084.patch \
-            file://CVE-2021-36085.patch \
-            file://CVE-2021-36086.patch "
-
 inherit lib_package
 
 S = "${WORKDIR}/git/libsepol"
diff --git a/recipes-security/selinux/mcstrans_3.2.bb b/recipes-security/selinux/mcstrans_3.3.bb
similarity index 100%
rename from recipes-security/selinux/mcstrans_3.2.bb
rename to recipes-security/selinux/mcstrans_3.3.bb
diff --git a/recipes-security/selinux/policycoreutils_3.2.bb b/recipes-security/selinux/policycoreutils_3.3.bb
similarity index 100%
rename from recipes-security/selinux/policycoreutils_3.2.bb
rename to recipes-security/selinux/policycoreutils_3.3.bb
diff --git a/recipes-security/selinux/restorecond_3.2.bb b/recipes-security/selinux/restorecond_3.3.bb
similarity index 100%
rename from recipes-security/selinux/restorecond_3.2.bb
rename to recipes-security/selinux/restorecond_3.3.bb
diff --git a/recipes-security/selinux/secilc/CVE-2021-36087.patch b/recipes-security/selinux/secilc/CVE-2021-36087.patch
deleted file mode 100644
index 5410477..0000000
--- a/recipes-security/selinux/secilc/CVE-2021-36087.patch
+++ /dev/null
@@ -1,134 +0,0 @@
-From bad0a746e9f4cf260dedba5828d9645d50176aac Mon Sep 17 00:00:00 2001
-From: James Carter <jwcart2@gmail.com>
-Date: Mon, 19 Apr 2021 09:06:15 -0400
-Subject: [PATCH] secilc/docs: Update the CIL documentation for various blocks
-
-Update the documentation for macros, booleans, booleanifs, tunables,
-tunableifs, blocks, blockabstracts, blockinherits, and optionals to
-tell where these statements can be used and, for those that have
-blocks, what statements are not allowed in them.
-
-Signed-off-by: James Carter <jwcart2@gmail.com>
-
-Upstream-Status: Backport
-CVE: CVE-2021-36087
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- docs/cil_call_macro_statements.md  |  2 ++
- docs/cil_conditional_statements.md |  6 +++++
- docs/cil_container_statements.md   | 28 +++++++++++++++--------
- 3 files changed, 26 insertions(+), 10 deletions(-)
-
-Index: secilc/docs/cil_call_macro_statements.md
-===================================================================
---- secilc.orig/docs/cil_call_macro_statements.md
-+++ secilc/docs/cil_call_macro_statements.md
-@@ -58,6 +58,8 @@ When resolving macros the following plac
- 
- -   Items defined in the global namespace
- 
-+[`tunable`](cil_conditional_statements.md#tunable), [`in`](cil_container_statements.md#in), [`block`](cil_container_statements.md#block), [`blockinherit`](cil_container_statements.md#blockinherit), [`blockabstract`](cil_container_statements.md#blockabstract), and other [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
-+
- **Statement definition:**
- 
- ```secil
-Index: secilc/docs/cil_conditional_statements.md
-===================================================================
---- secilc.orig/docs/cil_conditional_statements.md
-+++ secilc/docs/cil_conditional_statements.md
-@@ -6,6 +6,8 @@ boolean
- 
- Declares a run time boolean as true or false in the current namespace. The [`booleanif`](cil_conditional_statements.md#booleanif) statement contains the CIL code that will be in the binary policy file.
- 
-+[`boolean`](cil_conditional_statements.md#boolean) are not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -126,6 +128,8 @@ Tunables are similar to booleans, howeve
- 
- Note that tunables can be treated as booleans by the CIL compiler command line parameter `-P` or `--preserve-tunables` flags.
- 
-+Since [`tunableif`](cil_conditional_statements.md#tunableif) statements are resolved first, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in [`in`](cil_container_statements.md#in), [`macro`](cil_call_macro_statements.md#macro), [`optional`](cil_container_statements.md#optional), and [`booleanif`](cil_conditional_statements.md#booleanif) blocks. To simplify processing, they are also not allowed in [`tunableif`](cil_conditional_statements.md#tunableif) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -164,6 +168,8 @@ tunableif
- 
- Compile time conditional statement that may or may not add CIL statements to be compiled.
- 
-+If tunables are being treated as booleans (by using the CIL compiler command line parameter `-P` or `--preserve-tunables` flag), then only the statements allowed in a [`booleanif`](cil_conditional_statements.md#booleanif) block are allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block. Otherwise, [`tunable`](cil_conditional_statements.md#tunable) statements are not allowed in a [`tunableif`](cil_conditional_statements.md#tunableif) block.
-+
- **Statement definition:**
- 
- ```secil
-Index: secilc/docs/cil_container_statements.md
-===================================================================
---- secilc.orig/docs/cil_container_statements.md
-+++ secilc/docs/cil_container_statements.md
-@@ -4,7 +4,11 @@ Container Statements
- block
- -----
- 
--Start a new namespace where any CIL statement is valid.
-+Start a new namespace.
-+
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro) and [`optional`](cil_container_statements.md#optional) blocks.
-+
-+[`sensitivity`](cil_mls_labeling_statements.md#sensitivity) and [`category`](cil_mls_labeling_statements.md#category) statements are not allowed in [`block`](cil_container_statements.md#block) blocks.
- 
- **Statement definition:**
- 
-@@ -47,6 +51,8 @@ blockabstract
- 
- Declares the namespace as a 'template' and does not generate code until instantiated by another namespace that has a [`blockinherit`](cil_container_statements.md#blockinherit) statement.
- 
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro) and [`optional`](cil_container_statements.md#optional) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -97,6 +103,8 @@ blockinherit
- 
- Used to add common policy rules to the current namespace via a template that has been defined with the [`blockabstract`](cil_container_statements.md#blockabstract) statement. All [`blockinherit`](cil_container_statements.md#blockinherit) statements are resolved first and then the contents of the block are copied. This is so that inherited blocks will not be inherited. For a concrete example, please see the examples section.
- 
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro) blocks.
-+
- **Statement definition:**
- 
- ```secil
-@@ -199,15 +207,11 @@ This example contains a template `client
- optional
- --------
- 
--Declare an [`optional`](cil_container_statements.md#optional) namespace. All CIL statements in the optional block must be satisfied before instantiation in the binary policy. [`tunableif`](cil_conditional_statements.md#tunableif) and [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in optional containers. The same restrictions apply to CIL policy statements within [`optional`](cil_container_statements.md#optional)'s that apply to kernel policy statements, i.e. only the policy statements shown in the following table are valid:
-+Declare an [`optional`](cil_container_statements.md#optional) namespace. All CIL statements in the optional block must be satisfied before instantiation in the binary policy.
- 
--|                     |                |                    |                    |
--| ------------------- | -------------- | ------------------ | ------------------ |
--| [`allow`](cil_access_vector_rules.md#allow)             | [`allowx`](cil_access_vector_rules.md#allowx)       | [`auditallow`](cil_access_vector_rules.md#auditallow)       | [`auditallowx`](cil_access_vector_rules.md#auditallowx)      |
--| [`booleanif`](cil_conditional_statements.md#booleanif)         | [`dontaudit`](cil_access_vector_rules.md#dontaudit)    | [`dontauditx`](cil_access_vector_rules.md#dontauditx)       | [`typepermissive`](cil_type_statements.md#typepermissive)   |
--| [`rangetransition`](cil_mls_labeling_statements.md#rangetransition)   | [`role`](cil_role_statements.md#role)         | [`roleallow`](cil_role_statements.md#roleallow)        | [`roleattribute`](cil_role_statements.md#roleattribute)    |
--| [`roletransition`](cil_role_statements.md#roletransition)    | [`type`](cil_type_statements.md#type)         | [`typealias`](cil_type_statements.md#typealias)        | [`typeattribute`](cil_type_statements.md#typeattribute)    |
--| [`typechange`](cil_type_statements.md#typechange)        | [`typemember`](cil_type_statements.md#typemember)   | [`typetransition`](cil_type_statements.md#typetransition)   |                    |
-+Not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) blocks.
-+
-+[`tunable`](cil_conditional_statements.md#tunable), [`in`](cil_container_statements.md#in), [`block`](cil_container_statements.md#block), [`blockabstract`](cil_container_statements.md#blockabstract), and [`macro`](cil_call_macro_statements.md#macro) statements are not allowed in [`optional`](cil_container_statements.md#optional) blocks.
- 
- **Statement definition:**
- 
-@@ -266,7 +270,11 @@ This example will instantiate the option
- in
- --
- 
--Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)). This statement is not allowed in [`booleanif`](cil_conditional_statements.md#booleanif) or [`tunableif`](cil_conditional_statements.md#tunableif) statements. This only works for containers that aren't inherited using [`blockinherit`](cil_conditional_statements.md#blockinherit).
-+Allows the insertion of CIL statements into a named container ([`block`](cil_container_statements.md#block), [`optional`](cil_container_statements.md#optional) or [`macro`](cil_call_macro_statements.md#macro)).
-+
-+Not allowed in [`macro`](cil_call_macro_statements.md#macro), [`booleanif`](cil_conditional_statements.md#booleanif), and other [`in`](cil_container_statements.md#in) blocks.
-+
-+[`tunable`](cil_conditional_statements.md#tunable) and [`in`](cil_container_statements.md#in) statements are not allowed in [`in`](cil_container_statements.md#in) blocks.
- 
- **Statement definition:**
- 
diff --git a/recipes-security/selinux/secilc_3.2.bb b/recipes-security/selinux/secilc_3.3.bb
similarity index 90%
rename from recipes-security/selinux/secilc_3.2.bb
rename to recipes-security/selinux/secilc_3.3.bb
index 50413e0..60ab2fe 100644
--- a/recipes-security/selinux/secilc_3.2.bb
+++ b/recipes-security/selinux/secilc_3.3.bb
@@ -8,8 +8,6 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c7e802b9a3b0c2c852669864c08b9138"
 
 require selinux_common.inc
 
-SRC_URI += "file://CVE-2021-36087.patch"
-
 DEPENDS += "libsepol xmlto-native"
 
 S = "${WORKDIR}/git/secilc"
diff --git a/recipes-security/selinux/selinux-dbus_3.2.bb b/recipes-security/selinux/selinux-dbus_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-dbus_3.2.bb
rename to recipes-security/selinux/selinux-dbus_3.3.bb
diff --git a/recipes-security/selinux/selinux-gui_3.2.bb b/recipes-security/selinux/selinux-gui_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-gui_3.2.bb
rename to recipes-security/selinux/selinux-gui_3.3.bb
diff --git a/recipes-security/selinux/selinux-python_3.2.bb b/recipes-security/selinux/selinux-python_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-python_3.2.bb
rename to recipes-security/selinux/selinux-python_3.3.bb
diff --git a/recipes-security/selinux/selinux-sandbox_3.2.bb b/recipes-security/selinux/selinux-sandbox_3.3.bb
similarity index 100%
rename from recipes-security/selinux/selinux-sandbox_3.2.bb
rename to recipes-security/selinux/selinux-sandbox_3.3.bb
diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index dc4ccd5..8bdf8ad 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -1,7 +1,7 @@
 HOMEPAGE = "https://github.com/SELinuxProject"
 
 SRC_URI = "git://github.com/SELinuxProject/selinux.git;branch=master;protocol=https"
-SRCREV = "cf853c1a0c2328ad6c62fb2b2cc55d4926301d6b"
+SRCREV = "7f600c40bc18d8180993edcd54daf45124736776"
 
 UPSTREAM_CHECK_GITTAGREGEX = "(?P<pver>\d+(\.\d+)+)"
 
diff --git a/recipes-security/selinux/semodule-utils_3.2.bb b/recipes-security/selinux/semodule-utils_3.3.bb
similarity index 100%
rename from recipes-security/selinux/semodule-utils_3.2.bb
rename to recipes-security/selinux/semodule-utils_3.3.bb
-- 
2.25.1


