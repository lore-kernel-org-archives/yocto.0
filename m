Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BACDE00A16; Fri, 14 Sep 2018 16:55:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.45 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0045.outbound.protection.outlook.com [104.47.2.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C14CFE00726
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 16:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=M+zMqT4kUDYUG9wICUvrzU5DfhzgU3nWn2tNCBNYkQo=;
	b=qNKxHfTsg8GNwCTVcGMJz+yoCEOLvUTGz8blm7JAArWBMxuGY+2KpO2+3Epev8tPGYo6VXtgIYUr4UbKqGrln6S47r34h5k/2fy/r3zwzoJGFeeHWN9uj2G7odbeavEbIfqncA9GSr38f9Jdn31x7wPH1EfiL62iyGM6w1nI4ac=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB4000.eurprd01.prod.exchangelabs.com (20.177.53.141) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.21; Fri, 14 Sep 2018 08:20:52 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.021;
	Fri, 14 Sep 2018 08:20:52 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] inheriting native.bbclass explicitly
Thread-Index: AdRLQbZvnia0h813R7Oy/Sn0LGVS8wAAemQAAAKfu6AAAYNyAAAAM0owAAEXEoAAAYGcgAAVt6iAABMcZPA=
Date: Fri, 14 Sep 2018 08:20:51 +0000
Message-ID: <VI1PR01MB1070D437258E6D818CC7A980E0190@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
	<VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
	<VI1PR01MB10709CA8B94B64B914109AB4E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJ86T=UssgCnWjnqzM5PWDumA+4472YZJMTO4dnhQTMvj=r8yA@mail.gmail.com>
In-Reply-To: <CAJ86T=UssgCnWjnqzM5PWDumA+4472YZJMTO4dnhQTMvj=r8yA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB4000;
	6:O+gdyquHCZmTgo0FA2w9MuimEJdx7Yt2kSpMAp6kXrdODyIi6FcPYqQZmHQJELoygLHDmefTnN1TINOAXcTJvKDeKv072tv9r+kkQaRbC1ql/lz3Eg9Rd+Lpb/rDkA++X2rtc0COQvEz2bTiVKA/9JXaz1syykFvcE/i1wsg8nTjAVAoSuac8VVyxDe6+yQjKb1bJfTv4Qdh+lpKNrcvZjLW0NQbu6dTRLl/LTVbmBJEIDxhQuzQ5Ju+KT4/CCrAo7lg8JQZouBYxpPw5nqNLd7/XPjpd0MoOoVSRvXPP1bUK4xDCSnnnyQKV9DIxERgjmeiuh6NvBhPMaCpdetbDUmijGOpeDJgswkR3+OANluaxdXiHhkzdCLAj8R4CVl6iG4RMGcPBxt8c1VpO1J1MRlsxLRSTKuQwtnMMpwyumjUMmXq/UHEUj2izQzNN0U3IyCrUy67i1OhvPNkN3402w==;
	5:i0fetyZ9JLMd8ox/qpiOIiOuOxFQjc5H4pKtLzAVG2h6BdWo1s0u/groe/r5ulcbDFrL7MqHX3etZwO1QszPJrjhGozZ62W1m4hawG0RGXV7N/P3uSexKPWI2QLLwYE3BW/zljVK0WDWYKzgTAtBu6DFiu1jwCUFChzIEZcbu0k=;
	7:ELi0UQHXq2fjuZ76Ncdwk5I2wWUrbA6C8BEbymuavOsYH4DwH90o7MZlDI8xDihUfLPqJo7vWP9ZjUHb4/8b1HyKW5opmslwF1L3izUnd+Zqz0VUsa6yJfr46PDOcSnplcNpUlqdCg7sMdwJvmOkXOoNOlkxUM00gIBBN2qP1UgUUHI7YL/R8h0D3UlRUxcki/hnwLVNrRdeQWbfNC+koQxk6OY7sQvf3W9RHmJxyXTVphztXBoU+c2U5G3kgoo6
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: e5a029f4-29ae-4b46-bf7a-08d61a1afc28
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB4000; 
x-ms-traffictypediagnostic: VI1PR01MB4000:
x-microsoft-antispam-prvs: <VI1PR01MB40009F157A6CB3E809F22E6CE0190@VI1PR01MB4000.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(189930954265078)(85827821059158)(103651359005742)(45079756050767)(228905959029699);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(3002001)(10201501046)(93006095)(93001095)(3231311)(944501410)(52105095)(149027)(150027)(6041310)(20161123562045)(20161123564045)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(201708071742011)(7699050);
	SRVR:VI1PR01MB4000; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB4000; 
x-forefront-prvs: 07954CC105
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(366004)(136003)(376002)(39860400002)(396003)(346002)(199004)(189003)(13464003)(6506007)(7696005)(5024004)(66066001)(256004)(4326008)(5660300001)(446003)(6436002)(93886005)(486006)(45080400002)(76176011)(1411001)(53936002)(575784001)(86362001)(33656002)(54906003)(8936002)(81166006)(39060400002)(81156014)(229853002)(68736007)(14444005)(5250100002)(8676002)(99286004)(6916009)(25786009)(2906002)(97736004)(316002)(14454004)(2900100001)(476003)(102836004)(55016002)(26005)(72206003)(186003)(6246003)(966005)(9686003)(305945005)(106356001)(105586002)(6306002)(11346002)(478600001)(6116002)(3846002)(53546011)(74316002)(7736002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB4000;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: U5BIRsIJn2Sl7X4BgbNB/JKAIfHDEyFHMbpmEKtU1l+N6mCTJKkMz6VK8lRtExm2KgaCpCHEMecRMVSflGGxvZuvcVAmcPcIE35CfDcYWuNFQV2QXNpilZkfS4RA+tZQucOci4MzKj3PRdbtqqUb49pwUYzevWHskpR1J+Rg2P484Z8JB0AVByKXs6hI3cQ/Wk5+6lgO5e8IewBriIuUWLso5Mo8WaccMNAotdyN69VnlGTvjsecwvQxV9M+eAdcToipsX0tiG7nZMDAXApfi4DnYSFYrrQh0UGV2WaLq1US1GruOue/+FYaxFXZiJznK3mlJsdgE1ZgLKlClRIys9Vx9Wx6jGHtMkaxnbPgF1Y=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5a029f4-29ae-4b46-bf7a-08d61a1afc28
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Sep 2018 08:20:51.9629 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB4000
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: inheriting native.bbclass explicitly
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
X-List-Received-Date: Fri, 14 Sep 2018 23:55:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBmZWVkYmFjayBmcm9tIHlvdS4NCg0KPiBJZiB5b3UgdXNlIEJCQ0xBU1NFWFRF
TkQgKGllICJ0aGUgc2Vjb25kIG1ldGhvZCIpIHRoZW4gdGhhdCByZWNpcGUgbmFtaW5nIHJ1bGUg
ZG9lc24ndCBhcHBseS4NCkxvb2tzIGxpa2Ugc2VjdGlvbidzIDYuODMgY3VycmVudCBzdHJ1Y3R1
cmUgd291bGRuJ3QgcmVmbGVjdCB0aGlzIGZhY3Qgd2VsbC4gV2FybmluZyBpcyBwbGFjZWQgZGly
ZWN0bHkgYmVsb3cNCm9uZS1zZW50ZW5jZSBhbmQgaW5kZW50ZWQgdGV4dCBkZXNjcmliaW5nIHRv
IEJCQ0xBU1NFWFRFTkQtY2FzZQ0KDQprcnp5c2llaw0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2Ut
LS0tLQ0KRnJvbTogQW5kcmUgTWNDdXJkeSBbbWFpbHRvOmFybWNjdXJkeUBnbWFpbC5jb21dDQpT
ZW50OiBGcmlkYXksIDE0LiBTZXB0ZW1iZXIgMjAxOCAwMTowNQ0KVG86IER1ZHppYWsgS3J6eXN6
dG9mIDxLcnp5c3p0b2YuRHVkemlha0BnZW1hbHRvLmNvbT4NCkNjOiBCdXJ0b24sIFJvc3MgPHJv
c3MuYnVydG9uQGludGVsLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJl
OiBbeW9jdG9dIGluaGVyaXRpbmcgbmF0aXZlLmJiY2xhc3MgZXhwbGljaXRseQ0KDQpPbiBUaHUs
IFNlcCAxMywgMjAxOCBhdCA2OjA1IEFNLCBEdWR6aWFrIEtyenlzenRvZiA8S3J6eXN6dG9mLkR1
ZHppYWtAZ2VtYWx0by5jb20+IHdyb3RlOg0KPiBDdXJyZW50IHJlbGVhc2UncyByZWZlcmVuY2Ug
bWFudWFsIGlzc3VlcyBpbiBuYXRpdmUuYmJjbGFzcyBjaGFwdGVyIGEgd2FybmluZzoNCj4gIldo
ZW4gY3JlYXRpbmcgYSByZWNpcGUsIHlvdSBtdXN0IGZvbGxvdyB0aGlzIG5hbWluZyBjb252ZW50
aW9uOiAgICAgIG5hdGl2ZS1teXJlY2lwZS5iYg0KPiBOb3QgZG9pbmcgc28gY2FuIGxlYWQgdG8g
c3VidGxlIHByb2JsZW1zIGJlY2F1c2UgY29kZSBleGlzdHMgdGhhdCBkZXBlbmRzIG9uIHRoZSBu
YW1pbmcgY29udmVudGlvbi4iDQoNCkxvb2tzIGxpa2UgYSBtaXN0YWtlIGluIHRoZSBkb2N1bWVu
dGF0aW9uLiBOYXRpdmUgb25seSByZWNpcGVzIChpZSByZWNpcGVzIHdoaWNoIHVzZSAiaW5oZXJp
dCBuYXRpdmUiIHJhdGhlciB0aGFuIEJCQ0xBU1NFWFRFTkQpIHNob3VsZCBoYXZlICItbmF0aXZl
IiBhcyBhIHN1ZmZpeCwgbm90ICJuYXRpdmUtIiBhcyBhIHByZWZpeC4NCg0KPiBKZXRocm8gcmVs
ZWFzZSBtYW51YWwgZG9lcyBub3QgcG9pbnQgaXQgb3V0Lg0KPiBJcyB0aGlzIHdhcm5pbmcgcmVh
bGx5IG91dCBvZiByZWxldmFuY2UgZm9yIGNlcnRhaW4gcGFzdCByZWxlYXNlcyBlLmcuIEpldGhy
bz8NCj4NCj4gQWJzdHJhY3RpbmcgZnJvbSBxdWVzdGlvbiByYWlzZWQgYWJvdmUgaG93IGZvbGxv
d2luZyB0d28gZml0IGFsbCB0b2dldGhlcjoNCj4gIldoZW4gY3JlYXRpbmcgYSByZWNpcGUsIHlv
dSBtdXN0IGZvbGxvdyB0aGlzIG5hbWluZyBjb252ZW50aW9uOiAgICAgIG5hdGl2ZS1teXJlY2lw
ZS5iYiINCj4gYW5kDQo+ICIgVGhlIGFkdmFudGFnZSBvZiB0aGUgc2Vjb25kIG1ldGhvZCBpcyB0
aGF0IHlvdSBkbyBub3QgbmVlZCB0byBoYXZlDQo+IHR3byBzZXBhcmF0ZSByZWNpcGVzICIgKDIu
NS4xIFJlbGVhc2UgUmVmZXJlbmNlIE1hbnVhbCkNCg0KSWYgeW91IHVzZSBCQkNMQVNTRVhURU5E
IChpZSAidGhlIHNlY29uZCBtZXRob2QiKSB0aGVuIHRoYXQgcmVjaXBlIG5hbWluZyBydWxlIGRv
ZXNuJ3QgYXBwbHkuIGllIGEgcmVjaXBlIHVzaW5nIEJCQ0xBU1NFWFRFTkQgc2hvdWxkIG5vdCBo
YXZlIGEgIi1uYXRpdmUiIHN1ZmZpeC4NCg0KPiBrcnp5c2llaw0KPg0KPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBp
bnRlbC5jb21dDQo+IFNlbnQ6IFRodXJzZGF5LCAxMy4gU2VwdGVtYmVyIDIwMTggMTQ6MDANCj4g
VG86IER1ZHppYWsgS3J6eXN6dG9mIDxLcnp5c3p0b2YuRHVkemlha0BnZW1hbHRvLmNvbT4NCj4g
Q2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gaW5oZXJp
dGluZyBuYXRpdmUuYmJjbGFzcyBleHBsaWNpdGx5DQo+DQo+IE9uIDEzIFNlcHRlbWJlciAyMDE4
IGF0IDEyOjM5LCBEdWR6aWFrIEtyenlzenRvZg0KPiA8S3J6eXN6dG9mLkR1ZHppYWtAZ2VtYWx0
by5jb20+IHdyb3RlOg0KPj4gVGhhbmtzIGZvciBoaW50cy4NCj4+IEkgZG9uJ3Qgd2FudCB0byBo
YXZlIHRoaXMgcGFja2FnZSBvbiB0YXJnZXQgc3lzdGVtLg0KPj4gWW91IHNvdW5kIGxpa2UgaW5o
ZXJpdGluZyBleHBsaWNpdGx5IGhhZCBzb21lIG1ham9yIGRyYXdiYWNrIG9mIHdpZGUgc2NvcGUu
DQo+DQo+IEl0IHdvbid0IGJlIGluY2x1ZGVkIGluIHRoZSBpbWFnZSB1bmxlc3MgeW91IGFkZCBp
dCB0byB0aGUgaW1hZ2UuDQo+DQo+IFJvc3MNCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18NCj4gIFRoaXMgbWVzc2FnZSBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBpbnRlbmRlZCBz
b2xlbHkgZm9yIHRoZSBhZGRyZXNzZWVzIGFuZCBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgaW5m
b3JtYXRpb24uIEFueSB1bmF1dGhvcml6ZWQgdXNlIG9yIGRpc2Nsb3N1cmUsIGVpdGhlciB3aG9s
ZSBvciBwYXJ0aWFsLCBpcyBwcm9oaWJpdGVkLg0KPiBFLW1haWxzIGFyZSBzdXNjZXB0aWJsZSB0
byBhbHRlcmF0aW9uLiBPdXIgY29tcGFueSBzaGFsbCBub3QgYmUgbGlhYmxlIGZvciB0aGUgbWVz
c2FnZSBpZiBhbHRlcmVkLCBjaGFuZ2VkIG9yIGZhbHNpZmllZC4gSWYgeW91IGFyZSBub3QgdGhl
IGludGVuZGVkIHJlY2lwaWVudCBvZiB0aGlzIG1lc3NhZ2UsIHBsZWFzZSBkZWxldGUgaXQgYW5k
IG5vdGlmeSB0aGUgc2VuZGVyLg0KPiBBbHRob3VnaCBhbGwgcmVhc29uYWJsZSBlZmZvcnRzIGhh
dmUgYmVlbiBtYWRlIHRvIGtlZXAgdGhpcyB0cmFuc21pc3Npb24gZnJlZSBmcm9tIHZpcnVzZXMs
IHRoZSBzZW5kZXIgd2lsbCBub3QgYmUgbGlhYmxlIGZvciBkYW1hZ2VzIGNhdXNlZCBieSBhIHRy
YW5zbWl0dGVkIHZpcnVzLg0KPiAtLQ0KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXw0KPiB5b2N0byBtYWlsaW5nIGxpc3QNCj4geW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZw0KPiBodHRwczovL2VtZWEwMS5zYWZlbGlua3MucHJvdGVjdGlvbi5vdXRsb29rLmNv
bS8/dXJsPWh0dHBzJTNBJTJGJTJGbGlzDQo+IHRzLnlvY3RvcHJvamVjdC5vcmclMkZsaXN0aW5m
byUyRnlvY3RvJmFtcDtkYXRhPTAyJTdDMDElN0NLcnp5c3p0b2YuRHUNCj4gZHppYWslNDBnZW1h
bHRvLmNvbSU3Q2VkNjA1ODhkZjAxZTQ0ODQwMTVjMDhkNjE5Y2Q1ZWU2JTdDMzdkMGE5ZGI3YzQ2
NA0KPiAwOTZiZmUzMWFkZDViNDk1ZDZkJTdDMSU3QzAlN0M2MzY3MjQ3NjcxOTQzNzI2NzQmYW1w
O3NkYXRhPThHWFVYVDVhYlIzDQo+IEJIV3hoemJDZjBiYll4WXFwVTd4NnIwWlhiUXQ3Y2x3JTNE
JmFtcDtyZXNlcnZlZD0wDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KIFRoaXMg
bWVzc2FnZSBhbmQgYW55IGF0dGFjaG1lbnRzIGFyZSBpbnRlbmRlZCBzb2xlbHkgZm9yIHRoZSBh
ZGRyZXNzZWVzIGFuZCBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgaW5mb3JtYXRpb24uIEFueSB1
bmF1dGhvcml6ZWQgdXNlIG9yIGRpc2Nsb3N1cmUsIGVpdGhlciB3aG9sZSBvciBwYXJ0aWFsLCBp
cyBwcm9oaWJpdGVkLg0KRS1tYWlscyBhcmUgc3VzY2VwdGlibGUgdG8gYWx0ZXJhdGlvbi4gT3Vy
IGNvbXBhbnkgc2hhbGwgbm90IGJlIGxpYWJsZSBmb3IgdGhlIG1lc3NhZ2UgaWYgYWx0ZXJlZCwg
Y2hhbmdlZCBvciBmYWxzaWZpZWQuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGll
bnQgb2YgdGhpcyBtZXNzYWdlLCBwbGVhc2UgZGVsZXRlIGl0IGFuZCBub3RpZnkgdGhlIHNlbmRl
ci4NCkFsdGhvdWdoIGFsbCByZWFzb25hYmxlIGVmZm9ydHMgaGF2ZSBiZWVuIG1hZGUgdG8ga2Vl
cCB0aGlzIHRyYW5zbWlzc2lvbiBmcmVlIGZyb20gdmlydXNlcywgdGhlIHNlbmRlciB3aWxsIG5v
dCBiZSBsaWFibGUgZm9yIGRhbWFnZXMgY2F1c2VkIGJ5IGEgdHJhbnNtaXR0ZWQgdmlydXMuDQo=

