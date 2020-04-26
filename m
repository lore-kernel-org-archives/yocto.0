Received: from EUR05-DB8-obe.outbound.protection.outlook.com (EUR05-DB8-obe.outbound.protection.outlook.com [40.92.89.81])
 by mx.groups.io with SMTP id smtpd.web11.8302.1587893186012795758
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Apr 2020 02:26:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=b05PX9Mb;
 spf=pass (domain: outlook.com, ip: 40.92.89.81, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3Q3OF73xev4QPOA/3bR8BY3BuU1PjmSTyUSO5gTpnLzY3xMqWBKe7wGRZ8A/PRzbsU7BbwLweSmYBdmWZgj/9vWCi/kuDaINX5F1DdrlCKZ+XDaodaFkVzNIzX+at14njmnQYCYw3AAK4i26eC3pPYqnbROf3FdlXPtihyhXa1FIBbgtY0kB0ApHKQ7RrpTHyeLrcxQ1rw9Z/SSMPRM8RYblghd8Z/+IbGcBBSK//5wTNBU1sUpeLnSxfMDcqc+J2tWmNEJqqq3GJulKFDEEQGhm9Kdqb64vUkw7u/5UPRASLsBRhHsFyzdBKs38PLnxVezfAC0wPGh9DKq3tI/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAN1ZRdHU1BcxigfKdJKyofXJbhqyNsrxrSBNw/giDo=;
 b=I0P6iAh9cmNsns/OQ0ugxTvp/PPNF3e853uFn3THIQ4bDXcMDU0O6OomOWY8360koXk6uXpXWCag9P+NCNSLP+X5zn8sTRT0l+SyHnjQxaQ//iTqlaBV0epmBVmyTer44Bf7wrcLe2Sgj8j97G/pREv+FuOh8o9NcVNGaASS/4Vo/fb3oebrAR9FMUTQCWGnq38HbU5ngYF0ont1zea44gVB71x1Dm2aLcbbfJtFEb8lKoe43pFO9FyvltpA5/Pn2nM+pVgtAvlqiuXgm0+L9Wkwr4TxiM/yOI4Ewo/lN4nYbBYCY4K0e07sqgxUt6OASh935mI7+3qHWtTT70YMnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=outlook.com; dmarc=pass action=none header.from=outlook.com;
 dkim=pass header.d=outlook.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAN1ZRdHU1BcxigfKdJKyofXJbhqyNsrxrSBNw/giDo=;
 b=b05PX9MbIhWVLmkjf7xj/+B6xmRicyC4wDM0Zb9xdAkj6iEYmJ3LuvTlaJ2vHqr7ATD57RLGqLrqSEtGobvzxTldTL1X9YNxoEYmR4fAw2g0a+cW90EAQx7gi2/Gn2ghH4GIGB+sJ9UwHrBha0bvdCoDcM2Qt+B5GoSqJ4HPwXXki9o6FemyIgmDoWaPjYYrg1dVY7sv1AQbuBN3XsVrBd3NXZdXbaQx+L8S2/GwYPVtjCHu2WuKgMnzquJqJ9ZFvU68jOJBz/GnMxamFZen0i56fJgz7DErEjRcpBXgsUmucNeKYRKHY9LS8tbls0rORL42B2InD6Ub6KAX0X90yQ==
Received: from AM6EUR05FT053.eop-eur05.prod.protection.outlook.com
 (2a01:111:e400:fc11::52) by
 AM6EUR05HT245.eop-eur05.prod.protection.outlook.com (2a01:111:e400:fc11::164)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15; Sun, 26 Apr
 2020 09:26:24 +0000
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 (2a01:111:e400:fc11::4d) by AM6EUR05FT053.mail.protection.outlook.com
 (2a01:111:e400:fc11::62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.15 via Frontend
 Transport; Sun, 26 Apr 2020 09:26:24 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:07C004DEA14E9951CB31DC0ECC2B8611FDC45D2010E64F0629BCD39FB2B22C7F;UpperCasedChecksum:69ECFC1E41F288F2E4952337479003B0DD4225A879BDF71C22EF1C9106037CF7;SizeAsReceived:8771;Count:49
Received: from AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::f5f1:b5e3:66d7:e590]) by AM7PR05MB6881.eurprd05.prod.outlook.com
 ([fe80::f5f1:b5e3:66d7:e590%6]) with mapi id 15.20.2937.020; Sun, 26 Apr 2020
 09:26:24 +0000
Subject: Re: [yocto] Adding python3 remotely
To: yocto@lists.yoctoproject.org
References: <CAAV2bM2k4+ZPaqgSK5WjEkYZ+fFwDx1uZ4ucOkoh3ParLvFSxQ@mail.gmail.com>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Message-ID: 
 <AM7PR05MB68813D8557C38BB3F52C9955A8AE0@AM7PR05MB6881.eurprd05.prod.outlook.com>
Date: Sun, 26 Apr 2020 11:26:23 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
In-Reply-To: <CAAV2bM2k4+ZPaqgSK5WjEkYZ+fFwDx1uZ4ucOkoh3ParLvFSxQ@mail.gmail.com>
X-ClientProxiedBy: AM5PR0402CA0023.eurprd04.prod.outlook.com
 (2603:10a6:203:90::33) To AM7PR05MB6881.eurprd05.prod.outlook.com
 (2603:10a6:20b:1a9::19)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <316d03aa-4708-ba50-af40-c04b5ef88274@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.20] (87.141.80.188) by AM5PR0402CA0023.eurprd04.prod.outlook.com (2603:10a6:203:90::33) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13 via Frontend Transport; Sun, 26 Apr 2020 09:26:23 +0000
X-Microsoft-Original-Message-ID: 
 <316d03aa-4708-ba50-af40-c04b5ef88274@outlook.com>
X-TMN: [tHrPwq7ECU6zlhekhzNI1uUsl+24DftW]
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 49
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: d68a386f-780b-4f7c-7d5a-08d7e9c3e36b
X-MS-TrafficTypeDiagnostic: AM6EUR05HT245:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	UoiSp3lZifiWqVF17smu9gxALakgod5u7eeOf5S1B7qI5fyzSlNQsOVnIWqlIOxuHMMHwCODxkvBwNiUmlEXwI1WVO/RhZlDyJrCqwc9LHz/JItN1u7GLWZOnhZR9SqZonQoTOeh2iBfSIdO0LwBzfoUp5GaBfu8TeMHUK+OMYDoYuQnUj0xb2yB1VW/3yVwdAGQ1PgIgGBoHuXsWsJ46J/JrAD9EVgLRa4dMOlzcyOQDqohW2YrvdSiKldz24MA
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:AM7PR05MB6881.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
X-MS-Exchange-AntiSpam-MessageData: 
	nX7w6czCf6p9a2onmS4p35qkMOSABwPEhBNLObVTp/33uyaPmpccjitnNIfKGK3iZIGlgOWkGPKAHsDpQpQQhp+V1GIxp8aezuPKY+gCczkFL2h4UbEqv1wKtdH4Hu4Sj9hxDwbPolSN+zcalc3bhg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d68a386f-780b-4f7c-7d5a-08d7e9c3e36b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Apr 2020 09:26:24.3733
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6EUR05HT245
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

I assume that you have ssh access to the device and your rootfs is 
writeable - in that case you could use "devtool deploy-target".
Typical workflow would be something like this
- devtool modify python3
- devtool build python3
- devtool deploy-target -s python3 root@<your target ip>

if your rootfs is ramdisk based the change will only last till the next 
reboot


On 22.04.20 17:25, Emily wrote:
> Hi all -
> 
> I'd like to add python3 to my OS - I can add and build it just fine, but 
> at the moment I can't physically access my board. I've never been able 
> to get the OS to update properly remotely, though I think there should 
> be a way since I'm booting from SD. That aside, can I just copy the 
> built python3 files to the proper places in my OS (/usr/lib, /usr/bin, 
> etc) and have a working python3 on the board? If so, which files do I 
> need? I've been unable to get it to work thus far by just poking around 
> the workdir files.
> 
> Thanks,
> Emily Smith
> 
> 
> 
