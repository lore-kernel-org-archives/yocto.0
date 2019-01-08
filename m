Return-Path: <Edmund.Nadolski@microsoft.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DAF1E00C93; Wed,  9 Jan 2019 01:24:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.71.97 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 38459 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Jan 2019 01:24:20 PST
Received: from NAM05-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr710097.outbound.protection.outlook.com [40.107.71.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58969E00C4D
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 01:24:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=RGCiD+4QZhPBNBbb3t7F+fs9dw3WBJWmQNQCDQnsdTo=;
	b=Nld2q87v0A/RuyKYZMnmQwxNAGfoTbKwSo8jSDWZKYqW9cmG/wV/qYGB6Ghus9Mx8sESP7ZhGWovsFq5GRN44BFVFrDbWmoL7I35XgjGYZ/qMA/aXbUCSvmu5lh2x8bC/J/YQhDw2ZK2k1TTgOmqI/NqYO/UBafULlpZOnMT6Xw=
Received: from MWHPR21MB0174.namprd21.prod.outlook.com (10.173.52.20) by
	MWHPR21MB0509.namprd21.prod.outlook.com (10.172.95.139) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1537.8; Tue, 8 Jan 2019 22:10:20 +0000
Received: from MWHPR21MB0174.namprd21.prod.outlook.com
	([fe80::b98a:7213:608c:c31d]) by
	MWHPR21MB0174.namprd21.prod.outlook.com
	([fe80::b98a:7213:608c:c31d%10]) with mapi id 15.20.1537.005;
	Tue, 8 Jan 2019 22:10:19 +0000
From: Edmund Nadolski <Edmund.Nadolski@microsoft.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Yocto staged builds?
Thread-Index: AdSTHP7f1/V2KVmkQy6ri6l6W3rscAD9fu6AAG3orVAC1wkpgADdifsw
Date: Tue, 8 Jan 2019 22:10:19 +0000
Message-ID: <MWHPR21MB01740467D50403EEC49BF9AFE58A0@MWHPR21MB0174.namprd21.prod.outlook.com>
References: <MWHPR21MB086165B1FB4C98FC687D8924E5A00@MWHPR21MB0861.namprd21.prod.outlook.com>
	<CAJTo0LaEmMpeuMJ14ZB72LBzGO9yOjtQ6HpZ2ocfTbLDEmtYhA@mail.gmail.com>
	<MWHPR21MB0174308BE768E56D94B6A1F6E5B80@MWHPR21MB0174.namprd21.prod.outlook.com>
	<CAJTo0LYcj9WPYgtgB87Es9k2Zt66U6Jz8MPnSaZg=s4JsveOkg@mail.gmail.com>
In-Reply-To: <CAJTo0LYcj9WPYgtgB87Es9k2Zt66U6Jz8MPnSaZg=s4JsveOkg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Enabled=True;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SiteId=72f988bf-86f1-41af-91ab-2d7cd011db47;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Owner=ednadols@microsoft.com;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_SetDate=2019-01-08T22:10:17.2905834Z;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Name=General;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Application=Microsoft
	Azure Information Protection;
	MSIP_Label_f42aa342-8706-4288-bd11-ebb85995028c_Extended_MSFT_Method=Automatic;
	Sensitivity=General
x-originating-ip: [2001:4898:80e8:2:25d7:6976:cd62:1eba]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MWHPR21MB0509;
	6:C3bdGEDjJUzeSiABYv9KG1EIweGK4lUX+3bl2EkwsaS88fsK1RDiA0OQrZb3jctC/eGSieLkD8THHhb+j6RxvuVkr4tlJ8xqWix17nlEpnmFGQbI8mRIQRLbIx17CibJqgCn2WMvJ3gbWEtO7QA702T6o+msijS9u0ekYjc9IJRryL0POpLDg4f/Qt2RXE+i32u/WOBDucVmvXQ3mCL02z6yrK8g0gszd8usxdNyb8+AmvQM0n02tp6mXC2zYqLaXMDBKEn3Y7VkMU6Imq12Z7fjKs95WAkQUdMWe9vkre/rQfeZfLn8n8dkdqr3GyB+2yIdDfTJ7Et7Q0A3YoIajbi2hmTDqosfYANGbOujSNaXZej6z9BuoWjBy8SL9IsRwLYxnB7Qrkf9VCoE28cLSZbbmcKpBP18TrAPLshHk2ARoAMBsjTq0A6IRU4IN6j+8tKeryAl8NnyvtuNzQsYJg==;
	5:INCeIpgF3uYU19cW2Thsk5yYzyDXjn+43WA2DquxTZwoc89GbCB+p+F52G9hVC65ZzqfSzUxLCqZqMGXYvGhgdXEiHIAYdy3ND3sXktB2+jhOvhmNLbDBETXrxN+35KcVOCzLTRMQG7jZef32Gm3VfKbpqKRRd2xemG/5Riz4a42ZMnTHIodzsLY+q9F2pNyGb11gYPp9C52UJnpA+Ablg==;
	7:6yCDimH/Ga0ZgX6dAGIe6Dfa/f+PQWJ0BP5uwOy88XuGmDYiKAVo5aaY/iXfqNJJl09vktMHov/z+CzxmA7AlHlqUI2MhgjEDVFk9po8np2SdW4m6z6kPnYoMhDCOLTe7d/CNVOqhcpkxc0G3yJWgw==
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 3c2c8032-1a21-42dd-4594-08d675b61406
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600109)(711020)(4618075)(2017052603328)(7193020);
	SRVR:MWHPR21MB0509; 
X-MS-TrafficTypeDiagnostic: MWHPR21MB0509:|MWHPR21MB0509:
x-ms-exchange-purlcount: -3
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Edmund.Nadolski@microsoft.com; 
x-microsoft-antispam-prvs: <MWHPR21MB0509F10C2CC3E8F23FFC77BCE58A0@MWHPR21MB0509.namprd21.prod.outlook.com>
x-forefront-prvs: 0911D5CE78
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(396003)(346002)(136003)(39860400002)(366004)(376002)(13464003)(189003)(199004)(71190400001)(229853002)(46003)(105586002)(86362001)(106356001)(53546011)(22452003)(8990500004)(14454004)(6506007)(7696005)(76176011)(6916009)(305945005)(2906002)(68736007)(10290500003)(316002)(186003)(86612001)(71200400001)(508600001)(476003)(486006)(6116002)(7736002)(446003)(11346002)(6436002)(99286004)(93886005)(72206003)(81166006)(81156014)(8676002)(5660300001)(97736004)(4326008)(102836004)(33656002)(74316002)(9686003)(53936002)(14444005)(256004)(6246003)(10090500001)(25786009)(8936002)(55016002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:MWHPR21MB0509;
	H:MWHPR21MB0174.namprd21.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microsoft.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nwbhO0iKggHyuYcU7mJIHArXh3T14EJkYrN0ZJTeuQypFO8coUmLtNv8Z6teBF5X83FDTjixe2t0XKAk3DkVpUQySnF2AUT/F+deIa5SSKb10F+IyJKygT6CqcShB9Areojwb+t8y8Dnb9klF1IEmbUh2GRwwD7GgJGizsXPJROQgBxMiScylXGlmWiAh+EEEOmlCUgvklI5KK8PZYcEIlpG0o0mxVHyGyMveClyR6GWO9ArbxNXQPz8Co8VBBIvVp4SePHCHGyiQP7MCXnT3sqzQ1d46z5UULTt04MLIuo=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c2c8032-1a21-42dd-4594-08d675b61406
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2019 22:10:19.8755 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR21MB0509
X-Microsoft-Exchange-Diagnostics: 1; MWHPR21MB0509;
	23:e1g0q0m/szMvYjwENYWNONaURIHE/MqY1LEan6ZbznT57i+mgeUiBzdasZl8AwgvI0KZHzZueyy+NKxLtoDN2kJ4YkoO6BcS3uY2QK03Vk4Yj9S1rqow6nAJ1BTFLnmhHQny1UBiD3O9FF3TeZmbgQ==
X-OriginatorOrg: microsoft.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto staged builds?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jan 2019 09:24:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJvc3MgPHJvc3Mu
YnVydG9uQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBKYW51YXJ5IDQsIDIwMTkgNDoxMiBB
TQ0KPiBUbzogRWRtdW5kIE5hZG9sc2tpIDxFZG11bmQuTmFkb2xza2lAbWljcm9zb2Z0LmNvbT4N
Cj4gQ2M6IFlvY3RvLW1haWxpbmctbGlzdCA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz4NCj4gU3Vi
amVjdDogUmU6IFt5b2N0b10gWW9jdG8gc3RhZ2VkIGJ1aWxkcz8NCj4gDQo+IE9uIEZyaSwgMjEg
RGVjIDIwMTggYXQgMDE6MTksIEVkbXVuZCBOYWRvbHNraQ0KPiA8RWRtdW5kLk5hZG9sc2tpQG1p
Y3Jvc29mdC5jb20+IHdyb3RlOg0KPiA+ID4gWW9jdG8gaXMgZ2VuZXJhbGx5IGZsZXhpYmxlIGVu
b3VnaCB0aGF0IGFueSBzaWduaW5nIHRoYXQgaXNuJ3QNCj4gPiA+IGN1cnJlbnRseSBkb2Vzbid0
IHdvdWxkbid0IGJlIHRvbyBkaWZmaWN1bHQgdG8gYWRkLg0KPiA+DQo+ID4gVGhhbmtzIFJvc3Mu
ICBTbyBzb3VuZHMgbGlrZSBpdCBzaG91bGQgYmUgYSBtYXR0ZXIgb2YgYXBwZW5kaW5nIGFuDQo+
ID4gYWRkdGFzayBhdCB0aGUgcmVsZXZhbnQgcGFydCBvZiBlYWNoIHJlY2lwZSAtLSBpcyBpdCB0
aGF0DQo+ID4gc3RyYWlnaHRmb3J3YXJkIG9yIGhhdmUgSSBvdmVybG9va2VkIGFueXRoaW5nIGlt
cG9ydGFudD8NCj4gDQo+IFVzaW5nIGEgY2xhc3MgeW91IGNhbiBhZGQgdGFza3MgZm9yIGFsbCBy
ZWNpcGVzLiAgSWYgeW91IGV4cGxhaW4gd2hhdCB5b3UncmUNCj4gYWN0dWFsbHkgdHJ5aW5nIHRv
IGRvIHRoZW4gd2UgY2FuIGdpdmUgYmV0dGVyIGFkdmljZS4NCg0KSSdtIHRoaW5raW5nIG9mIGEg
ZnVsbCBidWlsZCBzZXBhcmF0ZWQgaW50byBzYXkgMyBzZXF1ZW50aWFsIHN0ZXBzLCBBLCBCLCBh
bmQgQywgd2l0aCBlYWNoIHN0ZXAgYmVpbmcgc29tZSBzZXJpZXMgb2YgYml0YmFrZSB0YXNrcy4g
ICBUaGUgaWRlYSBpcyBydW4gYWxsIHRoZSB0YXNrcyBpbiBzdGVwIEEgYW5kIHRoZW4gcmVnYWlu
IGNvbnRyb2wgc28gSSBjYW4gcnVuIHNvbWUgYWRkaXRpb25hbCB0b29scy90cmFuc2Zvcm1zIG9u
IGFydGlmYWN0cyAoZWcgc2lnbmluZykgcHJvZHVjZWQgaW4gdGhhdCBzdGVwLiAgVGhlbiwgcmVz
dW1lIGJpdGJha2UgZnJvbSBzdGVwIEIsIGFuZCBhZnRlciB0aGF0IGNvbXBsZXRlcyB0aGVuIGFn
YWluIHJlZ2FpbiBjb250cm9sIGFuZCBydW4gc29tZSBhZGRpdGlvbmFsIHRyYW5zZm9ybXMuICBG
aW5hbGx5IHJlc3VtZSBiaXRiYWtlIGZyb20gc3RlcCBDIGFuZCBsZXQgdGhhdCBydW4gdG8gY29t
cGxldGlvbiBhcyB3ZWxsLg0KDQpJIHdhc24ndCBzdXJlIHdoZXRoZXIgdGhlIGJpdGJha2UgaGFz
IHRoYXQgc29ydCBvZiAicGF1c2UgYW5kIHJlc3VtZSIgY2FwYWJpbGl0eSwgdGhvIHBlcmhhcHMg
dGhlIGFkZHRhc2sgaW4gdGhlIHJpZ2h0IHBsYWNlcyBpcyBvbmUgd2F5IHRvIGVmZmVjdCBhIHNp
bWlsYXIgcmVzdWx0Pw0KDQooQXBvbG9naWVzLCB0aGlzIGlzIHByb2JhYmx5IGEgbGFtZS9hd2t3
YXJkIGRlc2NyaXB0aW9uIG9uIG15IHBhcnQpDQoNClRoYW5rcyBhZ2FpbiwNCkVkDQoNCg0K

