Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00B23C4708D
	for <webhook@archiver.kernel.org>; Wed,  7 Dec 2022 21:20:34 +0000 (UTC)
Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.107.7.42])
 by mx.groups.io with SMTP id smtpd.web11.29002.1670448027839636427
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Dec 2022 13:20:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@armh.onmicrosoft.com header.s=selector2-armh-onmicrosoft-com header.b=L+WeU+mm;
 spf=pass (domain: arm.com, ip: 40.107.7.42, mailfrom: ross.burton@arm.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ttNsDpk95z3UXJuYMFDuAtZtIio3vNCVVSsUX3KiSi4=;
 b=L+WeU+mmIkSoR0YBT35gcVELt5BacwlcsiQfnCijhKlWwGIPI5dKyXd3wQs8mah/yPawLMn7RKKda88U9F18e+FnunzOCzt88aE4Pw6FBUHlABP7KYw23MvBIQQmJh4Wvo32Fa0tESqLK4rUwdqRU6eykE5SskXo0zUDG9NvabA=
Received: from AM6P193CA0077.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:88::18)
 by AS8PR08MB9813.eurprd08.prod.outlook.com (2603:10a6:20b:616::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.11; Wed, 7 Dec
 2022 21:20:23 +0000
Received: from AM7EUR03FT038.eop-EUR03.prod.protection.outlook.com
 (2603:10a6:209:88:cafe::17) by AM6P193CA0077.outlook.office365.com
 (2603:10a6:209:88::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14 via Frontend
 Transport; Wed, 7 Dec 2022 21:20:23 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 63.35.35.123)
 smtp.mailfrom=arm.com; dkim=pass (signature was verified)
 header.d=armh.onmicrosoft.com;dmarc=pass action=none header.from=arm.com;
Received-SPF: Pass (protection.outlook.com: domain of arm.com designates
 63.35.35.123 as permitted sender) receiver=protection.outlook.com;
 client-ip=63.35.35.123; helo=64aa7808-outbound-1.mta.getcheckrecipient.com;
 pr=C
Received: from 64aa7808-outbound-1.mta.getcheckrecipient.com (63.35.35.123) by
 AM7EUR03FT038.mail.protection.outlook.com (100.127.140.120) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5901.14 via Frontend Transport; Wed, 7 Dec 2022 21:20:23 +0000
Received: ("Tessian outbound 73ab5f36653e:v130"); Wed, 07 Dec 2022 21:20:22 +0000
X-CheckRecipientChecked: true
X-CR-MTA-CID: c481081342948af9
X-CR-MTA-TID: 64aa7808
Received: from f3031670ef2c.1
	by 64aa7808-outbound-1.mta.getcheckrecipient.com id 4D47926B-2FE3-4993-84CA-75C493E41982.1;
	Wed, 07 Dec 2022 21:20:16 +0000
Received: from EUR04-VI1-obe.outbound.protection.outlook.com
    by 64aa7808-outbound-1.mta.getcheckrecipient.com with ESMTPS id f3031670ef2c.1
    (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384);
    Wed, 07 Dec 2022 21:20:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gw0S0n5ChZk32kPjfuxOqJQ42BSOlP+7YQaljYqN38M3kSug+if9EQt+A2qh4mlHSALoLRMtlCPFRpm2DdsweNZvV5ep8xVz50nIBYorjH3pmngRpAce732uOU9iwKHPK5az/FeSc1hrIB/1LFc7/MbvvO/F395YU8RqT25ApE4eAok88n7DsuZ6LBaexzLbNYNCVziHHoxkmFqBkCio6yGsd26KoKV5eNmRFUMLJ4B1OyDyAvF6Mx7C+yk2ZdbaBWRpjZgaIvQMlu1SQeTwMkFlcyY+xj2FI9cD8kl7of+QjF6zpFof2iIi/wJkfFAoQMVisH+ugYJDoSEIKsq77A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ttNsDpk95z3UXJuYMFDuAtZtIio3vNCVVSsUX3KiSi4=;
 b=BVepNuHQaXcxaPpIFGnY2bH1w2kTbXbaYGHhdwwCtKFdcxjMcpyX1j5wTIeqmEN9mRwhBsHuokh+GPLq4jMAUyBNwuSbAfBnQBaRKwXqemKI5IRpSWuw4sEk315O+6rouYB+v2H6A/KJDa+LHk6vDkJM+b+DDbsgjZ6DG+Kr/5P0SN7a4gqRjXnv7gtEALzcqfoxie2UnhvtplZ8cJqG/Va1ywSta+emkO3W9qNTGA+6bz9weLwpnF7/e+6KR/6PYXY6MPzDSSKfgSluVVuxSsKybOHUxFtzQil9sqtVA8KoXtbiTL8vrgo7eYPlpgS67j7zN/xGkKCY+s0r/deFlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=arm.com; dmarc=pass action=none header.from=arm.com; dkim=pass
 header.d=arm.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=armh.onmicrosoft.com;
 s=selector2-armh-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ttNsDpk95z3UXJuYMFDuAtZtIio3vNCVVSsUX3KiSi4=;
 b=L+WeU+mmIkSoR0YBT35gcVELt5BacwlcsiQfnCijhKlWwGIPI5dKyXd3wQs8mah/yPawLMn7RKKda88U9F18e+FnunzOCzt88aE4Pw6FBUHlABP7KYw23MvBIQQmJh4Wvo32Fa0tESqLK4rUwdqRU6eykE5SskXo0zUDG9NvabA=
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com (2603:10a6:102:2a3::12)
 by AM9PR08MB6225.eurprd08.prod.outlook.com (2603:10a6:20b:2de::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Wed, 7 Dec
 2022 21:20:14 +0000
Received: from PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119]) by PA4PR08MB7411.eurprd08.prod.outlook.com
 ([fe80::1ecf:7fb9:8c0:8119%8]) with mapi id 15.20.5880.013; Wed, 7 Dec 2022
 21:20:14 +0000
From: Ross Burton <Ross.Burton@arm.com>
To: "pintu.ping@gmail.com" <pintu.ping@gmail.com>
CC: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [linux-yocto] Building Linux perf tool using bitbake
Thread-Topic: [yocto] [linux-yocto] Building Linux perf tool using bitbake
Thread-Index: AQHZCmOBld7SOJeDDEqxC3Eaew9TKa5i7pCA
Date: Wed, 7 Dec 2022 21:20:13 +0000
Message-ID: <351F5CA9-DE28-40CF-87E9-69840BC7C19D@arm.com>
References: 
 <CAOuPNLh1+LhxH8yuQprUntwjibAP_iuwF7tXnHjfhAZhLCCG-A@mail.gmail.com>
 <CAOuPNLgEs7Obni8kOqgznv_mLW8JQ4cF0CUS8jaV6AXEhw6aOg@mail.gmail.com>
 <CANPvuR=RT3YBSBmRHNtoeCMST2DJ3Wqq7fzh6jj2C1oxUxR0EA@mail.gmail.com>
 <CAOuPNLjEUivqk27DhrHHmjnHE6MU79K57ahbFjVGR2KUyuCFWQ@mail.gmail.com>
In-Reply-To: 
 <CAOuPNLjEUivqk27DhrHHmjnHE6MU79K57ahbFjVGR2KUyuCFWQ@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: Apple Mail (2.3731.200.110.1.12)
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
x-ms-traffictypediagnostic: 
	PA4PR08MB7411:EE_|AM9PR08MB6225:EE_|AM7EUR03FT038:EE_|AS8PR08MB9813:EE_
X-MS-Office365-Filtering-Correlation-Id: a6bc91d8-923f-4255-9c45-08dad898da13
x-checkrecipientrouted: true
nodisclaimer: true
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 5EwUvPmXO9CPCgctTvAl5iXgikZazEFiXFz4V4886FL+kxDj+AHnDJpHjcqpDO6U5StzGWND7aU9OIx05vRkVdHRgbBwPjq6zGHQU5dZiavM5919xZpEHa59OdYgfkYXknJCIK+e2wnhdPeOZTaadtjPbwLW1+6/9R+/iFa/RHbBaKhV8AIdHqlRYslk4EX7YJfZYrCxdF/FxoGm0wIMv3xFTUdViqqgt5ELD9dg54Rc1pAGxn4/us2+JUZ6NrPdx8QHqij/MAd0sfIiRFdszPepjQtaiDR0PuP91W9AuySm8S47yXH74yJDnmcbhYvPiZh9bnkL5B7qvsamUf8Xz0z7VecoRJDDWFha1dbVSV8pYq4sgmG7z8q7Ow4LYoPFNNf0FmFbjLuqQJwxvfZcyKHdamFuv7cBllWfAYXQrIxlZ56pc5dM5S6dxYh4yiW+2uoDIQrgj3iHLvcUuF/J3iSAW49b+HfP+X7a62maZFFbtaDHgd7gTL9LjqdxwJhMUtOiY4VEPlEdKaU4Uy58F/s9GUL+1NEOHHD+jHQab9jjuxc2/i7+uoWuGQKCoLz4ymA4z7Yn+0TQ3vjLfHolgzQa+OT9qhql7lY1PSKo/rBb4QtaVknkdznahoZD1O1HpfbVm0WXRrNjj5AGvXvm67JWIU1ukSdi4k2ZcLaLxbvQiH56z8AO25IvVhe7cC8E4g//icx4DaTCmO/JkEGNjqTlrp2tB68oALaZtExuRZc=
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PA4PR08MB7411.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(366004)(39860400002)(396003)(346002)(136003)(451199015)(36756003)(8936002)(83380400001)(6916009)(316002)(122000001)(41300700001)(8676002)(86362001)(4326008)(91956017)(66476007)(66446008)(64756008)(76116006)(66946007)(66556008)(5660300002)(38100700002)(478600001)(38070700005)(26005)(6512007)(6506007)(71200400001)(6486002)(2616005)(186003)(53546011)(33656002)(2906002)(45980500001);DIR:OUT;SFP:1101;
Content-Type: text/plain; charset="utf-8"
Content-ID: <C8B5EC6D70653345B63F82644A4656EC@eurprd08.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB6225
Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=arm.com;
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 AM7EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	b124d7cd-e228-4b61-0391-08dad898d492
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	LdGnuBkzito7TzvFaLywmutYKEa+QQL0lbQxPPELZg3Rh0GtyyNhOsoQh5xuC0dkJCmv4rNlaBykmsPW/bOsKc5Ns+XTihnoCvE7KNWsl3b1YTngYW641jIoER2QNy/v4GC5sFQplRw2Go52YySpmhTP1yHq9y38CX0jBBussCCBK75pljZisp4Jdg+bZhFXFnC4TnKWDZVGIt1lzBB85uuLJ3OjmSHfHefPr5iLDkSL5iChDZ1CLmPsPgzLTsoZinwenxRspc4k0xPklkkC7qPu0j7S8w9cGBYoDsF7RaZiEq0oKwjfAVXzf3aQO2VbKsITjTmT2qAD/08DQeWoGl8fuiBy6Yk8t38Ul+0gAnb6rbHLUV8jRV8Jya2IDXvqttT6PFEeftUWC0RvZna1pnC2G+NxKIYd7fzmIN0DZjq4OJ48eeTTbttZHasycuS/Nb0NkF9Y7P1wwsRXQ+WJeCPPhuYN0AQHk64XFnCVLkL7RFiLYIRLmCE8GwKP+HFaeqJSfYyFiyfi9hEI7OstKe/3473uANP3z+wagJN6tLFzXW5G95G8qfcf1rdFs/75CD95Kz939nTLbd2vhw0yIl5Um6UR9J+dJ0lHqByIk3sNuFr5raWftpz7SXQ6pr2es8WpLKRZecbku77BSfF5SNUoDR3z6QFjPPD0D6c/qtbGqXsU6EEejBHEY6Fxzpuc5d94h2PQrZzaupfT4oxmuQ==
X-Forefront-Antispam-Report: 
	CIP:63.35.35.123;CTRY:IE;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:64aa7808-outbound-1.mta.getcheckrecipient.com;PTR:ec2-63-35-35-123.eu-west-1.compute.amazonaws.com;CAT:NONE;SFS:(13230022)(4636009)(136003)(396003)(39860400002)(346002)(376002)(451199015)(36840700001)(46966006)(40470700004)(6506007)(6486002)(53546011)(478600001)(26005)(47076005)(36756003)(8676002)(336012)(356005)(40460700003)(41300700001)(186003)(8936002)(5660300002)(6512007)(82740400003)(83380400001)(4326008)(2616005)(6862004)(2906002)(33656002)(316002)(36860700001)(81166007)(70586007)(82310400005)(86362001)(40480700001)(70206006);DIR:OUT;SFP:1101;
X-OriginatorOrg: arm.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 21:20:23.1068
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a6bc91d8-923f-4255-9c45-08dad898da13
X-MS-Exchange-CrossTenant-Id: f34e5979-57d9-4aaa-ad4d-b122a662184d
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f34e5979-57d9-4aaa-ad4d-b122a662184d;Ip=[63.35.35.123];Helo=[64aa7808-outbound-1.mta.getcheckrecipient.com]
X-MS-Exchange-CrossTenant-AuthSource: 
	AM7EUR03FT038.eop-EUR03.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB9813
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Dec 2022 21:20:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58750

SeKAmXZlIGRvbmUgYSBtYXNzaXZlIENDLXBydW5lLCBwbGVhc2UgZG9u4oCZdCBzcGFtIG1hbnkg
bGlzdHMuDQoNCk9uIDcgRGVjIDIwMjIsIGF0IDE3OjQzLCBQaW50dSBBZ2Fyd2FsIHZpYSBsaXN0
cy55b2N0b3Byb2plY3Qub3JnIDxwaW50dS5waW5nPWdtYWlsLmNvbUBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnPiB3cm90ZToNCj4gSSBoYXZlIGEgTGludXggZGlzdHJpYnV0aW9uIHVzaW5nIFlvY3Rv
IHRodWQgKGFuZCBZb2N0byBkdW5mZWxsIGxhdGVyIHByb2plY3QpLg0KDQpUaHVkIGhhcyBiZWVu
IGVuZC1vZi1saWZlIGZvciB0aHJlZSB5ZWFycywgc28gcGxlYXNlIG1vdmUgZXZlcnl0aGluZyB0
byBhdCBsZWFzdCBEdW5mZWxsLg0KDQo+IEJ1dCB3aGVuIEkgYnVpbGQgaXQgdXNpbmc6DQo+ICQg
Yml0YmFrZSAtdiBwZXJmDQo+IA0KPiBJIGdldCBiZWxvdyBidWlsZCBlcnJvcnM6DQo+IHt7ew0K
PiBFUlJPUjogTm90aGluZyBQUk9WSURFUyAnYmludXRpbHMnIChidXQNCj4gL2xvY2FsL21udC93
b3Jrc3BhY2UvcHJvamVjdC9wb2t5L21ldGEvcmVjaXBlcy1rZXJuZWwvcGVyZi9wZXJmLmJiDQo+
IERFUEVORFMgb24gb3Igb3RoZXJ3aXNlIHJlcXVpcmVzIGl0KQ0KPiBiaW51dGlscyB3YXMgc2tp
cHBlZDogaXQgaGFzIGFuIGluY29tcGF0aWJsZSBsaWNlbnNlOiBHUEx2Mw0KPiBFUlJPUjogUmVx
dWlyZWQgYnVpbGQgdGFyZ2V0ICdwZXJmJyBoYXMgbm8gYnVpbGRhYmxlIHByb3ZpZGVycy4NCj4g
TWlzc2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWydwZXJmJywgJ2Jp
bnV0aWxzJ10NCj4gfX19DQo+IA0KPiBOb3csIEkgYW0gbm90IHN1cmUgd2hhdCBpcyB0aGUgaXNz
dWUgaGVyZSBhbmQgaG93IHRvIHJlc29sdmUgaXQuDQoNClRoZSBlcnJvciB0ZWxscyB5b3UgZXhh
Y3RseSB3aGF0IHRoZSBwcm9ibGVtIGlzOg0KDQo+IGJpbnV0aWxzIHdhcyBza2lwcGVkOiBpdCBo
YXMgYW4gaW5jb21wYXRpYmxlIGxpY2Vuc2U6IEdQTHYzDQoNCllvdeKAmXZlIGRpc2FibGVkIHRo
ZSB1c2Ugb2YgR1BMdjMgcGFja2FnZXMgaW4geW91ciBpbWFnZXMsIGJ1dCBwZXJmIG5lZWRzIGJp
bnV0aWxzIHdoaWNoIGhhcyBHUEx2MyBjb21wb25lbnRzLg0KDQpFaXRoZXIgZG9u4oCZdCBtYXJr
IEdQTHYzIGFzIGluY29tcGF0aWJsZSwgb3IgZG9u4oCZdCB1c2UgcGVyZi4NCg0KUm9zcw==

