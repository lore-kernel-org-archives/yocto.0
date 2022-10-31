Return-Path: <jon.mason@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2B977ECAAA1
	for <webhook@archiver.kernel.org>; Mon, 31 Oct 2022 15:07:22 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.51])
 by mx.groups.io with SMTP id smtpd.web09.10241.1667228834823530170
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Oct 2022 08:07:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=xgFdowlQ;
 spf=pass (domain: arm.com, ip: 40.107.22.51, mailfrom: jon.mason@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=GshPgP/ewk9KiTc9ubDu0igfR/nC5jjrLqRbglo2IrBeSnCAkRmdAwFW7talCDyKcLU3gdNV/gsIqUdr6QUqlpSVskuBzAU4i6b7qaehAjbypKZJCvPTXeoUQWFfyizzvm08bKPJpvAmzgIA4pddrZIImjYknDYoD5MFUm7CPH9QP0BHy167pjIVwmsVN+OvTffqy6HJtqXuGVlTjA6zdhyRENSuSeF4n7KTIGYAVTTuGkXeBDwHjyAjTyP/gtMLGThwkMA5AVPstNHfS8SDee972zT7A3/KNpk7O/eATufm/lY2bjAB7HHRjqW8RSixKy3SjkK7DA1e1fD54653yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5kkTeIXJ0ZnsYbnbtDlHadjtK2KTwj2KAe8eCGpnDzo=;
 b=ibsB6J4zNXDtMOKVuv/N5R7+GruiuTPc0UhJxOmQZGe72NMQio3X/khFzxEIB0UEEYIZLgH11VvQnsjwj9IGVJl2g5wzwI/pIt3kjf54VbVGfIdlGMvN9ruyCqSI4CWZesY/LevTikFqxODounH6jasmEv0v7p5+Ici3fgr/EyZbVFu9la3GnZUWUvCGNMsjA4CaKGV0/28CnLhFOCDuzfI4sxaYPStjF5aD78GLVMAJpO/WF2A6JrJLQEx3Ie9pcbbZX9CWt0+GPq+Jq9V4kotpROSGyRp0YTvTQvHQn61nn7YYTp+16ZDDpLM+V+kLkMQtEO3GRMzQ/v3EOPxgRg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5kkTeIXJ0ZnsYbnbtDlHadjtK2KTwj2KAe8eCGpnDzo=;
 b=xgFdowlQSzRYxoxzk2keVvJO0Z8nWwnkQhpjGxmiUIAmUz0TtrDEHp0OcUAGUryahlhqYNB6HIbQ75sjfZHaaVjIKCfczLVuE//n/MrUODhHP+WsKjIpt1ePl95uYfjqR8Aey4IN8sd80aSMIJSeFZCVsDAXFbdh5HLor5fAsYs=
Received: from DB3PR06CA0031.eurprd06.prod.outlook.com (2603:10a6:8:1::44) by
 AS2PR08MB9498.eurprd08.prod.outlook.com (2603:10a6:20b:60e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Mon, 31 Oct
 2022 15:07:11 +0000
Received: from DBAEUR03FT051.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:8:1:cafe::ba) by DB3PR06CA0031.outlook.office365.com
 (2603:10a6:8:1::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.14 via Frontend
 Transport; Mon, 31 Oct 2022 15:07:11 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT051.mail.protection.outlook.com (100.127.142.148) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5769.14 via Frontend Transport; Mon, 31 Oct 2022 15:07:11 +0000
Received: ("Tessian outbound 2ff13c8f2c05:v130"); Mon, 31 Oct 2022 15:07:11 +0000
X-CR-MTA-TID: 64aa7808
Received: from 9b5aa492550c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id B9C0F047-3C42-47E0-A2A0-1493D50ABBDC.1;
	Mon, 31 Oct 2022 15:07:05 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 9b5aa492550c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 31 Oct 2022 15:07:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pf8z1YIrCmMl18KZWLMy3ByV/hP2DuR2pP4PswMVF0F0pcpGkERp+3/75zHiwgDHDXEsw3Z8fvg9ikSJegu39oVVcnU6PRx9KBlFMWAph7MuiF6s7l5ZcO7GibMQusn8gPpvJQOjIqfJBwkXZkocUO7pR9XYwimTGLcYh8CefEEpyp4iUzdE7cy8MsALad/A4gKU3HHJivymrIc3TJ6gNzEUdhc/mSwTlEuKSMcWsKT1NPwDR6iLBvYa4F6h5VpvvG1RhGbed30agJrVQ9OxkUXzl5LEIp2lmrFa/j8k3ByJN1e3PDRvKY92DFQzcW+0FrAQmmG1A7Ay7V96/9SW1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5kkTeIXJ0ZnsYbnbtDlHadjtK2KTwj2KAe8eCGpnDzo=;
 b=S4lOOSlDk96dAIu+a7ZuWgnpQtnv9bzudHkp6sCGHtiTht5eRWNzsK0KvODHzm7ZU27WNvPkmxZjdO3tfEvVElzPVZuAZSyxNrdBOJD8h8TNBmD4Wp4M8psA3GFvdFSXYeuuYC3jUYh8kpfWU02ClcB4E7fqQ/S7HcnQnr/lReOpjaw+M6TJ4ja9e6dFd/y9t/B3M3TdyQcO/SNhygKj/Sgvcvh1trezlIvJZujsEoRLxf7oAZs6SZIe/2VnuPLK/rFSwbRurCRPXWUlAmgv4zKj0ArN7UCNFE5hEYuO4Lz2LWy9vWAsqmY7M527RPltI/uDHsOtyVl0SYvCMc1j9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5kkTeIXJ0ZnsYbnbtDlHadjtK2KTwj2KAe8eCGpnDzo=;
 b=xgFdowlQSzRYxoxzk2keVvJO0Z8nWwnkQhpjGxmiUIAmUz0TtrDEHp0OcUAGUryahlhqYNB6HIbQ75sjfZHaaVjIKCfczLVuE//n/MrUODhHP+WsKjIpt1ePl95uYfjqR8Aey4IN8sd80aSMIJSeFZCVsDAXFbdh5HLor5fAsYs=
Received: from DBAPR08MB5798.eurprd08.prod.outlook.com (2603:10a6:10:1a6::21)
 by AS2PR08MB8261.eurprd08.prod.outlook.com (2603:10a6:20b:550::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.16; Mon, 31 Oct
 2022 15:07:03 +0000
Received: from DBAPR08MB5798.eurprd08.prod.outlook.com
 ([fe80::dfeb:1527:9fd:297a]) by DBAPR08MB5798.eurprd08.prod.outlook.com
 ([fe80::dfeb:1527:9fd:297a%3]) with mapi id 15.20.5769.019; Mon, 31 Oct 2022
 15:07:03 +0000
From: Jon Mason <Jon.Mason@arm.com>
To: "Saini, Naveen Kumar" <naveen.kumar.saini@intel.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Langdale branch for meta-zephyr
Thread-Topic: Langdale branch for meta-zephyr
Thread-Index: AdjtOVKGowIP0UbZRJehIMs1VResHg==
Date: Mon, 31 Oct 2022 15:07:03 +0000
Message-ID: 
 <DBAPR08MB5798254CD368AE30D2B33713F0379@DBAPR08MB5798.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ts-tracking-id: 9465841FD71DB549902BA22B56ED89FD.0
x-checkrecipientchecked: true
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	DBAPR08MB5798:EE_|AS2PR08MB8261:EE_|DBAEUR03FT051:EE_|AS2PR08MB9498:EE_
X-MS-Office365-Filtering-Correlation-Id: eb35d1a6-cd19-49f5-def6-08dabb519655
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 HdmqTMsduCYGWR0mVy4QZB5l/93WXA0rzriKXQPv/TI+/Go1X+LKAS+Zho8XOLUz8Cp5SG+F/PWm4ziIXNMkc8Tgc4sBtfh7d4/bOfkvFv6R+lofKSPTnwp1Le4UiKpSLFaFBlXgN1s22RFiOOhM5IXTfYr+tdE2sl/zCruFQjVgaky4O1KTds9LzX5NuNMHBlQMe3d1T5YaBz7XLAdCipctpmK8KdlKBrECHN2kDYfWR+pt1dOgu4iQIgRDXaBInl7e+30Tkd1SP+ObIThqsVIddtr5YNwVOzAOMwSkP82blO17ivzUrSUw9K71KRO0kM8ArFtB4cMNKSB9D+kwZLv5FptSVAjHObmkrqUB7XFX8Oi1kvP1zLySZXSG4pTxZPuQv1wVVc0mCPy1Db5n9XeP53TR1YMO/oCikaOdvdj3yIgUfa9fyINUmUgkANo7A4uyz8Klt2Da6msJnhS4wSk87Ut3+tvGnCz43LPsU1ms9sEl3r4Q81ZrWafRz+dOqGiCZscIDK2/BS+tHlRVGAinkQi0zLMEuHD4YkZ/K3Kw55XTaXcpDn1jZ0jke1UVAQ/4AnRGakiRq9RYFz7nYYJ/1fC1kPoNb8SpMmm28vP5/H3/I2CLQdDSlsTAPMoCL3er0xniXu5ZiqJxDnsB4SzZvf9ii398Ov+dFmI0XBkCgRFj+5kxV/fH9fFmI0jg7rulXxEMAt31YTC01J9q90x5A17vMh7rqtp4BSbB+eJNTRWS4ACedvvND/m7AlV7ZQNazuKiUq9w70lhwCfkig==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DBAPR08MB5798.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(346002)(136003)(396003)(366004)(451199015)(38070700005)(86362001)(33656002)(52536014)(5660300002)(122000001)(38100700002)(2906002)(478600001)(66556008)(4326008)(66476007)(71200400001)(66946007)(76116006)(6916009)(186003)(4744005)(55016003)(8936002)(26005)(9686003)(7696005)(9326002)(64756008)(66446008)(316002)(41300700001)(6506007)(8676002);DIR:OUT;SFP:1101;
Content-Type: multipart/alternative;
	boundary="_000_DBAPR08MB5798254CD368AE30D2B33713F0379DBAPR08MB5798eurp_"
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB8261
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2ad1dc73-62a8-4f34-b7ec-08dabb51918a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	/pQieL1ypvtC6oHdiJYrDiggMpWLFA9bHw2gYOqihwGV+RNE2cOR1s6+4ERtWKhsuZkYIoIY1dR9H1EcNcE2qhOijRauqr8z4Fqsuei5r/YaupGkVrAZLe0G46xVu+McFkJIOWYHUYgPpaa036I7qgle3+ghnEDdJST69t3R74Go5Iu2yLliJYogQgnMfNENy0HiR0CxF00LJE4ImpozCGfyfpMXZeP/Wa3Y8dMNnAGKGTWk6ajOX8fKbFJgFSe1ApPGpyrjrbqcUCG2xUh7cT0J4dEOe1xHrS8IoqPKmDU5f8ox51Ss2b8x6MA9uI/mrKWrTrxIeISaFYKOammtyJ1nUiB8aNMzYe3qsbUWfrPbtWplIR6SZoSsAABeG7iIehB40Y7Wm7menGmBLKHJGLKcMxbIVlGNKGD75Hu/WquTIWD9TaQV3ais0GUQ0WA1wgMT15PvBG2Phy1kNQZ0EQZl5BRIOatRFyxy9C6hy0z+flVSsZjNFEjyAC5aTPKfblJTNvaRkWEwj0MeIDf3IkU7+bDiGPh+lJ8gHwvsSThAyxQL3AyjcZtbUfFC6uBYKyZHKCuHhcui4LD7QJo36E1nhgxGHf5thxFkrl8/9fR3XFJGPGKEsZ7yhJc1zQl62siRs3toiuTJYRqm19OVWdhRSMcEwtacvb6FR8j1ulHffzuuTU0TFtkp1n9VlKLFliVXJjzzYZ6MX2aug6sY9UXO9pZPbkXwTpYN+axadeUgE9bt08vjWKsjKbmRLRg5
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(396003)(376002)(39850400004)(346002)(136003)(451199015)(46966006)(36840700001)(478600001)(82310400005)(186003)(5660300002)(336012)(2906002)(81166007)(47076005)(356005)(86362001)(8936002)(82740400003)(36860700001)(6862004)(55016003)(41300700001)(26005)(9686003)(316002)(9326002)(52536014)(70586007)(8676002)(4326008)(33656002)(70206006)(6506007)(7696005)(40480700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Oct 2022 15:07:11.5145
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: eb35d1a6-cd19-49f5-def6-08dabb519655
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT051.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS2PR08MB9498
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 31 Oct 2022 15:07:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58445

--_000_DBAPR08MB5798254CD368AE30D2B33713F0379DBAPR08MB5798eurp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello Naveen,
At least one team within Arm is planning on doing a product using meta-zeph=
yr and basing it off of langdale, and would like a Langdale branch on meta-=
zephyr for continuity with the other branches.

With the recent release of Langdale for Yocto, I was wondering if there are=
 any plans to fork a branch for Langdale on meta-zephyr.  Doing so prior to=
 updating the zephyr sources to the latest might be a good idea.

Thanks,
Jon


--_000_DBAPR08MB5798254CD368AE30D2B33713F0379DBAPR08MB5798eurp_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:DengXian;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@DengXian";
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:=
break-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello Naveen,<o:p></o:p></p>
<p class=3D"MsoNormal">At least one team within Arm is planning on doing a =
product using meta-zephyr and basing it off of langdale, and would like a L=
angdale branch on meta-zephyr for continuity with the other branches.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">With the recent release of Langdale for Yocto, I was=
 wondering if there are any plans to fork a branch for Langdale on meta-zep=
hyr.&nbsp; Doing so prior to updating the zephyr sources to the latest migh=
t be a good idea.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Jon<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DBAPR08MB5798254CD368AE30D2B33713F0379DBAPR08MB5798eurp_--

