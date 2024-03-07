Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7D51C54E4A
	for <webhook@archiver.kernel.org>; Thu,  7 Mar 2024 18:02:41 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com (EUR01-DB5-obe.outbound.protection.outlook.com [40.107.15.42])
 by mx.groups.io with SMTP id smtpd.web11.179.1709834551637790871
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Mar 2024 10:02:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=quv1OENJ;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=quv1OENJ;
 spf=pass (domain: arm.com, ip: 40.107.15.42, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=f89LSyEZrlOA+DuJ2dwDRrSfzkG9QLU//d2itY19VsTxD5RvzykqeIzoCRPqvd2ptQLt5SRbNKxuxt6TbTXehz4+fW2G8389mC3peLvW6yXPCVFWYFmI5F2cgYDNpKBYoX4RRpTaAKpIou0cLM9BLJpSqHpT2UO12rL+H2TIk9hJWz82m5A04dVrHM8rwkgKaFy4UyJFvu6vWL72TBlckewRaw7BhFhI+yWpsrU0xi9/Ix8zwMWt9e+B0oiZMz+QscofPXoIpt5hv1PgB8SdZLnSpXLxhq0jWzIXtR8DKjG0NH3UhqmXN4oir4VFHbDy42URV7UB2bIkslHRgskk2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uzG3vmIXlZXgy5k8H70IR/yPo7YDPTSS8SWXXNDAB/8=;
 b=g5FJqlRt7fdthoLoEv5bAR/oZTOVzRDklgTrFjJLt5+NxTJp0avfR0p8885wRWSfSdbKulUBAQd5FuKVBYFep9meuoT1PzLhYo0qiUzS+t9h3YkHWQWLpbH3CEPMGBqBhzYQvFn4fAOb26aQzVAkNBXaAnC2LdJPTeUELmk6FbSvPP5RdC2WkcE09B3yS/Q9J0qwOlT/Ep4F86qJIBNHdMMFqwrnPytHo2R/12j+9gYk1UhZ5BYO64ZzoartcWADbVZ83QwKcZMO7DHpjmdZSnIUP1KWISIlVHvoqBBPeVtO9r9HEj8JCWewAomIrqtfCW3TuBhy99CddrQyuoMOwg==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzG3vmIXlZXgy5k8H70IR/yPo7YDPTSS8SWXXNDAB/8=;
 b=quv1OENJQi4a+OSH757OXL4q0m5eJfjHSCFP+AxQtPDZXg2J8qtw7iyKFRlw2CpxMeMn+FvwNnMQAtux13J7L0M/nIkb3lgWIcvJngHMjddBN9u1EIZbZ+zfJLyieyan6oLn0+1dDwnccNaWQF2iXOuOrJnNnze0gBBgzyc4h4k=
Received: from DU2PR04CA0197.eurprd04.prod.outlook.com (2603:10a6:10:28d::22)
 by GV1PR08MB10569.eurprd08.prod.outlook.com (2603:10a6:150:16e::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Thu, 7 Mar
 2024 18:02:25 +0000
Received: from DB5PEPF00014B94.eurprd02.prod.outlook.com
 (2603:10a6:10:28d:cafe::52) by DU2PR04CA0197.outlook.office365.com
 (2603:10a6:10:28d::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.27 via Frontend
 Transport; Thu, 7 Mar 2024 18:02:25 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DB5PEPF00014B94.mail.protection.outlook.com (10.167.8.232) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7362.11 via Frontend Transport; Thu, 7 Mar 2024 18:02:25 +0000
Received: ("Tessian outbound 5180408f3322:v276"); Thu, 07 Mar 2024 18:02:24 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8c2f926e1f196faa
X-CR-MTA-TID: 64aa7808
Received: from 65e83d1f5093.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 952FD9B4-76C6-4C2A-B8CF-02DA32A8D9BA.1;
	Thu, 07 Mar 2024 18:02:18 +0000
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 65e83d1f5093.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 07 Mar 2024 18:02:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f7XrXLdzHnQxLAOg2UUtwwQe70zKwsHRt2DynkBNTVDn3JVgubbn+NqCN3vsTiG+P9JBvDszYvmqFMYXkHorTDk0wMJUZ8o7h22Ovxr+aQnACLIThk1/yUqzsfPRTRsva2gVsgQUMGp5Eo+I4FpiG1GKs8X6TAxJnAHdR6Jyp4bRHgD3Ou407O1t19a8NCitsMjtZTCuLHSt3nCb1i7nvlK00pzg80ruf22mCjBt51cdr5CSlGtsf1/QUhtKrTd5552FlcrEKaRQCnFiP5wPcSXk4NuQwzN3bgMGjtanhOx7QEKk17RofG2mhrZawa/czo9zDEk13e8evl6vH1e9Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uzG3vmIXlZXgy5k8H70IR/yPo7YDPTSS8SWXXNDAB/8=;
 b=XmBDf3CHZ7dLa8BosNDY+XCCZV4aet4FWHmoRHAz/otmSewTFbCyXgSS1qyrB/MZjexu3+SRqae4shhqdK+/Vf4bagnLOA0VT/EWfgKoheJe4ptqYZ2JekNRU2W4Eei99YNbMO5P/L7OTMT/IqkaON1Usw4Hz5MUg8QiiHqVZlaFliaPowMWZWRXtwUcMgi8slKdoZNHhityTZ3OxzR8iKsWirGTyEgOMu+CMGu+Gz1KeuCjXsZppdAD8Qt6rZeO+LbH3Vw8fcv+hM5tpiB821UNWmjBPcoZJT1TnfVFmDPRgwLJxylG+Vz5fSk47aMEygIS3VGtS0Kz1gG82u+zHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzG3vmIXlZXgy5k8H70IR/yPo7YDPTSS8SWXXNDAB/8=;
 b=quv1OENJQi4a+OSH757OXL4q0m5eJfjHSCFP+AxQtPDZXg2J8qtw7iyKFRlw2CpxMeMn+FvwNnMQAtux13J7L0M/nIkb3lgWIcvJngHMjddBN9u1EIZbZ+zfJLyieyan6oLn0+1dDwnccNaWQF2iXOuOrJnNnze0gBBgzyc4h4k=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB7892.eurprd08.prod.outlook.com (2603:10a6:10:39f::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.26; Thu, 7 Mar
 2024 18:02:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7339.035; Thu, 7 Mar 2024
 18:02:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, "jmeyron@gmail.com"
	<jmeyron@gmail.com>
Subject: Re: [yocto] Random "Connection reset by peer" during fetch phase from
 Github repositories
Thread-Topic: [yocto] Random "Connection reset by peer" during fetch phase
 from Github repositories
Thread-Index: AQHacK5oc/uuvD8xn0uHkCKbBA+qVbEskcIA
Date: Thu, 7 Mar 2024 18:02:14 +0000
Message-ID: <43E6D883-4D67-477E-989B-2A89257C818A@arm.com>
References: 
 <CAJ0N1+Sjno--eOQxQwM5e2Q9eEcNrmg4HrzmZNWX8yCjnPuRVA@mail.gmail.com>
In-Reply-To: 
 <CAJ0N1+Sjno--eOQxQwM5e2Q9eEcNrmg4HrzmZNWX8yCjnPuRVA@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|DB9PR08MB7892:EE_|DB5PEPF00014B94:EE_|GV1PR08MB10569:EE_
X-MS-Office365-Filtering-Correlation-Id: 1131b507-cabc-4630-b182-08dc3ed0be8b
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 pPChyUixBzVuRIJw8bT2b+Mtq5c9F8qrU8JZl6Y42uZ+Zv+WBOMHqD/iEGN/Z4WsVj2l3B4xUtQ0OfLu8bY09kNzT/IW/IPj6Q9uVcwoBHvS3ztS/FsXYtDvWw2T1Pp84RYtr01M8iDdR0mml4ms/MO1RbNb4Zo2yNX75V7nECOYd7QnZSOeYXmcIdZxrD2RBzi1eUU4+wwaKauoOL/KxAKb317ipfDKKkrn+U8vVUOP1o7BTFIFqUMuvOmfCUaHeUtMvRamJR+oXWAaqnkIj3Ie43VPxk3gt0fNV4S1Ny9c/0TwF+A/zcwO0cw2jal+/B5a7XEKJJonWD93NnDPhXOYjjiApBVXdhubcGVfLj0KF/vo2IjAJ4O5hPVBUQnQk6n+cArOnUFc8RxkigD9EqcP4iW8HuDW6yMeVQ4vacXX/TMMoXivOROfC6z9Pe/Zx+OGsiyqJwEFCqnE4iPWCPbspCUchOK+KFJc4vXyVl06Jud1reVLUdRMgExiolHhHe/tNKhiwc3X4POtaaWvPhvz9nMRMechjsJY4OmmeTmnZCVHx/M3oNIP/665E6jcDFmZJeF754E9yiQ2DBPcFweNwPAcYSulmVRjR8C3+kzv+xzZBCy48WRphhJypEOpeANLP1Dj2mr79nWt121vpUZ6n8HG4yrLSDQGrj8B9/0=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <E5F167AE9E0FFC488298670D9935679B@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB7892
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DB5PEPF00014B94.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ce2f8749-ea39-4393-8cd8-08dc3ed0b866
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	H+rXJXWsJ8Ir/L2X0plWGNGp8N+AYPjSFqTLkqAbKyn/gFNmXNdhmLu8SlmDcgjdR8d23TCMrGgd2XQlmqTjWFvYi07Pj75GaXD+E7n+KwZyS0CXa2ehNgi6jzbFV5CbH9RADchMSM4RQgRTSJ7U7/n2fK3d7begXDuELwvKOR3jZXL5/ls5Lfp4OxBgRiX6NfPMWx5xnUHC2Lz1DLdHMNccG/0Es0mQVzuhkugkuWY96Gwcf7qW+ltA1tqMLC5ckDBrkSXqBbmt/1WPpQ9hMpPXT5oa5PGd2Y+nTPgUGpIkjv6f2F7/pvplZuQzPZDCsf0a/CLStl4GPApO3g+yoiTtsGf5uhTQM4oi0vYnpYhSujeV21zKR2X3u6qZsZOLlNRS8ux6XCbiS9GuHd2qISO4JZ0MN/R91gmTuqSka8lz5IQD2LRQqiQsk9rPEjfPoQF6D2QwME2Cc7/afneaQ6WCjNzcocFNJaAbkwArC54ZHsuPG0jezqgC8ekXcRv8CQoWzNqOdZHOqHyhVM7TbxVJrWeK7SAekPOY3tJeVxv3bWXfdmXWfNwQWBW2LDuc73WjiQy9njVDn5h6XsRQRvcEt3Jjx/HpNOvdtCZteDuP+4WDI4vpcEaSuTQPTRQ/u/3dx8nq6vbNaXwZtq09Xvu2UaJMJh6RneuIZ0BWFajP+AifMIkLhdeecBcbpbY8LZGdaUe8jLIO9X9tLUxmgw==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(376005)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2024 18:02:25.0713
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1131b507-cabc-4630-b182-08dc3ed0be8b
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DB5PEPF00014B94.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV1PR08MB10569
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Mar 2024 18:02:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62698

Try running wireshark or mitmproxy when reproducing this so you can see wha=
t host is actually disconnecting.  You might be fetching from our mirrors, =
not the GitHub repository.

Ross

> On 7 Mar 2024, at 16:41, Jocelyn Meyron via lists.yoctoproject.org <jmeyr=
on=3Dgmail.com@lists.yoctoproject.org> wrote:
>=20
> Hi,
>=20
> I'm trying to build a custom image where almost all of the repositories o=
f the recipes are hosted on Github. I'm using the HTTPS protocol to clone.
>=20
> I'm having random "Connection reset by peer" or "ssh_exchange_identificat=
ion: Connection closed by remote host" error messages. By random, I mean th=
at the repository that fails changes almost everytime.
>=20
> I made a small script that tries to fetch the same repository without Yoc=
to in parallel in a loop and I don't have any problems.
>=20
> Does anyone happen to know what could be the issue?
>=20
> Thanks,
> Jocelyn.
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62694): https://lists.yoctoproject.org/g/yocto/messag=
e/62694
> Mute This Topic: https://lists.yoctoproject.org/mt/104791133/6875888
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [ross.burton@ar=
m.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


