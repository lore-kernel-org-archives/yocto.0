Received: from EUR02-AM5-obe.outbound.protection.outlook.com (EUR02-AM5-obe.outbound.protection.outlook.com [40.92.67.85])
 by mx.groups.io with SMTP id smtpd.web11.77.1579725483690176500
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2020 12:38:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=M38Rj0JB;
 spf=pass (domain: outlook.com, ip: 40.92.67.85, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g5+PPLzVOfOGErfB8q5wzJkR+pgYBdMhlYeyNiboQEl3+kqs0eSYUBan6LaBpfVde6cItdBVxDq39IFS99StiwHAo7OfRe36zg1xq0cltUigavMw4GcDjzykB3rC1PdN335KBwNZRjIpLDdy3O/fnloMSzkxG+eS6m9F6reI4o+pQxzsD6uXqxDRnOc1+ea86rHukreIhPFvT6KhIU6ys1vH4II8jfmbDDZFnA3KfYkPlTK0sXD3ehtjtqxRISPxt5LIKVs+PTr3AhggA3stum0+XmPCNCPdKNwngsmlVyZrB+SlrayL2qHIgjO4uErMhVSwVIBjMR36xzT4FPz9lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lhKFT0rrn0mcLMj0T2WxX1fqOE59DqdOi2ktY9ropiA=;
 b=XWXIXUkluyVy0tNf7R0bPaWk+t+JM4iKI2Ndv2DwcfhIteUnyWZU/EaMnlH9E41BdzTuvt3bbVwDFKFrEnfcOSbOaVRQV21f7CCTsSb/+xIPLLc1iBC6LE/oc7kzqOTCkq823uNoUGEeT/4F86GNmBZ1vwSkydsM2Nbxfb2gFKEt9Ri/N+V4lDisVJ0nP3dm1i8shLsJqvLAah7hqzOpPmLrzZj2C8Aqdu9j90FbxZjIrusoC9yflqW8V7M21mS4atVOVn9ySUpvpMEHIhetTwRLkutyP0gJuzFWVsqRfgm7a0pJbNp78Ki3CLY35+tSWppUvjz/AW2eHQ+qLhBT/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lhKFT0rrn0mcLMj0T2WxX1fqOE59DqdOi2ktY9ropiA=;
 b=M38Rj0JBmJkvzMmF+hOpNIjHDafPAfTdZ1vfinZDQJMdpGWOsP1mWFqsyEPUQWPFAPhZ2zS7m/NwCSXq10CYU9I33JvF9VMa+y+/bb7x01/G70H4eB4ETKbC18lQEbdXX3QbHwhDA0OykSI0RzNRIH0Ed8ixORLsp4hWCP53lRwYEL8nUvadbxct8pMQ08+4QzXsGSZbg7GPWKHQyuYdsaCfvVFuAxID9I3KH2BcJF/15Q1mE/45PYTv7i3LCptzSUqcyOnaFo4D+xs23HMTKcjVhQDljbSPzgguYz2mqAO8oo9GN9pGIE1Js/Z+sA4peFealkjV5sT4uw2J46JyXQ==
Received: from AM5EUR02FT050.eop-EUR02.prod.protection.outlook.com
 (10.152.8.60) by AM5EUR02HT225.eop-EUR02.prod.protection.outlook.com
 (10.152.9.77) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.18; Wed, 22 Jan
 2020 20:38:01 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com (10.152.8.59) by
 AM5EUR02FT050.mail.protection.outlook.com (10.152.9.252) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.18 via Frontend Transport; Wed, 22 Jan 2020 20:38:01 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::89e1:157a:73d3:f5f1]) by AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::89e1:157a:73d3:f5f1%3]) with mapi id 15.20.2644.027; Wed, 22 Jan 2020
 20:38:01 +0000
Received: from [192.168.188.20] (79.215.4.243) by AM5P189CA0003.EURP189.PROD.OUTLOOK.COM (2603:10a6:206:15::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.20 via Frontend Transport; Wed, 22 Jan 2020 20:38:01 +0000
From: "Konrad Weihmann" <kweihmann@outlook.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Prevent tools from host to be used
Thread-Topic: Prevent tools from host to be used
Thread-Index: AQHV0WPX9LljyjchP0it7i8Gz+K3kQ==
Date: Wed, 22 Jan 2020 20:38:01 +0000
Message-ID: 
 <AM4PR05MB3380ED2DBB7FB292BA411E8FA80C0@AM4PR05MB3380.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5P189CA0003.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:206:15::16) To AM4PR05MB3380.eurprd05.prod.outlook.com
 (2603:10a6:205:e::10)
x-incomingtopheadermarker: 
 OriginalChecksum:9070921387D5D7A2063A023E2EF2DFAD1F5EA28F2A37E9A907AD9AD2C2802E7E;UpperCasedChecksum:A4B9D5242495FBA693EB150D3413553C8A8722D67ED6932AD6FB393BAA8F59ED;SizeAsReceived:7339;Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [O+CwvXx1Kb2aKMPi9g+N+27MHCLpOd6p]
x-microsoft-original-message-id: 
 <698e8d1e-10c9-7411-c0f4-a9bc2f5229f4@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: d7c3a6a8-4037-48fe-0a00-08d79f7af959
x-ms-traffictypediagnostic: AM5EUR02HT225:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 MmXMIRwKyVHac5e0pBfFIHX2VkkHuQMSo28SOWgdored1lbTxLpH/Wvz+jRgfgl1EGzw5s5BKRozCHppm/0Zrzet1TbblrnKt8hX85zC1btNo7j9RTJBV2qSc92ErGLtjqj086IOogvz9IjraQQx+p+ab1WJzjglVDjunm2p37rkc75auAFFAd/UE44ejof3
x-ms-exchange-antispam-messagedata: 
 W3qCF+VNRi77j14uNRo559bXLPQYw0Mh/5KrDtk6mCyATZb189tsJVqBAqG6GmAyK7y7UnY/bZJ9h1XBvQkPwzhB9wpseIr1gq3fFs+B6bCpQst/XYZCGH5+1NB37RSX6FEf9K8tMhdoCExZkFAvjw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: d7c3a6a8-4037-48fe-0a00-08d79f7af959
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2020 20:38:01.7081
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT225
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <E59E171F4ED9EF40A5A6B5472D31DD52@eurprd05.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgYWxsLA0KDQppdCBtYXliZSBhIGFscmVhZHkgc29sdmVkLCB2ZXJ5IHRyaXZpYWwgdGhpbmcg
dG8gZG8sIGJ1dCBpcyB0aGVyZSBhbnkgDQp3YXkgaW4gYml0YmFrZSB0byBwcmV2ZW50IHRoYXQg
YSB0b29sIGZyb20gdGhlIGJ1aWxkIGhvc3QgaXMgZXhlY3V0ZWQgDQppbnN0ZWFkIG9mIHRoZSBz
YW1lIHRvb2wgKG1heWJlKSBhdmFpbGFibGUgdmlhIHRoZSBzeXNyb290LW5hdGl2ZT8NCg0KSW4g
c2hlbGwgSSB3b3VsZCB0eXBpY2FsbHkgZG8gKGUuZy4pIHNvbWV0aGluZyBsaWtlIHRoaXMNCg0K
cHl0aG9uKCkgeyBlY2hvICJDdXN0b20gcHl0aG9uIHVzZWQiOyAvcGF0aC90by9teS9jdXN0b20v
cHl0aG9uICRAIH0NCg0KcHl0aG9uIC1jIC4uLg0KDQpJbiBiaXRiYWtlIHRoaXMgaXMgc29tZWhv
dyBoYXJkIHRvIGNhdGNoLCBhcyB0b29scyBhcmUgdXN1YWxseSBwaWNrZWQgDQpmcm9tIFBBVEgs
IHdoaWNoIGlzIGV4dGVuZGVkIHdoaWxlIGV4ZWN1dGluZyBhIHBhcnNlZCByZWNpcGUgYW5kIA0K
dGhlcmVmb3JlIGludm9sdmVzIHRoZSBob3N0IHdheSB0byBtdWNoLg0KDQpSZWFsbHkgdXNlZnVs
IHdvdWxkIGJlIGlmIG9uZSBjb3VsZCBkZWZpbmUgc3VjaCBhIHRoaW5nIHdpdGhpbiBhIHJlY2lw
ZSBsaWtlDQoNCkhJREVUT09MX3B5dGhvbiA9ICJuYXRpdmVweXRob24iDQoNCndoaWNoIHRoZW4g
d2lsbCBiZSB0cmFuc2xhdGVkIGludG8NCg0KcHl0aG9uKCkgeyBuYXRpdmVweXRob24gJEAgfQ0K
DQpvciBzb21ldGhpbmcgc2ltaWxhciwgaW4gdGhlIHJlc3VsdGluZyBydW4gc2NyaXB0cywgc28g
aXQgZG9lc24ndCBtYXR0ZXIgDQppZiBhbnkgc2NyaXB0IHNvdXJjZWQgYWZ0ZXJ3YXJkcyB1c2lu
ZyBzb21lIGZpeGVkIHNoZWJhbmcvYXNzdW1wdGlvbi4NCg0KVGhpcyB3b3VsZCBjbGVhcmx5IG1p
bmltaXplIHRoZSBlZmZvcnQgb2YgbWFraW5nIHNvdXJjZXMgd29yayB3aXRoaW4gDQp5b2N0bywg
c28gb25lIGRvZXNuJ3QgaGF2ZSB0byByZWx5IG9uIG11bHRpcGxlIGNvbnRhaW5lcnMgYW5kIENJ
IHRvIA0KY2F0Y2ggYWxsIHRob3NlIGhvc3QtPmJ1aWxkLWNvbnRlcm1pbmF0aW9ucy4NCg0KT25l
IGNvdWxkIHN1cmVseSBpbmplY3QgaXQgaW50byB0aGUgUEFUSC12YXIsIGJ1dCB3aGF0IEkgd2Fu
dCBpcyB0byANCiJyZWRpcmVjdCIgY2VydGFpbiBjYWxscyB0byBhbnkgcmVhc29uYWJsZSBiaW5h
cnkgSSBjYW4gdGhpbmsgb2ZmLCANCmluc3RlYWQgb2YgcmVseWluZyBvbiB0aGUgUEFUSCBvcmRl
ci4NCkkgaGFkIHRoaXMgbXVsdGlwbGUgdGltZXMgd2l0aCBweXRob24gc2NyaXB0cyBiZWluZyAi
c2hlYmFuZ2VkIiBvbnRvIGEgDQpjZXJ0YWluIHB5dGhvbiB2ZXJzaW9uLCBhbHRob3VnaCBub3Qg
cmVhbGx5IG5lZWRlZCwgd2hpY2ggSSBjdXJyZW50bHkgDQpjYW4gb25seSBzb2x2ZSBieSBtb2Rp
ZnlpbmcgdGhlIHNvdXJjZXMuDQoNCkFueSB0aG91Z2h0cywgc3VnZ2VzdGlvbnM/DQoNClJlZ2Fy
ZHMNCg0KS29ucmFkDQoNCg==
