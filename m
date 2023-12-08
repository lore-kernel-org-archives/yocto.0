Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8764C10DC1
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 08:43:51 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.16041.1702025030724501110
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 00:43:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=COUig7+A;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=0706306392=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3B88JilK021876;
	Fri, 8 Dec 2023 00:43:49 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=/aBmXCYWEo+N4KwLn2y5u32WrVixqrFLeA+o5M36QyY=; b=
	COUig7+AkMMRs7gkBOPwqX00lv6N3J9fbsj4ldmtdHfLmRcYKgzhbb4t5ktf1Iyd
	hO05SGLcIpmzfV/shNuboTGjIWGlAjrL9yXCE9Fhj1EjRZi+Evv01XK+ugbsaTh3
	B8udX2rV0J5kUq/pObg6dUmdysr9E6xSDh1x6QLhq7Z1r8R/chHlWTG0Cy7frsXO
	DLB3LjpEy9eGRIlb8+VoRihDGUR3NB+j5bJm5wocdb2P+iCQBEJGKb5m4kkY9GL/
	R10HvFk4D7BwYEujq9X9fxPFKYLmtKbeYtqrGvC1rPZlXvhtRT572rg2zmjwbysF
	RLrcii0Wyu0yH6h1Q8rQuA==
Received: from nam11-bn8-obe.outbound.protection.outlook.com (mail-bn8nam11lp2168.outbound.protection.outlook.com [104.47.58.168])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3utd2r2ks6-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 08 Dec 2023 00:43:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T99JpqogF9aWqzk2bbBORfKwg+P9RW3Ulhme+3hKRX/K1by1El8PE7uORrecrZfOrC4gfZf+7uW2akKgI/+6K60AW19qg1zV7+Jv+wtrnxzg+aIsZHHnbDk7nq5tDuZSZMsoHvQ4wXwywxI6d6mi1nCaw8E+iWNbkJ+iUu78x8yQesREUy2XrnSxLnF8I8JYbdzx+CA/01ClnsWnAIgB72E1yOD0A0oLR3sZh+XiC6H6HZCQ5hp3ytvpkUHn85R5H5ZJUnEcwBKDpmn0nnR5rBu7dNT2VPKiDojxAsgNzzq58/mPrBu/GXK9QLH0IgfUuFhm/0qemTifDdjkIoopog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/aBmXCYWEo+N4KwLn2y5u32WrVixqrFLeA+o5M36QyY=;
 b=AkPTKVTT6/0z/i9yjkHLu5Z49ZABMzsTlLLu5RR6w+ar3q/kK7BdZSKL5T0tkUkwU4GPhWMc1idoZ/nRsTQKr7nvuZRUXXm9rBuNZh/mNZjY+fQ+HRXhIzSBVfUvkjU5Szgw7gJFmkfMIKJD+AmVZSk5OrYNjYg9mJ9yitI9DZGtfPUSd2qt2RP2NZLaICun9aUmTYKUdsuiiQgkrZhe9nW47ddrTMNTNAOPHzd0g7IsYfiQtVAGQZjbFa5ZntIniwdfncJNJ3Pmjt5bPYovcDTWA0PICEP2s7Ogravz95de5n38KH3yhVIvOguNHEMngqjNRzvjxZEmJOEDpy9KXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by MN0PR11MB6160.namprd11.prod.outlook.com (2603:10b6:208:3c8::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 08:43:45 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 08:43:45 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 2/2] refpolicy: fix login errors after enabling systemd DynamicUser
Date: Fri,  8 Dec 2023 16:43:33 +0800
Message-Id: <20231208084333.3788390-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231208084333.3788390-1-yi.zhao@windriver.com>
References: <20231208084333.3788390-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TYAPR01CA0106.jpnprd01.prod.outlook.com
 (2603:1096:404:2a::22) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|MN0PR11MB6160:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f10ea52-7c04-49e3-9f4f-08dbf7c9ca12
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	wERkhKAl6fNIlb6lPSn2WWbU0L4kKzHU6lbDNXu5Mf5eVE12FVDXocSbYAQuF8PCVzzzbe//vJvnV2E8Bdk8PPVfIyB8O5pvVxXQn8Hvw95ckxHy7Gl104/MLFy010TjOaYDA5FITP5OQs3Md6W8sbWGCKsGcgPWDUXLY5JqxZ0vy4cfY7FZaOYp2DQD/dijASfBBSzPtXwZr0XSMyPugLIZmG9iRxlhC69Zp3iZfF5qkS1EKSUcKkrnMac+Yir0Z93621w1VbbkSvny03fWUoavqZhmioNrwIYnY4GxKA6wKdkYaDD/FKpHMc0J8P5lPkr6TQRFsFVb2lmEDwu3zzGTx/OzN4LboXfEDZVsN/khb29N80WK2WnzjVD7FhASK3/03741HQRn0q7Fk7fVfH4qBFFJLXYfTg0nIKFZzqbTo25PzShjdCBjfDtHjqyGaMinFiYN0k2WI8oeU5jclMzBZTVyjkVxhTnMJGb4mwyELlWHlPTVOSVdAA/vg3b0lnQ2/aLWcLbICKrr7IAHmoqJxwNwKBFVSyy9lD8Q0VSmM+TMN1WWtGQQos6NjPpy/YvnWQOlfBRdr6t78dPwet8EoG+4Il8S1Z+/spzdSQ0=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(136003)(396003)(366004)(346002)(376002)(39850400004)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(86362001)(6666004)(66946007)(66476007)(52116002)(41300700001)(966005)(66556008)(316002)(6506007)(36756003)(38350700005)(1076003)(26005)(2616005)(6512007)(38100700002)(83380400001)(2906002)(8676002)(8936002)(478600001)(6486002)(44832011)(5660300002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?OhxAgbseQKZqZ+8Cp7UJiVhWjiYB7VXqWg16UJEtY/5eHAD+euU9EZKkKItk?=
 =?us-ascii?Q?v4Jk1pI/14fwiZs8k7U9TntzTEK0G9u05PrRuxjxCeCDwCCXrkmPuw24MThH?=
 =?us-ascii?Q?KXzvRRbjD+hcXjzCXUmjGIOD4t/dA3dNE+QXqCQQSEaUI2d7towQKUIBK6AC?=
 =?us-ascii?Q?pcSo9iksxQbvgFJDHty9n4rLg5cu5ZFYqpdhpbhHRwdqgPWB1zREWdx4W+gq?=
 =?us-ascii?Q?9TD++iUt+Vj/5QKncM7NHRjyTJsSquDWV9Qf6MHtiQPZDMwMD53mzSkJnPhZ?=
 =?us-ascii?Q?xRdBsDwObHpmH2S7FqIlZO6eoxsS02uPaZa9/AP61EDlNLVh+sjdpbXhckQv?=
 =?us-ascii?Q?BoRwDRTpFm0p9/vpOEm5Pzr3KSQTiTHi9XKeS3rlRAVXG21u19t6l5ZA1UMc?=
 =?us-ascii?Q?ys8XDYqW6QojF1NcKy6Hj5z9SLxaw6h/WCqYhXhsAwnGWMVrUdTYivFzG2hE?=
 =?us-ascii?Q?7Wx03Rq/rJTSx52qMO+Sl2nGvyyvnQpaRo54FJI/0FNVBYieS5UF54l2lSGe?=
 =?us-ascii?Q?hawlEsm6vPVEgsFlypgX4ielIH8rfiz1uxw+I8o68DX6g0830LltFWsvu2lj?=
 =?us-ascii?Q?lLFieDW+ybnPXaeyeWySoaSjNI0rWqapvG4UtxCq8+udbsqfflW7H/gadhZi?=
 =?us-ascii?Q?/JRtR6f0+0LqAWCAwNG61h7EJ7YbZDB3S9YXL55g9fng3sGaorIVFd5PvkFb?=
 =?us-ascii?Q?ZGcnRkIuWsgQNkKy/sR2Cv8Cljcn64Ai3hmFibaiCtZ4AjyZljPLIWiQ4clT?=
 =?us-ascii?Q?3sK4i7f+AlkIFwPa/xr0Hgs2mx3LcaLQOBOCEqf0TqsUG1YH8LkuEsO4if1R?=
 =?us-ascii?Q?VdixpdIG7lSXENuA4smnlmizUl+dG5dPh8+lVB01EDgl8DOOLn/lt0DaO8Wx?=
 =?us-ascii?Q?HOjhnEly03y6fHPLLnS0vf60ElxKdYo3n+ckXEl7pg9ClVRGY1xt2K3LklGG?=
 =?us-ascii?Q?5wLVa1aylRRumGZSrvhF/WxK49u3BeGMm+Hc74Mt+hWVkX0cTsLHTEVRAHHI?=
 =?us-ascii?Q?8E3YIQIdzfxSBgWYjkLyzAjdbWobkwnV5NICcOEQlTKjlSw/rfjFaE7Ra6Pu?=
 =?us-ascii?Q?BSsLLWukwCLKbBXpiz7F3oSeE7gIW9rVOiBsqj/42zwM7bJaC4AipiUIEYhx?=
 =?us-ascii?Q?Nc7lk8feGvtdIokwu+969r5tzPZCkuVa1bwhHcOZriAvNWUHwCwDYk/YdRyI?=
 =?us-ascii?Q?0nyGo9gvWh+yGta8q5ZeErIKWAaglXpzSK80g3D/QKCMcQ4+37gZ5duxgznv?=
 =?us-ascii?Q?nFd+mbK+F5BF1b6nqP+Lb7EZA8obqB1aiGy5G3fftWMt/0madoj5XbyXD5NM?=
 =?us-ascii?Q?CctudDUslYntXMtqaawS3ft435aE/uGAX7793VqbEnwF49rSk6WEJC5PjC1H?=
 =?us-ascii?Q?Q9jYQwH9pdV3hnL5cS1qL5T8xLJmML1pUvEewlbt62PXI2bX5peYoL2etFOe?=
 =?us-ascii?Q?Sr4aXxEa4wpfWp/XipkkbV4ty6/zq2Jq7m9fYEDnA4BIt7Nphzcu96WLYI4f?=
 =?us-ascii?Q?ee1ZVUUOZag6moqJWraUFKhxyNhO0/fRhoUOYwYeaWxTyfRvdn04/wgLb9rt?=
 =?us-ascii?Q?euUyM+tic7zH8hL88IyxaP1ZFoB/bfxp6Rx6UMnn?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f10ea52-7c04-49e3-9f4f-08dbf7c9ca12
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 08:43:45.5498
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pmWzKbCFkvGy1jRmgo2oqHG+8LT20IqaG2Q4vRd63kR5CeIhlIEA8B1ugkNXyUEuvzM3tFMnZEoMEknG7YbaJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6160
X-Proofpoint-ORIG-GUID: 5sPwtRwLdSumw4-LfRpYBDNZabj6BTeH
X-Proofpoint-GUID: 5sPwtRwLdSumw4-LfRpYBDNZabj6BTeH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 phishscore=0
 priorityscore=1501 clxscore=1015 bulkscore=0 adultscore=0 spamscore=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 mlxlogscore=999
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312080070
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 08:43:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61840

After oe-ocre commit ba3a78c0[1], domains using PAM need to read
/etc/shadow.

[1] https://git.openembedded.org/openembedded-core/commit/?id=ba3a78c08cb0ce08afde049610d3172b9e3b0695

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...ystem-authlogin-fix-login-errors-aft.patch | 104 ++++++++++++++++++
 .../refpolicy/refpolicy_common.inc            |   1 +
 2 files changed, 105 insertions(+)
 create mode 100644 recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch

diff --git a/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch
new file mode 100644
index 0000000..8a5dde6
--- /dev/null
+++ b/recipes-security/refpolicy/refpolicy/0055-policy-modules-system-authlogin-fix-login-errors-aft.patch
@@ -0,0 +1,104 @@
+From 2824a6c927bf6df4be997a138a27d159d533d08b Mon Sep 17 00:00:00 2001
+From: Yi Zhao <yi.zhao@windriver.com>
+Date: Fri, 8 Dec 2023 14:16:26 +0800
+Subject: [PATCH] policy/modules/system/authlogin: fix login errors after
+ enabling systemd DynamicUser
+
+Allow domains using PAM to read /etc/shadow to fix login errors after
+enabling systemd DynamicUser.
+
+Fixes:
+avc:  denied  { read } for  pid=434 comm="login" name="shadow"
+dev="sda2" ino=26314
+scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:shadow_t:s0 tclass=file permissive=1
+
+avc:  denied  { open } for  pid=434 comm="login" path="/etc/shadow"
+dev="sda2" ino=26314
+scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:shadow_t:s0 tclass=file permissive=1
+
+avc:  denied  { getattr } for  pid=434 comm="login" path="/etc/shadow"
+dev="sda2" ino=26314
+scontext=system_u:system_r:local_login_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:shadow_t:s0 tclass=file permissive=1
+
+avc:  denied  { read } for  pid=457 comm="sshd" name="shadow" dev="sda2"
+ino=26314 scontext=system_u:system_r:sshd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:shadow_t:s0 tclass=file permissive=1
+
+avc:  denied  { open } for  pid=457 comm="sshd" path="/etc/shadow"
+dev="sda2" ino=26314 scontext=system_u:system_r:sshd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:shadow_t:s0 tclass=file permissive=1
+
+avc:  denied  { getattr } for  pid=457 comm="sshd" path="/etc/shadow"
+dev="sda2" ino=26314 scontext=system_u:system_r:sshd_t:s0-s15:c0.c1023
+tcontext=system_u:object_r:shadow_t:s0 tclass=file permissive=1
+
+Upstream-Status: Inappropriate [embedded specific]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ policy/modules/admin/su.if           | 4 ++--
+ policy/modules/system/authlogin.te   | 2 +-
+ policy/modules/system/selinuxutil.te | 2 ++
+ 3 files changed, 5 insertions(+), 3 deletions(-)
+
+diff --git a/policy/modules/admin/su.if b/policy/modules/admin/su.if
+index cd34cd9dd..b867f58b9 100644
+--- a/policy/modules/admin/su.if
++++ b/policy/modules/admin/su.if
+@@ -75,7 +75,7 @@ template(`su_restricted_domain_template', `
+ 	selinux_compute_access_vector($1_su_t)
+ 
+ 	auth_domtrans_chk_passwd($1_su_t)
+-	auth_dontaudit_read_shadow($1_su_t)
++	auth_read_shadow($1_su_t)
+ 	auth_use_nsswitch($1_su_t)
+ 	auth_rw_faillog($1_su_t)
+ 
+@@ -176,7 +176,7 @@ template(`su_role_template',`
+ 	selinux_use_status_page($1_su_t)
+ 
+ 	auth_domtrans_chk_passwd($1_su_t)
+-	auth_dontaudit_read_shadow($1_su_t)
++	auth_read_shadow($1_su_t)
+ 	auth_use_nsswitch($1_su_t)
+ 	auth_rw_faillog($1_su_t)
+ 
+diff --git a/policy/modules/system/authlogin.te b/policy/modules/system/authlogin.te
+index 3a5d1ac3e..f9d50a8d4 100644
+--- a/policy/modules/system/authlogin.te
++++ b/policy/modules/system/authlogin.te
+@@ -10,7 +10,7 @@ policy_module(authlogin)
+ ## Allow PAM usage.  If disabled, read access /etc/shadow is allowed for domains that normally use PAM.
+ ## </p>
+ ## </desc>
+-gen_tunable(authlogin_pam, true)
++gen_tunable(authlogin_pam, false)
+ 
+ ## <desc>
+ ## <p>
+diff --git a/policy/modules/system/selinuxutil.te b/policy/modules/system/selinuxutil.te
+index f9b735081..6ec5e2cd4 100644
+--- a/policy/modules/system/selinuxutil.te
++++ b/policy/modules/system/selinuxutil.te
+@@ -246,6 +246,7 @@ allow newrole_t self:netlink_audit_socket { create_netlink_socket_perms nlmsg_re
+ read_files_pattern(newrole_t, default_context_t, default_context_t)
+ read_lnk_files_pattern(newrole_t, default_context_t, default_context_t)
+ 
++kernel_getattr_proc(newrole_t)
+ kernel_read_system_state(newrole_t)
+ kernel_read_kernel_sysctls(newrole_t)
+ 
+@@ -288,6 +289,7 @@ auth_use_nsswitch(newrole_t)
+ auth_run_chk_passwd(newrole_t, newrole_roles)
+ auth_run_upd_passwd(newrole_t, newrole_roles)
+ auth_rw_faillog(newrole_t)
++auth_read_shadow(newrole_t)
+ 
+ # Write to utmp.
+ init_rw_utmp(newrole_t)
+-- 
+2.25.1
+
diff --git a/recipes-security/refpolicy/refpolicy_common.inc b/recipes-security/refpolicy/refpolicy_common.inc
index e9b0b1a..c6b964f 100644
--- a/recipes-security/refpolicy/refpolicy_common.inc
+++ b/recipes-security/refpolicy/refpolicy_common.inc
@@ -70,6 +70,7 @@ SRC_URI += " \
         file://0052-policy-modules-system-setrans-allow-setrans_t-use-fd.patch \
         file://0053-policy-modules-system-systemd-make-_systemd_t-MLS-tr.patch \
         file://0054-policy-modules-system-logging-make-syslogd_runtime_t.patch \
+        file://0055-policy-modules-system-authlogin-fix-login-errors-aft.patch \
         "
 
 S = "${WORKDIR}/refpolicy"
-- 
2.25.1


