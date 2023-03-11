Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A12EC6FD1C
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:36 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web11.44227.1678540408525728457
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=AsHNHEe7;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BDBAeM006573;
	Sat, 11 Mar 2023 05:13:26 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=FBrrBMGOo1Dr+mRWttgC850gC0dBDKVdRbkjIQO5x4g=;
 b=AsHNHEe7eJpJpwSiQj73Ofic0Kg0L3FTpFy5xnR4/DdJizsdysnlJyoydHQhwUei5QtX
 IRmTB0kGBf7uFw5iUlqwt/KAo95Hk1kTQiraTBUDNrLxmOTA6dHL0BIgik4FRnlhzeHI
 wlgcPmirpftFoESIYyQV61W+ll63U7sPP6J3FKqN4eZxKQoUqseE6B88PANmdV4HhXxA
 gPMypqBy9NaSsQDU9JEM10qam4xIKqumqmihGjVzIqAWfKMoeqaeyK10c3LO+joc3VgB
 AGLYE+j3I1Xq7kPjwf/GCjbvnF/pjZmeAJKM4sPne608/WL2JHz2QICg3uGV2tw+p3tp tg== 
Received: from nam10-dm6-obe.outbound.protection.outlook.com (mail-dm6nam10lp2105.outbound.protection.outlook.com [104.47.58.105])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8t1r00bf-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 05:13:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KxOcwx8QOM514X2JaysKW01yFIpr/N6ElFTMNrJAMSGw0m3rKPeR6blK0Ifwu+KMezlQXyy3BByIA32cEj3jNjN9o8AK9h4xNsdIkgGkh426HjOR9hKt69Mk/lPgairqjMmVnS5ir0xv2N6Wa0yiw0U++jX+TgrENz9y+wr6SkkjZ2Ya3jWCUnGVFUabUEUzVHvNdrvTN+S/LJe7ftLveUqB9G3AWWHsPcUql9Hpo83t4eVRyulYpa9gp+dkwlvUZ9hpu4GZ5rs5jYVRxlXt0q4fxY2qM84epuMh9pwtDWrsGc6uwKSpMkoqTsn7tZRh3JqTlP5bXcIT6X3PYWwBSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FBrrBMGOo1Dr+mRWttgC850gC0dBDKVdRbkjIQO5x4g=;
 b=XTfYM3jSJwOT0en0qPDC8RlBp4dr4zYoTWodMP60rAQ8gvfBeLgto23zEHkUIokio/sb3QU/BAUsmS9VdjrXGCs3lgQfJ7OOpiUyRiSRCoZM3j8GtP2eHjRG5ixfQVpILvZbOJtAUpozzV7h0vbuPh9upixyq4ATSfn4HwmlJrwoJcgj/E+6D3MZp0DpHkAZFGwBrCkIf6pMIvLSG510Jdax9OK0sItfZ9h+ZhJA/LLCXDMZAORBqzIwCoiSb0CLMlGQKspo3lxP4n/t/LLZ70CN3r1f8CVB6iATXnNUyt8Hq7BIStNJaT4bYCw6yLv7SnK0LPNI3NUwYQykFuhRZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:25 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:25 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 02/17] refpolicy: update to latest git rev
Date: Sat, 11 Mar 2023 21:12:53 +0800
Message-Id: <20230311131308.1337339-2-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230311131308.1337339-1-yi.zhao@windriver.com>
References: <20230311131308.1337339-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR03CA0128.apcprd03.prod.outlook.com
 (2603:1096:4:91::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB4867:EE_|CH3PR11MB7203:EE_
X-MS-Office365-Filtering-Correlation-Id: 2144e7a0-4afe-488d-dabf-08db22326575
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WwYJSegL8WO/eedhyFNOVSyDoEbon1zHIH46FI9MBMTbEu7HAtqS2DoIxhyZCooPJFZnLLPJ2HIajWIZt2Z5V6FQCCDqztpo5UBaXdKhoCFMLEcQB26cI7fXRHeky6Nto4E8RsiZmYlOhkNqgJdBBht4GzTheOD1W6e1B5fqEm9gYweoek/KmIfcCuUwAUjA1El/QOxkAnDL41TfD6YfcK63MASu81BwLLFNP9Qw0omDcOs4Rru6XY7lNEntRwD/iUnvfou1b7thKbG2nA6wE4kvJ+k/7Nv6oixBwRVCewkhTCCrI54m76PgczqfTxVRWwRrRh7gbY+lOuZsbk8dm7z5HWPDZsHm7i6Weszxf/N22hnwtkKaSFQRBN6+eXmYRquTbSpOKowlIKxFROh8cBF2YrqqK3S8XZS/2y1mbuwLvtKuxnSric3nqcoxLWD+Lv6mlKfsB73bOc09btlRWd9ca3BPOUnBAVTuvpYL8UtxqCJdBXh39TAWvOFJzO/K7p8ODwBGdn8bPrMG3d2HhKXQ2oxcsHpM2qEa06JXas3Fe1jc0sZTXAQGgdWtLM3Q1TzIv233abAhhm21t1Osy70gIG4vhU/QQiOYgpph4Qm4+h/PqquoR5QZvpz9s3sIdkqs+bi2+GQONMxZotz0+Az4jCNH6M3PzvoGiFlxy/VImBTvaczMrRS2SQvRl9pxffj8iZ58eAat/KOgTa/3Rg==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(15650500001)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?LYnmCRVBP395bQXz8hpaIEiEHnOoBrTDqNr3rtRsoKDDkDqMJ67+a9zkMpYi?=
 =?us-ascii?Q?0YL9fWRBrwYbCkYCioflgLXJXI7WT7if3mj0NZZh/P23sYkt7h6ta95l7V1p?=
 =?us-ascii?Q?T3Wlsf/7/njFAQL855TV3XMCceE/jayvcINo7ggEtjcDrjW4JYtP0JIPlyKk?=
 =?us-ascii?Q?HQrGuAQ0IMHUubY5NT7SNvmBW7Dyx9G7NhjjeH+rExrV4sszpiqJ7dv3ZANf?=
 =?us-ascii?Q?hUoj9UUD0mbSK/gBDEhokgx5Ed2+Tw9eZYJkbEbm3cuX+MKkYb0mywCfj+cP?=
 =?us-ascii?Q?E7YE/Wz2D4PGoYGXBZqJH7yx+ITfkc78j/uv+DilxN7Lc7M9o1FE7uj+jLiW?=
 =?us-ascii?Q?m+/PAzjskRPtGukazq3k7x7A6lkXtpAWPS+VkZq2iBofyEsoJIrKwsP3mulb?=
 =?us-ascii?Q?FMj7kLHtjX2pDUuc+Vlxbm4HztHOXx8WnYhZ8gcBpHV2AGJO62aptMENFGC6?=
 =?us-ascii?Q?3ccHwzKcbxxAvEcJxyy2Efy1cc/DjjAM4nj4MeaiiC0owxm/97S04WebMxIu?=
 =?us-ascii?Q?auWONldo56EsJksrG0a8mx448H6nWqcJhXXtD/SeQiMv8gg2f0yIwQZ0xqcQ?=
 =?us-ascii?Q?Kt7f6lQ+4ZftovtdQ0BWGtadk3LMoCkJHFRX0NTn0owauUOzfNPBFlz6FDdf?=
 =?us-ascii?Q?emoiMo4nQKB26rxgZJPqiDvHpt1K6TCFLmsiJ9dHQxJVp9liQGvrVVFRmKAn?=
 =?us-ascii?Q?vzyLe2JB6gC/zKH7HNPQ7848OmepFIa5BrizMKzKuLJsN3G6KB6OHWaZZVh7?=
 =?us-ascii?Q?LHlYppyTp3sD7vIV9+zVCeOiPZwwuN0MGU2DoFfljcYDHYro1EzH3B2XJzNS?=
 =?us-ascii?Q?ZyuD1D7GYEygGkvDApzcbUgbDGxnuGGb0xI3C5bjePagT+WcyzYUUccYZHLK?=
 =?us-ascii?Q?9qnzjnUOn/h6zXOHD6/ouSZcN8W83fPgFhVaDL4QyM4hSmu7uL0uM6rGsuqf?=
 =?us-ascii?Q?TYTcclv+/EV7QZ+yGK45YzdMeSZydzuy0B1+vmBvp/pSnksUk82aylY/VUyl?=
 =?us-ascii?Q?NU0Uv7n94wn5GZaKx+ry7UhXS6ctQkuq9gClaATileA2LkSQrtr3qY8u04UQ?=
 =?us-ascii?Q?XwfCkkQvI1gmsCUSSgqcfxuA+BfGB/fbJ5rRAfpGcL4GhLbRCqWZTEMt13Ml?=
 =?us-ascii?Q?DC0hPj8cy+0YTp9aDJtV82Fzc8Ke8hVFG+lPP0G0kFi+K5GrJgopmrtDYw4i?=
 =?us-ascii?Q?SJZjjqf9pfwcosFPrM9k1PwdM2NOPEda6ccTuIqUF9U3/UkRMs4HQx6WQXPT?=
 =?us-ascii?Q?2ERxSZ4mgbdlVoim9/pZkLuUlA3hEmkD8figNqIpwZRO4Ak6mkQW6AY2+3VA?=
 =?us-ascii?Q?LGNj6NokuIPfmquLsnCNOq1lge+qocRiy0mbpsJ+0bjrLr4ERV+jF3tsWUP+?=
 =?us-ascii?Q?gWSgJgxYlsh1/CLJHghYCU0wXVYY3DXDsw8JP/oVsrWxPCj5JpsmuLyb+dCZ?=
 =?us-ascii?Q?11+N6lJ84ScTbuCqDdZCcNTIRefzZ2nc9n9HgzD8XuGnen7DFPmCQC5GqrjJ?=
 =?us-ascii?Q?/zqCAXMD1lX7NKXkyGnH0C1UmjOUNyeaY7oHigyav27mhPw1/oiDVf2OJa22?=
 =?us-ascii?Q?Wkdg9W1oZGi07OSOqyCNkHRMqvvkP36Dy0dZnddxsQdy2TzS7mhtJT3Y3JPS?=
 =?us-ascii?Q?uA=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2144e7a0-4afe-488d-dabf-08db22326575
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:25.0394
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g5zI352kQvIwC9chI/Dgk5Qtb/Oz53f53pYpuMxzx9lEHYW9V/1saoGXtX2SAcBTH6fIkd6+2tcx5Fy0d+kdTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-ORIG-GUID: ApENJyETj7HQg_T9naz-rQPzxXLH5ZFZ
X-Proofpoint-GUID: ApENJyETj7HQg_T9naz-rQPzxXLH5ZFZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 mlxlogscore=747
 suspectscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 phishscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59384

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
index 54e0890..65bd8c8 100644
--- a/recipes-security/refpolicy/refpolicy_git.inc
+++ b/recipes-security/refpolicy/refpolicy_git.inc
@@ -2,7 +2,7 @@ PV = "2.20221101+git${SRCPV}"
 
 SRC_URI = "git://github.com/SELinuxProject/refpolicy.git;protocol=https;branch=master;name=refpolicy;destsuffix=refpolicy"
 
-SRCREV_refpolicy ?= "03d486e306555da161b653c88e804ce23f3a0ea4"
+SRCREV_refpolicy ?= "f625d5b78832dc699e2b8aed74eb53c826372a0f"
 
 UPSTREAM_CHECK_GITTAGREGEX = "RELEASE_(?P<pver>\d+_\d+)"
 
-- 
2.25.1


