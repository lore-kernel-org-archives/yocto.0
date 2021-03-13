Received: from NAM11-DM6-obe.outbound.protection.outlook.com (NAM11-DM6-obe.outbound.protection.outlook.com [40.107.223.68])
 by mx.groups.io with SMTP id smtpd.web08.125.1615614685585697241
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 21:51:25 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=JW8D2o34;
 spf=pass (domain: windriver.com, ip: 40.107.223.68, mailfrom: yi.zhao@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y3Ean7jXnkf2WKyG8DfL0bGbkriJRZa4T6ykX4dBAI1CcDIA0ZFnpPPVJfNo8sd2qwrrZVLBBA+ZU11z5x8PMI/v8wPNfT4KmlorSjlNFv5xkNSPmOmo5gv/Aaht5nwR8VDCb7+8hOZ7/uCSeroNBu0/JtJfnnk+S6ZE346dLJVL44fmYph7HPOJuKEygNTLHX2E0MXe8eaoqBFeFvfavNvpSAQWad97txaGpH3xuQLtIVLRurrtfnYKahdUOKTrzKI0YQEzwGe25Oq5YCf1Y2O6acUJmAX7QGn8y8GzXh0YE7niG0O0Oy4eYFmOa0KUvfLaqQ0L2Bc0naVTB/itaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wr6/khGrzhB+MPV1OHK1j2HOSAaKcsZpJ3ztL/mOmc8=;
 b=hS3DkHyPIpXrA4XOz2SXPZZHWPXzfwJKjHtahEpYh0zO7TcjuCs5PAxKgJr1rdg7nOh98Sp3xWv4epBE00HnNGbTYXpR95wsleOWKO2o4KFGylE9pAJAVpvMlZjHP68fgIEGoMjNXeF5WmWb1g92puT8IRsa2RRAmRiluLavVTXcI5u6B9bqjGzja64buacZlipiKHnDGmypDdXm9V71UyS2jF8AeWvQwz0wnyS3efwvQpWt+IYfnRjpLsSHYkIKnVZZR2aXxAmqbKPBqgLM9vR+Ez2JSjR2E4t79TCOlCwg0iUkkyxuj05tOUuE0d7nHAM6xMS19tFk2SPzKFaXog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Wr6/khGrzhB+MPV1OHK1j2HOSAaKcsZpJ3ztL/mOmc8=;
 b=JW8D2o340D7oApj4S/4L6xkQDlhxSkNG9uG2phAU6ha/nOmBj231xU+KLljnNjpZWWeZgqO4oEtQy1KrD4qw4U1JtOMXM8KF7ToJre/zNxWzBWsXoskAvPiAGqzBVzwxHzmH9/bVzJYeuFRuEK0+YVs7sUfR2DmdyMtzNTs+ADQ=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by MWHPR1101MB2318.namprd11.prod.outlook.com (2603:10b6:301:4e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.18; Sat, 13 Mar
 2021 05:51:24 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::b954:4302:820c:ca28%4]) with mapi id 15.20.3933.032; Sat, 13 Mar 2021
 05:51:24 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@lists.yoctoproject.org,
	joe_macdonald@mentor.com,
	joe@deserted.net
Subject: [meta-selinux][PATCH 16/16] setools: upgrade 4.3.0 -> 4.4.0
Date: Sat, 13 Mar 2021 13:50:44 +0800
Message-ID: <20210313055044.239776-17-yi.zhao@windriver.com>
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
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by BYAPR11CA0084.namprd11.prod.outlook.com (2603:10b6:a03:f4::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3933.31 via Frontend Transport; Sat, 13 Mar 2021 05:51:23 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 504ec262-4e0e-48e3-41ec-08d8e5e4091b
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2318:
X-Microsoft-Antispam-PRVS: 
	<MWHPR1101MB231803291CC30CDFF6580AF0F96E9@MWHPR1101MB2318.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	XugtUBmj05qU//aB3cKEj8vDCAJbKN5JMLkxnMShDwGXjSR5MehXq7MljNg5ky9+fmgRdgL4oBIEU7Yei06KtzIIcLrUXbCH7+sCTM/Zf7nQq0tOJo7SQPZ9ZKU//6WZ2lA+QxukOvj0Fs9dWrHJU3iSoR1l3mCguMlO0jrWqXRKJU2XvGDG/F5N7Cq8w0DuvYEEMhSFCWfJfEaHdN3pDW8TMLt66wv1UNGtnUh27tpoy22+lySItuYtfvORH42rrfIrRZrlzHiilvUF3dSptcouqpb8n6GTnVjlMU3qrVAtEJUUg0n4QLXPgDj4hhJA2fE4wsjwQRknZYhfiq0tm24D9fiUCdZsizmWcQi6UhFBbJDP1v+F1dv5gi7lTy7UUPX8gLyDhjSUwOw8T3yK4IK7bcS2O/H9SEybmkBZrGPYSY3iiPJjfWnKXIdsX2KimGYM6zhjYqXgd9RBytVObjfHV2iA6Z6ePqafUgvvq0oBFs3fN6nYeFBmInh3N9dM/vkrtMpKgrsk3qVM0wHnkA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(396003)(39850400004)(376002)(136003)(366004)(8676002)(44832011)(5660300002)(6506007)(6512007)(6666004)(8936002)(83380400001)(186003)(26005)(16526019)(36756003)(52116002)(956004)(316002)(6486002)(478600001)(1076003)(2906002)(66476007)(86362001)(66556008)(66946007)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	=?us-ascii?Q?bujpLMmRDjVU+OEoxyS4heU2Vr2Sojgu4hqA5ZdYgkaQ6VAY14gKD+LPxBpT?=
 =?us-ascii?Q?prvuIWWV3AFCeUuOEye6QkFOdsVoqapX41LfXJ2j/MkyLzIBJrfo9K5DiHM2?=
 =?us-ascii?Q?13dvzKvArTWtpYeQVY1M7UjPIEgFMMWJGtwN+mtcUFR5iUHGFioromABwzt/?=
 =?us-ascii?Q?GkZgU2iU+LlIMldVcULMJDYo86cXGV82Ty60xs0WCDr344lFUheFmc6yP8tM?=
 =?us-ascii?Q?bscueoWn2wDChXP3T4S3nPeSY2/vA75Py6mwkqW799+tkvK+b6jYbz9Qj2o+?=
 =?us-ascii?Q?UKbe8skFkYKhB6/XQsZQeV/Bu4DlbTrEuClhm6huwibCZagUBmOdms/2B9G5?=
 =?us-ascii?Q?NstBiW0/EEoJtvE6zjHfwUE3EH3CgaGOci0TCXfLuu64WKOtbCW79/4RRTjo?=
 =?us-ascii?Q?Xyx9H7bzXz9vJGd04n+VInLeCgTZMqfu4RYJE/ysiUXojvstyCT9gmyVWy85?=
 =?us-ascii?Q?30f+NrBgZo49rowZV6NwfzMl2bgT7dn7ReDFmQ8khfAnKbPyz48lmlSiT5CG?=
 =?us-ascii?Q?UR/o86gy1PweR4oT9nD0HgmCa+toYqVzpwVlQpuHYcDPEOj9w/JoLZpcXqLr?=
 =?us-ascii?Q?UtH/zjH07DyrBXOj3y/02zVon9W6szMRoYdAN5e6MiHC5K3tAnA6o4z4BPYd?=
 =?us-ascii?Q?XA6O9uTOosB9P6aATxoKOuoj8Q2/mU4EytCcnhDT6QULjyhp/f5iyJmw7y6t?=
 =?us-ascii?Q?uiYrat3s19itXuk7Jz6/ibab67cMQ/h7y9XQWPI0yQcfLQ0/1nXHJwrkqu+H?=
 =?us-ascii?Q?Qlh9qKMKcBf0cwltAa0ji7UVYTiZ/ikFclFUy44yYGX8PDJitJvuWNPAHqMy?=
 =?us-ascii?Q?KuYMwEoLBG6sWEzMey2aeBON6ok1UXNkXpTdobIyZnxqih4CsHUB6jBqdjHu?=
 =?us-ascii?Q?oMCur+2D+L+BZV5F9UZMtK2H2QNiBVtpRAFFS8B8q72FBDNpApkdB23EoW0O?=
 =?us-ascii?Q?bga7Tw+Wdup9nvb6iC/3kpt/iuE1I9A2ebIO/KZ6BrHt8es0hj9wAKFIjiGk?=
 =?us-ascii?Q?6LP6rP7oE3wphrlUOOsiwa/rpNuiLwWrt0Lw7tFRNaG2KBhbxU0AdLCVgYrA?=
 =?us-ascii?Q?x7Ipe6lxEhmRFQdh8fGEaI4Y7vcWPYn1K+3nxxqtChutvvTasb0KpRbitAzN?=
 =?us-ascii?Q?KVwmY/CfUbgnAp5+9J7kQD/QVMTbjpDfG7HpzwRwlkzLR/A8spR9UQA4DhQw?=
 =?us-ascii?Q?nY18TLCQ/PZ0c5QaV8K8f7i1u983M6i2E/wEZJbI00PjLNUoHHof5khtbHba?=
 =?us-ascii?Q?B/DTU4BwbnlQupNxn2P0aDTzroYnrcVsIGIOWmELttnX+D8UAxY35MSW3Bu0?=
 =?us-ascii?Q?XKQ4rMjQgFJWuwgonk8R+UsH?=
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 504ec262-4e0e-48e3-41ec-08d8e5e4091b
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Mar 2021 05:51:24.4216
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0F/CzFXKT44B6pXQ0GQKMDr2kOGDASLrmBB0GULrOEpv5WIS/Iw1V8wmMvqHVrhbCow8/+VcSrWw3qF2fZ3RAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2318
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 .../setools/{setools_4.3.0.bb =3D> setools_4.4.0.bb}          | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)
 rename recipes-security/setools/{setools_4.3.0.bb =3D> setools_4.4.0.bb} (=
89%)

diff --git a/recipes-security/setools/setools_4.3.0.bb b/recipes-security/s=
etools/setools_4.4.0.bb
similarity index 89%
rename from recipes-security/setools/setools_4.3.0.bb
rename to recipes-security/setools/setools_4.4.0.bb
index 0f166c8..4dd094f 100644
--- a/recipes-security/setools/setools_4.3.0.bb
+++ b/recipes-security/setools/setools_4.4.0.bb
@@ -11,11 +11,11 @@ LICENSE =3D "GPLv2 & LGPLv2.1"
 BBCLASSEXTEND =3D "native nativesdk "
=20
 S =3D "${WORKDIR}/git"
-SRC_URI =3D "git://github.com/SELinuxProject/${BPN}.git;branch=3D4.3 \
+SRC_URI =3D "git://github.com/SELinuxProject/${BPN}.git;branch=3D4.4 \
            file://setools4-fixes-for-cross-compiling.patch \
 "
=20
-SRCREV =3D "a57ad3cdb669a39f785c4e85d63416a469c8d445"
+SRCREV =3D "4758cdf803d93274f49cb6445cb2bab527d6549f"
=20
 LIC_FILES_CHKSUM =3D "file://${S}/COPYING;md5=3D83a5eb6974c11f30785e90d0ee=
ccf40c \
                     file://${S}/COPYING.GPL;md5=3Db234ee4d69f5fce4486a80fd=
af4a4263 \
@@ -30,8 +30,6 @@ RDEPENDS_${PN} +=3D "python3-networkx python3-decorator p=
ython3-setuptools \
=20
 RDEPENDS_${PN}_class-native =3D ""
=20
-CFLAGS_append =3D " -Wno-deprecated-declarations"
-
 RPROVIDES_${PN} +=3D "${PN}-console"
=20
 inherit setuptools3
--=20
2.25.1

