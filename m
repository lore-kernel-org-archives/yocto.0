Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AEEEC54E67
	for <webhook@archiver.kernel.org>; Thu, 14 Mar 2024 11:45:16 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com (EUR02-DB5-obe.outbound.protection.outlook.com [40.107.249.67])
 by mx.groups.io with SMTP id smtpd.web10.10525.1710416712567644094
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Mar 2024 04:45:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=dGTCDDph;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=dGTCDDph;
 spf=pass (domain: arm.com, ip: 40.107.249.67, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=by35BGMilvX30libK8246Jyr7k29li6TywCfNaJOaouZJp+av1kndBK9BY8nVk2gY0e0vWMummkaRt42lstoieaJAjqsQxYMx2CV0HWusT22j4cBteK+DKLk5oPGB7gU57IT6SX+3kOphQ3dyGrEyzarjlmQ6cXoYNxWoiHkcalZbe2iS+zoeeSjBOUakXos6sFNxA20pawQGVusJUE0J4Z/oMD7Nx1DFStKzSfJ7K4jOFwuK2/Y04cbTqFQaEzJ7ll115yVCWyr0JaBPmLrXS0fdEvwxMizWm/gS5TWlhjKnYAJczRiZ8j9HStEY0HBtCcafIKDjl5mdVOXG6vXHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlZMWNhDE8KtuLuXhRswiVMcJ0HskPty2IYhkfOY5wc=;
 b=E2SFZRMkSjWgKMy3cekWYtHhMrRqjuN2UmsL/okCNeb5CubM6HZqqLzvjPfr4cgP2JI2v8TD5VFYltYd6Sa6VW1KX35OStbofi0nBV9cOva2FVEY0wErdHZ+ex2beUwOnIQoenuaABldyO7Cc6eCTaZWZ+u2OfyLOAe11ihyPh01hmqWKu43bGU7nWcZWdluNLO8NblqhSj3NfR8Q80fdyMdqHCv+I52qi7VCu6yMAfoeudoDgVMiPLmr9qJXRA1WXV2cI6Tw/aWm3/PjtYrzNUacvTrTmQvEfYg1Mj+NtKXSFCHjeSwzmSc7shwmzExFNrKkFgxMih48fGtG9FwAQ==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MlZMWNhDE8KtuLuXhRswiVMcJ0HskPty2IYhkfOY5wc=;
 b=dGTCDDphRcrwOMS7ese1Mhv2YVuN65C4O/qW8AKStoRu0MbPJHGvspkGxqRjTtr/TewAxB55U2SJHMb8XLosQZ3kZFpmMji/VMpgPeUlyE5jMTJUJfPJqoqKxoFWxOLTl8eV22h+FuRBMeZwpUtT3mMl3hEEj1zHESygyIGwb1M=
Received: from AM6P195CA0048.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:87::25)
 by AS8PR08MB8064.eurprd08.prod.outlook.com (2603:10a6:20b:54d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 11:45:09 +0000
Received: from AM3PEPF00009B9F.eurprd04.prod.outlook.com
 (2603:10a6:209:87:cafe::a5) by AM6P195CA0048.outlook.office365.com
 (2603:10a6:209:87::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21 via Frontend
 Transport; Thu, 14 Mar 2024 11:45:09 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM3PEPF00009B9F.mail.protection.outlook.com (10.167.16.24) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.12 via Frontend Transport; Thu, 14 Mar 2024 11:45:08 +0000
Received: ("Tessian outbound 5180408f3322:v276"); Thu, 14 Mar 2024 11:45:08 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: 0dd577974305437f
X-CR-MTA-TID: 64aa7808
Received: from 05220fbe798e.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 76FCC324-745B-44A7-8BC1-D942D505BFE2.1;
	Thu, 14 Mar 2024 11:45:01 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 05220fbe798e.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Thu, 14 Mar 2024 11:45:01 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L2GfXMjp8W6QwwREAC2FbilUbHeCYtN0duCgrgN4Z7nBF+3CgC4hMq+U0iWdYnF2wjvO01cP9l2FYwPx6xO/Yw7sy1zLLKPAwJy68SRXb6yRyx6yiNXq9KcrY8pFbJx9joPVf29HCCSvNKsKRSrnzkHfuk72uSYN+oOtAJtKQDV8s632RYMSRCCjybegvV5cIDAUWONtheMxsBbJ+66ln4eCzeCsJrt6/y/rkuHcgF4OIW1DxAXgw6n0PiPuArL8hsf0O34djz85Fay1ya0QcBgzD5TEibG1qP4YbUN1icNUjdUy2ZeQdlMZxb72uyfI5MKOj0DEAqKImPuXBluUxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MlZMWNhDE8KtuLuXhRswiVMcJ0HskPty2IYhkfOY5wc=;
 b=nmme6WVVsvzLx/9+7dk+vMUGiVXMBRQzNktPQDIkF4d/vdCb1g0cZ/JN5e1xHELd8lhVjNXzL2R5CXEbXArjPHrSDoXax/SzCbIrS83RUl1lGvV07Eaxj88+QzL4KFyXiIcSX8nz/VflADOMIg2/Oze0CM7DZypSePIojYmht+35WZZjISKfRiH13u9MPindBWC+dHw4CXqtFHpKlufTxLbYQnz9X+SVX2mHkr4lyKT4/DESl2ZgO2QV7hlPbO6+W7qvJOV1GLxSbZA4xWaZfP+Yakhk54uby7+s0iYS7LlWFtInKa3PnrcqyM13fYaZQpbStne0I/vPjs1Lsx6l/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MlZMWNhDE8KtuLuXhRswiVMcJ0HskPty2IYhkfOY5wc=;
 b=dGTCDDphRcrwOMS7ese1Mhv2YVuN65C4O/qW8AKStoRu0MbPJHGvspkGxqRjTtr/TewAxB55U2SJHMb8XLosQZ3kZFpmMji/VMpgPeUlyE5jMTJUJfPJqoqKxoFWxOLTl8eV22h+FuRBMeZwpUtT3mMl3hEEj1zHESygyIGwb1M=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA4PR08MB7483.eurprd08.prod.outlook.com (2603:10a6:102:2a7::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.21; Thu, 14 Mar
 2024 11:44:58 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::36de:39f1:4d:5228%5]) with mapi id 15.20.7386.020; Thu, 14 Mar 2024
 11:44:58 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
CC: "joel.winarske@gmail.com" <joel.winarske@gmail.com>
Subject: Re: [yocto] PACKAGECONFIG variable related patches
Thread-Topic: [yocto] PACKAGECONFIG variable related patches
Thread-Index: AQHadWU8f01IIu1wHUaV+xOOsokqCrE14IyAgAE+sgA=
Date: Thu, 14 Mar 2024 11:44:58 +0000
Message-ID: <F0AF6E21-86FD-4C78-9D40-082CB17D43A0@arm.com>
References: 
 <CABKMkPJc0BbU0owt6dVnmOBSrT+Ji=sBNMYhgWtgRUhxT2RN_A@mail.gmail.com>
 <CANNYZj-kae1ozTWxhTOoXT3N-4gfLcJBphfbTw9gfcOeZfNChw@mail.gmail.com>
In-Reply-To: 
 <CANNYZj-kae1ozTWxhTOoXT3N-4gfLcJBphfbTw9gfcOeZfNChw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA4PR08MB7483:EE_|AM3PEPF00009B9F:EE_|AS8PR08MB8064:EE_
X-MS-Office365-Filtering-Correlation-Id: 5aee80e8-1190-4a0a-9262-08dc441c3324
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 IC+JsPLO0t9Fc873vP+8VoHtz7rr2WNmI75FZIO8SjHRujA+/bmSST/TBIrAPJzbuwLsRjNKHrN53D/RG5MhLKDu3TGLse4HEHmc+Ghs9e0eJiFVjxuwyQw+k4rY/pfIgs5f4ODH4Aphep++vK/Y/5W5J+J10UL8We6rG9HnHNuHUX56QftdU1RRYSkxyrwod/Jwac8fpy6sahrnnZwmbX+Z6cDAmj2wztqrb+LD77y4uzvTBsKQNwMGWbdQGlUZWn/9dZRMJdDh6wnZMLCD0TD7BU/uvgHRnvXUJL8Cuxi9MeYOzHeisENmV2GW/Kbl2U/dB0tjRHyGrkujPSU+fJtZUlhOibwmuPQ2Wr/wMP+7ycfoeXM3ajoXDPeq4L2AOJfWjiEadEZOCEVrgQisKE+7I8nL7S+q2DY3hWZGoEX6eAteCvgcxicxSzoHdMhdtzgcuX2Hpcz/yhAvJcCAPF/+o9ghaJO6nUGd33NRbdwfpzeawiUoE9gXVdf8Yr19XPFmmdShV+iwkwfu0uOCwqcEbGgTKe2cSftySwo3rU6nfXft3wYvallW5h2cfUVO0LBsKtO3NqEBJm3CYFOFic4RJkNDZSJQZZlvKSGnKplwIb3JKkE26Lk9dar7+e0kkjrJUa0wbhfI/ZKVpxflbnvW0k9KkvXRviarVzyEReH8cdL7iV1ojNL3gtph7ZDcWmN9sTyJT+6C6naTYyFgDGUTka8UaKOJCVTDK8JJvsc=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <EBFDA96542678D4A8EEB34CFABD60310@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA4PR08MB7483
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM3PEPF00009B9F.eurprd04.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6e4331a6-4b10-4f18-646e-08dc441c2d07
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	uOgrL+Qseg6nLLyl5Yh62H/p4NXjzi2hhbUYgdRduTRFqp9nGmBbBZ5ITrfslBXDfLA7mVkRWcVbteBYil0Tk+2v4DPLBNoOF5wLwTIqxPgrPDx7HXVY0k+dV0xWa5wvmVt36DGEAkJFjbXR39y0+JH9bIDd0RsdmIE886CT3wQziqkn7bH2FopXeJpkva3F5uz7QCRX94PNRdyGIkIpEO4oe2zO1rA9Sa4ap5fvLsSsqdxmnkafWoZASMRq+UZtQaMD1EZAKbPAY4i9fF9f+VepgzKKhxx1xsgzSQ8MVBM9/Lma2pVIfqPcvp5ewY7VyWpfnkBRtX4eSAFQqH7guwMtcmRA/pyTLpP91V9AIPVESpMOrBVoP53J3+2FggQcyne3ulWSAUj+z/8LqYqwWDVS348uI7nfI2+cDltSEPv0m+DRzkXA3cLEJpxWd7e9bqUQSf2FdbFcU41U79/mkwdcMU/uu+DWftMM6/9fs+lsnEnbjag6JURIjFrlM0qSi0QllFr99mb6Dlzy2tVuYTlfNDJczeqXaT1aN99G9relZwlUTKo6X+s+g/im+6axNJdAUAQTdy5miCBzAkws0nifYkRe19oE8TJvPxrzvUn/X67jrAfH4TudxWB0wGSwKUpKnCidVvTaF2iJti7/jTCm9o+QXwU9YJbIrZuxb0Hv5u3CpdOW2M+xvrZJZW88NJ9kPvjLlAVgFzP0qZ19T8VITfrF9H34gl/ueW1mXPPdOUuamhLYhha4Ocs4wUSc
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(82310400014)(1800799015)(376005)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 11:45:08.7106
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5aee80e8-1190-4a0a-9262-08dc441c3324
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM3PEPF00009B9F.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB8064
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Mar 2024 11:45:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62760

T24gMTMgTWFyIDIwMjQsIGF0IDE2OjQ0LCBBbGV4YW5kZXIgS2FuYXZpbiB2aWEgbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8YWxleC5rYW5hdmluPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4gDQo+IFRoZSBpZGlvbWF0aWMgcGF0dGVybiBpcyB0byByZWplY3QgY29u
ZGl0aW9uYWwgcGF0Y2hlcyBpbiBjb2RlIHJldmlldywNCj4gDQo+IFNlcmlvdXNseSwgbm90IGEg
Z29vZCBpZGVhIC0gdHJ5IHRvIGZpbmQgYSB3YXkgdG8gYXBwbHkgdGhlIHBhdGNoDQo+IHdpdGhv
dXQgY29uZGl0aW9ucywgYW5kIHRyaWdnZXIgdGhlIGNvbmRpdGlvbiB0aHJvdWdoIGEgY29uZmln
dXJhdGlvbg0KPiBvcHRpb24sIG9yIHJ1bnRpbWUgY2hlY2suDQoNClRoZSByYXRpb25hbGUgYmVo
aW5kIHRoaXMgaXMgdGhhdCBjaGFuZ2VzIHRvIHRoZSByZWNpcGUvc291cmNlcyBtYXkgbWVhbiB0
aGUgcGF0Y2ggbm8gbG9uZ2VyIGFwcGxpZXMgY29ycmVjdGx5IGlmIHRoZSBQQUNLQUdFQ09ORklH
IGlzIGVuYWJsZS9kaXNhYmxlZCwgYnV0IHRoYXQgY29tYmluYXRpb24gd2FzbuKAmXQgdGVzdGVk
Lg0KDQpJZiB5b3UgX211c3RfIGFwcGx5IGEgcGF0Y2ggd2hlbiBQQUNLQUdFQ09ORklHIGhhcyBh
cyB2YWx1ZSwgdGhlbiB1c2UgJHtAYmIudXRpbHMuY29udGFpbnMo4oCcUEFDS0FHRUNPTkZJR+KA
nSwg4oCmKX0uICBUaGVyZeKAmXMgbWFueSBleGFtcGxlcyBvZiB0aGlzIGZ1bmN0aW9uIGluIG9l
LWNvcmUsIGJ1dCBqdXN0IHRocmVlIGluc3RhbmNlcyBvZiBpdCBiZWluZyB1c2VkIHdpdGggUEFD
S0FHRUNPTkZJRyBmb3IgdGhlIHJlYXNvbnMgYWJvdmUuDQoNClJvc3M=

