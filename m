Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.15779.1585153746183819656
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 09:29:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@docusign.com header.s=selector2 header.b=IdnJi5N6;
 spf=fail (domain: docusign.com, ip: 140.211.169.56, mailfrom: yair.itzhaki@docusign.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA6ADE018D8; Wed, 25 Mar 2020 09:29:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.223.127 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2127.outbound.protection.outlook.com [40.107.223.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB896E018D6
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2020 09:29:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=l6Etk/cATt/RIMtIILd8iNlwuofW+W/b8/ZwRuxW1XhR+1Gt1myMcPM7gTfEyOwBCrbKZYj24RGHMBHsuv5HR5PFdlaZmYBPrRjKVKKY1NvczW5GkJYQjJ13NPNCgbBr/VORxh1c0GkM9D8jz9GZqyKXkgYadtwVoGIlu77+hqqH49PqFCZKtTwpkxhJx/MM4Ei2WsPeb5McPzUaoAANyBmVeyXCU1N/0WiZiEc1U7MKdihNrceaip98J2Vj/OVRpNVtK2e3aM31MzvZZCJzmZO9V51whkBiPZ7snPHuoFBuv6uSJZ1iInK7yzD529V65PZtf1WKfmfj8r3yzN+9AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kMt6i054/bbEs822RjWd+l86ymmqNbZsTqtgLfhKeBc=;
 b=EqYB7JXrZgtKAqfafv8HZFDyUvkbdcKKR7K9eWDSDnPqo40q5CQ/crD8StkW4zmNzFxCTwv/x4Hq/YyXIQUHpqNvQgnLLEMSLs56lPOX4SYGoMMoHexo+fZSWgVj2pzmCy2JPXR0pFIs+TftgrCd05hmlbFjLSWSlI3L1dOybMCY/58raW411l4RweAdXJmJYGiD5MBHascODF0mSHpeAIv4RjKny7+C5RiuCK/svGD0ytzt3LFKfAThlATcbywVAuOuLMBHZzbRd2AvBI5gAy1QqLWtvzn4WSLia4Fpdp6LJJ6Ccuz/i9vMK4pL40Jn++BT/9wHj7AYCSc44oIpBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=docusign.com; dmarc=pass action=none header.from=docusign.com;
 dkim=pass header.d=docusign.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=docusign.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kMt6i054/bbEs822RjWd+l86ymmqNbZsTqtgLfhKeBc=;
 b=IdnJi5N61+HImdKbrxsV7kH9CPdCnspywznew9QcnW5xOqwtSPesCmFi9dd+RN/+fllhAbNejees+6mTEWva/AvpaMnjxOoUFzxwSX26isSYo6I2TEYP1jRRlDBksKE+/stVCqgFsyhTN/6MhpVzrhUIVjS1zJsCqI3YHHgbeik=
Received: from MN2PR04MB5487.namprd04.prod.outlook.com (2603:10b6:208:d5::12)
 by MN2PR04MB6973.namprd04.prod.outlook.com (2603:10b6:208:1ed::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Wed, 25 Mar
 2020 16:29:02 +0000
Received: from MN2PR04MB5487.namprd04.prod.outlook.com
 ([fe80::f065:df95:b35c:6b2f]) by MN2PR04MB5487.namprd04.prod.outlook.com
 ([fe80::f065:df95:b35c:6b2f%4]) with mapi id 15.20.2835.021; Wed, 25 Mar 2020
 16:29:02 +0000
From: "Yair" <yair.itzhaki@docusign.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Adding custom SELinux policy modules (different priority?)
Thread-Topic: Adding custom SELinux policy modules (different priority?)
Thread-Index: AdYCwfIWKOzPPzMPTni3GO3CDRhrMQ==
Date: Wed, 25 Mar 2020 16:29:02 +0000
Message-ID: 
 <MN2PR04MB548703B5172677D634E8C54FFACE0@MN2PR04MB5487.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Yair.Itzhaki@docusign.com; 
x-originating-ip: [212.25.66.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e2c959ab-c2bf-4066-1294-08d7d0d9a11b
x-ms-traffictypediagnostic: MN2PR04MB6973:
x-microsoft-antispam-prvs: 
 <MN2PR04MB6973D64DE844B069F39D8011FACE0@MN2PR04MB6973.namprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0353563E2B
x-forefront-antispam-report: 
 SFV:NSPM;SFS:(10019020)(39860400002)(366004)(346002)(376002)(136003)(396003)(186003)(6916009)(4744005)(316002)(5660300002)(52536014)(2906002)(55016002)(9686003)(66476007)(26005)(76116006)(7696005)(66556008)(9326002)(6506007)(8936002)(33656002)(66446008)(8676002)(64756008)(478600001)(71200400001)(86362001)(81156014)(81166006)(66946007);DIR:OUT;SFP:1102;SCL:1;SRVR:MN2PR04MB6973;H:MN2PR04MB5487.namprd04.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;
received-spf: None (protection.outlook.com: docusign.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 Uo9Ftx/ZTMGDuxSnmIK5k4FWUzMbuJxJuEl1LCADy4vjSDATciQrWqZGs7Ob2vX0r4WAwJ05RgU6AO6nTC3bbTf8VxhEVcTxw2YdIKkWQC59bB2ETARLqivFdV/h4aVdpYB/4f8z/rmIQFLeBVtbsFAZXbXVAJzJiz6XCTp1I4z+GElU8rdngyiTg30kmm2MBwE3kHK9rdXMp74MGn0TyLKmPMrftMrbDc1RRftVt4SQisb92rwwlq9/pbQTspyajMJXBU1aUDyLjidfds9uPxDSQsr5y6yf084SnFEBtiGrNU4YVRLattwi+JNBDp1wO1+LGRvojF4vEegFjgxYmFrewZCPem6zIRWDxyhmSso24tsg44Qplw4DFnbCHDZnA2OdjLwaXiYoQYphbNeBbcGq+K+4HkSMKpw5AlU9+4dH05tD3rNSXAsOhBTCItnh
x-ms-exchange-antispam-messagedata: 
 pMxl+8jwN1LQJfZWZugmhc6HYXK3eqyhz6r00cGTQZDQLyG0rsrDZdNHo6CSL4z2glf3ULumbrlutHmr8am0w5Q3YuCdu8EAMaXBwx60IvOYTSga9AdANSFABsoNvdJFZD8hcx2+CS9QTIpsWrZ4xw==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: docusign.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2c959ab-c2bf-4066-1294-08d7d0d9a11b
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2020 16:29:02.3732
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 237e701c-327f-4cad-a5a1-dda2412d89d9
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qe46XMvOfb498UUIjApPoQ4F2HGCwbGC+oFjxtDjFgFl06cPcrOU029h5+VWYD2lDjJvctKrcXbv1eV/KtzyS6B+nBmMqc1R8GyOhlhH7ew=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6973
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MN2PR04MB548703B5172677D634E8C54FFACE0MN2PR04MB5487namp_"

--_000_MN2PR04MB548703B5172677D634E8C54FFACE0MN2PR04MB5487namp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkNCkkgbmVlZCB0byBhZGQgY3VzdG9tIFNFTGludXggcG9saWN5IG1vZHVsZXMgdG8gbXkgaW1h
Z2UuDQpJZiBJIHNpbXBseSBkcm9wIG15IC5pZisuZmMrLnRlIGZpbGVzIHVuZGVyIHRoZSAi4oCm
L3JlZnBvbGljeS9wb2xpY3kvbW9kdWxlcy9hcHBzIiBmb2xkZXIsIGl0IGdldHMgY29tcGlsZWQg
d2l0aCB0aGUgcmVzdCBvZiB0aGUgZGVmYXVsdCBwb2xpY2llcy4NCg0KSG93ZXZlciwgbXkgcG9s
aWN5IGNsYXNoZXMgaW4gc29tZSBlbGVtZW50cyB3aXRoIHRoZSBwcmUtZGVmaW5lZCBwb2xpY3ks
IGNhc2luZyB0aGUgY29tcGxldGUgYnVpbGQgdG8gZmFpbCAodGhlIG1vZHVsZSBjb21waWxlcyB3
ZWxsIGJ5IGl0c2VsZikuDQoNCk9uZSBpZGVhIGlzIHRvIHVzZSBhIGRpZmZlcmVudCBwcmlvcml0
eSAoYXMgSSBkaWQgb24gdGhlIGRldiBzeXN0ZW0g4oCTIG1vdmVkIG15IGN1c3RvbSBwb2xpY2ll
cyB0byAiNDAwIikuDQoNCkJ1dCBob3cgZG8gSSBkbyB0aGF0IGluIHRoZSBiaXRiYWtlIHNjcmlw
dGluZyBzeXN0ZW0/DQpUaGUgc2NyaXB0IGluICIgL3JlZnBvbGljeV9jb21tb24uaW5jIiB1c2Vz
IGhhcmQtY29kZWQgIiBQT0xfUFJJT1JJVFk9MTAwIi4NCg0KSXMgdGhlcmUgYSBkaWZmZXJlbnQg
TWFrZWZpbGUvZm9sZGVyL+KApiB0byBwdXQgdXNlci1kZWZpbmUgcG9saWNpZXM/DQoNClRoYW5r
cywNCllhaXINCg0KDQo=

--_000_MN2PR04MB548703B5172677D634E8C54FFACE0MN2PR04MB5487namp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM6dj0idXJuOnNjaGVtYXMtbWljcm9zb2Z0LWNvbTp2bWwiIHhtbG5zOm89InVy
bjpzY2hlbWFzLW1pY3Jvc29mdC1jb206b2ZmaWNlOm9mZmljZSIgeG1sbnM6dz0idXJuOnNjaGVt
YXMtbWljcm9zb2Z0LWNvbTpvZmZpY2U6d29yZCIgeG1sbnM6bT0iaHR0cDovL3NjaGVtYXMubWlj
cm9zb2Z0LmNvbS9vZmZpY2UvMjAwNC8xMi9vbW1sIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcv
VFIvUkVDLWh0bWw0MCI+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIg
Y29udGVudD0idGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjxtZXRhIG5hbWU9IkdlbmVyYXRv
ciIgY29udGVudD0iTWljcm9zb2Z0IFdvcmQgMTUgKGZpbHRlcmVkIG1lZGl1bSkiPg0KPHN0eWxl
PjwhLS0NCi8qIEZvbnQgRGVmaW5pdGlvbnMgKi8NCkBmb250LWZhY2UNCgl7Zm9udC1mYW1pbHk6
IkNhbWJyaWEgTWF0aCI7DQoJcGFub3NlLTE6MiA0IDUgMyA1IDQgNiAzIDIgNDt9DQpAZm9udC1m
YWNlDQoJe2ZvbnQtZmFtaWx5OkNhbGlicmk7DQoJcGFub3NlLTE6MiAxNSA1IDIgMiAyIDQgMyAy
IDQ7fQ0KLyogU3R5bGUgRGVmaW5pdGlvbnMgKi8NCnAuTXNvTm9ybWFsLCBsaS5Nc29Ob3JtYWws
IGRpdi5Nc29Ob3JtYWwNCgl7bWFyZ2luOjBpbjsNCgltYXJnaW4tYm90dG9tOi4wMDAxcHQ7DQoJ
Zm9udC1zaXplOjExLjBwdDsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJpZjt9DQph
OmxpbmssIHNwYW4uTXNvSHlwZXJsaW5rDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xv
cjojMDU2M0MxOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0KYTp2aXNpdGVkLCBzcGFu
Lk1zb0h5cGVybGlua0ZvbGxvd2VkDQoJe21zby1zdHlsZS1wcmlvcml0eTo5OTsNCgljb2xvcjoj
OTU0RjcyOw0KCXRleHQtZGVjb3JhdGlvbjp1bmRlcmxpbmU7fQ0Kc3Bhbi5FbWFpbFN0eWxlMTcN
Cgl7bXNvLXN0eWxlLXR5cGU6cGVyc29uYWwtY29tcG9zZTsNCglmb250LWZhbWlseToiQXJpYWwi
LHNhbnMtc2VyaWY7DQoJY29sb3I6d2luZG93dGV4dDt9DQouTXNvQ2hwRGVmYXVsdA0KCXttc28t
c3R5bGUtdHlwZTpleHBvcnQtb25seTsNCglmb250LWZhbWlseToiQ2FsaWJyaSIsc2Fucy1zZXJp
Zjt9DQpAcGFnZSBXb3JkU2VjdGlvbjENCgl7c2l6ZTo4LjVpbiAxMS4waW47DQoJbWFyZ2luOjEu
MGluIDEuMjVpbiAxLjBpbiAxLjI1aW47fQ0KZGl2LldvcmRTZWN0aW9uMQ0KCXtwYWdlOldvcmRT
ZWN0aW9uMTt9DQotLT48L3N0eWxlPjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVk
ZWZhdWx0cyB2OmV4dD0iZWRpdCIgc3BpZG1heD0iMTAyNiIgLz4NCjwveG1sPjwhW2VuZGlmXS0t
PjwhLS1baWYgZ3RlIG1zbyA5XT48eG1sPg0KPG86c2hhcGVsYXlvdXQgdjpleHQ9ImVkaXQiPg0K
PG86aWRtYXAgdjpleHQ9ImVkaXQiIGRhdGE9IjEiIC8+DQo8L286c2hhcGVsYXlvdXQ+PC94bWw+
PCFbZW5kaWZdLS0+DQo8L2hlYWQ+DQo8Ym9keSBsYW5nPSJFTi1VUyIgbGluaz0iIzA1NjNDMSIg
dmxpbms9IiM5NTRGNzIiPg0KPGRpdiBjbGFzcz0iV29yZFNlY3Rpb24xIj4NCjxwIGNsYXNzPSJN
c29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5z
LXNlcmlmIj5IaTxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj5JIG5l
ZWQgdG8gYWRkIGN1c3RvbSBTRUxpbnV4IHBvbGljeSBtb2R1bGVzIHRvIG15IGltYWdlLjxicj4N
CklmIEkgc2ltcGx5IGRyb3AgbXkgLmlmJiM0MzsuZmMmIzQzOy50ZSBmaWxlcyB1bmRlciB0aGUg
JnF1b3Q7PC9zcGFuPjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtUaW1lcyBOZXcgUm9t
YW4mcXVvdDssc2VyaWYiPuKApjwvc3Bhbj4vPHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90
O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPnJlZnBvbGljeS9wb2xpY3kvbW9kdWxlcy9hcHBzJnF1
b3Q7IGZvbGRlciwgaXQgZ2V0cyBjb21waWxlZCB3aXRoIHRoZSByZXN0IG9mIHRoZSBkZWZhdWx0
IHBvbGljaWVzLjxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj48bzpw
PiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHls
ZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+SG93ZXZlciwgbXkg
cG9saWN5IGNsYXNoZXMgaW4gc29tZSBlbGVtZW50cyB3aXRoIHRoZSBwcmUtZGVmaW5lZCBwb2xp
Y3ksIGNhc2luZyB0aGUgY29tcGxldGUgYnVpbGQgdG8gZmFpbCAodGhlIG1vZHVsZSBjb21waWxl
cyB3ZWxsIGJ5IGl0c2VsZikuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05v
cm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2Vy
aWYiPjxvOnA+Jm5ic3A7PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxz
cGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj5PbmUg
aWRlYSBpcyB0byB1c2UgYSBkaWZmZXJlbnQgcHJpb3JpdHkgKGFzIEkgZGlkIG9uIHRoZSBkZXYg
c3lzdGVtIOKAkyBtb3ZlZCBteSBjdXN0b20gcG9saWNpZXMgdG8gJnF1b3Q7NDAwJnF1b3Q7KS48
bzpwPjwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBzdHlsZT0i
Zm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+PG86cD4mbmJzcDs8L286
cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFt
aWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPkJ1dCBob3cgZG8gSSBkbyB0aGF0IGlu
IHRoZSBiaXRiYWtlIHNjcmlwdGluZyBzeXN0ZW0/PG86cD48L286cD48L3NwYW4+PC9wPg0KPHAg
Y2xhc3M9Ik1zb05vcm1hbCI+PHNwYW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1
b3Q7LHNhbnMtc2VyaWYiPlRoZSBzY3JpcHQgaW4gJnF1b3Q7PC9zcGFuPg0KPHNwYW4gc3R5bGU9
ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPi9yZWZwb2xpY3lfY29t
bW9uLmluYyZxdW90OyB1c2VzIGhhcmQtY29kZWQgJnF1b3Q7PC9zcGFuPg0KPHNwYW4gc3R5bGU9
ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPlBPTF9QUklPUklUWT0x
MDAmcXVvdDsuPG86cD48L286cD48L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PHNw
YW4gc3R5bGU9ImZvbnQtZmFtaWx5OiZxdW90O0FyaWFsJnF1b3Q7LHNhbnMtc2VyaWYiPjxicj4N
CklzIHRoZXJlIGEgZGlmZmVyZW50IE1ha2VmaWxlL2ZvbGRlci/igKYgdG8gcHV0IHVzZXItZGVm
aW5lIHBvbGljaWVzPzxvOnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwi
PjxzcGFuIHN0eWxlPSJmb250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj48
bzpwPiZuYnNwOzwvbzpwPjwvc3Bhbj48L3A+DQo8cCBjbGFzcz0iTXNvTm9ybWFsIj48c3BhbiBz
dHlsZT0iZm9udC1mYW1pbHk6JnF1b3Q7QXJpYWwmcXVvdDssc2Fucy1zZXJpZiI+VGhhbmtzLDxv
OnA+PC9vOnA+PC9zcGFuPjwvcD4NCjxwIGNsYXNzPSJNc29Ob3JtYWwiPjxzcGFuIHN0eWxlPSJm
b250LWZhbWlseTomcXVvdDtBcmlhbCZxdW90OyxzYW5zLXNlcmlmIj5ZYWlyPG86cD48L286cD48
L3NwYW4+PC9wPg0KPHAgY2xhc3M9Ik1zb05vcm1hbCI+PG86cD4mbmJzcDs8L286cD48L3A+DQo8
cCBjbGFzcz0iTXNvTm9ybWFsIj48bzpwPiZuYnNwOzwvbzpwPjwvcD4NCjwvZGl2Pg0KPC9ib2R5
Pg0KPC9odG1sPg0K

--_000_MN2PR04MB548703B5172677D634E8C54FFACE0MN2PR04MB5487namp_--
