Return-Path: <joe.slater@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5B15C433EF
	for <webhook@archiver.kernel.org>; Tue, 29 Mar 2022 16:18:46 +0000 (UTC)
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com
 [205.220.178.238])
 by mx.groups.io with SMTP id smtpd.web08.8767.1648570725051775760
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Mar 2022 09:18:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=mfA/bP0F;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.178.238,
 mailfrom: prvs=1087e86483=joe.slater@windriver.com)
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.16.1.2/8.16.1.2) with ESMTP id
 22TCaV0K003550
	for <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 16:18:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to : cc :
 subject : date : message-id : content-transfer-encoding : content-type :
 mime-version; s=PPS06212021;
 bh=Kf/fKwVTnwQp9ACG62RzwMJilUVeZlEsspQWJ6Wk1PY=;
 b=mfA/bP0FZ366NCiOX4HYy7sJJRapBG+NqIS6yAGkx2u+TiHS8kSbj1N/ZcRIvWuNmnXy
 nh74ZFoaYKk9fr/ZfmkS7a+7HtJF+Kt2MBMev9/DLFZlTZnGrwmCyp6ZKBtut+l5NNVM
 WGbeO/MCxqU+8MqUhZQUupDGow/b0P929iMGyqCNRMtVjr4jrW2BVMSefpb50WRuEzrK
 wBIYqUW63FIrDKs5KgbVXpRgi4M7OpluTbosoa//9MtwwqqNOuE1BDB0W0aFOtVUqGnI
 ZJxA6XWJPU8qUYlA7FE2ZKRWAkD5gCIMIKV1OlKs0O2nRT673J5nQ4Rw1NAQE6Nl4OVQ 8Q==
Received: from nam04-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam08lp2176.outbound.protection.outlook.com [104.47.73.176])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3f1st82ng6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 16:18:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kyCb/dYL/KohWBQRPoRbalGN3lIsBgj0i0sbpPecVky6f6vKl144pS/tIAI1q2W0jIKczrp1PE9Fizwxx9wuT0Jv+vQ1O9UKB7+jV0LWL5XU1DI7jtdg5gz13vjJSxkH0Wqdconca87HTqoJ5WSFTDv0LqajL2iM+VcjaqcXBgSvYn6t1gs43N+OM5j6K+rAxQcOu5tOtwRsLQqouOrA78Ak+58Cs2IafmqRfqRalrQAYZ0Ypdvp1UQEzIix6756PopWHzCbm8HaINiISGXGToSbRXq5N7Jy5ajQZVgXaMn5YkiivGdWhqs+514LL619mwr2jCyD+58eqKMKOa31Vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kf/fKwVTnwQp9ACG62RzwMJilUVeZlEsspQWJ6Wk1PY=;
 b=UAjS5/nt77FZwQjVgfMgdXx7+k36kfaNRecdIFapYdjkeLVGYa6OHwTc1DyEsFRaBC2csQq2wWiM+V+vbmroQapxu1SUoemOxEJn8lRvJO+iCOJug3EvU/naggdJhbgprkK/6fOduvhyF47aduKVif+bvPX/en6IPGqZQ+z7xIbikvI7BxJJc1hzhac7HMsQOySSK2G7/NVv12EiQwjuLI5YBJk3La9ilUe+upISg01dGyLhU53bYL6puJUdUYfW5xKk1HmSdLanG9F4dQkn5TpMTdGry0cUE2+d9dVz+G7kTFa2c0Ofk37hrgUibCc8hTvKX4JzIDq0gkL2srq2dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from BY5PR11MB3992.namprd11.prod.outlook.com (2603:10b6:a03:188::10)
 by CY4PR11MB1447.namprd11.prod.outlook.com (2603:10b6:910:10::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.23; Tue, 29 Mar
 2022 16:18:41 +0000
Received: from BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::389d:5330:bc19:13c4]) by BY5PR11MB3992.namprd11.prod.outlook.com
 ([fe80::389d:5330:bc19:13c4%7]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 16:18:41 +0000
From: Joe Slater <joe.slater@windriver.com>
To: yocto@lists.yoctoproject.org
Cc: joe.slater@windriver.com, randy.macleod@windriver.com
Subject: [meta-security][PATCH 1/1] LICENSE: adopt standard SPDX names
Date: Tue, 29 Mar 2022 09:18:26 -0700
Message-Id: <20220329161826.7642-1-joe.slater@windriver.com>
X-Mailer: git-send-email 2.35.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR08CA0032.namprd08.prod.outlook.com
 (2603:10b6:a03:100::45) To BY5PR11MB3992.namprd11.prod.outlook.com
 (2603:10b6:a03:188::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b004489-860f-484f-316e-08da119fc9ea
X-MS-TrafficTypeDiagnostic: CY4PR11MB1447:EE_
X-Microsoft-Antispam-PRVS: 
	<CY4PR11MB144797AF23D19BC39C9DFE42881E9@CY4PR11MB1447.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VsoyKLJoCI5tGrNRmTDjnTeNOYT660E+mq6IkKlNVQSOZ0MAPrzqS5XlNLTk1QjqPm4A5NpL9ioxqmG2bxNtmwwyC6RxF02sNVzVc4aaEn7pyW1FewieOcIGVbC6BaO6gjKzZDSYsbl61XgsLnhvvW7byRJz5Vb9ITbhstMS4pWQS1xZFpiWBwBzdvWy7utSHo1Q2eK4LR2B0edEqWe/XpUyoXILjJ4tKJCaSIDnoWSAmWCg2LlIiRLq9C2ut/7AvLnP7bVW7Tj5UCjZdTZfvhKh0ZXwgawXyPLWY03dsKJYeXPGYM+xEi2IDeuhqlPf6MxzyZ1Yg9K3WYbMGv/BnKOfWNl6vr7haIgvDiD/XTwlP2wFsM+/Zq8me0lp7tROiMkgDVgpP10U3iPL0AQWiypUriOKVtxY2BCWiRuISQHdcP4gpQZ/UqPVUra55LpkwWOte41RP/yNOlHK/csJYSR2tm3amu3wr9tslfOCwQa6nRdtClgRwQJxWp/HCJnsZaY30Pmmsozy0i5NqxClKH0SHsPMjoPcn76xO7RCnTc35Kfm+mGuJchUEvvJzf+BLt7KI4CsVAMhvd7kKq1ocdyd8Qv0v3uu/k2JNh3FwohPpeBHXvjV1prZQOa36+emiA8NztujJEHtB9+XWebJTCn2RRqIL4pJ5eWqRTyx9FFhmwgqceJJ0+AgU5c4w67AzmughU/zOBqm6lB6zm/8tj+qOaiqjzS7Cqi4kbIAxY9Nft89UTOfDWW5auEZPJeRq8mrJaAGLeU49q9eXgXICmmbzHIevk9riJtSBn3YJns=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BY5PR11MB3992.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(26005)(83380400001)(52116002)(66476007)(2616005)(8676002)(66946007)(5660300002)(66556008)(4326008)(107886003)(186003)(1076003)(15650500001)(6486002)(8936002)(36756003)(86362001)(38350700002)(38100700002)(508600001)(6512007)(44832011)(316002)(6916009)(2906002)(6506007)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?hUR3G/2skVk4pF2G4oZv5kKzSwLxo/zmP6fD335WdmlPu1A69W9JDzNg5gqE?=
 =?us-ascii?Q?GsT5H68vO7YJO/x6CLYCiCiZN48+y+5rTr0zZCk4AIySN0nmy4m6nyN4gPKR?=
 =?us-ascii?Q?gDJT6I8P7rnjhsMeJpRfQ5iPBYjHn6ei0wGl3Tnnm0VqemfWjE4Ra6GQozY6?=
 =?us-ascii?Q?ihC4rF/9u0712uN94NsfNawkA2F65s9obpxpc552VzLXf42mp7yYTo0K8VUj?=
 =?us-ascii?Q?NjgnFtPByVUUK4pRtoXgcZeJhUFsFRqeQp9YoiQna7q7U/cTiKo5yxCIUQK4?=
 =?us-ascii?Q?k8EUIUzSsHBhWLWfuVAT0aRSFeh7jte7Imks/F1i+F8PstfOuQPBU8JFI740?=
 =?us-ascii?Q?1g6A8uC2GkclGpkX53uFclocIWH4VblP1yEEBWku7/JbN/um6NKilZJG2QgN?=
 =?us-ascii?Q?qkgWkzec5rAt+60hCcY5Y8tLSMbM0hekDR0Rix5GvLdWGFr5Ksx0qqE+acvV?=
 =?us-ascii?Q?hwuoNzNMcLY4Zr0S4v8m41Bnk0HMABw0kB5zuaAFaHNAvKb7I8jMsJ7qzrye?=
 =?us-ascii?Q?KCLQLNTXvY1hKOLAk4mCdiEewnY1aXORvVDww1aK0Gq/8sJY9E+qdHL/ksQz?=
 =?us-ascii?Q?ed/J0AtRDZ7eGf4NsH74ggWsr6ag2Jp68e9iJNPYO+DTGbAvnZj3UdF7fbCa?=
 =?us-ascii?Q?FovnVDz7MGXlR0sI4pP3lK7LLQQnJ0Yxd3O7hs3eFn4yPnGLNflidTUlm376?=
 =?us-ascii?Q?9Sz7oSrsMqA9Ddh1hg9LtS47Xs7LI12kAl8RABUKvmTobcqmYryqzLMnbx51?=
 =?us-ascii?Q?od5rh2rOHTAy6Po680LUFIgdj3K4hsQ88tMNr/oVp63YnsJ4EKCYzvuR5dl9?=
 =?us-ascii?Q?pQ5GNRP6g68/61IVCrOILWKaQyIkOYplVs+mtk9SOXcsrC2D9GbChN704+ZD?=
 =?us-ascii?Q?tc8IGSAMmV9FFSRg61btmAV82/yK3IcnCKn7kHJD5iEoTSCabSNXOd4+ZAUs?=
 =?us-ascii?Q?OIU1b3uWv1lnV9pagDD8Ok7XK1YukrbzG5/N44bivxUAfHQLtwg83Hh638HK?=
 =?us-ascii?Q?zzF73CjnYzB9NnAGihiw0ciMClBwgvA6m74DHXlD89cGVkXTSWS8tRl9WxwQ?=
 =?us-ascii?Q?YTMwVbNBsXqVDC2gZ9sy8LzCey9jB4tlJffhymoyKcNkjhiGkqGJ+tGEIm/B?=
 =?us-ascii?Q?+8U3vhDFS8Qq7sD0+PxzBaiGQPShGwElbbNu+wwxrVYS1pnz4OjkaZs7Jcog?=
 =?us-ascii?Q?V8jqoEfekWwKybLwIJuWRrRnZo4x3R5Z0Z1PkDb3hxDhxem7Zngy6WSNc2XX?=
 =?us-ascii?Q?jGIDUHRbanR5itvcWkYsAIuBhJvktFHsKEA8jV4L/Ubt0je6JKQdjDhpdZuI?=
 =?us-ascii?Q?l9KDzryOBY0kBH9eykJwolqj4fPBIXKLRYsQFJjn3tAma3tb+YOhw5wsnNw7?=
 =?us-ascii?Q?7Hq2fzafzgfvF7AYVQ8UcJzPZwiByDCZTnyWTigdo5yTevtU7e/nl0/iSlv1?=
 =?us-ascii?Q?mCDH35VzJNvOuUulD9ezk+hbjVxmDXdwQexO3Phfa/XYzhDflmo1CStAfw45?=
 =?us-ascii?Q?KAKfUAtw+ZyVWeFxrmadd0OP43P8eL4TuhnhRTnM+hmTGehtpU4HML98OJlE?=
 =?us-ascii?Q?5XMOqt/FhCb8QGjXXfLQ19pyPjDvl1rjjV064cEm4+yS7rIUEgKr8zqW/6cJ?=
 =?us-ascii?Q?jrestidyrlS2XsVLv2qiPPI37KmDcVG0yCvlUsUm4ra6PFAD3HZ5kY23f855?=
 =?us-ascii?Q?mRbspeSgEnik2jUiOXU9UOJVUI8vYHVdu4BE5UnUcbCi/mJYiTNS8D5Ye4RQ?=
 =?us-ascii?Q?ZVvYlcSKq8G3ffnbx+Yhn5IVFzIwjuU=3D?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 6b004489-860f-484f-316e-08da119fc9ea
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3992.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 16:18:41.3262
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 +l6Y/Tfin6y+Typi9EIZXNAJUXLjK7PB3fXPkYBT6KPrceZlAdZqgc4CtJZVz9pb2q1TfO3l6hc8AdXXmDBWMOuhKsaBS2vg0yfrLkxlAJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1447
X-Proofpoint-GUID: _tb13xNDjSZVZif4fqqF2pYSCWuJk38d
X-Proofpoint-ORIG-GUID: _tb13xNDjSZVZif4fqqF2pYSCWuJk38d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.850,Hydra:6.0.425,FMLib:17.11.64.514
 definitions=2022-03-29_06,2022-03-29_01,2022-02-23_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501
 impostorscore=0 adultscore=0 mlxlogscore=538 suspectscore=0 spamscore=0
 clxscore=1011 mlxscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2202240000 definitions=main-2203290094
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Mar 2022 16:18:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56580

Correct LICENSE for samhain, ecrypt-utils, ding-libs,
libmhash, and sssd.

Signed-off-by: Joe Slater <joe.slater@windriver.com>
---
 recipes-ids/samhain/samhain.inc                       | 2 +-
 recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb | 2 +-
 recipes-security/libdhash/ding-libs_0.6.1.bb          | 2 +-
 recipes-security/libmhash/libmhash_0.9.9.9.bb         | 2 +-
 recipes-security/sssd/sssd_2.5.2.bb                   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 077e118..fe0718d 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Provides file integrity checking and log file monitoring/analysis"
 HOMEPAGE    = "http://www.la-samhna.de/samhain/"
-LICENSE     = "GPLv2"
+LICENSE     = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
 PV = "4.4.6"
diff --git a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
index 9aefc32..5f8cf3c 100644
--- a/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
+++ b/recipes-security/ecryptfs-utils/ecryptfs-utils_111.bb
@@ -6,7 +6,7 @@ DESCRIPTION = "eCryptfs is a stacked cryptographic filesystem \
 HOMEPAGE = "https://launchpad.net/ecryptfs"
 SECTION = "base"
 
-LICENSE = "GPL-2.0"
+LICENSE = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=8ca43cbc842c2336e835926c2166c28b"
 
 DEPENDS = "keyutils libgcrypt intltool-native glib-2.0-native"
diff --git a/recipes-security/libdhash/ding-libs_0.6.1.bb b/recipes-security/libdhash/ding-libs_0.6.1.bb
index 6046fa0..843850f 100644
--- a/recipes-security/libdhash/ding-libs_0.6.1.bb
+++ b/recipes-security/libdhash/ding-libs_0.6.1.bb
@@ -2,7 +2,7 @@ SUMMARY = "Dynamic hash table implementation"
 DESCRIPTION = "Dynamic hash table implementation"
 HOMEPAGE = "https://fedorahosted.org/released/ding-libs"
 SECTION = "base"
-LICENSE = "GPLv3+"
+LICENSE = "GPL-3.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 SRC_URI = "https://fedorahosted.org/released/${BPN}/${BP}.tar.gz"
diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
index 9b34cb1..35c5ff8 100644
--- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -7,7 +7,7 @@ DESCRIPTION = "\
   "
 HOMEPAGE = "http://mhash.sourceforge.net/"
 
-LICENSE = "LGPLv2.0"
+LICENSE = "LGPL-2.0-only"
 LIC_FILES_CHKSUM = "file://COPYING;md5=3bf50002aefd002f49e7bb854063f7e7"
 
 S = "${WORKDIR}/mhash-${PV}"
diff --git a/recipes-security/sssd/sssd_2.5.2.bb b/recipes-security/sssd/sssd_2.5.2.bb
index 8bc8787..9f1d627 100644
--- a/recipes-security/sssd/sssd_2.5.2.bb
+++ b/recipes-security/sssd/sssd_2.5.2.bb
@@ -2,7 +2,7 @@ SUMMARY = "system security services daemon"
 DESCRIPTION = "SSSD is a system security services daemon"
 HOMEPAGE = "https://pagure.io/SSSD/sssd/"
 SECTION = "base"
-LICENSE = "GPLv3+"
+LICENSE = "GPL-3.0-or-later"
 LIC_FILES_CHKSUM = "file://COPYING;md5=d32239bcb673463ab874e80d47fae504"
 
 DEPENDS = "acl attr openldap cyrus-sasl libtdb ding-libs libpam c-ares krb5 autoconf-archive"
-- 
2.35.1


