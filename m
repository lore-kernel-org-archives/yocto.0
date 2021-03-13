Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.59])
 by mx.groups.io with SMTP id smtpd.web09.110.1615614678802013472
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:19 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=TtgPHebC;
 spf=pass (domain: windriver.com, ip: 40.107.223.59, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RjX6pB+AZZP+lHzZMBzKA5mKRDqu/4u04PA4833R3rN9s1uye1C8MSMUYnzQbsr9HU2e48RYRVxxXuvhXCGqQqDteYEmc5rplmIC3qb5AjxK/26wMNCNPw8jQ/jlMJidENiT4ujE0xjOSrERhGsvNZlQ+NTnmP50INdX6dwbf1uxDQIYUvJUYPYjLGE3MLImRMmYzLCIwhFC3gR+bx9SfPjfwBUuVxugmdP2iMdwawHFAQ8lHT2RpLKQXDqT44w3Zzu9cMGiEZFbYZBksobB4UI45n86BpvffIx/8z18vc+mqpVcbcfFQVf4l8oLjQDPs3/70AW0o7hs6gby2wEXkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sYm6kdgXXcuSWLzXcMc87V9DSHn8v4/2Aqb9mjgLiE4=;
 b=iOHaP0RMKljTObHdQAzUHEoM6DgTAUEuJuW5aHSEYbTJSDgLrRxvLczhA0NjqDRG59dSa/Uni0rLjeYi2K67hxfyOPUoOgCoWcOXcMXNjqzEHsthvffx827deY7I30I3LUG+CXnjDIg6OtaMGNi77Gs48aA7m8KQSjZUls2XI1f2/+2LARoAvVKEDD8lxs26yFBpFezxhf8Lld87h9zBZuWb2Ta6ntLd5qiRfkFQOCEpuzhxjUA4rawv3pSPnzURibwRWrDF5Wj/ktCFWEQuNN0yyKYatdoV5Z0qzJb4Dsg98hwzHrpKd6xHje2u3EJpOYiWw+Fh40Di+OidBKZHuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sYm6kdgXXcuSWLzXcMc87V9DSHn8v4/2Aqb9mjgLiE4=;
 b=TtgPHebCwU31GrACJlX936I1DxIU15NW2yUNpVRYxR0YK7Hp4JQvXvWIwb8yiXAdmm0o/MFXA4dbsbXfDo07Id6h8rGUbS+WxY2/RQfZiYZJgOcuZIsugJJqau+gAtpN2D/C184s8NJmKCPQotz3BcNJzaZ9YGuVvWoVCI1z0yk=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:17 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:17 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 12/16] selinux-dbus: update to 3.2
Date: Sat, 13 Mar 2021 13:50:40 +0800
Message-ID: <20210313055044.239776-13-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:16 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 83a4c5c2-1a20-4a23-ea1c-08d8e5e404fe
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2318341F10F6E6F33CE235DFF96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:421;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Wxsa4YVsXl0XyflwZBotGyNZV81yIF4eGDO+Hq0e0mkHjv38MZxy0ZN73S3ddB/dfVuwS6732xNgcDMypXFXDwpPIWIdeukvmINUWOtYEugKc7w1GO0o4qaUm8eIp6GMe/Alpjk0c2SsEnph41yrULlLhwGLDyUjXiSlZqvrYXvB9PgHbcFpUHHf1UVTSUdu14YDPdeS5e2X/2Du/JOmamdQYuN7Eka9GSRkOWyWRvcRgcS1yvfWl5OPxScCqD9/D8YLi3baS4K89GHIDwclQaqp90NZ4V27bJ+Ef9YoZD1Wq3TsmVc/XkzwjmDjzAFWXD+XI4ar8Y639zDdsaEco30ufBmUz+LclEty5dF+xpgapKgCeB2H2eWqVTCp8qjt2FXbuigwcpxP4C2H8sFL0r5bPyCUozoJ18cDZTG22BavjT+Ow6HqLC/mSEWLWjXrmsRPrJK3cKLaVyep4xaL2VDe6gZt21QRizTP0PI1N058TDVdkFpfadcDL+h9bnXH6wJazC6b8SrK+eFUuoG7aQ==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?+5O8+Ke3OXizzsJFNQLbmiPU1ZEgtTLwyD44L9WArosHxWq6JoDlnMWjmgmE?=
 =?us-ascii?Q?7LqEvZ5Gn6LH2nTtcfEONpt/bxB7Mgbc7qPCQkJrRuxli4ZYzpRgMZAR+Rwl?=
 =?us-ascii?Q?13UrWFFiIR/gaGDJuWXWBh9pQVj5SnnDCmmJ1ZKl5Kxrzpf/gL8bNsfrgPrg?=
 =?us-ascii?Q?dB5HkY9pbYdeUSV4fFM/szyy5ZrBqWALoh1vq3MbpKQcSJhIsnDeruz8YC9c?=
 =?us-ascii?Q?gFKLNE2yltNEW3eLGisHojoUFh9Mbl4rM39XutP0gYJYL4nDtyN8Y3OF/oDG?=
 =?us-ascii?Q?ZjZSiVer8V/ZPwgpIx308yr5VJ2mGq8VnJ42/8XIoZ06fax9WjUxRhGpRQiG?=
 =?us-ascii?Q?5B9UgKSGt/Bndbo36yl9g8I3ciSvrHrTT0+j6PIIp+czoHZ/2Ia3rbxv2i1Q?=
 =?us-ascii?Q?9iKzafO/9ScsqJmjrELA1lBrX7YNKq+aI3GGF7m/j8TCu6KO8Y6kqjw2jOWq?=
 =?us-ascii?Q?EIIkMylDz/WErdKDa+Buz8To0D9Goux5QOaG6W7F9mcGVPxzs5m+D3UCHBd0?=
 =?us-ascii?Q?/Comm6wo7Afc17vnicnNWUzZpPoR9mDs/IBOVmer4EMMCl7/2MH+IKfzfokS?=
 =?us-ascii?Q?QQwZZM6nGkqyGNRLnzgk9hupUUBGQVw3grpWyLNsncLFiDdF5918Xew7PlhB?=
 =?us-ascii?Q?kJBrwt58YF/2UcR30IFP76HnansFzkkUKGYYFrBApzYl2jx53gTeFuNFl60w?=
 =?us-ascii?Q?91fN+dIcPJXDlYW/Q4afn7MpuqXi17YFd4l+FhMqPfBWDmb9Dgeue0HWcOZg?=
 =?us-ascii?Q?wZYn9J2WsHw6ETLmDaD3OWu0N1CEwuclxJz/vQhMhdi5uah21lEFaRfJUqbY?=
 =?us-ascii?Q?ANyxKes3gJsAR46dinO1NgrIF2wfmZLPKp4NTaL0GwHXC9+DtRxbZLcaRh4x?=
 =?us-ascii?Q?GTtSFNV0aH0s/MPev7SopdsBK+OSrW5U8plyFPGJCHsDa+h9DJNQtjLAFmW/?=
 =?us-ascii?Q?rA+25FVl5F/Dkm44RQhKv9hY4jl0DVVvmd/BzoE2G5LE0twu168x5q5P1Vd0?=
 =?us-ascii?Q?sjqT2shU+mIPZy7Fz9r6Sdlr+vDxL0YfyiQyd8tIxNxEM0sSEb6VClE/HwBP?=
 =?us-ascii?Q?QZMNjNRHjmxUtPQNm9Z8iHCIUU8yABOnO5YHh/9QUbueUyPLUp29Sc7vV1xw?=
 =?us-ascii?Q?ODhbNZflLlfsLM1kVW5jaYqUbhREjgNH8fcgbk23HXmQVZAwii5FKdMg4KPp?=
 =?us-ascii?Q?E/0SzHogqcjsKjiblCorfkMSCyYW9aTxip33vAR0zu33YaV+HNvOvKfTPmL3?=
 =?us-ascii?Q?z/IcpbfFVHKvoDWqe5O0iwpBLpJdxeLNVAdkhgSkGJ1s/yVbz1ik+lIoaXLr?=
 =?us-ascii?Q?pXJEQrYBiRZhJaCb2HoqfMwF?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83a4c5c2-1a20-4a23-ea1c-08d8e5e404fe
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:17.6235
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pBHxlWXKQdut2JWRz3zr2Udv2N1DgWNsHW6Cl/6oev/3rMLNjNzxExaDYoy7qG5plW5GjCnulbrCR82cAf9JAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-dbus_3.1.bb               | 7 -------
 .../selinux/{selinux-dbus.inc =3D> selinux-dbus_3.2.bb}      | 6 +++++-
 2 files changed, 5 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-dbus_3.1.bb
 rename recipes-security/selinux/{selinux-dbus.inc =3D> selinux-dbus_3.2.bb=
} (75%)

diff --git a/recipes-security/selinux/selinux-dbus_3.1.bb b/recipes-securit=
y/selinux/selinux-dbus_3.1.bb
deleted file mode 100644
index 04e7565..0000000
--- a/recipes-security/selinux/selinux-dbus_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "b6ad8b3d8497782c6ed480514dfc8ee8"
-SRC_URI[sha256sum] =3D "61f936d200ff8302c513883c67bb7c4c496513e78122954cbd=
33db62086a06f2"
diff --git a/recipes-security/selinux/selinux-dbus.inc b/recipes-security/s=
elinux/selinux-dbus_3.2.bb
similarity index 75%
rename from recipes-security/selinux/selinux-dbus.inc
rename to recipes-security/selinux/selinux-dbus_3.2.bb
index 62e45b7..bc34f89 100644
--- a/recipes-security/selinux/selinux-dbus.inc
+++ b/recipes-security/selinux/selinux-dbus_3.2.bb
@@ -1,9 +1,13 @@
 SUMMARY =3D "SELinux dbus service files"
 DESCRIPTION =3D "\
 Provide SELinux dbus service files and scripts."
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
+
+require selinux_common.inc
+
+S =3D "${WORKDIR}/git/dbus"
=20
 RDEPENDS_${PN} +=3D "python3-core selinux-python-sepolicy"
=20
--=20
2.25.1

