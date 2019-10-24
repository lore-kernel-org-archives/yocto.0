Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30677E00DFC; Thu, 24 Oct 2019 08:37:37 -0700 (PDT)
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
	*      [40.107.77.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr770118.outbound.protection.outlook.com [40.107.77.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74B47E00D4F
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 08:37:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=h1MNO+BO5W56DjHVTDnt7CvL/NZTbXanYV9SF1NFE2HqafAzNR/xti+b6tJztw6zr6+w8TXrRSY8LyHTNwEBQjDFQjyu0EAPYs4gAxq21vv66CRZIXtzI3mW1pIDia5o+69rj8tsWsVj4Yif9mF62vOybuNW8F4URa0OHNPORTsPosDGrbxLBRSwPHAIhDp0Gtw/+8VmdnLmxMUTrL/R+R7INyyxKboXGt6bb9kXTu3zB1Si9m6m89x2GhdNgZWKKj7y6Jo4MQT4GXktnXP/P5d1knxPd4m9WVGKKBNn6Ec2oAZ+c7xAK95lcrA61N1U1irt/RGkgQY6g+3J5djUzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=vh7KT38+2ETaU1ZuHri2ZDzALApKqkHotEQCCvu24j8=;
	b=KUwiy/VSDy67o3Hh1Izw4mX/OZ+y2zidqDWLZrp2lzJ5zVG6viHA2sHdXzbUKiGRGKEtZpyFib9M36A5DsrAl8RQ74+CsZHxignf7Tts3EIVuCsiB8BOftQ/zbKiIrca0clMI9HQH6yr6nVploGNhM4p3unWufMRNdG82ZsYfbVc1vKDHgBXTz7S9o/y0wv9mnx9jlAQU+fXJ80r0iSCFVg9BZ25bBF3kXJEyC9a6J74YqNPMlR0bVpMM01vEyWa2gDqcy3wyqYsH3ApQk0TomRSF15Oqfn6UHuK8xdh42i4gnCDyBhl1d/7MRMuF0qo7TdTbSgKTZsV8QVqZOTJ5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
	dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com;
	s=selector2-cognexcorporation-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=vh7KT38+2ETaU1ZuHri2ZDzALApKqkHotEQCCvu24j8=;
	b=HcbLXDYulPO3JyQQ/BD8VaxY14FWE1173Fhblldtjv2Kyut1j8PBAVRNrNbc5/UHS96HncVLKUFkOQKcunKvJMzeoIH+6aVP2AX5VbWBVUraXLgI3gCMq6SiWzClNlL2h+RodTdyYH9YTWjHOZD05UGWzuv788ytpbTSDegqNdI=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB2801.namprd06.prod.outlook.com (10.175.131.138) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.22; Thu, 24 Oct 2019 15:37:34 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791]) by
	BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791%5]) with mapi id 15.20.2387.023;
	Thu, 24 Oct 2019 15:37:34 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: William Mills <wmills@ti.com>, "richard.purdie@linuxfoundation.org"
	<richard.purdie@linuxfoundation.org>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Dmytriyenko, Denys" <denys@ti.com>
Thread-Topic: [yocto] [EXTERNAL] Re: Issues adding bare meta toolchain to
	yocto build
Thread-Index: AQHVinD5Nw1A+K9BrU6fnqAAex3tJqdp0o6AgAAHwACAABKqIA==
Date: Thu, 24 Oct 2019 15:37:34 +0000
Message-ID: <BN6PR06MB3138924730BC280E950B0549866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
References: <BN6PR06MB313849AD19D69C793421AE90866B0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<9856cb73d6b59b77d4d0682dfd2bead31d26ba2c.camel@linuxfoundation.org>
	<BN6PR06MB313818F72FAB043D8AB49765866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
	<e0e504f3013981d9dfb31ef0428cdf8f1aabb22b.camel@linuxfoundation.org>
	<95316727-6a1c-42fa-5cb3-f6d79ee4edf6@ti.com>
	<f95fb29cf51372495e0a604b5e830a0152dbdd13.camel@linuxfoundation.org>
	<03c8c0c5-c897-acd7-4236-00cd384c9162@ti.com>
In-Reply-To: <03c8c0c5-c897-acd7-4236-00cd384c9162@ti.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e8c17740-b315-45ae-2d7e-08d758981738
x-ms-traffictypediagnostic: BN6PR06MB2801:
x-microsoft-antispam-prvs: <BN6PR06MB2801610B6D46B45E8F56F6C3866A0@BN6PR06MB2801.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(376002)(366004)(346002)(396003)(39860400002)(136003)(199004)(189003)(66556008)(66476007)(66446008)(64756008)(86362001)(476003)(305945005)(486006)(446003)(9686003)(71200400001)(71190400001)(33656002)(5660300002)(52536014)(2906002)(6436002)(55016002)(2201001)(66946007)(11346002)(14454004)(4326008)(25786009)(478600001)(2501003)(4001150100001)(6116002)(3846002)(66066001)(14444005)(256004)(76116006)(99286004)(110136005)(26005)(186003)(102836004)(76176011)(7696005)(6506007)(316002)(8936002)(7736002)(81156014)(81166006)(8676002)(74316002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB2801;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IudxdiAbXml6q7KswbY174mZQvmJxJ5SGqm9HQ7Naw5lNXguO95qsoVxC2fzlvS986RR170h0GAyXL3lkrZmpOkiDFe6RS+QM0b8P349jUiqD/DbaFBjwpMlyx46sAaUp3+uk7f1ky/9gNbNcfaCCZQe56H5mo/5E6dfb0n17XwJdUw+7EVzMFa+BBxVvCsz5kXsJBtOTyVEXnGqY9IKk0MirYLzztm//0dVUpX96EbRQ5xpBRLPUpF6tnhFXjkSrn6Y761/dx4XC4lC9LGjOtpV69fU3CmGGCipS83MhQr2oCtnad+r/q2r0edZ2+fAEawTqO0lXY1gkZVUwuyH1CdoG6LgjF+PK3OhYznT42wgFCnQFi34vjyM8JQhixFJeNcFhXnHCd76onOv9yyacJVBqf4oWwMAarnR7XISl07T0YEW9F2PM/A0is/zuI2i
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e8c17740-b315-45ae-2d7e-08d758981738
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 15:37:34.2526 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UlE8vupnaQfa9OgPkIiwWt9IfwoUAcArTBYVTZlbh8sKCcJtUKGgHcEFEIP/3XoHLIkF1BRMxaLD8+Z//b+f/VfkHz+DWdsHF2qDwnZmbd8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB2801
Subject: Re: [EXTERNAL] Re: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Thu, 24 Oct 2019 15:37:38 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBPbiBUaHUsIDIwMTktMTAtMjQgYXQgMDQ6MDEgKzAwMDAsIFJpY2hhcmQgUHVyZGllIHdyb3Rl
Og0KPiBJZiBpdHMgYSBuYXRpdmUgcmVjaXBlLCB0aGVyZSBhcmUgbm8gcGFja2FnZXMgYW5kIHRo
ZXJlZm9yZSBGSUxFUw0KPiBkb2Vzbid0IG1ha2Ugc2Vuc2UuDQoNCk9oLCBJIGhhdmUgdG8gYWRt
aXQgSSdtIHByZXR0eSBuZXcgdG8gdGhlIGNvbmNlcHQgb2YgdGhlIG5hdGl2ZSBwYWNrYWdlcy4N
CldoZXJlIGNhbiBJIGZpbmQgdGhlIGxpc3Qgb2YgZmlsZXMgdGhhdCBhcmUgY29uc2lkZXJlZCB0
byBiZSBpbnN0YWxsZWQgaW50bw0KYSAibmF0aXZlIiBwYWNrYWdlcyBzeXNyb290Pw0KDQpBbiBn
b29kIG9wdGlvbiBmb3IgbWUgd291bGQgYmUgdG8gZWcuIGluc3RhbGwgdGhlIHRvb2xjaGFpbiBp
bnRvIHRoZSBuYXRpdmUNCnN5c3Jvb3RzIC9vcHQvIGRpciBmb3IgdXNhZ2UgYnkgb3RoZXIgcmVj
aXBlcy4NCg0KPiBDYW4geW91IGNvbmZpcm0gdGhhdCByZWNpcGUgZG9lcyB3b3JrPw0KDQpGb3Ig
dGhlIFRJIHJlY2lwZSwgbm8sIEkgY2FuJ3QuIEkgZm91bmQgaXQgb25saW5lIGFuZCB1c2VkIGl0
IGFzIGEgZ3VpZGUgZm9yDQpteSBmaXJzdCBzdGVwcyBvbiB0aGUgdG9waWMuDQoNCg0KPiBJZiB5
b3UgaW5zdGFsbCB0aGUgYmluYXJpZXMgaW50byAke2JpbmRpcn0gdGhleSB3aWxsLiBJZiB5b3Ug
cGxhY2UgdGhlbQ0KPiBzb21ld2hlcmUgZWxzZSB3aGljaCB0aGUgc3lzdGVtIGRvZXNuJ3Qga25v
dyBhYm91dCwgdGhleSBwcm9iYWJseQ0KPiB3b24ndC4NCj4gDQo+IFRoZXJlIGFyZSB3YXlzIHRv
IG1ha2UgYWx0ZXJuYXRpdmUgbG9jYXRpb25zIHdvcmsgYnV0IEkgZG9uJ3Qgc2VlIGFueQ0KPiBv
ZiB0aGF0IGluIHRoZSBhYm92ZSByZWNpcGUuDQoNCkNhbiB5b3UgcG9pbnQgbWUgdG8gdGhlc2Ug
d2F5cz8gOikNCg0KPiBUaGVyZSBpc24ndCBhbnl0aGluZyB0aGF0IHNwZWNpYWwgYWJvdXQgYSBi
YXJlbWV0YWwgY29tcGlsZXIgZXhjZXB0IGl0DQo+IHNldHMgc29tZSBkaWZmZXJlbnQgZGVmYXVs
dCBmbGFncyBhbmQgaXMgbWlzc2luZyB0aGUgbGlicmFyeSBzdXBwb3J0Lg0KDQpJIGFncmVlLCB0
aG91Z2ggdXNpbmcgbGluYXJvIGhhcyB0aGUgYmVuZWZpdCB0aGF0IHdlIHdvdWxkIHVzZSB0aGUg
c2FtZQ0KdG9vbGNoYWluIGluIHlvY3RvIGFzIGluICJyZWd1bGFyIGRldmVsb3BtZW50IiBvZiB0
aGUgbTQgZnVuY3Rpb25hbGl0eS4NCg0KQmVzdCByZWdhcmRzLCBPbGxpDQo=

