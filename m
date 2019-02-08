Return-Path: <max.hallden@wisi.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0354DE00CBA; Fri,  8 Feb 2019 20:06:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FROM_EXCESS_BASE64, PLING_QUERY, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.6.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 PLING_QUERY Subject has exclamation mark and question mark
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 55466 seconds by postgrey-1.32 at yocto-www;
	Fri, 08 Feb 2019 20:06:30 PST
Received: from EUR04-DB3-obe.outbound.protection.outlook.com
	(mail-eopbgr60069.outbound.protection.outlook.com [40.107.6.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 337E2E00CAD
	for <yocto@lists.yoctoproject.org>;
	Fri,  8 Feb 2019 20:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=a2b.onmicrosoft.com;
	s=selector1-wisi-se;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=7e98gSGHPVFOUVb7pZxHFXuo4QnyGKdEGuc2D8Wp7kQ=;
	b=liHM43uDLcLXKYwwlgtvtlXC+V3JOCEc9XkeoTisrK3+vTVIS3zm099mQq+1TA45/jfuAbo5kM2a87cBtyr9Y7OdeoeuJEuO/HnhvJCIUYv/lAoq6BlrKrTyEgxgWFtR72ekhYH9baAR6sddWfkFQHag1mbXDab0Zmx4Jx+j16c=
Received: from AM6PR0302MB3173.eurprd03.prod.outlook.com (52.133.11.28) by
	AM6PR0302MB3415.eurprd03.prod.outlook.com (52.133.28.18) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1601.19; Fri, 8 Feb 2019 11:09:33 +0000
Received: from AM6PR0302MB3173.eurprd03.prod.outlook.com
	([fe80::563:c4d7:8abd:7e28]) by
	AM6PR0302MB3173.eurprd03.prod.outlook.com
	([fe80::563:c4d7:8abd:7e28%5]) with mapi id 15.20.1601.016;
	Fri, 8 Feb 2019 11:09:33 +0000
From: =?utf-8?B?TWF4IEhhbGxkw6lu?= <max.hallden@wisi.se>
To: Fernando AE <fernando.ae2017@gmail.com>, Guy Morand <guy@guy-morand.ch>
Thread-Topic: [yocto] cmake / <string> no such file or directory ??!
Thread-Index: AQHUvSQIndHG0G48HUuaqZC4TbnRv6XQ7m8AgASrXQCAACl0AA==
Date: Fri, 8 Feb 2019 11:09:33 +0000
Message-ID: <753347a4-a016-d731-0afb-f67f63529cfc@wisi.se>
References: <a9f7b0c1-97c9-7aea-1172-6de6cd673b46@guy-morand.ch>
	<3718150e-2dbf-dfaa-5b2e-3d5d0e97b8e6@guy-morand.ch>
	<CAK3Qp=WZ0vZhX5CiybMyPaVmfunwtmckS6sW6gLb4Qe-0JidpQ@mail.gmail.com>
In-Reply-To: <CAK3Qp=WZ0vZhX5CiybMyPaVmfunwtmckS6sW6gLb4Qe-0JidpQ@mail.gmail.com>
Accept-Language: sv-SE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HE1PR05CA0345.eurprd05.prod.outlook.com
	(2603:10a6:7:92::40) To AM6PR0302MB3173.eurprd03.prod.outlook.com
	(2603:10a6:209:26::28)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=max.hallden@wisi.se; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [81.170.208.90]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM6PR0302MB3415;
	6:FxsYjsxJ7W4xiNWBZtLfczIZZ0HNG5OPtAjbGPqImYafZ56BlZHQ39f98dfK4LCPHdd5BZ288t0D1iScbHxbSIKGLAb7xYlQq5Ipva6im1399U8rtj+lGJz1q8+AZk9tiruXquF4Xvv8CvXW81IUQBDJK08KFCNpC6QVV0uCY3KraO01pTfOUc150872cih3JxRIQSVMoVl2Q2SuMJbAPp8IlfuCTAoole2gnGrOv2vM/Wjf8KOMixa+zJLtK0MJhBIVaBkwWdfbZk6/bgYri2l3RziuBdmlTZdvO03NvoONbxWK5sHoxJBTWk3qnT+oO+UHK/vGVcyvOufMMF+XhZKk5u327jo+NJMbT9SgOavYb9ENLXgm9kvaSPPA1wUQACOymEVtbAU5ze5u8PGcL2VLyqIhLhw1RidZvcJDkkrDO/BWM9Rz9lB+zSAobsgWrsT2pVc49k/61e6go3jzbQ==;
	5:1BZWz0GDdSFSnCKL1aQodSjR3wXNVDiU5j8YdETXYs1xp489P6OOvkIgVwCtPxOw0Sc6Jw8er8ayU5vLh/mqAefkIlO+9uNT5BkHPDqBLn8oCn2A9ymXKw83tVkw6lkjycP74ePimqhsVwFoHd9e4DKDcNGgddszQiAcsKnuVJVY6OKrypfgpHpQsVwr+AFo745sh14E11rt8FISb+lRCQ==;
	7:OIjbdfD/6fOrsM5rVFYYp+FxlUkyYpyfjiW5l88l7IFriFMzubSym3Sql2A0XCsAh4X4Osg0FAuXEMSwZmS/0dAtt3gIKVr4R05T9pWjEELgpfYRmlUtIu4GhubIcuB3S2ea85GVFguQVbO/lLrd7g==
x-ms-office365-filtering-correlation-id: f1162933-b2c2-4f24-5d90-08d68db5e7ac
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:AM6PR0302MB3415; 
X-MS-TrafficTypeDiagnostic: AM6PR0302MB3415:|AM6PR0302MB3415:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <AM6PR0302MB34152247761D77745460016FFA690@AM6PR0302MB3415.eurprd03.prod.outlook.com>
x-forefront-prvs: 094213BFEA
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(136003)(346002)(39840400004)(366004)(189003)(199004)(110136005)(186003)(31696002)(966005)(486006)(31686004)(68736007)(4326008)(53546011)(36756003)(6506007)(508600001)(25786009)(102836004)(386003)(2906002)(86362001)(316002)(99286004)(6116002)(3846002)(66066001)(14454004)(26005)(53936002)(71200400001)(71190400001)(8936002)(256004)(8676002)(81166006)(81156014)(305945005)(7736002)(11346002)(76176011)(74482002)(6512007)(6436002)(106356001)(229853002)(85202003)(6246003)(2616005)(85182001)(446003)(476003)(105586002)(6486002)(6306002)(97736004)(52116002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR0302MB3415;
	H:AM6PR0302MB3173.eurprd03.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: wisi.se does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: nYCzXZVAK2FEhjBVjVDR77RyAPmrOYlw0G2z7vWuA9rXNY9AoEDXUXP+iQ9QwU8fpkF2xtNallC01zvzW3o8fTkZRXd2J8CMNl1g7nGkrXvmujfyo9MNiQKJl6lXXTrbwU/k0/T72sOHZwtoIV/v5l55QiNVHo0Jhtsi1MpDsZ+zncz/Ds+/kycA//iJWNTbDDxN1x+VeO9hQA/Zab83N+HAG5uMI06JmlclYe0d0XrtgNeP3hJpEizu22a653ENdUcj8LlAFs8Pb5CQqybViihIbdXsvs5DY6zGC4qmA05/2kCgyDH5n22Gn9qAv3wMeFmq/9ERcvkgrWWGT19hhNxjznG1JwYiy0hoRIxY+tX+muBJrqztq4g8ai7kJvC/Kw6KONU9VvblPZyVp1ZJLji0R/FvGC5vcwyp4fd9iDo=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: f1162933-b2c2-4f24-5d90-08d68db5e7ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Feb 2019 11:09:33.2792 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-id: cfd02236-c6a0-451b-b748-22f5b610c60d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0302MB3415
X-Microsoft-Exchange-Diagnostics: 1; AM6PR0302MB3415;
	23:ECEgPOXWfEAZIW1DtRTphuHjF7+LmAfpsVurAEnItzsS/ZLyPlG3urdGn7b4tUoEPLE8QLRuKem+86ga9itLqlEp/MK9P6WhoXsYrkB3D6hVaVZFwKJUmeOKooarUkaQi/eEJWJ2DcoLfJaj7H+33A==
X-OriginatorOrg: wisi.se
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: cmake / <string> no such file or directory ??!
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
X-List-Received-Date: Sat, 09 Feb 2019 04:06:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <D5F0245E94565A4693E6A2AFEFEFA267@eurprd03.prod.outlook.com>
Content-Transfer-Encoding: base64

SGksDQoNClRoYXQgbG9va3MgYSBsb3QgbGlrZSB3aGF0IEkgZ290IHdoZW4gSSB3YXMgc2V0dGlu
ZyB0aGUgJ1BWJyB2YXJpYWJsZSANCmJhc2VkIG9uICdTUkNSRVYnIGluc3RlYWQgb2YgJ1NSQ1BW
Jy4NCg0KTWF5YmUgc3RhcnQgY2hlY2tpbmcgdGhlcmUgOikNCg0KQmVzdCByZWdhcmRzLA0KTWF4
DQoNCk9uIDIwMTktMDItMDggMDk6NDEsIEZlcm5hbmRvIEFFIHdyb3RlOg0KPiBIZWxsbyBHdXks
SSB3b3VsZCBhbHNvIHNheSB0aGF0IHNvbWV0aGluZyBpcyBzdHJhbmdlIHdpdGggdGhlDQo+ICJB
VVRPSU5DIiBpbiB5b3VyIGZpbGUgcGF0aHMsIHVubGVzcyB5b3Ugc2V0IGEgdmFyaWFibGUgbGlr
ZSB0aGF0IG9uDQo+IHB1cnBvc2UuDQo+DQo+IFJlZ2FyZHMsDQo+IEZlcm5hbmRvDQo+DQo+IE9u
IFR1ZSwgRmViIDUsIDIwMTkgYXQgMTA6MjMgQU0gR3V5IE1vcmFuZCA8Z3V5QGd1eS1tb3JhbmQu
Y2g+IHdyb3RlOg0KPj4gU29ycnkgWW9jdG8gZGV2ZWxvcGVycyENCj4+DQo+PiBJIGhhdmUgZm91
bmQgdGhlIGlzc3VlLCBpbiBteSBDTWFrZUxpc3RzLnR4dCwgSSBjaGFuZ2VkIHRoaXM6DQo+PiBz
ZXQoQ01BS0VfQ1hYX0ZMQUdTICItV2FsbCAtV2V4dHJhIC1XZXJyb3IiKQ0KPj4NCj4+IHRvIHRo
aXM6DQo+PiBzZXQoQ01BS0VfQ1hYX0ZMQUdTICIke0NNQUtFX0NYWF9GTEFHU30gLVdhbGwgLVdl
eHRyYSAtV2Vycm9yIikNCj4+DQo+PiBOb3cgaXQgd29ya3MgbGlrZSBhIGNoYXJtLCBzdHVwaWQg
bWUgOkQhIFNvcnJ5IGZvciBhbGwgdGhlIG5vaXNlIQ0KPj4NCj4+IEJlc3QgcmVnYXJkcywNCj4+
DQo+PiBHdXkgTW9yYW5kDQo+Pg0KPj4gT24gMi81LzE5IDg6MjEgQU0sIEd1eSBNb3JhbmQgd3Jv
dGU6DQo+Pg0KPj4+IEhlbGxvIFlvY3RvIGRldmVsb3BwZXJzIQ0KPj4+DQo+Pj4gSSdtIGZhY2lu
ZyBhIHdlaXJkIHByb2JsZW0gdGhhdCBzZWVtcyB2ZXJ5IHN0cmFuZ2UuIEkgY2FuDQo+Pj4gY3Jv
c3MtY29tcGlsZSBhIHByb2plY3QgYmFzZWQgb24gY21ha2Ugd2l0aCB0aGUgZ2VuZXJhdGVkIFlv
Y3RvIFNESy4NCj4+Pg0KPj4+IEhvd2V2ZXIsIGFmdGVyIGFkZGluZyBhIHJlY2lwZSwgdGhlIGNv
bXBpbGF0aW9uIGZhaWxzOg0KPj4+IC9tbnQvc3NkL3lvY3RvLWJ1aWxkLXNjcmlwdC9idWlsZC90
bXAvd29yay9jb3J0ZXhhN3QyaGYtbmVvbi1wb2t5LWxpbnV4LWdudWVhYmkvY29tbXVuaWNhdGlv
bi1saWJyYXJ5L2dpdC1BVVRPSU5DK2Y1Y2Q0OTNjZTUtcjAvcmVjaXBlLXN5c3Jvb3QtbmF0aXZl
L3Vzci9iaW4vYXJtLXBva3ktbGludXgtZ251ZWFiaS9hcm0tcG9reS1saW51eC1nbnVlYWJpLWcr
Kw0KPj4+IC1EY29tbXVuaWNhdGlvbl9pbnRlcmZhY2VfRVhQT1JUUw0KPj4+IC1JL21udC9zc2Qv
eW9jdG8tYnVpbGQtc2NyaXB0L2J1aWxkL3RtcC93b3JrL2NvcnRleGE3dDJoZi1uZW9uLXBva3kt
bGludXgtZ251ZWFiaS9jb21tdW5pY2F0aW9uLWxpYnJhcnkvZ2l0LUFVVE9JTkMrZjVjZDQ5M2Nl
NS1yMC9naXQvbGlicmFyeQ0KPj4+IC1XYWxsIC1XZXh0cmEgLVdlcnJvciAtZlBJQyAgIC1zdGQ9
Z251KysxMSAtTUQgLU1UDQo+Pj4gQ01ha2VGaWxlcy9jb21tdW5pY2F0aW9uLWludGVyZmFjZS5k
aXIvY29tbXVuaWNhdGlvbl9pbnRlcmZhY2UuY3BwLm8NCj4+PiAtTUYNCj4+PiBDTWFrZUZpbGVz
L2NvbW11bmljYXRpb24taW50ZXJmYWNlLmRpci9jb21tdW5pY2F0aW9uX2ludGVyZmFjZS5jcHAu
by5kDQo+Pj4gLW8NCj4+PiBDTWFrZUZpbGVzL2NvbW11bmljYXRpb24taW50ZXJmYWNlLmRpci9j
b21tdW5pY2F0aW9uX2ludGVyZmFjZS5jcHAubw0KPj4+IC1jDQo+Pj4gL21udC9zc2QveW9jdG8t
YnVpbGQtc2NyaXB0L2J1aWxkL3RtcC93b3JrL2NvcnRleGE3dDJoZi1uZW9uLXBva3ktbGludXgt
Z251ZWFiaS9jb21tdW5pY2F0aW9uLWxpYnJhcnkvZ2l0LUFVVE9JTkMrZjVjZDQ5M2NlNS1yMC9n
aXQvY29tbXVuaWNhdGlvbl9pbnRlcmZhY2UuY3BwDQo+Pj4gfCBJbiBmaWxlIGluY2x1ZGVkIGZy
b20NCj4+PiAvbW50L3NzZC95b2N0by1idWlsZC1zY3JpcHQvYnVpbGQvdG1wL3dvcmsvY29ydGV4
YTd0MmhmLW5lb24tcG9reS1saW51eC1nbnVlYWJpL2NvbW11bmljYXRpb24tbGlicmFyeS9naXQt
QVVUT0lOQytmNWNkNDkzY2U1LXIwL2dpdC9jb21tdW5pY2F0aW9uX2ludGVyZmFjZS5jcHA6MToN
Cj4+PiB8DQo+Pj4gL21udC9zc2QveW9jdG8tYnVpbGQtc2NyaXB0L2J1aWxkL3RtcC93b3JrL2Nv
cnRleGE3dDJoZi1uZW9uLXBva3ktbGludXgtZ251ZWFiaS9jb21tdW5pY2F0aW9uLWxpYnJhcnkv
Z2l0LUFVVE9JTkMrZjVjZDQ5M2NlNS1yMC9naXQvbGlicmFyeS9jb21tdW5pY2F0aW9uX2ludGVy
ZmFjZS5oOjQ6MTA6DQo+Pj4gZmF0YWwgZXJyb3I6IHN0cmluZzogTm8gc3VjaCBmaWxlIG9yIGRp
cmVjdG9yeQ0KPj4+IHwgICNpbmNsdWRlIDxzdHJpbmc+DQo+Pj4gfCAgICAgICAgICAgXn5+fn5+
fn4NCj4+PiB8IGNvbXBpbGF0aW9uIHRlcm1pbmF0ZWQuDQo+Pj4NCj4+PiBJIGFsc28gdHJpZWQg
dG8gY2hhbmdlIHRoZSBjbWFrZSBnZW5lcmF0b3IgdG8gdW5peCBtYWtlZmlsZSAod2hvIGtub3dz
DQo+Pj4gLi4uKToNCj4+PiBPRUNNQUtFX0dFTkVSQVRPUiA9ICJVbml4IE1ha2VmaWxlcyINCj4+
Pg0KPj4+IEJ1dCBJIGhhdmUgdGhlIHNhbWUgaXNzdWUuIEkgYW0gd29ya2luZyBvbiB0aGUgdGh1
ZCBicmFuY2guIEFueW9uZSBoYWQNCj4+PiB0aGUgc2FtZSBwcm9ibGVtPyBXaGF0IGFtIEkgZG9p
bmcgd3Jvbmc/DQo+Pj4NCj4+PiBCZXN0IHJlZ2FyZHMsDQo+Pj4NCj4+PiBHdXkgTW9yYW5kDQo+
Pj4NCj4+IC0tDQo+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPj4geW9jdG8gbWFpbGluZyBsaXN0DQo+PiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+
PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCg0K

