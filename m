Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D97CDC433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 02:13:15 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.1282.1664503989675595068
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Sep 2022 19:13:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=f54iz8OJ;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=727255fef3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 28U28CvD000637;
	Thu, 29 Sep 2022 19:13:07 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=8nddpZ3Z0HQdF3xmkM7sWpzepZhvwQh6pqFOH7pW2a4=;
 b=f54iz8OJRcK4IZ+ATzElfAbLaVPqtTNpCyvn7ZjeG0wqlUbyq5x2vzJY145GodlMkQ7Q
 NqySY/iLKkczGUcejAdzwAPegziGuC1Hk9cvkSJeuLbBMVGfrotTlzozRxvFnBDW4Xv4
 tqx3mi3pa62YOpZ17dwieJf3JIaSF901VhBpPgoLlO1zfk5qNe2InfgvpKfdVdnRuYBg
 h1Ub0ENmSih1LgiI274Otshkue+xhcDSiIg55FJ09rJfu9SworHoPfHXyuAzlS8S6SyG
 7nwprFFvv0Ej1E7ZP9mYxkL+f064SEik/ntSqASs9mDqEh7We1rr8iADMsKGpIBsnxdQ 4A==
Received: from nam04-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam04lp2045.outbound.protection.outlook.com [104.47.74.45])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3jsw65n11s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 29 Sep 2022 19:13:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HMaAv7i1gJz+FVpwfsMyQrMZuEgbELSmO50A3CNTEIgGx82MMVe/bjoqlZLvksQeC31x/v7ntJ1gYSQo99XctC92xaRypWJ4Zfm1IGiU77rN4z8G5W+wAamcmcpMndTQfa38cIGZY+d10wGqdjhB6FfoxFQrc5+R0+2HTNhqAZ67nLrNbvgWkjDyHUMudtV+voaL5oqksOH02pgbXJX2+D/BXlLis6vgDTO5yYFABROA5JjdZfbjBNRQTAECln57OaPVlFee/e7zktGf71EgfjQBzQJESO5zRjqExfQf3crAkQZY5vbShfsWB3he+wIJ3R/MWiu6y1I/jjUsTPH87Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8nddpZ3Z0HQdF3xmkM7sWpzepZhvwQh6pqFOH7pW2a4=;
 b=YqFb7up7OwfYXoGjv+V0bk5ddYDMKg7EoIfuFXhkVtj6mO7Ar6i78U6AvAlKcNtHphRAe2K3VY3/dSDgVbBFMp7j363yMbIRM8iG34OK9GOMxknI6hIbXUXa7dacVAHwBskt6b546m84F62VEG+guuWUDkdMSGQJpdFFf08Ltgd+krafLexzgg7rndMG3wmXAT/+DqZCHn3OeBHUsvnTa2eGFXsVSLiXBNp3tGDjnZNefJoUodo00vwwwy+BbHADxy0tT5u0P/Fv3aTmB0F6qaExSH3YirSnPNsZUGerHs1XpJZsMN7zgwwJlg8bwxlt+qrJS1kr4zXV8ItCqFnp4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by SA2PR11MB4953.namprd11.prod.outlook.com (2603:10b6:806:117::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.19; Fri, 30 Sep
 2022 02:13:04 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8957:e965:a52:2366]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::8957:e965:a52:2366%3]) with mapi id 15.20.5676.019; Fri, 30 Sep 2022
 02:13:04 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH] layer.conf: add langdale to LAYERSERIES_COMPAT
Date: Fri, 30 Sep 2022 10:12:51 +0800
Message-Id: <20220930021251.1380320-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI2PR02CA0016.apcprd02.prod.outlook.com
 (2603:1096:4:194::9) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|SA2PR11MB4953:EE_
X-MS-Office365-Filtering-Correlation-Id: a76ebe1e-9c30-4461-ac6b-08daa2894e5f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	qhLQMFDmHMqU3tBZZoj0ZKWZFCVrjrv8iYjX6fbfS1QLAuoqLxjmXpOZeJvTDnfKFa67Bw9l051apq7DIkVQJIO7MOTAgCyPIeBgVbPz7EV8dj4AXbId8Z0owjo/eRPSlf8fz8Fn+nAWZUUpYzfzXXb2Wq5AWXhET9cCvbM1vtE2KdL8lOll9xdTFwsYqfxQdBOYihuHlDKdD5xcmWAwpBY4WEXPdE/A8NOWGhrZmlPwfDsSWDyweLXmbd3eRo/ip+fS5fbz1NEWyZSseKakaNXTz/ix8mLhOTYe7+z0RR0AwVy7cIbBEqVj4iEYOPg7aR8N5D2x+yuZqdr9UJ7TpIjdqaVFXbB3cFQIKHj0axf/JR2b0u+Cn4Teh9WhUUVBjJO3Ke9Mh5l5VyK6U5QBb/66M8L+J+xyNapJggDrs55e8lKUTDAYOSfHz1528KFDRq89kpFD31sXtR/2OhzVaQpAHsPXajg19VoYDTAkaNJfA8v/RV3hi0Z8aR0WVmi6usSVbqvjU0hj7dhQDMA+O24SBbsUVY/Jb3aVagb79myGd5jprRLxwkc5G1ho9QMjxgaKy7FsFzYdcNGix1074T241AjE32w6oCNFdOuYT5ItxRyidyu9pgo+0ACwP+WJ0BhHp0gCW4fr51xlxv85e4qXSh8sGRShd3EvMAs9AXYipHpdGKAhQFbx9fh4Uw3/sslKaUfL8fbSKNUDidd2cyATcxmY+iJjdJyGp1Iw4yVbLK8Gy2fjDlL5icCvh3yIujsPFsCKILeIoZ/hp7tslg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(39850400004)(366004)(346002)(136003)(451199015)(5660300002)(8936002)(44832011)(4744005)(66556008)(86362001)(66946007)(2906002)(6506007)(52116002)(36756003)(8676002)(41300700001)(66476007)(316002)(83380400001)(38350700002)(478600001)(1076003)(186003)(6666004)(2616005)(6512007)(26005)(38100700002)(6486002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?PxDyWUs3G8kUisd2IPmrxMk/DXKhsWJ4m1YJt3eajz0MHhhOn3TawvMSTElu?=
 =?us-ascii?Q?pYxEylgNv3UvKcwoQJlHaOdrfJ2u3qJHIvs4lVRGsHI1oCkqeAnBtAFwERWb?=
 =?us-ascii?Q?KClY20EpVROGFcGImk3C7aRE1GnHFk748PdB2aUEvTt4P9T376blJ9F1fi72?=
 =?us-ascii?Q?wuJQpT3clSrekwDdj3ACMawX61vv3GV2QtqDpdmyojfohchDnzwTRdeeFGHR?=
 =?us-ascii?Q?TMFxx2Qt5KoBrDxDxqC7wUjvsFo09vIo2MO9+LqYj4jYRq34OueeQrc1j61L?=
 =?us-ascii?Q?dCR3z5fHAC2X1jZYP+1mYkgA+IV4sqe5VQ+66M74xWfv1S8HGO06V4s2/lyf?=
 =?us-ascii?Q?u8uF32r90IU+TWjD1WWB//9thzLn5g6spxnp27SlMvoO+bof58Amx1yYwFpl?=
 =?us-ascii?Q?z27uFK6MJSD+CgV27CxHlNy1BdjYsYmT245FVsygw4O/jgHMQou4blGFoEe5?=
 =?us-ascii?Q?YRfgsCIA3uMF6F7QtPLJLtc3GGErDCM8eYcQzCF4PpGIZs84t6c7TRZTUpQQ?=
 =?us-ascii?Q?Nffh0vzFdSdJNiMz9BzZNkp/KNEWsoRW5G/IMzWDhMYvaOj/+qKqjPoquK2+?=
 =?us-ascii?Q?Vu7DuMivjTP30m4N425Qpw7xnQ7M5wx2/hQc5zi2jebCYaJkBazwIwUKBAaV?=
 =?us-ascii?Q?pYppk7bTORyONZ64AghMyLMEq+S8z2i2kQwflNrDj4yqMrVvfUzRslMk9HLf?=
 =?us-ascii?Q?UU5sgybySOfUuf0qVO1kpuH82I62gx3oJybBsw4bGARo8jAbFF2SMyHpWs9N?=
 =?us-ascii?Q?KzkKbxiDQYSm6vFZpeW2QZfVMionGqaj4DaRr5fxVBiBfoSpq4woFVBTrMPq?=
 =?us-ascii?Q?LfzfR/SZ4wb7vDXjYsaBVoROJ0P6p+1SZdwvrHMfxcw0BnF17mn4+Zv9LIRc?=
 =?us-ascii?Q?KN183nAblGMOI5Q7Bm10QGzphzv8vUe0RNDfm/T/8JSdSyRH5NMay9ZfxuN/?=
 =?us-ascii?Q?ufBmDehGqcgJGXq22WoP1ne/Y6a1MKeAfp+iCSB2k9VgUXIxVc3LIAMKxJr3?=
 =?us-ascii?Q?zsqwb59WLK96qwDi76DPmeQlzAdsjLYuuekyfOqqzP7pPHj1dyhihLCQ0oee?=
 =?us-ascii?Q?/GJ5wFQfkzdN9EeZU82mm+F6C03ALt4ejtZOsi17uLQXNSYZkvTZumqJ+oUi?=
 =?us-ascii?Q?qAagyO5Fg5WErbq01523pFZFiGbTc1+EeBTxkseoP7ZvrO8J9TzKFa38hrIW?=
 =?us-ascii?Q?neQPj40yVrZ4HXNPYnSQQsh8PWvY1gpcd7ngbQoBh41LHy2kpvnvRUdDUnza?=
 =?us-ascii?Q?tax7YPNqeKklUgHVXL5x02ARY9M/vs3vCwW3gYGUvme+ejtH8ttOKCN+17C5?=
 =?us-ascii?Q?6sUOSFpczRUh3kxJWgnsf18t2VA0vAE5tMwXFGsKZ7myD1DDNAdRq0hMqibS?=
 =?us-ascii?Q?MaNlaRTXlsFckMmz6S22IUj1N0CfjK7AXCAmay1d6I/5m03YQFIoqspAW5WQ?=
 =?us-ascii?Q?oVGq+BN77p4QnlX487HOdTz1TrUy8ra0YUxflT6QcGLfgRlpsyvkXVgxTHY4?=
 =?us-ascii?Q?v2uhZw1EjN2vFJ6ssCKLdkioek59ntZ0oU9UiQkK6YtFEnnftBfmYUIsm8XG?=
 =?us-ascii?Q?ZkEd1sxLjAgwmvOdJ/t3KSBImHv0wf6uygy0vRRJ?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 a76ebe1e-9c30-4461-ac6b-08daa2894e5f
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Sep 2022 02:13:03.9219
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 sC50N5FV0FB1QP6O1YH72kwoq2VZ/sniJPw3znDOMJ76hUwYKJfA1kOnvaAiXzuGjLQnPzsrLtSIM9AYoE0wqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4953
X-Proofpoint-GUID: MVSwTYdQKVsvVyoVwdTK2X4yOEQNJvDk
X-Proofpoint-ORIG-GUID: MVSwTYdQKVsvVyoVwdTK2X4yOEQNJvDk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.528,FMLib:17.11.122.1
 definitions=2022-09-30_01,2022-09-29_03,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0
 phishscore=0 priorityscore=1501 spamscore=0 malwarescore=0 mlxlogscore=755
 adultscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1011
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2209130000
 definitions=main-2209300013
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 02:13:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58226

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index d6f83c9..5673b73 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -17,7 +17,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "kirkstone"
+LAYERSERIES_COMPAT_selinux = "kirkstone langdale"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.25.1


