Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F70EC48BC1
	for <webhook@archiver.kernel.org>; Wed, 14 Feb 2024 11:25:01 +0000 (UTC)
Received: from EUR05-VI1-obe.outbound.protection.outlook.com (EUR05-VI1-obe.outbound.protection.outlook.com [40.107.21.69])
 by mx.groups.io with SMTP id smtpd.web10.39127.1707909898987681947
 for <yocto@lists.yoctoproject.org>;
 Wed, 14 Feb 2024 03:24:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=FcwTxBhL;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=FcwTxBhL;
 spf=pass (domain: arm.com, ip: 40.107.21.69, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=gHRZcGUruxo1YIeVRv7dy2ItYcMvLi+HN2RLmcAsOM8HNjXaB+/swdFX9mMDt7Yt2E5mqlY7MMb9Vw40urzpRbVuR72ZsBc3iBa98Md8bh/EBJ8mBAcnJPJYpiJcw5PUphdDZHnWgIVOucDrXSZ/vtTe9HWgSU0+BnR+oqNr+SfnFJCews+ARTr2JyaebQKNcP6/r1HUWbMyhg4fhM8idJlExNnNUee1IfXU9zs+uM63uAwgCOePcBV2Z1PbXlUtA+LT6j4PLQU9bgTFSnF5DV2xJbhq3hx1sbjcxzqvjekx8JIfTFIYht62MVq6r8/X6msHA9lL53ZwhbNYa1DQXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5LwXNqy9YP/WzdizXXE5perRSsab7mxRPg4sbGRs1kE=;
 b=VGuF3viyVzsnOENo8YAMPUdNkUlxMx7Z8Aj6szxoLcX1LYmUrTHfVCdTT0xHkezsd/yE9o4f8Re1VfAomf4N2zHG6wzrj82xp/PBgFAE+ghNdIzt70jdlBpzicPOTC1llbhikhFuy826eqOXYxED+AN4MhVQ21bIrxMhOxeZyUzEX4BbAXEg3HMRr0Q8qAVAvQI2QsdqZ+xebzpoukRMNntCATnNfoNTOZssr08AqVxAzYlB44MP6TAdjGPJhUIhQUcVpz0MERRfHN4usa7P+MnbCSWZ4UMlPhV58Q/rtkNN1oBF3+WP5jqwCnZQb0jcSxE1npzBM+33OJDyPRExQw==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5LwXNqy9YP/WzdizXXE5perRSsab7mxRPg4sbGRs1kE=;
 b=FcwTxBhLomK8NUUsjb9w+yP9u1G44Ayz2GFCws+7Q+hBeP4DxBevMMpijcOBRB/Eie6XChgYe43JWRz1Bgo91L25axkrmjo8TZsMjaQCIYvNUhXu7vXWngnA8QUbwe1nPqT2zqZLttj6L3WHoWWnZqlZ9R2Xy3D+hcYYKPFIvbw=
Received: from DU7PR01CA0033.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50e::11) by DBBPR08MB6074.eurprd08.prod.outlook.com
 (2603:10a6:10:1f6::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 11:24:55 +0000
Received: from DU6PEPF00009525.eurprd02.prod.outlook.com
 (2603:10a6:10:50e:cafe::da) by DU7PR01CA0033.outlook.office365.com
 (2603:10a6:10:50e::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.40 via Frontend
 Transport; Wed, 14 Feb 2024 11:24:55 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DU6PEPF00009525.mail.protection.outlook.com (10.167.8.6) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Wed, 14 Feb 2024 11:24:54 +0000
Received: ("Tessian outbound a6e56d06a0e4:v228"); Wed, 14 Feb 2024 11:24:54 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 8fca86fbfcc2a1f8
X-CR-MTA-TID: 64aa7808
Received: from 0e8b126feb4a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id A513E283-A8B1-4510-8EE9-ACD42300205B.1;
	Wed, 14 Feb 2024 11:24:47 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0e8b126feb4a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 14 Feb 2024 11:24:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G95wFKPdjfEEMR3YPsjcEPETD4PymAJKIsVb1nKsUcNJsRN4/9W+y/ejPbTXEEGPXAa2K0zzwupKGvlOR4NevG2Zb2NdR0Etcb+xfmMDhERGb55jfUec+DwajaF26rMAiF4lbvRncBCn9aeFBdYpfPY3PbU/AYHQsrjobzt5wce0UHvYWC2Np+IYqIpcCEPwJ/lqks2BeIDM2o1LEgwm3zEUZVLEOEnIjTegHS5CBEIZ5EF2N46jUmguUBQhoanD1kjWu+9DCb2z3tZAJhmJvfcI3FqqPQFLlp2W7n2skiHPr73lUOa7WRNb8qNJFZeVvyxI/5/v/1yuSzU/s0mS1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5LwXNqy9YP/WzdizXXE5perRSsab7mxRPg4sbGRs1kE=;
 b=N4Np7b6VhQKTs0WevNUEpMhqSzReLq45kHaQiyeRB49ENfXaU1o/rFvXKLFpdO+Gt63zuzA/YYW/EGVoOGbPHI0O9/yqtxXlcrMcRL8PTU1+PhhuCb9n8+5bIyk1y17+ICmGEBDVrkuyO7Gz+7gQSD72nk2d3bhK4L5CzSd6KisgaNqHi4DcukcbwhONYO1PJui8scEM8f1j5nF8Ynxl13jZe53QLjRVoIrSyHVomJooHltoQ5c6JBypoB/uBBm94Ouj4jrV1Y9mghhvHFhlIo11AvBB45ftEC2p42OEdxtKA6Jjr9IUV6zlAT4bDY4unlLT9tcGcBXMPgHALr3DsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5LwXNqy9YP/WzdizXXE5perRSsab7mxRPg4sbGRs1kE=;
 b=FcwTxBhLomK8NUUsjb9w+yP9u1G44Ayz2GFCws+7Q+hBeP4DxBevMMpijcOBRB/Eie6XChgYe43JWRz1Bgo91L25axkrmjo8TZsMjaQCIYvNUhXu7vXWngnA8QUbwe1nPqT2zqZLttj6L3WHoWWnZqlZ9R2Xy3D+hcYYKPFIvbw=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PAWPR08MB8981.eurprd08.prod.outlook.com (2603:10a6:102:33e::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7270.39; Wed, 14 Feb
 2024 11:24:41 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7270.036; Wed, 14 Feb 2024
 11:24:41 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>,
	"perceval_arenou@trimble.com" <perceval_arenou@trimble.com>
Subject: Re: [yocto] extend python3 manifest to add a module
Thread-Topic: [yocto] extend python3 manifest to add a module
Thread-Index: AQHaXyvYMo9o1zNemE+HKx7FQ9TJHbEJsmgA
Date: Wed, 14 Feb 2024 11:24:41 +0000
Message-ID: <CF199512-3ED8-4845-AE0D-3F3FEFCD02A6@arm.com>
References: <QIBU8S.RL2ZWWVWX0423@trimble.com>
In-Reply-To: <QIBU8S.RL2ZWWVWX0423@trimble.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PAWPR08MB8981:EE_|DU6PEPF00009525:EE_|DBBPR08MB6074:EE_
X-MS-Office365-Filtering-Correlation-Id: c3e5be8c-c507-4cc6-4ab7-08dc2d4f91a3
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 muzJFZP8Eo6JdhKx7ZjuawebC4YM3rXU76smmrEZcXZqcXYoxubWc7U15mL2pGZNL1qKIzZvYeCjSuzWozlxUbVZbBKXyPgvIaXAXy5CyzQSI8DFAPH5Us0UwZzSouM+5dqUIZMWOJRVQ9lxQcT6LUVuOv8gxRaq2fxGr/RUtwho7qmtHNCa3ZEFoPgFekAIRq5kPw0gv9YixQDE5KRTmOTraJoWX29pUBaXFHwwjUE9BjPREnikqzOoGv5/4AqEDKguk09KEzATHoAPp7GD5zoGyTnhZ8qQQZ9bm9lbktpRQldYzdCGWQtlYPjP74efNcmuaFIqknmIPOQO7Fu5BwsrPmjplNx281h4OAhmhS/4oxjOf4qMcR672/6PgjU1H24h0b3yPl9tmOr4YhD39WsKv+wbwgxvApF5HpNztXHE7Mnrgp9jWE75VZ7jRmbdeyNaS9kfdHuVbh4AgmckoehmRz+n33euF3egCgbBPwGDBqQXCCN8Cx8IxM3vjTXF8EqNFdjx+RmZc40MbGQ8KWGFDDn9EhHusyTcW6+8HUg8QyKhF6naERlAbw9+Q9FgOuR8vjhvmH+TLgt4oUlnQyJCzvdKPWlWM0UZUFph1BNZ6VyUBxFqMGFiFTThvNf3
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(396003)(376002)(346002)(39860400002)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(5660300002)(2906002)(53546011)(6512007)(26005)(33656002)(71200400001)(2616005)(6506007)(36756003)(38070700009)(478600001)(38100700002)(122000001)(66446008)(66476007)(316002)(64756008)(66556008)(86362001)(8936002)(8676002)(6486002)(66946007)(76116006)(110136005)(41300700001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <A7461D32DB52DE4D9459DD1E3EB94142@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB8981
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DU6PEPF00009525.eurprd02.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	12addf80-0605-4bdf-d0ec-08dc2d4f897a
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	DQ1YD6ehfknwtNtKdCUr/cBxWD8Bz4j8azS+E2s2O9Kf2VjdH252yFJGdaAwjacryTmmWwYB0LpNzkVQROriElQAwjVNOSMl9ZrUNXcszllekSEEasQIm1YSLCuybqge/Byynu+DtqRnGf5f8LT//v2NGaYPOpS2p8ihHD2244HIbI8ZxKQ+7RtgAxHI7aLRju0ko5fdOLKH2i0TAE7qNH2CDKLYA2asLZl6eezYhT3Cvg9DtYMj8li7yt1yVZv4UOziytZp90x7iX+GgPy+DcTU+4/KfVaC5jN5RwrqgnmpfodTIBxE6bN01VzeEJMoC08Jfg1j1UmFAM+oG+I+TgJHSfDzFyLiwRTW85XRg+3rXlz7jBdLEBLMAP8j1C9rRv1vwfMB2nXZhDsH6B4s6HI0SGTNPzIczA0DTexz5y5hiypDZ6O1xPGeWBiqXMYFg5k4o3q1ProGI77WNMw9dq4gId8ldsWiq6hVaScg9a0bC11NqmvhAMuhvDVUx1VK/rNOSafdXKRsfLORWOLfza3vp/J+Nacvdr0ExkYGl4YUB1PvYIKf/B9NmROMyED8hazvdrjfCk55AvG27lYBEYgUMitO/B0NHX0CSLNLHqw=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(4636009)(39860400002)(136003)(396003)(376002)(346002)(230922051799003)(82310400011)(186009)(451199024)(64100799003)(1800799012)(36840700001)(40470700004)(46966006)(8676002)(8936002)(5660300002)(336012)(110136005)(2616005)(33656002)(36756003)(82740400003)(356005)(26005)(2906002)(81166007)(86362001)(6506007)(316002)(70586007)(70206006)(53546011)(6486002)(478600001)(6512007)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 11:24:54.8831
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e5be8c-c507-4cc6-4ab7-08dc2d4f91a3
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DU6PEPF00009525.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6074
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 14 Feb 2024 11:25:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62488

T24gMTQgRmViIDIwMjQsIGF0IDA5OjU0LCBQZXJjZXZhbCB2aWEgbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZyA8cGVyY2V2YWxfYXJlbm91PXRyaW1ibGUuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiANCj4gSGVsbG8sDQo+IA0KPiBJJ20gYnVpbGRpbmcgYW4gaW1hZ2Ugb24gdGhl
IGR1bmZlbGwgYnJhbmNoLg0KPiBJIHdvdWxkIGxpa2UgdG8gYWRkIGRhdGFjbGFzc2VzIG1vZHVs
ZSBpbiBweXRob24zLiBGb3IgdGhhdCBJIGtub3cgdGhhdCBJIHNob3VsZCBhZGQgaXQgdG8gdGhl
IHB5dGhvbjMtbWFuaWZlc3QuanNvbi4NCj4gSSB0cmllZCB0byBhZGQgbXkgbmV3IG1hbmlmZXN0
IGZpbGUgaW4gU1JDX1VSSSB1c2luZyBhIGJiYXBwZW5kLiBJdCBkaWRuJ3Qgd29yayBhcyB0aGUg
bWFuaWZlc3QgZmlsZSBpcyByZWQgYnkgYSBhbm9ueW1vdXMgcHl0aG9uIGZ1bmN0aW9uIG9uIHBh
cnNpbmc6IA0KPiANCj4gZmlsZW5hbWUgPSBvcy5wYXRoLmpvaW4oZC5nZXRWYXIoJ1RISVNESVIn
KSwgJ3B5dGhvbjMnLCAncHl0aG9uMy1tYW5pZmVzdC5qc29uJykgDQo+IA0KPiBXaGF0IHNob3Vs
ZCBJIGRvIHRvIGFkZCBkYXRhY2xhc3NlcyB0byBteSBweXRob24zIGluc3RhbGxhdGlvbj8gV2hh
dCBpcyB0aGUgc3VnZ2VzdGVkIG1ldGhvZCBvciBiZXN0IHByYWN0aWNlIGZvciB0aGF0IG9wZXJh
dGlvbj8gDQo+IEkgd291bGQgbGlrZSB0byBhdm9pZCBmb3JraW5nIG9wZW5lbWJlZGRlZC1jb3Jl
IGp1c3QgZm9yIHRoYXQuDQoNClRoZSBtYW5pZmVzdCBzaW1wbHkgZGVmaW5lcyBob3cgdGhlIHBh
Y2thZ2VzIGFyZSBzcGxpdCB1cCwgdGhlIGRhdGFjbGFzc2VzIG1vZHVsZSBpcyBhbHdheXMgcGFj
a2FnZWQuDQoNCkZvciBzb21lIHJlYXNvbiwgaXQgYXBwZWFycyB0byBiZSBwYXJ0IG9mIHB5dGhv
bjMtcHJvZmlsZSBpbiBteSBidWlsZDoNCg0KJCBvZS1wa2dkYXRhLXV0aWwgZmluZC1wYXRoIC91
c3IvbGliL3B5dGhvbjMuMTIvZGF0YWNsYXNzZXMucHkNCnB5dGhvbjMtcHJvZmlsZTogL3Vzci9s
aWIvcHl0aG9uMy4xMi9kYXRhY2xhc3Nlcy5weQ0KDQpUaGF04oCZcyBub3QgcmlnaHQgdGhvdWdo
LCB3ZSBzaG91bGQgcHV0IHRoYXQgaW4gYSBiZXR0ZXIgcGFja2FnZS4NCg0KUm9zcw==

