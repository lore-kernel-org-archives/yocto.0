Return-Path: <joerg.sommer@navimatix.de>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06379D711C8
	for <webhook@archiver.kernel.org>; Wed, 20 Nov 2024 16:37:46 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.137])
 by mx.groups.io with SMTP id smtpd.web11.18252.1732120657413954275
 for <yocto@lists.yoctoproject.org>;
 Wed, 20 Nov 2024 08:37:38 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="dkim: body hash did not verify" header.i=@navimatix.de header.s=selector1 header.b=S4UiVb0f;
 spf=pass (domain: navimatix.de, ip: 40.107.22.137, mailfrom: joerg.sommer@navimatix.de)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XlYPpT8+BF1nmHG+Z3vkEqtmkC16eonA4Z1PYVU144xSAnGVQhh56HBN/TUwG8YZEdZHGlZ+l0RInjZFalyVThCcl0/MCYyW/ys4rN1oSzGYfApI9pgznQ7YUCjpH9o5LejAVc8o9/IDRX/mxH9UuzAKSk84emJkJT+lL2sTe44p3iXtve9v1VNOphzI62PaImC7bvV+Nlu4fkeAMqp5bf6bKfnIXcxwrifaNxjd+KaE/qoDzCBwLDYJ1xpOKBIDJica47HBGWc9Ya2ac4+6TB2K+aIA/vSeL217H7Vp2Apyr8Bg55ttPZCfROy4vAw/xd5jrbA+LGGUBtitjaccog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LjgztZhJvlM6rhnaQvSP56mK+pAlWZ4L79prOB0B3WI=;
 b=fB6n45DuT7dhyfB+4p1ecO3yl8tan3p4a8nvajDde60dgYQnz/lpLxITLMlpHM6/U0ocUMMT78YR7Yao5vDw84n7bdKfWzx5gnD8fysWwJiZeftVxUffM4WZJQwExT6suJkGDaaVhu1uN7OHo0KiiQ9SUVo+Y/OMjDyON9WJLMrsNpjf9L9it2SUjUr7DjEPjx0SWccIbH3WECV5yLZo5WGYeJLpDkApb8+WvbrMQ3S1fO4R77UmWP/wApHEbhIcG9Cly2mswukF9Aq7n97EnoIDPCuI8oTHE1vfC4eFONzohAve6Qs/hXEw3u4oow1jqBF7vVh/5X3VI7iFXCSRPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=navimatix.de; dmarc=pass action=none header.from=navimatix.de;
 dkim=pass header.d=navimatix.de; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=navimatix.de;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LjgztZhJvlM6rhnaQvSP56mK+pAlWZ4L79prOB0B3WI=;
 b=S4UiVb0fnbETylQj4r4MrCUgQvU0nI2wpgefdnruCMbfoxL81q8IBB7dQOF194sXDm4sN+8AgBOn44vdfZN+LZjrKuKpoufzBMO8eR5uKUKxwbx8mQsSSeSIAAthueSHPn8rE0zrBraeiJr4qC/LgarHQWZ6gHc/94vmDl/YmAM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=navimatix.de;
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5) by AS8PR01MB8123.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:37a::6) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.24; Wed, 20 Nov
 2024 16:37:33 +0000
Received: from DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7]) by DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 ([fe80::d520:1b9e:a30e:69a7%6]) with mapi id 15.20.8158.023; Wed, 20 Nov 2024
 16:37:32 +0000
Date: Wed, 20 Nov 2024 17:37:30 +0100
From: =?utf-8?B?SsO2cmc=?= Sommer <joerg.sommer@navimatix.de>
To: yocto@lists.yoctoproject.org
Subject: python3-ctypes pulls in ldconfig when no DISTRO_FEATURE
Message-ID: <binf5wyli6frlazzgmotontazgt3isp4jmkbsdgr2yeoaxhkqj@nxde6f7dfkuj>
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
X-ClientProxiedBy: BE1P281CA0288.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:b10:8a::12) To DU2PR01MB8293.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:2d4::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU2PR01MB8293:EE_|AS8PR01MB8123:EE_
X-MS-Office365-Filtering-Correlation-Id: 87888ea4-aa8f-469a-264e-08dd0981a1d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 
	=?us-ascii?Q?EkDZUZ+ZCkc+TYwwGX0IK6oNyF5p+DSG5YpLKvDRqZQzyP8t09dOSAAIiw0I?=
 =?us-ascii?Q?5KzRZKHA/rzIlbgVwAJ2wKOipAth5MCBE1OwdRhSn60n9xavsO/0WDWdbtED?=
 =?us-ascii?Q?M/A9ExpDwa6rKzLDwXIrNoNfYYKFEEnNs5hMby8OqWaEPnWyfpwj1oLN1wdC?=
 =?us-ascii?Q?KgFEDKKMa6nQ3+lGzmMqFCzIVRT/5SVrYRWKmGMnovXd5lhaQOgtBUpV6equ?=
 =?us-ascii?Q?0Y4WvzgNd1m7OZg1kqmsCHxLnBkCJnnYMQuxX151rGNXhbRPwi7b0kHjt97I?=
 =?us-ascii?Q?CCmoDg+rCsMdgaJWMWj1x2v2haBnkmZlLJaJ8Jk53j0QB5yTgNWVIlB1q1ke?=
 =?us-ascii?Q?Mb2Jx9p8pIQcHLMNJ0CsqzzJEw5ADdp+soo+igbiKr+KIP1d/FrqjxwDcG9O?=
 =?us-ascii?Q?HcvyMSs6ct1zNVrv/+V9UkOQd7hpB26tO25K6p0sZH2UQfsqrCnc4rZXRREx?=
 =?us-ascii?Q?JL+U/MBoOcFTbpjQBi26+eO51Y30IxDnqURd2t5Y/LUi33Nn3ygAkJwIhb38?=
 =?us-ascii?Q?3ImUp+AaShVJWCkrQVaWiuT/F0sM/ACSt4UTu/QXsseZn6CmdGciNkVom7UV?=
 =?us-ascii?Q?rca6U+A7cPbbHIpyWPK6GCEVuTcbCZIfouSVMrZvLoMqjw+TTVVAKyympYu1?=
 =?us-ascii?Q?sZmIfe7QoqMiUaskWgg/J9S6VRiak1NOrd/ZMC9jJLmZAN+inlhIAIFTCiWW?=
 =?us-ascii?Q?rKHkw8ThgjXDZZMcmwaWBxe0lCfD9jA76/A2ZYS/M+NqTeUjvlx6CLj+6tlt?=
 =?us-ascii?Q?CjXvCSg548umgoxpeJcrQvJdC6bRev9DMKW0TnmtxbcDI0a5VqqJXLLX2lYa?=
 =?us-ascii?Q?fyGOqMuhcbkBbvEhGT33Qg1T0nN8zaLi1ZqN4usHRKsK0zHR4R17WCeL0Gpr?=
 =?us-ascii?Q?2My2w4UbgwT1iVw2WZj57KtjJeK7ikiw2hgKP1eb/QrAmDrIbeuwqa7Tw+Vf?=
 =?us-ascii?Q?KA/sRuapYd2ODfr89WebXAcmswNt/yIdHAkMZ/CzLUIErhyhlhPMbAoC+6Zu?=
 =?us-ascii?Q?APIv5h2d34jpWbUal41RnE8PftpjZ2laUKjKFeQcQmKUO4U4s8beh7GGEbc/?=
 =?us-ascii?Q?XL3OiFWVhVlZgDiTY2rMrFE2Lg76fyHyH0wZo7V07pw5YXrBiT6sf6jltQmg?=
 =?us-ascii?Q?q29KHY5iZhD1Qe+TUDkXniEkUh76SycUkbk4A+k1QmjeZyRBz9lfVqteGcAL?=
 =?us-ascii?Q?XSpIkGF2fqVcxmnHOzFRZGFLNcYdPCacROkEFphK2Wb/2arz1gbkikgbyBiA?=
 =?us-ascii?Q?2VLItl0uiOHHw2n2NakpfayajOJqLc/NBZGA++bAFS8BZ7uvjeX0bRVuLO7L?=
 =?us-ascii?Q?eDLbvh2iyHKQ2saOWYisADL5?=
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR01MB8293.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	=?us-ascii?Q?6BmvBmCKUbjVJPVYP7in7hGK63bSLSxOsBzVstOSAn0rp/pH74TOfhfkJJyC?=
 =?us-ascii?Q?DVqfE7RJsgxjnY99jYxf9xPQgs3RkHrS0GMP569gHqiRmzQB1OgxABqnmro4?=
 =?us-ascii?Q?cYzYqkvZOWVOfsv9Ot5Z7gnnqQwYQMo7xfzoe90fmBzYsk1q05jlpthBYjCi?=
 =?us-ascii?Q?IY8xaRY6p42C8B2TkEtPVHA3GZ7ODdi25RxSadn0vuLJ4BF8JlAzriPWHhjc?=
 =?us-ascii?Q?OGe9I/v8on6n4I8IwkMHNIXs9W4x4yA/tgjDnn/EfeOQyV/gj2rS8byMG1je?=
 =?us-ascii?Q?OnTSKQGQBS7NdQ0DBC6S1bJBnC3cjYTwZcOWlIGpnaNghUzTFkLXmbVyIlvK?=
 =?us-ascii?Q?9jelvDaRzJZbge5qWMG14z3qjJA4EFAXmtL4b+W/FyKzUlTfBvk0A8+Fmlqq?=
 =?us-ascii?Q?sfaiYJ/JdhNVxkpZoRgII05Y7cjidyMY+ACXNY2yuQncnlvR/6dYhdozQAtC?=
 =?us-ascii?Q?FIRl6VHvhVHdt5JKdscgWg6qBWgd0aa1HrCNivdrbulsK/J5kF/VB/gq5wy5?=
 =?us-ascii?Q?OSPgK9PcZv1uSmY0mFsUd8neq7e/ZviyIXVWF6sW2KcpSJvdV/FydC2Q+r4y?=
 =?us-ascii?Q?Wo+06b+fv1VpVOaS8svgbJS3mlsAm1O6gEYYSxmLbUJSBFAAiaTaLvVVKWkc?=
 =?us-ascii?Q?CWeY946lWI6fIyBJS7revGTehrwwkpqLgF67Uh0vMXAauZEp224lM+Y69JpC?=
 =?us-ascii?Q?yL1BBTzdpxGEjsgr2A+CEI3rt5KH1Wx9JsjfcNktheyZbDYTmxDLVbC1FW0T?=
 =?us-ascii?Q?eaeLFUCq+jxEtLRhOq791CBYsNoR7nD/Th9/EFUSnNK31nWSAvcOkDsN18Xg?=
 =?us-ascii?Q?kwG8qHCxxjBYpsZhgwdpB60Ivn9wknJtTicvw1ugZN0T95uPdwtKA4vMl1Sy?=
 =?us-ascii?Q?zvLEckd/7CPd9Xcq5OcJ2QhtHMJpzOOXDm2VpSRSGLUA7NvVs1R2MZcDx5fv?=
 =?us-ascii?Q?ORP+B2572voM4IUXpaoV4MlsEu+ifqEdn0I9iI1ljTVPANdwXtB8xLQx2uIQ?=
 =?us-ascii?Q?C/hdU309Oa4a30GkSdVNwWnTIpGt4T1f3bztd/88f8MnR5qWtAXtJ34GWmj+?=
 =?us-ascii?Q?/xoQy+mQfKhehcYAL2QtOB6gKPoPO7rHBI1JSnA+/6OsgQ1uxzKRT8QJ79Ex?=
 =?us-ascii?Q?CLlLlzWA0ltzOZOBYKqHD4m04U9lRtGCED1XSxvXHwiOwKhZl51NbHRJUaf5?=
 =?us-ascii?Q?mavGTBA/8dpTM2VAWc0A7neetlNpQ+bjvr5wa8C7MwJUWHy4bGa0f5SZpEg2?=
 =?us-ascii?Q?LO1SKVi/lDMzynSBBUsNqq4V5nRiFdhT6v/Fo/dLQdDkz8LYhN0suVAlFcA+?=
 =?us-ascii?Q?L/3fxL/hedfFOrg/ZpH9ztdUBlqhKkN1M8f5s35777ZPLfqM76yka8oF9Tsr?=
 =?us-ascii?Q?hDVWuyWy5mmuIW7Ec7XZZ0GnCYIXLtlhytL/kpLjXfqtj1oHuA2VBVs/2QMG?=
 =?us-ascii?Q?LFC3HXPvBp3+a1MT4HelYJkZVgT1fhxOYJRTvSQSnntWZvRaoC2tDI3E+qub?=
 =?us-ascii?Q?aFkOiybP+L5wJk3fzS0u5RurAQfo0Kfklq2hCl3nfdkT4K/bhvItGaM3Bv38?=
 =?us-ascii?Q?18rZd7yssWXDFuLQrboPbZIRzSoDO4g9G1mIrzDZyNW96PEP3cJFRdB4OIlM?=
 =?us-ascii?Q?3g=3D=3D?=
X-OriginatorOrg: navimatix.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 87888ea4-aa8f-469a-264e-08dd0981a1d7
X-MS-Exchange-CrossTenant-AuthSource: DU2PR01MB8293.eurprd01.prod.exchangelabs.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2024 16:37:32.8784
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: c87b4f54-b992-4813-8f3f-4a876324197f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2++uO5mBIu368uulUq74bF+ZBX+KMhHjlX6T99NkUZi7Bautw6tXVbGIp3hkHognxTAL8Xm9/zBdIiNwr72GxCH24JZLjowmliNPvpdG/Kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR01MB8123
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 20 Nov 2024 16:37:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64315

Hi,

I'm unsure, because I'm not familiar with the python source. I've removed
the DISTRO_FEATURE ldconfig, but python3-ctypes pulls in ldconfig
unconditionally. Is this correct?

Shouldn't the code in poky/meta/recipes-devtools/python/python3_3.12.6.bb
look like this:

RDEPENDS:${PN}-ctypes:append:libc-glibc =3D "\
    ${@bb.utils.contains('DISTRO_FEATURES', 'ldconfig', '${MLPREFIX}ldconfi=
g', '' , d)}\
"

Kind regards, J=F6rg

