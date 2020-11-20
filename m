Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.22091.1605854990699436082
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 22:49:51 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=HD33J+5z;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2068.outbound.protection.outlook.com [40.107.243.68])
	by mail.yoctoproject.org (Postfix) with ESMTPS id A2F3238C08E3
	for <yocto@yoctoproject.org>; Fri, 20 Nov 2020 06:49:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JGUOftFxsrZx5mE7T2T5oK+PA1zSezdPuGE6x6VMB+9AEFPN7YYi+7IeoKcPNB94J+qRuIP9Me0M4Wl6agibRUq1nHumdYaG3Wuf8Ch1R9p1JDJSIgF9ZgYukgXLSRA96SUzstPzY6wtXDMReDhzM+kiyOJobkckXhFuBmfX1lhvO3VMhhxJJiLFDma1yYVJnWP7D1ABAdH9E0b0Fnh60Q+q/FINSvi1+8AzsapTHfSnp16oUdT57AM8qJvv3fpe3I9aPt9MyMf9MDTZpPvQ2zcVNS3ifEOvlqhIb+pzq8+yUDvQjFOxooNTZNMmjGw4oGU4yjfE90JIXXgJSzRmcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LZja+rSdJ2XczurxxiNTbgKH1h5kd8BVTB9YGsBphDk=;
 b=J+z1pV4lnMfJSYTcCK2dFXlU2wJHllj58sIjoZavOROcQOQutK3uiFVhTJuW8Q9prI1m0BBW0Ongfctbcbg+kUFh2slqWz+DRSuEvpZSnj+rGle7PCZ5fwlk5DR0DVwL3lO5uUw1fu1XsBLB/5ASRxT0YdZeNLq7h/cs3OEWMaXrTtYJct3LfoYyFqY0oX7WKeGM8SzuuNkLUxVhgANV9+oQyGYwEBGjcEkMXaCEv19CWvwfDvIl3tvEtZUnFXjk1Mzh70T3lWywRC2r78N7yFxgwZ/rI/yAqf2RGMwn9FV9FqSmXTjAgL/W1HZ2gf665+rr2oSTapXC2WKC/+b28A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LZja+rSdJ2XczurxxiNTbgKH1h5kd8BVTB9YGsBphDk=;
 b=HD33J+5zTneRWtEniEipbmUVtvFggrj2i8eX+CNg7bZf/hag02B+1MBk6L+0L6tBFzD6aqX3w3zOQ1qe6cHTjBS96RUBfD/jAhvz+Od4OmftTVBqrj8nld239Q+a+SSW8cAP5be/igvpXFJTQMbHc7DUQeeMjMEQi1v6PcEM4GI=
Authentication-Results: mentor.com; dkim=none (message not signed)
 header.d=none;mentor.com; dmarc=none action=none header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4817.namprd11.prod.outlook.com (2603:10b6:303:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Fri, 20 Nov
 2020 06:49:48 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98%6]) with mapi id 15.20.3589.020; Fri, 20 Nov 2020
 06:49:48 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: Joe_MacDonald@mentor.com,
	yocto@yoctoproject.org
Subject: [meta-selinux][PATCH] libselinux-python: inherit python3targetconfig
Date: Fri, 20 Nov 2020 14:49:37 +0800
Message-Id: <20201120064937.238916-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.25.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: DM6PR12CA0036.namprd12.prod.outlook.com
 (2603:10b6:5:1c0::49) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by DM6PR12CA0036.namprd12.prod.outlook.com (2603:10b6:5:1c0::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Fri, 20 Nov 2020 06:49:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4774725b-39fa-47cd-972c-08d88d2078de
X-MS-TrafficTypeDiagnostic: CO1PR11MB4817:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB48176A936B6AADD59F2FB34BF9FF0@CO1PR11MB4817.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:469;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	Y46hNk+8jVoX7FkgcpwTIf12oqDvQ6nSI4W8GCSllFQeQbMBk8FtaobKueejx37O01rALL39a15IjhYx0BL6L8e7zpE0uOCNULO9H58C9AzC4aDa7oVXPUcKTi/KwVKv+SvsfPh6VhBOMx3pfKnH8/9fIkobY6idNK5NDMKOs9uqIdqG5GqRwcPwg0fSxI5lhODQYDuHZFbaAQYiN2mknBGGUfS4dNYX9V9XWdoNfxCfxnTEf1ZCvOnYVwPISwgIzdtx9qKMp5WBmpkJO8NbuEDZ7F2coNEHqtB5yAG5rSpfy5ECJKxqhx50if8+AHAk
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(39850400004)(366004)(396003)(136003)(2906002)(478600001)(8936002)(4744005)(5660300002)(44832011)(6666004)(16526019)(186003)(36756003)(83380400001)(66946007)(6486002)(66476007)(66556008)(6506007)(26005)(86362001)(1076003)(316002)(8676002)(2616005)(956004)(6512007)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	bnhW8JhGYb0BYiARmb3vWMd81/gBU7YvWMHGsf8q/ejrLmaB8+bNLPDTFVHGJeHA46xFWd79O8SUoCkqrdLr/nxnVn9J6EXxnjPwiJQjqWyFHV38I5VPWsAxghpXEWAObT+Z/gNG5tTMAuATCWku9eWVaf1/UBfYjR2hxJFUtSBIDG4gaP8IDB3SgNVQEYrG+MIX+A9+3etH3U8g6KfT6npqjkkdcHVRPLFE1P3w58QRvXx4JzNJdQktc4K4hcT2DpsOrpUqz0m+CevxNY/X/MlSmU3802tpJi1mGN8d6O9t4Rk73SmUJaFmSvks2QZFzQtVtHZ06V0C0lPGArD2tD2Vpf9y4cytn4kibZAw19uDd+IiBlp9APL2roqdp4/g93PAJcYKnNPxoEWkc8AFvEMEJJ506UXmpQqZoPvZ1k2g7oPBiY9l88J4VZhBy9uFdNgAAKgXJda5odrXQw4WieNVe5dsAT9xkC2FF73h65+8QXqfDrU0MsiWuVnChJWpM4vU42+a/E7fZ1+1PkMyvHzAr5JMpVRdgiauxXj9myrTivY9yZYmlPxVPIv6VFqo/FRYOHqTYHg1XhICW60oDW8ZR82btIkbTo2ir7+UUad1hAPhJO2oH10xNpujuvVfSmOyN5ZuXSxmzx1GhuRb0Q==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4774725b-39fa-47cd-972c-08d88d2078de
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2020 06:49:48.1916
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8DVHEWmw4kX5lJRoK3ridDzV5DzEQ+df4rwPhx7pHDjGfc6b0LUTcOmv2XtU1RVzqId2DTPYklg33U9Yc5szcQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4817
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

The python3 target configuration has been split into own class in
oe-core commit 5a118d4e7985fa88f04c3611f8db813f0dafce75.
Inherit it to fix the build error.

Fixes:
selinuxswig_python_wrap.o: file not recognized: File format not recognize=
d
collect2: error: ld returned 1 exit status

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libselinux-python.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux-python.inc b/recipes-sec=
urity/selinux/libselinux-python.inc
index 3760fd8..7149d94 100644
--- a/recipes-security/selinux/libselinux-python.inc
+++ b/recipes-security/selinux/libselinux-python.inc
@@ -7,7 +7,7 @@ LICENSE =3D "PD"
=20
 FILESEXTRAPATHS_prepend :=3D "${THISDIR}/libselinux:"
=20
-inherit python3native
+inherit python3native python3targetconfig
=20
 DEPENDS +=3D "python3 swig-native libpcre libsepol"
 RDEPENDS_${PN} +=3D "libselinux python3-core python3-shell"
--=20
2.25.1

