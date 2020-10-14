Received: from NAM11-BN8-obe.outbound.protection.outlook.com (NAM11-BN8-obe.outbound.protection.outlook.com [40.107.236.66])
 by mx.groups.io with SMTP id smtpd.web10.8248.1602668681892891170
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Oct 2020 02:44:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=ZXFYGjdd;
 spf=pass (domain: windriver.com, ip: 40.107.236.66, mailfrom: mingli.yu@windriver.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VQnsj2LJlu0VY37dsTl17j1wzQshrHTsBkzp90FDglxOyV4bmG8dlamcEwdxY8bhzXvQcQe+n9b7g/dOU6CjcV7AcArctvcwKv4TdSi6E6XLPhGGN5h3IUc0ecGjCL/s6+YmojOMICcBxsDdV+FU3RpbQuC2g7YV/gQFBAS2bDXVxLV5asK4CArDFSnlvQGh+I2bNyvZgVWJ3FQNtyAjgftnMf3clUlFh0rHYXEiV4huMIiBhZ2KxxztoelKo80FecsDeYs9fKpDinr6x/BBzb7EHbyRufSzirC/Kh2a3DSMKk14tbB6qtwRk8EbyZ5EYLwRIYNlfbPLkR/5BZru5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tEw2Q6jRFIVkVDkyNTl9x6SS9h8YHaIJhEY/0lIXDmA=;
 b=fZKWKmMd+4snH/BSiTCaa7lCyahIIAZ4guAVSGFc7sxcYpgcKG0otfLmwUaj1bhIg5OO96u4MOZT3sy9iX3tToxOL0H8Mc/0x0x/3WQBwekHzHaQye3cVHMhurp3dDjrHlvNn+roS3VyaS/5e/EUA4nYgu5cwt5unpOJ7M96ATOq/x65/VK1ON7q1n5ycIR+bgYO7VPcI5rLqG//UmLDPurQjm1zo2niMpBkAsdK3fA1aXRm3fMFZcah0L2e1y9NVU+7ScJ9d8B6fxLt4B33VcRGCptfmw+nhUkJsn6NAfI2l/iMBtKp1JEjcZc8tnhAbeDta0zsZc4l2VVTVMa4jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tEw2Q6jRFIVkVDkyNTl9x6SS9h8YHaIJhEY/0lIXDmA=;
 b=ZXFYGjdddXpAIxIVqp/1MxdoAo8y6ODpPUntqDVXXJwQekMvJRQmdkw9tgXsQD2flM1AXXbb0NsJwJogAi4wD1p1atAhvoYr43wpZmoZscT6AOHBBRGmrE2lm3QXwiF719JOjIxQyRZ41dMmtMeg2SgqeFRMKKy5/jl+IknEnPw=
Authentication-Results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17)
 by BYAPR11MB3254.namprd11.prod.outlook.com (2603:10b6:a03:7c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.20; Wed, 14 Oct
 2020 09:44:39 +0000
Received: from BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::9425:b061:32a:a98b]) by BYAPR11MB2598.namprd11.prod.outlook.com
 ([fe80::9425:b061:32a:a98b%7]) with mapi id 15.20.3455.032; Wed, 14 Oct 2020
 09:44:39 +0000
From: "Yu, Mingli" <mingli.yu@windriver.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] scap-security-guide: add expat-native to DEPENDS
Date: Wed, 14 Oct 2020 17:44:20 +0800
Message-ID: <20201014094420.45715-1-mingli.yu@windriver.com>
X-Mailer: git-send-email 2.26.2
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: YT1PR01CA0034.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::47)
 To BYAPR11MB2598.namprd11.prod.outlook.com (2603:10b6:a02:cb::17)
Return-Path: mingli.yu@windriver.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-lpg-core2.corp.ad.wrs.com (60.247.85.82) by YT1PR01CA0034.CANPRD01.PROD.OUTLOOK.COM (2603:10b6:b01::47) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3477.21 via Frontend Transport; Wed, 14 Oct 2020 09:44:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9614058f-f4dc-4481-7032-08d87025c4b9
X-MS-TrafficTypeDiagnostic: BYAPR11MB3254:
X-Microsoft-Antispam-PRVS: 
	<BYAPR11MB3254780BAB46044F41E3625EF1050@BYAPR11MB3254.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1923;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	v7cTidmeRLSA+ZJNBUOc+aEHjC4cF/wa9z/ogBP4yXRjBmNAd52wIUxZAGmNEYek4qZQiRfEPgQXrEdbn3CDc+P3F4pEwCXRXTogMPnrsrwMIMRTIrsrGztIsV3Cb0SkeJOBGX/W+m2Jp1PUuLYc9s2Am1D3i6GLgIrojQCcZp6At5AyjL0YYbHthc5nGkTKUriU4a8tR+5l4vsjtvqO1nq5iKnCwelh6ufLWxiwQdnbO//qrO0Z7FtD9kUGjF9+9tTVU9UBNzh0kyOMfFEGA25zj7YSMXxCYuThMK0Xv6ExcP9AZodGBM8GTl4UjR37WnI0DagMz90xaDtB8xexu7l6MLc09zlOA38sjFpAzPREvEyskMqdgQ3AicIZlbI2/Xr5KC/QCZ9sUZ2XS6MKGw==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2598.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(376002)(346002)(39850400004)(396003)(366004)(136003)(36756003)(2616005)(6486002)(83380400001)(15650500001)(6512007)(6506007)(66476007)(66946007)(83080400001)(86362001)(1076003)(5660300002)(6666004)(6916009)(316002)(66556008)(478600001)(9686003)(956004)(26005)(186003)(8676002)(16526019)(2906002)(52116002)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	Hx4XZZBIz3ZtVf1tPvFnQ2LE8y7KGx4vASM9xigcUooJxVf6Fq8ZYxWKzJB9VRhLLV/wuCcZT2KTDTtBqvgHSOQ8DMw/VO7zUMDTOTXq82KOlmP3/v6almz1uIaG6suEKpkcdEbYrXDNDMzXu44ITaEVRPppffy68HJOxdxqBEwv347u/oZmPfuq5HsN2NQfR2GYufJElv84wu+coervJlcgYBoXQa7DrhEOZL1iL8eItvJp/DhHUdBwJYaiV/kWnMdAUZ681TI8kbGfL3faN9PSJplWzVVm+/jmizVr1USPthitTsPeu6lZmBBqzTNUl6yTLDrXZ1whZldIGOeMaKiHT3Y8CTAFm3I8xTjPWwdPHbIa3WhmyyvUfGhYwkpktqwsKB8Pi/gtHqkH4+euABkamkLQMxevSzmmdomYWIwYhYjtxahhVk0em1F8B/VaHs3QaLv1XUiHyJ56FeaM5jqJJVUC9mqIBf5+m6/Mx8W9GDa1pYZHwX3Qrn57Ha2SXr3tedARz46RmIMS18oZtSnYRrREukZm41pjEGnnNw9Xi910DUhsaFY0J1XAgUG+T3Q91pQyWA95sFwNqUl7/fIPl1+hJCs7OBJsPpeuGXQWy131oB3VPQrVLkZhiOen9BguBlZfek9Y74MzWv73LQ==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9614058f-f4dc-4481-7032-08d87025c4b9
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2598.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2020 09:44:39.3490
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kG4OmyDHMNKT6CVxvu9bwdfSwWN+VMzbNq1ARRAzPK6bNrdpjxOpLYz85RXnr0ZVKZwZeWtljQlOQH4G1sFFRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3254
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain

From: Mingli Yu <mingli.yu@windriver.com>

Add expat-native to DEPENDS to fix the below do_configure error:
| CMake Error at CMakeLists.txt:165 (message):
|  xmlwf is required!

Signed-off-by: Mingli Yu <mingli.yu@windriver.com>
---
 .../scap-security-guide/scap-security-guide.inc                 | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-security-compliance/recipes-openscap/scap-security-guide/=
scap-security-guide.inc b/meta-security-compliance/recipes-openscap/scap-se=
curity-guide/scap-security-guide.inc
index 66c2623..32fce0f 100644
--- a/meta-security-compliance/recipes-openscap/scap-security-guide/scap-se=
curity-guide.inc
+++ b/meta-security-compliance/recipes-openscap/scap-security-guide/scap-se=
curity-guide.inc
@@ -6,7 +6,7 @@ HOME_URL =3D "https://www.open-scap.org/security-policies/s=
cap-security-guide/"
 LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D97662e4486d9a1d09f358851d9f41a1=
a"
 LICENSE =3D "LGPL-2.1"
=20
-DEPENDS =3D "openscap-native python3 python3-pyyaml-native python3-jinja2-=
native libxml2-native"
+DEPENDS =3D "openscap-native python3 python3-pyyaml-native python3-jinja2-=
native libxml2-native expat-native"
=20
 S =3D "${WORKDIR}/git"
=20
--=20
2.17.1

