Received: from NAM12-DM6-obe.outbound.protection.outlook.com (NAM12-DM6-obe.outbound.protection.outlook.com [40.107.243.115])
 by mx.groups.io with SMTP id smtpd.web11.20079.1581329302347129245
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2020 02:08:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cognexcorporation.onmicrosoft.com header.s=selector1-cognexcorporation-onmicrosoft-com header.b=NychZnGR;
 spf=pass (domain: cognex.com, ip: 40.107.243.115, mailfrom: oliver.westermann@cognex.com)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VWUHC0o1RuxuXU59DrjxP9wjqsIril3/qjE/49biTDEi12Y44sWQ/zKfn17yJiZ5jmAUHeji4O/8LxKwZzRlFkkIQDfDfAtDNkblk056j8zMDV6K4N9D6t23lqBWCfLUtCqudx77YJn2Zoty6f/rsnz5Gw65BjYBGEguvv/xprVA1RMVvPYw2mdxul6ZABeK1m+hVHJ+348OI8OB3PiMssdG4fOfVchM0jQOAtk9WQD42Bh3c6F7ude4wyZpno4rej2wvLQ7f3DBWXs8x3utF7lW44lKFAU+BpZY8Gg+YD0w7KQP/smT0adab3FtLfZdrcha+68925UYgdXb0zD6JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhKkuwVteXHKtT9JAT4OIwmWHOtNVS1mIGibo95ZSfU=;
 b=bTF3rckoBIsguZ1VcKYg3HNmZ5TpuRfip2x/lQjtYVeWpR2kFVPK8mHY/j8HxVhRkDyE6nU3R+6Smu4hVqyoDJi14Xd5LyCSvmRwCzQL8CNuimFk+S221V4EPBw4npKEePqm1WUnH3zLPpY7Mh56K89KxNrpQ9NS8nNRpTFmcG4LNVn3V7fyhZsJ6T883rBAvBMFT4/BlK8UfS8IiQnqSUEg3tx4anowbdWrzsDfB8gfEdcuRk/sypbX5RPxDrKPaJkhZw93yoROe+pFGDqlC/m6yjQ5+CmNvV+NbReFHmEXdyPEYr5c4JkXNpuje3XdzVNIt2cffQZaEwRqrgvgYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
 dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cognexcorporation.onmicrosoft.com;
 s=selector1-cognexcorporation-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dhKkuwVteXHKtT9JAT4OIwmWHOtNVS1mIGibo95ZSfU=;
 b=NychZnGRLNxDvDEGN5gQcVV776kIXOhI+H9WkBltlC6KVV3epyXhZVf2IUmpMFAILAEIFbvysi9U+SfXRQ6AAfkvSLZ/npFmbGBuLAMbnOyaFjbwtNDXv2FjEAPyc6+v+hKTRq9P2lDwMA01XdWtEDPsGdHjZ0udaqpfVXHXJrI=
Received: from MN2PR06MB6573.namprd06.prod.outlook.com (20.180.25.148) by
 MN2PR06MB6543.namprd06.prod.outlook.com (20.180.25.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.29; Mon, 10 Feb 2020 10:08:20 +0000
Received: from MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::2106:f618:fa49:1f3c]) by MN2PR06MB6573.namprd06.prod.outlook.com
 ([fe80::2106:f618:fa49:1f3c%3]) with mapi id 15.20.2707.030; Mon, 10 Feb 2020
 10:08:19 +0000
From: "Oliver Westermann" <oliver.westermann@cognex.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Clarifying install vs deploy
Thread-Topic: Clarifying install vs deploy
Thread-Index: AdXf+HbFY8BRJWMuTLiugBgP5FbweA==
Date: Mon, 10 Feb 2020 10:08:19 +0000
Message-ID: 
 <MN2PR06MB6573BCE29DA9E3E85FE09E6086190@MN2PR06MB6573.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9c7f1cae-007a-4327-27b5-08d7ae1127af
x-ms-traffictypediagnostic: MN2PR06MB6543:
x-microsoft-antispam-prvs: 
 <MN2PR06MB6543FB61C20F39ADC2A5914286190@MN2PR06MB6543.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 03094A4065
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(4636009)(396003)(39860400002)(376002)(366004)(346002)(136003)(189003)(199004)(7696005)(3480700007)(66476007)(33656002)(66946007)(64756008)(66446008)(52536014)(66556008)(5660300002)(316002)(76116006)(86362001)(8936002)(71200400001)(2906002)(8676002)(6916009)(81156014)(81166006)(478600001)(55016002)(9686003)(26005)(186003)(6506007);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR06MB6543;H:MN2PR06MB6573.namprd06.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: cognex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ROTM17p96Vfg4TxF/pTn/KhiCaMsJuZjBm28zDd/c+RwAJSfXT6NR568rbP01qFtD6qRqkrlPypS3Ozc7jzmIQp7DsNAJvV0dS3TRz/w1OOgRPwiUHh7Oa/EzJ7fyoWYmlyu+Jf6qL3y/sgZhbZzscdIDPM0xcDk9MHw4+1DufLgwMAIOJvCxPfAAt3MYsEGk/9xWqdJTQsv3mQ8D346S/pDDMF747KvoBNigJwHbQR/GRCEV6dOqCpTcfsQ/j8ClBFlGpOkfJh2pzgY7fS9eybtoYh+2YAfOLW2HCDbX1nvTYVhfkChV4Ex0II2bQmQzBr92iMOw3ose1P03EwBmzuZWvLkcHCo+oymzJYhrqjl6YjER0f0NkjD0LI7gS2/EGT7ATr3wDuyZK0cjzz9xML2RaGGeR7PuGroHHzMRz+clZ399x8K347TDfaGrvci
x-ms-exchange-antispam-messagedata: 
 DVSyLH9iJL/PBf4rwBz5vXniCb+oEWZT4+mBkMCQfbGLc1M7/xFam/7+IjbSYWR/NOrJM46QQmghsWvMGI+LpdJ8EIhLNllrJWpW6HESuWkeW3SgnWpSdQrsPidbmnA5pjQ3VMPlLoz/ptSVWUgHUA==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c7f1cae-007a-4327-27b5-08d7ae1127af
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2020 10:08:19.8337
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PEf1w48uCW7yPoMDPc2MzUmS2LWeZGjPQIn9SyjpkYeXviU2J1TGHL2iiWkGh5CSMFg4jxdXNq43DZ7N9vrI8y6KJH0NzstJQu1DtoXnNgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR06MB6543
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3YXMgYXNrZWQgYnkgYSBjb2xsZWFndWUgZm9yIHRoZSBkaWZmZXJlbmNlIGJldHdlZW4gZG9f
ZGVwbG95IGFuZCBkb19pbnN0YWxsLCB3aGljaCBJIGJvdGggdXNlZCBtb3N0bHkgYnkgY2hlY2tp
bmcgc2ltaWxhciByZWNpcGVzIGFuZCBjb3B5aW5nIHRoZWlyIG1ldGhvZHMsIGJ1dCBub3cgSSdt
IGhhdmluZyBzb21lIHF1ZXN0aW9ucyBhcyB3ZWxsLiBUaGUgWW9jdG8gZGV2IG1hbnVhbCBkb2Vz
bid0IGxpc3QgZGVwbG95IGF0IGFsbCwgc28gbXkgYXNzdW1wdGlvbiBpcyB0aGF0IHdoeSBkb19p
bnN0YWxsIGlzIHRoZSBkZWZhdWx0LCBkb19kZXBsb3kgaXMgdXNlZCB0byBleHRlbmQgc29tZSBm
dW5jdGlvbmFsaXR5Lg0KDQpTbyBteSB1bmRlcnN0YW5kaW5nIGZvciAiZG9faW5zdGFsbCIgaXMg
dGhhdCBpdCBzaG91bGQgY29weSB0aGUgZmlsZXMgYnVpbGQgYW5kIHByb3ZpZGVkIChpbiAke0Iv
U30pIGludG8gJHtEfSwgd2hlcmUgdGhleSB3aWxsIGJlIHBpY2tlZCB1cCBieSB0aGUgbWVjaGFu
aXNtIHVzZWQgdG8gY3JlYXRlIFJQTXMuIFNvIGV2ZXJ5dGhpbmcgSSB3YW50IHRvIGVuZCB1cCBp
biBteSByb290ZnMgbmVlZHMgdG8gYmUgaW5zdGFsbGVkIGluIHRoZSBjb3JyZWN0IGxvY2F0aW9u
IChhcyBpbiAke0R9IGVxdWFscyB0aGUgLyBmb2xkZXIgb2YgbXkgcm9vdGZzKS4NCg0KRG9fZGVw
bG95IGhvd2V2ZXIgaXMgZG9jdW1lbnRlZCBpbiB0aGUgcmVmZXJlbmNlIG1hbnVhbCBhcyAiIFdy
aXRlcyBvdXRwdXQgZmlsZXMgdGhhdCBhcmUgdG8gYmUgZGVwbG95ZWQgdG8gJHtERVBMT1lfRElS
X0lNQUdFfS4gVGhlIHRhc2sgcnVucyB3aXRoIHRoZSBjdXJyZW50IHdvcmtpbmcgZGlyZWN0b3J5
IHNldCB0byAke0J9LiIsIHdoaWNoIHNvdW5kcyBwcmV0dHkgbXVjaCBsaWtlIHdoYXQgSSBkZXNj
cmliZWQgYWJvdmUuIFNvIGhvdyBpcyB0aGlzIGRpZmZlcmVudCBmcm9tIGRvX2luc3RhbGwsIG90
aGVyIHRoYW4gaXQgc2VlbXMgdG8gbWUgdGhhdCBkb19kZXBsb3kgdXNlcyB0aGUgZXh0cmEgdGVt
cG9yYXJ5IGRpciAke0RFUExPWURJUn0gKHdpdGhvdXQgYW4gdW5kZXJzY29yZSk/DQoNClNvIGlz
IHRoZXJlIGFueSBndWlkYW5jZSB3aGVuIGFuZCB3aGF0IGZvciB0byB1c2UgZWl0aGVyPyANCg0K
VGhhbmtzLCBPbGxpDQo=
