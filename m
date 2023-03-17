Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 085C4C6FD1D
	for <webhook@archiver.kernel.org>; Fri, 17 Mar 2023 14:11:59 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.20331.1679062312417552516
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Mar 2023 07:11:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=lPV7d7Eg;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=24402bf855=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32HDeQeB021742;
	Fri, 17 Mar 2023 07:11:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=6sE8PCxFnoLzWmYjAdV5259Ph82coh6r4YMSBb4PVFI=;
 b=lPV7d7EgZrHYpM2cxBrsmoAxSA7pHOu2gpZA7BtTcloykOGS5Weue5mwnfn56/iJikR2
 Q8FrsTAYVAYsZwzA2C9aH8PPPnauGessPZownu5ie8aTDjJ3Vs01PceZeoiqWyiyp1Bq
 5I9SogxczAc8B38p/KHxIQTuYl939KMMMoIGOHAGUZgEoXES94K0+vrqJWqfDnv/d7+t
 4nafL2dPKbXrnIYbPLXFFwumrf9cqlpGhElkVe2d5bEOGxmQyWiiE0ov1dvP7E8deq/0
 A990D/uAvKvQ7HNYa0GhhwXl9UkX+FsPtvrlv1eLVjtsal4HxEHUbLVXaTTBRoZJp1te LA== 
Received: from nam12-bn8-obe.outbound.protection.outlook.com (mail-bn8nam12lp2176.outbound.protection.outlook.com [104.47.55.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3pbqkshqus-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Mar 2023 07:11:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aPl2ZlIaAk1lC3J8ZHM4G6M9+wNR3NsmzWKJta2Yfi3kMp/9VmOjI/7pKjJUJn+Xh4+XYOqwkPhw8njYDDTcYb0vNzGLqk0H7W4stwz4cb+r1q+MoOirYwyekj28q5dkeDTQWEAaTntoHJBs/iKzrqQXWuX4l1yCkB9WBh8I6A+dGslqPD1aC/nYozeqbSSjUzAMixk1Bz3MfPTmG5wuJrBGsNnf+h3FUAFyySYA8GmfTF/s5epVhd29D2cT6kkj/s0/9b9Iz7Cd3ApsRO2/2BaPlZN/nVpQ5mm/em8z2VZA/suU2GFdDy3uI4TOODKOfg9vKDt1rZXVw2RuSmqr+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6sE8PCxFnoLzWmYjAdV5259Ph82coh6r4YMSBb4PVFI=;
 b=eiJx+sWacINOspzBiszRApsFspa14JWQnRgkKmIgdK9efNpRkjy/XHttrvea4YaVvY8L+a12N1dI1CH4BIMyFuGUf6lAEx2EwQOeDXBYo6FliWFThO0G9sTF44hN7T8gefnoadAagg3Dv9B7WOoe63hrSacbouVzdQjvHNlzmjpkCQNxKsP9B3VQMO2EzeHZeUMY1V/jMoNSJTu0QO75nQR6cQ1kCneyIdwClheTGr1vdvZDMhQmQJ2T3irXNzM/3+nPcgLBRRDyUv8st5KGiPOfcH5qQhsU9dFljRI835bhFrb/J8EeqFpCE9baICG4QXY9VzppAKrr/UqM9tdGDw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DS0PR11MB6448.namprd11.prod.outlook.com (2603:10b6:8:c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Fri, 17 Mar
 2023 14:11:48 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%6]) with mapi id 15.20.6178.029; Fri, 17 Mar 2023
 14:11:48 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH V2] refpolicy: update to latest git rev
Date: Fri, 17 Mar 2023 22:11:36 +0800
Message-Id: <20230317141136.4057958-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SI1PR02CA0046.apcprd02.prod.outlook.com
 (2603:1096:4:1f5::14) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|DS0PR11MB6448:EE_
X-MS-Office365-Filtering-Correlation-Id: bc9ce04d-a96e-4978-c210-08db26f18c5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	jxzNZ/fPW9vyJTmmnbJsAH56yt7iA1jz/I73NYeUWIOXWSoVMuS9UfNsxaDtoz2xswii7oD6t0mNs2Aal3GB8Sdsv3PFYt7NEFblI1W8JBSnMyMu4pUe6Pq67UtGdUytJb/WN+fA5ZFaFwhUlVoStAoQN+sERHGGcH6u6WKKVd87Pgyv/SnSOmCGpiK0Ou82v47FlhnNJKL11/HP7zmlMA1PaqyJGdl/Q/sye7Ni9mMAdOCZ8KPcccpQQgSQuCZFjG8GkSqeLU6/jg/mApHeh8vrR584ZFQYssLswoww6KXDeDXxX7Ub8HfoSdeX866t2kgEGQFFxaWh85YO+yr5uttoKBL8nukTsegMTHoJZ7Ch8XfWruCSVyoEUbizmdHYQvAnKoIPjfPVOhBodlwyt+xZPWlmkhEfnjRho1C2+IGlqOyyaKPP+E/Hy0mPreEfde0R0U4yQTs6NsIGPZYYUQhQ/4oWoqldq59PBI25/GRlCM7vCa916uEtT39u+AhuHzqfsOYUFfk3NC7CeI9gC+kvpycPc+e3oySK7o8YHu/Vy21gffEDyhwyvntn9ezjsgCdwgTiKZV21G5KqRrzKNjee3WmVdUZ+xJzKFLk9tV2/PqRRMyNRx47WxNLXh/9W/Nra5xcXuTvoa1V5tecUuf4hmgDLFFZ/fnkd3lJZECZtEeoHLi4eyJhtuwDHcW+LKnsI6Nz6/J2XoA6C51ncw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(346002)(39850400004)(396003)(136003)(366004)(376002)(451199018)(316002)(36756003)(66556008)(2906002)(66476007)(8676002)(38350700002)(41300700001)(5660300002)(66946007)(38100700002)(86362001)(8936002)(52116002)(478600001)(6512007)(15650500001)(1076003)(6486002)(6666004)(44832011)(2616005)(186003)(83380400001)(6506007)(26005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?KOT2Bs907FVa+bWH5aVnVGlc712OqKrfLcdc6uevjcGYwf2vUhQsV8lLbyGx?=
 =?us-ascii?Q?njomGmS8K+V05wjPCpuCmBIcMrmpYu/PlCqZaMtDlbA2Q/pcLmXPeATwclpc?=
 =?us-ascii?Q?/CRizaS71TkOMeVrseDnZvRRNrRrCDjvbIcDeOdyLMswAX83T2PZcFBV/pwI?=
 =?us-ascii?Q?Wv02heODqVY8pqCf7TLQQc+NaBwM2W1iX9Hb7GiNMFfJ+9KtmtzJfAtOep3a?=
 =?us-ascii?Q?wD/tgHzfto17MOoJH5Pz8RN0Qr62CxOpDqyZSeaTXq3RI9fivHa86gaPbixp?=
 =?us-ascii?Q?qurBxmCr4UD7uMciI5ELYOZ+IKqawmUqcoS9vx9AGPOk8GumbbZhETbPwfyR?=
 =?us-ascii?Q?wohophr2+tFcoW6y4YYC0BhtAOT/6h3TXEGvtMOKHUkzuBXfKDliqAg0yCh6?=
 =?us-ascii?Q?5a3MnILoVUDiRd0ugFT7tKjc5yRBC2TwZOVqfTjxwVpeKvM1QCBBuj4CmiW7?=
 =?us-ascii?Q?3q8kFblQyAnHRRf4RkKmXz0/zHk/D+kz8Utvfv+cVc+HrmULcuvAocYRlsTm?=
 =?us-ascii?Q?BYWRGVnkU7TaQkAdBonbeEQziHRQgQxLxuEJSfnpcuijMmspeRD2CSf8hfFX?=
 =?us-ascii?Q?VJbf+eq92sTHmzAyOWC5fqpSJ0vK4O7W1HZkUTOa8aA9BRzr6rAIQNqMosri?=
 =?us-ascii?Q?552dL5wGnrt5BmWhRsqdZmfEgK0TfLi2aPfhXR1ola4Z1R0rDcEwfhZgMxBA?=
 =?us-ascii?Q?fbRqZZlwlhN/mS8MaKxIkzqExpwjB3uXR2Tlggg4Bi4mUPNoBH9Leje1Fea2?=
 =?us-ascii?Q?9oOlM9jky8OxSRnmp0oUSJ/Ve7yrHCBZK8+pLYbPzDXXJVkTGu06805tHIE8?=
 =?us-ascii?Q?0AZO55oLy1HGSm0WruTNnkrKuZJmKbtb+JF6XUVS4/KqsMFMtqldpOU6q7s+?=
 =?us-ascii?Q?Mgj+fCsSXLRVams/8dCxJUqW4jMNeAP3cvwpLafApFDkbCIq1MC/z+vcI65W?=
 =?us-ascii?Q?T3YBeHrzs7+HlcbiN3XTcjZ9F88AGK4syWOcIpIGDl0OYLCwGR6gx6kVdTjJ?=
 =?us-ascii?Q?zwXcmckUgNphKpptx2DUUIukBvPGDVA6MKMzFJmQzZyZuXXe6vSfgsTW49VG?=
 =?us-ascii?Q?GOeCT67qKbQB49VCHifBO9o3wvSpHQAC/uqEgmYYtWQMzJ9Ql05Bn7t11Ai/?=
 =?us-ascii?Q?0pdFifU1m+bHXek8gn8Ex2WnVDYELofjo/zMFjcZZPu3v7V1RnWOOfhUn7Ve?=
 =?us-ascii?Q?Je6Sv7kFuKo0b1r6c9Q+7eQAmzaEELLyJ+IYZm8YKq4swYOYbNtbHsOHl9ww?=
 =?us-ascii?Q?rcW/jm/icGCMqPXSoDtnQCoimDNTeF6h+9NWxJ9l8mRSQUB7RusPClVioZCJ?=
 =?us-ascii?Q?igdrygDYC5pMNPrXVXtyCGy8ziYQkh/BHPDc+3uXWVYhx9g3qH6qFer9TNeE?=
 =?us-ascii?Q?Bo6C8SLDUnmUR5e0pzP6cPQSeG2Pzo/scSeBtEcSLZlLXT8cwk4PgRVPNr1Z?=
 =?us-ascii?Q?BAeEshh6OR09Zcwh8mN56/xg/w0ODR/bttLITzVNXggjxkujpqJoqdTBw28c?=
 =?us-ascii?Q?bJQm5EApghRia9WVblq/pq3ZqZ9NTRYCCrxmtu2Pxn2zUOQ9QppE032VR2ni?=
 =?us-ascii?Q?hpKHPqp9Nb09u5R7IUzwutm1wwvM/wwzN6DvsryO?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bc9ce04d-a96e-4978-c210-08db26f18c5d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2023 14:11:48.8391
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DR9Ncce9aQ4sNvRvAt1oK2iC9zx6dgsK7ODL9UJZ81IUqjRMN4eMiMFuUcSOQb6/SpUcUAsopGtiV1a6b/5iZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6448
X-Proofpoint-ORIG-GUID: vTwOyNZJUaX6vyLE75HjDtBg6U8hFYfF
X-Proofpoint-GUID: vTwOyNZJUaX6vyLE75HjDtBg6U8hFYfF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-17_08,2023-03-16_02,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1011 phishscore=0 adultscore=0 suspectscore=0 spamscore=0
 malwarescore=0 priorityscore=1501 mlxlogscore=737 bulkscore=0
 impostorscore=0 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2303150002 definitions=main-2303170098
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 14:11:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59448

Drop 0003-refpolicy-minimum-make-dbus-module-optional.patch as the issue
has been fixed upstream.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../refpolicy/refpolicy-minimum_git.bb        |  1 -
 ...cy-minimum-make-dbus-module-optional.patch | 36 -------------------
 recipes-security/refpolicy/refpolicy_git.inc  |  2 +-
 3 files changed, 1 insertion(+), 38 deletions(-)
 delete mode 100644 recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-make-dbus-module-optional.patch

diff --git a/recipes-security/refpolicy/refpolicy-minimum_git.bb b/recipes-security/refpolicy/refpolicy-minimum_git.bb
index a50a4cd..67c3785 100644
--- a/recipes-security/refpolicy/refpolicy-minimum_git.bb
+++ b/recipes-security/refpolicy/refpolicy-minimum_git.bb
@@ -14,7 +14,6 @@ domains are unconfined. \
 SRC_URI += " \
         file://0001-refpolicy-minimum-make-sysadmin-module-optional.patch \
         file://0002-refpolicy-minimum-make-xdg-module-optional.patch \
-        file://0003-refpolicy-minimum-make-dbus-module-optional.patch \
         "
 
 POLICY_NAME = "minimum"
diff --git a/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-make-dbus-module-optional.patch b/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-make-dbus-module-optional.patch
deleted file mode 100644
index d545d2a..0000000
--- a/recipes-security/refpolicy/refpolicy/0003-refpolicy-minimum-make-dbus-module-optional.patch
+++ /dev/null
@@ -1,36 +0,0 @@
-From e28807393f105a16528cb5304283bde0b771fc4e Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Wed, 9 Nov 2022 10:53:26 +0800
-Subject: [PATCH] refpolicy-minimum: make dbus module optional
-
-The mount module invokes interface
-dbus_dontaudit_write_system_bus_runtime_named_sockets which is from dbus
-module. Since dbus is not a core moudle in sysvinit system, we could
-make this interface optional in mount module by optional_policy. Then we
-could make the minimum policy without dbus module.
-
-Upstream-Status: Inappropriate [embedded specific]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- policy/modules/system/mount.te | 4 +++-
- 1 file changed, 3 insertions(+), 1 deletion(-)
-
-diff --git a/policy/modules/system/mount.te b/policy/modules/system/mount.te
-index 97f49e58e..b59529a01 100644
---- a/policy/modules/system/mount.te
-+++ b/policy/modules/system/mount.te
-@@ -146,7 +146,9 @@ selinux_getattr_fs(mount_t)
- 
- userdom_use_all_users_fds(mount_t)
- 
--dbus_dontaudit_write_system_bus_runtime_named_sockets(mount_t)
-+optional_policy(`
-+	dbus_dontaudit_write_system_bus_runtime_named_sockets(mount_t)
-+')
- 
- ifdef(`distro_redhat',`
- 	optional_policy(`
--- 
-2.25.1
-
diff --git a/recipes-security/refpolicy/refpolicy_git.inc b/recipes-security/refpolicy/refpolicy_git.inc
index 54e0890..af3413b 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -2,7 +2,7 @@ PV = "2.20221101+git${SRCPV}"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=master;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "03d486e306555da161b653c88e804ce23f3a0ea4"
+SRCREV_refpolicy ?= "8e8f5e3ca3e5900cad126cb8b4fadaa8adb8caac"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.25.1


