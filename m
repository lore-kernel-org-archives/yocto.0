Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.7081.1608124181215739484
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Dec 2020 05:09:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=V4K+b5nx;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: hongxu.jia@windriver.com)
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2055.outbound.protection.outlook.com [40.107.93.55])
	by mail.yoctoproject.org (Postfix) with ESMTPS id F11A138C06A9
	for <yocto@yoctoproject.org>; Wed, 16 Dec 2020 13:09:40 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XWemQ2LfNIhd1w09SnGykrp0cHqbgZLyjcz/KJwXYl5itAJhs2MOTktWWHDKmx8LeNVYs9zzkfypGEm5SjCsz+BBMwhxqE+lb5Tq4NkaePRoQOJ3AjZaOZBjUCXaoPGwiZldVCQHAnLdt3PLIBvmDHgmUuOZJ3Fklj5GjUsX5w3VUJxHvpFt6HxqPDTZY/xcTMz96szRVHy3s0j6/RMBm+N2tV6x/ziUxuHTUZzSUFvmeVGzf+uhNMQdTO9+BHkbN2X/ZGZeR8lHwp5ggubNtVY2HxEdk4RX8goNm4GcAhtOC4jWzxSPAzGMalpiiI85gcXvGyYLptGFX2xhbLQpdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2FSucK+FdJn5NLCkga7lCbiqDOhNeW2w2qpT4ZOA8tU=;
 b=K0hbAmVPfFXmLTV3gHhU/svI6UZ0agzaI++hhMU2H20uNp2XA1zNMixd75rXtj4+Ms2lCpWXAfGK3Yk5PB/vQWXI2tdlrlBsGD70PnpnrNuOW60bCcuhvQolXNyUogNJsX3WMaWA+3AGtQl+JZ4sKe6WRO0Yqp7b/OKYH5O86AxLetocyQcKi8x4QytmV9yYfyEArJNDgptnPH0kXXvm7Rn9/lp5N++VT92nX4W806QOgdJOHVIkV9yvX7H7Y9/XVSPBTgF5fCz0lH7RNdJviqYyjM+mRtUdjGEuVlv2nHQu+c1zkWmX3nKbfrcGQlzaDJiY+kcOaIws8EngFjI/YA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2FSucK+FdJn5NLCkga7lCbiqDOhNeW2w2qpT4ZOA8tU=;
 b=V4K+b5nxyNVL1JSBSdXd0c5Crfpw2NnZYmfIf8XbBB9OWL4ze7WhRISEvE0mupazJwzK8BEKGTOWYl4lNq70Ey1CEmzr7Bm6tMMLPeYNt2IdNPsccJt/Hqj/YOgyBDACRni/5UNhWzGxO4FNTIsPhRyjnnbr6rO0BpSR77FhcK4=
Authentication-Results: windriver.com; dkim=none (message not signed)
 header.d=none;windriver.com; dmarc=none action=none
 header.from=windriver.com;
Received: from DM6PR11MB4380.namprd11.prod.outlook.com (2603:10b6:5:14e::20)
 by DM6PR11MB4577.namprd11.prod.outlook.com (2603:10b6:5:2a1::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.20; Wed, 16 Dec
 2020 13:09:39 +0000
Received: from DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8]) by DM6PR11MB4380.namprd11.prod.outlook.com
 ([fe80::15ab:1cac:c06:c1f8%7]) with mapi id 15.20.3654.017; Wed, 16 Dec 2020
 13:09:39 +0000
From: "hongxu" <hongxu.jia@windriver.com>
To: randy.macleod@windriver.com,
	philip@balister.org,
	akuster808@gmail.com,
	marek.belisko@gmail.com,
	yocto@yoctoproject.org
Subject: [meta-tensorflow][PATCH 24/25] tensorflow: split sub packages
Date: Wed, 16 Dec 2020 21:08:21 +0800
Message-Id: <20201216130822.28476-25-hongxu.jia@windriver.com>
X-Mailer: git-send-email 2.18.2
In-Reply-To: <20201216130822.28476-1-hongxu.jia@windriver.com>
References: <20201216130822.28476-1-hongxu.jia@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR04CA0085.apcprd04.prod.outlook.com
 (2603:1096:202:15::29) To DM6PR11MB4380.namprd11.prod.outlook.com
 (2603:10b6:5:14e::20)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpggp1.wrs.com (60.247.85.82) by HK2PR04CA0085.apcprd04.prod.outlook.com (2603:1096:202:15::29) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3654.12 via Frontend Transport; Wed, 16 Dec 2020 13:09:38 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d1ad3f46-8359-457b-8547-08d8a1c3d8bb
X-MS-TrafficTypeDiagnostic: DM6PR11MB4577:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: 
	<DM6PR11MB4577E440F724455BD8C7D2FC94C50@DM6PR11MB4577.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:813;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	s0CnOP1MRMcWtGWZK6dNUYsm5Cde3kDBSLMV/eNkIStQ9eKmUxyJin133xkqE4ARh0CihBE8+s3cE+RbnAZZniJzVwOWdXXw55h8evXMaGklH8/DDXH0++zGmjbMAWlHorKvjAvpkjrPyWKJNCOtBODj09g+DiDksG6GiVYAK6y9SLNi9c95WZsLJ/5iKYidz+EYbWSVW/POdCdJNjztFricqE4Wxh0pdAuO8oiNvSN9WPGtqxB7TSbbiwbsjiVgtesPlqlbQIykNm5jq4XpOo57ilmkS8qjV3VINymMfGllwfFOeEeBsFeWUQ/a2hEK7puQa3muj+r4rb1o/rPA5A==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR11MB4380.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(39850400004)(396003)(366004)(346002)(376002)(36756003)(478600001)(2616005)(83380400001)(5660300002)(6512007)(44832011)(6486002)(52116002)(6666004)(26005)(186003)(956004)(316002)(66556008)(8936002)(8676002)(2906002)(6506007)(1076003)(16526019)(86362001)(66476007)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?+LUoXy9sYhJ1DDvqcqW6zvnWa5T7cI6YaxakY9w9Z/jntjrklC+TDDbbFVbf?=
 =?us-ascii?Q?5xe8/aCLDCEaifafVrFiYCAO3FINDA1kmjVM2TV4fvwOGIBka0OYlWaoLSUk?=
 =?us-ascii?Q?qoetrr801hdtCsRI9dYGdXqGXP7odoVZc2LZxeRHmOYD8iWvibr/H+hgVl9s?=
 =?us-ascii?Q?7XaEd88Bql6MxTWD5tR0EbVnrD79QbnfvuaeG9aZX6604W2n0GyScJoKFxYr?=
 =?us-ascii?Q?pW/RKab41gycQnrwBIgnPBXcg0O4oDM9fdkhyLi2ALTE69S0ogGGG0FsGw67?=
 =?us-ascii?Q?07KFwOXJmkvS+Z4YSdtGgYKs0EIf2mzsW+KpRlMQ2dSGmjAXNBwudvYQixF3?=
 =?us-ascii?Q?Lv2qaIcDBHiy2oV+GfhQHnQK6Q+gK5izNFh4E7w3j9dbJVNPqijW4Yw5+A5E?=
 =?us-ascii?Q?p4GqTF/jiDBH9qasbrdkHuGf+p0w00LDR2s3/PfN4JzD8f7Y/N9W8P3IJYzr?=
 =?us-ascii?Q?auaiwQklPopg+5kOv+BMo3V5xY4WqOAjuR9iTVzYpAhrrBymVYjxvJqAUza9?=
 =?us-ascii?Q?HNbb2dt7tvP2gj38opFGxdBjDna5ck9M4jD3KiSyiMzmUvkeqHQaPGyivLXR?=
 =?us-ascii?Q?iGOi8+95J+NF012fifx5Yw249nHFbaN5u0kTpwCNxr1tg00cQ3pbflnqj74E?=
 =?us-ascii?Q?/03kmQgWQNcCMNqUTKRJLdwRdDnzBGL0B10S2iR+pDfzekX4/Z3phm6da8UI?=
 =?us-ascii?Q?zJJW7ozGw8VIdXyaYgq0G3lPlfjabWFJmNApIi827ojG2S4c2oN7MCWeBrtb?=
 =?us-ascii?Q?LaW6lXg7mzxLcQvCk8PL+SyR5+vtFcRt6j5FtShWvgJn9wclcEyoDaEQ60qy?=
 =?us-ascii?Q?Kro0XrWAI1OTg/MJQVyDy+gzzMukl+cZ+Y2ahpIbIoapKZ6aa4ClmO572njo?=
 =?us-ascii?Q?J00plfCdBLSg6xGwVA9/ADsiVgprtRU4KFZppQyfpt3Px/aOJyodgK4ULcQQ?=
 =?us-ascii?Q?jUDETWO5ly6TpHSOsXC4p9DJwzggvxIUllwT0jra4BY76WxDH4M0Fkb1lMYB?=
 =?us-ascii?Q?AT8e?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4380.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2020 13:09:39.9508
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-Network-Message-Id: d1ad3f46-8359-457b-8547-08d8a1c3d8bb
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lJiK+Z9j89cx9Htm3XyqWPztDhR3Qpdo41mdQGlpSqaKMhQ/ZcJhrdbtYornWyLjhMPTjDdh0BxlR2yamSGTZZAI+Ql1rhVtegiUPNr7dPs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4577
Content-Type: text/plain

Split sub packages (libtensorflow-c libtensorflow-framework
label-image label-image-lite python3-tensorflow), then user
chould select the required one rather than install them
as a whole

Signed-off-by: Hongxu Jia <hongxu.jia@windriver.com>
---
 recipes-framework/tensorflow/tensorflow_2.4.0.bb | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/recipes-framework/tensorflow/tensorflow_2.4.0.bb b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
index 49c868e..6c4163e 100644
--- a/recipes-framework/tensorflow/tensorflow_2.4.0.bb
+++ b/recipes-framework/tensorflow/tensorflow_2.4.0.bb
@@ -168,7 +168,20 @@ FILES_${PN}-dev = ""
 INSANE_SKIP_${PN} += "dev-so \
                       already-stripped \
                      "
-FILES_${PN} += "${libdir}/* ${datadir}/*"
+
+PACKAGE_BEFORE_PN += "libtensorflow-c libtensorflow-framework label-image label-image-lite python3-tensorflow"
+
+RDEPENDS_label-image += "libtensorflow-framework"
+RDEPENDS_python3-tensorflow += "libtensorflow-framework"
+RDEPENDS_${PN} += "libtensorflow-c libtensorflow-framework label-image label-image-lite python3-tensorflow"
+
+ALLOW_EMPTY_${PN} = "1"
+
+FILES_python3-tensorflow += "${libdir}/* ${datadir}/* ${sbindir}/*"
+FILES_libtensorflow-c = "${libdir}/libtensorflow.so ${libdir}/libtensorflow_cc.so"
+FILES_libtensorflow-framework = "${libdir}/libtensorflow.so ${libdir}/libtensorflow_framework.so*"
+FILES_label-image = "${sbindir}/label_image"
+FILES_label-image-lite = "${sbindir}/label_image.lite"
 
 inherit siteinfo unsupportarch
 python __anonymous() {
-- 
2.21.0

