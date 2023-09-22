Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4579FE7D0C0
	for <webhook@archiver.kernel.org>; Fri, 22 Sep 2023 02:22:54 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.13134.1695349373067948502
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Sep 2023 19:22:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=DegLSBwv;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=76297e7a8c=yi.zhao@windriver.com)
Received: from pps.filterd (m0250811.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38M2DKLD005215;
	Fri, 22 Sep 2023 02:22:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=crbve8OcUX7mSglWF2MUoCk9/nw/4oTsXCf+rpeVFv8=; b=
	DegLSBwvjnsYiWVJoap1RiVYZR7W06EzaFJuj7FewFXV01kZRxaWJposrGJ6/1K1
	Bbuj6xUeR+AADVFpNktjD+Npq7PO5Ke1o/HpyeLIC01yAJqq9wb2cWTE0shNbXqm
	ftiE7q6Wig57GYcoHCL0QYGOQDxO1XzrIAMYbSZF0SQ5E6Mfzg/9O8JrB0fJhwGI
	D5FPKcJaaMLh/r4lLFtjTvvwYotd7ikVbSr7tWkuMDJx7pWHmm3sPJFPFbXeiRVG
	WpWmpUMsIFgzkmuN2chvnstgVGi6Z9nfr9FgduDyzMMlZw3dPH3OsUwYr+Ear7Rd
	i3+/sr0g/cy+4cFQZDGgXw==
Received: from nam12-dm6-obe.outbound.protection.outlook.com (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3t8tvx0b2q-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 22 Sep 2023 02:22:52 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/zzUmvfN3M226AHrCybf6X5V/5f3WnsSmbPbl47ZyGOPzqjNzeChMd0ovwt3hrQhVVzc5AGeW5JyRJTu9m0419cQkG/EjImxaTwzD7Rg45yKqx8zzB0k0ub/nPsyCY5cTJ6+0Dfq79RvQ22hJlNq2am5zrOJQq7+mpjEX5V3pghMuPAKoGjrsVArP0iH457QUqOrXwA8ZmbYk0sZd7FtVisZMxnDa8vbwsga9zbyUd4GZ8KzyIej+E0j2/b4WoYQei1UC1dAnYPbHiYZHvz+bWZAcHJulYBzAXPeDq6OeXPQUTJEHDlloNbgo7js+Slw2JYPC4Hztub/74bnEMKHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=crbve8OcUX7mSglWF2MUoCk9/nw/4oTsXCf+rpeVFv8=;
 b=msnVdr8fDrdGanM6rJGQMcnEFrDd1McaQm4X4PfwTuSmhIFxTqoKjOS3pR8oGe+65cjK9ypf7V44wqputpVMw98NEGQjyP8z4deWgBDSbsDWA0dwrs2DcvUdLLxz4yOHj/zDQTgcG9hnf0K0DEki/os9LN+4AZKqIAWN1t8CGESq9kdNj8562JDMJjVNgMxlxWgC+c2XZr4t3zrgVFnfTjd/G7HKccyO4Bv/6d0vShUkEQXIFYTJC5Bz7rfhptZ2aqFksXM+ohHMGVhpKR7kH1mewPct+NkOhKlxseQpn8kJBnkx34cWkUekALks8qSHg9shPWwZ+JX6pNU7ZC9XwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SA1PR11MB6614.namprd11.prod.outlook.com (2603:10b6:806:255::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6813.20; Fri, 22 Sep
 2023 02:22:50 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::1ba9:4bef:c1a4:306%2]) with mapi id 15.20.6792.026; Fri, 22 Sep 2023
 02:22:50 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 2/3] selinux-autorelabel: enable labeling during build
Date: Fri, 22 Sep 2023 10:22:35 +0800
Message-Id: <20230922022236.3578345-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230922022236.3578345-1-yi.zhao@windriver.com>
References: <20230922022236.3578345-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR01CA0028.apcprd01.prod.exchangelabs.com
 (2603:1096:4:192::21) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SA1PR11MB6614:EE_
X-MS-Office365-Filtering-Correlation-Id: ce434e8b-e75b-48b7-66ba-08dbbb12d1be
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	32ymfqcsQQpNrVDbZ1Dqq7oPZDNsNqPiYw+XIQLcriB6SEYmL9Gi77zANJ1T+kWGd2dj3ZkuSwvcZ5Y+wD1Zpl9WVB+7T7gvfEU0u6tFxsvre05tUWUUikLvfESP0auJIMHXvxdWGgoGc0835w+ANu1uNm7siqLQVfV1vkUUBVB3YZs+naMdShKDBaxXJJ9yl9DINmyuEbXSRDecWTJIf7fBEjY+AxWWPFxEoaYJqwnf5KxpL5mqG1k8v3H8oyPJzupmXNYar6BC2oKk7AzN8nVrlBz/T/S4hzm+BOi8Jajl++PTwh+L9QYviPXdRrcoY2joZq+RxPRQAgQf4rKYGg2zFVKVTvSlu8oxiJ+klSa4AdPqV5nVm10h07tTn4W0C8CEdTCz5JYQkNisgzZmx/fKtvZ3Nt6/mo8iDysVrvRx7Zm2uolVFAV+H18KK4y1++3SiDDzZH3L/PQwRRLyd8vy6bFcLU1EMieLJBnvbvF8eTqma1D4SLKFHdV+8tlcoVEGKX1/ZLQXSSYa+R1DeFFgcygyWRGMr2LJW+zp166+Fl2fhSyl3hixjVUIwUSgjUj+iWbhUjVp6VI7hcWv3l/jmbLm4R5pHinYeA3buDx8pDoLaoPBfPNT7U/DTTPE
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(136003)(396003)(346002)(376002)(39850400004)(186009)(1800799009)(451199024)(8936002)(66476007)(41300700001)(8676002)(66556008)(316002)(66946007)(5660300002)(44832011)(478600001)(2906002)(6666004)(6486002)(2616005)(6506007)(6512007)(52116002)(1076003)(38100700002)(83380400001)(26005)(36756003)(38350700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?ipdas8PvYA7pUrY/Krf4mJ7JazHXRcR7liiw02ZWdEjCdQm+mUW36hyth5eW?=
 =?us-ascii?Q?OKjuW1iQ8Kcq51zUyU0otHOnRXrueyBOvE5ljMyzWuGJbDtqGS6ldMFVUzFL?=
 =?us-ascii?Q?+U2JvigUbXOixQBKf+/OcI+4+ucT5ik+sAAgy9e8iRMS0GFMNCvSgesdKZQD?=
 =?us-ascii?Q?ZakUOEBe8urBvt2IbpN3imJJqTcti6R/kahemEDDQXTphtCCFE8EnLILxHnj?=
 =?us-ascii?Q?usdaoIvtjzJlSYXOzLnQi4Z0sRod6Ca5NtEe+zOLpDsdI217pbi9vNH5W2Wi?=
 =?us-ascii?Q?7IBvcfEdBE5HiLrsJfjlhzjRjPLbGUAunxqGsJkHWIBQL+gaDf6GCnNfJ7df?=
 =?us-ascii?Q?PivaN1RmRXPCaFd5QmfH6w78smorSxnCZ4M5ttpmyNiAYHGpvY14lpbL0VI0?=
 =?us-ascii?Q?+kxTniZOub79oVvOETNZE0OCqmipzby42L7nWDym/n3mp6CUC/BmoAOi6IjY?=
 =?us-ascii?Q?p1NBDWrCiQHYEJqKENwlpL3u4w8Cltzd8CbmU/jmY2CYBnxDhYfP0REPDpJT?=
 =?us-ascii?Q?9MAenDpiEVoYQ4sbKkDHLUvd8+Qevx0NIe4XYiVeXU+HgqAc9DBcX8gBieS4?=
 =?us-ascii?Q?sAglLYzgSx7xoB6SwfPLu/4JKaIwBsy9WQ/Q5JB1pgbtdoltR314pJltlgyl?=
 =?us-ascii?Q?l+9UBrTYHbVjj3ry304A6u3d5FpBZbv1EuANR60oUszXRVth9miOIduZdHNA?=
 =?us-ascii?Q?EjHu2F1J4CWeEHvWXji2b8hfJHKJEONCAaoknXU65IzxokuCwOdL24TxoI9C?=
 =?us-ascii?Q?j4CIvBDCUicYW8FdqYEAAICrnU/jcf2EB1rf4/vqHUUemvIc+8CdBzZoYxkQ?=
 =?us-ascii?Q?OVaDHsdCVagEl47whYYvxTSfYYz9LjzrwgMQPlligeoLYIz6fQESE26dvH/j?=
 =?us-ascii?Q?qiYh2kGawgYD7EamCdj/5vqt8l7pbg/PI4btjQzfP+ELCmg+DVk7PnpejZmv?=
 =?us-ascii?Q?htUKJVWVgErGI2dUSZmGKTsojtnRwsJnX0ZEvp5K44Aerwqx2/o9g7OnusK2?=
 =?us-ascii?Q?CokDwQj3wiqNxAKI7wFo8lP3xr8HPtPHUf1nyUJb5vrpsnMgU5JSWERzfuhU?=
 =?us-ascii?Q?oH89pNYQojAL9jalJhBxbpbBDLrn2tgVU6Vus3gCHdgxOUfQenIQ3euO/riT?=
 =?us-ascii?Q?6mMiZ8nJi2sqCG8pswqk5huX+UrIoBxhkJ3hUlAIgajTfvmhOYkB8xT8NiZI?=
 =?us-ascii?Q?Mg3YcnN7nQ/pLKhNC2U9rlQZ3fVdkPvET8OOHVUQ3Wt98zpIKnLKkuweHA8W?=
 =?us-ascii?Q?7bXu2TmvhIdVk38MwGFTmlynbHB0XJKAF2QZYAiBrQWPzk1xlzPXZUgDEbRa?=
 =?us-ascii?Q?Wq4yd2s+wK1EEwI3PUgYZyF1ZrNW9DnJzjgLOHSX7HLYUG/Ygu1YuPwrvxle?=
 =?us-ascii?Q?E54cMvCmW5NDDqHUv+aPMbqJ8S2aH47J0n5UwIFGp568w4rwLUHba8YMN47F?=
 =?us-ascii?Q?V8y9CQxnKu6QYyhSlqkqoKuhtut2InVGb2KC9e64AU85c+o07uJXDNNLQZKf?=
 =?us-ascii?Q?YuXPbqYkaQZbmFQhHBNwO2kOH0sXy7D6whjmn8rP7846g8YMWq4jMkDzWvge?=
 =?us-ascii?Q?b1G/fR1WSkBiNcMqMG6WC0Kq0WJF7WaYr7R4xUd+?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ce434e8b-e75b-48b7-66ba-08dbbb12d1be
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2023 02:22:50.8569
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kPQ/wXDEVak/cVmfs5cUclLPsjQE89HVbotMmzkSC83JT1Ad/Amf8dVM63bqHl0R29MAfVQPGyfmoZxwhyWtiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6614
X-Proofpoint-ORIG-GUID: J2uPO4Yq_fALBo3thj2w--E8uyzUT6wu
X-Proofpoint-GUID: J2uPO4Yq_fALBo3thj2w--E8uyzUT6wu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-09-22_01,2023-09-21_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 spamscore=0 mlxscore=0 impostorscore=0 mlxlogscore=687 malwarescore=0
 priorityscore=1501 phishscore=0 suspectscore=0 adultscore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2309180000 definitions=main-2309220020
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 22 Sep 2023 02:22:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61071

Previously, system using systemd would label selinux contexts on first
boot. While system using sysvinit would label during build. Add a
variable FIRST_BOOT_RELABEL as a switch to control labeling to make the
behavior of sysvinit and systemd consistent.

Set FIRST_BOOT_RELABEL to 1 in local.conf to enable labeling on first
boot.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb b/recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb
index a919445..9fd066c 100644
--- a/recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb
+++ b/recipes-security/selinux-scripts/selinux-autorelabel_0.1.bb
@@ -20,7 +20,7 @@ INITSCRIPT_PARAMS = "start 01 S ."
 require selinux-initsh.inc
 
 do_install:append() {
-	if ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'true', 'false', d)}; then
-		echo "# first boot relabelling" > ${D}/.autorelabel
-	fi
+    if ${@bb.utils.contains('FIRST_BOOT_RELABEL', '1', 'true', 'false', d)}; then
+        echo "# first boot relabelling" > ${D}/.autorelabel
+    fi
 }
-- 
2.25.1


