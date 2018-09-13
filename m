Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B725AE0093B; Thu, 13 Sep 2018 10:09:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.1.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3626 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Sep 2018 10:09:55 PDT
Received: from EUR01-VE1-obe.outbound.protection.outlook.com
	(mail-ve1eur01on0082.outbound.protection.outlook.com [104.47.1.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EE8AE005B1
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 10:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iidwAT/BJqtSLymjZoB2+yGF/3btHeaYAuEbT1TBfOY=;
	b=PXT7T4BqrPx9UguL5Sx/3jgzyiGkSLkRggQDZDEuHQx6PTkHxLx0BFmJ6rUTLhJvuEdzgxZHsha2GCNAkpxTYfFh87+vLd7XTNzn5dGwio8nJpsD4IFJNQQEW5xnaPDbN5I4TkBuJKa5QGcoVKgpjUTtCpAKdyScPiMOorTtmcc=
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB3040.eurprd01.prod.exchangelabs.com (10.170.228.22) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1143.15; Thu, 13 Sep 2018 12:36:36 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Thu, 13 Sep 2018 12:36:35 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] inheriting native.bbclass explicitly
Thread-Index: AdRLQbZvnia0h813R7Oy/Sn0LGVS8wAAemQAAAKfu6AAAYNyAAAAM0owAAEXEoAAATuvIA==
Date: Thu, 13 Sep 2018 12:36:35 +0000
Message-ID: <VI1PR01MB1070A9BDC7C4867304DFE7EDE01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
	<VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
In-Reply-To: <CAJTo0LaFQtREQuX9xVtD3uno8G-OcorBMfjmXYmw0nhkfAUKOg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VI1PR01MB3040;
	6:KBoVtkPlbfmzwU44lVLdJkGw17983PU4L6pTPTftxV97k0yl/HCKAPufYgTjvzHoouYP7ETMvo/PzxfJTIrgvXJefURoYK0/iln5LCeouPbe4nWqiK2a6ra2JzrRJDjgUHyJ9pkYcVcj4Kk6GZ/ENFM+D0/W8bedQXEdq+lhbVxnL3W5Ilk1JkgOeys6dC7tl7JbfEPgYnQ0wAMKSMaCvt1OYrN2fI+8F8d8bOE1XI0YH2MUPwiBM+QqVojEH/pQf/k7DFBF2kesebuZPZmro0/nkR9Q3c4mS89fRKqgPk08PaaYrNSdNFfzOjsqjptWqpN7pRTUGLnH+L7NUsurXCJXUVlQUK0q6oim1WhQrcWyA5J5w17qyth7VEq2sRY++hCft9jkdRhqTBBLBLheHIfuR2IXF/qmCisK4My+DPQv5tdi8nAxPosL0qlOvQUGolBxEl3IzalcNVaIcFo3sg==;
	5:AVRZgtem7rDM6VTd1cJHddXrOuTyFyCffOJIXRNGvqy2LaZW9ua+Wa1+L8KQdYwAGzDrGdZZJdpqUysom0GegfdAQPLnkk+kUdDdm2EakIPOS3RhEUVksoegOhEssGSC63VnS/BJdgvgCdtqVHg/eDNhydxZVj4vIMdSNFQrqwY=;
	7:idfGA/mogABqSIuzZeodG57Dh8Iux3oDNfokaoW6R/5eZAZP/Rza5hSjRQpq+MTy0JcNBlm+RFUU9X2GcP7oNuoHOgAQ5ckkU20Wzv1Mgpv6vqkAlrVht+B7+VfTLBpdREF2MM3h3IOOfp8nVjvyIiPw5wsapSYf77lRK57l7fQKiGjonbcihhRWZQR33bivrEMr8Lf8wCn8sYo6mQR4dq294EcL+OHJQmsxJyGfl9Eiv2unwyiGtw03kZR2iPCK
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: f0896f03-b405-49fe-ebb7-08d619758b5d
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB3040; 
x-ms-traffictypediagnostic: VI1PR01MB3040:
x-microsoft-antispam-prvs: <VI1PR01MB3040C41F6214B0E77C4E8305E01A0@VI1PR01MB3040.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(103651359005742)(228905959029699);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(93006095)(93001095)(3231311)(944501410)(52105095)(3002001)(10201501046)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123560045)(20161123564045)(20161123562045)(20161123558120)(201708071742011)(7699050);
	SRVR:VI1PR01MB3040; BCL:0; PCL:0; RULEID:; SRVR:VI1PR01MB3040; 
x-forefront-prvs: 07943272E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(136003)(366004)(396003)(346002)(39860400002)(376002)(13464003)(199004)(189003)(99286004)(5660300001)(26005)(186003)(102836004)(68736007)(478600001)(14454004)(33656002)(2900100001)(72206003)(316002)(66066001)(4326008)(76176011)(6246003)(8676002)(93886005)(7696005)(5250100002)(74316002)(105586002)(106356001)(25786009)(6506007)(6916009)(53546011)(446003)(97736004)(305945005)(7736002)(476003)(6116002)(3846002)(86362001)(81156014)(81166006)(486006)(6436002)(8936002)(2906002)(53936002)(5024004)(256004)(11346002)(229853002)(14444005)(55016002)(9686003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR01MB3040;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: RN5dJB3Bnq0zPuIPzf9uyLVBsRFKRsXSBenPqSSBukiLh0paT2xhYXT/9Bp5FzERSQhv5LhP6S66GiFc28mbLrbAinl+3GxwpsBBaIS+KoOoBgc3g0NH/OgAyblO+lEp1J4s577Do6rfIDHGN3XHKtwXtOWmc0v8zw8jf0M0Uc2s/lFQ/rnPc0BMp6GjLwwoEe862h3V5uAy+KFQIfEekfiad3N/XHLO67+iaanuuq00xXnx8alOtkHVw7Ifh2diacpElm1F6Pc1E5JEJcbtAT3v6Hfk6W2YB183d7gbSCA0aE2K3TNR7JritKi9Q1BUcsTgPIf+XloUO/XKxcDqf3SrufmiDlJ+/G5Uts4gIbI=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f0896f03-b405-49fe-ebb7-08d619758b5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2018 12:36:35.8310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR01MB3040
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
X-List-Received-Date: Thu, 13 Sep 2018 17:09:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

R290IGl0IGFuZCB3aWxsIGZvbGxvdyB5b3VyIHJlY29tbWVuZGF0aW9uLiBUaGFua3MuDQoNCi0t
LS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3Nz
LmJ1cnRvbkBpbnRlbC5jb21dDQpTZW50OiBUaHVyc2RheSwgMTMuIFNlcHRlbWJlciAyMDE4IDE0
OjAwDQpUbzogRHVkemlhayBLcnp5c3p0b2YgPEtyenlzenRvZi5EdWR6aWFrQGdlbWFsdG8uY29t
Pg0KQ2M6IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIGluaGVy
aXRpbmcgbmF0aXZlLmJiY2xhc3MgZXhwbGljaXRseQ0KDQpPbiAxMyBTZXB0ZW1iZXIgMjAxOCBh
dCAxMjozOSwgRHVkemlhayBLcnp5c3p0b2YNCjxLcnp5c3p0b2YuRHVkemlha0BnZW1hbHRvLmNv
bT4gd3JvdGU6DQo+IFRoYW5rcyBmb3IgaGludHMuDQo+IEkgZG9uJ3Qgd2FudCB0byBoYXZlIHRo
aXMgcGFja2FnZSBvbiB0YXJnZXQgc3lzdGVtLg0KPiBZb3Ugc291bmQgbGlrZSBpbmhlcml0aW5n
IGV4cGxpY2l0bHkgaGFkIHNvbWUgbWFqb3IgZHJhd2JhY2sgb2Ygd2lkZSBzY29wZS4NCg0KSXQg
d29uJ3QgYmUgaW5jbHVkZWQgaW4gdGhlIGltYWdlIHVubGVzcyB5b3UgYWRkIGl0IHRvIHRoZSBp
bWFnZS4NCg0KUm9zcw0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCiBUaGlzIG1l
c3NhZ2UgYW5kIGFueSBhdHRhY2htZW50cyBhcmUgaW50ZW5kZWQgc29sZWx5IGZvciB0aGUgYWRk
cmVzc2VlcyBhbmQgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGluZm9ybWF0aW9uLiBBbnkgdW5h
dXRob3JpemVkIHVzZSBvciBkaXNjbG9zdXJlLCBlaXRoZXIgd2hvbGUgb3IgcGFydGlhbCwgaXMg
cHJvaGliaXRlZC4NCkUtbWFpbHMgYXJlIHN1c2NlcHRpYmxlIHRvIGFsdGVyYXRpb24uIE91ciBj
b21wYW55IHNoYWxsIG5vdCBiZSBsaWFibGUgZm9yIHRoZSBtZXNzYWdlIGlmIGFsdGVyZWQsIGNo
YW5nZWQgb3IgZmFsc2lmaWVkLiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50
IG9mIHRoaXMgbWVzc2FnZSwgcGxlYXNlIGRlbGV0ZSBpdCBhbmQgbm90aWZ5IHRoZSBzZW5kZXIu
DQpBbHRob3VnaCBhbGwgcmVhc29uYWJsZSBlZmZvcnRzIGhhdmUgYmVlbiBtYWRlIHRvIGtlZXAg
dGhpcyB0cmFuc21pc3Npb24gZnJlZSBmcm9tIHZpcnVzZXMsIHRoZSBzZW5kZXIgd2lsbCBub3Qg
YmUgbGlhYmxlIGZvciBkYW1hZ2VzIGNhdXNlZCBieSBhIHRyYW5zbWl0dGVkIHZpcnVzLg0K

