Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.5207.1605961504548032453
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Nov 2020 04:25:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lists.yoctoproject.org header.s=20140610 header.b=wGx1D0Ds;
 spf=softfail (domain: lists.yoctoproject.org, ip: 198.145.29.25, mailfrom: yocto@lists.yoctoproject.org)
Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
	by mail.yoctoproject.org (Postfix) with ESMTPS id C04E238C0870
	for <yocto@yoctoproject.org>; Sat, 21 Nov 2020 12:25:03 +0000 (UTC)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Fri, 20 Nov 2020 07:17:32 +0000
X-Sender: bounce+53643+51492+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 9549
X-Received: by 127.0.0.2 with SMTP id 7DGhYY3619394xeFgHQE3e4c; Thu, 19 Nov 2020 23:16:32 -0800
X-Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.22091.1605854990699436082
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 22:49:51 -0800
X-Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2068.outbound.protection.outlook.com [40.107.243.68])
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
X-Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB4817.namprd11.prod.outlook.com (2603:10b6:303:98::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20; Fri, 20 Nov
 2020 06:49:48 +0000
X-Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98%6]) with mapi id 15.20.3589.020; Fri, 20 Nov 2020
 06:49:48 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: Joe_MacDonald@mentor.com,
	yocto@yoctoproject.org
Subject: [yocto] [meta-selinux][PATCH] libselinux-python: inherit python3targetconfig
Date: Fri, 20 Nov 2020 14:49:37 +0800
X-OldMsgId: <20201120064937.238916-1-yi.zhao@windriver.com>
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: DM6PR12CA0036.namprd12.prod.outlook.com
 (2603:10b6:5:1c0::49) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
X-Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by DM6PR12CA0036.namprd12.prod.outlook.com (2603:10b6:5:1c0::49) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.20 via Frontend Transport; Fri, 20 Nov 2020 06:49:46 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4774725b-39fa-47cd-972c-08d88d2078de
X-MS-TrafficTypeDiagnostic: CO1PR11MB4817:
X-Microsoft-Antispam-PRVS: <CO1PR11MB48176A936B6AADD59F2FB34BF9FF0@CO1PR11MB4817.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:469;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Y46hNk+8jVoX7FkgcpwTIf12oqDvQ6nSI4W8GCSllFQeQbMBk8FtaobKueejx37O01rALL39a15IjhYx0BL6L8e7zpE0uOCNULO9H58C9AzC4aDa7oVXPUcKTi/KwVKv+SvsfPh6VhBOMx3pfKnH8/9fIkobY6idNK5NDMKOs9uqIdqG5GqRwcPwg0fSxI5lhODQYDuHZFbaAQYiN2mknBGGUfS4dNYX9V9XWdoNfxCfxnTEf1ZCvOnYVwPISwgIzdtx9qKMp5WBmpkJO8NbuEDZ7F2coNEHqtB5yAG5rSpfy5ECJKxqhx50if8+AHAk
X-MS-Exchange-AntiSpam-MessageData: bnhW8JhGYb0BYiARmb3vWMd81/gBU7YvWMHGsf8q/ejrLmaB8+bNLPDTFVHGJeHA46xFWd79O8SUoCkqrdLr/nxnVn9J6EXxnjPwiJQjqWyFHV38I5VPWsAxghpXEWAObT+Z/gNG5tTMAuATCWku9eWVaf1/UBfYjR2hxJFUtSBIDG4gaP8IDB3SgNVQEYrG+MIX+A9+3etH3U8g6KfT6npqjkkdcHVRPLFE1P3w58QRvXx4JzNJdQktc4K4hcT2DpsOrpUqz0m+CevxNY/X/MlSmU3802tpJi1mGN8d6O9t4Rk73SmUJaFmSvks2QZFzQtVtHZ06V0C0lPGArD2tD2Vpf9y4cytn4kibZAw19uDd+IiBlp9APL2roqdp4/g93PAJcYKnNPxoEWkc8AFvEMEJJ506UXmpQqZoPvZ1k2g7oPBiY9l88J4VZhBy9uFdNgAAKgXJda5odrXQw4WieNVe5dsAT9xkC2FF73h65+8QXqfDrU0MsiWuVnChJWpM4vU42+a/E7fZ1+1PkMyvHzAr5JMpVRdgiauxXj9myrTivY9yZYmlPxVPIv6VFqo/FRYOHqTYHg1XhICW60oDW8ZR82btIkbTo2ir7+UUad1hAPhJO2oH10xNpujuvVfSmOyN5ZuXSxmzx1GhuRb0Q==
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
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: P2eHtxTih9nsCz4ZVMIA88x6x3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=lists.yoctoproject.org; q=dns/txt; s=20140610; t=1605856592;
 bh=mCsfXCI5TDxmf2NNtClLjJxDAPEamKxxshqY6ncE8aQ=;
 h=Content-Type:Date:From:Subject:To;
 b=wGx1D0DsiM60G7b2zdTNz3xutBcFyL2zLgAzFps0R/wCtML3IdGvBgGUFfzt28r6XpQ
 tJrO/URAsd73H16POkwhkPLSR3rZze8srGt8tv3NRH/q1BDmic5STdYvbYQM7805PLxOQ
 TKo2pYcxhgJgpOMofU+wkqBcoRaRV41HeMI=
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of
 yocto@lists.yoctoproject.org designates 66.175.222.12 as permitted sender)
 receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <05e9d78d9ae54200b46ad421213f5b89@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="b06hMiD3IIIkOLLc67U8"

--b06hMiD3IIIkOLLc67U8
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

The python3 target configuration has been split into own class in
oe-core commit 5a118d4e7985fa88f04c3611f8db813f0dafce75.
Inherit it to fix the build error.

Fixes:
selinuxswig_python_wrap.o: file not recognized: File format not recognized
collect2: error: ld returned 1 exit status

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/selinux/libselinux-python.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/selinux/libselinux-python.inc b/recipes-secu=
rity/selinux/libselinux-python.inc
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





--b06hMiD3IIIkOLLc67U8--
