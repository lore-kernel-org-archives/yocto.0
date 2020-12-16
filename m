Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.7108.1608124152363811068
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=Ukgpsudu;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2050.outbound.protection.outlook.com [40.107.93.50])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 3C1F338C0849
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=apWzpaTlsLvXT9jLAokaBsgRmG/s8ctIbrgd4dfZcXVZGMHs/wTpRRtjyiNGOjHggQy73XXwngDiTkTSybLLFas0L8ShIIRe/7x1ORzU7A5RXI5Zdk+WZA08Jf/SxkjePFdnJMq7ClLXa9UD1BoFezkEaOdM/lteOhYrD44YsEv9Pd7f5HxTLabojG8E2LRFAalYd+EAuRpbOu0efCeH6IgIUs19z8cbMJsXkW4G6xEtmmWAc+AbKJ2rjr6FnD62ktBNyVdoYUZas4DqU39plHHOx7KTYrDkZ4Pb0gQ9L7T77RB04xfBdsnZBEo1pnA7gi01CCVY7tMBiynTUQ9SCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bScIxm9L1PU5pW8vEzyWf7V6ZcNnDnUtYjfEX+RDzmU=;
 b=NQezLbcG1Y2XDw7vORQNZxXauGArLacJWcRfKiuWK9PcZkGMixggSi2A5nAmbdQ4wGjDelC5FdfMx5eXjJodTrp79mj2A6FNh/YDhvI559GtKfFjqwcTAjB6dUgSZeie6F+i7ugbCavcbZWKZxZDY1D6EIk0pTmlmMhgtbRor33SDMoQJ8UwA2Tw1afq0GqfH31+lrKOt4kE1A2QP7ADR7w8Nu0W/2ejuU8q6I7+oK0Vb/VKuBiXu1ok7UBX9VN7xlhMIIEHkVQ9Bj4D/P3XoHuibsJThWNVhzHAuoboDh3iyH9mNisTvmRNKRvdpFEG/n2uUhWSuMatvYM4rN6A1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bScIxm9L1PU5pW8vEzyWf7V6ZcNnDnUtYjfEX+RDzmU=;
 b=Ukgpsuduh2ZadR8rN/OVSxxevtZ+gEJsMijbF0keydSwaQxAEkZ6Ss3l7p1H+ClvsdBFJfFdeuE5qfvPGuY2xYtKg/sCCS7DfWrwdDua639d/0MKt+XVi9M/LhqqJVDUbDMSCxRfaJ2caqhiuS0v2szHt+MbwKpBxW1Tp7lF9E8=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:11 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:11 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 12/25] tensorflow: fix Multiple shlib providers for libtensorflow_framework.so
Date: Wed, 16 Dec 2020 21:08:09 +0800
Message-Id: <20201216130822.28476-13-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:09 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 29cb4eaa-025f-4b5e-49ad-08d8a1c3c7ba
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577B8BA7A4F8E32A33C633E94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2449;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	iCtrB83Fju3gE41PRw4geCytLbM1v3m5JYv9xmo6vEFWabiiC43tOce/jFGXlYWyjl/h4pmaEf3CIkyakhVK+qKxYesnmKTSmiHS0tBtYUhyBp6yVzcy2ihHkfJdmQ8wz9BLi1ax7pD4MHltN7W76Wh1AKRhvX751iqJ7bHtcE4i8xb7t99AdQm/orExR9wHeNFinOXm7jqsUv3vcf+ShtxYH7I9cNFxHWn/yf6wSLhmAlBTiREoMrE59FLuL9TzUkrfO/uvIZ1T4hNWYPfBtF0rVKam8vtinrLEyZurSYS4xCFAjMzHsnykUx0iw+yit7xp9Gby2bEHzBZMN9uucA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?/ZzGhG5PUszGN+IEKh1MTTZRksicLcRqzaAbx8EmO+pvZVQJSf9nEguscRnF?=
 =?us-ascii?Q?q9k09Q3X5pRbxMnsjb4X4OBL+qQ+OFmrQ37/j+BIXlyVLZ1dMcZHrl7rpxcl?=
 =?us-ascii?Q?sug7OrWL/7J/C+hA+h13AuLDB/xCuLEH/I1MzWb6fGZcE3kfyhcds3mQx2DJ?=
 =?us-ascii?Q?EkKd/OmdZ04fc7XHUjZhSCt1LVCL54aEMjuM5Rn2Kndbrs9GINjcSRuT3Mea?=
 =?us-ascii?Q?nELgLbfNM0v1adL5vVF1ERcN5dRAgrCPX+et/ZJGeI1LsYE7BVoJXaxWjz+a?=
 =?us-ascii?Q?Y7FbSlBH2W0w/eoZI1mYwr9S8FngQlhMpw/4anTV4rUE72SnfeDAn5oeN7p6?=
 =?us-ascii?Q?fCxgvSu7G2Osm6ZuRAo+nCJM9bBfUA4NMru20t64r9a3DhYTt8cixZ9n5GRf?=
 =?us-ascii?Q?6f+hQmEoG+/0hrvEY3SYsNI859nTsnDqdy4z3tUvlf0agFlYoYeuSFEznzz2?=
 =?us-ascii?Q?JnWzQ7vbUJnTjzX06ppO/uX+EbEYOfJ7eKHtNThYBYX8xTAfAUZYBI/1OJlz?=
 =?us-ascii?Q?BJGY6iyj3/DFrY9UR7MR7y6XK+EjssqasoN1ufO4FSOYweIuRpC2lyipdGjq?=
 =?us-ascii?Q?5b0TD9pnrUQHClUOyjdPHgNvrI3sLuk3VxlY7ZMnTUEtxV+NHvTHwtqAuq/e?=
 =?us-ascii?Q?b2TgqOZRoMMkezxW+q97Lmqqx3R5qwp5x6u1g+cRKP251sHy1PG7606aft2C?=
 =?us-ascii?Q?h7Bf7BeHXN9putXr6+dKWaQKKCxdQJ/bj8dEqXYka531yIAxmnGxpRJo8p4R?=
 =?us-ascii?Q?rArfsNVCkK10QidaZmUzsMggwFA7OMMVkpd0VzOaHoWmeNDL2ypEC3GM3E/M?=
 =?us-ascii?Q?3S/vTGPF5eBUqNsNqNnj0q42HtOveCAuSUSjbeQ+VQce0qLZodbiOmK8zqF1?=
 =?us-ascii?Q?kQG/ziD1B1x+oEAkID3ntgsgMCX/gRBtWS3oOsQ3WJONpfNfEOQDLBCAn4Om?=
 =?us-ascii?Q?qyuHlMVzyqjaILl8OkHL4AM6msD8lnB4M+a+cKZ4suztD5YjaBjuh9fKvDbf?=
 =?us-ascii?Q?Ry1L?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:11.3694
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: 29cb4eaa-025f-4b5e-49ad-08d8a1c3c7ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sSRbp3ylO8FqbeGEdHNA6Cb6sJuc+/i/0Tl30orhKzzkUDZdk5q4675CMrcm4cdkBkBaLMDp/otnwsA2F/jSgzc968xJFtXr9hgE60B2c+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

|ERROR: tensorflow: Multiple shlib providers for
libtensorflow_framework.so.2: tensorflow, tensorflow (used by files:
tmp-glibc/work/core2-64-wrs-linux/tensorflow/2.4.0-r0/packages-split/
tensorflow/usr/lib64/python3.9/site-packages/tensorflow/python/
_pywrap_tf_session.so)

Remove the duplicate one

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-framework/tensorflow/tensorflow_2.4.0.bb | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/recipes-framework/tensorflow/tensorflow_2.4.0.bb b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
index ba441a7..af66397 100644
--- a/recipes-framework/tensorflow/tensorflow_2.4.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
@@ -120,8 +120,6 @@ do_install() {
         ${D}${libdir}
     install -m 644 ${S}/bazel-bin/tensorflow/libtensorflow_cc.so \
         ${D}${libdir}
-    install -m 644 ${S}/bazel-bin/tensorflow/libtensorflow_framework.so \
-        ${D}${libdir}
 
     install -d ${D}${sbindir}
     install -m 755 ${S}/bazel-bin/tensorflow/tools/benchmark/benchmark_model \
@@ -165,7 +163,7 @@ do_install() {
             mv $app ${D}${sbindir}
         done
 
-        rm -f ${D}${PYTHON_SITEPACKAGES_DIR}/tensorflow/libtensorflow_framework.so
+        mv ${D}${PYTHON_SITEPACKAGES_DIR}/tensorflow/libtensorflow_framework.so*  ${D}${libdir}
     )
 }
 
-- 
2.21.0

