Return-Path: <alexandretm@amotus.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED0A8E00875; Thu,  9 Aug 2018 06:17:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FROM_EXCESS_BASE64, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.33.122 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
X-Greylist: delayed 1084 seconds by postgrey-1.32 at yocto-www;
	Thu, 09 Aug 2018 06:17:50 PDT
Received: from NAM01-BN3-obe.outbound.protection.outlook.com
	(mail-bn3nam01on0122.outbound.protection.outlook.com [104.47.33.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52E4FE00DD0
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 06:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amotus.onmicrosoft.com; s=selector1-amotus-ca;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kYW9+KwapZEJ0vE+cjZgRRuVIVILkWGoGZJbkT57uW0=;
	b=iSNVFdds/hyXou3jPVCnwIBuaHQqZ2CAGlIPnYShwHcg8ZTgrwL8rG4Fr9MZvq8iOcEYODJmHO4IAsUsOCnXO5M3ZPAMW3+jT70HoPOHDa0CXQOYedcjTRc/w8PUer8vBoWb0ClbBvRiLzXoV+WmEaTRDO6yvgx4VMQUNUaxNko=
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com (10.173.203.137) by
	BN6PR1101MB2273.namprd11.prod.outlook.com (10.174.113.136) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1038.19; Thu, 9 Aug 2018 12:45:15 +0000
Received: from BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::11e:691a:631f:21a4]) by
	BN6PR1101MB2356.namprd11.prod.outlook.com
	([fe80::11e:691a:631f:21a4%9]) with mapi id 15.20.1017.019;
	Thu, 9 Aug 2018 12:45:15 +0000
From: =?utf-8?B?TWF0aGlldSBBbGV4YW5kcmUtVMOpdHJlYXVsdA==?=
	<alexandretm@amotus.ca>
To: "Srinivasan, Raja" <rsrinivasan@abiomed.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: uBoot, kernel and device tree files
Thread-Index: AdQvSH1kxyZSth4qQu+yA8y1Atl7eAAlkwsg
Date: Thu, 9 Aug 2018 12:45:15 +0000
Message-ID: <BN6PR1101MB235685B83EB09147FBBBB7E4B2250@BN6PR1101MB2356.namprd11.prod.outlook.com>
References: <eac20ac1c8474178a386d580c971227b@USDVREX02.abiomed.com>
In-Reply-To: <eac20ac1c8474178a386d580c971227b@USDVREX02.abiomed.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=alexandretm@amotus.ca; 
x-originating-ip: [24.37.194.182]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BN6PR1101MB2273;
	6:FFp+BJYGOEK4kzLmjZLD8lR4yA3QB/Z1UnMABw3uaAYv8qrkrV2cS51nPKF7crPOK87YrFe4lvU+5saGW9HPa2ut22udWbKa6YCq6VBMZ6MfiB2Z4utwGIBEohY4K4q745f6h4ZQzpyNG1TylAKARNbF14tQqxKsLJAdm+vCobb19y4QXjtLDpKKdZb+1BQbb/PwIs2Y0/duphiaXZ0Xtbza6j/5Tq1FDtlsGja4xe5bVEYKmLwrs6xT1TxjiF2bGhHbTXdmUvR0CFFY1Vlc2pP0Buz/p/7hbr3qbaRY/zu2IFlvQnCR1f1yfS1GMzGYFMkS/Gz0DVVxEs8BqdFY2Sm0xWw+A9Q49fwfnLP7sLDH99y/3Cqzs3gWA9sJ3so/wZkCxNR3inlZXDpwjzo6EjR3xfIj9+jBKO9YgJv0IW21NtJPgoI1WtWDYr2xzL0R5VT1Qyf6gCqTnGXMv6UQmA==;
	5:yG1T4rtinx5m6htxPy09eA1PnmFo9EfJkFry0+88Hh4tT/oN0i4dfapH7jhnlZCHy5rdfBSfvPiJ0UBjKGmFrPCVX+Sl37UIMMoin6JLkg7Y9kU+n1L+czvNIhy0ygzWVe3XqeTfCl7WO9HP4vJjsJeBVaybbHe9zilpJaFjrrM=;
	7:bBDt6CKGb91Emvbh5P/bZbuGRykbEuJtRFdVzQ9N1sVlW7mUA+hd2M0GumXfhaFBRK5TDJ/60PKqDTuWd0wCuD+HiVM4OGuZ4iOLgJuL0+F6yNCEPl5WzjkR0B8vTKUZBSNOiNt7Ak2F+cldiVF6jbwNwBjieSchxyNZHzIhMda8Y/D/EtsLEfsplQ5nLAcJBl38TSZ7cnXM+n441kylPpu04zTCWXOVPzFKY4KEgbPOfXBUbX6ItN3nkNhpiFm3
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 73c4a993-1384-4e1f-e9d6-08d5fdf5f4aa
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(7021125)(8989117)(4534165)(7022125)(4603075)(4627221)(201702281549075)(8990107)(7048125)(7024125)(7027125)(7028125)(7023125)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:BN6PR1101MB2273; 
x-ms-traffictypediagnostic: BN6PR1101MB2273:
x-microsoft-antispam-prvs: <BN6PR1101MB2273D4506A1C508BF91220BEB2250@BN6PR1101MB2273.namprd11.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(192374486261705)(223705240517415);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040522)(2401047)(5005006)(8121501046)(10201501046)(3002001)(3231311)(944501410)(52105095)(93006095)(93001095)(149027)(150027)(6041310)(2016111802025)(20161123558120)(20161123564045)(20161123560045)(20161123562045)(6072148)(6043046)(201708071742011)(7699016);
	SRVR:BN6PR1101MB2273; BCL:0; PCL:0; RULEID:;
	SRVR:BN6PR1101MB2273; 
x-forefront-prvs: 0759F7A50A
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(39840400004)(346002)(376002)(136003)(396003)(366004)(55784004)(53484002)(199004)(189003)(469094003)(478600001)(85202003)(68736007)(5024004)(5660300001)(86362001)(99286004)(256004)(14444005)(105586002)(106356001)(6506007)(102836004)(55016002)(5250100002)(26005)(97736004)(186003)(6436002)(14454004)(53936002)(74482002)(446003)(476003)(66066001)(6246003)(2501003)(11346002)(9686003)(3846002)(85182001)(33656002)(8676002)(229853002)(6116002)(316002)(7696005)(2900100001)(76176011)(305945005)(110136005)(8936002)(2906002)(25786009)(74316002)(486006)(81156014)(81166006)(7736002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN6PR1101MB2273;
	H:BN6PR1101MB2356.namprd11.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: amotus.ca does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: TPDz1mTTARhl3VIR0Ab7Tf1TUQ3S2E0BxcdMK8IH8aZnrVndgHbPDjsQlBwBdd0UjCucey5wYOSAhlpDkin3Q3xmjMpbRUvSJe1RHSdosylZ2vnBIP7w6dfCmkBd5zUez4ZT0zAl8z6ps9k4gt5AmurE/nP58c84ofKSty5Gyerxi5AnrwEff00jKBOWqEfH4s781R8FhiQsL8MvrZRuwygnGZc3V3k4z4g5Xa/2Cae0PYilumxzk/lxNVNPzKqEg75L3SJHGp5lVuuq2FlORxyKaSTjS8CZWAwHK+6o+F6q7wy0M0R9HdhLTtTpPHq/Xh2rHoaRLaoJiSv8oWsH18RfFst7IiYl6OC2/zUbacM=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: amotus.ca
X-MS-Exchange-CrossTenant-Network-Message-Id: 73c4a993-1384-4e1f-e9d6-08d5fdf5f4aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2018 12:45:15.4818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: eb1fb47f-d32e-4ec7-8cf5-9c91bb29593c
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2273
Subject: Re: uBoot, kernel and device tree files
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
X-List-Received-Date: Thu, 09 Aug 2018 13:17:56 -0000
Content-Language: fr-FR
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gU3JpbmksDQoNCkkgdGhpbmsgd2hhdCB5b3UgYXJlIGxvb2tpbmcgZm9yIGlzIHRoZSBm
aXRpbWFnZSwgaXQgd2lsbCBhbGxvdyB5b3UgdG8gYnVuZGxlIHRoZSBrZXJuZWwgYW5kIGRldmlj
ZXRyZWUgdG9nZXRoZXIgaW4gYSBzaW5nbGUgZmlsZSBhbmQgaXQgYWxzbyBhbGxvd3MgeW91IGFk
ZCBhIHNpZ25hdHVyZS4NCg0KVGhpcyBwcm9jZXNzIGlzIHdlbGwgaW50ZWdyYXRlZCBpbiB5b2N0
bywgZnJvbSB3aGF0IEkgcmVtZW1iZXIgYWN0aXZhdGluZyB0aGUgZml0aW1hZ2UgaXMgcmVsYXRp
dmVseSBlYXN5Og0KICAgLSBpbiB5b3VyIG1hY2hpbmUuY29uZg0KICAgICAgIC0gZGVjbGFyZSBL
RVJORUxfQ0xBU1NFUyArPSAia2VybmVsLWZpdGltYWdlIiBhbmQgS0VSTkVMX0lNQUdFVFlQRSA9
ICJmaXRpbWFnZSINCiAgIC0gaW4geW91ciB1LWJvb3QgZGVmY29uZmlnIChjb25maWdzL3lvdXJi
b2FyZF9kZWZjb25maWcNCiAgICAgICAtIGVuYWJsZSBDT05GSUdfRklUPXkNCiAgIC0gaW4geW91
ciBjb25maWcgaW5jbHVkZS9jb25maWdzL3lvdXJfYm9hcmQuaCBjaGFuZ2UgdGhlIHNjcmlwdCB0
byBib290IHlvdXIgZml0aW1hZ2UNCg0KSSBob3BlIHRoaXMgaGVscHMsDQoNClJlZ2FyZHMsDQoN
Ck1hdGhpZXUNCg0KPiAtLS0tLU1lc3NhZ2UgZCdvcmlnaW5lLS0tLS0NCj4gRGXCoDogeW9jdG8t
Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnIDx5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVjdC5vcmc+
DQo+IERlIGxhIHBhcnQgZGUgU3Jpbml2YXNhbiwgUmFqYQ0KPiBFbnZvecOpwqA6IEF1Z3VzdCA4
LCAyMDE4IDI6NTEgUE0NCj4gw4DCoDogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBPYmpldMKg
OiBbeW9jdG9dIHVCb290LCBrZXJuZWwgYW5kIGRldmljZSB0cmVlIGZpbGVzDQo+IA0KPiBBbGwN
Cj4gDQo+IA0KPiANCj4gV2UgYXJlIHVzaW5nIHJvY2tvLm9uIHZhcmlzY2l0ZSB2YXItc29tLW14
Ni4NCj4gDQo+IEluIG9yZGVyIHRvIGluY3JlYXNlIHRoZSBzZWN1cml0eSBvZiBvdXIgc3lzdGVt
IChkdXJpbmcgYSBzeXN0ZW0gdXBncmFkZSksIHdlDQo+IGFyZSBsb29raW5nIHRvIG1lcmdlIHVJ
bWFnZSAoa2VybmVsIGltYWdlKSBhbmQgdGhlIGRldmljZSB0cmVlIGZpbGUgaW50byAxDQo+IGZp
bGUuIEN1cnJlbnRseSB0aGVzZSBhcmUgMiBkaWZmZXJlbnQgZmlsZXMgYW5kIGFyZSB3b3JyaWVk
IHRoYXQgYSBmaWxlIGNvcHkNCj4gb3BlcmF0aW9uIG1pZ2h0IGdldCBhYm9ydGVkLg0KPiANCj4g
TXkgcmVzZWFyY2ggc28gZmFyIGluZGljYXRlcyBta3Vib290IGNhbiBiZSB1c2VkIHRvIG1lcmdl
IHRoZXNlLiBidXQNCj4gaGF2aW5nIHRyb3VibGUgbWFraW5nIHRoaXMgd29yay4NCj4gDQo+IE5l
ZWQgc29tZSBpZGVhcy4NCj4gDQo+IA0KPiANCj4gQW55IHBvaW50ZXJzIGFwcHJlY2lhdGVkLiBz
cmluaQ0KPiANCj4gDQo+IA0KPiANCj4gDQo+IA0KPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXw0KPiANCj4gDQo+IENPTkZJREVOVElBTElUWSBOT1RJQ0U6IFRoaXMgZW1haWwgbWVz
c2FnZSBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZQ0KPiBjb25maWRlbnRpYWwgYW5kIG1heSBiZSBw
cml2aWxlZ2VkIGFuZCBhcmUgbWVhbnQgdG8gYmUgcmVhZCBieSB0aGUgaW50ZW5kZWQNCj4gcmVj
aXBpZW50IG9ubHkuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQsIHBsZWFz
ZSBub3RpZnkgc2VuZGVyDQo+IGltbWVkaWF0ZWx5IGFuZCBkZXN0cm95IGFsbCBjb3BpZXMgb2Yg
dGhpcyBtZXNzYWdlIGFuZCBhbnkgYXR0YWNobWVudHMNCj4gd2l0aG91dCByZWFkaW5nIG9yIGRp
c2Nsb3NpbmcgdGhlaXIgY29udGVudHMuIFRoYW5rIHlvdQ0KPiANCj4gDQo+IA0KDQo=

