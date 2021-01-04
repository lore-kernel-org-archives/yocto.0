Received: from EUR06-AM7-obe.outbound.protection.outlook.com (EUR06-AM7-obe.outbound.protection.outlook.com [40.92.16.46])
 by mx.groups.io with SMTP id smtpd.web10.11950.1609757072036929903
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Jan 2021 02:44:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=BFJPqFGH;
 spf=pass (domain: outlook.com, ip: 40.92.16.46, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JST2K1+35jD6AN68E5fKzoxPqIjDiO37ExgXa7+uv0ae/iZKig18g74K/vXumQe2p0RVyKfXWu+efJo2JMHwAZFz/11bFxA5vKErEE/efvCR0IuNlFnUOXYTmvounF6A15GTH3DUeJXVPIK4Bqj/7JsbkaWL2nDat1vvtay3nOCflL8JeWqCsEjI0SrlCINaQHiWPSU2We5VMz2uo00R0TMRLkGNzxJexUsg3RxZAuv1vtH5vxgvLXxp39P1Pj8rQtLmWVEKApeLI7GMTWp3+5RJXDD/5eDMybL2uLcItgw9tAE3+aDDHmMjqptESBD/WatdDXFDkrj0moqEBleVqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PfBk5DAhtRMitkHiEgqx9sLJ2V7i2bMbcxPNdLZgeJI=;
 b=WzGqB85/kwLn+nbEAWfDSRxtsZKw0h8e0tnJDQw8ydyn9Fpj1s0O8R/6KHBW3KPrOnJrQo42PXPipSdA+n6KR4a6sPQYnh38d/1cmG/Zo69az0lWVr6n+zpeoEzn6oGmloFS5Byf6XJliLiynDEcZkXJlUwrcCDvp4Ji0QcXByfSZX3HD9/Onvm7QX/oeXwzSZcYl+///07BfykyzDOaxhI4/LdDdsb2teNcD2pCVY4XxpTsaeaeLCWYwPRkg6C/vNL1QeZiipDKsWYIjWDtMmAWeVuD8Ok4vO3UTjnlrFOjGeFkYiKywxhlcuk4tqeXdqFM2Jq4Btkn3Pi3YXx4fA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PfBk5DAhtRMitkHiEgqx9sLJ2V7i2bMbcxPNdLZgeJI=;
 b=BFJPqFGH1b0XYpsT/1UDI/gCasJoDvziH/0IjEJReKjIn+7gzkjvqFrH3tQj2pFsfEWwaASCbfq8x7WVfwUeutNUHYLeUTpwqk38v2puUsj7PmxtC4YdCZJ7vMpvD437mRwyHP+cV0jOWUQuAN2wn8SDmRhzR9qzfbrjj3Ci2TIQf6L16RPFyvahAMkb0s6eqOBjjJjgizvXmxbiwXrM4OhGvJVh5ldzdkdr3i1veKs83oIO2NoJnLw9Pn9PdomKhHvKx3q/z8xW//Uzvu3x9qYP83Sh5bUV7bnbBvbyYxTYMrZ9EIG79LqnDHTAxwoBC9EbrFLlCbUbnT4pVVP/5g==
Received: from VI1EUR06FT004.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc37::41) by
 VI1EUR06HT256.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc37::396)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20; Mon, 4 Jan
 2021 10:44:30 +0000
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 (2a01:111:e400:fc37::4b) by VI1EUR06FT004.mail.protection.outlook.com
 (2a01:111:e400:fc37::111) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.20 via Frontend
 Transport; Mon, 4 Jan 2021 10:44:30 +0000
X-IncomingTopHeaderMarker: 
 OriginalChecksum:15E564B0062BDF4E10745E20C79C2956F8D1E961E0B25460B325C77FDD327A39;UpperCasedChecksum:6DFD28C7D1792500580AD3B03E71257F0EDA96BBED9A17E2F2B0218B033783DF;SizeAsReceived:8480;Count:45
Received: from AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::404f:17dc:be86:de0b]) by AM9PR09MB4739.eurprd09.prod.outlook.com
 ([fe80::404f:17dc:be86:de0b%6]) with mapi id 15.20.3721.024; Mon, 4 Jan 2021
 10:44:30 +0000
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
From: "Konrad Weihmann" <kweihmann@outlook.com>
Subject: oeqa: testcase caching
Message-ID: 
 <AM9PR09MB4739A4D38A58259775479952A8D20@AM9PR09MB4739.eurprd09.prod.outlook.com>
Date: Mon, 4 Jan 2021 11:44:28 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
X-TMN: [24sYqwbxE5dtgJZnD92kU78x5Igh6CaL]
X-ClientProxiedBy: AM6PR02CA0011.eurprd02.prod.outlook.com
 (2603:10a6:20b:6e::24) To AM9PR09MB4739.eurprd09.prod.outlook.com
 (2603:10a6:20b:282::12)
Return-Path: kweihmann@outlook.com
X-Microsoft-Original-Message-ID: 
 <363c5535-2ec9-b294-0861-b833eb69de26@outlook.com>
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.188.23] (87.141.91.222) by AM6PR02CA0011.eurprd02.prod.outlook.com (2603:10a6:20b:6e::24) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3721.19 via Frontend Transport; Mon, 4 Jan 2021 10:44:29 +0000
X-MS-PublicTrafficType: Email
X-IncomingHeaderCount: 45
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-Correlation-Id: 78576c25-41c1-4d82-5212-08d8b09db71e
X-MS-TrafficTypeDiagnostic: VI1EUR06HT256:
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	HL2EYMaw1v7A9zBP/8JxS8+ixHYQPo+ZPRgt/U6XZAdH3DrubLVHhWFpZsCh1BqesKiROr8ae1kYr0kKmHLLNfctkEv+QCYhZ3IBsIC7vl0x5FegF65S1Xq1+RvtFt0mj1ul4RMxLdLGZ5kw1hoUT37qPorqm1cN26M2te8DTtn7j0OIKiD3N1g4HI4ULSLZCkqgxHIb1yWOvM+inPf9H1HM+kUa6e0aVsIJCQQ5ois0TwGzQFgqamsjOj2+Fsm1
X-MS-Exchange-AntiSpam-MessageData: 
	6Wprl9FkgGGQAr1SbH9zvdm2DhpaUOJsLhF5jJ5AYp6Q6zQnsUHvM+g4Iy4/z/KWLYBfxJrFgwnnODGAN4V3Sys6Ai82AOZzNqf1CHhtV28wJFf9+A7hyg93EevkB/eFjxF/Dlqb0Tqaw2duAwo4Lg==
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Jan 2021 10:44:30.1178
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-Network-Message-Id: 78576c25-41c1-4d82-5212-08d8b09db71e
X-MS-Exchange-CrossTenant-AuthSource: 
	VI1EUR06FT004.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: Internet
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 
	00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR06HT256
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi all,

I have a bunch of custom testcases (oeqa/runtime/cases) which are 
interacting with "d" from the build host - basically fetching some info 
while executing the test, e.g.

foo = self.tc.td['MY_CUSTOM_VAR']

What I've seen is that these files create python __pycache__ files 
during parsing of the testimage run.

On the initial run everything is working like expected, but if I now 
change the variable "MY_CUSTOM_VAR", without modifying the 
target-filesystem the value inside the test case doesn't get updated.

Did anyone else encountered this?

To me it seems like the value of the var does make it into the pycache 
files, ignoring the updated value on a second run.

On that note: wouldn't it make sense to disable the cache creation for 
oeqa test cases? just to mitigate chances of such scenarios?

Or maybe I'm doing something wrong here, so any pointers are highly 
appreciated.

Regards
Konrad
