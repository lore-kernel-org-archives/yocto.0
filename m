Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.51])
 by mx.groups.io with SMTP id smtpd.web11.117.1615614680520204719
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:20 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=FFNbnMab;
 spf=pass (domain: windriver.com, ip: 40.107.223.51, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HzliUGyl6SF5C38wO0EH2CaJ9HHJvuY9lewitGdxmmnaNBeFrMxtM4F0B0Sa8J2W5BLoyy0/UuafN8cH3ko76v92oqVu3EDMgcy9h5HA0pSyrNXeWT/yzgHtR9JGID/cwvk0jeX9S+e/oHfED6gTdKOC1kyCNZwOOcS7LR8GVTtr+gyercWlNZGX1zclHQ9HwY4AsyhatJnqTTEiOE3Vsh+MFP2a7Jx0dI8rTi/whzhGPrGZTYaoqDIfi3mzNH+iv7ts3/aEF+cz7yn1zMhs7gOi+S6cZ8U62ugZamx9eaDPPXA+E8Ae0OIid2QhkZc1osg8HR3FdMl/KxlXStrofg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EiC12roRThuK3otywOoZjUXghpP6EN5o5IIDAXMZ0CI=;
 b=eRNI3Igc4E5Wt6r7ECig5Q0k7dadEq+5MxhhXuLCRyTs37H9cwfFvATXdNWveGTEC1BKpvyLyZsVdhibUQfHFEIFsNj+Z2lezbPxZIkZPg0WjWkiUuUF5SeYEVknDCov2c5IH7jojhq/xuOz5lXZwptFPZdE4vuiTinRSDhtrfClssmIkbAYzgxS/afLh5EdGDjwcJOvbmrpoS72r1M1xo2IT5mfU5yD7o1LUkgzRWu7lYW2jWaWhu3lNI8vbLL90XcRcOOxF1cXaqxLk5glTXUSi/Vk/rgtb08lh2JNBOBygT2GggK283GOnmBNROB8C1fo2kal/VQcpp1M1qvBPQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EiC12roRThuK3otywOoZjUXghpP6EN5o5IIDAXMZ0CI=;
 b=FFNbnMabpqJkN//G7paJuZybqiR81/PQE3L9gCSU8mDQxXvAQ7eY0DY1IIoe5vwfJuiK+14uoI3aIJDDbABjvOedM8tdDkp8a6drkO5sLnasR028WpKeq1QZj9mkreYlRD/GFmpgf4UL48pJHqzx4lSc2vHRKo6g90xOaMsbO3A=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:19 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:19 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 13/16] selinux-gui: update to 3.2
Date: Sat, 13 Mar 2021 13:50:41 +0800
Message-ID: <20210313055044.239776-14-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f014655f-000d-4bd3-64cf-08d8e5e4060e
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB2318E5105105DC136F26B3DDF96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:421;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	VO8mPKOnfsbAdDkYoWSI7yhfhDgIWAS4GzAsSdr1sVGO8WSo5uCGzJvtf48Rt/RiHBG0s1156iLRR5QbukYym4luV5r5wrvpqv9R4aTIX8wdfUYVQrUikFHlwCEfKQigIE1MwTTnf1ZPsaYblv6ULfEnx9NovlUiSNovGsD2tTi69DP0bZ0yyDSA0v9qhSx+8Sjomi93Wk2/5e/gukkmBPJe5JHDEfjfhE/eSKQ8joPZ/fDrHXHr18fD6gTYzy4Bj33mSjCoeCJwmiW3iXBUYk/5T3jp1BY2IM9nLRFrpdu1OD7sYzB6rTd1lFo0tASMXVvZei6JRg6Vw58A9owUakP5YiIGHpiO+ptdGkUQGpAA7DQ4pAHmdmms2f7ablaLoppHyYPg2NVVZgKA51CBL1p/iuJwza47X2sshRskNxhnDpLffvwOvC1lrMcNkUgrWGRDnhrovzFWyC88uj9RIgnbuQMdtkCn/6dRUokknS5+Q48rm7XpK98hrwOvlpkk4UviVgM6QuxJwbzTSzj5Fw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(15650500001)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?jXsffh6QKChBLYEqEki+8tGUSg56sAirjH/yd7mWuQgwd0Y7eoW72JksTE76?=
 =?us-ascii?Q?kJhgXjaGt6kVqdDb46HS95LRVlYjlw/Xd7VP3rzE3F16Vc7sy2fcbkodiPgv?=
 =?us-ascii?Q?hUhSV0ad/TAU/kUhBSg468aqEEfVHvYZw0FXA6NFlNKwquv/RcMopX8Jlsiy?=
 =?us-ascii?Q?E6ArBAYgZGO9t+XMPSuN6oOE1T71bPGKlyFBVKjEAhoCGOM0DM+Agpl/wA8d?=
 =?us-ascii?Q?Ljun+oc/nKmyMNw0qw9RKdifE/knhbgloePAyFs0V10dbVSx5uhJA06KZZwN?=
 =?us-ascii?Q?s5Jw7de3msYiGFHrg+xzpI2X5+rhotw3mYH2jJOnukCZJVZ2Z5J8XW02ND0+?=
 =?us-ascii?Q?IuS01m9euecmQJ4vIWENpTHIO8NldaMOPkTxEpEkpRAkO0L7ZMCuBWY7N8nt?=
 =?us-ascii?Q?iqoMpGbdao7AewNAjYhJmvnk4/Zom/MM6ZRPJwA1K99WYjO2GYErfT1fBXHb?=
 =?us-ascii?Q?5luMj1h173yDshBsVkYxVp3QdKDVmgjhX1xuIWvc6AApy3OBG+ibA933IgM/?=
 =?us-ascii?Q?TBjEXhiDUetfMMLcsnB/sSUOP4Wz2cWLN7fafX7QcIT4SK+CFO9zbJYFDMGs?=
 =?us-ascii?Q?JHPHRc4FtvG6+L0xPJw6Z8jwyH1CEuFVCxGs8lp0F5HE3Woi0frIVZJ6ewCi?=
 =?us-ascii?Q?7n3ENkmaEF1N/WAkLtiz3E8FalCCSkuhLuikEFcBQhLrU6YprIpSklulz9bV?=
 =?us-ascii?Q?sgu+tCQ+pxHqryLMPqKcryy+yRxicxa6QxQRHJau0jFYTaE99Qu7PW3/CxLI?=
 =?us-ascii?Q?daO4QeQXGgpxBFJmLFLgV6+WlTh3cxnpq3L8VlzrtBW+83aPhp8Ym/sUhSUw?=
 =?us-ascii?Q?z+R7pxqfhuS3IINBw91Tyb4OBskN8wI914Zfn7i99chgjnRML5Rt4CaQAgre?=
 =?us-ascii?Q?kbwFt7f3AjmB433GeTBcQd5eZbrDhA4B8ar5EM9tk2JyLiM19kMLW8kTTlvZ?=
 =?us-ascii?Q?on6c8LTNUCO27UVaZ5YkOALPQnhD8G5r1wNJVA4CDzTUVkKgxU57xwaEtu28?=
 =?us-ascii?Q?wE+RFb9dtX3/0PqfKfJ4nnbEkYRIAseEtOzjGdanpofuTDmBfaQT+W3u5amp?=
 =?us-ascii?Q?KUSafOhRPSN3wjI/IRqu27JR+wGUPMYnGOaxv6J1w5zkkuTtzoUS9i8n/vlA?=
 =?us-ascii?Q?FxG3gugWMt0mjM9fuivTk8ofdcKOVHxgG6R97DvdGW46z+U7aPEC8UFlZDeC?=
 =?us-ascii?Q?Qw0W00zdmAVIcCYm9hL+Wgpr5pPJ5uK8T48d5F+VFNQZ0RU/faC2A5v8/DlI?=
 =?us-ascii?Q?dQ4kb1PnHLi8ZM3ug7yqgn/QbENK5BY7cDGTH6djgI1EHYayUOk5G5XdTUrc?=
 =?us-ascii?Q?iLDKL15u14UgJVG00JXoNLr2?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f014655f-000d-4bd3-64cf-08d8e5e4060e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:19.3031
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /TKG6BeLkcWqDPx1gRZa2WyU4L/8FgfnS3LbGHaxH0g9VMGm4GQvue0aOaw13Io0KDUMG3MNHB3ZavukNYZO9A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Merge inc file into bb file.

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/selinux-gui_3.1.bb                | 7 -------
 .../selinux/{selinux-gui.inc =3D> selinux-gui_3.2.bb}        | 6 +++++-
 2 files changed, 5 insertions(+), 8 deletions(-)
 delete mode 100644 recipes-security/selinux/selinux-gui_3.1.bb
 rename recipes-security/selinux/{selinux-gui.inc =3D> selinux-gui_3.2.bb} =
(75%)

diff --git a/recipes-security/selinux/selinux-gui_3.1.bb b/recipes-security=
/selinux/selinux-gui_3.1.bb
deleted file mode 100644
index 3038ebc..0000000
--- a/recipes-security/selinux/selinux-gui_3.1.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-require selinux_20200710.inc
-require ${BPN}.inc
-
-LIC_FILES_CHKSUM =3D "file://COPYING;md5=3D393a5ca445f6965873eca0259a17f83=
3"
-
-SRC_URI[md5sum] =3D "1e0ea65dfb2b5408969bbe55f6f9d04e"
-SRC_URI[sha256sum] =3D "40775eaef965259ca2f8ad49c23b03ff2c8f70808a9e0587b1=
075970b2509c3d"
diff --git a/recipes-security/selinux/selinux-gui.inc b/recipes-security/se=
linux/selinux-gui_3.2.bb
similarity index 75%
rename from recipes-security/selinux/selinux-gui.inc
rename to recipes-security/selinux/selinux-gui_3.2.bb
index 725eb23..5818e49 100644
--- a/recipes-security/selinux/selinux-gui.inc
+++ b/recipes-security/selinux/selinux-gui_3.2.bb
@@ -2,9 +2,13 @@ SUMMARY =3D "SELinux GUI tools"
 DESCRIPTION =3D "\
 Provide SELinux Management tool (system-config-selinux) and SELinux \
 Policy Generation Tool (selinux-polgengui)"
-
 SECTION =3D "base"
 LICENSE =3D "GPLv2+"
+LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D393a5ca445f6965873eca0259a=
17f833"
+
+require selinux_common.inc
+
+S =3D "${WORKDIR}/git/gui"
=20
 RDEPENDS_${PN} +=3D "python3-core"
=20
--=20
2.25.1

