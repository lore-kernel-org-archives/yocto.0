Return-Path: <yi.zhao@windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97757C64991
	for <webhook@archiver.kernel.org>; Sun, 28 Aug 2022 02:30:16 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com
 [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web08.55788.1661653810925851515
 for <yocto@lists.yoctoproject.org>;
 Sat, 27 Aug 2022 19:30:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=pps06212021 header.b=eELCAJDM;
 spf=permerror,
 err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}:
 invalid domain name (domain: windriver.com, ip: 205.220.166.238,
 mailfrom: prvs=52395d86b7=yi.zhao@windriver.com)
Received: from pps.filterd (m0250810.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.5/8.17.1.5) with ESMTP id
 27S2U2kb010583;
	Sat, 27 Aug 2022 19:30:10 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
 h=from : to :
 subject : date : message-id : in-reply-to : references :
 content-transfer-encoding : content-type : mime-version; s=PPS06212021;
 bh=eQ15YaljerUJnWvMruSjk6nsXTeRqKT6D5c2J3U+NuY=;
 b=eELCAJDMuk3rbDYbjbmSQJava5dJ41ZEwVNgrEzX73aiDWvWCLQOtsM6k+W3rOrUd+v1
 KOOTdEqW878mcobfTwAPQdp0jodkP9ok2mVQbhv4d1dzzhT3pkoNY/Cq14XKEnLs5iUd
 mmZHO43oLY5OwiETQl0ygKSHfN8mn7cJK6YzA0OJuxff6H5GbU8jD6Z3Uxpk2Q+uKsUX
 6JvRxBV3xV0gCOlPn13XMm3YobV904tkvsaq4zTdjmXPz1Z3nBOrdBfJjFwOl4rC9K18
 FQfI7WTLWFi+AxIVC/7C4sdKQlHVTLXVBZLzCwGrvn5WXgrOPZnzfR8c6e1qANAVo6x2 uA==
Received: from nam12-mw2-obe.outbound.protection.outlook.com
 (mail-mw2nam12lp2047.outbound.protection.outlook.com [104.47.66.47])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3j7ej60hj3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 27 Aug 2022 19:30:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nyfvXD14ZOpFtAvM0xqzU4P8MZy/7URmIdeedmoRWPZ0TRCGcYyhLMwnzro8SGiSDkWgH0xwhH4sQjhTwsHEKf7rCnDF8u22qvH8bDyceJloi6AWwXISEQOLwWDFevKfzbBz470/d/cxNV1hFbOhgWTpRmTPxGIFrU3wQc4/obozrh0QUpdR/8J1G++bQQ7r7fPmENEE9WEh19kiLeEVL8hQs9WRM/FmWVssEpVYZNcl8bxJI31J0mSl9v+2prsAKwC/9y90PMpiZe9S2uLSCp/168r0AZdGAyoaOE0yy0tyvY4Yn8woZeVevqU9PuOAHpTsuuaOby8Zyu4wzrkP4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eQ15YaljerUJnWvMruSjk6nsXTeRqKT6D5c2J3U+NuY=;
 b=JtKyWVZinGPIoKy53AboIwUmumh6OhKui6EOdBjvdCacZyH6j8oQqZyOPOVxCLy6/TMXC8ZJZ690Z6R30Xg0KcvhpaGJ9N9JXreSS6t2RM6YlfOJv6OMamoq0SNoHBJb66hBni6znF7HymzgDYGCkEVy1qoBYLCWzF6ZqnL+BokxwJufg7gbCUB6bRSwxG9obW5J9UrScTyPJIdaBZwSVimOk0JQy/AOOhriTdf+ATSvjiWBOQ2MSk3uZWu8B0lILQwXrjiXPNGQnrC4eJ1WrAI/bhJJwRvRDeA1m9v0Na/Q8XbaOFGj6SWnJHWRscMZBLzUlNa4TTK9/Y9C9F29eA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by DM5PR1101MB2172.namprd11.prod.outlook.com (2603:10b6:4:50::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.19; Sun, 28 Aug
 2022 02:30:08 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::a921:a88e:14b7:56ec%6]) with mapi id 15.20.5566.021; Sun, 28 Aug 2022
 02:30:08 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe_macdonald@mentor.com, joe@deserted.net
Subject: [meta-selinux][PATCH 13/16] selinux-gui: upgrade 3.3 -> 3.4
Date: Sun, 28 Aug 2022 10:29:31 +0800
Message-Id: <20220828022934.47592-13-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220828022934.47592-1-yi.zhao@windriver.com>
References: <20220828022934.47592-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0058.apcprd02.prod.outlook.com
 (2603:1096:4:54::22) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 087a6270-5c08-4fb7-8913-08da889d3991
X-MS-TrafficTypeDiagnostic: DM5PR1101MB2172:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LCNM95KO2vE5GGOvWoFGX/DxobuSQ+YgIBlsOeJd0gJr+BHMTpTDfmTdq0yTGuvksK/Hdke5lWpxrUKdjpqHVNaAqRAnL38fTC3RQdq3MgCC98GXa/55W80jZptEB9T+tNVLtpc/qOC/W0PxITntz9+7Lz8wnfRhPMoTQiPcloZIyEOcU9d4r5Oht0OSRV31NFIyfN2OALRPTzfEAmFKfDf8hvKXa1ANjMOpXP02tlMINHaKm2u6sVd515cTRh4Xr9uyldmB9+MaKXsUPr5jxyxU3vv5/lKTOwa/T7zPBF+dd/Ld2S7QlQbGboQHZUUptmg/JuAuSGwARcwkSa0H/x7akKpIOLuy2BDUvE+qLmAtzoyUOdhqJCrF6YtrMiw/quxAHZs/N2THhot4a16tl+PJSk9YfqwFTRFYmfy0y1bHqfyfuK/n28Oc7+ujfN7pxUAgLz6rvQyslN9HzYpl51gqwOPrAiuT7AkuW8WUViQGxAbPIUqZEKdPuYEcEDzdCECL991mXPSlfBW4ryh4rqz+SsxjQPzhCXxCbm/E2P80CUyYYu7eNxdLD13p4DDSpDL6Yjy5Mk+i8jIdDaRQD+G9rrp+QqoJ2hMfI97eh8ChEKgFmVRYbikkCtH/Y0vM9Fc1QfrwbWHmX1NCnUm1fNWu5XykwNxa+XOb4+ox8L2VlwF/cdyhZWU7Hqu9DXepm2fdmmyEX+DxUNGQR0GygkIIT0CKu4sV9EoC6EP7uWj9lFsB65chwfV1SrYgNQnBtVDPBslCRu/0G8b1vXmG0zWDZdckrJCBdg9zWRuChQM=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(396003)(376002)(346002)(39840400004)(366004)(136003)(83380400001)(2616005)(1076003)(186003)(38100700002)(38350700002)(66476007)(66556008)(8676002)(66946007)(316002)(26005)(6506007)(6512007)(6666004)(52116002)(41300700001)(6486002)(44832011)(8936002)(478600001)(2906002)(5660300002)(86362001)(36756003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?UHRcc9a+hRwKHAzVnvbIjj585sfEhoYDdVzp30sWiFnLIQbAWYurIWd8RXwp?=
 =?us-ascii?Q?pZdxsIxFYUYNYc1eGaLyiSkwxLZQCJC0aKHLUEPMFSWODgkT2pTZhKa/0Ssv?=
 =?us-ascii?Q?dBINx0WWOYDvlX+Wjiri/6jfZ7xb3Lg4Bk1PX7SSM4gidcKgKsZxIoN1KNC3?=
 =?us-ascii?Q?bR+4xdq0ChWkhpBEdkq9D4uj1Z+Lhs5JuZG6cDKOzio+F1kBbcmWNJ3v4pa1?=
 =?us-ascii?Q?KTnrtP8/kJzLRNuEWhx3ClbQIOCckqKlv4SV3MRGEKIj+0Xsa6aKg985jrKl?=
 =?us-ascii?Q?N++1XUs/c2+IBsye5oIk0vjfCUzXKvyz9TJV1SZA8Zc0vhQguNqCuYx7Rwj2?=
 =?us-ascii?Q?rm3Ew+xPFMtSlHEr5lqezPs4FbogUlihav4WaVAMiEyBMdUFtlp31uKez0Xi?=
 =?us-ascii?Q?tyrd8KeNM52jCtiCbpxE6Xc4jSiQaUeq00sQRpZXgOfMqSjuB2hQzMpo/fyn?=
 =?us-ascii?Q?wzJn10h/5LFvWC8I6zL6LQlPlA41DmpWs3WPVwuVCd4WMAajTFwUw9kwR0Y8?=
 =?us-ascii?Q?01/1QzVf+e72O/TJ8B3gEvInO5wiwfJWjpyvdAhAvfW/bHKjE9OeR3Paf/kW?=
 =?us-ascii?Q?s+4gC/EM8BSbXv6N+uprboPHeRT4uvKfIeWzyJp7Fq72qDwNwDnHvXObztn/?=
 =?us-ascii?Q?g6JguWLNyQqLdf5Et2ZL4jz80tLbd5dYp4buAnQqxA06HuxkMPr2FZlBKlh5?=
 =?us-ascii?Q?sgUBvQgnzJ+Nmmx8Y14+ceSM0yLEwCylGVKUDcsAX7C8etdVYUoTdxPK/mFU?=
 =?us-ascii?Q?twwIqouV8KN/nHl9es2DgVA5HsqRJu2A8YPysuS6wwYPoGv20KoTCB+3Lk9y?=
 =?us-ascii?Q?iNu0USecb2abi9UwnZaobLpsb+njzPMLPTI1mQU2GCjBLKNF1r0Nwy9MHzyA?=
 =?us-ascii?Q?rBs5VWhmgXle2+yagi9HzLw/DaCPd6KcG8b2CUgpBjfnTH2GgLbmnX9LYyJ5?=
 =?us-ascii?Q?T7NsRiDh9Vh84wsKeEKKZ9flwXra3i996Hpi+lMG4bYVyTDKK8J8oRiXr9Hd?=
 =?us-ascii?Q?QJSkPNTAoBQom70U3zIND2B4GxDWzaNFg+FSpt9WN1YnxsmlQC+Qv4fcsyk8?=
 =?us-ascii?Q?Yy8FkfTNEXrAfTPJzezrpgg6aeW8Cs/r3u82kGa4NC3fi9NA5rlrXfZZF/ya?=
 =?us-ascii?Q?a1C/eOWD4KvReIl1GTjQ3KMqv+F9Aag4WB+BHKCRaL+8OEovhnxX84AgBNeR?=
 =?us-ascii?Q?ofRTO1yr/iHwxU9sSb9sRmB7ziYTeWWAcdJKckUbSpSwZIBwGIxEgnl+p4eB?=
 =?us-ascii?Q?LKpooNdFXXqi1EbgBNSB50i7/+xZxghnbR6Rgz6B+kfqDDf+2/s5gq27YPQZ?=
 =?us-ascii?Q?20v3DY3//E5sV+lPe2UurZbz9voE9kNDAqg0jKglNSS4vxZWNdjAq0YpxnpI?=
 =?us-ascii?Q?1IHjCtLPjO+2emXmXJYnKusE5qQi5YWoPeo6z/hUCYHCDkuyC+5xaIltjeXQ?=
 =?us-ascii?Q?9+oHUZbK0quj9uiRD9FylBdPS4DT9FYgwHkaHnhH5yE8Oc+w2KeoKXrbjcqE?=
 =?us-ascii?Q?ZUhBBjGKGE3awbuyckeynoF/wHgfwd3VUvk41nerfOHUXL8C9KGttjHaMjN5?=
 =?us-ascii?Q?RK0A2TWG9aFeN2914IWD+iUCpsxDtpnWyiq2epjf?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 087a6270-5c08-4fb7-8913-08da889d3991
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2022 02:30:08.4678
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 
 VXGXPQiplB5VjFFY4Z5qnr82VUItjmcYoKimVg/rfPH5OGhVLXMq3t75FQN2r6aRBWZJeTYcaj+vIp/NWTHOJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR1101MB2172
X-Proofpoint-ORIG-GUID: p3piqgFNBrH6M0u-s4mQ_yxfXEUbwjVe
X-Proofpoint-GUID: p3piqgFNBrH6M0u-s4mQ_yxfXEUbwjVe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.205,Aquarius:18.0.895,Hydra:6.0.517,FMLib:17.11.122.1
 definitions=2022-08-27_10,2022-08-25_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 mlxscore=0
 adultscore=0 malwarescore=0 bulkscore=0 impostorscore=0 spamscore=0
 mlxlogscore=679 phishscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2207270000 definitions=main-2208280007
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 28 Aug 2022 02:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57928

Backport a patch to fix chcat runtime error.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...andle-unsupported-languages-properly.patch | 199 ++++++++++++++++++
 ...{selinux-gui_3.3.bb => selinux-gui_3.4.bb} |   5 +-
 2 files changed, 203 insertions(+), 1 deletion(-)
 create mode 100644 recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch
 rename recipes-security/selinux/{selinux-gui_3.3.bb => selinux-gui_3.4.bb} (78%)

diff --git a/recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch b/recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch
new file mode 100644
index 0000000..d79db22
--- /dev/null
+++ b/recipes-security/selinux/selinux-gui/0001-gettext-handle-unsupported-languages-properly.patch
@@ -0,0 +1,199 @@
+From a0a67119412622141a7f8365eff10de6395be7ca Mon Sep 17 00:00:00 2001
+From: Vit Mojzis <vmojzis@redhat.com>
+Date: Fri, 24 Jun 2022 16:24:25 +0200
+Subject: [PATCH] gettext: handle unsupported languages properly
+
+With "fallback=True" gettext.translation behaves the same as
+gettext.install and uses NullTranslations in case the
+translation file for given language was not found (as opposed to
+throwing an exception).
+
+Fixes:
+  # LANG is set to any "unsupported" language, e.g. en_US.UTF-8
+  $ chcat --help
+  Traceback (most recent call last):
+  File "/usr/bin/chcat", line 39, in <module>
+    t = gettext.translation(PROGNAME,
+  File "/usr/lib64/python3.9/gettext.py", line 592, in translation
+    raise FileNotFoundError(ENOENT,
+  FileNotFoundError: [Errno 2] No translation file found for domain: 'selinux-python'
+
+Signed-off-by: Vit Mojzis <vmojzis@redhat.com>
+Reviewed-by: Daniel Burgener <dburgener@linux.microsoft.com>
+Acked-by: Petr Lautrbach <plautrba@redhat.com>
+
+Upstream-Status: Backport
+[https://github.com/SELinuxProject/selinux/commit/344463076b2a91e1d2c7f5cc3835dc1a53a05e88]
+
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
+---
+ booleansPage.py          | 3 ++-
+ domainsPage.py           | 3 ++-
+ fcontextPage.py          | 3 ++-
+ loginsPage.py            | 3 ++-
+ modulesPage.py           | 3 ++-
+ polgengui.py             | 3 ++-
+ portsPage.py             | 3 ++-
+ semanagePage.py          | 3 ++-
+ statusPage.py            | 3 ++-
+ system-config-selinux.py | 3 ++-
+ usersPage.py             | 3 ++-
+ 11 files changed, 22 insertions(+), 11 deletions(-)
+
+diff --git a/booleansPage.py b/booleansPage.py
+index 5beec58..ad11a9b 100644
+--- a/booleansPage.py
++++ b/booleansPage.py
+@@ -46,7 +46,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/domainsPage.py b/domainsPage.py
+index e08f34b..e6eadd6 100644
+--- a/domainsPage.py
++++ b/domainsPage.py
+@@ -38,7 +38,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/fcontextPage.py b/fcontextPage.py
+index bac2bec..767664f 100644
+--- a/fcontextPage.py
++++ b/fcontextPage.py
+@@ -55,7 +55,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/loginsPage.py b/loginsPage.py
+index 18b93d8..7e08232 100644
+--- a/loginsPage.py
++++ b/loginsPage.py
+@@ -37,7 +37,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/modulesPage.py b/modulesPage.py
+index c546d45..02b79f1 100644
+--- a/modulesPage.py
++++ b/modulesPage.py
+@@ -38,7 +38,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/polgengui.py b/polgengui.py
+index a18f1cb..7a3ecd5 100644
+--- a/polgengui.py
++++ b/polgengui.py
+@@ -71,7 +71,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/portsPage.py b/portsPage.py
+index 54aa80d..bee2bdf 100644
+--- a/portsPage.py
++++ b/portsPage.py
+@@ -43,7 +43,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/semanagePage.py b/semanagePage.py
+index 1371d4e..efad14d 100644
+--- a/semanagePage.py
++++ b/semanagePage.py
+@@ -30,7 +30,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/statusPage.py b/statusPage.py
+index c241ef8..832849e 100644
+--- a/statusPage.py
++++ b/statusPage.py
+@@ -43,7 +43,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/system-config-selinux.py b/system-config-selinux.py
+index 1b460c9..9f53b7f 100644
+--- a/system-config-selinux.py
++++ b/system-config-selinux.py
+@@ -53,7 +53,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+diff --git a/usersPage.py b/usersPage.py
+index d51bd96..9acd3b8 100644
+--- a/usersPage.py
++++ b/usersPage.py
+@@ -37,7 +37,8 @@ try:
+         kwargs['unicode'] = True
+     t = gettext.translation(PROGNAME,
+                     localedir="/usr/share/locale",
+-                    **kwargs)
++                    **kwargs,
++                    fallback=True)
+     _ = t.gettext
+ except:
+     try:
+-- 
+2.25.1
+
diff --git a/recipes-security/selinux/selinux-gui_3.3.bb b/recipes-security/selinux/selinux-gui_3.4.bb
similarity index 78%
rename from recipes-security/selinux/selinux-gui_3.3.bb
rename to recipes-security/selinux/selinux-gui_3.4.bb
index 9916afb..fa80860 100644
--- a/recipes-security/selinux/selinux-gui_3.3.bb
+++ b/recipes-security/selinux/selinux-gui_3.4.bb
@@ -8,9 +8,12 @@ LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=393a5ca445f6965873eca0259a17f833"
 
 require selinux_common.inc
 
+SRC_URI += "file://0001-gettext-handle-unsupported-languages-properly.patch"
+
 S = "${WORKDIR}/git/gui"
 
-RDEPENDS:${PN} += "python3-core"
+DEPENDS = "gettext-native"
+RDEPENDS:${PN} = "python3-core"
 
 FILES:${PN} += " \
         ${datadir}/system-config-selinux/* \
-- 
2.25.1


