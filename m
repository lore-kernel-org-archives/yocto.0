Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16764C54E60
	for <webhook@archiver.kernel.org>; Tue, 19 Mar 2024 13:13:10 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.15026.1710853989663485920
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Mar 2024 06:13:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=QJOhwslO;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=38086297de=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 42JASbaL032332;
	Tue, 19 Mar 2024 06:13:08 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:content-transfer-encoding
	:content-type:mime-version; s=PPS06212021; bh=k3Fz+9S5AL9lCOgFgJ
	o3R6XlZnfJAyQMUsliFlu53DI=; b=QJOhwslO98pwfot867WBn6V95XXYmadApZ
	uRwTADeQFt7rKFJk0WK6k78Q0f+kQ06uosaZmA+VPOTdJNt69iGPS+4bFEAUwD7S
	Kna4px4+xVQLZmv/sdiTbML5syDTKbYUgjBN1hWx9jKOYY4Rv5hHeoNMKHWupDm2
	s7FLHrrRRP6p8wO7CKcMjJMME0xKJrxxgdiTxSOsaOvZjcACHB7C8lFgya5Qj7wE
	Am+4JF9aVQD6wLIX5R8d2s+ToghyVyLbwOggmE7IeE2T/OW6fKSXVC1Clf6c3RBA
	TeeFwXMuBCRbI/9NJL62no3/4YBiCwSdJ0ch51wtp3dehPLN7h9A==
Received: from nam04-bn8-obe.outbound.protection.outlook.com (mail-bn8nam04lp2041.outbound.protection.outlook.com [104.47.74.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3wwaxgajb9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Mar 2024 06:13:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m7gmykDlDC73LZ36PXnbgATCfR1OLLrp2rzr7ScKjmxQfv7Qhfz4iRKIWenk8f8qRwYHCinBssDZekqCXmrjdkmrJnepE+1EZp4ig6t1jYsaAr+Aim47/YoocBjkqdubB0RGwLbdXUyRJXiMmGgkqMGxaDGIW5jsWChnoHTdgkuaAFB8YTtxJIDpUp1a3ThmOYYXYeVLEtlf7W0r7rC/wQmok8BacpTuLKqyCsLrYVG/IzSNAcMMGabu+XWSR9glz4exYttJeHJCRQSqwj1CatlqsPiiWf/YJcvuWp9RvJXvHiZvlnPT2kOMjlfQnIy/7xIR32lOnY8zpnh1dVnqyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k3Fz+9S5AL9lCOgFgJo3R6XlZnfJAyQMUsliFlu53DI=;
 b=PzN1RDjS5+vAhU44fYQxgAOD5I1oJX/zLno/p9t9idHkBzAvQ8+/0ACw064+QgvtDc7p/oTSGecfpl+vLA+6gaf6Cd49JxQcmA0xAjnkkZspEC+88xK5Wg3eW3om5E64NVg7wCXaH31IrYJnSrrqDfXGMODdHPQKBg2Gaum4lJVxU2mhgam5DMOqdjyguj3R0IXjmA5aGGLRCV+Vhn2PjgyTi6WWsTUqQdiKP2lJ2Bue4b42OdhmVPDhB5eel1Gwpq43fCk+hSX0RI99COWpO7mCj1CrbhvA+l3TMrxUadNIFyyVJHNrcWkRA8sAeQrz/uR2XQ+uGwZpfh4N95uZZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by DS0PR11MB7788.namprd11.prod.outlook.com (2603:10b6:8:f5::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.11; Tue, 19 Mar
 2024 13:12:57 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::97da:833f:8511:a558]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::97da:833f:8511:a558%6]) with mapi id 15.20.7409.010; Tue, 19 Mar 2024
 13:12:57 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH] layer.conf: update for the scarthgap release series
Date: Tue, 19 Mar 2024 21:12:44 +0800
Message-Id: <20240319131244.2101964-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0054.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::13) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|DS0PR11MB7788:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	98cNpElTClU84MqLOfTTTOCHWGMZO2B6n9E+33ZH+xkG91lFA21+Ug7NtcLvItRz9JVscSegJF1sb1wrrtZNfL+ciyyvn3E7b5pSKQ9PqY0j+fRLwAZLCn8LawoTs2XvrcoasPeXI9OnxC601SDStsDIKLIjSO2x/1cWS0e9O9ZDNcaM68syKOFxINPYkRRF0OPRnQZQNDdibHCPwZ15KR7xdyJqVt96fw4m+AQnO8tJiXGWjdpW8pmpsBhMwBb2hXprhVLa9ikNNLT3Uz/oAtmgBeuYv+4njW5T4DYp/f7rHxq0Wr4RsuyNhH7IJR5XaWCycjDEIvhQDI2wmpegv8FEpltQI8Y/fjzGoOUJVNnRi5yWyr7A+bndVK/tF0cps4psbfpdZSc/CUloEtI0POyMmGFFNYxhpspPJOsoGd9KZ5d/atuWVSBAxqUij1UyzPX1Z37mly+UIKX1VhlkiGWDH+VwZl10N7KVflmUae906sHhF4WpyUoWjvKVuwZ80rPZK7pBsFwgisM4jTE2LY4YmzZ762yzS+kJA2m0lEu4iGsIQvgZavZt978MHUrPKzwz3G/XKY2/zVSEYwllouuQPGECgOFK4M5wGa3K+sS/EllrWH2YQFQL6SAyTafbk8Bi6gU0Gbsbr1BQ1LKgh3YS5g0CL4UsC82aP53J4qY4erwRhwPAWjnCKP24OgFxKCqO0vUS+OpEVgd6OywU9A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(1800799015)(376005)(366007)(52116005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?r6ST+MeUabzcKWa8pLRDtl8VOimjRLk8gL4mdYywemfhSMrnuUzb/G5krHdJ?=
 =?us-ascii?Q?QvgALjUD4WNC3o1Y3dFS0o+vlNzutDr9NkK2IaVO2CqtXQeSqYpz87WzYf68?=
 =?us-ascii?Q?2uXnBKRsOhI+eMry6faozhoz0lSnfflGt3gFGGLpWDERHaLpnAm7CatHmqMV?=
 =?us-ascii?Q?dyuTTqrj95275rhLy40dxmcozWALuK6xkiHeyCXckGwswiDJGL6MZAHzV3pY?=
 =?us-ascii?Q?Jh/0DvvyLUyyqBgdCEgKIourx8Q/X12f7I9e34TWu4Fym14N+Is1Ip5dlcWw?=
 =?us-ascii?Q?z1XUpLHtaz/A0a9YK/cAGR43SRdcVr7FYXenRyWllAyIIU627YErOMKp1hEz?=
 =?us-ascii?Q?N6AcBGwMC2wPzHe9VJ6vJGK4e5dIkVCXchygLTACQESYOlVBSnDlM1Kt2okt?=
 =?us-ascii?Q?/NJkEcPpbZx8oN0wnWb7Whej345EUaKiXwaCsPHBrDUTVfcU3qLpJJpLAl0C?=
 =?us-ascii?Q?agiCkNfe/7LhjMmdgrC9CpNK9h1rRKM3qQl7PyU7izxnixbS3svne0mb3gI0?=
 =?us-ascii?Q?S3/CqFAW8xKAmSB+nroOBsVzOoiUOkoiaaQD0xq51xEnLfI+2FOC5nyJ4CpC?=
 =?us-ascii?Q?5I8bXp07AuU7l/AS3/zmBBKCF6hOAZqetcF25KhkAT5izdaAYWYr8EWJ2ema?=
 =?us-ascii?Q?mGEga9kwKh1MuZ/+dY9RghyQfOU47QiOfMXH+JLPaiiheroBR7ObtFQ+Zyil?=
 =?us-ascii?Q?vbU/Oyu8vnUFFwNNtDHqyBYc8j0ZJTSnc0cQUXJXeiVJNVVZ7W9mOQvWfJmZ?=
 =?us-ascii?Q?04TUm3OPcMQSUisOrh3XO8qMfupB6eg/bu6CqUNYDe19dbPo6RZHTK//OlGK?=
 =?us-ascii?Q?4wPq0B1EgvZRa6+w6uxUFNJ0/uYKXwogytzRa+ktw16wHHsrLOkEAA0KSVY5?=
 =?us-ascii?Q?MPUT13tocMqczSU4roMwcDrKu+4Qy61LPVGmbetzNpYP0yUDcp0LPAJckrNE?=
 =?us-ascii?Q?42LQ8EKDxKy8VP5ukcevmGzqpBoMxHoYrFXLzzLM788IHP4QnSUsqHe2jUWa?=
 =?us-ascii?Q?+nSa7Xg5pvlbeua4+78qyGGFVG9RjyuzM7eiJDwfNb1+SSG7ARhsWuFS+soz?=
 =?us-ascii?Q?g/UbpOAlDD0UBJOpxz+lm5fx5ulXDMnRVhnFBftbg9iAc+1VHPysKvK8uy2D?=
 =?us-ascii?Q?f7//13r+Kbzc6DrKG/oXngKOzjGUNMszgrW7plrLlPIPwOTsVu6sitA6mxDp?=
 =?us-ascii?Q?AnNulOvsD1KwaHPXtTAHcqTl760/KpZBVWunLmYyq0fHCVdS4vEvbo+2Ddk6?=
 =?us-ascii?Q?Mf2CyxwqEhjz+l3I/l387VFwciaLxrENcv8Df08umZjj1WAtEr2qRGaaROzW?=
 =?us-ascii?Q?+5wYZ7/vtjHjVb0ADhXXgByHEDK/OK3EFH1rdWmjx8DiKeKtcEIhg+k4DNFM?=
 =?us-ascii?Q?rBbqLvoS6nU6nBSyOCu9KVz5kpI294urtB/889NNGtWh9saodeip2nrkbWaY?=
 =?us-ascii?Q?Ihsg8n8jN1QmcDV1I7BnxKTmJKaLvTSVY6nzBH7cxMsP8vkArmyp01axOnqY?=
 =?us-ascii?Q?ZKZ/tbJeRFO5xdYDx8Sq6MZHE2ArM7724G2xoIO34vM7k6xogq8LrobZgOA7?=
 =?us-ascii?Q?od1HgHAqVcGP66VxmdrVCf8uz+ery39ejN//R1D5?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bedca02e-39d0-4d8f-3a62-08dc48164b25
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2024 13:12:57.0374
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eXhXnvx5tDLe9Ud1jqEJJG+4A0Zs9zQA5j1dedPOLbCv0LJDsGgcRLwPn8nlg0bfzLXkvOw+4R3ScZfQjv/bzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7788
X-Proofpoint-GUID: BbDgHfmDe4SGdXQqBoXNxkh_2g24USwR
X-Proofpoint-ORIG-GUID: BbDgHfmDe4SGdXQqBoXNxkh_2g24USwR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-03-19_03,2024-03-18_03,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=900 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 mlxscore=0 malwarescore=0 adultscore=0
 priorityscore=1501 spamscore=0 phishscore=0 classifier=spam adjust=0
 reason=mlx scancount=1 engine=8.19.0-2403140001
 definitions=main-2403190101
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Mar 2024 13:13:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62796

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 0a0a6ab..4e04e5c 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -17,7 +17,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "nanbield"
+LAYERSERIES_COMPAT_selinux = "scarthgap"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.25.1


