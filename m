Return-Path: <matt.holmes@zethon.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96103CD98DA
	for <webhook@archiver.kernel.org>; Tue, 16 Jun 2026 08:48:13 +0000 (UTC)
Received: from LO2P265CU024.outbound.protection.outlook.com (LO2P265CU024.outbound.protection.outlook.com [52.101.95.120])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.149419.1781599688208821242
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jun 2026 01:48:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@zethon.com header.s=selector2 header.b=ljULYeII;
 spf=pass (domain: zethon.com, ip: 52.101.95.120, mailfrom: matt.holmes@zethon.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=peK0nbnwBZ19tdfleCg+tvqLpM1uufINU1SzJo17IdpogU+MDtOAsj5M7pKPRwIUVTAJkHvFdWBkVoA+FBnEYl4co2R4AxeuzwOkCa+kXwgYw+bNUHIxpMU5efQXkUxOhAR4EcolPocdhYIed1uRpkOR3GkjUkSqKletPtBfT0wPSsYdIKFy+X5jx4oP9yYRiO1gD976FDLBNb9ya89I5e2sb9kJhjN2fjH+KB2SNUlC1PJT5MblKSMftjOvaf1QAID/3rf8F4SKd6GgAhDa2+e/Ml76r7qNdSZh0RfNCYzhzFF7A5Cn05m7R282VyqnexeFgeyr14q70WvInbOpFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OjZNDsM48vD41BCXlliJqFAeORPCeJGDUoIYf2iWJOM=;
 b=kmxt0nzonKdpnKuB4az8g+WDM9hjuYGBOJ8Cloe7cRBbJtXxPqkzwW9JZ4ePwQ8ruajO1z7t4qMBfshLMdzrvn+vofHsuxBTbDAd3f1dhebj8WlUDfOHs81HysAGQ+feQZ6k8+x/39uZQrgBrnxINjyNj/S3HFEi0VobuLtnhWv1DIEbHuGxxUTLha4h3Al6ARM3MiutEQRWADVG2leHjB8a+Sf7Tu63bkdjXowVcY4dJ/AtYECQl9s05lviIzXEsiCSMUea1nS3JaGtFL+MQlqSTBk1XNhGoznL4tl/lN7dCP06IwtZ/cl+g6xNjUS/0zYT7KFWsde60+ZKGEiSXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 20.58.22.103) smtp.rcpttodomain=lists.yoctoproject.org
 smtp.mailfrom=zethon.com; dmarc=pass (p=none sp=none pct=100) action=none
 header.from=zethon.com; dkim=none (message not signed); arc=none (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zethon.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OjZNDsM48vD41BCXlliJqFAeORPCeJGDUoIYf2iWJOM=;
 b=ljULYeIIIj1CnJek8jYQsjYKRahnNNho4aTILYnOqSI82AGAAaLz6O5AOY7fpD4yC6mGgOBseavonz+MmeUpNutRZPrAe9i8QUaEPKKoFTBTW+AhA2IzLh2/7uwN3x0RrjlhulSf3uINBQbBtj33ULZp9D7VUngagPPpapODA64RddpTk8ysBdRJmA7HQbZQHwc8zP8sj3FAZQSxFIYuxvz3R/+f0WFCV8Shjj8RFd8HXEZxnnKWdP4xd50Zfev9vf3/0dmX8JSEoDmep/Cjv4BSB7KsqjmInLvz843iZY0LP32q/TAcp0sNSidtnKU479JxdhBslOVeT6Zu9TQegw==
Received: from AM8P190CA0007.EURP190.PROD.OUTLOOK.COM (2603:10a6:20b:219::12)
 by LO0P265MB5857.GBRP265.PROD.OUTLOOK.COM (2603:10a6:600:261::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 08:48:03 +0000
Received: from AMS1EPF00000045.eurprd04.prod.outlook.com
 (2603:10a6:20b:219:cafe::83) by AM8P190CA0007.outlook.office365.com
 (2603:10a6:20b:219::12) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.21.113.18 via Frontend Transport; Tue,
 16 Jun 2026 08:48:03 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 20.58.22.103)
 smtp.mailfrom=zethon.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=zethon.com;
Received-SPF: Pass (protection.outlook.com: domain of zethon.com designates
 20.58.22.103 as permitted sender) receiver=protection.outlook.com;
 client-ip=20.58.22.103; helo=uk1-emailsignatures-cloud.codetwo.com; pr=C
Received: from uk1-emailsignatures-cloud.codetwo.com (20.58.22.103) by
 AMS1EPF00000045.mail.protection.outlook.com (10.167.16.42) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.21.139.8 via Frontend Transport; Tue, 16 Jun 2026 08:48:03 +0000
Received: from CWXP265CU008.outbound.protection.outlook.com (40.93.68.16) by uk1-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Tue, 16 Jun 2026 08:48:02 +0000
Received: from CWLP265MB4641.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:168::9)
 by CWXP265MB3702.GBRP265.PROD.OUTLOOK.COM (2603:10a6:400:10e::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 08:48:00 +0000
Received: from CWLP265MB4641.GBRP265.PROD.OUTLOOK.COM
 ([fe80::bd2d:f44a:d776:4bdc]) by CWLP265MB4641.GBRP265.PROD.OUTLOOK.COM
 ([fe80::bd2d:f44a:d776:4bdc%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 08:48:00 +0000
From: Matt Holmes <matt.holmes@zethon.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: NPM alternatives
Thread-Topic: NPM alternatives
Thread-Index: AQHc/Wu+jr1O/Brfk0eGFwOIS1WcfQ==
Date: Tue, 16 Jun 2026 08:48:00 +0000
Message-ID: <CWLP265MB46413BE21029EEC12650EED585E52@CWLP265MB4641.GBRP265.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
Content-Language: en-GB
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=zethon.com;
x-ms-traffictypediagnostic: 
	CWLP265MB4641:EE_|CWXP265MB3702:EE_|AMS1EPF00000045:EE_|LO0P265MB5857:EE_
X-MS-Office365-Filtering-Correlation-Id: db9a1d84-4b25-4940-f351-08decb83fa6e
X-MS-Exchange-AtpMessageProperties: SA
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: 
 BCL:0;ARA:13230040|1800799024|39142699007|31052699007|366016|376014|23010399003|8096899003|55112099003|38070700021|18002099003|56012099006;
X-Microsoft-Antispam-Message-Info-Original: 
 +kGJaQLEMZgSQZkKlQfUsGVNcyr+nsAELy3nyVFob2jPZopaWb+w39uG388W87eUIfcxjnnjsuI7echddQ1IMB9T2wgTtuVyHvy+ESBwoNgUPqiTR77pkHZkga1Wp/vPT40OEGJRQ+TblIXZIq45yBeUs2KomVBJK7kof32nGmvOge54nfrhUdrWomIyLQ2EUDIUZGKCpBoAfw91r4N2MIjX7xvvXd/iooyym4aDKfga1FwD6aa94ZJPqBE2OglL1zmbZahMpsn4oKctHWb7UJ8iyO+RwAFPfyROWcxLIZ9kxxsWgJdLt0si4AuoGPYUL9+aoZzvElfqjbSwomH0ZjJmixB3Yij6iE4/BUhiWR9xd4KCRI5P1eyF80Ii47pEbRtY5wAErKhYF9dKYt3d4zT0gYmWoMZP7Vk+xIi5qLX941g3fQS2TCqyOKR/DgVm/4gMXLfTsRFUUAI9/nklAMgXd3D/2xOHXc1NdhzJvhLUYyHNb2J07ZXNF50iLJI17kjMxJjzDgW5ldux9VlQdyTGp1cDvtaDoPysaQAve2VTqAgEv3+5YZzfClCEFL5CUn7a/AKMKqOY/cxsPgyEzIP/dR8LHIogHFoLcfKSGkeSLx9uhzTgNfu2qx2FJ3ym1iVBFukldcicKIEz3h1tNwTm7nVn5BRZeWFmVWvs5Ho8ArHG7Ia3hSclsJsydtV6zFuw66LjMR+5jCoUqLi/xB32K3/I4hu+pkhOJwzp2/1DNNLeUlkB2Y0y1MRwMw+6
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CWLP265MB4641.GBRP265.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(13230040)(1800799024)(39142699007)(31052699007)(366016)(376014)(23010399003)(8096899003)(55112099003)(38070700021)(18002099003)(56012099006);DIR:OUT;SFP:1102;
Content-Type: multipart/alternative;
	boundary="_000_CWLP265MB46413BE21029EEC12650EED585E52CWLP265MB4641GBRP_"
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: b0uypikwLtycC+tg7NWcHQlfdMxCdimBO8wDXm1tJvFX6NDODRJRD1v3eAXuNer7xwCzhus2TSYJ3VOpbVXpcftFQHE0dV5HRkoGnOmRTubDpq8LbjDHCARhlregErCnaqgFdKIH30OljXkuS/VBO17DwNrjFCAxIBI8y4tKg+77zG7wToLIp9iDaNK+dBqcHpy2siGvKRccZQFOaZmb3dgOntO9v/m3/1MFD+3+uzPrycNZJqWEsEWuIDSO8/FFjjcXU4hZHYvGAORVh5fsR3GYmEwRQUs3K1PUNxQLG50FNlHDvDbeyZAqBivsxXiiIiPsMHvIyD3D8F4mXZGjrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CWXP265MB3702
X-CodeTwo-MessageID: 6abf894a-aef1-454e-83d4-e1a4eba54c99.20260616084802@uk1-emailsignatures-cloud.codetwo.com
References: 
 <9f93bf15-64a7-4a28-b2e8-26b745455026.36811ad9-fcd5-4328-81b6-db476e91bcd5.7ee51d72-a8b9-4961-a490-015a3ec6e668@emailsignatures365.codetwo.com>
 <9f93bf15-64a7-4a28-b2e8-26b745455026.2ee60c04-e0fc-4850-9d12-e10e398ec661.ee119d74-b4e0-4464-b5de-9906b7323043@emailsignatures365.codetwo.com>
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AMS1EPF00000045.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	93101565-ba31-4bac-cead-08decb83f86e
X-Microsoft-Antispam: 
	BCL:0;ARA:13230040|36860700016|35042699022|31052699007|376014|39142699007|23010399003|14060799003|82310400026|1800799024|55112099003|56012099006|4143699003|8096899003|13003099007|18002099003;
X-Microsoft-Antispam-Message-Info: 
	EG9phBxxAIbfXS8Zmk+V61nNWfI8/6XK3f9ZXHCpk251WecMi52eKHyUT8QgR4fnuxpczaCeINL7Y6G5ohVlLgPy71JsPTLV+4rh2zFjA2I8+iS3TI5kuG4eJ+ZQUTeDzU2rzdjVklY+F9MopcguquueF7oP6z1w8p7jb814p9Cq/SDEUK5O8GpJsP8TLr80MRWQ6ZvDUaDrL+0hq/KtMnUAMik3CSeUj6Z9EPWiGwh+2LTqGsM0qrim95pDPEgBlm84DemMZProBcpJy9iJdErwDnjW+c1bI+qzDjvxvX0NsY+LGsKhLfPCwUvirqyZMZzMYJbEsgQK6maesHzE81irHPqFzgzjmPycX+rxXn3PC2QDMgJyPmwM8oHgauFg2j6hoeNFwJj2oMn0nj09h0ZqPSFlyCDjAeblYtNaTKReXFlT5HAKpZ2BhJUAqY5mCZkOw3bB0tQ/wInw13p5Ys0u3bsyPZtqEx+jGqmFFCwZokkUYqdRsk24JzWjRwC/0pAlQ1aGIN18NfRYZ795su1Ior4bXyOVgf3bV3gL/8IXkuJiJRpwi0wZiuqK6vH1vm0dL0tlk1k/gGJmJXQeUGAOjxHCrFLyzwHC4gFANnoZISJn6mLE1WrqMU6hA9jI3vzh3JrHXupvfw8EbsPoKBbBlih70V63C44CN2pQjqNJqAEwo2Gkl8nMcwhzFu0e
X-Forefront-Antispam-Report: 
	CIP:20.58.22.103;CTRY:GB;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:uk1-emailsignatures-cloud.codetwo.com;PTR:uk1-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(13230040)(36860700016)(35042699022)(31052699007)(376014)(39142699007)(23010399003)(14060799003)(82310400026)(1800799024)(55112099003)(56012099006)(4143699003)(8096899003)(13003099007)(18002099003);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 
	s4LpUYJXr63LkIsUfQjgBHo4Bi6Py7zSsQnnjV2b7dprwnTs3/0KXuWfMmy3ltozTlGX+VgnMReJhddEabj4ExdLrcDyDGxukVJ+ZDr53oZe6UaL23c3jfyP8Ey/7L9YTbZx2aRTR7hKgDuJU8FXMbwF2RqBUJKow4NhkY6fbpXMMahm7rYFbiatmdYNE3imkZis21s30DEzRVOCtDSXgPorFx1HC3UolDS/0aoAgvk82WeyaSemCNdQ2zBPPYvW2icaG3rwu2zop8iMEu/+kyBFnUqtb7HFHskopB3JxMIa9E2H7+vkjTcsCYSNltrshVf8P0vR7iIfth4yUSFwt1NCIN879pJWZE9OaXbV6/1q7dOtbRUqh3Yn6toCplEeI5/7B/QiBlQtn8EGhi8Wo5IBn/ZIpi1ljuSuLSuMUNTEePJe41s9RIvkoClIt8eI
X-OriginatorOrg: zethon.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 08:48:03.5703
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: db9a1d84-4b25-4940-f351-08decb83fa6e
X-MS-Exchange-CrossTenant-Id: 35eb8d61-3cd0-4ec4-a6e8-584d9f8734d9
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=35eb8d61-3cd0-4ec4-a6e8-584d9f8734d9;Ip=[20.58.22.103];Helo=[uk1-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AMS1EPF00000045.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LO0P265MB5857
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jun 2026 08:48:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66601

--_000_CWLP265MB46413BE21029EEC12650EED585E52CWLP265MB4641GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,

With the NPM fetcher being disabled recently, are there any alternative met=
hods I can use to build NPM packages? Or is it simply not feasible at this =
time due to the security implications.

Unfortunately I have been asked to build a JS program when I am not familia=
r with it!

Kind Regards,
Matt

Matt Holmes
Graduate Computer Scientist

+44 1296 634080<tel:+44%201296%20634080>

Zethon Limited, 2 Halton Brook Business Park, Weston Road, Aston Clinton, B=
ucks, HP22 5WF
Tel: +44 (0)1296 634 090 Web: www.zethon.com<http://www.zethon.com>

________________________________

This electronic message contains information from Zethon Ltd, which may be =
privileged or confidential and protected by copyright. The information is i=
ntended to be for the use of the individual(s) or entity named above. If yo=
u are not the intended recipient be aware that any disclosure, copying, dis=
tribution or use of the contents of this email is prohibited and may be unl=
awful. If you have received this electronic message in error, please notify=
 us by telephone or email immediately.

--_000_CWLP265MB46413BE21029EEC12650EED585E52CWLP265MB4641GBRP_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Hi all,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
With the NPM fetcher being disabled recently, are there any alternative met=
hods I can use to build NPM packages? Or is it simply not feasible at this =
time due to the security implications.</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Unfortunately I have been asked to build a JS program when I am not familia=
r with it!</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Kind Regards,</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
Matt</div>
=0A=
=0A=
=0A=
<p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"><font style=3D"FONT-SIZE: =
11pt; FONT-FAMILY: Calibri" color=3D"#54585a"><strong style=3D"FONT-SIZE: 1=
1pt; FONT-FAMILY: Calibri">Matt Holmes =0A=
</strong><br style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri"></font><font s=
tyle=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri" color=3D"#54585a">Graduate C=
omputer Scientist =0A=
</font></p><p style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL" color=3D"#54585=
a"><font style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri" color=3D"#54585a">=
<span style=3D"FONT-FAMILY: Calibri"></span><a href=3D"tel:+44 1296 634080"=
>+44 1296 634080</a> </font></p><p></p>=0A=
<p></p>=0A=
<SPAN =0A=
style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Calibri">=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"><FONT =0A=
style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri" color=3D#981d97><STRONG =0A=
style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri">Zethon Limited<FONT =0A=
style=3D"FONT-FAMILY: Calibri" color=3D#54585a>,</FONT></STRONG></FONT><FON=
T =0A=
style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri" color=3D#54585a>&nbsp;2 =0A=
Halton</FONT><FONT style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri" =0A=
color=3D#54585a><FONT style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri" =0A=
color=3D#666d70><FONT style=3D"FONT-FAMILY: Calibri" color=3D#54585a> Brook=
</FONT> =0A=
Business Park, Weston Road, Aston Clinton, Bucks, HP22 5WF<BR =0A=
style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri"><STRONG =0A=
style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri">Tel:</STRONG> +44 (0)1296 6=
34 090 =0A=
</FONT><STRONG style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri">Web: =0A=
</STRONG></FONT><A =0A=
style=3D"FONT-SIZE: 11pt; TEXT-DECORATION: none; FONT-FAMILY: Calibri" =0A=
href=3D"http://www.zethon.com"><FONT style=3D"FONT-SIZE: 11pt; FONT-FAMILY:=
 Calibri" =0A=
color=3D#981d97><STRONG =0A=
style=3D"FONT-SIZE: 11pt; FONT-FAMILY: Calibri">www.zethon.com</STRONG></FO=
NT></A></P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: Calibri"></P></SPAN><FONT =0A=
style=3D"FONT-FAMILY: Calibri" color=3D#54585a>=0A=
<HR style=3D"FONT-FAMILY: Calibri">=0A=
<BR style=3D"FONT-FAMILY: Calibri">This electronic message contains informa=
tion =0A=
from Zethon Ltd, which may be privileged or confidential and protected by =
=0A=
copyright. The information is intended to be for the use of the individual(=
s) or =0A=
entity named above. If you are not the intended recipient be aware that any=
 =0A=
disclosure, copying, distribution or use of the contents of this email is =
=0A=
prohibited and may be unlawful. If you have received this electronic messag=
e in =0A=
error, please notify us by telephone or email immediately. </FONT>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"></P>=0A=
<P style=3D"FONT-SIZE: 10pt; FONT-FAMILY: ARIAL"></P></body>
</html>

--_000_CWLP265MB46413BE21029EEC12650EED585E52CWLP265MB4641GBRP_--

