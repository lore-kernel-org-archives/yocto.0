Return-Path: <yi.zhao@eng.windriver.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5E71C46CC5
	for <webhook@archiver.kernel.org>; Sat, 16 Dec 2023 08:22:20 +0000 (UTC)
Received: from mx0a-0064b401.pphosted.com (mx0a-0064b401.pphosted.com [205.220.166.238])
 by mx.groups.io with SMTP id smtpd.web10.12148.1702714937606312130
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 Dec 2023 00:22:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=NVxiu5Vq;
 spf=permerror, err=parse error for token &{10 18 %{ir}.%{v}.%{d}.spf.has.pphosted.com}: invalid domain name (domain: windriver.com, ip: 205.220.166.238, mailfrom: prvs=071467d4b3=yi.zhao@windriver.com)
Received: from pps.filterd (m0250809.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.24/8.17.1.24) with ESMTP id 3BG7f4Wv029738;
	Sat, 16 Dec 2023 00:22:16 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=windriver.com;
	 h=from:to:subject:date:message-id:in-reply-to:references
	:content-transfer-encoding:content-type:mime-version; s=
	PPS06212021; bh=+cbQVV8Lr+WxxxZl+wgbsN80fX0/CBvvoUoz6cnFkTc=; b=
	NVxiu5VqH2AUEB0FMSnkbWlsjk/4fOAUn+tz4EBqvCykyW+bAG3j2nlcjyagaVda
	SiQ23NfpDkW2uE/MN2MJme44d0mdrGad1wFWmQfQheBJt6UDGRGJMOBS8P+/y6A+
	4qdEKb0uqDWZxcYEVmUpmqqZ8QKEI3HKehjvErioKGHhTsGTQ3IpkUGYgRzgWdOQ
	RaI548LlNEdPlk+QbUvqLHXII4LCYIy/2Op+lGcW5OtMESYwirnq78OXNxjLWtkC
	JJCQHKulI5oW3LWJXJEUPDScmO3vFv11UFziIlpydXKXbzrdzj0KwzdQyPgdQwR/
	bI5MELTJQI3eYpSbWxp1Rw==
Received: from nam11-co1-obe.outbound.protection.outlook.com (mail-co1nam11lp2169.outbound.protection.outlook.com [104.47.56.169])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3uyr7dje46-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 16 Dec 2023 00:22:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hqp0rMRfJ0j33ARw3KWMDgb1cmlUPEMMN5GgxTwTT8+hwO6EFRIc0f7xysSOD/fYgGKXbhEoO2tcpcjKS4yUZGAdF/S68Oe3U05W7ZadgxBg2e4yrdFVDCxkzy4UXNiVinvuPzjxCD7/yL3K+X6FgkFM65oPaRCCrGbc50SoTS4Tb234Dtao9NvL88SCtgd3fwCDm4hf5zJgXamp40blVM3TmZkwLDUIAaJROr9TcId9OwGPB4eT1vNLcqhjHS3prd6kAePJuoz4HF7zFSH7g6xktwSVL79BsjOK35bqk9AxLNf48BXGPM9A8HG+sSpafFhW7OBCJYcXhrevOFGDcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+cbQVV8Lr+WxxxZl+wgbsN80fX0/CBvvoUoz6cnFkTc=;
 b=JV5EbKk/eNMrvPTYDO/XXSVOsDWBZxtp8ewjyK5e3QcksxBQsTB0kAq1bjGb2ON1V/YpU+cE9JIP9eWeRXIdoOV2eSW00madRGUu1pBhA+lLPfGmAN3Phab4RUZA9kYFq9HzGSDlKS5E/ajDg4eNC8FXoANJwEbKA/8gME8uIr6ya9akEIcc9WE3D/wc3aCU0v6Z2DgL9NHwmsIAM3EftMs0pq0tfy5LAHOd8DYAHzA9p9G/ZBvSHFtqfRilOyn5pycSOA3NfgcQwJhm/LvUk+bTpb92xkRmrdmccyWyg5vYeJTK6TD58N5U4B4zYmk0yrvhpB386rqYUI8lWOrBPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from DS0PR11MB7484.namprd11.prod.outlook.com (2603:10b6:8:14c::10)
 by CH3PR11MB8466.namprd11.prod.outlook.com (2603:10b6:610:1ae::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.31; Sat, 16 Dec
 2023 08:22:15 +0000
Received: from DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3]) by DS0PR11MB7484.namprd11.prod.outlook.com
 ([fe80::c56:aece:e7ef:6cb3%3]) with mapi id 15.20.7091.028; Sat, 16 Dec 2023
 08:22:15 +0000
From: Yi Zhao <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org, joe.macdonald@siemens.com, joe@deserted.net,
        joe_macdonald@mentor.com
Subject: [meta-selinux][PATCH 10/15] selinux-python: upgrade 3.5 -> 3.6
Date: Sat, 16 Dec 2023 16:21:37 +0800
Message-Id: <20231216082142.198501-10-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231216082142.198501-1-yi.zhao@windriver.com>
References: <20231216082142.198501-1-yi.zhao@windriver.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SG2PR02CA0033.apcprd02.prod.outlook.com
 (2603:1096:3:18::21) To DS0PR11MB7484.namprd11.prod.outlook.com
 (2603:10b6:8:14c::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7484:EE_|CH3PR11MB8466:EE_
X-MS-Office365-Filtering-Correlation-Id: 2750c481-382a-48da-9562-08dbfe101c38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	YqKq0gy2xx/fRBl+ZcR256xZfBG4XkSsjZShRKDPoDFQm7gIRczuWpK42aclhmY8Pgnd24Pnqzqz5KQSsRz+Vqa8qr8ICS5ngc6/WAu8E3hPD6ltorzMG9Eqzd9rn460+daR4olPc6INWmmj8ZBk2900W0C79KHIuXMJc9LKCCTFkp+yMGSOjXdCKq2RQUC2gnfb8M69SksBE14JMYpnh24dYYQ7RhTchBoT3OLDNCdYGGPYKXctzRjgch70LWuSCO00qAnNWk9uFzyioPoPfUv05udx5o/x66ysHZ6xtEViG1mZo+rfhIluWNZOBbTVTgNtTHGQaG+XgxvzGvgU/KPaTfZ7keSZGWnI73sXWDarD9FaAf0C7TMUFSTwifY3koTVcwxALh6NzGTWoD50gNRB3TJgzX+wuuTsA9z09JYMgl7f1tsaawIA9cIqIHYRcnkv6V6zu8j9QjUU3ZqyqL3a94lhfk5mmSGsK4DUWYGGcY34g/wg7yZogHR9hdu7UvLh7QwPzLluAoTPu97i17njCzGZOt98mqb4OZQwCKxST95/RImr+BCLlT0e0Wwp303h2FgVsS38qbVSUGQVC3//m+WnB4o9MoDydpd9/FZNby5awZ04Y/jRAVat3ly6
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DS0PR11MB7484.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(39850400004)(366004)(136003)(376002)(396003)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(6486002)(86362001)(53546011)(2616005)(38350700005)(6512007)(6506007)(26005)(36756003)(1076003)(478600001)(52116002)(2906002)(83380400001)(6666004)(8936002)(44832011)(41300700001)(8676002)(66476007)(66556008)(316002)(5660300002)(38100700002)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?t+QYFx730pk8ZK1RdP8erLSC8fMWU7LZ/B55nIE5bxa7A2/7y7V9we3gBvSz?=
 =?us-ascii?Q?XE7RiGG0QzYwp5VnSa5RRf4faUJlAHwT3AholgT0Ykp6RXcXZPc2f+0W2lJ3?=
 =?us-ascii?Q?QLWfFmomlCs+WEQggSSGGc4SbIO4C2yICbFvosc0yCTdh911TJS6pezep30c?=
 =?us-ascii?Q?pyc27CTmTfE8/Y2lYDYwTsIenZf5PW7obiNU9e4YgsjLWLZiaQ/W682YY678?=
 =?us-ascii?Q?t+h64hNlOvJq/pIUzGu1mMArrhnzkKe5MmOzJjjvr8t50psrVtkZxdrAtmNA?=
 =?us-ascii?Q?JdC9SMXCaN1PPZp5lfLLQ3eJ2UdwgBgQqHZAjA5lx09ckLllHQGwqwGbqNrH?=
 =?us-ascii?Q?b5Wn1/8KRCRY4yDsfcSQjTocsrW4aPyHl8tT205GbbLVhi/PMof0HOhk2ezF?=
 =?us-ascii?Q?7u9VeMtXyQlh84QJ0LfhKHD2vCt95BpekBFbFr1DhaOnQYrbMSaRULeROE3e?=
 =?us-ascii?Q?pDUONGslAbsg5U3A7tgiXyNG6nI/rJNWw1LvNiOWQh0kkNvevTV2hYh8oaqf?=
 =?us-ascii?Q?t/DoY9pkvDfoIquWUHAQx9gi4V0Z6cnQoSNxvL1JhvrlaUJAt3FQqz2acRgi?=
 =?us-ascii?Q?q2XIga3kXdoDcpk1gaiUnrhLHdF1lH38dNmd80PBXoqnym57mtEMumnlQUz5?=
 =?us-ascii?Q?0cw6UMrv76k75nXPn9uhcOEVB8Os2IezrA9AkxIxOjm3i26HpNHf/fKcvoWo?=
 =?us-ascii?Q?0O2M5EDejAqFeKn7UjrMbfgP5JPoSE3g+hZ/TYugPHt/z968+IfvJ6BXkTC/?=
 =?us-ascii?Q?vLII70jgAW5PDiHtNHidPkoUHSTETmCgumQVzXpcpk2NZA4seBXlYdXwc5RW?=
 =?us-ascii?Q?aGl3dCOqVBVvfIlO+q6ewIuVemu6v7EYs6ucYsaV0QPszrym2W643JzjyPVr?=
 =?us-ascii?Q?VgFWFS5k81Ctgcsr+uRNWyzrF2SbI2QLeYhFpQQ/tuMQGy1YKwsvPtcfynOd?=
 =?us-ascii?Q?8Y1QYdX6w5f/i18F7oskEWpXTL5vGLrE2y+GtzhcJrYvOn6KUuz3IvpbOcG4?=
 =?us-ascii?Q?Vk6J3LbeID4wOrYhWzGPschVTu9yXHeGZ3iewx8Y4GIQWVAbrDcvBnXRgeZi?=
 =?us-ascii?Q?ZvDMDbnK6d2ePCj3CTZJ4PbWbOTZxqM2sh9ZNfrHusA00e8d3LOFq7RfYT6s?=
 =?us-ascii?Q?Rxeh5zvfdqbnH43O2Z4Fvq4U47RrHQuvqfU4fMQ6rnUA4egrf6LJQ92+221i?=
 =?us-ascii?Q?psOtp+ibTOF2SonMBof+mQ6auROTbAkObtEYdawCxeMlkE0zkWKaQ4gUxZy3?=
 =?us-ascii?Q?f/MwAxn3FbbBmQFiUvs7LjKLl/WIe8+9Y1Y0VHb8eUnSJl1GJKXjU7qgT8mi?=
 =?us-ascii?Q?mc3SrsJSLm75ANsqewgBmIABUXbFIsWtfg4uby5M4O0WEY62hLsH5snC+Dri?=
 =?us-ascii?Q?Dxk6Rx8HzJfeG6sulRS6UAR53+DjI0QnWbKDpyhT+LEcuVOEr9CZgYoNKFtT?=
 =?us-ascii?Q?aCFhr1n+X6IEzEC+6e8eRwNvAGHNerRs7uMATyh8qhuZ6Ezlx5pfi9hG25Bq?=
 =?us-ascii?Q?sK869xZCRNO3V5i/CWrhFc5FCsPtE3aDUG1T283MlxxrzWWOWB5PCIFM7p8g?=
 =?us-ascii?Q?REmZXtDxbbh4hRcvrXlLEL/KZbwAB+okdI6So+xA?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2750c481-382a-48da-9562-08dbfe101c38
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7484.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2023 08:22:15.1119
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MPxJZFurK4pSs6NhREJOts3aM0IzxTkkQtX8SdxfBxYHqvoKcfUUW6Yn1gQGisMxtwgkBO/8ZeO2FMOQY7FksA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8466
X-Proofpoint-ORIG-GUID: btS7uTU3P2yDSQ7Asg7CC4Bm35P3ETu3
X-Proofpoint-GUID: btS7uTU3P2yDSQ7Asg7CC4Bm35P3ETu3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-16_25,2023-11-16_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=937
 impostorscore=0 adultscore=0 spamscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2311290000 definitions=main-2312160063
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 16 Dec 2023 08:22:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61936

* Refresh patch

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../selinux/selinux-python/fix-sepolicy-install-path.patch    | 4 ++--
 .../selinux/{selinux-python_3.5.bb => selinux-python_3.6.bb}  | 0
 2 files changed, 2 insertions(+), 2 deletions(-)
 rename recipes-security/selinux/{selinux-python_3.5.bb => selinux-python_3.6.bb} (100%)

diff --git a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
index 5eb2e54..bc048c1 100644
--- a/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
+++ b/recipes-security/selinux/selinux-python/fix-sepolicy-install-path.patch
@@ -1,4 +1,4 @@
-From 2a0c2489e9d245502e7a9dc5878da01f9d64db2a Mon Sep 17 00:00:00 2001
+From fb449373ae92a05c324895cd7daee1461a0f0349 Mon Sep 17 00:00:00 2001
 From: Xin Ouyang <Xin.Ouyang@windriver.com>
 Date: Mon, 23 Sep 2013 21:17:59 +0800
 Subject: [PATCH] sepolicy: fix install path for new pymodule sepolicy
@@ -13,7 +13,7 @@ Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
  1 file changed, 1 insertion(+), 1 deletion(-)
 
 diff --git a/sepolicy/Makefile b/sepolicy/Makefile
-index 4e9e93d..512aab5 100644
+index 1a26cfd..6e40691 100644
 --- a/sepolicy/Makefile
 +++ b/sepolicy/Makefile
 @@ -27,7 +27,7 @@ test:
diff --git a/recipes-security/selinux/selinux-python_3.5.bb b/recipes-security/selinux/selinux-python_3.6.bb
similarity index 100%
rename from recipes-security/selinux/selinux-python_3.5.bb
rename to recipes-security/selinux/selinux-python_3.6.bb
-- 
2.25.1


