Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5590CC54735
	for <webhook@archiver.kernel.org>; Tue, 27 Aug 2024 11:18:02 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.57])
 by mx.groups.io with SMTP id smtpd.web10.74829.1724752524881769333
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Aug 2024 02:55:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@movyon.com header.s=selector2 header.b=x5Iq0TTN;
 spf=pass (domain: movyon.com, ip: 40.107.105.57, mailfrom: simone.bongini@movyon.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=o9oOe5k/5jHPs6gRr1EKiHztOyqJToTZuYAeRF1Sq1xq9T7coLNMfMu4/x08/uuwaFAbhXTusg0UARKVoT1eFoKda7rIQu/RLZ7Z3HGcLOnPMc2WcNzodhdZWwWVdARQjGJYD5hQu0nmMxvytifqOnFxcFD1kBJm9p9rzLkvKaCycuNud8LHFd21gz87qXYV71UUpeg8yQGWtOx4KEbuQCedSuUH8Z8kx8zErVfHbHJoZ37n+GJwqnADA1JTwur6gGpuWJP9we/X4mqx0gdZvDxkcoMiZbxoLH0mxbw4n189GgrvfRiC+7HRRk58PAFvzQLdAK03b1K6UDN+VeheYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X6qXR9oRq125tVmAbt5YxMDKh1dJfpwo+i/o5N3vBns=;
 b=ov7WQIBOJI83944FNEjTty3ulK2esWgWsAvO1BILzg1ZVgiXreL87URmkdCDtM6b8WNmCt4S+vLLIhgZSgILkFR8eudxr9EYxSlLI0liZvYjq6fss+eBY3VSldA2p2w3NmPHr788xk+chduMK6nFXktYqFVrpaest5J7GLf0U/yk1RqBbTRrBAJBZVM25KHRibG+qijINsbus7Kb/Pp5cq4r/Q4me+UFcRnQOU3bZtz+r8h7Z0cbdD1yqtDroDP1G6za2HfvnpmiEGric0dKHcR6boWBcPBDELjbX/fQ8bEdclx9Sl9tmaMxI14YNuJbYFf2ppVCwkzdOrMEKqkM3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=movyon.com; dmarc=pass action=none header.from=movyon.com;
 dkim=pass header.d=movyon.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=movyon.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=X6qXR9oRq125tVmAbt5YxMDKh1dJfpwo+i/o5N3vBns=;
 b=x5Iq0TTNPtx2s1cSbJye0M4Gm1OqRUVmb2deKpW3Xby8MhelIYiD9/JQ4yU3aVVcdIOz9JItvOXQw++1ecQNpO9BSfU4DUUWnP4M/eVSTQpqwEfCfC5mk7Fth73FloHRnDkvlZT5WEwYzLcvfzFY0tQ7iJCBcBTUxT4fFN6LLQAmw799gdFM03AHIjNvjYqMA+wWX6qVC+tqWzyhTFSqt3SGYGEOJSA6Uy0ZN6smGhbxblU0P6RFZrSknhSdSR1GQsIkszvQn7T97PtwO/LsQkGhSnqfF+SfGClVzGCTXbMdWzenvDAtTH/22ikTIczfvWOnu8NZaqxx3Xmxh3TAYA==
Received: from DU2PR08MB7253.eurprd08.prod.outlook.com (2603:10a6:10:2d0::24)
 by GV2PR08MB8002.eurprd08.prod.outlook.com (2603:10a6:150:aa::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.14; Tue, 27 Aug
 2024 09:55:21 +0000
Received: from DU2PR08MB7253.eurprd08.prod.outlook.com
 ([fe80::35b2:e4e1:400c:bba8]) by DU2PR08MB7253.eurprd08.prod.outlook.com
 ([fe80::35b2:e4e1:400c:bba8%6]) with mapi id 15.20.7918.012; Tue, 27 Aug 2024
 09:55:21 +0000
From: "Bongini, Simone" <simone.bongini@movyon.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] - Poky Kirkstone - [cve-update-db-native] - CERTIFICATE_VERIFY_FAILED
Thread-Topic: [yocto] - Poky Kirkstone - [cve-update-db-native] -
 CERTIFICATE_VERIFY_FAILED
Thread-Index: AQHa+GVvBZr34cJKe0WFG6tfykEEhbI63DdYgAAATCiAAADBGYAAAFEr
Date: Tue, 27 Aug 2024 09:55:21 +0000
Message-ID: 
 <DU2PR08MB72536BD03476E2EA40423E5AEE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
References: 
 <DU2PR08MB7253B2F4BDB924D5C31CE7DDEE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
 <DU2PR08MB72537A2152910D095FD52195EE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
 <DU2PR08MB7253B0D6BAEA8BD9CC15E550EE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
 <DU2PR08MB7253B4E88977BEDB59817B62EE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
In-Reply-To: 
 <DU2PR08MB7253B4E88977BEDB59817B62EE942@DU2PR08MB7253.eurprd08.prod.outlook.com>
Accept-Language: it-IT, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=movyon.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DU2PR08MB7253:EE_|GV2PR08MB8002:EE_
x-ms-office365-filtering-correlation-id: 6444c337-2476-4756-2e95-08dcc67e5d6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: 
 =?iso-8859-1?Q?IZLUQLYwj2tehvW1u/UJkHEv0fIICVyXAp6gPRk2E3ijJlDMRwkHm9lW9w?=
 =?iso-8859-1?Q?9h3QDeN5zWZIXR3EnkynHcf+4CJf0rYDUolzElx3r7goljMaDo7jUj8czZ?=
 =?iso-8859-1?Q?HsOPsByIbpQHHu8Pg44Z/MhpkxwhmcUMd3A4wgcX0Zrx0GrG50dVuBmfMr?=
 =?iso-8859-1?Q?SPbDOslYEQDzNjUN2C0/k/xxO+21ob5MK7Ha7NYBhpFsUTYtNKqqJhh+j5?=
 =?iso-8859-1?Q?zEYtMq8CW5f38tEEq7uRG0rpkn8HzgOFtEipphfm9MR56MqmecfNdP3txw?=
 =?iso-8859-1?Q?FLSiNe+xbunPxLx1BQ7rb4Z+BDk8hTnEMn52zMNCA1nD206Y+xVm5o/TM/?=
 =?iso-8859-1?Q?Z1521CRbt+qLtJXJ7GMY6lhMWJlNUSx9nQM7fnlzhO+XtmM7vxBsEs2ZX2?=
 =?iso-8859-1?Q?eBTmOUpKaDZM2nNB9XJZfD5bAlyxUL55AEkJpbt2mS7dS5JttyXub+gJeN?=
 =?iso-8859-1?Q?7OFaW38XZKyyvJDbboskoZE7q6JoUPwBAtxKqx6VsyiasMk8Hd//UoM8pI?=
 =?iso-8859-1?Q?VEn3ubypKhi6UCHEniBH3H29rITIiukdF9uPRct9QY5PrBjAYkDZHr5dxe?=
 =?iso-8859-1?Q?JR1Nd2/4VJ8QA3ZwmrV/ipgWcU7wUTrUq10/hcYEOGTrfuKuWlabxfvO7q?=
 =?iso-8859-1?Q?gPVZWo7rXRlcZIic6oeWRsx5lbZ4pU7+XCAqNzD1ssmmcs9ApsY45qo/Oo?=
 =?iso-8859-1?Q?GwdWxugaeXQcKz6MRYozXXkBcAJZbRP8QTV75HkFkrqxmvUhgR0f1NUPu7?=
 =?iso-8859-1?Q?dEyDbC7lXsGTUITM4BhKTkhxqfZ618N3BqtjGHg/6GTQbE05dVkZIREXdz?=
 =?iso-8859-1?Q?mztHoGScjnz0ilQ0zH7u2sGSe/AARos9mi7FAzoPSPuA0+G8O9LyeAcA2X?=
 =?iso-8859-1?Q?5XWDNW6DUWAZUETVYpW2Qrp9F1rLuiGTIIBmBxHBsgCW9nbFhkLHE0ByxB?=
 =?iso-8859-1?Q?71jDFDrslY9qg80yCBmfCnVzZ/k2+80EMWDsCafvuo958O1Lravq1ZGBUC?=
 =?iso-8859-1?Q?hWci8VcKrt8jQd3D3Fj0bGuO4EWvf/DaXkLmLEI9V0QjGuJUR/d+idESMT?=
 =?iso-8859-1?Q?fkUKEKUSC33LMG1qhdvXpn8Tk+kLl1seooQ4J2iWGw0IKUXM2o7hmvf6Yt?=
 =?iso-8859-1?Q?Nqp7tuBuQUW8OW4OItKEvbKU6cQIorU2vgwHdMWZ2p+/BTXOXQXv6IFThW?=
 =?iso-8859-1?Q?aBbiBOmFk1rkUDvg1OYGedY5ztssZwk82nBw9upnYdTdytOsG79Nr5nXOx?=
 =?iso-8859-1?Q?uVD/ZsDT8uNfhgqQccHE3wvGyUvy25fPctCAAThybgk5apKRkmPYM6o2LM?=
 =?iso-8859-1?Q?51OYB+tZ3cTyXro7XWj1m36KAwaXuQ2Kie5UXuwVIJsLK4MMI5ktAaViJ8?=
 =?iso-8859-1?Q?3Je+r8SF+RpyAK4+lSrqBgffZTHAgYiuURZpHWOok6UrRI86XrD0JMGHjH?=
 =?iso-8859-1?Q?Pe+dwVcOzt+aAp4YxNbv1385CV6CvYYVuOWMqw=3D=3D?=
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU2PR08MB7253.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230040)(376014)(1800799024)(366016)(38070700018);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?iso-8859-1?Q?VkFT/jhJSjtEvSeuh5u0UBsoe6w7CVYAW7X6Ff5o/28m9Qcw53QdIJC+df?=
 =?iso-8859-1?Q?5EWqJfLnKEoCukttFMs48iFqAJcR+O0zSwnMFFxnsEL7pzQfVTITtIM95t?=
 =?iso-8859-1?Q?Haaqfoz48VBmNVc+vaUbKg25lCUjyVv2qfdFRMkk77YgR+ed350sWFKws6?=
 =?iso-8859-1?Q?9p38OooD2dMWlZoOe/XifcASU6XYnLhCwZaMfsh0QOBrWyQW5tH2/SMN2s?=
 =?iso-8859-1?Q?mYkRlj2cySm8TcJ+SpiVztX6OcFbjEkReqDs/MUis5HWe9dyjqBQmJts95?=
 =?iso-8859-1?Q?HLzlVoeiOCpIsv0A2aO7/SRVw0XDADZPPUdSVaUpNIkBdZPbWrIMmlbZYc?=
 =?iso-8859-1?Q?9G770cZP988eaR94UHCvWJG/0w6HR1EC+AgdjC/ZtKdb8Xsmx3FoVEaZwI?=
 =?iso-8859-1?Q?r6Wf1KM7LcjwoC63bGtkoP/yoW7S0b5TY64Xtjmlmv7qmhiWzxyUAgkOcg?=
 =?iso-8859-1?Q?e167DM1YjwwbH+G5/+GbRMe71elYYfoMeiBCJazpSx6hJVYNfnAS3ur6Hj?=
 =?iso-8859-1?Q?W9MuYfqSOGwvkRVKDuayuuFkV9FGTKN+Szxs6/fY4vfS29Rs8CngNTidjt?=
 =?iso-8859-1?Q?U4pon4nQ1gi+M1i7dDkIFMDBa6jz7yjDfWeZ3w8pyX8sDlKN5xoEOyZ2Dc?=
 =?iso-8859-1?Q?JVXeE92SEdkzovrn1ADVa+1ye+js2P9XQL7ru3pCLdctaCuLEWIpFWPaDl?=
 =?iso-8859-1?Q?9ECU1ue4pmSSOLlXUXe4BC2sver0cXN6gqndL2HVYtjknIDLuobTJ3Tuuv?=
 =?iso-8859-1?Q?id5Cw8QleTox7oNzRTxgXS8Tuu2bOsjXeamnUp+Gt4VX81ytylLyj5fVAY?=
 =?iso-8859-1?Q?ztaxd/l1bYte+B8nuSlhPu4eezsFW65WFglkT/D4jdMb4XIm5bPfS/Byzu?=
 =?iso-8859-1?Q?S58Y9pvVttHiD5Uhb79qN0IJdKzy+RJd1pkiMNLsYaXpmcebptq2/StJeh?=
 =?iso-8859-1?Q?uXU+Ol8IH6MOKizBQtWM6w+B1FsI2+qgKOhujewuz1LZQNsBO25Cazrc3Z?=
 =?iso-8859-1?Q?4+lcZILLAMeDVf9uZlPqf2k6zUvp+vlxtmtog5Czyip2PWv00iAu5D7Mj3?=
 =?iso-8859-1?Q?0W5DUGYN2+kBSiWFrUx71T9p8PGAYUT2bx7lkfJtKTMvubPaHLy4op9j7I?=
 =?iso-8859-1?Q?MW5Kr/wxgD8mXCi7vVD3vQo7mYmAsu07p8Mpl9RywuN7pkenttq5kBWDAv?=
 =?iso-8859-1?Q?6FTpuCDT8TgeTPM2wxGJlkKhR6hx/acngcvrBs02kMPecS2XAlyek67t3v?=
 =?iso-8859-1?Q?0v+Ry9zpsPOcqalq3xPzFBevqu+U18Y4zKmaABK3MAPlWUjih+gTqA166X?=
 =?iso-8859-1?Q?NGhgA4fJqjTrWTNj/ORycYIdJwczvmM1X9rd2Y2V1J1eMoRTCMIXPcm1n8?=
 =?iso-8859-1?Q?7qflU3RI3mfG89LJTt7LW+Pr890GPtSPewLw54ZFxSyqKlKCDejKYMYxXP?=
 =?iso-8859-1?Q?8iZL9RXA9NfIVtnN8HW7/PPcLe811GTClGDaQPgLI37RQ+Vj+xDl2eTGfX?=
 =?iso-8859-1?Q?rF7QwGBOX8eKIui58zPLhxglodN8VY+lW8Ypi/9chIixSaAM3RD+XazpTP?=
 =?iso-8859-1?Q?yXf7x9agFlXot+VTol8S0/PFkw3Bz5xLnvl6LbbYeufKTw8zysy3j4TlMO?=
 =?iso-8859-1?Q?ECvKMMAn4qyLDKjy5tRoUCQF+FWSwehN/X?=
MIME-Version: 1.0
X-OriginatorOrg: movyon.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DU2PR08MB7253.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6444c337-2476-4756-2e95-08dcc67e5d6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Aug 2024 09:55:21.4779
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 891db30d-5e6a-4854-9288-6a203bf7d40c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lgQhlbZO5ySRadFLaeIzRF66APk0kXtXFdEoNw2LXKZlZRcV9T9ZS+9f4e46c8jsXriJREX6j0LAma+nSySOILuQ09kEYFfxSmZQI6s028o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8002
Content-Language: it-IT
Content-Type: multipart/alternative;
	boundary="_000_DU2PR08MB72536BD03476E2EA40423E5AEE942DU2PR08MB7253eurp_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 11:18:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63747

--_000_DU2PR08MB72536BD03476E2EA40423E5AEE942DU2PR08MB7253eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello All,
my first post here.

I'm trying to check my yocto build against cve introducing
INHERIT +=3D "cve-check"
in my local.conf

But I got
WARNING: cve-update-db-native-1.0-r0 do_fetch: Failed to fetch CVE data (<u=
rlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: un=
able to get local issuer certificate (_ssl.c:1145)>)

Anyone encountered this problem yet?

Thanks in advance,
Simone
________________________________
Questo messaggio di posta elettronica (inclusi gli allegati) =E8 riservato =
ed =E8 rivolto esclusivamente al destinatario. Ne =E8, pertanto, vietata la=
 copia, la stampa, la divulgazione o l'utilizzo da parte di qualsiasi altro=
 soggetto non autorizzato. Qualora abbiate ricevuto questo messaggio per er=
rore siete invitati a provvedere alla sua distruzione (inclusi i suoi alleg=
ati) e a darne comunicazione al mittente a mezzo posta elettronica. Grazie.

This e-mail (including any attachments) is confidential and may contain pri=
vileged information intended for the addressee(s) only. Copying, printing, =
making use or disclosure by anybody else is prohibited. If you are not the =
intended recipient, please delete this message and any attachments and noti=
fy the sender by return e-mail. Thank you.

--_000_DU2PR08MB72536BD03476E2EA40423E5AEE942DU2PR08MB7253eurp_
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
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; c=
olor: rgb(0, 0, 0);">
Hello All,</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
my first post here.</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
I'm trying to check my yocto build against cve introducing&nbsp;</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
INHERIT +=3D &quot;cve-check&quot;</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
in my local.conf</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
But I got</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
WARNING: cve-update-db-native-1.0-r0 do_fetch: Failed to fetch CVE data (&l=
t;urlopen error [SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed:=
 unable to get local issuer certificate (_ssl.c:1145)&gt;)</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
Anyone encountered this problem yet?</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
<br>
</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
Thanks in advance,</div>
<div style=3D"direction: ltr; font-family: Aptos, Aptos_EmbeddedFont, Aptos=
_MSFontService, Calibri, Helvetica, sans-serif; font-size: 11pt; color: rgb=
(0, 0, 0);">
Simone</div>
<div style=3D"font-size:8pt;  font-family: 'Calibri',sans-serif;" align=3D"=
justify">
<hr>
Questo messaggio di posta elettronica (inclusi gli allegati) =E8 riservato =
ed =E8 rivolto esclusivamente al destinatario. Ne =E8, pertanto, vietata la=
 copia, la stampa, la divulgazione o l'utilizzo da parte di qualsiasi altro=
 soggetto non autorizzato. Qualora abbiate
 ricevuto questo messaggio per errore siete invitati a provvedere alla sua =
distruzione (inclusi i suoi allegati) e a darne comunicazione al mittente a=
 mezzo posta elettronica. Grazie.
<br>
<br>
This e-mail (including any attachments) is confidential and may contain pri=
vileged information intended for the addressee(s) only. Copying, printing, =
making use or disclosure by anybody else is prohibited. If you are not the =
intended recipient, please delete
 this message and any attachments and notify the sender by return e-mail. T=
hank you.
</div>
</body>
</html>

--_000_DU2PR08MB72536BD03476E2EA40423E5AEE942DU2PR08MB7253eurp_--

