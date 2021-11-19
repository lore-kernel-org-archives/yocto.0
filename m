Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 48450C433F5
	for <webhook@archiver.kernel.org>; Fri, 19 Nov 2021 15:18:41 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.10231.1637335120411008879
 for <yocto@lists.yoctoproject.org>;
 Fri, 19 Nov 2021 07:18:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=fXtRvb5M;
 spf=pass (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=6957fbbf1c=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 1AJEZbwS004010
	for <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 07:18:40 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=Ln6LbagxEr7naltlTlSNdtDaOuUtsMwEYYDLwR64TVE=;
 b=fXtRvb5M9U1Lp5qFf3jSCXjyFMLYxeHplUJDkJDsmeD4Fp+kVADmLaRmXFyNieDHHQKE
 GETunEqjosgtz47wJH1MjwwkywJMh3XNPO0DdY7P3BUbp9CKWxTes12VKa4+egzqz1Pf
 Z2BI63oWRl6HvwVwGxZ31v6gmzroAnl7tXV7sNh5jJ27t8pmPEoWTtY7im2o7Otw5KM4
 rJC1uSxsoBUPmIrYPR1BBnvPyhXpLoynV9JQT9lc+PIkvR3em+FPYWAroPSHPZ8TiS5u
 aEdWc9Ssl3iz02bcg6eh+uMjHUpT9QBSWxs3b6VLal24VHd31rLeVPpAYoNQgbWVJ+cx ig==
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2168.outbound.protection.outlook.com [104.47.55.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3cdssgryab-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 07:18:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXSgEENeXlxRxUc8DUYaoiNNh3xvgebDT/ADb+faO5h1kxK3avTIOnJXECixxDOtqKxJlpy9xb37qFIfwPOigJ2e/JcLRIT41ohhN3pL/nreNVJr44K7R0jAzk0f/ckCuRAa8HpEBhWIkXFXsqzzthqDs4BCmQJJgVAdl/OvP3W34yMzTA9bp6LhVeb/pexz5EbitV7kl/Fz79bKfUrtaiWIwE9RM3Iu4tKzH+LawgR7/L/I+ysbsgMBE/5xQ6d0GJnJYUVxsm9uNl+iwRkxSs2hByGpmtOUZPWzIh/yuITTsvmQ9j3iDqd7HPRUPn0vbWW/hBku4mzCbUCopNjP+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ln6LbagxEr7naltlTlSNdtDaOuUtsMwEYYDLwR64TVE=;
 b=J8zu9tf55zObU+OLGuUzsXrYGFAkUo0LRzIq+mw9VjKvtRbYLBatJQRj+EAwU6gnPVuxXH2Au0zcCUL26CWhmaCSclVH1UcJQGqkTr9Jlr8sw+yUSPd57DldrFi6NR1SwEKBByQ/VI95D1IGDoIw1/LzfWsQGlYXsIONmsqu3sevKIjCgrjDm1VcUeUND2U/vUpVxRpes/7vuigNBKwBhQfrVz5CHQPyh/WCT3hm0E3E16MscCYZGRT9B3htKQQUGqKCJIJ2zuSAqio+7xhZAnT6QKVizvhycmecdHngbQ368zvenJAeiV6uRXxRawglStWHFtrccVOSErRGNg6zDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR11MB1984.namprd11.prod.outlook.com (2603:10b6:300:110::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4690.27; Fri, 19 Nov
 2021 15:18:38 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::455e:9cfb:d106:4480%9]) with mapi id 15.20.4713.022; Fri, 19 Nov 2021
 15:18:38 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] meta-parsec/README.md: fix for append
 operator combined with +=
Date: Fri, 19 Nov 2021 23:18:25 +0800
Message-Id: <20211119151825.530200-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211119151825.530200-1-yi.zhao@windriver.com>
References: <20211119151825.530200-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: HK2PR06CA0005.apcprd06.prod.outlook.com
 (2603:1096:202:2e::17) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by
 HK2PR06CA0005.apcprd06.prod.outlook.com (2603:1096:202:2e::17) with Microsoft
 SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4713.19 via Frontend
 Transport; Fri, 19 Nov 2021 15:18:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5a247935-f33a-4230-b9fc-08d9ab6fdc73
X-MS-TrafficTypeDiagnostic: MWHPR11MB1984:
X-Microsoft-Antispam-PRVS: 
	<MWHPR11MB1984C4EAB55DBFDB629C1551F99C9@MWHPR11MB1984.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4502;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	yAJqNEqaA6FXH3glcHsqQXVNTCYuhmGIBhGA2S6z+nAZACfhYjYzqhsMT5EwgqvncWWF+JR4ikG0V3P8fR//FCFF7Je3XrRNxaBHhWjUqU2CK1qgqtvKFBv6uex+c1AFQRucVpR1ktOlF8YDiYiWXLeCwzhJ2tHPqIH8Tppo7Wexogel3QKGpoATLhAeodOp61s837lBD5REzrFAFcryPU+FWBHsWzQk8Ktfyg7zxyRqvf3ZF8IwNIgYNAF9sEwis8M4pL+5XBTx5Vkj69ysV4oaVZ4GgvT4DefE+4WDR3zPH2M7Px43Wk2wvYZvYj+zzhUbNPvM+lLEoGcQm1+bhxIjRiphIT5KaZRVk3oUWcr0/X16b4frXYc837wUNUk6pfCWNX3ChIm4rYLZH7Nm5CLsje2Jnzw+fUdCn1f1FV/94vmW4CNOKzuLJddi8oA03pOA4AquVTkPcDFWuqUL/Ug44NQED+Qu40SjkVWvU3G+Fuq9y3p1Pe/TLjey89zHqqOMhnAvN3Q5s9CxwjYcMG4uFqEW+Riv8Cu68X4f8z9MRQjkcEyAWCOHQv04xFBdS32A7e9w6xLPmn2lwyfykC+x4XuB1Gh/QppcRnj02Wt3kCw3CPddK9S9Y1GBakdnTrY+UrR05p18Nl7PKCsF+ne1w5ZpClvXkxhjmQrLwQgHq5F3jRgMgT+YCoaWDOSNezmLIT5Gm0LgcpZU9K+IlQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6512007)(2616005)(38100700002)(316002)(186003)(52116002)(66946007)(6486002)(66556008)(6916009)(5660300002)(38350700002)(66476007)(86362001)(8676002)(6506007)(6666004)(8936002)(1076003)(956004)(26005)(44832011)(508600001)(2906002)(36756003)(83380400001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?pB9uSJ1C+XBQnzFzII7vTMgBIk8oL3yo6EDsUlOc2h0ogfYEPForLMwM8v9g?=
 =?us-ascii?Q?2FTJ3IQ6KVbMP9TE0I2RY7dyrnxM3IdUpHmII9IInICHW8PPSbUaw1SylN2a?=
 =?us-ascii?Q?WGKnYnlp6Qv4Gj68y+UCl7zqtvie3PTqCI1ouPKZ7OtDxibuDb45Wd4c6Kh/?=
 =?us-ascii?Q?qwZZwXInAgyh/W24QWEJUlRXn3icF26dWvjmghhEN1q9WHVORFtN8XSaTtEj?=
 =?us-ascii?Q?f2lxsGu/S2K/1065S7WQ5aQOtsIJuJPur753M1hihhB5IKSqe3LshvGHfypp?=
 =?us-ascii?Q?cv2hCzKwvM71UDG3GBd/Q77MTValJ7vuCink4wGWmeryAtZlJfqVXjA10Dik?=
 =?us-ascii?Q?9LMgfFyFRjerW5x1NfP4IQF59AYtxyi/Xa01zAm+fVmZZHwJOornq2Mqu+br?=
 =?us-ascii?Q?t1JUGM/LqOhs1Qb4lepV6/7iiLB6ZMFQd5i7WUqLGPwtdVd56wACKpaCzDRL?=
 =?us-ascii?Q?LEMpYQZctPmHPR9a04W2x8WxO1SN0+xdE3bTcVPeJwpDrr81NNZhUwL/0xiP?=
 =?us-ascii?Q?O0mZJHvJxB/+gxKXs8sC+hq6MlNs/ofcH4DS0K+xvA4dHneBJPIEr89EC+Da?=
 =?us-ascii?Q?1p9Lo7xJ5e9SCevrpBzN87MTxympaBFaiEJu1alpDVAYpEJYelfdhn+QiGMM?=
 =?us-ascii?Q?zkO3IGvfiDoUASOHJ3nQWy6va+iR9ySKATkPrhlWjJrLTF49qRjfo5GyWv3F?=
 =?us-ascii?Q?JSNzICe40YngDsZ968J/yFPbIofBH3E1hJVNZ0EffXPPO17ap2ux2sIihaLG?=
 =?us-ascii?Q?DhmxHIXsaBHFwP0qarmHvlrvTGdi2NkZnwryo9F5Y0eiNGBGQqv0+RNUPvdA?=
 =?us-ascii?Q?U0IPzQKdq5dJxy1wr8XYe+XJOh5YOgBB+kuhbio1a4aMnErrr6SW+zQIs5yn?=
 =?us-ascii?Q?riBCEghYNqXMnIJwrZA+c96YcqIa03VHghyYGOv5EijUZ2//PjNIz2PsBmAb?=
 =?us-ascii?Q?fK2IpmbHqKTMwE4mo1XMlylT3antWCGEHDlfwXdKoE8SgpvdRGdFAWeofDeu?=
 =?us-ascii?Q?PAQ3XpCC5Nh83OhE1+PGn6gnmIhpY2NiGttdQmzoFzZxr3qUBo36qqmWT3al?=
 =?us-ascii?Q?HJaHeWJov7iwHFW2moSIFE+dn2MQmQtfpCu8gqv75Wo02xqgWYyhAYY4HVTr?=
 =?us-ascii?Q?ZCoORbNYMJugPQVv/GQkwLl1limHJgTqCztq6lkl5obno2PR943tRUg7dcc/?=
 =?us-ascii?Q?d/2+1NRTEWnwOb7Wls1JwlttJ/9/wYV+E9mzCYBXkDaq3la5hcfb9+YGAGER?=
 =?us-ascii?Q?CIIAxAGLFtWQTYSIfIulnrLFxQWO7tkqq5DdCXEHXc6sWrJ62JFm+NweXc9a?=
 =?us-ascii?Q?/rTa79N+sLtzJp/tBha1Oxzd1j8+DSGgMXd+xrHF5SU9wg/stnst/SJwuzFN?=
 =?us-ascii?Q?StQbhZDrT19Isv+m9Vg6EwKNLAjttYKhYfv+HmdQqy81NJxbQbwcKp51A9iu?=
 =?us-ascii?Q?x3aB87mEYgdtODpPMo2NDn58eIU3GC1ZUuvXWDEbD9nEGN3dq0cYlZDvIKF/?=
 =?us-ascii?Q?yS3nFzfoolaYYgPOGuqS2ABZ/FYIKNZlNIyBGGdOLVp0h6AyMtQCyRB+v2fs?=
 =?us-ascii?Q?atipLzxgwneCy97KJumPtmvrwjZjwpbQKfZkkch3MCpblbNu83DsdVlgeh5s?=
 =?us-ascii?Q?4lUPl0ZtHcHlHIbS9qImMGw=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 5a247935-f33a-4230-b9fc-08d9ab6fdc73
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2021 15:18:38.0575
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 k/Iyb/kX/AD5NtD6kC3oEip3pNYw8qXYJtxoCOUN63eqkpL1vl/tJ7GzRoIiykDo+VX0oJTv8LloVulV97bpbA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1984
X-Proofpoint-ORIG-GUID: x5FM_ToVSxSrZsoju6bIRPQXAxAYH_EB
X-Proofpoint-GUID: x5FM_ToVSxSrZsoju6bIRPQXAxAYH_EB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.790,Hydra:6.0.425,FMLib:17.0.607.475
 definitions=2021-11-19_09,2021-11-17_01,2020-04-07_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0
 spamscore=0 adultscore=0 suspectscore=0 malwarescore=0 mlxlogscore=445
 mlxscore=0 lowpriorityscore=48 bulkscore=48 impostorscore=0
 priorityscore=1501 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2110150000 definitions=main-2111190085
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Nov 2021 15:18:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55377

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 meta-parsec/README.md | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index c5635d3..bb4c2b9 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -80,7 +80,7 @@ Manual testing with runqemu
   This layer also contains a recipe for pasec-tool which can be used for
 manual testing of the Parsec service:
 
-    IMAGE_INSTALL:append += " parsec-tools"
+    IMAGE_INSTALL:append = " parsec-tools"
 
   There are a series of Parsec Demo videos showing how to use parsec-tool
 to test the Parsec service base functionality:
@@ -104,7 +104,7 @@ enabled. No changes required.
   The Software HSM can be used for manual testing of the provider by
 including it into your test image:
 
-    IMAGE_INSTALL:append += " softhsm"
+    IMAGE_INSTALL:append = " softhsm"
 
 Inside the running VM:
 - Stop Parsec
@@ -135,7 +135,7 @@ systemctl start parsec
   The IBM Software TPM service can be used for manual testing of the provider by
 including it into your test image:
 
-    IMAGE_INSTALL:append += " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
+    IMAGE_INSTALL:append = " ibmswtpm2 tpm2-tools libtss2 libtss2-tcti-mssim"
 
 Inside the running VM:
 - Stop Parsec
-- 
2.25.1


