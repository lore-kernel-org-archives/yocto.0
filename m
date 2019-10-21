Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5AE82E00AAA; Mon, 21 Oct 2019 09:56:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FORGED_SPF_HELO, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.76.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM02-CY1-obe.outbound.protection.outlook.com
	(mail-eopbgr760105.outbound.protection.outlook.com [40.107.76.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A405E0097C
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 09:56:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=dQRTGMr7sleO9WbzzK0Rf1I8xXbM0eqjE9uFDyXTTLkjrlM2mRNILZLWDfBUNTftqeuJnkRkx8a6Jnrda0yU28kxKSLrW+dn4Lf1Vl5dUunHdXBJXY7WPO9dVT3sqeYpxQMvzCpKcVa80BChJvfBoeIQ+/YfgBV69mRLiWT8km/nwabhxLVkYCcMIHZ1a2/+PT3eyRM6g2jyDKwi/hed6BWRycJZyVvGZESMHblD1wMcjSQfw4u9yGcOpgaCoR5gkwDELubB8MqVAzzujTQm7yE9JTcAqX0vej2lefuWnObNY272rElR9gfiYkL2qs6ztP2/90JHpeL5HEAF/u85ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=a9gjTeokDwFHZj5hQO7cKKPuioLpguwkWFvjkUzTI28=;
	b=SQHEuEuaFf6ZqvOISPiPuCvVmD2WP1C5PXbRtZDGsV0jr9+tu0vyLV9mA3X80vcqJ+03EQynLIDnuJrxinzMpta708yHRkPynkEypp5CpAVJ8KlU9CKPi8GRgZzy/pMvZPVPsFb97vkDobOeEwPRtifi8vyujGS82v6kXMeC0HKIcuY8MCkQHPqeBPSsGFe+AFgYkW6wV4v5T86MfFqRISSfoemf5xkFZP1Zp3qTr7rG/qSYKJimrmh1B9NYZzyPWOFSFMohxuZsaKEtFoe+u776KMxJaZOqZH9NLM72S2aASLTLp1QQ2/e7/yjezn6zuOgZXEiq1dyoMuElBsO3bg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=melinkcorp.com; dmarc=pass action=none
	header.from=melinkcorp.com; dkim=pass header.d=melinkcorp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-Melink-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=a9gjTeokDwFHZj5hQO7cKKPuioLpguwkWFvjkUzTI28=;
	b=FxvvSUV2q99SRdNhZVheT9vzs34DD6W6qcex111nrTuaPfamQJtPx7DGA0sFvlC7rnotJxsplYdlAwsuwQ6WdJCQ1ReKr1htgfIsdSbeIQaRn+IDPK3bD7VMzsxZZVZWunrLUdwphK53/AIT7mHyG1kPmCB3zti1iNAx+KZlYOI=
Received: from DM5PR20MB2119.namprd20.prod.outlook.com (52.132.141.156) by
	DM5PR20MB2037.namprd20.prod.outlook.com (52.132.208.30) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.20; Mon, 21 Oct 2019 16:56:23 +0000
Received: from DM5PR20MB2119.namprd20.prod.outlook.com
	([fe80::fcec:ad68:7caa:346e]) by
	DM5PR20MB2119.namprd20.prod.outlook.com
	([fe80::fcec:ad68:7caa:346e%4]) with mapi id 15.20.2347.029;
	Mon, 21 Oct 2019 16:56:23 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Mark Hatle <mark.hatle@kernel.crashing.org>, Lukasz Zemla
	<Lukasz.Zemla@woodward.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Useradd: crypted passwords longer than 8 characters
Thread-Index: AdWII8O83lIK/EaERgCISMV+Kd5MlAABvb8AAAEJN0A=
Date: Mon, 21 Oct 2019 16:56:23 +0000
Message-ID: <DM5PR20MB2119F615C660C93CE10C4948BB690@DM5PR20MB2119.namprd20.prod.outlook.com>
References: <1a68270af44d45f98e7a1c6d80a1f783@Kemp-ExMb1.woodward.com>
	<1cb846bf-b74c-2c2f-11f0-9b927ea27b7a@kernel.crashing.org>
In-Reply-To: <1cb846bf-b74c-2c2f-11f0-9b927ea27b7a@kernel.crashing.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 549cde0c-a623-47dc-18d0-08d756479ad9
x-ms-traffictypediagnostic: DM5PR20MB2037:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <DM5PR20MB20373D769133E61B80115563BB690@DM5PR20MB2037.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 0197AFBD92
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(366004)(136003)(39840400004)(376002)(396003)(346002)(15594002)(41034003)(199004)(189003)(504964003)(13464003)(81156014)(71190400001)(81166006)(74316002)(8676002)(71200400001)(316002)(14454004)(8936002)(66556008)(64756008)(66446008)(66946007)(66476007)(305945005)(110136005)(2906002)(86362001)(33656002)(966005)(5660300002)(52536014)(99286004)(14444005)(76176011)(7696005)(446003)(256004)(476003)(6246003)(11346002)(26005)(6506007)(2501003)(186003)(229853002)(6306002)(76116006)(102836004)(55016002)(486006)(6436002)(25786009)(478600001)(53546011)(9686003)(148743002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR20MB2037;
	H:DM5PR20MB2119.namprd20.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iyrkgB0fFbWjT6cMumpDIvWURqBQtOnb3DVBIZYdBTb9pByUHS0wx4eNvSAFv7LAYrnlNGTDW1AWK8Pq0lApJHWrSeEWcSmEH5D1H8ILlpNXe3b3lF0Vmf9ha5sSDdXqB7+3fkvEb77mR+WXxjQkopKQPwTNPwqs3cFWyA10rr+UjkwMjoI4UvIgpW2u8wkOZJoP2kxTlQBOccax9kh8EWuqDwUqgMXjLlaoQvajahxV7UsFVG11lpvRL6HAoFmtAUwp/0+QzJIoLOKw/N5wcJWY2IDuVEZNAP3E4PhG56neAL0kNM2+sj9QI7ike/OF0RxvZYW6sMYYWkKSEi0TcPkS0I8bzNpVQRVO8lu9/Na5l/pbdKkvfuiMSLSaSWQ7jwYcpXA3yhNEJESwdFsapI1REdHcgWm6XvXJ2cLhcJ/UzDuU+t20Kk8OoZssVwYaTJMwdAz1xXXfZfIwnCiOkVhJGWd5mTeeTpmFlJfB0h8=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 549cde0c-a623-47dc-18d0-08d756479ad9
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2019 16:56:23.5690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YpHchUHnF4mB/wsahQYVPCtqbVnPLdfSkyUvDZwwsw0yryahmEmLAu922QcNGcE7jR3dYaETh26rJFf4pWWakw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR20MB2037
Subject: Re: Useradd: crypted passwords longer than 8 characters
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
X-List-Received-Date: Mon, 21 Oct 2019 16:56:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

THVrYXN6LA0KDQpZb3UgY2FuIHVzZSB0aGUgdGhlIEVYVFJBX1VTRVJfUEFSQU1TIHZhcmlhYmxl
IGluIHlvdXIgaW1hZ2UgcmVjaXBlOiBodHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3Mv
Y3VycmVudC9tZWdhLW1hbnVhbC9tZWdhLW1hbnVhbC5odG1sI3JlZi1jbGFzc2VzLWV4dHJhdXNl
cnMuICBCb3RoIHVzZXJtb2QgYW5kIHVzZXJhZGQgdGFrZSBhIHBsYWludGV4dCBwYXNzd29yZCB3
aXRoIHRoZSAtUCBvcHRpb24sIGJ1dCBJIGJlbGlldmUgdGhlIHBhc3N3b3JkIGlzIHRoZW4gZW5j
cnlwdGVkIHByaW9yIHRvIGJlaW5nIHNhdmVkIGluIC9ldGMvc2hhZG93LiAgVGhlbiB5b3UnbGwg
bmVlZCB0byBmb2xsb3cgcHJvcGVyIHByZWNhdXRpb25zIHRvIGVuc3VyZSB5b3VyIGltYWdlIHJl
Y2lwZSBzdGF5cyBzZWNyZXQgc2luY2UgaXQnZCBpbmNsdWRlIHRoZSBwbGFpbnRleHQgcGFzc3dv
cmQuDQoNCi1Ccnlhbg0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IHlv
Y3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qu
b3JnPg0KPiBPbiBCZWhhbGYgT2YgTWFyayBIYXRsZQ0KPiBTZW50OiBNb25kYXksIE9jdG9iZXIg
MjEsIDIwMTkgMTI6MTUgUE0NCj4gVG86IEx1a2FzeiBaZW1sYSA8THVrYXN6LlplbWxhQHdvb2R3
YXJkLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10g
VXNlcmFkZDogY3J5cHRlZCBwYXNzd29yZHMgbG9uZ2VyIHRoYW4gOCBjaGFyYWN0ZXJzDQo+IA0K
PiBDcnlwdCB0aGUgcGFzc3dvcmQgeW91cnNlbGYgYW5kIHBhc3MgaXQgaW4gdG8gdGhlIGFkZHVz
ZXIgY29tbWFuZC4NCj4gDQo+IC0tTWFyaw0KPiANCj4gT24gMTAvMjEvMTkgMTA6MjUgQU0sIEx1
a2FzeiBaZW1sYSB3cm90ZToNCj4gPiBXaGF0IGlzIHRoZSBiZXN0IHdheSBpbiBZb2N0byAod2Fy
cmlvcikgdG8gYWRkIGNyeXB0ZWQgcGFzc3dvcmQgdG8NCj4gL2V0Yy9zaGFkb3cgZHVyaW5nIGJ1
aWxkdGltZT8NCj4gPg0KPiA+IFVzaW5nIHVzZXJhZGQuYmJjbGFzcyBpbiBhIHN0YW5kYXJkIHdh
eSB3ZSBtYXkgYWRkIG9ubHkgcGFzc3dvcmRzIDw9IDgNCj4gY2hhcmFjdGVycy4NCj4gPiAiLXAi
IHBhcmFtZXRlcnIgZm9sbG93ZWQgYnkgdGhlIG91dHB1dCBvZiAib3BlbnNzbCBwYXNzd2QgLWNy
eXB0DQo+IHBBc3N3T3JkIiB3b3JrcyBmaW5lLg0KPiA+DQo+ID4gSSB0aG91Z2h0IHRoYXQgY2xh
c3MgbWF5IGJlIGNoZWF0ZWQgYnkgcHJvdmlkaW5nIGFmdGVyICItcCIgc3RyaW5nIHJldHVybmVk
DQo+IGJ5ICJvcGVuc3NsIHBhc3N3ZCAtNiB2ZXJ5bG9uZ3BBc3N3T3JkIiwgYnV0IGl0IGRvZXMg
bm90IHdvcms6IHRoZQ0KPiBwYXNzd29yZCBpbiAvZXRjL3NoYWRvdyBmaWxlIGlzIHRydW5jYXRl
ZDoNCj4gPg0KPiA+IG15dXNlcjovRDE2M0dvZkNWRXBNZ1oudzJSbzNaLmI1UzhYVDE6MTgxOTA6
MDo5OTk5OTo3Ojo6DQo+ID4NCj4gPiBBbnkgc3VnZ2VzdGlvbnM/DQo+ID4NCj4gPiBUaGFuayB5
b3UgaW4gYWR2YW5jZS4NCj4gPiBMdWthc3ogWmVtbGENCj4gPg0KPiA+ICoqKg0KPiA+IFRoZSBp
bmZvcm1hdGlvbiBpbiB0aGlzIGVtYWlsIGlzIGNvbmZpZGVudGlhbCBhbmQgaW50ZW5kZWQgc29s
ZWx5IGZvciB0aGUNCj4gaW5kaXZpZHVhbCBvciBlbnRpdHkgdG8gd2hvbSBpdCBpcyBhZGRyZXNz
ZWQuwqDCoElmIHlvdSBoYXZlIHJlY2VpdmVkIHRoaXMgZW1haWwgaW4NCj4gZXJyb3IgcGxlYXNl
IG5vdGlmeSB0aGUgc2VuZGVyIGJ5IHJldHVybiBlLW1haWwsIGRlbGV0ZSB0aGlzIGVtYWlsLCBh
bmQgcmVmcmFpbg0KPiBmcm9tIGFueSBkaXNjbG9zdXJlIG9yIGFjdGlvbiBiYXNlZCBvbiB0aGUg
aW5mb3JtYXRpb24uDQo+ID4gKioqDQo+ID4NCj4gLS0NCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0DQo+IHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3Rp
bmZvL3lvY3RvDQo=

