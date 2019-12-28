Received: from EUR04-HE1-obe.outbound.protection.outlook.com (EUR04-HE1-obe.outbound.protection.outlook.com [40.92.73.97])
 by mx.groups.io with SMTP id smtpd.web10.7493.1577525976723193860
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Dec 2019 01:39:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@outlook.com header.s=selector1 header.b=JiPIx1nz;
 spf=pass (domain: outlook.com, ip: 40.92.73.97, mailfrom: kweihmann@outlook.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iPML2orbJ0lTrUaBVFp2m+mZ5Lj6bN+QAjnMngL27VZ7B1PSOanN3N7yBAVpWyVTAQGSGCuDayyUNmzmPkk0XPeCO3Fp7PL+w4gZR83GY5+Aj3uHybSw9X5YLMujuNmtbCmCbe/wLona7X4wqIrhsX6sAtYXcBF+u/bonPWry31td55Q+tJ2PXMTx+nU6P5mQJJA76AmV4Je5D1d1UGvRCyqgs/msZmHnS2/GcrgARwrBBs+Rze6CIXYBCJEBgkiST5R05JJVYxc5LXS4bCWddb9wpIVQjya68Mkry1RbGSFrVvfmam31BKkSXO0I1gwxerFbstT6Jft70d3ZKOBkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVl452ZhhqaIhcdDN5ZNJ7fjpStC6c+Tq6Dhgou8MZw=;
 b=jZR2pWNA/iOoGi4i51u0QKRbMWoeNZnP81ELssEh4qokP3DG7zrKYe51wEhV7AFUmiM838ueihCwRVzOsBYj/N5Jbxbf6Ol7FAaOLFMFWh9v3keaUOV4+zHznpFJMSFeto/Ux25Kn8uzp4L8vcopI60loqTb/dCAInxComSHeLCV9k/AciLlzNTdGtKBEzkUSSfvwy3QdmEmIcejLJEeIYhPVn+/phfQll9hyEPVShmyTIyFllazTWBkyBnH6VzzdDj7vbWyCnq90vdKor4hNOg+7jJ4vkLeFrrnurF8bSV3lkRSiTDSZWZeIyA3j45aQAjwLf5Tk9kw38N4aq5glQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VVl452ZhhqaIhcdDN5ZNJ7fjpStC6c+Tq6Dhgou8MZw=;
 b=JiPIx1nz3euyZ+Shua7hQlKlag1cQ+14e9c1uuY44nbyLmgK62O/ZfV6CnY/j2mAW7d+aZj9wIJhOGMeIJaQ/PbLX5Gs0jwSYnU/Ikxx8aH6fpmcvefqOeXyyusA4Op+i8MisQDs1H8cI+PpQkUIXcWKTiPNS2GtXlL6+yVKqy5fVHlWB8z0nDzl4bWLqztTwSe41m4uahc0hF8uESM8RXoq2asjlJ02MpDKUyEvSACGYGLoC3B3hpPUEI+CHvpcEs9kSjXrhzwH5J+hJFxYhN2VtwCpJBJ8Ffdx31l1XU204tpvorXtEXQhXzIpnr/aSc6AhhPqSCPkCXbgA0SkTw==
Received: from VI1EUR04FT017.eop-eur04.prod.protection.outlook.com
 (10.152.28.51) by VI1EUR04HT208.eop-eur04.prod.protection.outlook.com
 (10.152.28.93) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11; Sat, 28 Dec
 2019 09:39:34 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com (10.152.28.56) by
 VI1EUR04FT017.mail.protection.outlook.com (10.152.28.228) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2581.11 via Frontend Transport; Sat, 28 Dec 2019 09:39:34 +0000
Received: from AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::e923:8aad:dca0:fc9d]) by AM4PR05MB3380.eurprd05.prod.outlook.com
 ([fe80::e923:8aad:dca0:fc9d%7]) with mapi id 15.20.2581.007; Sat, 28 Dec 2019
 09:39:34 +0000
Received: from [192.168.188.20] (87.141.89.191) by BEXP281CA0010.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::20) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend Transport; Sat, 28 Dec 2019 09:39:33 +0000
From: "Konrad Weihmann" <kweihmann@outlook.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [thud] fetcher issue when git ends on diff
Thread-Topic: [thud] fetcher issue when git ends on diff
Thread-Index: AQHVvWK2nvCBhNv2aE6DFPj10AEoWQ==
Date: Sat, 28 Dec 2019 09:39:34 +0000
Message-ID: 
 <AM4PR05MB338085724F1259066C8D4759A8250@AM4PR05MB3380.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BEXP281CA0010.DEUP281.PROD.OUTLOOK.COM (2603:10a6:b10::20)
 To AM4PR05MB3380.eurprd05.prod.outlook.com (2603:10a6:205:e::10)
x-incomingtopheadermarker: 
 OriginalChecksum:8F9329D70B29B5C1E6078A310E2107B71DD1BCC1781491D6AE683CC5FE3317FB;UpperCasedChecksum:B8F6F06880CEFF84EBE1783DCB2F9FF2BEF03CEEF97AACE3C5510BC1C0E3F4D3;SizeAsReceived:7336;Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [cjGKljCBKziwEiXWNmb7h8UrHIn6yDY3]
x-microsoft-original-message-id: 
 <0ac660c7-7632-ae24-ca41-d78212fb749b@outlook.com>
x-ms-publictraffictype: Email
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 83324639-3a5f-44ea-6c24-08d78b79d88c
x-ms-traffictypediagnostic: VI1EUR04HT208:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 bDQj78131uc7sIDGOa0cyArxIY6725vMESpQ/Lq5Y5aTt2kBTbzBYHVTEeQTUzD3JMvtqkAZBAzA0GLlqO+i6pqNcg7q76xW/PCen/0JazdCPjbZbO0t+OhSISrLDG0uKZ971zI2OHOf4PIVwN8XFozcI5vlq4H7BRA0NXjE1Y2aDktB1hZi5Njlf1uLbZEe
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 83324639-3a5f-44ea-6c24-08d78b79d88c
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2019 09:39:34.0867
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR04HT208
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <DDBB8549376DA84EBA3138D560F244F3@eurprd05.prod.outlook.com>
Content-Transfer-Encoding: base64

SGkgQWxsLA0KDQpJJ20gZXhwZXJpZW5jaW5nIGEgc3RyYW5nZSBpc3N1ZSB3aGVuIHVzaW5nIHRo
dWQgYnJhbmNoIHdpdGggdGhlIA0KZm9sbG93aW5nIHJlY2lwZSBzbmlwcGV0DQoNCiA+IFNSQ19V
UkkgPSAiZ2l0Oi8vZ2l0aHViLmNvbS9wa2cvZGlmZjtwcm90b2NvbD1odHRwcyINCg0Kb24gdGh1
ZCBJIGdldCB0aGUgZm9sbG93aW5nIGVycm9yDQoNCiA+IDIwMTktMTItMjdUMTk6MzE6MjEuMzE2
MDQ0OVogTk9URTogcmVjaXBlIA0KZ2l0aHViLmNvbS1wa2ctZGlmZi1uYXRpdmUtMjAxOTA5MzAt
cjA6IHRhc2sgZG9fcGF0Y2g6IFN0YXJ0ZWQNCiA+IDIwMTktMTItMjdUMTk6MzE6MjEuNDI1NjM0
MFogRVJST1I6IA0KZ2l0aHViLmNvbS1wa2ctZGlmZi1uYXRpdmUtMjAxOTA5MzAtcjAgZG9fcGF0
Y2g6IFtFcnJubyAyMV0gSXMgYSANCmRpcmVjdG9yeTogJy9ob21lL3J1bm5lci93b3JrL2J1aWxk
L2Rvd25sb2Fkcy9naXQyL2dpdGh1Yi5jb20ucGtnLmRpZmYnDQogPiAyMDE5LTEyLTI3VDE5OjMx
OjIxLjQyNzYxMzNaIEVSUk9SOiANCmdpdGh1Yi5jb20tcGtnLWRpZmYtbmF0aXZlLTIwMTkwOTMw
LXIwIGRvX3BhdGNoOiBGdW5jdGlvbiBmYWlsZWQ6IA0KcGF0Y2hfZG9fcGF0Y2gNCiA+IDIwMTkt
MTItMjdUMTk6MzE6MjEuNDI4MzE1OFogRVJST1I6IExvZ2ZpbGUgb2YgZmFpbHVyZSBzdG9yZWQg
aW46IA0KL2hvbWUvcnVubmVyL3dvcmsvYnVpbGQvdG1wL3dvcmsveDg2XzY0LWxpbnV4L2dpdGh1
Yi5jb20tcGtnLWRpZmYtbmF0aXZlLzIwMTkwOTMwLXIwL3RlbXAvbG9nLmRvX3BhdGNoLjExOTU3
MQ0KID4gMjAxOS0xMi0yN1QxOTozMToyMS40MjgzNTE2WiBOT1RFOiByZWNpcGUgDQpnaXRodWIu
Y29tLXBrZy1kaWZmLW5hdGl2ZS0yMDE5MDkzMC1yMDogdGFzayBkb19wYXRjaDogRmFpbGVkDQoN
Ck9uIGFsbCByZWxlYXNlIGJyYW5jaGVzIHdoaWNoIGNhbWUgbGF0ZXIgKHdhcnJpb3IsIHpldXMs
IG1hc3RlcikgdGhpcyANCndvbid0IGhhcHBlbi4NCg0KVG8gbXkgZXllIGl0IHNlZW1zIGxpa2Ug
dGhlIGlzc3VlIGlzIHRoYXQgdGhlIGZvbGRlciAoZW5kaW5nIG9uIC5kaWZmKSANCmlzIGludGVy
cHJldGVkIGFzIGEgcGF0Y2ggZmlsZSwgd2hpY2ggdGhlbiBsZWFkcyB0byB0aGlzIHN0YWNrIHRy
YWNlLg0KDQpTbyBteSBxdWVzdGlvbiBpcywgZG9lcyBhbnlvbmUgcmVtZW1iZXIgd2hhdCB3YXMg
Y2hhbmdlZCAoYW5kIHdoZXJlKSANCmJldHdlZW4gdGh1ZD53YXJyaW9yIHJlZ2FyZGluZyB0aGUg
cGF0Y2gvZGlmZi1maWxlIGhhbmRsaW5nPw0KQXMgYW4gYWx0ZXJuYXRpdmUsIGRvZXMgYW55b25l
IGhhdmUgYSBjbHVlLCBob3cgSSBjb3VsZCBhbHRlciB0aGUgDQpmaWxlL2RpciBuYW1lIG9mIHRo
ZSBnaXQgd2hpbGUgZmV0Y2hpbmcgKGRpZG4ndCBmaW5kIGFueXRoaW5nIG9idmlvdXMsIA0Kd2hp
bGUgbG9va2luZyB0aHJvdWdoIHRoZSBzb3VyY2VzKT8NCg0KUmVnYXJkcw0KDQpLb25yYWQNCg0K
