Received: from EUR01-VE1-obe.outbound.protection.outlook.com (EUR01-VE1-obe.outbound.protection.outlook.com [40.92.66.39])
 by mx.groups.io with SMTP id smtpd.web09.10999.1617981602401831969
 for <yocto@lists.yoctoproject.org>;
 Fri, 09 Apr 2021 08:20:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@outlook.com header.s=selector1 header.b=Z9gWfbj9;
 spf=pass (domain: outlook.com, ip: 40.92.66.39, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FaRh/IameBem1x+8dxa43/vkoHOecYk2nU+QB6fr0dstK3ZABwP+JVnXD4ce8HsBimkcgyh702WJRZTVtus8f61XGGiU5u3JugOkCtKH72GrnyhBwlod/0HbQ1nTS+7BhkJ5eqGM8UPj4LRndiRAL/SDLAO7VMsLiVmHg2xdQAMZ0JrgLmDTNaBWwkp2eFgFYwFHWNGWF41c2jqzg2A+Hz1O+HfCcYlmo59BXgOe8Fg2o59vmhJLTKHCagYRR/kLB51ciccRPLl5/d2OvADNy7A4ABi5cD5Xu0pW69Zxzijw+AV7hpHnEPgxN5Vpk0W9xlhlBrgqwu5iIHd7Pxp2ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnLnwdWQ8r7Ho5LmaeebpeC1xX+9fIT5PFk1oiXSzuw=;
 b=J8bHU9tnH4JZU26b22TnaANoKcjZFcmcFvgdF8KQE24UVamO1dxkwDz4lKcXHo8twJk0IlWpdZYPtjvLPENddpMdxLSeN9eNoHt2yBryCWas0T5TLa9QM5YZj4b9Vau/51nOaa5m52hjLxRxjxCpS2UgwdGbAAx4/HUhkA75VuDSvSf9fQAdQfwWfi7w1VelMxXjvqTVrwKvxXsXJ+tubKg0Y4QcdmScITH6efk553nYDnE7lcT108+sdbe2PahEQw3ASnQKL4C6uBtNujFyzpFHOakDHVs9vIQOgNKWQq1ADTeucdpWbunn2JBiuQPyk/y5FutQC6h4GeurwPt6Dw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gnLnwdWQ8r7Ho5LmaeebpeC1xX+9fIT5PFk1oiXSzuw=;
 b=Z9gWfbj9aN9YEPlxbnIaV2QTlSz9eVTIlzTBLSsaOquIMrn2gNER/dNoAQnKvz2zb+K37xCACUgaR0jrl1lRLicH4BNXPtZwFz+WN1uus2jZcp/OBDyq9pGKjQIl6YPnwr3UYaKFH1kyGKq/0MvGhZQTNCi5tSuU4MNpjotraAttJ9pgvFWxbEeG5mK8WzqRmkFGxx4uCn7fxZHb80MTZPRnCb/wRhywoPtVBY+kgnhdHZzfue10oev6YBUeFwNfxmslrvlYkRqaM3adVVSaRpwyoU+ng9+Z/NVQ2kSNa/3N9vH/Agcmg20K82AzOKbwSCRwxitK+o2hOR1KX1WWUA==
Received: from DB5EUR01FT018.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e1a::4b) by
 DB5EUR01HT187.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e1a::317)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17; Fri, 9 Apr
 2021 15:19:58 +0000
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 (2a01:111:e400:7e1a::52) by DB5EUR01FT018.mail.protection.outlook.com
 (2a01:111:e400:7e1a::251) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend
 Transport; Fri, 9 Apr 2021 15:19:58 +0000
X-IncomingTopHeaderMarker: OriginalChecksum:76044CA5913D4D78285C324E0539162CB036C1F0C7C64AB2E1C48DF7AE6C3A42;UpperCasedChecksum:DBE772F9335175C35B10D3ABF4D2BFB42EEF1D1C56C71E8BC3178A32016A2EF4;SizeAsReceived:8694;Count:47
Received: from AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::35f3:a85d:b2c5:d4b4]) by AM9PR09MB4642.eurprd09.prod.outlook.com
 ([fe80::35f3:a85d:b2c5:d4b4%4]) with mapi id 15.20.4020.021; Fri, 9 Apr 2021
 15:19:58 +0000
Subject: Re: [yocto] #golang: go fetches dependencies in compile phase
To: yocto@lists.yoctoproject.org, juergen.landwehr@gmx.de
References: <trinity-ee96bdd6-9e22-468a-b5a7-f4909bb2b709-1617976415845@3c-app-gmx-bap62>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: <AM9PR09MB46420D57B3A259C05C385EBEA8739@AM9PR09MB4642.eurprd09.prod.outlook.com>
Date: Fri, 9 Apr 2021 17:19:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
In-Reply-To: <trinity-ee96bdd6-9e22-468a-b5a7-f4909bb2b709-1617976415845@3c-app-gmx-bap62>
X-TMN: [9tWbUTdquhhCVwgwJaDeZnv3uvBCUURV]
X-ClientProxiedBy: AM5PR1001CA0071.EURPRD10.PROD.OUTLOOK.COM
 (2603:10a6:206:15::48) To AM9PR09MB4642.eurprd09.prod.outlook.com
 (2603:10a6:20b:284::24)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: <06b668d4-0503-bcdb-ddf2-86d01d00968c@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.85.34) by AM5PR1001CA0071.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:206:15::48) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4020.17 via Frontend Transport; Fri, 9 Apr 2021 15:19:57 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 47
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: e1ad07eb-7ad6-4cd5-0ea6-08d8fb6aef93
X-MS-TrafficTypeDiagnostic: DB5EUR01HT187:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	EJqePV3D5YZCLPrqLLd7UsShrJghjGaHFhJOyP5IQqxOcMUX6lD4+93NVAsueIescMdIoHxqPB6g66WohxhEwtjlagQ9v8UgGRDbQ0OwKc5/kCUQ9XT4ECMqxU5YvEJMa/MzBW2MgFPCPVuX/dsWfeHbR6iOUcs7Q+hSrXI3tMMOZjPOEj1GdrjtNGk/FDu0j3YYau064FGC2ctvdatZKASB6RNbtaa3iaY+VSFXehcEVwOYLh66wJkzaokicN3fEog9EJ6/pUBBcntIpUK+KupiU7yLXwswheObLuU9bw6yVGLQhVIv3AJ1MbDCdf0mcEvgiYjtHburfJEw4Gy0e93hKUIQgsQxn/Ici1odJ8AewQPF9Dgg9B3NEuKCn9/3RTptUB+ExnVQ8FGch4vvcQ==
X-MS-Exchange-AntiSpam-MessageData: 
	ZratgrD7XMlFlRgiFHf4zz2WWdm+Zn40+v8DnRBgncmei2c6EAjfOHW9041nToyj+YzItQPlBVvPOBKwNwjvIi4V3HKziAmMOFPpiVb3qYV3ClQnl5Siv7oQCbIebx7OLZ165V8Hyd2EO1f4GQLXgg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1ad07eb-7ad6-4cd5-0ea6-08d8fb6aef93
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2021 15:19:58.0668
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5EUR01FT018.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT187
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Well AFAIK your observation is correct, go-mod.bbclass doesn't work a in=20
BB_NO_NETWORK-safe manner.
What you could do is to provide all the dependencies manually and add=20
them via DEPENDS, which is grant the behavior expected.

The bad thing about go is that chances of circular dependencies of go=20
modules are relatively high.

I've also seen a few approaches using vendoring to escape this, but I'm=20
afraid none of the code is pretty well tested nor publicly available.

If you'd ask me, I would go the long painful road of providing each=20
required go module as a recipe of it's own and inject it into the final=20
recipe - this also makes it pretty visible what you're pulling into your=20
build in terms of licensing a.s.o.

On 09.04.21 15:53, Juergen Landwehr wrote:
> Hi,
> we are developing an application in go and use the "go-mod" bb-class=20
> from poky. This works fine.
> However, the problem is, that the dependencies in go.mod are now fetched=
=20
> in the compile phase and not in the fetch phase.
> This is not allowed in our project setup and kind of contradicts the=20
> Yocto paradigmn of having a fetch and a compile phase.
> Is there a way to avoid this or some other solution that we could use?
> Thanks,
> J=C3=BCrgen
