Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.107.3.56])
 by mx.groups.io with SMTP id smtpd.web12.15075.1599716072701417285
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Sep 2020 22:34:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=vG+wZqew;
 spf=pass (domain: topicproducts.com, ip: 40.107.3.56, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CYTBqCeBQUckyo4p9fVPDQ0NQyT4liIOl1mVpy47Lps=;
 b=vG+wZqewjgkVJpdyPGUu+h7djw8XgMfBpBoA2LGCRSBTwVy76diMmnaH3oCDuRIUOJYETBqoNpaf5x+AvvEW73y0zTK0buFzcr8QHvsijlwrrRnZ26VNUM1ciZg0bfEZV/vBw9mFKql4yI26L4SCMDiXvg0Ku7IM4Af/dF2+z5I=
Received: from AM0PR10CA0110.EURPRD10.PROD.OUTLOOK.COM (2603:10a6:208:e6::27)
 by DB3PR0402MB3818.eurprd04.prod.outlook.com (2603:10a6:8:e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3348.17; Thu, 10 Sep
 2020 05:34:28 +0000
Received: from HE1EUR01FT030.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:208:e6:cafe::39) by AM0PR10CA0110.outlook.office365.com
 (2603:10a6:208:e6::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16 via Frontend
 Transport; Thu, 10 Sep 2020 05:34:28 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 40.68.112.65)
 smtp.mailfrom=topicproducts.com; lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 40.68.112.65 as permitted sender) receiver=protection.outlook.com;
 client-ip=40.68.112.65; helo=westeu12-emailsignatures-cloud.codetwo.com;
Received: from westeu12-emailsignatures-cloud.codetwo.com (40.68.112.65) by
 HE1EUR01FT030.mail.protection.outlook.com (10.152.0.170) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3370.16 via Frontend Transport; Thu, 10 Sep 2020 05:34:28 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (104.47.8.53) by westeu12-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Thu, 10 Sep 2020 05:34:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uq6F7Ilr3pqLrsP3xjNilnk6iv3kermo8VX0cuihUq2HNFwCn7Gx6BnnnwFcGwtcwNop067xWpVfKNL4WbHc8skqypMFQUrurDItcTjKfz9TBOYHXab6SgBH2JIPjZK7mcjxiniKcfRbHKaWeC1y2W3LgqlAZl4X8A8Yyw6V7bpB0SpR9n1ZfTtFMrzYe7wujDIdkYr9oPvD4AeQ9EwKbEVyQBdWONegCUoSeRnVdNXDfA45pa9B4PMZT9O6TLqo68HIN0dDw8nf51j2stieBuQg+Yc7gDPXiif+FcpuqwaPGe2FvgtvxKCLG/3/Bs/gsNLiTcsu1D/GzquuLfzCyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8YvEgs9siVwtNR+MtqfnMFmi5XRuJ4ohpDTm8CdGcGI=;
 b=PE4jPhxn3zXj/z8cNbLQNNbc9AMKpAd8nX6nUpM6DUVRoLBy+Z/9/jxAMQFh2t6qbVhF8QslQO+RV8jr0Cbne2efWclkw1WlhLCgmm7nI6BZ3Q0laCoQeGNdj7u/Xi9TTE3kuMoYY79OgMJkTz/1PrKKos46rEpeBhitXdGhadxy4bJ+oO+YXopdWjmu4w7sqR15ZtiNjRtkfiNL7tSp4i1FR7pyvaaaz1sL+IkVam9UHRQwBpo/7a79slEjzWcvrH0EngSdAc4Y2owc0Ej35pKeoPkV1P27P8kwRQwWADavobWYcW9AaOGCQEmi/CBJUNOg4/t2LeZa2H0DwufT8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=topic.nl;
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com (2603:10a6:10:10f::26)
 by DB8PR04MB5676.eurprd04.prod.outlook.com (2603:10a6:10:ab::25) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3370.16; Thu, 10 Sep
 2020 05:34:24 +0000
Received: from DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::2d61:d6fe:3c2:3e14]) by DB8PR04MB6523.eurprd04.prod.outlook.com
 ([fe80::2d61:d6fe:3c2:3e14%3]) with mapi id 15.20.3348.019; Thu, 10 Sep 2020
 05:34:24 +0000
Subject: Re: [yocto] Compiling and packaging libraries
To: yocto@lists.yoctoproject.org
References: <3Msx.1599382429896859430.R8sy@lists.yoctoproject.org>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.34d84742-1089-4763-8e30-ab523fa9ada9@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.d1275142-5af0-40b3-8a70-fad8249e939a@emailsignatures365.codetwo.com>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: TOPIC
Message-ID: <cae221f7-b0de-2de0-052c-7b0c8b9a4e19@topic.nl>
Date: Thu, 10 Sep 2020 07:34:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
In-Reply-To: <3Msx.1599382429896859430.R8sy@lists.yoctoproject.org>
X-ClientProxiedBy: AM0PR05CA0081.eurprd05.prod.outlook.com
 (2603:10a6:208:136::21) To DB8PR04MB6523.eurprd04.prod.outlook.com
 (2603:10a6:10:10f::26)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.80.121] (81.173.50.109) by AM0PR05CA0081.eurprd05.prod.outlook.com (2603:10a6:208:136::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3326.19 via Frontend Transport; Thu, 10 Sep 2020 05:34:23 +0000
X-Originating-IP: [81.173.50.109]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4bd16216-6661-480a-1fcc-08d8554b2fb1
X-MS-TrafficTypeDiagnostic: DB8PR04MB5676:|DB3PR0402MB3818:
X-Microsoft-Antispam-PRVS: 
	<DB3PR0402MB3818427C8A039E151AEB839C96270@DB3PR0402MB3818.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 DYnixJZUCHo/nFDPwwIyhM/s7+kw82zxG0CDCg1ul3Uk0oxcIqOYvRyllBur+9DPria2fEaJCzEKoFmATQVs0fS+XJWBqFOocf0eAMq531jsUz90XyTZVUyYjmH74MaxJLSuQrykXb8BJe/pqVGOlsQDrr7LtGdUl/hppvN7EDNQddJADFfCYAZJ+kk3RXAcLvcPWIjfXGAMg7j8Ga3384nViL6FKsrj8pgH09nZKePdutdA1fTiW22okqi26w28x0BU71HAdbeBm8ndsoGnXzv9b92By7nMdTcXtBiaogRRN3CJL+yljl/3jSRoYsVQvlaD2f0LgHn4fBKWxsRr5mtVnelg6FATiFrIIzLlZf8jk3ITYEGEEEZhILehVSvUIFaiU+eSbxvwD+gUDUAIKNrG8OrQZVPmtqNGeVxQbaA4yUmr/CMupvZQqlioVXCbIlROyNd2TpVzGx04i4uPQg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB8PR04MB6523.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(376002)(136003)(396003)(39840400004)(346002)(8676002)(66556008)(66946007)(66476007)(956004)(36756003)(186003)(42882007)(8936002)(16526019)(478600001)(31696002)(6916009)(2616005)(2906002)(44832011)(316002)(26005)(31686004)(53546011)(83380400001)(16576012)(5660300002)(6486002)(36916002)(52116002)(966005)(83170400001)(43740500002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: V3RjFem27QKVElHakbupPlV2VYG+6GlyKyvYIej8NO6MpG/nDXhwXrj7YbA2N+oJNaEc57Ch0BPKv5KgnkkdVBvG/pGaSoSRzGg/lIDFgdHmjeZi5dXh+jczgT0d6GY6eNmmfnj/Uu85m1rxcLrhU3VoF9jOIlcJMidXhOLKRmxfAjzwrkeb0PcSrSE1ghLzpEmWTDRJ38MheoDduG9CTgLZg2lR8aCdXfjRbT1Ox0orwJfrxZQ5gB1hkN70hJg3INMBeITE6GLM1HN0U5+OvrkVs4tc4LYtHyTOcW9IG/x0g5b3r22Mc+tyZ358NuXHQ2gYiIkm3JfR15c1Qa/M3pzWwFYZ4EC8QC2+mkw2h9NF7atYEueqslETjkIkkA037CEfv5IlxKWsTx3B9SJFMTm+KJIUQjDEY4esKgu3U9JbgiVuofieQqUMHIOSjHkjrJW1RNuieCZX5vLRybJG/YH+18xnYofh95Y4Tut5D4vAqwOOUfQ+FHI6XaDzYUU2gnJjE+U6DWi+Q8LUv/dTa4fnUrO66yl2284pstwsuaBHlBvDIJONd1NoXGQ4uenJTkYQeyVXi1CdIGg2LsApY6z2lSchcem7DRxIS4/JM9708VhXYT6+Gvq6UN0Z3YYX2wpBVrTXNJ9lCxnlo6v8Gw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB5676
X-CodeTwo-MessageID: 6ae447a1-d1fe-4806-900e-a2463f72cce1.20200910053426@westeu12-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR01FT030.eop-EUR01.prod.protection.outlook.com
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	781b8a78-b319-47f7-20af-08d8554b2cae
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	AzFQSXimnDv5X05mqALmOOorwjRfopYYztUQNmVFfi8X/PDrcHfmi3qgVlKrSo0OQxGSAJk5+qRox7/AcueFyOL1ssLeNHhipbXETXo9r33iqQ8itT8eu3LUVuFFXIDzQkQ4TQuTwZRxb+IDKFSY1fpGpfWgR09sdTPzPXiwBPlfuls7Xr9UgrRghsOU9LsUAosMICE9ehRku9eLsj/3RDLyZ81CA8kNUTSJYZhzsQ/wKPOViF/aBwWyCVf+8UZ7IgbWPMOMSKkCykwkZwNgH4+xdezF8EMiJgqjPjIn18EuwS5vhWDb5MS9Gc5zv+nFClVQa5LESTbYigNvuq4OfPBHYMoWC36tJoY4qkAqnecs8DMEdCCb9lz0LbnVTW53J2NB/g0RBpgI+RAMulocCLwz3j+zu2uADETQT2VpsqrgkkHZ+L1R5UushN4v58LfWOrIgmKN/Hj2z7ZmqFVc9rZUP4KDEv0idjeEmBticnqTeYdGes31oRmZGi2GDHSv
X-Forefront-Antispam-Report: 
	CIP:40.68.112.65;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:westeu12-emailsignatures-cloud.codetwo.com;PTR:westeu12-emailsignatures-cloud.codetwo.com;CAT:NONE;SFS:(39840400004)(136003)(396003)(376002)(346002)(46966005)(966005)(316002)(70586007)(8936002)(7596003)(6486002)(36756003)(47076004)(356005)(5660300002)(44832011)(53546011)(15974865002)(16576012)(956004)(2906002)(7636003)(186003)(26005)(8676002)(6916009)(478600001)(70206006)(83380400001)(36916002)(83170400001)(16526019)(336012)(42882007)(2616005)(31696002)(82310400003)(31686004)(43740500002);DIR:OUT;SFP:1101;
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2020 05:34:28.3290
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bd16216-6661-480a-1fcc-08d8554b2fb1
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[40.68.112.65];Helo=[westeu12-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR01FT030.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: quoted-printable

The simplest solution is to use autotools or Cmake for your project. That w=
ill=20
automatically "do the right thing" to get the library properly installed a=
nd=20
registered.

Even if your project is just one C file and a header, putting that in=20
autotools or cmake is less work than getting all the nitty bits in a=20
hand-crafted Makefile right.



Met vriendelijke groet / kind regards,

Mike Looijmans
System Expert


TOPIC Embedded Products B.V.
Materiaalweg 4, 5681 RJ Best
The Netherlands

T: +31 (0) 499 33 69 69
E: mike.looijmans@topicproducts.com
W: www.topicproducts.com

Please consider the environment before printing this e-mail
On 06-09-2020 10:53, majid.nasiry65 via lists.yoctoproject.org wrote:
> Hi
> I wrote a recipe for adding a library to my image it compile correctly b=
ut I=20
> have issues in installing it and I got "-dev package contains non-symlin=
k .so"=20
> error.
> I know default method for install libraries is versioned mode and I need=
 to=20
> make symbolic links, but I don't know how?
> Another question is what is difference between -dev and -dbg output?
>=20
>=20
>=20
>=20

