Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3662BC7619A
	for <webhook@archiver.kernel.org>; Sat, 11 Mar 2023 13:13:56 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web10.44274.1678540429770224206
 for <yocto@lists.yoctoproject.org>;
 Sat, 11 Mar 2023 05:13:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=WbTNcd2u;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.178.238, mailfrom: prvs=2434990727=yi.zhao@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 32BD03MT006556;
	Sat, 11 Mar 2023 13:13:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com; h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=Su4PGGwsinXLBtXsg/Y8g0JN3EPmpYRdwxxY9LTE8Ac=;
 b=WbTNcd2unWnBIMc/UwupqyFHWwqJHri5+3TLMr7NIKYbgw3bdx6dENwUAZd+Ahcnxtvg
 M+l7Z28nKq0FefgNzAfAJs/SOxezqbrmyvOiOQ0h+S1j7dC/EISRAMRvSjEQVOxFq5i9
 M7rdL+VkLK1nv2UGyztBAP9QWXFsCe1QR3SasKOKblQ0WOV0TKXDO0qNVqrTnPMBPgTF
 085i7h82pmjgMt1FtOXhIKhS+LtrKN/PV5aL4LXkTm15GyOff8CTEm3GMUl/mjMQ2GJg
 dJhQwBJeZdf+FBVJn6HnSwTiFadg5cWgAESeP8jIdMPaWx/lORH/Pc0VbDbmRQXslKbg Tw== 
Received: from nam11-dm6-obe.outbound.protection.outlook.com (mail-dm6nam11lp2172.outbound.protection.outlook.com [104.47.57.172])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3p8gma0b7j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 11 Mar 2023 13:13:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h90TuT+OdSaYqWHWULVXuZY5nRZ49X09/8CuR7N5VztF6jbqOXvuPZM1mnRSa2J15ORN6UqbyRQeJOTRUvZad/zCsSYml91vkT0VuRlhWaeX58C4IlRngSgHjSk++BZho0MTEEYaLoFiUUeiA+xP+m5gQRgqNaSI5lv+yBIit/Ip5+GM/uJ0fC+LlSzhDipRI6QQw1nzkrpDxtrF3PqTBYJdXaJuI0m4HkVeSpbDML0ZAWKaH9sThL70roUdgqqsWdFyqgSxUr0ynyiAKAxKV6cBW8iKNGjlR53EwYqUcpju8tWsfpx839WKJG5Os1j5B+Xg2oZ8sQLH4zQKd6kL+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Su4PGGwsinXLBtXsg/Y8g0JN3EPmpYRdwxxY9LTE8Ac=;
 b=YGznGPvrMBX3ci7XCqk5MNaGUyj3At9EFb0V8A9K5UZd08Pcjx4ZLjCa0KkxbdsbTi9eT2gw/96n63LU/JfpdoM6mj33sGmifpEdc2Fr/62Jlmrk5wsBxdLHmZmPwbWn2R7LER/Z6t3qPhRe/BXkhNMwDolbQD3ZhSshP0bYfKrDHnYWkGJiPVHoq0PYnxp9c3Fvv1i8pvfJ/cERk8HijMbKw9i+BQBtmQkq9dm5jlrpO4BAE7azSD8qNWyjIGmOkZdO3OmTuz8dogpN19fgES+KmcgbuyxpsnBoRcq7hothNyr8FcivOHeZOjCB4D1lgO4m8wTxzBon6PB25ywugA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CH3PR11MB7203.namprd11.prod.outlook.com (2603:10b6:610:148::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.22; Sat, 11 Mar
 2023 13:13:46 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::42a3:f515:f89b:4eb3%5]) with mapi id 15.20.6178.023; Sat, 11 Mar 2023
 13:13:46 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 13/17] selinux-python: upgrade 3.4 -> 3.5
Date: Sat, 11 Mar 2023 21:13:04 +0800
Message-Id: <20230311131308.1337339-13-yi.zhao@windriver.com>
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
X-MS-Office365-Filtering-Correlation-Id: d358aad4-6241-4f3b-5c5b-08db22327261
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	TNJbKmrBynB9TbAsKdU6P7CG0aXbHyecG+qyaZZlOFeT/ZXYX9y+vSXt++VI70tLtWyCcNaPc1m6Zz1YFMmFwmiIi/0ek42byZEIwwzb2q6JZAZJxrY4foxmud7yHfCr3MAKNgxmNdEqHiuBddfh0boSwSQiRwN1OwBwwY+pwfofxnG1v9A8d8/WkKC5YFrfbe/V19lt/DfG/i8pybwLrGPjPPqGUiZaapiA1zwYsdYR+ejPdz+yMcfkHBgSrS6vNOe4LRpP92P4yK0POhWa7Xl8n2U1oOOatTsTOHWeUHyJ9680DA7kMQ2nRKI9C7D59XFy/Z4te25VK+kkVBBqDoMOWhiH4MVmS7bAflHqINbEWhsjbACHDupRFlaRVwb0FcTWwRknuO1u9iKP+E6prZUoB0j0jJyz8aUCqtp8c1uIyB0rzqINe7Li34JvnLO3GyFh7XNv8olatk4MsJYHtYo/jLK8Dy8inHvMZRcVo072QqFi82i1qxIjiStYdmaj0G6iDQRa5V9TijuiB0NCllob4olNnjU3ynI3q/vrka+mUA1qyu0dESTnNwWq9VFfCXjnlNc3MRCrDkDrtgsAneTts3ttxEBOZ7wFvyJdkFF3/I02D88eUQatOScdHhUXgUMB95hiIwCMqMv5IhJ3RjjUgImfeNY3QZa3MVLETSNhBReSunYOtAFa6gfjH7QH
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(39850400004)(396003)(136003)(366004)(376002)(346002)(451199018)(38350700002)(86362001)(36756003)(38100700002)(44832011)(2906002)(41300700001)(8936002)(5660300002)(6512007)(6506007)(1076003)(186003)(26005)(53546011)(83380400001)(6666004)(316002)(2616005)(66476007)(66556008)(66946007)(6486002)(52116002)(478600001)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?hc1W861mXxhbLHkvWt7xAu+ZlyNZ+tJvhZyGCGTHKgdWNi8mfJy6TwEC+cGE?=
 =?us-ascii?Q?qplxLYU6J03IM5wkUpZ0SlAJ7a5Sekemx8R+iK5uf53V73xYfwvB1qHmtQGK?=
 =?us-ascii?Q?UH0MGmYVBmnRBQPkNlyRoNe7+Aemda2Eo0ffrWKi/4u+P07bofWM3+iT5tBf?=
 =?us-ascii?Q?51b9WCWlQCv51coqA6r/ppyFcBYl959BdTePaAg8GGd3LjuNQ2oupYQDmCr/?=
 =?us-ascii?Q?j/F3rBRKTGGSAILqQW3wWyYDjEg5OsgPLhEU6M4nIZtnSwpZTEB4Y6DdKZJG?=
 =?us-ascii?Q?nzusf3LV9PofYK7GpTu6b2f+Cc/6BGkFZfpkm2Jc3WzAiOoEs5E94zUi0Bwt?=
 =?us-ascii?Q?bOOjkmoF/+Zck1VTUR0F2sJRhH+kxoSBwI1MqvLs4SWvktC4WkmdKaZtQLX0?=
 =?us-ascii?Q?VOpk8WsCD6dpNYnq+UTPmK56DJ0FCK/OqNkOmvK1o/EtNMrK5AqNXDutAsuK?=
 =?us-ascii?Q?IhBId/DrzYZXOS07rSS2MP+uuQE2AdXyYNlxPiM3pIL3+jAPpI85BYQRdySZ?=
 =?us-ascii?Q?sCSW2lOYpam6n3boVQdyv4nlNFUhO5W/hpPkwf/wCfRsEREp9M5/3s9OBEYn?=
 =?us-ascii?Q?+/bAXzLkajc7DYJ/KLVldlnLc6z4aWsERYcE/Zt91u8zysi27nD7ViYYT6ii?=
 =?us-ascii?Q?kU4PuCZPsLoUt4g9oMb0ZwQMBRUxQAwhfkpk8O7g03/NAG+eq1DyFfoCVAJE?=
 =?us-ascii?Q?O3PxCKBOp6rmLX4QYSteIospYT9dKoqLRr9yAN0AO3MsrLHS/agzMh1GA1pZ?=
 =?us-ascii?Q?70uZYHRJzIVQ5WycKoRykMI2EVdBtkhj/UtvbsNcMM8rzxHTNa9PKhL0wqet?=
 =?us-ascii?Q?8vLGExH/IHW1JcPjh/0P6vbTDPU6HTPawyb4CSjFo54OLLTpoGIomgmSz9tU?=
 =?us-ascii?Q?3sjIDlRRjeVLqW8fNYXwimK++Zyk4ygHTbx+G0b3YkICEJVlcU2h878U3XZU?=
 =?us-ascii?Q?D9f+g7eJqtOCDHiYJ1C/97lfkJgzVBbjpuBWi68hHdBEcMsmSqiFQ+ELOBGP?=
 =?us-ascii?Q?1YYlRbP3wSbODx6aB52e0bve8MICjY/q4As8qaZyNBLcoTTDuHZKCfvstCGw?=
 =?us-ascii?Q?UEq5l8XVk7NcgylNZkmnIqSW+f/ZqRUCKS3ZFFHj08n0uZ271wDnxfjxL/Hv?=
 =?us-ascii?Q?J4Bd6avA7SZZkIiz63ViMs8zj5cWG4DDE6VT9lHV+DIt0RwEkA2IuyMByDF3?=
 =?us-ascii?Q?d+5RUnLfLDPfp4ugRCxJDYPMmRX76800iULZUJZVw4g3WWAenlioliuHNiPk?=
 =?us-ascii?Q?FHnzJXdSKpaGYNoPYCM7DSzBWDd5brvxfNiLt38P/vJXhAsxUPvzq74LwVdJ?=
 =?us-ascii?Q?nLX37qNKg1TmNaBqsxWyal7XpBe6orxR8gc4FMZmow+TwGefx3RbiLFrJ2t0?=
 =?us-ascii?Q?vuENjWWq5Q3PbhS1ov/HTZ+HJAQk0pyq1Ht/iWxQ8B6YlS5/b8kGN1poNc5D?=
 =?us-ascii?Q?Y9EtZrQfN1ng5zuLMskfw2s+M0ewwKeJU6Zx0cp9PlWemAclZGFWGLwwrtnK?=
 =?us-ascii?Q?SJ85FT0MwFYDoyem344sEWx2hbGSbXOu12FOe9LVN/74Mq8Nk2f6iOHvjQNB?=
 =?us-ascii?Q?3vLBNFTmO4VMliGBTU6sbW5rDCMY6jXDZTT8zRJBQIsZi8mukDYLr0hsdibS?=
 =?us-ascii?Q?Ng=3D=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d358aad4-6241-4f3b-5c5b-08db22327261
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Mar 2023 13:13:46.8575
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PDKIuhb2b/C/0OeU6mj4JmIuYTkDPbDFlalNlk8fNZcRgDrXK0m2JFbr3zbSApCmigzVxFrTNEWaT3umPU6ycg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7203
X-Proofpoint-GUID: PSMPAugj7Mp3_nib-wYmeW_FhkWAL62M
X-Proofpoint-ORIG-GUID: PSMPAugj7Mp3_nib-wYmeW_FhkWAL62M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.254,Aquarius:18.0.942,Hydra:6.0.573,FMLib:17.11.170.22
 definitions=2023-03-11_04,2023-03-10_01,2023-02-09_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 bulkscore=0 mlxscore=0 priorityscore=1501 impostorscore=0 mlxlogscore=999
 lowpriorityscore=0 adultscore=0 spamscore=0 clxscore=1015 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2212070000
 definitions=main-2303110118
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 11 Mar 2023 13:13:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59396

License-Update: Rename COPYING to LICENSE. No content changes.

* Refresh patch.
* Drop backport patch.
* Add dependency python3-setuptools-scm-native to fix build error.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...andle-unsupported-languages-properly.patch | 173 ------------------
 .../fix-sepolicy-install-path.patch           |   8 +-
 ...ux-python_3.4.bb => selinux-python_3.5.bb} |  24 ++-
 3 files changed, 19 insertions(+), 186 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch
 rename recipes-security/selinux/{selinux-python_3.4.bb => selinux-python_3.5.bb} (79%)

diff --git a/recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch b/recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch
deleted file mode 100644
index b83300d..0000000
--- a/recipes-security/selinux/selinux-python/0001-gettext-handle-unsupported-languages-properly.patch
+++ /dev/null
@@ -1,173 +0,0 @@
-From 4693794ff8c52f87a4abdb68fe9dae6618023c03 Mon Sep 17 00:00:00 2001
-From: Vit Mojzis <vmojzis@redhat.com>
-Date: Fri, 24 Jun 2022 16:24:25 +0200
-Subject: [PATCH] gettext: handle unsupported languages properly
-
-With "fallback=True" gettext.translation behaves the same as
-gettext.install and uses NullTranslations in case the
-translation file for given language was not found (as opposed to
-throwing an exception).
-
-Fixes:
-  # LANG is set to any "unsupported" language, e.g. en_US.UTF-8
-  $ chcat --help
-  Traceback (most recent call last):
-  File "/usr/bin/chcat", line 39, in <module>
-    t = gettext.translation(PROGNAME,
-  File "/usr/lib64/python3.9/gettext.py", line 592, in translation
-    raise FileNotFoundError(ENOENT,
-  FileNotFoundError: [Errno 2] No translation file found for domain: 'selinux-python'
-
-Signed-off-by: Vit Mojzis <vmojzis@redhat.com>
-Reviewed-by: Daniel Burgener <dburgener@linux.microsoft.com>
-Acked-by: Petr Lautrbach <plautrba@redhat.com>
-
-Upstream-Status: Backport
-[https://github.com/SELinuxProject/selinux/commit/344463076b2a91e1d2c7f5cc3835dc1a53a05e88]
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- chcat/chcat                           | 5 +++--
- semanage/semanage                     | 3 ++-
- semanage/seobject.py                  | 3 ++-
- sepolgen/src/sepolgen/sepolgeni18n.py | 4 +++-
- sepolicy/sepolicy.py                  | 3 ++-
- sepolicy/sepolicy/__init__.py         | 3 ++-
- sepolicy/sepolicy/generate.py         | 3 ++-
- sepolicy/sepolicy/gui.py              | 3 ++-
- sepolicy/sepolicy/interface.py        | 3 ++-
- 9 files changed, 20 insertions(+), 10 deletions(-)
-
-diff --git a/chcat/chcat b/chcat/chcat
-index e779fcc..952cb81 100755
---- a/chcat/chcat
-+++ b/chcat/chcat
-@@ -38,9 +38,10 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
--except ImportError:
-+except:
-     try:
-         import builtins
-         builtins.__dict__['_'] = str
-diff --git a/semanage/semanage b/semanage/semanage
-index 8f4e44a..f45061a 100644
---- a/semanage/semanage
-+++ b/semanage/semanage
-@@ -38,7 +38,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/semanage/seobject.py b/semanage/seobject.py
-index ff8f4e9..0782c08 100644
---- a/semanage/seobject.py
-+++ b/semanage/seobject.py
-@@ -42,7 +42,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/sepolgen/src/sepolgen/sepolgeni18n.py b/sepolgen/src/sepolgen/sepolgeni18n.py
-index 56ebd80..1ff307d 100644
---- a/sepolgen/src/sepolgen/sepolgeni18n.py
-+++ b/sepolgen/src/sepolgen/sepolgeni18n.py
-@@ -19,7 +19,9 @@
- 
- try: 
-     import gettext
--    t = gettext.translation( 'selinux-python' )
-+    t = gettext.translation("selinux-python",
-+                        localedir="/usr/share/locale",
-+                        fallback=True)
-     _ = t.gettext
- except:
-     def _(str):
-diff --git a/sepolicy/sepolicy.py b/sepolicy/sepolicy.py
-index 7ebe0ef..c7a70e0 100755
---- a/sepolicy/sepolicy.py
-+++ b/sepolicy/sepolicy.py
-@@ -36,7 +36,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/sepolicy/sepolicy/__init__.py b/sepolicy/sepolicy/__init__.py
-index 7208234..9c3caa0 100644
---- a/sepolicy/sepolicy/__init__.py
-+++ b/sepolicy/sepolicy/__init__.py
-@@ -31,7 +31,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/sepolicy/sepolicy/generate.py b/sepolicy/sepolicy/generate.py
-index 67189fc..3717d5d 100644
---- a/sepolicy/sepolicy/generate.py
-+++ b/sepolicy/sepolicy/generate.py
-@@ -56,7 +56,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/sepolicy/sepolicy/gui.py b/sepolicy/sepolicy/gui.py
-index b026374..5bdbfeb 100644
---- a/sepolicy/sepolicy/gui.py
-+++ b/sepolicy/sepolicy/gui.py
-@@ -49,7 +49,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
-diff --git a/sepolicy/sepolicy/interface.py b/sepolicy/sepolicy/interface.py
-index 599f97f..43f8644 100644
---- a/sepolicy/sepolicy/interface.py
-+++ b/sepolicy/sepolicy/interface.py
-@@ -38,7 +38,8 @@ try:
-         kwargs['unicode'] = True
-     t = gettext.translation(PROGNAME,
-                     localedir="/usr/share/locale",
--                    **kwargs)
-+                    **kwargs,
-+                    fallback=True)
-     _ = t.gettext
- except:
-     try:
--- 
-2.25.1
-
diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
index bd14450..5eb2e54 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
@@ -1,4 +1,4 @@
-From d43220e336edf8ccaaa7bd3eb9c13874ed34d468 Mon Sep 17 00:00:00 2001
+From 2a0c2489e9d245502e7a9dc5878da01f9d64db2a Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 23 Sep 2013 21:17:59 +0800
 Subject: [PATCH] sepolicy: fix install path for new pymodule sepolicy
@@ -13,15 +13,15 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/sepolicy/Makefile b/sepolicy/Makefile
-index 3361be4..5842321 100644
+index 4e9e93d..512aab5 100644
 --- a/sepolicy/Makefile
 +++ b/sepolicy/Makefile
 @@ -27,7 +27,7 @@ test:
  	@$(PYTHON) test_sepolicy.py -v
  
  install:
--	$(PYTHON) setup.py install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR)` $(PYTHON_SETUP_ARGS)
-+	$(PYTHON) setup.py install --prefix=$(PREFIX) --root=$(DESTDIR) --install-lib=$(PYTHONLIBDIR) --no-compile $(PYTHON_SETUP_ARGS)
+-	$(PYTHON) -m pip install --prefix=$(PREFIX) `test -n "$(DESTDIR)" && echo --root $(DESTDIR) --ignore-installed --no-deps` $(PYTHON_SETUP_ARGS) .
++	$(PYTHON) -m pip install --prefix=$(PREFIX) --root $(DESTDIR) --ignore-installed --no-deps $(PYTHON_SETUP_ARGS) .
  	[ -d $(DESTDIR)$(BINDIR) ] || mkdir -p $(DESTDIR)$(BINDIR)
  	install -m 755 sepolicy.py $(DESTDIR)$(BINDIR)/sepolicy
  	(cd $(DESTDIR)$(BINDIR); ln -sf sepolicy sepolgen)
diff --git a/recipes-security/selinux/selinux-python_3.4.bb b/recipes-security/selinux/selinux-python_3.5.bb
similarity index 79%
rename from recipes-security/selinux/selinux-python_3.4.bb
rename to recipes-security/selinux/selinux-python_3.5.bb
index cc279f2..9ff63db 100644
--- a/recipes-security/selinux/selinux-python_3.4.bb
+++ b/recipes-security/selinux/selinux-python_3.5.bb
@@ -4,19 +4,18 @@ This package contains Python modules sepolgen, sepolicy; And the \
 SELinux utilities audit2allow, chcat, semanage ..."
 SECTION = "base"
 LICENSE = "GPL-2.0-or-later"
-LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
+LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
-inherit python3native
+inherit python3targetconfig
 
 SRC_URI += "file://fix-sepolicy-install-path.patch \
-            file://0001-gettext-handle-unsupported-languages-properly.patch \
            "
 
 S = "${WORKDIR}/git/python"
 
-DEPENDS = "libsepol libselinux gettext-native"
+DEPENDS = "libsepol libselinux gettext-native python3-setuptools-scm-native"
 
 RDEPENDS:${PN} = "\
         python3-core \
@@ -96,19 +95,26 @@ FILES:${PN}-sepolgen-ifgen = "\
         ${bindir}/sepolgen-ifgen-attr-helper \
 "
 FILES:${PN}-sepolgen = "\
-        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolgen* \
+        ${PYTHON_SITEPACKAGES_DIR}/sepolgen* \
         ${localstatedir}/lib/sepolgen/perm_map \
 "
 
 FILES:${PN} += "\
-        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/seobject.py* \
-        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy*.egg-info \
-        ${libdir}/python${PYTHON_BASEVERSION}/site-packages/sepolicy/* \
+        ${PYTHON_SITEPACKAGES_DIR}/seobject.py* \
+        ${PYTHON_SITEPACKAGES_DIR}/sepolicy*.dist-info \
+        ${PYTHON_SITEPACKAGES_DIR}/sepolicy/* \
 "
 
 do_install() {
     oe_runmake DESTDIR="${D}" \
         PYLIBVER='python${PYTHON_BASEVERSION}' \
-        PYTHONLIBDIR='${libdir}/python${PYTHON_BASEVERSION}/site-packages' \
+        PYTHONLIBDIR='${PYTHON_SITEPACKAGES_DIR}' \
         install
+
+    # Remove .pyc files
+    find ${D} -name *.pyc -delete
+
+    # Fix buildpaths issue
+    sed -i -e 's,${WORKDIR},,g' \
+        ${D}${PYTHON_SITEPACKAGES_DIR}/sepolicy-${PV}.dist-info/direct_url.json
 }
-- 
2.25.1


