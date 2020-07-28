Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.13046.1595945925750320752
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Jul 2020 07:18:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intertechengineering.onmicrosoft.com header.s=selector2-intertechengineering-onmicrosoft-com header.b=B2Lj53CP;
 spf=fail (domain: inea.com, ip: 140.211.169.56, mailfrom: sdw@inea.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AD5AE01E9B; Tue, 28 Jul 2020 07:18:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_SPF_HELO,RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [40.107.220.112 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2112.outbound.protection.outlook.com [40.107.220.112])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E22E01E8D
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2020 07:18:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X2vL3txf1aVHYZbmNZaS12pC+XAjTI0YKR9VEGsXpHULe0infx6qedfw25L3R7BNZJ2HgbRBKTzWmn/A4DW0hdJLmIzhWk8x4WrB69rImGxcE+laTRTD/nIeFjpv+3dmjdMJQOvbDviJEPrLEHvUTalZ+pfHI6KYm60XU22fBKMPdMBqpipFBVIPHqV04PkSoPNNq8tSLcRvr4uscKXYpzGzPBH5mdwxFSLp1iybTel/xsLsXetF/gf97kpfA7agcR1n96xdSLyLzHwJ7MSzZGD5JaKGKv4CCniIQgozJqOqBDKZwiFUcok2klSklbOmYBu+B5qpV+qd9rgb8rtmDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/f/QqpVgt8GDK5LJjpodUA2rgoFXwGdsS2VdaJ/30s=;
 b=JG6D0fFwxuJzH4j4o8NQYN2ZY+Kjk172CVMm3On4BKCVNGPNC0yi+UHxoUHeA7cq0gIvvc8waVkOjehDwi+L929egFQQRTx4nX9263b2wUVUr/Iwxs+/InIk4xyZOsCM5OkoDHomZXFya6FnPRnHxzX4olC86jd4ZklcNtflRmSmFj8q8KMZOsiUqdOu/8F+gT8t/jXQTiATj/LUk5XX8ngPaySO4afUIKrgnvXjgJpBHY76/7UE3tdl+7bImqbrKb6MLBALovtOFkjiOx/yUsNxlHSJSyyCm+p1iGRnfkASv9a+nTMq5XAiKhyVrft8GLmL7h68uwY0g+kL9w2iCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=inea.com; dmarc=pass action=none header.from=inea.com;
 dkim=pass header.d=inea.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intertechengineering.onmicrosoft.com;
 s=selector2-intertechengineering-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8/f/QqpVgt8GDK5LJjpodUA2rgoFXwGdsS2VdaJ/30s=;
 b=B2Lj53CP1Ntty5cD10NCj+9mmhHE4GKrzuPi3zTflYwE2qOsmWrWqMN6rV+lS6bvSWszHaOKEj9+MQDZ1CqnYcRvqKZY7AD7p1f++kYYPzrN0KAvCxvbl8lLc8LFfDhRrgRG2anmyZ4kWHrMBjd8bTxlGv45bRIj3h0OmMJTTQI=
Received: from MN2PR17MB3024.namprd17.prod.outlook.com (2603:10b6:208:e3::18)
 by MN2PR17MB4000.namprd17.prod.outlook.com (2603:10b6:208:1f5::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.23; Tue, 28 Jul
 2020 14:18:41 +0000
Received: from MN2PR17MB3024.namprd17.prod.outlook.com
 ([fe80::879:1263:40db:4543]) by MN2PR17MB3024.namprd17.prod.outlook.com
 ([fe80::879:1263:40db:4543%5]) with mapi id 15.20.3216.033; Tue, 28 Jul 2020
 14:18:41 +0000
From: "Scott Whitney" <sdw@inea.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
CC: Bruce Ashfield <bruce.ashfield@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Subject: Re: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
Thread-Topic: [yocto] How to enable preempt-rt in Yocto Zeus or Warrior?
Thread-Index: AdZkTy0e0WXgeqKER/megdrmqDgR/QANDX4AABZQMcAAAtpTgAAAGgzw
Date: Tue, 28 Jul 2020 14:18:41 +0000
Message-ID: 
 <MN2PR17MB30245CF7109A455943CB5DE9D6730@MN2PR17MB3024.namprd17.prod.outlook.com>
References: 
 <MN2PR17MB3024CFBE1455A8B37E1D5FD7D6720@MN2PR17MB3024.namprd17.prod.outlook.com>
 <CADkTA4MBSrRjgQQbnN=4XMhxVTB=b0RdH74zNPCb8pEwhg2GsA@mail.gmail.com>
 <MN2PR17MB30248E9C96341B99C68CC4BBD6730@MN2PR17MB3024.namprd17.prod.outlook.com>
 <CAGAf8LzT4EMXEmdbOLzNvoGA4_jE1J2-DOQB6UbXh=ZJdOPNeA@mail.gmail.com>
In-Reply-To: 
 <CAGAf8LzT4EMXEmdbOLzNvoGA4_jE1J2-DOQB6UbXh=ZJdOPNeA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=none action=none header.from=inea.com;
x-originating-ip: [2601:191:8500:6a70:1147:9dbc:bfba:ab41]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 198418ce-c4bc-48e8-b800-08d8330120ed
x-ms-traffictypediagnostic: MN2PR17MB4000:
x-microsoft-antispam-prvs: 
 <MN2PR17MB4000D04FE832AD47F06EF095D6730@MN2PR17MB4000.namprd17.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 
 ADBgtn6cTk5iIuZy7+J2r7orht8R9tT1cVN1ONWdHdYcH2ufJc7vBaiTZlxfBwSE9umQ6BZ+vma+cqBDVokBO/XdGoZbmhG/Osre7xugJTH8ZcAVDJHmZDZnwGE/EqV8B9JEyW3l6Ko58X2N05GY9CCfEE07gC6VeE6sbBpsmTQLNT+70elqqnyPjDrZqewFqEnTNAd5C1ksLaOp0y5iomG5KG1tzxURYgej3kgzikBtzihZPTbljtxuqjcDgqyv4TybBP82yKwU+P/0QUjCVW2eMaE2FmFvqF4ElMCScQNUPGFRA3aqqB2Ld18wdGxCOpNEdIBZl/GpRqX2n72W+aT9/2bJ1e3drY9rBJTgQ4EkLU8Daen6cR5Hrx6ups1l4ZYZQAu46PY+1P1yvsLXgQ==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR17MB3024.namprd17.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(136003)(396003)(346002)(366004)(376002)(39830400003)(83380400001)(53546011)(6506007)(186003)(7696005)(966005)(8676002)(8936002)(86362001)(33656002)(6916009)(316002)(4326008)(5660300002)(55016002)(76116006)(66446008)(66946007)(9686003)(66476007)(64756008)(52536014)(66556008)(54906003)(2906002)(508600001)(71200400001)(15974865002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: 
 O+c9tpxKICOZ0Pr7yCmRS/zoIzUDFSPXM1ucU8vwCMYRIAj44AC9c4CT8/eHxlW1g4dyZxQgK9mLvsB2wo5OcFA85aWGZzmQAyFORW3mZFFT/xsdyhFx7YWsp38l43vz+MzR/eSOwxRvrbqjDpBMI2bJ+nZmK+H4LZ18arCRzZsLmRcdwJJpahcmh+JjiEUYqcTYFRUhS0dkxmoelYDMyYC/b5X/GqnyVdyE+MU2MksoMxFSAknnxmaEvybbqIYe7oSjJWA6UKRHIeG3GCMBtyRwGzPCvvY+nEoz12apoYTjmF8u8BX9VgQIf7DD04/dzLcfunhH3WQX0NQrQVWHB90PXmmSBa88lK83W+yhSxusNVQDYXUxonECEscbr+Wk7JD9kxVdqvUy3nU4Us9eb3z8xjfydNp8T+6pNlVQXL4zOv6PYFJcDc7uTvSV3UiVa/a4c9b4CuHUQ+ztuzGd7loW10ErmcUXDNzsboUxQFj/4sxZ+/R44vJqI4qtZ/WIwswYAiecX0a2Du4b9T0N4T5PrgN4WiXWICkdAhHBGqssWccX85ipTB0Ygxc+Hoau
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: inea.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR17MB3024.namprd17.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 198418ce-c4bc-48e8-b800-08d8330120ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jul 2020 14:18:41.2159
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 99c11015-7dbb-4c7c-ae43-1a26885adc83
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K/jlhXR4+qVPjIJiFUFetLDewA6gtxRImceBVwjxNlBwJcX6KVXQURNJ9ly+nbii
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR17MB4000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgWm9yYW4sDQoNClRoYW5rIHlvdSBmb3IgcmVzcG9uZGluZy4gIEkgY29uZmVzcyBJIGFtIHN0
aWxsIG5ldyB0byBidWlsZGluZyBMaW51eCB3aXRoIFlvY3RvLCBzbyBzb21lIG9mIHlvdXIgc3Rl
cHMgbWF5IHNlZW0gb2J2aW91cywgYnV0IGFyZSBhIGJpdCBjb25mdXNpbmcgdG8gYSAnbmV3Ymll
Jy4NCg0KSSBhbSB1c2luZyBub3JtYWwgWW9jdG8gaW5zdHJ1Y3Rpb24gcHJvdmlkZWQgYnkgVmFy
aXNjaXRlIHRvIGJ1aWxkIG91ciByb290ZnMsIFUtQm9vdCwgYW5kIGtlcm5lbC4gIEhvd2V2ZXIs
IEkgYW0gbm90IGRvaW5nIGFueXRoaW5nIHNwZWNpYWwgdG8gYnVpbGQgYW4gcnQta2VybmVsLCBh
bmQgdGhhdCBpcyB3aGF0IEkgYW0gdHJ5aW5nIHRvIGZpbmQgb3V0IGhvdyB0byBkby4NCg0KRm9y
IGV4YW1wbGUsIGFmdGVyIGRvd25sb2FkaW5nIGFuZCBpbnN0YWxsaW5nIHByZXJlcXVpc2l0ZSBl
eGVjdXRhYmxlcywgSSBpbml0aWFsaXplIG91ciByZXBvIChleGFtcGxlIGlzIGZvciBZb2N0byBX
YXJyaW9yLCBidXQgc2ltaWxhciBmb3IgWW9jdG8gWmV1cyk6DQoNCiQgcmVwbyBpbml0IC11IGh0
dHBzOi8vZ2l0aHViLmNvbS92YXJpZ2l0L3ZhcmlzY2l0ZS1ic3AtcGxhdGZvcm0uZ2l0IC1iIGZz
bC13YXJyaW9yIC1tIGlteC00LjE5LjM1LTEuMS4wLXZhcjAxLnhtbA0KJCByZXBvIHN5bmMgLWo0
DQoNClRoZW4gSSBjb25maWd1cmUgb3VyIG1hY2hpbmUsIGRpc3RybywgYW5kIGJ1aWxkIGRpcmVj
dG9yeToNCg0KJCBjZCB+L3Zhci1mc2wteW9jdG8NCiQgTUFDSElORT1pbXg4bW0tdmFyLWRhcnQg
RElTVFJPPWZzbC1pbXgteHdheWxhbmQgLiB2YXItc2V0dXAtcmVsZWFzZS5zaCAtYiBidWlsZF94
d2F5bGFuZA0KDQpUaGVuIEkgYW0gaW4gdGhlIGJ1aWxkX3h3YXlsYW5kIGRpcmVjdG9yeSwgYW5k
IGNyZWF0ZSBvdXIgU0QgY2FyZCBpbWFnZSB1c2luZzoNCg0KJCBiaXRiYWtlIGZzbC1pbWFnZS1x
dDUNCg0KVGhlIFNEIGNhcmQgaW1hZ2UgZW5kcyB1cCBpbiB0aGUgYnVpbGRfeHdheWxhbmQvdG1w
L2RlcGxveS9pbWFnZXMgZGlyZWN0b3J5LCBhbmQgSSB1c2UgdGhlIGZvbGxvd2luZyB0byBmbGFz
aCB0aGUgU0QgY2FyZDoNCg0KIyBGb3IgZnNsLWltYWdlLXF0NSBpbWFnZSAoUXQ1LVhXQVlMQU5E
ICYgUXQ1LVdBWUxBTkQpDQokIHpjYXQgdG1wL2RlcGxveS9pbWFnZXMvaW14OG1tLXZhci1kYXJ0
L2ZzbC1pbWFnZS1xdDUtaW14OG1tLXZhci1kYXJ0LnNkY2FyZC5neiB8IHN1ZG8gZGQgb2Y9L2Rl
di9zZFggYnM9MU0gY29udj1mc3luYw0KDQpXaGF0IHN0ZXBzIGFyZSB5b3Ugc3VnZ2VzdGluZyB0
byBjb25maWd1cmUgcnQtbGludXg/ICBJIHdvdWxkIGFwcHJlY2lhdGUgaXQgaWYgeW91IGNvdWxk
IGJlIHNwZWNpZmljLCBzaW5jZSBzb21lIG9mIHRoZSBzdGVwcyBpbnZvbHZlZCBhcmUgbmV3IHRv
IG1lLg0KDQpJIGhhdmUgYWxyZWFkeSBhZGRlZCBhIC5iYmFwcGVuZCBmaWxlIHRvIG1vZGlmeSB0
aGUgZGV2aWNlIHRyZWUgZm9yIG91ciBhcHBsaWNhdGlvbiwgYW5kIGhhdmUgcnVuIGJpdGJha2Ug
LWMgbWVudWNvbmZpZyB2aXJ0dWFsL2tlcm5lbCB0byB1cGRhdGUgdGhlIGtlcm5lbCBjb25maWd1
cmF0aW9uLg0KDQpUaGFua3MgZm9yIHlvdXIgYXNzaXN0YW5jZSBhbmQgdG9sZXJhbmNlIGZvciBt
eSBpbmV4cGVyaWVuY2VkIHF1ZXN0aW9ucy4NCg0KU2NvdHQgRC4gV2hpdG5leQ0KDQpzZHdAaW5l
YS5jb23CoMKgwqDCoHzCoMKgwqDCoCBUOsKgNzgxLTgwMS0xMTUywqDCoMKgwqB8wqDCoMKgwqAg
RjrCoDc4MS04MDEtMTEwOMKgwqDCoMKgfMKgwqDCoMKgIHd3dy5pbmVhLmNvbQ0KDQotLS0tLU9y
aWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogWm9yYW4gU3RvanNhdmxqZXZpYyA8em9yYW4uc3Rv
anNhdmxqZXZpY0BnbWFpbC5jb20+IA0KU2VudDogVHVlc2RheSwgSnVseSAyOCwgMjAyMCAxMDow
NSBBTQ0KVG86IFNjb3R0IFdoaXRuZXkgPHNkd0BpbmVhLmNvbT4NCkNjOiBCcnVjZSBBc2hmaWVs
ZCA8YnJ1Y2UuYXNoZmllbGRAZ21haWwuY29tPjsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3Vi
amVjdDogUmU6IFt5b2N0b10gSG93IHRvIGVuYWJsZSBwcmVlbXB0LXJ0IGluIFlvY3RvIFpldXMg
b3IgV2Fycmlvcj8NCg0KSGVsbG8gU2NvdHQsDQoNCkkgaGF2ZSBhIGJpdCBvZiBhIGRpZmZlcmVu
dCBpZGVhIGFib3V0IHRoZSB3aG9sZSBZT0NUTyBwcm9jZXNzLg0KDQpMZXQgbWUgc3VnZ2VzdCBz
b21ldGhpbmcgZWxzZSwgYWN0dWFsbHkgYSBoeWJyaWQgY29tYmluYXRpb24gb2YgdGhlIFlPQ1RP
IGJ1aWxkIHN5c3RlbS4NCg0KWW91IGNhbiBkbyB0aGUgd2hvbGUgcHJvY2VzcyBvZiBZT0NUTywg
YnV0IHdoeSBkbyB5b3Ugbm90IHVzZSBjb21wb25lbnRzIG91dCBvZiB0aGUgWU9DVE8gYnVpbGRp
bmcgcHJvY2Vzcz8NCg0KRm9yIGV4YW1wbGUsIHlvdSBjYW4gdXNlIHJvb3RmcyBidWlsdCBieSBZ
T0NUTywgYW5kIFUtQm9vdCBhbmQgcnQta2VybmVsIGJ1aWx0IG91dCBvZiB0aGUgWU9DVE8sIGZv
ciB0aGUgYmVnaW5uaW5nPw0KDQpUaGVuLCBhcyBhbiBvcHRpb24sIGlmIHlvdSBhcmUgc2F0aXNm
aWVkIHdpdGggdGhlIHJlYWNoZWQgYXJjaGl0ZWN0dXJlLCB5b3UgY2FuIHdyaXRlIHlvdXIgb3du
IHJlY2lwZSBmb3IgdGhlIHJ0LWtlcm5lbCAoeW91IG5lZWQgdG8gaW5jb3Jwb3JhdGUgYSBidW5j
aCBvZiBwYXRjaGVzIGludG8gdGhlIHJ0LWtlcm5lbCBwcm9wcmlldGFyeSByZWNpcGUpLg0KDQpa
b3Jhbg0KX19fX19fXw0KDQoNCk9uIFR1ZSwgSnVsIDI4LCAyMDIwIGF0IDI6NDUgUE0gU2NvdHQg
V2hpdG5leSA8c2R3QGluZWEuY29tPiB3cm90ZToNCj4NCj4gSGkgQnJ1Y2UsDQo+DQo+DQo+DQo+
IFllcywgd2UgYXJlIHVzaW5nIExpbnV4IGJ1aWx0IGJ5IFlvY3RvLCBidXQgd2hlcmUgaXMgdGhl
IHByZWZlcnJlZCBwcm92aWRlciBmb3IgdGhlIGtlcm5lbCBzZXQgdG8gbGludXgteW9jdG8tcnQ/
DQo+DQo+DQo+DQo+IFRoYW5rcyBmb3IgeW91ciBoZWxwDQo+DQo+DQo+DQo+IFNjb3R0IEQuIFdo
aXRuZXkNCj4NCj4gc2R3QGluZWEuY29tICAgIHwgICAgIFQ6IDc4MS04MDEtMTE1MiAgICB8ICAg
ICBGOiA3ODEtODAxLTExMDggICAgfCAgICAgd3d3LmluZWEuY29tDQo+DQo+DQo+DQo+IEZyb206
IEJydWNlIEFzaGZpZWxkIDxicnVjZS5hc2hmaWVsZEBnbWFpbC5jb20+DQo+IFNlbnQ6IE1vbmRh
eSwgSnVseSAyNywgMjAyMCAxMDowNCBQTQ0KPiBUbzogU2NvdHQgV2hpdG5leSA8c2R3QGluZWEu
Y29tPg0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3Rv
XSBIb3cgdG8gZW5hYmxlIHByZWVtcHQtcnQgaW4gWW9jdG8gWmV1cyBvciBXYXJyaW9yPw0KPg0K
Pg0KPg0KPg0KPg0KPg0KPg0KPiBPbiBNb24sIEp1bCAyNywgMjAyMCBhdCAzOjUxIFBNIFNjb3R0
IFdoaXRuZXkgPHNkd0BpbmVhLmNvbT4gd3JvdGU6DQo+DQo+IEhpIFlvY3RvIGdyb3VwLA0KPg0K
Pg0KPg0KPiBJ4oCZbSB3b3JraW5nIHdpdGggYSBuZXdseS1yZWxlYXNlZCBjb3B5IG9mIFlvY3Rv
IFpldXMgZnJvbSBWYXJpc2NpdGUgZm9yIHRoZSBpLk1YOE1NIE1pbmksIGFsdGhvdWdoIHRoZSBz
YW1lIG9wdGlvbiBzZWVtcyB0byBhcHBseSB0byB0aGUgcHJldmlvdXMgWW9jdG8gV2Fycmlvci4N
Cj4NCj4NCj4NCj4gSSB1bmRlcnN0YW5kIHRoYXQgYSBMaW51eCByZWFsLXRpbWUga2VybmVsIGNh
biBiZSBlbmFibGVkIGJ5IHNldHRpbmcgTElOVVhfS0VSTkVMX1RZUEUgPSDigJxwcmVlbXB0LXJ0
4oCdLiAgV2hlcmUgZG9lcyB0aGlzIG9wdGlvbiBuZWVkIHRvIGJlIHNldCBzbyB0aGF0IHdoZW4g
SSBiaXRiYWtlIGZzbC1pbWFnZS1xdDUsIEkgZ2V0IHRoZSBMaW51eCDigJxwcmVlbXB0LXJ04oCd
IGtlcm5lbCBpbnN0ZWFkIG9mIHRoZSDigJxzdGFuZGFyZOKAnSBrZXJuZWw/DQo+DQo+DQo+DQo+
IElzIHRoZXJlIGEgc3BlY2lmaWMgY29uZmlndXJhdGlvbiBmaWxlIHRoYXQgbmVlZHMgdG8gYmUg
bW9kaWZpZWQsIG9yIGEgbmV3IHJlY2lwZSBpbiBhIGxheWVyPyAgSSBhbSBjb25mdXNlZCBhbmQg
aG9waW5nIHRoYXQgeW91IGNhbiBoZWxwLg0KPg0KPg0KPg0KPiBJZiB5b3UgYXJlbid0IHVzaW5n
IGxpbnV4LXlvY3RvLCB5b3UnbGwgbmVlZCB0byBhcnJhbmdlIGZvciB0aGUgcHJlZW1wdC1ydCBw
YXRjaChlcykgdG8gYmUgYXBwbGllZCB0byB3aGF0ZXZlciBrZXJuZWwgeW91IGFyZSB1c2luZy4g
V2hpY2ggbWVhbnMgeW91IGFyZSBjcmVhdGluZyBhIG5ldyByZWNpcGUsIGJiYXBwZW5kaW5nIGFu
IGV4aXN0aW5nIG9uZSwgb3IgaWYgeW91IGFyZSBsdWNreSB0aGUga2VybmVsIHByb3ZpZGVyIGFs
cmVhZHkgaGFzIGEgLXJ0IHJlY2lwZSBhdmFpbGFibGUuDQo+DQo+DQo+DQo+IElmIHlvdSBhcmUg
dXNpbmcgbGludXgteW9jdG8sIGl0J3MgYXMgc2ltcGxlIGFzIHNldHRpbmcgdGhlIHByZWZlcnJl
ZCBwcm92aWRlciBvZiB0aGUga2VybmVsIGFzIGxpbnV4LXlvY3RvLXJ0ICBhbmQgYnVpbGRpbmcu
DQo+DQo+DQo+DQo+IEJydWNlDQo+DQo+DQo+DQo+DQo+DQo+DQo+DQo+IEJlc3QgcmVnYXJkcywN
Cj4NCj4NCj4NCj4gU2NvdHQgRC4gV2hpdG5leQ0KPg0KPiBQcmluY2lwYWwgU29mdHdhcmUgRW5n
aW5lZXINCj4NCj4NCj4gSW50ZXJ0ZWNoIEVuZ2luZWVyaW5nIEFzc29jaWF0ZXMsIEluYy4NCj4g
MTAwIExvd2RlciBCcm9vayBEcml2ZSwgU3VpdGUgMjUwMA0KPiBXZXN0d29vZCwgTUEgIDAyMDkw
DQo+IHNkd0BpbmVhLmNvbSAgICB8ICAgICBUOiA3ODEtODAxLTExNTIgICAgfCAgICAgRjogNzgx
LTgwMS0xMTA4ICAgIHwgICAgIHd3dy5pbmVhLmNvbQ0KPg0KPg0KPg0KPg0KPg0KPg0KPiAtLQ0K
Pg0KPiAtIFRob3Ugc2hhbHQgbm90IGZvbGxvdyB0aGUgTlVMTCBwb2ludGVyLCBmb3IgY2hhb3Mg
YW5kIG1hZG5lc3MgYXdhaXQgDQo+IHRoZWUgYXQgaXRzIGVuZA0KPiAtICJVc2UgdGhlIGZvcmNl
IEhhcnJ5IiAtIEdhbmRhbGYsIFN0YXIgVHJlayBJSQ0KPg0KPiANCg==
