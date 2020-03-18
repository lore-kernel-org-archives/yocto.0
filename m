Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.78])
 by mx.groups.io with SMTP id smtpd.web10.17467.1584544189136233721
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 Mar 2020 08:09:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@topicbv.onmicrosoft.com header.s=selector2-topicbv-onmicrosoft-com header.b=CIhyD8+4;
 spf=pass (domain: topicproducts.com, ip: 40.107.7.78, mailfrom: mike.looijmans@topicproducts.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SrNQE5Q7sNU0eP1lCRLHeBUJ0ihaoZFiOagv1Bydpbs=;
 b=CIhyD8+4UPczKMx3z4vXI4fPAmpiM02T9ZwwoP+aFwTjlMQoC7c+mmXDhukhfd6Uwqe1pJwg8KKHMuxhgZmX0V61a3Zkn357AA/E1ZnKMVdJAutEkdjLRHbIN7TICjTELMZ3prOyS/fjjfaZVB8KK0uyKLPAIixFS6lYTCz8upQ=
Received: from AM6P195CA0095.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:86::36)
 by VI1PR04MB5534.eurprd04.prod.outlook.com (2603:10a6:803:d2::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18; Wed, 18 Mar
 2020 15:09:44 +0000
Received: from HE1EUR01FT033.eop-EUR01.prod.protection.outlook.com
 (2603:10a6:209:86:cafe::1f) by AM6P195CA0095.outlook.office365.com
 (2603:10a6:209:86::36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.19 via Frontend
 Transport; Wed, 18 Mar 2020 15:09:44 +0000
Authentication-Results: spf=pass (sender IP is 13.81.10.179)
 smtp.mailfrom=topicproducts.com; lists.savoirfairelinux.net; dkim=fail
 (signature did not verify)
 header.d=topicbv.onmicrosoft.com;lists.savoirfairelinux.net; dmarc=none
 action=none header.from=topic.nl;
Received-SPF: Pass (protection.outlook.com: domain of topicproducts.com
 designates 13.81.10.179 as permitted sender) receiver=protection.outlook.com;
 client-ip=13.81.10.179; helo=westeu13-emailsignatures-cloud.codetwo.com;
Received: from westeu13-emailsignatures-cloud.codetwo.com (13.81.10.179) by
 HE1EUR01FT033.mail.protection.outlook.com (10.152.0.178) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.14 via Frontend Transport; Wed, 18 Mar 2020 15:09:43 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (104.47.18.111) by westeu13-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via SMTP; Wed, 18 Mar 2020 15:09:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EY49oSmTBFkyjO2fEttegST0wCb6MFEWth83g0UDgtNqssDyOzc1zkKsP46u5K8tIutCJmH7IlTBCaJR/vMJ7RRm1cs7D/68tY+P6lySH39kH2of4rYvMADnaaM9kphisKiNPXYXUG4LFWUQsYTteGwc5jMtjXbA7Dy/nPdqeLOT9OPZqD3pfEb0ye7qQ3WeJPH0QSgLBE8Aw0AbOCiEhuk2OvNrDhJKBDuDON7u0s55XJE4VlOULojZWO6A8uljTXpZ4QmA9pruw4BAxwV6wAfwRPvUAffiqwZUKzKVuUs32sFcpoiFAgmpyf/Rznb8hZgU6Q8oWTyNx8GQcqA8/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SrNQE5Q7sNU0eP1lCRLHeBUJ0ihaoZFiOagv1Bydpbs=;
 b=P3/aJJg6FEFBDkF3ATCFx3db+tDfjX5NpSwgcSmq0/XGUrPC4L9rm4PVhvGCQoCTxEdcMDKd3DNivnB9uJEE8h8IBdaEYOdkHY74MpLxCO6DrNuvaquCHSXXyO9Wj92hs/h5bPgfOBgnmjEcehAJp/hmgysgQLeLRTQyYW1gXtdwWFY8TTAtKYvkadHolnCJXlJcEzCu6se9yoleYjlx5Fhm+Pt/iYHRY/+9wc1MQCjhFD3swkE/8LvHa6Klqz3FXv16Vqa92AvnH3FJwJ9OmfgBytZ1mXILaOmmc1rC6Z8PJYZSEoAREEMQSIYXZ6qNy5JHD36rVUT1Cf2M8zNkTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=topicproducts.com; dmarc=pass action=none header.from=topic.nl;
 dkim=pass header.d=topic.nl; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=topicbv.onmicrosoft.com; s=selector2-topicbv-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SrNQE5Q7sNU0eP1lCRLHeBUJ0ihaoZFiOagv1Bydpbs=;
 b=pjnjowzCJsoMjVF/Va/vEjaOXswOzuaa90WpBgMNttl4WX1HG8ssEf4an92VlhcOwNcQpd8peTcHQwQaiTB5UZI49wy8Do+OVp7okPpLnYh9+ktj8A0G7ExyFbVNQaUgI+DP/AE441Be7+kdap8vblQ4bN97pmvl51A0paw6QZA=
Authentication-Results-Original: spf=none (sender IP is )
 smtp.mailfrom=mike.looijmans@topicproducts.com; 
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) by
 DB3PR0402MB3769.eurprd04.prod.outlook.com (52.134.71.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.22; Wed, 18 Mar 2020 15:09:40 +0000
Received: from DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71]) by DB3PR0402MB3947.eurprd04.prod.outlook.com
 ([fe80::380e:f722:2d0d:9c71%6]) with mapi id 15.20.2814.025; Wed, 18 Mar 2020
 15:09:40 +0000
Subject: Re: [yocto] What are the key factors for yocto build speed?
To: bunk@stusta.de,
 Jean-Marie Lemetayer <jean-marie.lemetayer@savoirfairelinux.com>,
 Paul Barker <pbarker@konsulko.com>, Mikko Rapeli <mikko.rapeli@bmw.de>,
 oliver westermann <oliver.westermann@cognex.com>,
 yocto@lists.yoctoproject.org,
 embedded-discuss <embedded-discuss@lists.savoirfairelinux.net>
References: <rCbr.1584535957803213201.lfzw@lists.yoctoproject.org>
 <20200318130126.GK104502@korppu>
 <CAM9ZRVuQyj7X0YFqkpSFWM2=kQHnu8ZGpMsD34ntHYny4x7XJg@mail.gmail.com>
 <251912923.167286.1584540746314.JavaMail.zimbra@savoirfairelinux.com>
 <20200318144906.GC23112@localhost>
From: "Mike Looijmans" <mike.looijmans@topic.nl>
Organization: Topic
Message-ID: <080227a9-b5f2-8e3e-201f-5285a1f80e2d@topic.nl>
Date: Wed, 18 Mar 2020 16:09:39 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <20200318144906.GC23112@localhost>
X-ClientProxiedBy: AM0PR06CA0100.eurprd06.prod.outlook.com
 (2603:10a6:208:fa::41) To DB3PR0402MB3947.eurprd04.prod.outlook.com
 (2603:10a6:8:7::19)
Return-Path: mike.looijmans@topicproducts.com
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.1.130] (83.128.90.119) by AM0PR06CA0100.eurprd06.prod.outlook.com (2603:10a6:208:fa::41) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.18 via Frontend Transport; Wed, 18 Mar 2020 15:09:39 +0000
X-Originating-IP: [83.128.90.119]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 541645e0-6a29-4961-ba3e-08d7cb4e63e3
X-MS-TrafficTypeDiagnostic: DB3PR0402MB3769:|VI1PR04MB5534:
X-Microsoft-Antispam-PRVS: 
	<VI1PR04MB5534EA8FDDC4E01D052B6BDD96F70@VI1PR04MB5534.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;OLM:6790;
X-Forefront-PRVS: 03468CBA43
X-Forefront-Antispam-Report-Untrusted: 
 SFV:NSPM;SFS:(10009020)(346002)(396003)(136003)(376002)(366004)(39840400004)(199004)(81166006)(81156014)(36916002)(52116002)(8676002)(66556008)(66476007)(53546011)(36756003)(66946007)(31696002)(2906002)(8936002)(31686004)(5660300002)(316002)(44832011)(16576012)(2616005)(956004)(110136005)(186003)(16526019)(26005)(42882007)(508600001)(6486002);DIR:OUT;SFP:1101;SCL:1;SRVR:DB3PR0402MB3769;H:DB3PR0402MB3947.eurprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;
Received-SPF: None (protection.outlook.com: topicproducts.com does not
 designate permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 0Rq9BuAig5oMuMtwlHEOyjdiJ80XmqzFwxYroOfv9GoxKlP5dYSZ4jBmGY4UHpiZFplz3Z+E8JUHqOgehrEV8bYku7G6f7DzplWvCyt3EmXp4pTZaRagpUL1yzcpkotBRSh9mQlqjSUnkXdije7Dn8wjBcDuRXZt+y0j0vEInMg5iuFZ/RWR/gvl7MjFjuEgkR6p9MYtPO8g4Fhps4hPO+BoRQKleGFEGEwWGBPpdL/uElpCv3AnKUB+UN5xn7DEOBRd3t3eSTrY8QHQdPxDHR7EvgSVKo+QbzwDB453b1sAi4Nkoz9/ks68UKJnr6MzAMQV2zNdfuLy32agGFqe8o+/0M3U8Pp/BYNyb0vHhinNkMzKQIljGI+SEZJkbJmOV9ZuKX8sSnwV/k2xCeZh6UAWDrJLbjsVXdJQS1oJg4y0lU7r9V43NG+jwPU36KGH
X-MS-Exchange-AntiSpam-MessageData: 8OYGgCaV10dR0XnGMBBVUWmBYC6YpCuXq3dw0ke7KoDlPnccyv0F/sEzNbKx0AnJkWl/JQF/xuK7Fl+Q9iJzh7307+OXejuh1Zs2cZKWWdkbdeKKQgsObOKyGOBuYUSmdMWZ12PLjGPPhd5TCr28rA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3769
X-CodeTwo-MessageID: 1bc9ecc4-459b-4e91-8049-7999a35089ab.20200318150941@westeu13-emailsignatures-cloud.codetwo.com
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR01FT033.eop-EUR01.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:13.81.10.179;IPV:;CTRY:NL;EFV:NLI;SFV:NSPM;SFS:(10009020)(136003)(346002)(39840400004)(376002)(396003)(199004)(46966005)(53546011)(42882007)(8676002)(356004)(316002)(2906002)(246002)(8936002)(31696002)(82310400001)(336012)(36916002)(16526019)(47076004)(2616005)(16576012)(7596002)(26005)(186003)(956004)(7636002)(6486002)(508600001)(70206006)(36756003)(110136005)(70586007)(31686004)(5660300002)(44832011);DIR:OUT;SFP:1101;SCL:1;SRVR:VI1PR04MB5534;H:westeu13-emailsignatures-cloud.codetwo.com;FPR:;SPF:Pass;LANG:en;PTR:westeu13-emailsignatures-cloud.codetwo.com;A:1;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	83ab5839-63b2-48e4-a1fe-08d7cb4e617f
X-Forefront-PRVS: 03468CBA43
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	QcO/7wmh3y2Nv+yLpFo8BJ3ONNayd+h8v7QdAkPd/L0MWdhauFtlIQCDlXUfPzMmjxeewMemrooZlMVwSViilMM33qfF2XgrF7fbnBa6l2q0YATSpfqnIDSDAXdOUnmtiEznDvtc7q59JnvysYLutv/sXpwT9W5ZorXrGUD/fEB4eow07JdQALQgEK+Zx/AI84U7a1jgM3z58Bd3ZVEgMCd5eaz0E1B63wg+xgv0nVaW5XRE/qGS8QBaKZTUgTjOz6m6G3PZj6rr4xBYZnvpGHIwbOdldko3ItZL5TJUiofVsdKmcJli6Z8H+XCLHAHz/E3e7yBYt79BDu8sgjfY7FiM2JtLEGGiK7n0y9G0XodkASGlyQ/roJHWp5yXDrWl8ptHFcFeWyKzoI4vJW21J+GlRTMERREM/AqE4B2kImxC6oMqg9pIotc9doGfcgz0sjOpA5xx+kyWBb+Qr401SWLd4ZoDuN1BrzJDxnGS/b0DxuaC+xS4/vaE4cHFeiyx/Av/CKB1Cf/b0ugYBjBm5Q==
X-OriginatorOrg: topic.nl
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Mar 2020 15:09:43.7984
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 541645e0-6a29-4961-ba3e-08d7cb4e63e3
X-MS-Exchange-CrossTenant-Id: 449607a5-3517-482d-8d16-41dd868cbda3
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=449607a5-3517-482d-8d16-41dd868cbda3;Ip=[13.81.10.179];Helo=[westeu13-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5534
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 18-03-2020 15:49, Adrian Bunk via Lists.Yoctoproject.Org wrote:
> On Wed, Mar 18, 2020 at 10:12:26AM -0400, Jean-Marie Lemetayer wrote:
>> ...
>> For example one of our build servers is using:
>> - AMD Ryzen 9 3900X
>> ...
>> - 32Go DDR4 3200 MHZ CL14
>> ...
>> It is a really good price / build time ratio configuration.
> 
> Depends on what you are building.
> 
> Building non-trivial C++ code (e.g. webkitgtk) with 24 cores
> but only 32 GB RAM will not work, for such code you need
> more than 2 GB/core.

Seems a bit excessive to buy hardware just to handle a particular corner 
case. Most of OE/Yocto code is plain C, not even C++.

My rig only has 8GB but doesn't run into memory issues during big GUI 
builds. The only thing that made it swap was the populate_sdk task that 
created a 1.1GB fiel and needed 20GB of RAM to compress that. Took a few 
minutes more due to swapping.
I submitted a patch today to fix that in OE.

Your mileage may vary. But RAM is easy to add.

> 
> On Wed, Mar 18, 2020 at 05:52:37AM -0700, Oliver Westermann wrote:
>> ...
>> Any suggestions what to put in that build to get the most out of it?
>>
>> Currently we're looking at a big Ryzen, 64G of RAM and one or multiple
>> SSDs on a "consumer grade" board like the X570.
>> ...
> 
> I would buy 128 GB RAM to not run into problems due to lack of RAM,
> and Linux will also automatically use unused RAM as disk cache.
> 
> As long as you aren't running out of RAM or disk space all that matters
> is CPU speed, Ryzen 9 3950X with 128 GB RAM would be my choice unless
> you are on a tight budget.

Of course he's on a tight budget. He wouldn't need to ask for advice 
otherwise...

Most consumer boards support up to 64GB RAM. Pushing to 128 may suddenly 
double the price of the mobo as well. I'd go for 32 (as 2x16GB) and do 
an easy upgrade to 64 when there's trouble. Even with 4x16GB that's not 
a bad investment, if it turns out to be a bottleneck 16GB modules will 
be easy to sell (contrary to smaller modules).

