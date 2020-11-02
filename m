Received: from EUR06-VI1-obe.outbound.protection.outlook.com (EUR06-VI1-obe.outbound.protection.outlook.com [40.92.17.47])
 by mx.groups.io with SMTP id smtpd.web10.215.1604349448433302243
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Nov 2020 12:37:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=sdesiPE6;
 spf=pass (domain: outlook.com, ip: 40.92.17.47, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F2Vl18jbcrweb+j1ojquzwCsQGjNXlmV3hSGbtqmTLiXEv00BTaxkGkt2S0/MDUc7KtnSv/FVHlHg1sjbA8131Iy6k/6cThavSF6rk4TDQKA1EAPj2D8zd5+lNA0fddt3XA49hOck5wChon1mFHI3oSX+fhkmCxHz6OTWC04l2nPlG2jHsLsQvi4GnN2zz3JMwfQvmMAvyammBXZRsyValqn9ieOowQel8Je1X3s5bIqAWSa9Pjs5DG1w0B+dWpCyR/awjuDLDBJ/HSF1+SWARy4aOGTj8FITEUIkLvb0v8cqeJ0PpYePhQUSSH3DZL/cJ/bnOeENZpKtlmcmS4D8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JbK/yl62ivwwtHDmhd0o/nzvJcf/OjwFPSs1RytlyEk=;
 b=AtdjVIKE74f36FrztsAQ6P5KGmZjoGOAoHloCWl4+QHL4ZtCoiUKkJgwU6LmmtUjRfvJjtLJb9w5dBFuVEX7o5qq/haivw3jZ5FEOlGBYTs/kelXQ+Tm/BLJW4R3HOuLAJ79eVsHODZTrrF7Ca4l6e+hd6gYuR2t1OZ/ZEtv5HVAXkB7Dz8ljDbpIq1lOsKIKvcY/ZC21dMaPgVvzcRVAU1oDjr3cZZD9y/eNDl0V1JiTm9aiFl12OgkMCxj8NXeuCfphxeELZPahP3rfnJvIYfphMTTsZc2GpvP/7CuMyGS8XMK2/7i8jCj6t/A85+5FkdFnLCVcUnPdyoNZXuJKw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JbK/yl62ivwwtHDmhd0o/nzvJcf/OjwFPSs1RytlyEk=;
 b=sdesiPE6V0R+5recKpGLzoGDrC0bbXuVmFfnEsgoLiZP8NgFkg+3bMP3T2JuVjI7RgJRnnuQMu4MZKNvzTKDmAe03svnhzrXB1fBGsbjCYxxcuoQRIfGsZGXbY3RL8JQuLLFmAjB4lApfZCIKBtuvOEi0XDRYJAiXByvYrlEHyoulhFahfJz+2PY39KAa6pW0YV9ySR1I09nkdc+bLg4Cf5cykAuqGIuteTFglhFnMEhvdadz0PXt8Ii6HVm8LIOJc1Pa54wFmNQxZZlojF1fqVSllfSxj8Uj398x4afHB/Tw+2MEb1s+8zu5RTkquFLtww65LLlI960AXhO4qfYQQ==
Received: from VI1EUR06FT039.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc37::44) by
 VI1EUR06HT037.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc37::277)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3520.15; Mon, 2 Nov
 2020 20:37:26 +0000
Received: from VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 (2a01:111:e400:fc37::43) by VI1EUR06FT039.mail.protection.outlook.com
 (2a01:111:e400:fc37::128) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3520.15 via Frontend
 Transport; Mon, 2 Nov 2020 20:37:26 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:64AB37E6E314F1469F0C316FF64B6CFB966754375059A6AC347D85BDA9ABB355;UpperCasedChecksum:2D237A20657E554FFA0EE52512266933F3EC6D93F57A6BE8763B8F8DED8FFE4F;SizeAsReceived:7824;Count:48
Received: from VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 ([fe80::a1a8:ed42:7e0f:10dc]) by VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 ([fe80::a1a8:ed42:7e0f:10dc%8]) with mapi id 15.20.3455.040; Mon, 2 Nov 2020
 20:37:26 +0000
Subject: Re: [yocto] #yocto -zeus
To: yocto@lists.yoctoproject.org
References: <MADEUP.1643CAFCDC51C983.19423@lists.yoctoproject.org>
Cc: steven.monsees@baesystems.com
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <VI1PR01MB64625A11D49D0373A1D1D6A9A8100@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
Date: Mon, 2 Nov 2020 21:37:24 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <MADEUP.1643CAFCDC51C983.19423@lists.yoctoproject.org>
X-TMN: [FTLLldknyHP7npSOYF6RVE+QJE3Iqt8i]
X-ClientProxiedBy: AM6PR01CA0053.eurprd01.prod.exchangelabs.com
 (2603:10a6:20b:e0::30) To VI1PR01MB6462.eurprd01.prod.exchangelabs.com
 (2603:10a6:800:154::12)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <1c138691-6655-d466-f2d6-8f1f5954b4ad@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.92.169) by AM6PR01CA0053.eurprd01.prod.exchangelabs.com (2603:10a6:20b:e0::30) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18 via Frontend Transport; Mon, 2 Nov 2020 20:37:25 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 48
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: da1484b0-451e-4c17-7115-08d87f6f1bc8
X-MS-TrafficTypeDiagnostic: VI1EUR06HT037:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	g2lYImrBd1ROqv1U2z2U9ieQOmkx2twUa4Fdu7rbniA4hUSC9s6+zZjqGRvtJvU+/rUpZu7qnyqvS31MpKKgTkqCbbKWQGUXjtBxD3tcq1OIgSN63OinL4Y8CnHNoMwvl/nm5NYOqbE6S+/VbC8cz1X9FsAoyWUlOIWOq0HpBTCrxETn2sXvKo45zQlQzMITbb43IrfQ0moHnbDmO9059w==
X-MS-Exchange-AntiSpam-MessageData: 
	QivqI8DYRGnCJ+sscQxEAII/KdNAXhz04goZe72lLt47D67VzrDIs8fw4b1lDm7PtoMsnccKa0QPKINoRC9gGPM0KUDQpbmu9pHu1RZU5EATiYcyUi4pSF/gl+PFAALU/wgKZw+XhAj78GsI94GGQQ==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: da1484b0-451e-4c17-7115-08d87f6f1bc8
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Nov 2020 20:37:26.1345
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR06FT039.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR06HT037
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

"github.com[0: 140.82.114.4]: errno=Connection timed out" indicates 
either a temporary issue with github (unlikely) or with your network setup.
Already tried a different network path from your dev-machine to the 
inet? Just to rule out any proxy/MITM instances.

It's also likely that git port is somehow blocked in your setup - try 
changing "protocol=git" to "protocol=https" in the recipe and check if 
it is working.
And if have a talk with your IT or internet provider afterwards.

On 02.11.20 21:31, Monsees, Steven C (US) via lists.yoctoproject.org wrote:
> github.com[0: 140.82.114.4]: errno=Connection timed out
