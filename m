Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37EFCC43334
	for <webhook@archiver.kernel.org>; Wed, 13 Jul 2022 15:12:47 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.46])
 by mx.groups.io with SMTP id smtpd.web08.23162.1657725156828784444
 for <yocto@lists.yoctoproject.org>;
 Wed, 13 Jul 2022 08:12:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=unFDGsdU;
 spf=pass (domain: arm.com, ip: 40.107.22.46, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=iXOr6cqU29cJLjki8h+PzboECTCayxFmipPmymAbOaIZ5og5ZmQ1omGz36q/xka49Yl2o1q1m5WjAk1L4rRi4XXaRMHvWMRPMBZ7A+trmf/W7+g8biSecmAgWHKGUHG3EZBWXT+Qm3W0sRnyXegdWh3ZB0uqXT+tu5UsqH489WmjSUw5BRPAdY+wAHGLEACn2r3ZwAXWQHQQq7K5avccPjNTNEe2lRSS9Nxsbwq1D8/W0uf2Vqi3os+yu4Amja+KiWSvxnob5s85DabHLBUkA/DqyGFZOYuN3dsruicKB03VQbfB42x+sk7Av1cHf8F6Wk0OXnGlq0vwlBGy0EcsAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BTxoB3myqH9s+14yTZlTQ3Gmy5ikLChMaT/EQs+8yvw=;
 b=ZZ6xVuttuB3Hh1ekiGDiXnipzrwCzchJs7yxp0kD6NLF5H9WV5Mn8BJIeJIg33frK1LjGt0j0a7gedDlYB78l0pi0MVqiN2Jwi04WSsVQCgDaSmPHlfrRqgfdqWFFMe0/sxjFTKCwUWRrW4p9R/c6DRP00Q3kWOEvHL436UwEUTBSk5nknkXuj9uufk54C+FEiZ2QIJcRyT2tcR/SppAzocOMe5oGLujkOCO6RD2TMXSUxcQdzji1G8rWNOu4wjplV0eXYfYG9XrtVW7qxBPjDbbIf2aq8qdj/1RnkDmc1/u3+xt2zKAl2WoUqHMtYSdWsTOHkk3b753ImKjpBrFtA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BTxoB3myqH9s+14yTZlTQ3Gmy5ikLChMaT/EQs+8yvw=;
 b=unFDGsdUt1jZ4YaTXIYkEbfapmbkUI53SyNwCzm2sAjv8ZHHIjSUR1gwHQ74EKqUd6yjSWQEJNaTDzkpA/lh2R3E1/p9CZhdH4Oq6TjABLSRyOY6dQSiNIPEA0CAvzlMOaAhNyfP9DAbo4LFpiTJnHVQ8H5B8EnHATeu72yiwVg=
Received: from FR0P281CA0129.DEUP281.PROD.OUTLOOK.COM (2603:10a6:d10:97::15)
 by AM7PR08MB5432.eurprd08.prod.outlook.com (2603:10a6:20b:10b::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.12; Wed, 13 Jul
 2022 15:12:32 +0000
Received: from VE1EUR03FT060.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:d10:97:cafe::b2) by FR0P281CA0129.outlook.office365.com
 (2603:10a6:d10:97::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5438.5 via Frontend
 Transport; Wed, 13 Jul 2022 15:12:31 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT060.mail.protection.outlook.com (10.152.19.187) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.15 via Frontend Transport; Wed, 13 Jul 2022 15:12:31 +0000
Received: ("Tessian outbound 8e3d5168572a:v122");
 Wed, 13 Jul 2022 15:12:31 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: af2fba6743912491
X-CR-MTA-TID: 64aa7808
Received: from f1a811bd4c9a.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 052CB215-D2BF-4508-9F4F-153729B2F8FE.1;
	Wed, 13 Jul 2022 15:12:24 +0000
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 f1a811bd4c9a.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 13 Jul 2022 15:12:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MGwXQXRHWV/uoTrTcOQy+zNyQqiLzvF+pNLZSOadEC0EWWgJb62Z1WMZ4sOLWdM17TW+3PiinZ5dn2YYNT74VmSTjXTQMvmDqHCNK/EQNOlFGR5fVEVblT4ES8yO/GHC1LHmElANI26ZctQdWmL87tdKHjkSq2WL9bpd44lW+bDvOfjqKL6aOBPFPz2usneOTRGYEda/YBEKATdKojo6EwlW/rd/NAiVyP4TTTc58fxQ6n4pJXdiT+gDtMXnN4VUWp6hmnMR6m+8dR44rHMykbUl97qhqT1khE1cx7AF+bZgQC62AJGwLwZJOWmUB0QaAC1Deg5LiPvOxsyudDHYYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BTxoB3myqH9s+14yTZlTQ3Gmy5ikLChMaT/EQs+8yvw=;
 b=JLG5O5DHF510py2q7lw9uz9105U8oLPZnr9/dIFqvdAGGM1QMJBvMYyjO9rUG5hXs9pa36V4QwyabQ9J2UKE0MxHcHxzOYZEuq7whuZCICA49JNlEOjrSjH+voA1/yd8ZOSZhWElibcU6FQS9GLYptnyH7IfEk6j4cCgER/fVXe81s2f1WuX7q3XKtzGEkbl8qv0Q5xmZTgZ5cIeDw8kyeTUP5ELLagk6f4Ciu/p/xSdTp8YRR27d4p1aa/rrHRj40gxLosUu34uuhAiXDlhFyPZJuhOCIRakYxyAxUC31YQQV8bMAuGW+SaqqOimjVztFD6SldhEaCS/SVWcc/PvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BTxoB3myqH9s+14yTZlTQ3Gmy5ikLChMaT/EQs+8yvw=;
 b=unFDGsdUt1jZ4YaTXIYkEbfapmbkUI53SyNwCzm2sAjv8ZHHIjSUR1gwHQ74EKqUd6yjSWQEJNaTDzkpA/lh2R3E1/p9CZhdH4Oq6TjABLSRyOY6dQSiNIPEA0CAvzlMOaAhNyfP9DAbo4LFpiTJnHVQ8H5B8EnHATeu72yiwVg=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by DB9PR08MB6940.eurprd08.prod.outlook.com (2603:10a6:10:2a6::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.16; Wed, 13 Jul
 2022 15:12:19 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::2c4a:b33:a761:a926%2]) with mapi id 15.20.5417.026; Wed, 13 Jul 2022
 15:12:18 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "simonblack.it@yahoo.com" <simonblack.it@yahoo.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] How to get name of output packages during build #yocto
 #bitbake
Thread-Topic: [yocto] How to get name of output packages during build #yocto
 #bitbake
Thread-Index: AQHYlr4to//glXwyrU6DZh483w7Lsq18aGSA
Date: Wed, 13 Jul 2022 15:12:17 +0000
Message-ID: <1BA9E2F3-5FFA-40FD-B887-FF99DDF80108@arm.com>
References: <WNRU.1657719600812851842.KCIA@lists.yoctoproject.org>
In-Reply-To: <WNRU.1657719600812851842.KCIA@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3696.100.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: c85bd4e2-0cbf-475a-5f7b-08da64e21b98
x-ms-traffictypediagnostic: 
	DB9PR08MB6940:EE_|VE1EUR03FT060:EE_|AM7PR08MB5432:EE_
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 7tPe0LKoDvNu349TVito8pR7wF/W9nHHBc93gTuGRj6yDa5kBHv9+iFuJD5/QIXOSfkUsHkDRAZlASF+naCaABnDwSu+cVUQkIkBB3mWXPSQa4WRqM80OjdcVV2oLh3BzXsWkjFU8sUhUtWgHi/oaBugDr2y8EBAFiPPsnmnqyraYzS1BT+aU203T2ExsjkiBzrGik5vxlV31MLa219jqqHZT/CUWdw7FhDUPVAIKohVxkJxQyE2suZrcacOXvThS/j+be2AkI+2XdTyJ12Oq9l3AaRrm17luTyJFstZStDmL8HIes/fghyHUkmT1F8mEpf0lHL6Q2MTw/WZiFX3kgZk9BcL+wPwJq+0KvaL6DW9lT2sK/ZDBvbtBEf0n+mrpGkI+/JEM+ERf+wpNMZ/vfkLV4FSGVpKpdJwpn/K2HQUy2T+BT0nWwMK8T+0G7dTHoUjzJEemrkzvaE2NbjlEGbZdMAUyDir0FhsiDBDqeVL99A+PSOvv9esW91LOiku6HWXK1Km/9eYTwNJ3Un2j3C79RkZB3Mmbr6sBlOKeKJVtbsnrs8bZ9RKvM9Bn7P1xt+2zSJ3xvXwpfM3uFNZ9khXzRd/ls5oaCqBJ899acjm9ce+af89zZfXusTGEtXPG8ANZFrUpIL957XudGLs1ql2kCXVnFeWmuGdJshwe23iOhNbzGb9aqNZiHNzogW64X+x0P5gIssohTBlp3UZY7ZGHFIjFvvJjuOJAQcz9skpC4r5Nj6HcvTUqYW0xWbfW/FTHPuwGUg5iIvTvJ6TL+GNYz8UhsZx3tvzf9N1Ijqt866ug2+4LEa7/kT7lW3M8bc6igSGKBtKbZdx9zLQawIyaQ7tn2MWbxgLyVdXh9U=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(136003)(396003)(376002)(366004)(39860400002)(38070700005)(26005)(2906002)(8676002)(33656002)(122000001)(8936002)(4326008)(2616005)(478600001)(76116006)(53546011)(316002)(6916009)(36756003)(6512007)(91956017)(4744005)(186003)(38100700002)(41300700001)(86362001)(6486002)(66556008)(66476007)(5660300002)(66946007)(71200400001)(6506007)(66446008)(64756008)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <FC0B2A9C8AF5194B8FF95F5BC53BF687@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6940
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	2a4d39c1-54c8-47ef-0e98-08da64e21371
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	GqPKKLwSRQ4afk+iPqUsIkMhChZc13pfVdWl7dQi/0KRxH/SOeVbPkH61pjOWCqGLOtB7DddQH5b5b0FeAa3Ecd2aewDKmhlxydAWsRLRidaZMc9hZBacvlX36egd4nTZJ3+47+LzOhhgspYiUFp+xYkKRRvkv+/efuEGuJVE5AyhQoGEYa7N1nMYQDSnYL8qOniCs7SS3xS22qxBjLWh86XJ4mQgw/I0VBGSKvOFTvPZ6Fdv4Z2PNc9QoZepupAUAEQdo7EhpeV1tHgQ3XPRAmZHtC930vVD9SLR7Sl4/lbU+JGg3n50j2VJ9psGcHoPnc5gcRGfZehrhJDcAZun7c7SDWH7RzoKzY2p/SCWoFOK+WDvzXQIcw77qmJT2tZONTVOEi8qlWBV5Fs1qWJFrKtjA89KMbGzK/vf2IWTRpJDAJPGmCHU6+9LjLK1DbkL/3HeE9tpnctCBY58F/sJ3LJ+S4gCW9CsftPRXcZ2Qv14xFVff4XPrqNC81CuPf1/j2Ce40emb81icUOFNJvz/PTdCtOgdizQ/hBzsCbLvTpVN1DD5mIg3HmJ3QfShf60MpvK1G+EVydozASI8bU7g6NVkjaji1QsPr2albxbUhB4ChELdfRMn2C3r8kvmSHfL+4GerqM+HAKvq160wLp2gadIYLFiA8DAsXNCTDs5n+X/0MG/eHBet0MKiJLMfH+gquy2M1JkUAeWZ0bUR5qnQtFMX2gARu2mqvlWjwMXAoPkisYCVn4RI4rwawjAp+3wjjopLez2H0gAKoZX6otVgXWnQhbHfJOlCzdc1AdDlHK9AEg7K2CblpuFsT9o29
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230016)(4636009)(39860400002)(376002)(396003)(136003)(346002)(36840700001)(46966006)(40470700004)(4744005)(2906002)(5660300002)(356005)(40460700003)(81166007)(8936002)(2616005)(6862004)(82740400003)(4326008)(70206006)(8676002)(70586007)(47076005)(186003)(336012)(53546011)(40480700001)(33656002)(36860700001)(316002)(86362001)(6486002)(6506007)(82310400005)(26005)(6512007)(36756003)(478600001)(41300700001);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2022 15:12:31.3610
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 c85bd4e2-0cbf-475a-5f7b-08da64e21b98
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT060.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR08MB5432
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Jul 2022 15:12:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57525

T24gMTMgSnVsIDIwMjIsIGF0IDE0OjQwLCBzaW1vbmJsYWNrLml0IHZpYSBsaXN0cy55b2N0b3By
b2plY3Qub3JnIDxzaW1vbmJsYWNrLml0PXlhaG9vLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3Jn
PiB3cm90ZToNCj4gRG9lcyB5b2N0byBzdG9yZSBhbGwgcGFja2FnZXMgbmFtZSB0aGF0IHdpbGwg
YmUgYnVpbHQgZnJvbSBhIHJlY2lwZSBpbiBhIHZhcmlhYmxlPw0KDQpUaGF0ICp3aWxsKiBiZSBi
dWlsdCwgbm8uDQoNClBBQ0tBR0VTIGNvbnRhaW5zIHRoZSBwYWNrYWdlcyB3aGljaCAqY2FuKiBi
ZSBidWlsdCwgYnV0IGFsc28gdGhlIGRvX3BhY2thZ2UgY2FuIGNyZWF0ZSBtb3JlLiAgRm9yIGV4
YW1wbGUsIGl04oCZcyBwb3NzaWJsZSBmb3IgYSBwYWNrYWdlIHdoaWNoIGJ1aWxkcyAyMCBwbHVn
aW5zIHRvIGR5bmFtaWNhbGx5IGNyZWF0ZSBhIHBhY2thZ2UtcGVyLXBsdWdpbiBpbnN0ZWFkIG9m
IHRoZSBsaXN0IGJlaW5nIGhhcmRjb2RlZC4NCg0KSWYgeW91IHdhbnQgdG8ga25vdyB3aGF0IHBh
Y2thZ2VzIGEgcmVjaXBlIGNyZWF0ZWQgdGhlbiB5b3UgY2FuIHVzZSBwa2dkYXRhLiAgVGhlcmUg
aXMgYSB0b29sIHRvIGV4YW1pbmUgaXQ6DQoNCiQgb2UtcGtnZGF0YS11dGlsIGxpc3QtcGtncyDi
gJRyZWNpcGUgZ2xpYmMNCmdsaWJjDQpnbGliYy1kYmcNCmdsaWJjLWRldg0KZ2xpYmMtZG9jDQpn
bGliYy1leHRyYS1uc3MNCmdsaWJjLXBjcHJvZmlsZQ0KZ2xpYmMtc3JjDQpnbGliYy1zdGF0aWNk
ZXYNCmdsaWJjLXRocmVhZC1kYg0KZ2xpYmMtdXRpbHMNCmxkY29uZmlnDQpsZGQNCmxkc28NCmxp
Ym1lbXVzYWdlDQpsaWJuc3MtZGINCmxpYnNvdHJ1c3MNCm1hbGxvYy1kZWJ1Zw0KbnNjZA0Kc2xu
DQp0emNvZGUNCg0KUm9zcw==

