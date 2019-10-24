Return-Path: <Oliver.Westermann@cognex.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F03E0E00D6A; Thu, 24 Oct 2019 07:48:41 -0700 (PDT)
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
	*      [40.107.79.128 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-eopbgr790128.outbound.protection.outlook.com [40.107.79.128])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B56E8E00571
	for <yocto@yoctoproject.org>; Thu, 24 Oct 2019 07:48:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=KXP1XMKLWIgt8ObjQxnGOPxcq2CFTTdlkO68HMGgQtOYK/2m6oDV2xtgOvX5z4jXkHg4+T0FnEVUGW2W/t9wohltmk2HGa+1oXKnicMvwkqX85DVpiafe/lt1Hdp4Um+/p8LdvXjdhpKPphsoBe5r6OuYLNifUDHoY48H413cjCqao1DCcNafldA4JvUUjQw91oC9YadNt1Z9B3OEl5t2QurfXRtlCDJPPkV9CjW1D+LMRnNkpRCaOMZoG7SbSZkOr8qGAlrj6z0YhtLk7xMle+vWzby9c840MmcoiBrAwvhztIwZw4pu8xV0vezmMBNQprP9UjE3LCvSO60UMNRsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KIoPKXKzE1e9BPgcv8TPCoPLMp2VMjTLVO7VS2ZvKbc=;
	b=ky0+VnEh45K8yOe6CmH1Eq+7ork0LWaD1136avRf9D1jDrXpbhSbnqfu6xM9JEFkmC6tYDUI9/H7sHmX5kpvpQU80IHtK2fkJd+zBKvaINT7ENCUIFvH2Jklg6Ua6iDjXvwcZSIEktU3XYlLifqFkTx91/PIoJB6Fk+EgPYv855bpDnYME1rsWXeqOPv1hsLcJtKJpULMtPs7shgtzayHPRAbWpDGL/tM/G6rXUmEFusB2WGu8ewQ7gl/gbeLkku58/+rfMTccSNose8eswlhUVzRFqyTD0wKVyc/9rT9t3lx6fREtizuAnlVuJ27Dx65RZ7LxVNoZpdfCEZQev7ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
	smtp.mailfrom=cognex.com; dmarc=pass action=none header.from=cognex.com;
	dkim=pass header.d=cognex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=cognexcorporation.onmicrosoft.com;
	s=selector2-cognexcorporation-onmicrosoft-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KIoPKXKzE1e9BPgcv8TPCoPLMp2VMjTLVO7VS2ZvKbc=;
	b=RYjgsh7yh+RRwdTmN86vkNUOwH2XX7Ny3rk/QWkHPFU6FdgsK8izg/bQ90R66/E8VUwoxh+qfOOWTFjaKk/UXPH3FXQBOTi1kDnVqm8z7V+9NtsQthMvATQ5M9uizCJHtEEhpqWn0YvYtS5x+na8yNoXatiSiVv+0skpvolEk7o=
Received: from BN6PR06MB3138.namprd06.prod.outlook.com (10.174.95.141) by
	BN6PR06MB2530.namprd06.prod.outlook.com (10.173.19.8) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2387.20; Thu, 24 Oct 2019 14:48:38 +0000
Received: from BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791]) by
	BN6PR06MB3138.namprd06.prod.outlook.com
	([fe80::9041:9ac4:2630:4791%5]) with mapi id 15.20.2387.023;
	Thu, 24 Oct 2019 14:48:38 +0000
From: "Westermann, Oliver" <Oliver.Westermann@cognex.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Issues adding bare meta toolchain to yocto build
Thread-Index: AdWKehcoHvv5+TR7Q1y2ythJ3+Jxyw==
Date: Thu, 24 Oct 2019 14:48:37 +0000
Message-ID: <BN6PR06MB31380A486EF6F6A6967622F9866A0@BN6PR06MB3138.namprd06.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Oliver.Westermann@cognex.com; 
x-originating-ip: [212.117.79.11]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6445ce1-842b-474f-c1df-08d758914114
x-ms-traffictypediagnostic: BN6PR06MB2530:
x-microsoft-antispam-prvs: <BN6PR06MB2530CAE4FCED67EE7257FBDD866A0@BN6PR06MB2530.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0200DDA8BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(4636009)(346002)(396003)(39860400002)(366004)(376002)(136003)(199004)(189003)(478600001)(64756008)(66446008)(66476007)(66556008)(55016002)(2906002)(76116006)(9686003)(3846002)(14444005)(6116002)(6506007)(25786009)(26005)(71190400001)(256004)(7696005)(71200400001)(2501003)(99286004)(66946007)(6436002)(52536014)(102836004)(14454004)(8936002)(86362001)(316002)(110136005)(81166006)(81156014)(8676002)(66066001)(5660300002)(33656002)(476003)(4001150100001)(305945005)(486006)(7736002)(74316002)(186003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR06MB2530;
	H:BN6PR06MB3138.namprd06.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cognex.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CTx+yLzxOVLp6NtwpSIFhVeUcG2VENVTM/gg5De6MMX5Uzd2xdFAgOuD2kl6kOjnwHT3svzxITUgtzkJPg4SdcBhyKsAeuu3YkZI3zqKCkSxVSjXWDlsghG9IplPNGIY8+fJd7KS5ReFX9hSen/459Hn/ZUA00KOl6BVpI5ZkxRZz/4esxw83WE53ZKKvEyg3DM0UkyRkAmQ0SCdZKOy0LZN6uE2N4RkADZw6Ux8IOLnXxA61LM21UgOdptv1d+ycxMIG6/PUyCBMfcuEssO3G6LNqGgDwM5EDl1izMU9MY4seUeu5a6vtgnW8AnnaIxeXYs9zplSBuMFbVEi1lGpH+ObVfjftGKkbwKtXAu12UeYRR+VcwWr53u8Fj2HLyGFDH8uPGb7VnUjoYsPbu+jacPyFlSwVCF/TVi8TqbO5N04gxYi9m1j+Ev7FhhWEP2
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: cognex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6445ce1-842b-474f-c1df-08d758914114
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2019 14:48:38.0206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: c12007a4-882b-4381-b05a-b783431570c7
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: aYuCVpLzk4I2qLH4FmXRWdWfhEpAlqBQIX532A6YXg84GH/x/BfHpoMf48DvKpgIGZuwkImdL41vaN/jUEqp8gaSBFUqjLVez7jnHx56N2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR06MB2530
Subject: Issues adding bare meta toolchain to yocto build
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
X-List-Received-Date: Thu, 24 Oct 2019 14:48:42 -0000
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
aGUgbTQgZnVuY3Rpb25hbGl0eS4NCg0KQmVzdCByZWdhcmRzLCBPbGxpDQoNCg==

