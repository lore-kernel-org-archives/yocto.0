Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8BE7FC433F5
	for <webhook@archiver.kernel.org>; Mon,  9 May 2022 11:56:04 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (EUR05-AM6-obe.outbound.protection.outlook.com [40.107.22.72])
 by mx.groups.io with SMTP id smtpd.web12.30978.1652097353387512675
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 May 2022 04:55:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com
 header.s=selector2-armh-onmicrosoft-com header.b=LSMgZXuN;
 spf=pass (domain: arm.com, ip: 40.107.22.72, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=RpmjZl8g9/PC1j1RYuJlxlprbeGrnJEDq4YMJBqZNxpZABbQ98CCWfr8aNuZCx1c/is1hayAq3YESpBoFJenlvHJUQxodW87PMzBgzFdU1IPPu3tyJZUVHe59c/TcieGRuza93bWyl6yycHqoOdxgpGLGiBoQo4k2oBcagLYcY9Nh/7kamKr+PPyMWjZlu2acYjN2JUfU0ykHhTkptqBWDskMtd1O3jELUAxg5Ya3ljZTfTzK+wzzzjYV8sN20o2EeOJRdVYzYVrAltFAuYr/t3CbC7GLE7oyaIdVApKiIWwQjbpQaO90IJ0FZRPmVdIYRKwd/nc9I2d3knZpBF7tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lNtrgu0Q0xsopmdU7SA1cdZQAd9OBhD3UwtZmeY+q40=;
 b=TlFRPFBy3UGrgdZkgSEb9umIpE+4yHpHJ2EnXVfmk1T5oSuXW+O+/5zhAc5ogKSEk8ZHz8Dodt3CzMLzp2UdTWTEsthKkn+azykuUP2TGzYVOLpzHaw4C7LI89c27QDrKBYiPNRajPDvQuXPd85JgcyqL0esomSgQCEKPSoppY1z5EoGVpbpyRvMyqM0YDidcQjoapA5R7oKj2qD8+i49yR+g8I4mTSzrKueKFpQdBf0nuMbPy2XZ0vkIUM9AsuiPhnNMJkHSRMDkYr0zJLcVTCOJCtMcOGP5ZFpIY90hh5TE1yIROLUyZhpE5dsxRjQGt8RLPBU/AS1ugR1pcttcQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lNtrgu0Q0xsopmdU7SA1cdZQAd9OBhD3UwtZmeY+q40=;
 b=LSMgZXuNCc/i1Xeq4QTO/pDYXWHm/2JGZEcAJlEsetTCBHxSDPYehjqAoMBCj0crycNY4xOm5cuyjdQ68YbBv9fohzxKDmQIzZLEiFgkT+8cAWJgMdknpgrnD2MNRdIMnsQvqUGx5p0lqqHFp5en+2V03zN9Thg7n4HmyleQHDI=
Received: from AM7PR02CA0012.eurprd02.prod.outlook.com (2603:10a6:20b:100::22)
 by AM6PR08MB3992.eurprd08.prod.outlook.com (2603:10a6:20b:a4::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5206.25; Mon, 9 May
 2022 11:55:49 +0000
Received: from VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:20b:100:cafe::d1) by AM7PR02CA0012.outlook.office365.com
 (2603:10a6:20b:100::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.23 via Frontend
 Transport; Mon, 9 May 2022 11:55:49 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 VE1EUR03FT006.mail.protection.outlook.com (10.152.18.116) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5227.15 via Frontend Transport; Mon, 9 May 2022 11:55:48 +0000
Received: ("Tessian outbound 62985e3c34b6:v118");
 Mon, 09 May 2022 11:55:48 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 342d9cf0f373306d
X-CR-MTA-TID: 64aa7808
Received: from f5f41990f240.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id
 BD6FA3B3-BC17-4219-8A02-ED536ADCA33D.1;
	Mon, 09 May 2022 11:55:42 +0000
Received: from EUR03-AM5-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id
 f5f41990f240.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 09 May 2022 11:55:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cEN9tkYIHZ2yNFYwqKzWBsgkCWQO+3kQhvLbA1o6CX+ou4HWXWYIuWzEcbvXd/+VeMxszxESnenEQgInVlqEc89afSOAa/ul4kfCYRxAss13mROxAhFSgn7lHbjjq8wJjs6n+/a+MrqRlX4K3Epzc1vVKKHWQdhuNDq3NgxQJPeKEtdS7uvE097syrzkwGYMQwTrIp7nYm5L3u5FdZaaW3vjZ1B2tdju2D+Ad+Kj8HYJGRcTz2aHQgaNtjIGVCWYIXiJeZAkwiDUm1gaToh/+f8R8NinzXUWEqWQVtNogO3N+o2BgvCz8uLVYhQO0ZZvr/JMqWtAJO9AI+JB2CDQag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lNtrgu0Q0xsopmdU7SA1cdZQAd9OBhD3UwtZmeY+q40=;
 b=M9DnzVEhSqYCyR1g3n3TIWdnhDKjHkX9BQxrOeTbgV9qMm9CYi1Ab4ZxmKNb3Qxq89o/ciT3ArMww4uM5Axr3SgIf2A5hGtzNBJ+ytLisTXfhFDPDZC8Dhq59msws1ff5+rueyWEuN6DyrrD9M41bG0cm7wT+X9jPHWdSuS9oy2Y3s88+pwXv9qrTWO09FKO5aV9Mv1xqaqOaBKE5vyGXTuEJg/0W/JefLmHJ45imaM1RwKbClXX7lRmRoqjy0Ln0iLOlFNk6trnrxQYqNaOiwaNqymE6LYNfZ0oT+Fe2sj7ZSMDCyUHbNKE2JgthUpN/iv53rSNcayT9BF3iNrLnA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lNtrgu0Q0xsopmdU7SA1cdZQAd9OBhD3UwtZmeY+q40=;
 b=LSMgZXuNCc/i1Xeq4QTO/pDYXWHm/2JGZEcAJlEsetTCBHxSDPYehjqAoMBCj0crycNY4xOm5cuyjdQ68YbBv9fohzxKDmQIzZLEiFgkT+8cAWJgMdknpgrnD2MNRdIMnsQvqUGx5p0lqqHFp5en+2V03zN9Thg7n4HmyleQHDI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by VE1PR08MB5839.eurprd08.prod.outlook.com (2603:10a6:800:1a0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.21; Mon, 9 May
 2022 11:55:39 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::6c2b:5021:db9a:bf6d%7]) with mapi id 15.20.5227.023; Mon, 9 May 2022
 11:55:39 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "steven.monsees@baesystems.com" <steven.monsees@baesystems.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] enabling symbols for debug in clinfo
Thread-Topic: [yocto] enabling symbols for debug in clinfo
Thread-Index: AdhjkoL47clQSZawRfWEU5kzbcuRPwACS/sA
Date: Mon, 9 May 2022 11:55:39 +0000
Message-ID: <C43FA290-46CE-41F9-84ED-BF78D35BA152@arm.com>
References: <MADEUP.16ED6A72C4624DE7.14253@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16ED6A72C4624DE7.14253@lists.yoctoproject.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3693.60.0.1.1)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-MS-Office365-Filtering-Correlation-Id: 203152ee-733d-4740-6434-08da31b2dbc1
x-ms-traffictypediagnostic: 
	VE1PR08MB5839:EE_|VE1EUR03FT006:EE_|AM6PR08MB3992:EE_
X-Microsoft-Antispam-PRVS: 
	<AM6PR08MB399232B6B976ACB81CC19CE8E8C69@AM6PR08MB3992.eurprd08.prod.outlook.com>
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 UaIXyw27yiOCiT9vrFesLh6o0bALdFYkg+AYKyIFf37TlzC4IkBDITozeKcw1nSfThAhOkMWImhbxExG+b5GXpy8vfqxDDUKa3bsabhT8vCeGuUHkRWN9ZeM5qMbFfPrhHep0L7djJR3XNE36heVRHRtECBBcIQGxfPZXz4BSshUcJmEeoiiq5xbMKtTqad9VbDKYkID7dxjl36M0ekHMoiOhco2JeEiSffn/s33Y2BjOnPdBglryhNtMTpfmqF5CsWlKWwZ/B+cCFQp0EwG9csVTJVZIwj7b0qQkuy0iHmh8f4DrBka1PwyfxReqAooTMquDSKMinpzpzSLRv3+uwXFbd5ziKht+Fs7eC2nZ49ISXDjAUrk8IFNg7tec/nO7jrgb2gRlStcqLC/O+1KAD9yXedA4S3CeroxF3B+KMPb6wsjp/4lAb8gRqn4fBDE+2/GRqPcR+qmh76UMKcEZqqdsCQSIN8hAjyHzJ3Xl61yZjCFEa7FB+DMBg91dg2ITm6gLWh4ojHfjpOJ/lA3/OPQLvGMdsfFTZVB8ptbwdRg06xXn/6RFbGwwK8amZiUtND1Y6n7HvyGVYczt9H35HXlycXANePNQGQCUYiDCIzsXgagbAgJ4eDj4tRYTOaAaXbyPTkLNd9IaAYGooJqCMWGVFpsE5VM3ljn754s2dFY7fU6BzzHAF6AHP0DMKPZGeuH3PB9EeOWB7gHyNYfG4xt97v6zQpdRh1DR/paQ5hlo52imes9fNkohifFh9F70jXXv5zd+K8XGshcs6uJvVvaWIeO4J9k33eOX6ofp9CSfhORHM6IKpOXnFqfMMc4WA+4lA0VUWboyHf4vpOhCHTdaykcxKmkYuzmLx3mXAU=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(2906002)(966005)(86362001)(6506007)(8936002)(6486002)(33656002)(53546011)(71200400001)(5660300002)(508600001)(83380400001)(26005)(38100700002)(6512007)(2616005)(38070700005)(122000001)(186003)(66556008)(66946007)(76116006)(91956017)(316002)(66476007)(64756008)(66446008)(6916009)(4326008)(8676002)(36756003)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <B8B5F07C234CDC4C99DFCB5D9CB88CD8@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR08MB5839
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	bf7fc85b-8bdf-4461-5634-08da31b2d629
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	WLs+zMmNCF10NPqT4JVSZ6iwvIJ0HRspPTUrxvxSjO0M795twtiDX1R40azuGaWfo+HgxyBuKnf2b+FdUcDjISAo1RDecvtEWneS8hlUcgzX5o4bDR15883JPjRKzMJhyWnJkQPGpS1uMDSawnR7mHihjXEJ0XT7/MbhDKQW49pbS5BV1X2XZazDkxbDOA5ClKh3+y+Gf8Q0whSyDsO3Kfbbs95bpNSfWA2/lTeaXs7cXa7B/C0rwqF65QxUKrLyWmewJIfP8Xf81+2ORSoZaZN6zfn0BBk8ObfWgpPp5yzegjnDUNJJ1Gk4EasDwIg1Ryox4dFaffOCD+ih/ARaBa2zUcVaqt9l4aodL/CqbYc7FcEzZF1k5MDegCHZOQr4AyTsgmaBYAKb6UGzIycJPIIkg4pnfGUNCou8Ay8T5cTU7ESORieTiYL9jIwb1VXgmqt+Ni04Nam36qDDzC3/sL+NqyCQgh1Bl9GgZiGaxVqPfE7HRIoXF4d9kDKRkCxvwsJ9ozpnCqEhwms4JBzVExfJRFRv9p99gdDGfUKo8J7VHzkpIsxMsse6TuaJdkl+4G0n/PLW3vc8rC+xkIp2YQ1dl4BH4k3dNAvPgftYyUis9jlqI9bOe4rnx6Qo0QAo4oiikgX9gaCMFCsbiGC3172Xr730o8ZMYxMX6N4NtegsgGWXC2XtCEi2OE29TugieeqyRFTAqFTC4+ToXATfuBTrxLNTtUSh5OotDfI+ahD/mkvMEXV4Y05I3m/ZQL4J3vvIUJHNWH7eHmDaUaFio4SAknNTww+jUCwHZWqUlJY=
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230001)(4636009)(36840700001)(40470700004)(46966006)(40460700003)(47076005)(86362001)(356005)(26005)(70206006)(36860700001)(6512007)(70586007)(336012)(316002)(36756003)(2616005)(82310400005)(81166007)(6486002)(83380400001)(6506007)(6862004)(8676002)(4326008)(2906002)(5660300002)(33656002)(8936002)(508600001)(966005)(186003);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 May 2022 11:55:48.6233
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 
 203152ee-733d-4740-6434-08da31b2dbc1
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: 
 TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	VE1EUR03FT006.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3992
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 May 2022 11:56:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57028

VW5sZXNzIGNsaW5mbyBpcyBkb2luZyBzb21ldGhpbmcgd3JvbmcsIGl0IHdpbGwgYmUgYnVpbHQg
d2l0aCAtZyBhbnl3YXkuICBZb3XigJlsbCBqdXN0IG5lZWQgdG8gaW5zdGFsbCBjbGluZm8tZGJn
IHRvIGdldCB0aGUgc3ltYm9scywgYXMgdGhleeKAmWxsIGJlIHNwbGl0IG91dCBpbnRvIGEgc2Vw
YXJhdGUgcGFja2FnZSBkdXJpbmcgcGFja2FnaW5nLg0KDQpSb3NzDQoNCj4gT24gOSBNYXkgMjAy
MiwgYXQgMTE6NTQsIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcgPHN0ZXZlbi5tb25zZWVzPWJhZXN5c3RlbXMuY29tQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmc+IHdyb3RlOg0KPg0KPg0KPiBIZWxsbzoNCj4NCj4gSeKAmWQgbGlrZSB0byBidWlsZCBjbGlu
Zm8gdy8g4oCcLWfigJ0gb3B0aW9uIHRvIGRvIHNvbWUgZGVidWdnaW5nIHdpdGggR0RC4oCmDQo+
DQo+IEkgYW0gbG9va2luZyBhdDogbWV0YS1vcGVuZW1iZWRkZWQvbWV0YS1vZS9yZWNpcGVzLXN1
cHBvcnQvb3BlbmNsL2NsaW5mb18yLjIuMTguMDQuMDYuYmINCj4NCj4gSSBjcmVhdGVkIGEg4oCc
YmJhcGVuZOKAnSBmaWxlIHRvIG1vZGlmeSB0aGUgYnVpbGQgcmVjaXBlcyDigJxNYWtlZmlsZS5h
beKAnSBmaWxlIHByaW9yIHRvIGJ1aWxkLCB0byBpbnRyb2R1Y2Ug4oCYLWfigJkgZm9yIENGTEFH
UyAmIENQUEZMQUdTLCBpLmUuIGF0IHRvcCBvZiBNYWtlZmlsZS5hbSBhZGRlZDoNCj4NCj4gICAg
ICAgICAgICAgICAgIEFNX0NGTEFHUyAtIC1nDQo+ICAgICAgICAgICAgICAgICBBTV9DUFBGTEFH
UyA9IC1nDQo+DQo+IEkgY2hlY2tlZCB0aGUgYnVpbGQgdHJlZSBhbmQgc2VlIG15IG1vZGlmaWVk
IOKAnE1ha2VmaWxlLmFt4oCdIHVwZGF0ZWQgYXMgZXhwZWN0ZWQsIHRoZSB1cGRhdGUgb2NjdXJz
IGF0IHRoZSBlbmQgb2YgdGhlIGluc3RhbGwgcHJvY2VzcywgdXNpbmcgZG9faW5zdGFsbF9hcHBl
bmTigKYgc28gdGhlIGJ1aWxkIHNob3VsZCBoYXZlIHVzZWQgbXkgbW9kaWZpZWQgZmlsZeKApiBi
dXQgSSBkbyBub3QgaGF2ZSBzeW1ib2xzIGZvciB0aGUgY2xpbmZvIHBhY2thZ2Ugd2hlbiBJIGdv
IHRvIHVzZSBHREIuDQo+DQo+IElzIHRoZXJlIGEgc2ltcGxlIHdheSB0byBlbmFibGUgZGVidWcg
c3ltYm9scyBmb3IgdGhpcyBwYWNrYWdlID8NCj4NCj4gRGlkIEkgbW9kaWZ5IHRoZSB3cm9uZyBj
b25maWd1cmF0aW9uIGZpbGU/LCBTaG91bGQgSSBiZSBtb2RpZnlpbmcgY29uZmlndXJlID8NCj4N
Cj4gSSBhbSBuZXcgdG8gYXV0by1idWlsZCBjb25maWd1cmF0aW9uc+KApg0KPiBDb3VsZCBzb21l
b25lIHRlbGwgbWUgdGhlIGVhc2llc3Qgd2F5IHRvIGFkZCDigJwtZ+KAnSB0byB0aGUgY2xpbmZv
IHN0YW5kYXJkIGJ1aWxkID8NCj4NCj4gVGhhbmtzLA0KPiBTdGV2ZQ0KPg0KPiAtPS09LT0tPS09
LT0tPS09LT0tPS09LQ0KPiBMaW5rczogWW91IHJlY2VpdmUgYWxsIG1lc3NhZ2VzIHNlbnQgdG8g
dGhpcyBncm91cC4NCj4gVmlldy9SZXBseSBPbmxpbmUgKCM1NzAyNik6IGh0dHBzOi8vbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZy9nL3lvY3RvL21lc3NhZ2UvNTcwMjYNCj4gTXV0ZSBUaGlzIFRvcGlj
OiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbXQvOTA5ODYzNTcvNjg3NTg4OA0KPiBH
cm91cCBPd25lcjogeW9jdG8rb3duZXJAbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KPiBVbnN1YnNj
cmliZTogaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2cveW9jdG8vdW5zdWIgW3Jvc3Mu
YnVydG9uQGFybS5jb21dDQo+IC09LT0tPS09LT0tPS09LT0tPS09LT0tDQoNCklNUE9SVEFOVCBO
T1RJQ0U6IFRoZSBjb250ZW50cyBvZiB0aGlzIGVtYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgYXJl
IGNvbmZpZGVudGlhbCBhbmQgbWF5IGFsc28gYmUgcHJpdmlsZWdlZC4gSWYgeW91IGFyZSBub3Qg
dGhlIGludGVuZGVkIHJlY2lwaWVudCwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0
ZWx5IGFuZCBkbyBub3QgZGlzY2xvc2UgdGhlIGNvbnRlbnRzIHRvIGFueSBvdGhlciBwZXJzb24s
IHVzZSBpdCBmb3IgYW55IHB1cnBvc2UsIG9yIHN0b3JlIG9yIGNvcHkgdGhlIGluZm9ybWF0aW9u
IGluIGFueSBtZWRpdW0uIFRoYW5rIHlvdS4NCg==

