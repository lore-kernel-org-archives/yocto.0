Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9DF5C433EF
	for <webhook@archiver.kernel.org>; Wed,  6 Jul 2022 10:41:42 +0000 (UTC)
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
 (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.85])
 by mx.groups.io with SMTP id smtpd.web08.4720.1657104094228825441
 for <yocto@lists.yoctoproject.org>;
 Wed, 06 Jul 2022 03:41:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=K+9B2Oxd;
 spf=pass (domain: arm.com, ip: 40.107.6.85, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=DY/wMcTChKiASG6+KzuIWZ8vBN7g4Yhqs9kpiiCyei/fPfw/1hd70+FFIFbLYCjvCAXo3ZWls8cvXAY6JetBrfPLTFrBFPYTfV/nzGMtdHtcPeFiBPxrJWtraHS+v2qZo+KOALDyE//VQYuqstHKBqgorjIyHJbBB+DWzr4S+V8JJDxehmvnr1lYOT5bu/EzgMluMc6jysT4qlAEK1AwAUPBmKq/LWqyns4BobqZOj6iaxsTOt9EaBfyoslqCTgzPFG40CeMDPGnPp98P7G3Y11a7mLjVSkJPClt+QNuPC0Nb/YPHq9FML2hKD7yM6uAoKPTPwVzf6kPuyj4qN/0TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kevsbx5jHiOhBTOAzOPWwP/PtB5LocOMbgMRlQYzz04=;
 b=nr4PyfkJ0t8jimpDZT6s7Kgs1xIDdS0Sgg0Sj1vc+Haubs3asQsuHZuM2JPfvZu0LOpBYV7db9Mp1BgAWB+f4pkY4jF16tFs2Ik+BFbnNHGV6TQDpULxsemLxBKhqt9A05XgmE+c/YDJnYSgIvRd/KknTAtxCGAxdb+0jEs+kD05PUrZ8gQx2vNB+lehn4tRs0Ci2uDstLqr6/2ew/2EUHpBIWSeEOLJQUgkLAMff6CS68v4ef53ZrtkS3CtTVaudAAvfU9zr9tdx52sWp2tWjuXdEVQLZZq0TdaJ4bREY8RCl7DsdHV4XJcor8arLtmAXJk+aOYpSNzk2iDGqRcRw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kevsbx5jHiOhBTOAzOPWwP/PtB5LocOMbgMRlQYzz04=;
 b=K+9B2OxdFOw1KJgzUyU7Cv2v7RV4sYIUMjKjdGiLhoumfLIUdngO78HKfLylkqz+3xlNgKNDa5382QlV2dpLno81hxwHbcoIstMz/eFOiwC9YYqXGU/qVWVcZONTkC8ifcnkXfvb9UNnIewgRpbAyxzzbHFbL2HneXwZEaqpPlU=
Received: from AS8PR04CA0184.eurprd04.prod.outlook.com (2603:10a6:20b:2f3::9)
 by AM5PR0801MB2001.eurprd08.prod.outlook.com (2603:10a6:203:4c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Wed, 6 Jul
 2022 10:41:31 +0000
Received: from AM5EUR03FT058.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:2f3:cafe::25) by AS8PR04CA0184.outlook.office365.com
 (2603:10a6:20b:2f3::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.21 via Frontend
 Transport; Wed, 6 Jul 2022 10:41:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM5EUR03FT058.mail.protection.outlook.com (10.152.17.48) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.15 via Frontend Transport; Wed, 6 Jul 2022 10:41:31 +0000
Received: ("Tessian outbound 13cb25bfb745:v122");
 Wed, 06 Jul 2022 10:41:30 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 6569ea144824ad45
X-CR-MTA-TID: 64aa7808
Received: from d399c0497e4c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 FCA89559-14DF-4B82-A603-048266D56733.1;
	Wed, 06 Jul 2022 10:41:23 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 d399c0497e4c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 06 Jul 2022 10:41:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l5Nl/ItjJSmpOpM9hph6hFn3Edh2R5LlvvUNKc1Q6L4OP8VMsXNzrbViWA7pPwcuAUS5E/zFADyMmWXWIh3IhF0+39a6nK3hi8Oqhsy9elYHhHXZpJcc0hJx6hU3+dBl4csi/HQVS6rMFLLFZlsZrmdzHqNL3Gqcln8tSV3sisHK3tzFgvfziGv6M6KGSGUrD1sILectvwNvhMgOmWGGzIkFthTWau3qtO+ftUOOYsV/p9GQwydRgGQQKPP7vv/lg4mRoP4dzk+G2NhJEtv3RSFk83KJzycWXIvp9/gBVhxWlt1ZJIx68+HfTo+swljljYsnrPYmbZx+RM7okVBHUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Kevsbx5jHiOhBTOAzOPWwP/PtB5LocOMbgMRlQYzz04=;
 b=TkJaGCzc4T3ATeFuWGOSNwZxpnoH7TeSD6Lq5LecwYzni91IqRcngvWyVPt6lV03Ik5yIAv0eHxsAlVPkGoUePDaHJaUBYiZQy0+9WVwRMOceJG674shCJmDstugvq3mSr9nMbsUj/jRwm0vlMQWR+APEdf4PjYNB3NNWk06z6Rbw7h12VD92Caq6Dmyvm0fFp4YYM9jndHU4weRPFO0OZPh2YQJRIExCLFM9eq/5qE1BCBWnJhN1yWA0NJVWZ+MkORwYg20lO3owyXKWtz/TYuouq9helRFffAulSnj72xU4SkFTXpxCjMTSkA1pMA371gLxSEmbkou/i8EEpKqHA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Kevsbx5jHiOhBTOAzOPWwP/PtB5LocOMbgMRlQYzz04=;
 b=K+9B2OxdFOw1KJgzUyU7Cv2v7RV4sYIUMjKjdGiLhoumfLIUdngO78HKfLylkqz+3xlNgKNDa5382QlV2dpLno81hxwHbcoIstMz/eFOiwC9YYqXGU/qVWVcZONTkC8ifcnkXfvb9UNnIewgRpbAyxzzbHFbL2HneXwZEaqpPlU=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VE1PR08MB4928.eurprd08.prod.outlook.com (2603:10a6:802:aa::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.15; Wed, 6 Jul
 2022 10:41:21 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926%2]) with mapi id 15.20.5395.020; Wed, 6 Jul 2022
 10:41:21 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: gaurav suman <gauravsuman007@gmail.com>
CC: Yocto <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] cve check report package version mismatch #yocto
Thread-Topic: [yocto] cve check report package version mismatch #yocto
Thread-Index: AQHYkGtLSmrOUrldIU+hlObehkcEoK1v1PyAgAE5mYCAABpvAA==
Date: Wed, 6 Jul 2022 10:41:21 +0000
Message-ID: <26B78877-EC23-402D-BE04-EF0AB9A22902@arm.com>
References: <DRD0.1657024299174009146.HGxi@lists.yoctoproject.org>
 <E30745EB-143E-4CDA-9D62-9416C6DF18C1@arm.com>
 <CAOnHRMf9EK-G-XmyKjNBfgOUAOt_GhTv2AETqe+829Dgqau0UQ@mail.gmail.com>
In-Reply-To: 
 <CAOnHRMf9EK-G-XmyKjNBfgOUAOt_GhTv2AETqe+829Dgqau0UQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 28f2bae8-427b-48bc-826a-08da5f3c16c1
x-ms-traffictypediagnostic: 
	VE1PR08MB4928:EE_|AM5EUR03FT058:EE_|AM5PR0801MB2001:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 2K/I1zKczWsWriDDSuTLIbTmaI290scY8g2YvnMHSC+MIoXgxzLhSBnjzcc5/EjPyORs2bcD8+rndBXxy/V/kDyiykAE62/S6km9qDVUUyyAJFkD4cfK2wRWaTP/QDfKfSZBcJCuOYCQ4ORkON4D35we/I+0mq7BLu+ya/aQ6GYdSo5ZzJJUww+X1bHeFvkdMtTnDvUDyUhXpD+lZUma/txdbw/n38Dg0lUwxAKsk9X/4FGUsBE7kO8P1Q3VgG+lVhyXldwUj+tjJdqMJzx0OxgVs4GezoCBtUziBkEb3SMYCsBgJP7I1rYhnfeJ3mPbJG4j1QOvuM/u4dggsZTVCajrkufZi0aO8i/X9yT0E00CQpvxiHRy1VUUylKLXhRn5SYbJ6xu5FuzM7DvV1m3xBTCieYke7Pze2hMpC7opqin7NqxGrHZyD17w2sTseBu06Z1M/ZO62lh6nze36yDs+0wyGQNYmMCLC3zG75dNvW/v7o+NwTbbBlNl9uTJvgi8JLbNNqoZ22l6/+mMSRUJmMq33DGtXqbfcwwxiC1VcMYaKkR+EQI8Jsogl5+faYHyxpvSwsa3KGEAwHGks2kKOYXfVKwYatVh54yk6ttbocQZWcrYkuhvsUp4WsfHMXna7o6dDWhxVI6z1Oi3Kq6DL3Feq3zwELRFW8+fBAwq6rdLMu8Ct4fHojmiPfzzHlPYaGP1Dm6S/evqvyr2XeexjMaY5vu4Coq4veUVf81JMXzQkUmolSfGj6l+tvgGmtWY5LHP1HozqpIl7GeE/PnKNASCkguPwaEfeln962PFUZMQQesRT0n9z9rr8ruDCWDDiRGyDY/L1YH9yrQZpDiePLnXBOzoTUbVxcJCWqhrkU=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(39860400002)(366004)(396003)(136003)(6512007)(2616005)(66946007)(66556008)(66476007)(66446008)(64756008)(76116006)(8936002)(4326008)(8676002)(91956017)(5660300002)(36756003)(6916009)(41300700001)(33656002)(86362001)(6506007)(2906002)(6486002)(186003)(26005)(478600001)(83380400001)(122000001)(38070700005)(316002)(71200400001)(38100700002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <7E3AFB970ACC8D43B2FD63EBB4D6236F@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB4928
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM5EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	ebd7a651-71fa-4a0d-db2e-08da5f3c10d5
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	S1V1XvYfLKF6/6NY4DairfExU1Vpsirzo8lbdodZnnO/JcMT4CN1HYgo5SrRDlV7fqpRmThxlVIddupSBk/ABqzpq8ZNw9u1H0CKjpnpYJNYVVXm5VTVx6jHEObjc6gtaL6ZWPVofEdljErbO1RTNbt9QCDR/rQmLKfPp9k2/oma/rnj/HvVwpCjY5fjdD3+bS7ChEMYo/5Gg598VJMV44qHli/5mey7fKdwHnH3kznnzVaJXYC2d3MR5XlRJvTwZShxnS6VeZehARGMkLV/v0ARBfS0xxngBVbarl0Z8u+hK0fPfnNVhyQfAKHhbW5S25C61BhRgO8+Pz/IU8Wxq0wcnHGxPWuBnM3rWR8NgmwADVUwQe/wh/00KPmRcBybeGO8U2LcpLWHOk8+/4wcgLqGxbho8+O8RT2ZodlsPIXnLggDW/rHuYLJvfFrOq72l/iIrhU18lcgDfkUrmNFWSZucIElulYpSVyG1SHk0O+BruP9ePUBRlbzv56MYDqAY2vbbByxwv2fpDzU3ckH1mxWBresDgtxRU5ValCpiaQBsKy974YYQ7S27IRUnd42kgHtHL2CGvV8+rDUHu2HaYpjqa2eL36aHQfhErE2ufEbm7hPBro8p6wbCYvGo5bPpP5AIvjqIOTtOb2AGISGj132gHZImZpD9KFj220skE/5RNOno5Nev8z9VykpwzsidqbIlGD11G9bUhAsf1ZhWs2k3l+VqDW/N7NR6dkPkhZEd1a1JD6A/jh+8+RgCxPzdUZaqVh7Zx/2Y7ke8Ysqt1fMVUhQhDVgcaZiF8dewkJZqAgTnBQCeHKC+JnlIATa
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(346002)(39860400002)(136003)(396003)(376002)(40470700004)(46966006)(36840700001)(186003)(40460700003)(81166007)(26005)(6506007)(83380400001)(41300700001)(2906002)(336012)(316002)(36756003)(47076005)(6486002)(8936002)(6862004)(82740400003)(36860700001)(5660300002)(40480700001)(86362001)(2616005)(82310400005)(33656002)(478600001)(6512007)(4326008)(8676002)(70586007)(356005)(70206006);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jul 2022 10:41:31.0178
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 28f2bae8-427b-48bc-826a-08da5f3c16c1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM5EUR03FT058.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5PR0801MB2001
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 06 Jul 2022 10:41:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57461

UmUtYWRkaW5nIHlvY3RvQC4NCg0KDQo+IFRoaXMgYnJpbmdzIG1lIHRvIHRoZSBoYW5kbGluZyBv
ZiB0aGUgIlVucGF0Y2hlZCIgQ1ZFcyBpbiB0aGUgcHJvamVjdC4gSSBjYW4gZ2V0IHNvbWUgaWRl
YSBmb3Igd2hpY2ggdmVyc2lvbiBvZiB0aGUgcGFja2FnZSBtYXkgaGF2ZSB0aGUgbWl0aWdhdGlv
biBmb3IgdGhlIENWRSBidXQgdGhlcmUgaXMgbm8gIm1pdGlnYXRlZF92ZXJzaW9uIiB2YXJpYWJs
ZSB3aGljaCBoZWxwcyBtZSBmaWd1cmUgb3V0IHRoZSB1cGRhdGVkIHBhdGggaW4gYW4gYXV0b21h
dGVkIHdheS4gSSdtIGd1ZXNzaW5nIHRoYXQgc3VjaCBhIHZhcmlhYmxlIG11c3QgYmUgcHJlc2Vu
dCBpbnRlcm5hbGx5IGluIHRoZSBjdmVfY2hlY2sgY2xhc3MgZm9yIGl0IHRvIGRldGVtaW5lIGlm
IHRoZSBleGlzdGluZyBwYWNrYWdlIHZlcnNpb24gaXMgbG93ZXIgdGhhbiB0aGUgbWl0aWdhdGVk
IHZlcnNpb24uIENhbiBJIGNoYW5nZSB0aGUgY29uZmlndXJhdGlvbiBmb3IgdGhpcyBpbmZvcm1h
dGlvbiB0byBhbHNvIGJlIHByaW50ZWQgaW4gdGhlIGN2ZSBsb2c/IFRoaXMgY2FuIHByb2JhYmx5
IGFsc28gYmUgYWRkZWQgdG8gdGhlIGRvY3VtZW50YXRpb24gKEkgZG9uJ3QgbWluZCB2b2x1bnRl
ZXJpbmcgZm9yIHRoYXQpDQoNCkl04oCZcyBub3QgYWx3YXlzIGEgdHJpdmlhbCDigJx0aGlzIHZl
cnNpb27igJ0sIHRoZXJl4oCZcyBhIGZhaXJseSBjb21wbGV4IGV4cHJlc3Npb24gaW4gdGhlIENW
RSAoc2VlIHRoZSBDUEUgZW50cnkpIHdoaWNoIG5lZWRzIHRvIGJlIGV2YWx1YXRlZC4gT3IgdGhl
cmUgbWF5IG5vdCBiZSBhIGZpeGVkIHJlbGVhc2UsIG9yIHRoZSBDVkUgbmVlZHMgY29uZmlndXJh
dGlvbiBjaGFuZ2VzLg0KDQpCYXNpY2FsbHksIEkgZG9u4oCZdCB0aGluayBpdOKAmXMgZmVhc2li
bGUgdG8gcHV0IGEg4oCcZml4ZWQgdmVyc2lvbuKAnSBlbnRyeSBpbiB0aGUgcmVwb3J0IHRoYXQg
aXNu4oCZdCBtaXNsZWFkaW5nLiAgV2hvZXZlciBpcyByZXZpZXdpbmcgdGhlIENWRXMgc2hvdWxk
IGFjdHVhbGx5IHJlYWQgdGhlIENWRSBkZXRhaWxzIGFuZCBtYWtlIGEganVkZ2VtZW50IG9uIHdo
YXQgdG8gZG8uDQoNClJvc3MNCklNUE9SVEFOVCBOT1RJQ0U6IFRoZSBjb250ZW50cyBvZiB0aGlz
IGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJlIGNvbmZpZGVudGlhbCBhbmQgbWF5IGFsc28g
YmUgcHJpdmlsZWdlZC4gSWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxl
YXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5IGFuZCBkbyBub3QgZGlzY2xvc2UgdGhl
IGNvbnRlbnRzIHRvIGFueSBvdGhlciBwZXJzb24sIHVzZSBpdCBmb3IgYW55IHB1cnBvc2UsIG9y
IHN0b3JlIG9yIGNvcHkgdGhlIGluZm9ybWF0aW9uIGluIGFueSBtZWRpdW0uIFRoYW5rIHlvdS4N
Cg==

