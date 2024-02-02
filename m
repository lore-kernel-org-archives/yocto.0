Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EFFAC4828E
	for <webhook@archiver.kernel.org>; Fri,  2 Feb 2024 09:08:37 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.19094.1706864915203182525
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Feb 2024 01:08:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=dwgxL2I8;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2762c4343e=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 4121l4UE010932;
	Fri, 2 Feb 2024 01:08:34 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=a+yesRMDJcGaSzhmAYTICpobQbAsDZjQuJmMCqEAW6E=; b=
	dwgxL2I84GQeCEshJLvC/+8xM30WeA2jBRxuiQ3ceuijpOh4Z/q0hCWn2sYUHXAF
	qJmKbkomGw1D5rNQQvFPfqzEGoRDXq6VMtEtAkNNoLzOvS1AMTxRsh6pufzKaWAN
	jqPuvTkzSpAGFcVOLhSYWZI6ChWIyTVFHq7sqGo/ThugTIrYeTM7i8uIVU+vXYiT
	8kaHQVqKTP3Pvy+DfS2pKKjdzQ3IGj7CgjqQYlQb1j0td4TLkPDnefxNzRSvhRq9
	Aw77FybgATcBs5Xzi7JJLe9uBz6mbTKoVHbZ3CjIxGHo2TC+NSsn62ADtXJYLOhx
	amyk1jMOUITAUzBsxW8Ngw==
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2101.outbound.protection.outlook.com [104.47.58.101])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3w0px589et-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 02 Feb 2024 01:08:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=STtJoWN0XZghJ24aTRecjsppby91jCZ45+ghffc3wV8yDi2lbDiR0qTUNzWc1QgZOyFBfkAmpr3Nutx0deQ00WwEpvwMqupWd0IHiL0t7z4zB1/dZwSFdlwxcYc9pbvWyiAwX0XXCiSKT7KB/lLOTCwA+jn3iTmhZCN+GNjS74u6NloB1E6tBqfH+JWam0wpF6DoybgaAmqLvwVYIV3ixRztL8ghb5GoNG1R69vp/8SOXMnCFMl2Y0VvSx8zK850lYbcfkqA9Y6ZbFX4Gwqcfl0vRbQtA9Vzy51fqmWGFMGOmOlIvQs5OX5arGfxdT3LP8YVkRun9tNjU6JHNHEDyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a+yesRMDJcGaSzhmAYTICpobQbAsDZjQuJmMCqEAW6E=;
 b=Dmx+jy6SGW4tieDH4Q4mjs6eUCpZgaCarUqr/jjkpkFlvV6vaFxkzZABVJNHrAeM7XgCYO0j8Pz6RdXBYi4hBMPLisK4izRFYE8bGuhMJQB+Ki/haSbldd4zz1vz3tmXpxFQspGJcHOidcfvq5nmsQwQx2pSU5IE1bLK7C/q1vpIKFW7CQrxZ/Ae+qKFd5zjNVYe01rmmTBH3hQ/HhLgu4ZF9x1vg2/clzQPfeZ6j2I0/u+8u/IaQOAl7Cf3AHuXE2sxNIYuruEG2R3vPOJkKlWnVHmzAc7fxwaGcTp1Pe0DmR3QZgj+msIzd3OSSosBtoNbG6Bax7fX+tNW9LEKbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by SJ0PR11MB4896.namprd11.prod.outlook.com (2603:10b6:a03:2dd::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.29; Fri, 2 Feb
 2024 09:08:32 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::6633:7d9f:8d6b:247b%7]) with mapi id 15.20.7228.029; Fri, 2 Feb 2024
 09:08:32 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 3/3] refpolicy: update to latest git rev
Date: Fri,  2 Feb 2024 17:08:18 +0800
Message-Id: <20240202090818.285479-3-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: 582bc8fa-af0b-487f-5f4f-08dc23ce872b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GrbZngOLEkB0sgDChZKymkLLHxee2eIr7y+h1VCBv6cakgoKTX/I6FMV6wqybMQa6g1Hvv7tkCIfEJWsAnDl0gFail/QcgXHIKlmaJgMvtE1goSmMVtpJqKMk5TWDHR/ENi618kZ4GMev1e9jNg1OcXTUj19YlgqgXjt3RFNX1fKmGscpYIK8gLgeR9tXrbduRAf//sCPCw65ySlFD0K2XqG/odKvZDUh697vEldSMBOHhdqSQUwbw0K5b9zhonm7+BgKRk7La0O6vsHzcSVgTGhTyJFWYALK1fLOAqp5xwEXrZKP6MhrMs2xzoguepZ7WtYQxxs9G9LscW6zOn8y2AJ6+iGnBpWsSXSH0pjTjQszfUlOU73LnsD3lBQmRiTvd2oRIMQmZRXZmuu1WLLm1QTYMXKUKajcX2g7CUW/+n1RsMeGD3j/cp2YCRmuOW7Gq/UdJeXPk3nZsb+tlotuyp2NTntEVz5Dtz1tn3LIXXkTG55lAYb37s5NhgNTNF8K4WlYb0VMU5X/0h3AWfHP+PDiziqek8LrlzPT6+AjvUjFMC71w58FbvOKjkyjdwJdsqQhXjpvAjSODS2LFOQKlyXQaPFp4AJ1RFt+SH+G+4s1JzDCh656r013IMMSfhk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(396003)(346002)(136003)(376002)(366004)(39850400004)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(26005)(36756003)(38350700005)(8676002)(66946007)(2906002)(86362001)(66476007)(15650500001)(8936002)(5660300002)(44832011)(66556008)(316002)(6666004)(6486002)(6506007)(38100700002)(53546011)(52116002)(478600001)(6512007)(83380400001)(1076003)(41300700001)(2616005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?Pjt4qIwF947xxN6E4+EEV8oyZW+z/da14Hju5tbuGtpYWNmi57tqTmIVH8F0?=
 =?us-ascii?Q?gYdFjyHJYkl4bD+cs2NhN9FxAck/L3wHZTesjq/3y+fAO0OTprnfJCBSa10J?=
 =?us-ascii?Q?5hZ6RndWHSI51z0udVgl1iG/nlI1mwRA3BD69nUtCF9T2Q32ki61I0f/WwPA?=
 =?us-ascii?Q?0kKN6EbftLgiobA8aHoB41ddtgWjYTZBGdJyseHHUE9p2B4Tol4NZ089UIqg?=
 =?us-ascii?Q?jSW45hrGGwn2/Q7+h3qBN7mH3r3yWYxQw4y7hoCZ9rTaRHMBBzcqc8cumulB?=
 =?us-ascii?Q?lGhMYDroPcPK09Ji8c+b7eTg8P6JD1MosIXHN0VQGm52uZ7if943L6Rm7XJB?=
 =?us-ascii?Q?7sWlqrWP+Q0731uatzSyPqWImNGkKCgBVhQFvMpZG9oqQ5ZmSpKrE/7uOw7m?=
 =?us-ascii?Q?0LfwSYUcSjB8FXqBmB5td0FznOdGuORr0hdo/7dAPtiyVCajnx3IV1UiM/Ya?=
 =?us-ascii?Q?Hexn25D1mzwJcQRaYeRRqtPzhM5LhhFEiCqLrk67NdepmBhW7tbLwDWjmtNt?=
 =?us-ascii?Q?BAfgBTReq649rK+rNK/OiMHWfpFvpGixWF0ckOkpSS8Sl4E1WpEXGe37Mamp?=
 =?us-ascii?Q?NS6t4vljbjZwVpTY5gVbe5qcQTU1TEI1oukmdPRQrlqnwA9elhqUIG7YSeVb?=
 =?us-ascii?Q?TWYGpksTwgx4aoPeSZYEpIXZFL6DBm80cDKVg7GiKEqYBxnbdrKPafCXJnIU?=
 =?us-ascii?Q?iG/mbBqYPpOPxXCKINt0rR7HcauGbBMnH3jaKbXt5VN+MPqbrMytBYn6wpMW?=
 =?us-ascii?Q?MIiGYwkk+2Mqde8HbF8TcWoJGoIOj7yWVzHcOfP7e9n+UMJHSW4HNRe1pJQN?=
 =?us-ascii?Q?2Mr3iOXQELYslJdjmijxxiRGPDCyqQicqmwZVNmhAgLBc6Cusjf3SaDVJ1n1?=
 =?us-ascii?Q?MV9ELEBRIagBjFsacQEFdB9xjoCWeT0Nf6TAJOrSCb6HvODZWrvpm7Mxu1f+?=
 =?us-ascii?Q?ICj/U9h7UEzsrL0jlBPXpyM2DPmxWyDyozftsUcA1/faQ/k6l/aOKjYvvpbO?=
 =?us-ascii?Q?VSmiq4hBoe9yD2M5KkyNgGxrFQv1GvJEVJ6rH1ZnizXIWrzYVPFXADsFXISW?=
 =?us-ascii?Q?BG0p+C23JKmQjngCsEP0Px2n2lAFmdJn4a2AVa1TlQER2v5zc928qdPIHc+B?=
 =?us-ascii?Q?rBmXJ4+Yo8w0WlkmyjYcypZDCFKLgZBs6wDO3g1DHh5oyIQqUBglwg0s/Api?=
 =?us-ascii?Q?QqZXBOEFR63UImLoSgNgW35S6IRx5C09tyYuym1EQX0LvwJnXch4UDMkfAGM?=
 =?us-ascii?Q?UMcLrYh2m4g5UYpF8rzxbkgGYBIzrmNRGg0qAbKy22mVE/O37Sni4QZbzR81?=
 =?us-ascii?Q?IvS1gneoqCKboLCy/eqb1Lw2G9HpgxInfKQtGvYPENRxCGdUu1pOnPMZNQ6w?=
 =?us-ascii?Q?TQ00jEfYuWqkvHFMM5cLHdzPyeXiduWlMsRpVK8L54nER/rVLNIJ+BRny56G?=
 =?us-ascii?Q?pD7EGZjMIlXOkl+S/oHr+gIHFFUVWdZOgpEgXOza3n+qLKjmvQn72DWRgLZb?=
 =?us-ascii?Q?dYanrhtiSwQNy+jbw5O+L5dLoSJNYCvTscTrh0hu+svB2y4Qd/k720GMwDO1?=
 =?us-ascii?Q?69w7TMHqOhthJiv2NlZD8bz+MI5fMayGtfgrmzOX?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 582bc8fa-af0b-487f-5f4f-08dc23ce872b
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 09:08:32.0221
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /GxWoHYGkSWDct9B8yzv6GjLHlpyOSfVwkKY2Ccraa9Fu0ka9zm8H6ClWB//eJ0PE6vr5dX7BJj+KI7+cbWM9w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4896
X-Proofpoint-GUID: kbCuCWUl2ebrSMZFD2wXJkDD-dbx3JUU
X-Proofpoint-ORIG-GUID: kbCuCWUl2ebrSMZFD2wXJkDD-dbx3JUU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.1011,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2024-02-02_03,2024-01-31_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=916 spamscore=0
 malwarescore=0 lowpriorityscore=0 phishscore=0 mlxscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 clxscore=1015 adultscore=0 suspectscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2401310000
 definitions=main-2402020065
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Feb 2024 09:08:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62382

Update to latest rev to fix policy for systemd 255.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ontext-for-init-scripts-and-systemd-service.patch |  8 ++++----
 ...dules-system-authlogin-fix-login-errors-aft.patch | 12 ++++++------
 recipes-security/refpolicy/refpolicy_git.inc         |  2 +-
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch b/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
index c47984d..5699e10 100644
--- a/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
+++ b/recipes-security/refpolicy/refpolicy/0026-fc-add-fcontext-for-init-scripts-and-systemd-service.patch
@@ -1,4 +1,4 @@
-From 1096b2eb1172506006691e90769e51a086b8374f Mon Sep 17 00:00:00 2001
+From 4784a7fe74fd3842c1ade228e148cd6f5d6fd22e Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Tue, 30 Jun 2020 10:45:57 +0800
 Subject: [PATCH] fc: add fcontext for init scripts and systemd service files
@@ -34,11 +34,11 @@ index 382c067f9..0ecc5acc4 100644
  /usr/bin/rngd	--	gen_context(system_u:object_r:rngd_exec_t,s0)
  
 diff --git a/policy/modules/services/rpc.fc b/policy/modules/services/rpc.fc
-index 75c2f0617..fa881ba2e 100644
+index 18c204908..95f06d8de 100644
 --- a/policy/modules/services/rpc.fc
 +++ b/policy/modules/services/rpc.fc
-@@ -1,7 +1,9 @@
- /etc/exports	--	gen_context(system_u:object_r:exports_t,s0)
+@@ -2,7 +2,9 @@
+ /etc/exports\.d(/.*)?	--	gen_context(system_u:object_r:exports_t,s0)
  
  /etc/rc\.d/init\.d/nfs	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
 +/etc/rc\.d/init\.d/nfsserver	--	gen_context(system_u:object_r:nfsd_initrc_exec_t,s0)
diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch
index 8a5dde6..a3b5e21 100644
--- a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch
+++ b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch
@@ -1,4 +1,4 @@
-From 2824a6c927bf6df4be997a138a27d159d533d08b Mon Sep 17 00:00:00 2001
+From b8b80a2a07c451a1c9dfc166efcd7985f7a0a966 Mon Sep 17 00:00:00 2001
 From: Yi Zhao <yi.zhao@windriver.com>
 Date: Fri, 8 Dec 2023 14:16:26 +0800
 Subject: [PATCH] policy/modules/system/authlogin: fix login errors after
@@ -45,27 +45,27 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  3 files changed, 5 insertions(+), 3 deletions(-)
 
 diff --git a/policy/modules/admin/su.if b/policy/modules/admin/su.if
-index cd34cd9dd..b867f58b9 100644
+index dce1a0ea9..c55cdfc09 100644
 --- a/policy/modules/admin/su.if
 +++ b/policy/modules/admin/su.if
-@@ -75,7 +75,7 @@ template(`su_restricted_domain_template', `
+@@ -76,7 +76,7 @@ template(`su_restricted_domain_template', `
  	selinux_compute_access_vector($1_su_t)
  
  	auth_domtrans_chk_passwd($1_su_t)
 -	auth_dontaudit_read_shadow($1_su_t)
 +	auth_read_shadow($1_su_t)
  	auth_use_nsswitch($1_su_t)
+ 	auth_create_faillog_files($1_su_t)
  	auth_rw_faillog($1_su_t)
- 
-@@ -176,7 +176,7 @@ template(`su_role_template',`
+@@ -183,7 +183,7 @@ template(`su_role_template',`
  	selinux_use_status_page($1_su_t)
  
  	auth_domtrans_chk_passwd($1_su_t)
 -	auth_dontaudit_read_shadow($1_su_t)
 +	auth_read_shadow($1_su_t)
  	auth_use_nsswitch($1_su_t)
+ 	auth_create_faillog_files($1_su_t)
  	auth_rw_faillog($1_su_t)
- 
 diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
 index 3a5d1ac3e..f9d50a8d4 100644
 --- a/policy/modules/system/authlogin.te
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index d739522..f09fc94 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -2,7 +2,7 @@ PV = "2.20231002+git${SRCPV}"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=main;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "d7d41288b162b8786de844bde6daac25e4485565"
+SRCREV_refpolicy ?= "504feb7a98e2e70f774d6fe7107b5d1a5f2c6124"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.25.1


