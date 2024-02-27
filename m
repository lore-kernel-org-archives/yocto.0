Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40112C5478C
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 10:26:00 +0000 (UTC)
Received: from EUR03-AM7-obe.outbound.protection.outlook.com (EUR03-AM7-obe.outbound.protection.outlook.com [40.107.105.58])
 by mx.groups.io with SMTP id smtpd.web10.9411.1709029550469192117
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Feb 2024 02:25:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=VP3X9ntG;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=VP3X9ntG;
 spf=pass (domain: arm.com, ip: 40.107.105.58, mailfrom: ross.burton@arm.com)
ARC-Seal: i=2; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=pass;
 b=L12vrf15jV6QJP3UDL0kSZ4EA3131zXs8o92QZ7BZJdEbMpIFqk/rnD6iXkT5qAa4ZoOIMRyiuVln74fWyGfZe9bJEAQKu7EeaOFOU3YuvKy9JAW3dPrQKn9IucLBwls8twXtFvrKeIIapwlWzIlnrbESr7LWYKiTO4SfI6dM3nN6VmhYdIITKscl0IpkuhU3qjn8Zzgv+d8I0VNDc2uw1AVxZe6ifvKmj5OMTzmB0e5Mqo/p3iJcAHP16q8pttHZ5x037a4fyddhoKiNtJuB0AYfIyoMG9pr3jXvxe1sDs007ls69T4pYtHZc6X8tZU3eRPoxTeGDxTecpagFsCGw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5NBtRlqqtdA6IPDtyXg7NQQyl5pbMghbweq3h9dA3yY=;
 b=GONYVEQXrP7gJEGVKhYEYXaZ2waw+L1KShadgRIB4VGPGUxmHLsToHhNbvn4Tp6Rxtf5GjP2Ah4CVWQ0wc0QQ+gUuVWl45ITn1eDCFZqrITv2IbHjoeFGqhVcDLLZIfxAWL5ZcEsaD6VbGHhT8UktzOht/q9PuN1Fe7Yff4xw1eWVX3IqenLzmvyjyvPxYOsWUFAX/Mq29k/ex0JimODG8yjGAoYEuFsQK+TIeHsrDcdgO4aznuaoSTlXKdDCSesJnBCwnWO4oNrsnHHG+Cct8AarRzWgpdElD9Vuw7TEQowvk5TjJzjC7muukN8YEFiYhAqyNZPJ3hLHAlUYzLkIA==
ARC-Authentication-Results: i=2; mx.microsoft.com 1; spf=pass (sender ip is
 63.35.35.123) smtp.rcpttodomain=lists.yoctoproject.org smtp.mailfrom=arm.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=arm.com;
 dkim=pass (signature was verified) header.d=armh.onmicrosoft.com; arc=pass (0
 oda=1 ltdi=1 spf=[1,1,smtp.mailfrom=arm.com] dkim=[1,1,header.d=arm.com]
 dmarc=[1,1,header.from=arm.com])
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5NBtRlqqtdA6IPDtyXg7NQQyl5pbMghbweq3h9dA3yY=;
 b=VP3X9ntG5gEfZ9h/ksqth4dgkHAeB6LD6gWf8EA0nXXmkd+lzVe4QTXFF0yj54Wl4NDUHslHhnSufKcnr/UqUlenIXno60A4TQ0pmx6TY9hwYPvCnMURPAkWzNb0K4pDepNXYoz55Sow+NjKWMcTB61kKObo2jdVFhmpDPbJm+c=
Received: from AM6P193CA0054.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:8e::31)
 by AM8PR08MB5587.eurprd08.prod.outlook.com (2603:10a6:20b:1dd::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.29; Tue, 27 Feb
 2024 10:25:46 +0000
Received: from AM2PEPF0001C708.eurprd05.prod.outlook.com
 (2603:10a6:209:8e:cafe::7c) by AM6P193CA0054.outlook.office365.com
 (2603:10a6:209:8e::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.49 via Frontend
 Transport; Tue, 27 Feb 2024 10:25:46 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM2PEPF0001C708.mail.protection.outlook.com (10.167.16.196) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7292.25 via Frontend Transport; Tue, 27 Feb 2024 10:25:46 +0000
Received: ("Tessian outbound 081d54b8cc4c:v228"); Tue, 27 Feb 2024 10:25:46 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: ed3b2df03e923e15
X-CR-MTA-TID: 64aa7808
Received: from 24a92fe55e31.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 885C10F1-94F8-4FF7-B81D-868519C155CD.1;
	Tue, 27 Feb 2024 10:25:40 +0000
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 24a92fe55e31.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Tue, 27 Feb 2024 10:25:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jFC3uEI2lyUWwGI9iUvm76OMdKD6xZjSqmYDL0kBFH5rZtz9ICfxaFq6P0pXBGc7wHyn5azLu8uO+AE+XF7Q8pqMn4VSNWhrkzKe8rQkb9eunsmVAtnVJfIpaXOus1Ek+zyt5Cxjk93UKPWGIlAAg6AXbIsPxAJab9lS6Qz1M1rOWGTA4QcAogRF/CfUTDl9ZVPLkxfAnEiZ6UgYaxr543AVjaDRv9j/9imP8T+Eb/NVz/3Iezw5vJ2fO0tV4nakC0+CL3QdmQcDqLDv+u+UnJcAn4n86AJEksH+adY7KqHIuOzdzqoG9S7OViPfU0fwKSne2vgGrGUbT5OaDK18VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5NBtRlqqtdA6IPDtyXg7NQQyl5pbMghbweq3h9dA3yY=;
 b=eJBBHN9cWKSob05BeT7rvw8gqWm/Trkbyx+qD48Z7j5XlCzuy8UJCmtzewCWz3nEA11AY5LuQDhRClhHRME398/TY3M+pPZk0sq3lsJwH+LBpd5PtZqBWznP5JjebrrjUoWgL1IiaPqtGV5I4z3/SUOBeoHs0nHo8h6CjWynVAsaniI5VIdcdguQ0/6QS8zp6F+utjW7U2BOC1k4YRWygaSK92yvrgYwyC3A/y6dr5p9fwe+6BfpLb9ChG3v7/wmcGYA1++Nb+XetHaqWoeLmhAdZewL69yDqLUg/aLNe5W1t1aYvC0pcrTHea1tVyrRVi+8PaQbzbRJh+cWjDM7fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5NBtRlqqtdA6IPDtyXg7NQQyl5pbMghbweq3h9dA3yY=;
 b=VP3X9ntG5gEfZ9h/ksqth4dgkHAeB6LD6gWf8EA0nXXmkd+lzVe4QTXFF0yj54Wl4NDUHslHhnSufKcnr/UqUlenIXno60A4TQ0pmx6TY9hwYPvCnMURPAkWzNb0K4pDepNXYoz55Sow+NjKWMcTB61kKObo2jdVFhmpDPbJm+c=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by PA6PR08MB10816.eurprd08.prod.outlook.com (2603:10a6:102:3d9::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7316.36; Tue, 27 Feb
 2024 10:25:38 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::740e:ab01:e66a:61c9%3]) with mapi id 15.20.7316.034; Tue, 27 Feb 2024
 10:25:38 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>,
	"miriam.rico@enigmedia.es" <miriam.rico@enigmedia.es>
Subject: Re: [yocto] Yocto Kirkstone VPP compilation
Thread-Topic: [yocto] Yocto Kirkstone VPP compilation
Thread-Index: AQHaaKod/JTPIgFcmUetoRzOSc5CV7EcxbMAgAEDwQCAADPIAA==
Date: Tue, 27 Feb 2024 10:25:38 +0000
Message-ID: <E5C518BD-91D6-4F6D-9250-07BF313E7C80@arm.com>
References: <1599BD52-3B26-4688-A82A-F1AC31369B67@arm.com>
 <21276.1709018408156858522@lists.yoctoproject.org>
In-Reply-To: <21276.1709018408156858522@lists.yoctoproject.org>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3774.400.31)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|PA6PR08MB10816:EE_|AM2PEPF0001C708:EE_|AM8PR08MB5587:EE_
X-MS-Office365-Filtering-Correlation-Id: 3436eb2f-1b80-439d-2e43-08dc377e75de
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 SrjZarWghL3AfuVRoL3W9OuLfjPcMRriTH+FPAVWLi5/bezsAWFZefOWdsClFcQuygRM5C5+9m0f/FiUaIy7WXmMuIZzE67OE4n6fpzArhgx0SeWAQrb8fRhtCO3EEBZHGMaOY6xQULwW1zhU/InMJCSyVnoaQJS2J3+493s/3UWjN0PEi19LiO2piUKF4wk6N2K9JDxNaR7Rz0+is+7qXAHyhTlavs2qmHEhXD5YmBfj/6Pt/GaWMYBiQXADoKHLc4+Appgjghi0oPvnNUH17nIcV7uIOyIgpowE+6CRYS2wtxUsdEu6u5aZTv3jixp+Qlnx25x1ycJFnHsN9HKvzUFVl7mw5mm8OkNqvNbKW1iQ8hCPGyYJt6VxTGz6kOkD7nr8U2nBiqFZIaHYgsQslqA5/fvR/1dUhuKObfuajHKSngDEVZ7M8Qas44CrXomV4ShY4URDcjKbKHsb6I3lFP56c6K14nUhQZfbuINpA9w7RN8UGVYhtHTXdgDJ1y7ukoiZSXOi1DAfC4nvj8Emjjl54AM8kggYe73jTvmIx0qwslSvKuEkBfjr9onRlN9P3YMUAiPGUeurzN0nF3VhNBex7TVVD7jghI89YlfRquqK8SQB6iGqmd1D5sjZgEVfhk3C5rcXurCLTlQKGHhvufJS7NOTIujK8ue5yc26pZDEFPFiXeTQtFChyIycYTRUgX0YkMK8b29qijc+ytQTg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(38070700009);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C56C97086BDEA44183B30740DEC56062@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PA6PR08MB10816
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM2PEPF0001C708.eurprd05.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	6bd7ae3c-f439-4a33-9ac7-08dc377e7149
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	NLYiu1YeNLh7MeSKiG5pqDcwInCR6iWuxtUsFMLfbkvyazzAUg/unv5odhyQi91xbaOXgESW85E+q0Jwstmxm/XsVDA5YYriZLM730f4YfmAC6Qs11//l++ZdUwlpFpGpHn8av53tV5OE6R7Us/JW/OhUUSdRePbnpoiwlGTBm8pPrU8AAq0GGr9ZKJmdVlFOq+4ckpJTCX6vwLARogbhCC/lxH3Wty5BiKXe/Y4Qyi23WlKbFQErhIIqpUJrZElPcPo1qZ7urGqimK9TqswF4p0jEJTxdA6d707Ho0KjU3IIOW6AMdUY33U9WSzcVIlIlenc9rnFy1ZcRrp0FhfFPhleY3MTZdRdFLFCR6u42y5djgimnyxjj5J5gaBuqltjAM9qm9mqSDKdApnylQbXCJuce2tv7T2lR0UI9BR1BCYP///Yynafrs49B3Jec+Ss6JM3ov5y0jEYwoDexsMSf3GSjjaBO4HwclqCBSDmTvsvN4yipKexQI+rygwED64fNR3nw6YIjPp8lPSuFe0bmqotbqKKQR4SpMrYyBdHWfjtrb7nsZHW/q95BAFUYILYtMtxzEvh3gaVK4zGK4w1sTvivp+TWD7P5IhMNnfNKRpdkUYn2Rbm972u7CQh9kviGTxvxIOuJ6PQgOn0e5Kkpf2sNxZ/L4dZ+2V62e3wjo2555L0bEJ0j1YY3b8LVi5rFYJ31k63CoTXoQLXqVU3u+o5binGGnropnd4Oss36GH7T2Ldw6xjD6lIlVdDXN2
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230031)(82310400014)(36860700004);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2024 10:25:46.2044
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3436eb2f-1b80-439d-2e43-08dc377e75de
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM2PEPF0001C708.eurprd05.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR08MB5587
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 10:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62620

T24gMjcgRmViIDIwMjQsIGF0IDA3OjIwLCBtaXJpYW0ucmljbyB2aWEgbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZyA8bWlyaWFtLnJpY289ZW5pZ21lZGlhLmVzQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+
IHdyb3RlOg0KPiANCj4gSGksDQo+IA0KPiBUaGFuayB5b3UgZm9yIHlvdXIgcmVwbHkuIEkgYWxy
ZWFkeSB0cmllZCB0byB1c2UgY21ha2UgaW5zdGVhZCBvZiBhdXRvdG9vbHMgYnV0IHRoZSBlcnJv
ciBJIGdvdCB3YXMgdGhhdCB0aGVyZSB3YXMgbm8gQ01ha2VMaXN0cyBmb3IgdGhlIGNvbXBpbGF0
aW9uLiANCj4gDQo+IFRoZW4gSSB0cmllZCB0byBzZXQ6IA0KPiBPRUNNQUtFX0dFTkVSQVRPUiA9
ICJVbml4IE1ha2VmaWxlcyINCj4gQnV0IGFub3RoZXIgZXJyb3IgYXBwZWFyczoNCj4gRXJyb3I6
IFVuc3VwcG9ydGVkIGZsYWcgLS1idWlsZD14ODZfNjQtbGludXgNCj4gSSB0aGluayB0aGUgb25s
eSBvcHRpb24gaXMgdG8gdXNlIGF1dG90b29scyBhbmQgc2VlIGlmIHRoZSBwcm9ibGVtcyBjYW4g
YmUgc29sdmVkLg0KDQpUaGUgdXNlIG9mIGF1dG90b29scyByZXF1aXJlcyBhIOKAmGNvbmZpZ3Vy
ZS5hY+KAmSBmaWxlLiAgQ2FuIHlvdSBwb2ludCBtZSBhdCB0aGUgY29uZmlndXJlLmFjIHRoYXQg
aXMgYmVpbmcgZXhlY3V0ZWQ/DQoNClRoZSBDTWFrZUxpc3RzIGZpbGUgaXMgdW5kZXIgc3JjLywg
d2hpY2ggaXMgd2h5IEkgc2FpZCB0byBzZXQgT0VDTUFLRV9TT1VSQ0VQQVRILg0KDQpSb3NzIA==

