Received: from EUR03-AM5-obe.outbound.protection.outlook.com (EUR03-AM5-obe.outbound.protection.outlook.com [40.92.70.17])
 by mx.groups.io with SMTP id smtpd.web12.15108.1579626580871866083
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2020 09:09:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=nak827B9;
 spf=pass (domain: outlook.com, ip: 40.92.70.17, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LDbIZcddV70WOourrGEuDs9F257vnV3b4z/ZFYXt+XP4XSLLwbxI3ltgepKffF2dTJSF3KXl2UgCKhPXHWu1jX74mjleRvpAyqn904ZgG1k0bofKGAO5oLr67bpJ9UoYyPDBxoKiMutCawi+s3vKGYGWysjTqUSl6AXUePI1i+nAE78CZ/WkcktF52b+ODFYB2PROdrXvCXMjmUViuDIvGhrffTKe0Yj6NlwbNfzLcNyD+aJXqVFo2AV5B296X8b5be1x6TY8pD30RL/DnYBPnMMO0rZESByDjgBmp0rcU1wAPl1Fem2hb8x7j1/MIaq+gjdqtzL9VW73dKBh0OATA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5XgfKzIvygoAnjt7/FzidxH/+kOsiCEcjV4nAqfHlZg=;
 b=BuTEIA9VGezUlgbde1TJu9ryIIHetZaTnH168nrp+s5K1KeFJH/e2wSMS36CEPZyfHgXzoU/wy2tNtcK7jmYzik6z7ZS4uljJuzH+nxVv7UMVI/vzUPJR8ZXzvTOqQJq6LCcP8rh7HMOaONQYi3ZPFEmS3MinE6VcvCiRSamYx2cgja6/6vWE+7EzTJP9K80eLGCiOdVt+40V25hS9ydqUfvwACTKDfWRVgqyt4o875oQv+a4xs0sDHAqfh6ZCK93L5+2enamLQ3C94OmlR1PTJmZBZVYZtDSgtXwGdFlhwb0ScSXR9HhfdBO1culKDrGXfNAHuLWAxGQN1Nz7kEQQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5XgfKzIvygoAnjt7/FzidxH/+kOsiCEcjV4nAqfHlZg=;
 b=nak827B9FzHjh7eLOOe3uPjn2VNpsOjvCkyGi3tQQ+sOsdCc2PGMqC6VrCZ/UXwQj370Y2vhJYVAFR0GzL21UMQv1SjY8xBootJ1/0ZyTrHSRpW9i9TpFMBdC0rBspIDcfsL23bWv3BMZ+8C7kBAQin3viMIQxxfiF/uE2gBfnaAPUq9SUYY+IcexyHOj1mf7e2tecjVUu1Y93ASfXk18tH+p1IAMV2pV4AnuoXzqr3Tv5r1xC3gsQ7daq4ZeJrCAGk/h1YsplC966xCTe58D9YWXQQrUHeIglBetDYBSIDmJLz0qMgzcBwYXzY3IOgIIe3UOF5am+fLwhZ3AQbMHg==
Received: from AM5EUR03FT064.eop-EUR03.prod.protection.outlook.com
 (10.152.16.55) by AM5EUR03HT212.eop-EUR03.prod.protection.outlook.com
 (10.152.17.135) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.23; Tue, 21 Jan
 2020 17:09:38 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com (10.152.16.51) by
 AM5EUR03FT064.mail.protection.outlook.com (10.152.17.53) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.23 via Frontend Transport; Tue, 21 Jan 2020 17:09:37 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::89e1:157a:73d3:f5f1]) by AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::89e1:157a:73d3:f5f1%3]) with mapi id 15.20.2644.024; Tue, 21 Jan 2020
 17:09:37 +0000
Received: from [192.168.188.20] (87.141.94.16) by AM6P193CA0090.EURP193.PROD.OUTLOOK.COM (2603:10a6:209:88::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend Transport; Tue, 21 Jan 2020 17:09:37 +0000
From: "Konrad Weihmann" <kweihmann@outlook.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] [RFC PATCH] python: remove Python 2 and all supporting classes
Thread-Topic: [yocto] [RFC PATCH] python: remove Python 2 and all supporting
 classes
Thread-Index: 
 AQHVzUDNMepRc/0m+EWpXucxKj1UM6fvLyGAgAAb/oCAAAHCAIAACaKAgAQWz4CAAfNJAA==
Date: Tue, 21 Jan 2020 17:09:37 +0000
Message-ID: 
 <AM4PR05MB33802E8CAA38C64493DC3584A80D0@AM4PR05MB3380.eurprd05.prod.outlook.com>
References: <20200117141632.3809-1-ross.burton@intel.com>
 <fe0eae43-f005-6062-cd0b-18788aeb0e88@gmail.com>
 <CALbNGRTvOk6YQ_vD1VmNA+RD-1dNc2J+mdKxpq971V=D2t7-Hg@mail.gmail.com>
 <20200117202126.GY4735@denix.org>
 <CALbNGRTv8S3V9TLE+uwX4Dei=5m1LBKowzGF5Nr1L8iPHBSQsg@mail.gmail.com>
 <3d6f5ef4-3c70-a172-7f14-bfb63bbf3d86@intel.com>
In-Reply-To: <3d6f5ef4-3c70-a172-7f14-bfb63bbf3d86@intel.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM6P193CA0090.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:209:88::31) To AM4PR05MB3380.eurprd05.prod.outlook.com
 (2603:10a6:205:e::10)
x-incomingtopheadermarker: 
 OriginalChecksum:5E5857392AAEEEDC3F719D35533B6219B784EE7CA0FBE2968713A95FD34B311F;UpperCasedChecksum:0F3850370E4D7BEE1B3717776244AA7852EC21C713931E90178798A4C57A6B52;SizeAsReceived:7863;Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [EyqwGUCfV5PcJdnWN6pyH4pnWokfq+iC]
x-microsoft-original-message-id: 
 <2ffa48aa-bb50-9f58-4d3a-c8fab1488325@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ab642e3d-2f60-4249-89b7-08d79e94b1df
x-ms-traffictypediagnostic: AM5EUR03HT212:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 C4QGCYiZrTTD+0HDMe4j4T5oPYnDWgpHfxiSLfpx525L4dzWepjopsArcWfRgv3rdHhUu3o8LEZrpmDMV5QK4uMBvn0yl39u2cybYmdmgjzIoTVvboy7IdcuCsZdxoR9EwYWmS57eSMddFPbFonnT20qdLSQ6+fJzhoeyCzN4cJoiWapXep3Iw1n+vijiRZK
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ab642e3d-2f60-4249-89b7-08d79e94b1df
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2020 17:09:37.7357
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT212
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <A65C95F0918FF44AB607575E5A91A196@eurprd05.prod.outlook.com>
Content-Transfer-Encoding: base64

DQpPbiAyMC4wMS4yMCAxMjoyMiwgUm9zcyBCdXJ0b24gd3JvdGU6DQo+IG5wbSBuZWVkaW5nIFB5
MiBpcyBqdXN0IGRpc2FwcG9pbnRpbmcuwqAgU3VyZWx5IHNvbWVvbmUgaGFzIHBvcnRlZCBpdCAN
Cj4gdG8gcHkzIGJ5IG5vdz8NCj4NCg0KQW55IG5ld3Mgb24gdGhhdD8gRnJvbSB3aGF0IEkgc2Vl
IG5vZGVqcyBpcyBmdWxseSBzdXBwb3J0aW5nIHB5dGhvbjMgb24gDQpidWlsZCBob3N0LCBvbmx5
IGluIDEzLnggYnJhbmNoIChpbiAxMS54IGFuZCAxMi54IGl0J3MgbWFya2VkIA0KJ2V4cGVyaW1l
bnRhbCcsIHdoYXRldmVyIHRoYXQgbWVhbnMpLg0KSGF2ZSBoZWFyZCBmcm9tIGEgZmV3IHBlb3Bs
ZSB0aGF0IGNyb3NzIGNvbXBpbGluZyBuZXdlciB2ZXJzaW9uIGlzIGEgDQp0cmlja3kgdGhpbmcg
dG8gZG8uDQoNClNvIHdoYXQncyB0aGUgcGxhbiwgc3RheSBvbiAxMC54IGJyYW5jaCAod2hpY2gg
c29vbiB3aWxsIGJlIG91dGRhdGVkIA0KYW55d2F5KSBvciBnbyB0byAxMy54Pw0KDQpSZWdhcmRz
DQoNCktvbnJhZA0KDQo=
