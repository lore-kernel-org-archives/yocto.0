Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.83])
 by mx.groups.io with SMTP id smtpd.web09.112.1615614682134754482
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:22 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=AdgY2QJ3;
 spf=pass (domain: windriver.com, ip: 40.107.223.83, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dbjxmExr6P1ODjG0ChLfXPcUCbSsBXwMTDj04qnQDVXdvKvU3TKJ63VH8lDH7oQNQChG9wr5q/Oqxp69bpMfVCLuK4xr8H0ysqDp7FCggfEE0EwJKtocf8tIDjkmN6t8hfzK9+hqcRVipC9/AT9qikyEU1ppuuK9rnWnDESORQiamKznWCYCdfMrsgHbyTHWB6PxlcBpekCtMMljNKQWlXIll/Jv+myqOYs8rYcTbVwlHyUPk/YKe/dn8eCA6qBgL8xJQZPZZsnvrXAhtRWWG/qWXhfUUclhDRX/HzxuFi8hqndtA0PY0eYGhUZgLSwzfJHCwNkwdzt6ApjgDFR/cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tF2Ub5n8gip/jzX9ePT7kb8lfuCzM7CWzYmyfSl+ibo=;
 b=k0cBqDhSK0uWbQL3Q44aDyynyTNSSD7OnodJsgVopdNdQgqBQUx594mV0n6Jun8NBdZyDWFuVcJS8UO/H+zRpVpf2pb4P3QQV49tHwGYogrn9rl2/1PhmY1mKY1jsNtPyWRTRIBVlMuqpCs+lmRGFydXK5iZsp6aseqSuGg+VRJ4056G0lBe16cQUlXsCuqMlDArvPeAFZ4WXmHYLEeymFmHuD7q49h+MxkHJF+IthfFMCdiP9UdMXaGyC5BUPiyrmrJb9p4vbPvhffYUSlOR3dEsHdJ84U7KqmCGGb8UqfqrEH8O7OP5G86+Ay+pjTGfU2w8elW8jDrQEQ/auBOSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tF2Ub5n8gip/jzX9ePT7kb8lfuCzM7CWzYmyfSl+ibo=;
 b=AdgY2QJ3fBu7UELL95sy4nUue+yWmEBxszSpp7yq7L9ssL0PhTUeNYTXZanYSmdzQ+QfQQFRgp80kCAytFCZ+CuJ9FGamvOoZFNyKFTIYfzE5zICgF3eKDGEV7nxXPIY/YXBpy3Shti9p7OLKE9mgyE80fUlT8ch8PIf3TgFypc=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:21 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:21 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 14/16] selinux-sandbox: update to 3.2
Date: Sat, 13 Mar 2021 13:50:42 +0800
Message-ID: <20210313055044.239776-15-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210313055044.239776-1-yi.zhao@windriver.com>
References: <20210313055044.239776-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: BYAPR11CA0084.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::25) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
Return-Path: yi.zhao@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ab33d734-20ce-4106-12d5-08d8e5e4070e
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB23187AA838FB4DD58804B4C2F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2201;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	SOY8HUgSWsrgoIZQqHTXGJsVqWUyOs+zrPE5rH6FhjkaDTPkaPrWijmghKpcJajgWlW/Lquemmy0lYT2q2tGxOk4Uabur7mCi1j4fM+OwikKq9evY6SONaNJqysE8xPta+NA9eSe/xrB9S01ln2paW999Ua5xoarmWcSZnDeGKQZK/lGAStIesQKj+Yp3HQYgO0NVxhbeMJ6YQmnrg6Mo2yFBsUSXpZ6P63GVv3UvBJHAM1saP2PhHWJGQ38C2d4b19O94xizhX2KVD6M790iuT4tuwLhBdEuVBiaWsztUfTITbBKd+G5++sIQalgSxUG9/KzAQVqiTt+tRdZHUnkndGGhvyWqSkSlkQMn3oKVZdgKNrf1s16zuVtm0odw+DhvmJ7pSAZiUUR78t6tyMXeu9pIF0b6XE7vfyogRXYwsszbPFQf7Xa44zXZk5rzkBrPmY3tBw4wzoWh3IexoffNuvUPw13SInjr4nSX/fzXfLuJ0auumt2etR5YF/KiEqkqhfgGpnkpPwdkbIDwDu3w==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?MnyqqBGHFL2mMLZtmmM2oIqJZhm+xFUOkEpz3cqQYWBKzLs7vtSvf8eoSY9d?=
 =?us-ascii?Q?+jEWTedHSbS7GmapDtz+QKJAJ0bKeKsZ2qYU4VhMcKKOS5+XyAuNOlTtl9Vu?=
 =?us-ascii?Q?EHriAGhfanDtSbApYXtq7Xo6Ukxf/4KUeBMH5/vFnV8V5KhtA4hdvulQIKce?=
 =?us-ascii?Q?JMnqnr1olKU9rZxa0V1lyT+kAEFKmomMdakZQj+m6i8+m1W8wDk5XsgaLD8s?=
 =?us-ascii?Q?r59fj5alWA0eUZzZVpa2hsNYYFbd3LyQ1k67Yyxjf8tvUjxacyXRHXIOQBll?=
 =?us-ascii?Q?qiNRntBmeHSz2kVMhTvYFRzq2yNbnMOEBFtmS+FOQwLCTUNsXtNllxJ1W2S6?=
 =?us-ascii?Q?Du5TfUT1T7YYXD9ad9bsV2ArmXkkhsn5kLyEfuPs1k6E7gin1x/zXOG6fKcx?=
 =?us-ascii?Q?ohfaAaRa7JxKlsARJKbRx8iV0at/ZsDNfaU7QGZjIbfxydYITz6ElIsPv+w2?=
 =?us-ascii?Q?Yjytjw5We5CEzs29N1TQCNUXUAj0eTlql6ONakE1FXxvlU38WeEF1Li8UoG3?=
 =?us-ascii?Q?swqx+cXI5Wyn42EiJq5yENe0cjw59XAQudIbO7ceg8HXaIm3z7Dx/AzsFNSa?=
 =?us-ascii?Q?//SnDIdNVt3z1RzN98VNZXvpfOY8CYGSW/EIe7hXtoMe0MtlCGVN8zOu5Ql4?=
 =?us-ascii?Q?QOG0NvhbD+RE+9C1rJsTRBlEhT+z2qmt/DazajgEJvp/L7VUmhCx+VWepvPK?=
 =?us-ascii?Q?T9B8l4s7DNEkexjHZrJhF9iXkjuXauHLVpxClZUfq1TukiKqGHWbbeKmWXha?=
 =?us-ascii?Q?VXcPUMeJV4QtbQLdFsydp1cVq5uyhMGlCbXyP1dIyiIGHleXcoagwZyCJhfO?=
 =?us-ascii?Q?ETd5SnnMDYHYbyHvgCjnqA3uKoJlBbGI2zGsg/71nKL1dzBVpIEURghBxi6k?=
 =?us-ascii?Q?A4hGmYddH5PtU6//kJHDDbMrXCGtG07RNBbJlWMilJgbHgAZbZUb0jniyo3d?=
 =?us-ascii?Q?NdM+g8ors/GK6i53p0Von8yym5VC+2tp1qCDFauRfbWuRNnVKnp3Dd7wXiWm?=
 =?us-ascii?Q?578SZTxIi/V9KThcAOCZ0RgvySzwjWcG5BmrVvlvVf3uVuJ31PRAFXCAfHiw?=
 =?us-ascii?Q?uNkgzS315Fa7INwqxd8AH1NPdSGAiw8CtVdjiyTY4BpVXALsupbwUBdlH/A8?=
 =?us-ascii?Q?vCYW+dcOFhUHq8OWLGP8qiHejvMCmN7wvf1q4gTwOBNkQyQsThnJNklTNfIu?=
 =?us-ascii?Q?S6q58D9vdaziv5H3yoOifM1sT1fwxuz0M5W0CzsHAJLKl91Jj95uHv0tFtNo?=
 =?us-ascii?Q?h1OqCABB2uydxU+8Dhl9rYAHMNhig7FavR76XkJNBSM73XTn3f2hF/Mlu2Xk?=
 =?us-ascii?Q?+XvDOlzc/A8ZIxl6HTCUYj9r?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ab33d734-20ce-4106-12d5-08d8e5e4070e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:20.9947
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Xl9mcfs6THIYkBlIAbeD9uBloR7Hufk73s6DE1yldyhy3gSb3TsE+lR2/VfYJRSs87KenuN6AUovWbHJVeEMGw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-sandbox_3.1.bb          | 7 -------
 .../{selinux-sandbox.inc =3D> selinux-sandbox_3.2.bb}      | 9 ++++++---
 2 files changed, 6 insertions(+), 10 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-sandbox_3.1.bb
 rename recipes-security/selinux/{selinux-sandbox.inc =3D> selinux-sandbox_=
3.2.bb} (77%)

diff --git a/recipes-security/selinux/selinux-sandbox_3.1.bb b/recipes-secu=
rity/selinux/selinux-sandbox_3.1.bb
deleted file mode 100644
index 8a95044..0000000
--- a/recipes-security/selinux/selinux-sandbox_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "d38fda12b028c06f751be9c25e309c6b"
-SRC_URI[sha256sum] =3D "c79b958e2f64570a59e60638fd13c15fd77c7c2bbac31c7ad4=
afb03718432b84"
diff --git a/recipes-security/selinux/selinux-sandbox.inc b/recipes-securit=
y/selinux/selinux-sandbox_3.2.bb
similarity index 77%
rename from recipes-security/selinux/selinux-sandbox.inc
rename to recipes-security/selinux/selinux-sandbox_3.2.bb
index c8e335a..2c6a823 100644
--- a/recipes-security/selinux/selinux-sandbox.inc
+++ b/recipes-security/selinux/selinux-sandbox_3.2.bb
@@ -3,12 +3,15 @@ DESCRIPTION =3D "\
 Run application within a tightly confined SELinux domain. The default \
 sandbox domain only allows applications the ability to read and write \
 stdin, stdout and any other file descriptors handed to it."
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
=20
-SRC_URI +=3D "file://sandbox-de-bashify.patch \
-"
+require selinux_common.inc
+
+SRC_URI +=3D "file://sandbox-de-bashify.patch"
+
+S =3D "${WORKDIR}/git/sandbox"
=20
 DEPENDS +=3D "libcap-ng libselinux"
=20
--=20
2.25.1

