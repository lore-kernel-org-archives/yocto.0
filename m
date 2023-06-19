Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2DECEB64D9
	for <webhook@archiver.kernel.org>; Mon, 19 Jun 2023 09:55:12 +0000 (UTC)
Received: from EUR02-AM0-obe.outbound.protection.outlook.com (EUR02-AM0-obe.outbound.protection.outlook.com [40.107.247.81])
 by mx.groups.io with SMTP id smtpd.web10.4098.1687168504573628778
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Jun 2023 02:55:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=YWE1sdfO;
 spf=pass (domain: arm.com, ip: 40.107.247.81, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dZk1Y2nlMutmT4OJdZbBRQ8+4qchDojuE0PVWAC7fco=;
 b=YWE1sdfOGLuvX67L4OEUcltpFBr3GVvPTVRl6Ai7O3FtHcomLepksMWG+IyKG2wGDVhvfElW0h+MEiw2+1UhsmTWa1k5QPm94V/MdWrvEe98HPqvlINbIpKcZ5ZsRFcyedlooGkbLRX2w5rNUvvQ6Q1jKlE4qfKjrmjGY5nXMNI=
Received: from DUZPR01CA0209.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b6::22) by AS1PR08MB7610.eurprd08.prod.outlook.com
 (2603:10a6:20b:475::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 19 Jun
 2023 09:54:58 +0000
Received: from DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:10:4b6:cafe::c9) by DUZPR01CA0209.outlook.office365.com
 (2603:10a6:10:4b6::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36 via Frontend
 Transport; Mon, 19 Jun 2023 09:54:58 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 DBAEUR03FT053.mail.protection.outlook.com (100.127.142.121) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6521.20 via Frontend Transport; Mon, 19 Jun 2023 09:54:58 +0000
Received: ("Tessian outbound 5154e9d36775:v136"); Mon, 19 Jun 2023 09:54:58 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: d50f0d46badb90f1
X-CR-MTA-TID: 64aa7808
Received: from 0cb64c1965c5.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 636465CD-C067-4F33-92D2-DB6DFB5FC3DC.1;
	Mon, 19 Jun 2023 09:53:38 +0000
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id 0cb64c1965c5.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Mon, 19 Jun 2023 09:53:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=COsGoh+7yujQx/wi0H76Phg/SitQlwHy9SGGuwNOjiDeWQS2cFPgLUiEtbGWYY9NWdHr0IrqiKPzUDjIm7SUAWObNAIAJebTuuKcD6L19gMg8qOKhePtL6kj8ZwEb0BvUu7VTlxt2kVWZdw5bm6lLGX9mq5kdoydnAHnu2eZokYpmwUBeu9HvJe4GqOyITPUOi0xNVbXbvg1UQp02aagjjxdtxCRBfIUGMe7zNVeGbKlUKqCzIxZj323PB+rP43mbzSVKTZN5ozvabkgavAIvAk/bGIqAon43XH91EuUJ961QbCYpUbfi1P0ifnVl6cZnGKrdXWtr4rL8MKAXb7nhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dZk1Y2nlMutmT4OJdZbBRQ8+4qchDojuE0PVWAC7fco=;
 b=FoZb2RtMWLGwmIxMQoT8tI+aIfUFYIxRmeBan9OBEzHijQbE+FIJwmFP5cqjobSAF1ImlPp7V3m/dGAkHDxlfiV2c4b67dT7ATI3gdGOBf+P8sAgE+YYJMfhzSUF9wJhzNucrJZnTV5G8GEuFPYGg6tDb3ldU1a6fGyCqEbLwjkNQJKQY0YWVlwR8xkisbuzzb9JY5oM2CSzxgZFaCmKXohcalnh9Ij6gJUWyyDBgutpfgF/2JD8IDuH29HMYEdWoxYwgxXNjdGC643keKsagMtA0GcpDybFfLyFNjWAEczcLzfeN2gf60pYipr90h6jOE1o69T8RV9YlLaRaw45aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dZk1Y2nlMutmT4OJdZbBRQ8+4qchDojuE0PVWAC7fco=;
 b=YWE1sdfOGLuvX67L4OEUcltpFBr3GVvPTVRl6Ai7O3FtHcomLepksMWG+IyKG2wGDVhvfElW0h+MEiw2+1UhsmTWa1k5QPm94V/MdWrvEe98HPqvlINbIpKcZ5ZsRFcyedlooGkbLRX2w5rNUvvQ6Q1jKlE4qfKjrmjGY5nXMNI=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM9PR08MB6690.eurprd08.prod.outlook.com (2603:10a6:20b:301::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6500.36; Mon, 19 Jun
 2023 09:53:36 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::30b4:3110:b02d:7f21%6]) with mapi id 15.20.6500.036; Mon, 19 Jun 2023
 09:53:36 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "alex.kiernan@gmail.com" <alex.kiernan@gmail.com>
CC: Richard Purdie <richard.purdie@linuxfoundation.org>, Alexander Kanavin
	<alex.kanavin@gmail.com>, Michael Opdenacker
	<michael.opdenacker@bootlin.com>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Going on supporting Ubuntu 18.04?
Thread-Topic: [yocto] Going on supporting Ubuntu 18.04?
Thread-Index: AQHZookPUavabp9mjE6A8xpYpBrK3q+R1GeAgAAI54CAAALKAIAAAT+AgAABXwA=
Date: Mon, 19 Jun 2023 09:53:36 +0000
Message-ID: <94252681-15F0-4C7C-AB6A-A4476A2C2A8D@arm.com>
References: <19697e87-997f-46ff-7017-804e1f344550@bootlin.com>
 <CANNYZj_j57XUfRbALdWSvH5wGOop9ytSk-_niEH24Go0qDCKwg@mail.gmail.com>
 <9942c50b161b8791a3d9b3352f6988e0aab9bf17.camel@linuxfoundation.org>
 <457A2135-C389-4FFC-8876-91DD1F3E9FB9@arm.com>
 <CAO5Uq5RYQ47LGrfvguMTKOhjvWxXe4HXSov_8knPieVxT4Rvaw@mail.gmail.com>
In-Reply-To: 
 <CAO5Uq5RYQ47LGrfvguMTKOhjvWxXe4HXSov_8knPieVxT4Rvaw@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.600.7)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM9PR08MB6690:EE_|DBAEUR03FT053:EE_|AS1PR08MB7610:EE_
X-MS-Office365-Filtering-Correlation-Id: 510b8bfd-9146-4692-6c77-08db70ab3ddb
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 PXKYXGR8dhM5IwQKTSneTrQfrwUtvznA0vR6qmxSy9Eoo/gRL8W6BkYucr4l+DeFFytZNWvESOX6Y/I0LrZJAu8RPIZtfI62LDzfCysffIZqDg8pXZRM9aENp7cYsUlMpIjN79esDW6CxqO2Nj+WM9Tz6f7av3mPjzkn9gTYBKoS+gpIZc3YXWu5Hz/49aCfK8cVmbuRg3YsAYqsJBRe+aR8b4GVN4k7i+Hz5+giHKEZlVa+hst/+z8F3+qhVLeiHF0r4YN7zsc1oNDG8zUmRNNLY3Lg7oGDdqWQ7NCK/UcoVfBkEeM0gQzDJH2KnZakqb47p/EkcATsKs2MiJTS0jbS/PfeB4+Xfpd84Rl8CIjeZZSuidy8lYh1sBpW4kz0WlhBExZN+CcdiwCRy19td5hbm38qjP8XNmh5eyaWNv9VeiqvwpyWm4rT935nK1Is4TCFrUq5+L3EJd24883fB0iUoqHYKCvAOVjyZrte7CuFbR6pjmWTYG3n9BIs6XzNZ7+tmr7Dqw7GmKqI5eQZZCL4Q1owPcrbzXddLqRBotZQxj/f1avFpm4VWa/hU9yWwkGcbyIhum2ksfn+wtamIYzdRyx9k//dQNZk2Tjgip7Nd0vYoe962wobsLlJgAgtIrkXRjEMPsXzELIONsl9bA==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230028)(4636009)(366004)(346002)(396003)(136003)(376002)(39860400002)(451199021)(91956017)(4326008)(54906003)(71200400001)(478600001)(76116006)(6506007)(53546011)(6512007)(26005)(6486002)(186003)(36756003)(4744005)(2906002)(8676002)(8936002)(38070700005)(41300700001)(66946007)(6916009)(66446008)(64756008)(66556008)(66476007)(316002)(5660300002)(38100700002)(33656002)(86362001)(122000001)(2616005)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <9A3625B928AAC44588FAE8C74C020F38@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6690
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	8da2bd0a-dc3f-4eda-4568-08db70ab0d2e
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	tp38mAT/YxRvl726l3uCdtyX48OPlh3M5p7u7O58+Myf4OG3gYPYOF+8dJe8uYFSmMAt8fJiPZDLybTtS6je8EQylYWHtcjEm4TLJDE9r57vsvEMMQ09tIYrlV9nN6oWJxElAMycy3lY89COWv7QL0C4LvOH+2bpNwyZwTLKf0ETMuogAZT9GiOo8SS2/6IRKbCQtcp9ku0KMVBnP9+GJXjKIbmAOwn/v9+DhsSW2FoAp8uQQmamfrncLR8fYkx51p+Y0D8//3sicTOWG1roMEmG0CkV8tpsID2gpipZZ3IoeS/vqYb9geqXSlDTnU3FWXSisULuit+psyj2e5N0tPl523jquoJ8aA9e+hGv/3weYHPTwnvsiLuUgjsHPQeapG/QthKOFylc6ifw/0hYgpBZsPLpMQX4kYM5BmDiW4hBTiJlUIXEEGapQNwU5IWub4FNea8pqlIC+b+8WnJ3Uz+oJ0x6QlY0bXvOYk/dc45mxrXHtwgBbnn+sDDsOYV0oZN7PLJ6+zgIHYf5JdauFdMco/T7zWTtGp7D8i9fr6mh11kxJIcED2N0dMpM9p6L5ccVHPmLBSjrgnH/hl1Aay6VmDFzJvB59NfPgWB51uxqiPBOD02Jg8rJwuTo3djz0k02/8RWD4DUZgjEvYkdY9F1fTswd+71/DHCVlA5Dvv5UNTluEboJqM2gsL6AjBEq5e0as/FEBl4xVKOWT5/evZ+bhwpkUpS/wflxyzudtcSvGh4YDopdQnYoIT4wLJR
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230028)(4636009)(346002)(39860400002)(396003)(376002)(136003)(451199021)(40470700004)(46966006)(36840700001)(53546011)(82310400005)(70206006)(70586007)(8936002)(8676002)(26005)(186003)(6506007)(6512007)(36756003)(41300700001)(5660300002)(6862004)(4326008)(82740400003)(36860700001)(316002)(54906003)(40460700003)(81166007)(2616005)(356005)(6486002)(40480700001)(478600001)(2906002)(4744005)(33656002)(86362001)(336012)(47076005);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2023 09:54:58.2566
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 510b8bfd-9146-4692-6c77-08db70ab3ddb
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	DBAEUR03FT053.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS1PR08MB7610
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 19 Jun 2023 09:55:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60345

T24gMTkgSnVuIDIwMjMsIGF0IDEwOjQ4LCBBbGV4IEtpZXJuYW4gdmlhIGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgPGFsZXgua2llcm5hbj1nbWFpbC5jb21AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4g
d3JvdGU6DQo+IEZXSVcgd2Ugc3dhcHBlZCBvdXQgb3VyIHg4Nl82NCBidWlsZCBtYWNoaW5lcyBm
b3IgQWFyY2g2NCBidWlsZA0KPiBtYWNoaW5lcyAoYm90aCAyMC4wNCkgaW4gQVdTIHdpdGggcHJl
dHR5IG11Y2ggemVybyBwYWluIC0gaXQgd2VudCB3YXkNCj4gYmV0dGVyIHRoYW4gSSB3YXMgZXhw
ZWN0aW5nLiBUaGF0IHNhaWQgd2UgZG9uJ3QgcnVuIHB0ZXN0cywgb3IgcWVtdSwNCj4gb3Ig4oCm
DQoNClN1cmUsIG91ciBtZXRhLWFybSBDSSBpcyA5MCUgcnVubmluZyBvbiBncmF2aXRvbjMsIHRo
aXMgaXNu4oCZdCBhbiDigJxhcm0gaXMgaW5oZXJlbnRseSB1bnN0YWJsZeKAnSB0aGluZyBidXQg
cmF0aGVyIHRoYXQgc29tZSBvZiB0aGUgY3VycmVudCBwaHlzaWNhbCBhcm0gd29ya2VycyB3ZXJl
IHVuc3RhYmxlOiByZXBvcnRpbmcgY29yZSB0ZW1wZXJhdHVyZXMgb2Ygc2V2ZXJhbCBodW5kcmVk
IGRlZ3JlZXMgY2Vsc2l1cyBhbmQgc2h1dHRpbmcgZG93biwgZXRjLiBIYWxzdGVhZCByZXNvbHZl
ZCB0aGUgcHJvYmxlbXMgaW4gdGhlIGVuZCBidXQgaXQgd2FzbuKAmXQgdHJpdmlhbC4NCg0KVGhl
IHdvcmtlciBydW5uaW5nIDE4MDQgaXMgdGhlIG9sZGVzdCBhbmQgYnkgZmFyIHRoZSBzbG93ZXN0
LCBidXQgaXTigJlzIGFsc28gYmVlbiAtIHNvIGZhciAtIHRoZSBtb3N0IHJlbGlhYmxlLg0KDQpS
b3NzDQoNCg==

