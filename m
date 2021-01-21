Received: from NAM10-DM6-obe.outbound.protection.outlook.com (NAM10-DM6-obe.outbound.protection.outlook.com [40.107.93.76])
 by mx.groups.io with SMTP id smtpd.web09.3930.1611213907314544492
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Jan 2021 23:25:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=h+0Cx2KO;
 spf=pass (domain: windriver.com, ip: 40.107.93.76, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WfaNk52zxBgPgX7RgFx+B/q8WSS15dIFeKWnqkG/L+/arXfiNKa1he/q+GQq5TXK4S4MZqwmn245NTVleKN4srISjRXF52kv6voH+JdmIrmR3jGzL/viT70Bzd35iszJvVbLqjp0NnXfhvOdRqMmLwZ9svi7z/Ak9X230pGZGZJqz2gFAEtntsb1Lv1Dcd0zom9G5VUIZfHlPbDcqezUXb4zslRtLuPmFpShBXBYd0A68IdprtKg2F90B6wvn0FSFzuGnUagPXVHdwV7GLPQng1wp5XHp5UoctzrDChJc/VrDL+/TZ8AFfYJX7jmSfa/k9+KGuUXh4WdOEfxMaXtsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWsF6NpOeJq3dxk3Y9eEOA1D3K5IYUiITS/LUnCXAJg=;
 b=ROUg4PdI/cAToeREtbOnVSApPAEKSRCIojW4n3vp9zGRuf+lZ+NtA4Ccykq7fCjcYhhNbVIo5LPlljeJReHCvZKMtecjhpt/BY7VEV8jKn0ElJf857wWNWYzRvmEunRGnZpXjePDRvZVyNuzjrcdLxeN6JlmCmpJg4fzgoIxgcCeDT8Ra4n2XJr8KV6Xvfs7ROWUz4go1mORsYSS53gGwjT63UomOxaXjBpElXi2uqC/IUEW26bIjS5ytoEi4Bw7A3jlxJTNr4fSxTbgBtWiCg7NTVOiNKzZqZh2sq5BIpUuIQ2XPuVHeE7FEnTzNxMKKxwj1aqMYEwwkVNyTyPAgA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yWsF6NpOeJq3dxk3Y9eEOA1D3K5IYUiITS/LUnCXAJg=;
 b=h+0Cx2KO2A43p6o2UmKeCmeaiey62c8io2q7gCCMw+5xnu4++W1bsCGsAUIS553LNP0PKhAXj2ZoEsvyvrOt4bkmbTqajah/k7tIKc/3xXa/Y5xFXanH7k9AZXcK668Oq4gkxRcUPfvAMpP6V8J1gtFWu6NVl5pCQ/9OSLHF7Hk=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MW3PR11MB4540.namprd11.prod.outlook.com (2603:10b6:303:56::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3763.10; Thu, 21 Jan
 2021 07:25:06 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::21b9:29b6:fd3:bca5%7]) with mapi id 15.20.3784.012; Thu, 21 Jan 2021
 07:25:06 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-selinux][PATCH] selinux-python: depend on libselinux
Date: Thu, 21 Jan 2021 15:24:43 +0800
Message-Id: <20210121072443.30747-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HK2PR0302CA0022.apcprd03.prod.outlook.com
 (2603:1096:202::32) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core2.corp.ad.wrs.com (60.247.85.82) by HK2PR0302CA0022.apcprd03.prod.outlook.com (2603:1096:202::32) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3805.6 via Frontend Transport; Thu, 21 Jan 2021 07:25:05 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c3fef365-7cb5-404f-ab46-08d8bdddacf4
X-MS-TrafficTypeDiagnostic: MW3PR11MB4540:
X-Microsoft-Antispam-PRVS: 
	<MW3PR11MB4540458F0506CFE03445638DF9A10@MW3PR11MB4540.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:546;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	2rsHLQSH+74Pp2hJXZifArAjQZoYUg/+qCRyQ4q5PpqoQhrUzJRyPhsx+Z78vX6mefpow1hFv331OsCPYES/sP1AHID9+JYxpr38s0khKT7izkULof4h3QJwLm47dAPdxVXuuGmUCvGo0y7EN1HxvUSFv9/M051avdk3/tQXqb6WtVQ5HCSAvhiVWAu30yb5O+tdqPpybl4uUFA5hDXVVpCCiGfLVM5H8OCLLjwFNSlVs89wM+9Kb3tzVRyo4kGhAd3F2KEVa+m1Xkm411AcuWhNRJdCYi4WVqkSChCt+ewRKYKnNQbH5BKeM4p67uOtu4s71yUonX/xDGFqAy5N8pnnwz0atzIMwEf0O93eBnw20ee8uQGowWUNKTs1UA7MAl5pNWIAX6rH2WPXHmKK7ySZvzbI8SFbSvQ08tdr/mlIl0AXWvhD/Nxfwua7Mp3N
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(396003)(39850400004)(346002)(376002)(366004)(16526019)(316002)(36756003)(8676002)(2616005)(6506007)(6666004)(956004)(86362001)(26005)(83380400001)(6486002)(1076003)(6916009)(44832011)(66946007)(52116002)(66476007)(66556008)(6512007)(186003)(8936002)(5660300002)(4744005)(2906002)(478600001)(72063004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?Xl7Ds366QB1bCj1FdFgjTeLaAzsQUs1nz/T/LOSyHwRLUUHeGzJ74ZevlBmI?=
 =?us-ascii?Q?M3/u4+OH4xjLWTHBb6TKSW4BXZv5ZHQ3OldqgAULv0wcxtdpmiJ2r/NtxwLJ?=
 =?us-ascii?Q?tI90fTd+8apgmpo4zUNd3we5FiHG513VV6nbKy28HRlGJJvt1xsxb/JYUUB5?=
 =?us-ascii?Q?gd1J2lasPr8WxNrJsBUlgHAR/yP83gP3FxPEs4Pzdfmzfo1QVOv8o8yHMrIu?=
 =?us-ascii?Q?DyuATSWD6a/vO3NLRs5Z07VKptAV5fiW7q08zAuM1nXT6wWK3OWCTf5/Dsny?=
 =?us-ascii?Q?MHYvjutANttct72MmHmEvbPAnGlz9T6tlc9OfybGc2+FA0yIy4m+pfFxvjJd?=
 =?us-ascii?Q?EuY/BPQTwoX+Y/23EKzEX5o77HdkfSFrXrbOyJcUMUXSAuoStLr8lFfuIzdC?=
 =?us-ascii?Q?/dE0aSNkPcsW80WTIwFKZF2vBYcy96AxntPYTey0Ak1Dk3LexWL9Xvuh146X?=
 =?us-ascii?Q?G0fOv6in/tQHxMBmY0jReOV9YwgtsEa/ZKxHsVRtytWCCJpbS6iJ9bQmwG0S?=
 =?us-ascii?Q?nDS+fB8VYvmxagV0fI07VpRmjy4BMgWeDqFEWLAjxUKEPRYrJ+OIeV/xq15d?=
 =?us-ascii?Q?MugpLm9SnXcUS/hzU/JTU4rMjMjTQQH60mdKH+83Q5emxc7abYeGfjHm9BcL?=
 =?us-ascii?Q?NMJX/YFfjuzksxW2GgvvYYXfgjrotQNCzXCjxPcJ97CI1pXgXtznPryP/UZT?=
 =?us-ascii?Q?WB6S/SO8yAS871FgRDkYob/DesvJPTDwX/lLehlpWHWKlfkf/Fw6oYvYnXwr?=
 =?us-ascii?Q?f1ZHAgTJwPtqPVm7M7MdZIECaRgpXvd2L8vtqsNHgB4+qzYvaamVht4Exr60?=
 =?us-ascii?Q?gFk+ZKhOg6O61tQoCNCzr2oOp3x6nMaTVZzzhj0ktdHKFrOLkQNGENXPAZSR?=
 =?us-ascii?Q?Mo5Ht6K6ZFc5+8BcyfGh6kOgFxWmgs7GG9/WK4s5qiy+RKLQwGtw+jb5loOj?=
 =?us-ascii?Q?vShjwIlTXv4zZpDQ0NTMrI6POVg9Rl3m9Rej9RHD8eXxzoQonqxQTqaTm/+K?=
 =?us-ascii?Q?+P5H?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3fef365-7cb5-404f-ab46-08d8bdddacf4
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jan 2021 07:25:06.2442
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ME9IGoGu950Fl03BRXTvgZY1iASXZpJ2fJpRLfKK/ILHQsec2yOFyDMbZv4Vc2ThQqsE0PJ9ZJK1gztKdVz5/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4540
Content-Type: text/plain

Fix build error when selinux feature is not enabled:

sepolgen-ifgen-attr-helper.c:29:10: fatal error: selinux/selinux.h: No such file or directory
   29 | #include <selinux/selinux.h>
      |          ^~~~~~~~~~~~~~~~~~~

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-python.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index e690ac5..827fa8b 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -10,7 +10,7 @@ SRC_URI += "file://fix-sepolicy-install-path.patch"
 
 inherit python3native
 
-DEPENDS += "python3 libsepol"
+DEPENDS += "python3 libsepol libselinux"
 RDEPENDS_${BPN}-audit2allow += "\
         python3-core \
         libselinux-python \
-- 
2.17.1

