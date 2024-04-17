Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCFF6C4345F
	for <webhook@archiver.kernel.org>; Wed, 17 Apr 2024 11:36:52 +0000 (UTC)
Received: from EUR04-VI1-obe.outbound.protection.outlook.com (EUR04-VI1-obe.outbound.protection.outlook.com [40.107.8.58])
 by mx.groups.io with SMTP id smtpd.web11.10631.1713353802698352880
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 Apr 2024 04:36:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=w3P5/q9w;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=w3P5/q9w;
 spf=pass (domain: arm.com, ip: 40.107.8.58, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=i4vAZ4FOD/fvtlD5aLneVpl5bmszkfGQj91QOTO32H1nuVKs/P8a0llayvqURhXVw7qEivCG8d97Qil9LzcCCAAlWjc7Xe5b/xBPwTM9Mj58Oot2zNQuYFm46Q9Bg5YdlFZNvvx4a3WyesQ9uHZuiryOwTnaYdvk2zVoWdSrRgCBRkq9noNLirJ7sET+HWXogS80IN+g8rlGLRNmU1JVQKpegR9w3BcahKovcCQFkxoin42w6cilF7JzVVO9pfinizxFwIZwalK+6GF/+g0Qp97NNA13lPM1LePy3xilbgnMZsW/pAoXxV+fwCZY9BlVRx/zZbOJ930juwC2o7fS1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfjVgHqtzLoZrkTm9+3ne06Mr53shvtXhNsLRP4oZbQ=;
 b=SoMIAUw7y3WyBg90bAhBR7Td2NeKL18m3XnMfccHrdpksckN+Cf5+JRvCgcy+KeVMNsbzkCwAcQm57ZU05hvi3TCjbk9r5I3heMpOzkE+h/bbW3oD5DNpzY5YUVusmhWtwFGk/oToqtpHREu0QbTXscxBxzaNZWFFnAhll6bmGGv5ov33cAo2b2b+93NRqc54tuHHt/wu/GD9kwALWsXt6gBXft6WBuj0ss3hu+NPQQvjZBtjJMIlJsUCNCZOtQ7Gq0Th3H5fWJCrXpqojLwwnOwrz5q7P2n6fJwMJ9k26UzjUaAM/H0k7k+GQd+toud8aMSp7zhfytjyN+sboK3mQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IfjVgHqtzLoZrkTm9+3ne06Mr53shvtXhNsLRP4oZbQ=;
 b=w3P5/q9wqwSBBLKcpC4NmMW1w7bYBd0BBKD01C/v353xyvgcv5B2WLqg1iTp89qBIbmPQElEW07ycVZFfa9hyOhivYPTqp5NmJtkO3rYbA+gLS4PGpN8rOIV5DleH9DoqTgNbbbdqHRIiIhhPNcykXapO/1BNrNNdRxAQYKkZmo=
Received: from AM9P192CA0021.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:21d::26)
 by PAXPR08MB6429.eurprd08.prod.outlook.com (2603:10a6:102:dc::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Wed, 17 Apr
 2024 11:36:38 +0000
Received: from AM4PEPF00027A6B.eurprd04.prod.outlook.com
 (2603:10a6:20b:21d:cafe::f8) by AM9P192CA0021.outlook.office365.com
 (2603:10a6:20b:21d::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.34 via Frontend
 Transport; Wed, 17 Apr 2024 11:36:38 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM4PEPF00027A6B.mail.protection.outlook.com (10.167.16.89) with Microsoft
 SMTP Server (version=TLS1_3, cipher=TLS_AES_256_GCM_SHA384) id 15.20.7452.22
 via Frontend Transport; Wed, 17 Apr 2024 11:36:37 +0000
Received: ("Tessian outbound caed45120527:v313"); Wed, 17 Apr 2024 11:36:37 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: dc4418f097764ea6
X-CR-MTA-TID: 64aa7808
Received: from 979c089af9de.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 5739B7B4-BA94-4C2F-8E73-9488C68ED69A.1;
	Wed, 17 Apr 2024 11:36:29 +0000
Received: from EUR05-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 979c089af9de.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 17 Apr 2024 11:36:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NldpJGjk9ZQZ5esBCQQ+GrwE46WTp33q2wssc5AP6haZCMr17T6ALy7QUiuI0qwt7JR8NJTnLbeAGY1q0O9ALHPz/R7xodSRPb66X0OAfAmZrT4bAGbedv1uFmXHB7G5wuSp4pjhvVoAywVMItLW4YVskuHJisHRJLi+jQwX4MbwfpD6kHHy2DFSiYGlXOWH2CucPKFM1LCLuYfOiC9qQAGTPCv4SgohpPi74LEWptsPzNOmrZTSpwjPCs2jPobYD5TXLlWHC0AY0saupdJn2pevRf3qFHyTuClI/XTYLvRVpmg9IIo5nZeI3oPPZif1NC0lX/Rv6cBEH2dcDI+htw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfjVgHqtzLoZrkTm9+3ne06Mr53shvtXhNsLRP4oZbQ=;
 b=NhFaU9WITsr1f/rSTaflfq7QMIuUYkadvuR1iqhRHj7jZMDgYkgH95Q3LP2B6hQ9EBoTZBTS47JWxkP3S+jQA7m1aQizUysJ9SG4FHDS1AclMhT1lydcul1Z51+2m9jFgQuqxKoQZu3AN0KTnQgdaL+TX3SUv8VZIdaTwt5W2dRi0MlQEhTR3B6cE9CASI8HERVjSZ9najQSvNTrH4OAyG2hYPeIh5A8OeAo9gZ3QhiPGfxGyWvdH3nVM3kdEh18m/iwW1XFCf3T401byv0447l2qSS/lpvBgaSRKMMx+tvWDhVe3rSgmIH85COWryIcVjf+Lni0a53Fjs8u5shmIw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=IfjVgHqtzLoZrkTm9+3ne06Mr53shvtXhNsLRP4oZbQ=;
 b=w3P5/q9wqwSBBLKcpC4NmMW1w7bYBd0BBKD01C/v353xyvgcv5B2WLqg1iTp89qBIbmPQElEW07ycVZFfa9hyOhivYPTqp5NmJtkO3rYbA+gLS4PGpN8rOIV5DleH9DoqTgNbbbdqHRIiIhhPNcykXapO/1BNrNNdRxAQYKkZmo=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM8PR08MB5809.eurprd08.prod.outlook.com (2603:10a6:20b:1db::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.49; Wed, 17 Apr
 2024 11:36:27 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::9206:40ba:ef7e:729e%4]) with mapi id 15.20.7452.049; Wed, 17 Apr 2024
 11:36:27 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
CC: "qa-build-notification@lists.yoctoproject.org"
	<qa-build-notification@lists.yoctoproject.org>, Yocto-mailing-list
	<yocto@lists.yoctoproject.org>, Yocto TSC <tsc@lists.yoctoproject.org>
Subject: Re: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.rc2)
Thread-Topic: [tsc] [qa-build-notification] QA notification for completed
 autobuilder build (yocto-5.0.rc2)
Thread-Index: AQHakKRS/3Mtmc1gXUKBd5sF6HB2hLFsVaEA
Date: Wed, 17 Apr 2024 11:36:27 +0000
Message-ID: <A363D55A-F4F9-4764-AB3F-A919A39B41CC@arm.com>
References: 
 <0101018eeb341f1c-6cbd9227-adf8-4d80-b90e-d552b36e72cd-000000@us-west-2.amazonses.com>
 <7b21770c8dd6eae305575dc77bf968a35dba03b8.camel@linuxfoundation.org>
In-Reply-To: 
 <7b21770c8dd6eae305575dc77bf968a35dba03b8.camel@linuxfoundation.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.500.171.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM8PR08MB5809:EE_|AM4PEPF00027A6B:EE_|PAXPR08MB6429:EE_
X-MS-Office365-Filtering-Correlation-Id: fa918b33-eb26-4e64-84b4-08dc5ed2a494
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 tDCFUE3XLi80NgIyj6X1YiPS5ZZaW3lC5xOxkM7TfRzC9j/AxVgwifbsy9KGG/CwUi5I9POpnd1vkkVCRH0Z8wU5LZZwg45Cspe/0iPxgaHbgyTwYGeLWRFm3602BbmQZPZFexDmEBswQHqItP88ec2Z7jAuBr7J6KPTBcQQ7MSdr1xUgsAHkdKvAunoufzwdhzgcz89hYfMu5VYkK2eW0P3UslGeaHBBHpSe/VqIxAZLhRTc33fNnHg9IdV9YchX/O0O4gPckwuFD/DnzU3lxEMF4bQvk7TGJSgx5OCbpUdToVIgLWak/k46Zv41Pu7R496gtoEwx1uqrFKKaWr0+DOcBwyAVC8MKE+qNThVu/0ttiBgLXLZSbrftK55hlLOUfAme8cLCYiqE4lLgiUtUYXQtWFACmgsPmN+jmo/HkXf9D27txd/DdlJY3J+0a2YS6a2tDK3qM1d6OLJ/pqXA43b7m0RjCVgqtNfTUGZVtgncXxBQ+EdLgiG1alUlJIJdvr6NaihVY3xyTvLSIaD7gmpfpllseqRi2RrqDWtBnGwBdwZvz7a6R6uCitUYfRRgWuUrnCOo+NIbcw3B9iJzIPByARKWLC6zZq7ody7bqDEF6Kcmnl+KrPHT0+hyXwcvMyOlOFZ4bXSgUQeIlSmlbI971yOCQf/O6g4afvDG1s1vaHRssxm68WJ+IYoOOWwfmCqLsUUWycdpocJL3pzQ==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="us-ascii"
Content-ID: <AC3F397C3A7D854982B207B78AAC9A77@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5809
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM4PEPF00027A6B.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	fdb6652f-f9ce-4bef-04f6-08dc5ed29e5c
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NUB3D5cE3OS49+G4DqqzX95b1pCFP6wF5iRZjFTD0e4QWzFXjQo0OcbjkHHifZ1nlLh0gS54GXTVvmxsE6jEO5n44tVghK/u5a45UTOIQknyAtArFYCUeFUGNv7dmgINfs5vCE4rgzJ59aip25mEEuaxuQoOeL6paKBfbGIxyrhgU+pWpaA6KcnnR63OKBEtzlsUktWWilZNe7mjxXLnXV2pQc2ZCyRIIonRv75tjfGMC2DVJfZ9yg9YmoxuvrXlyXfQdfqtjE9nq1DzmT04o0ezl1ydBmQH10l0DH3BjM95VMsDWyItLg7kddTkoYNdH3AI+a+tt1tfWTG6+smPuUC/eiNVB4UojjE/CBJKx1yISFhHgDhPYObBQsAgPqwNjE2NyRPLHJTFjz0HDPnf1AThqAIxfEjby/1fnQafbWwbDuUiTMmpUX2NTWsDHEHO3w14GDY3Eg0AyngRLufWYg16NJNEjbI8F7zuJbPbWhEQiK1MQrhXPSNab87gMQHkaHPWyoKCt1QdhjxHaFT7ca0rrMJuvIT8pE/aOGX1neDdrVyaU7LFyTByCQ/mesTZ2mFRcvQWZntPqdLCs5piMMKI86/QHFuP95xfSYu9iYfCmw3QxpoxRiKrYROzUBlL0+2DZunu0WJH7/r60J/hpPH3zPc6OJuyJzQkOdic+rTdsxUPz0no0YY0CeEUxJlRNez9Mem9+FGO6Rki+Q2xNzJHLHeiKbhqSMZKnNf3Pdw2n/WSDJlQZH/Gv2NwIW7r
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(36860700004)(376005)(1800799015)(82310400014);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 11:36:37.6170
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: fa918b33-eb26-4e64-84b4-08dc5ed2a494
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM4PEPF00027A6B.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAXPR08MB6429
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Apr 2024 11:36:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62945

On 17 Apr 2024, at 09:50, Richard Purdie via lists.yoctoproject.org <richar=
d.purdie=3Dlinuxfoundation.org@lists.yoctoproject.org> wrote:
> For b), updating buildtools should resolve it, I thought I had done
> that but there were a lot of moving pieces so I must not have got the
> latest.
>=20
> I'm proposing we do but this into QA as I'd not block release on these
> issues. I've done my best to get this into as good a shape as we can.

Agreed.  Can we do a build in the meantime of the specific job that failed =
so we can verify the buildtools/pip issue is resolved?

Ross=

