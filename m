Return-Path: <Krzysztof.Dudziak@gemalto.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2765E00A16; Thu, 13 Sep 2018 14:17:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.107.1.84 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 114420 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Sep 2018 14:17:30 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-eopbgr10084.outbound.protection.outlook.com [40.107.1.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ADCAE006AF
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 14:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gemalto.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=tVaVFHBh3bEUfGsOku5qMTLBznys9EMlzQo+JUUuW2g=;
	b=w9P4MTlv675zBM3DsQswMzRRSUWNsxXgQ78/qnGnVXfBcwQ/UVA9an6oe4KVyrdCCGNndOkfnjfoYlcNQmVnDVGjsD7KUTeLT//Oc9+TnHJP1MLUHZO0TPD5Yg8EDIQF/5jxkOFqPJwttPDDJ1OSqdfxXJlM7D/eLnJDQ4Lf3mM=
Received: from DB6PR01MB3911.eurprd01.prod.exchangelabs.com
	(2603:10a6:6:49::20) by DB6PR01MB3911.eurprd01.prod.exchangelabs.com
	(2603:10a6:6:49::20) with TransportReplication id Version 15.20 (Build
	1143.15); Thu, 13 Sep 2018 21:03:01 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com (10.162.118.12) by
	VI1PR01MB3918.eurprd01.prod.exchangelabs.com (20.176.2.147) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1122.15; Thu, 13 Sep 2018 11:39:52 +0000
Received: from VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44]) by
	VI1PR01MB1070.eurprd01.prod.exchangelabs.com
	([fe80::2148:c879:482f:ab44%2]) with mapi id 15.20.1122.020;
	Thu, 13 Sep 2018 11:39:52 +0000
From: Dudziak Krzysztof <Krzysztof.Dudziak@gemalto.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] inheriting native.bbclass explicitly
Thread-Index: AdRLQbZvnia0h813R7Oy/Sn0LGVS8wAAemQAAAKfu6AAAYNyAAAAM0ow
Date: Thu, 13 Sep 2018 11:39:52 +0000
Message-ID: <VI1PR01MB10704F587FD2BF06F1CAFEF1E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
References: <VI1PR01MB1070FFAC3C22FF063B0DCF36E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYqqOyBV_W7d-eskBrwMgSF=ba+T8VtxVg_aVguDgh4Jw@mail.gmail.com>
	<VI1PR01MB1070D4F85BC847EF0C3F8651E01A0@VI1PR01MB1070.eurprd01.prod.exchangelabs.com>
	<CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
In-Reply-To: <CAJTo0LYsU+D+SP3s4Fwg4DYrv++kMmugv1RiVGU4ZFx_aKO=4w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Krzysztof.Dudziak@gemalto.com; 
x-originating-ip: [90.187.45.85]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB6PR01MB3911;
	6:Kgc4nMceW0+xTcDQ1IX5J/ZG7hMGObXVqHbu5E4Py6EO+c9zuIFqsK/FZ1W9HO2sgWqAD6esb8EmTnTJ6u8Q55QXEfh8hueHT58vCjlwrOMnjbYiB+x9LcukvR0WQiPplrmeF+quXuD9U02NkLTCwbZ4y2xyz6cadf9UhXnlDDnFt+0P8rYsJEkDpeVvt2nVO1Cs1t8DoUocKyM+83Q4W4JduRqyLBM+D7o5zRxgREom2y1gfTj21YiPv5Gz7/deqW1HOS6NdJZ0GnJq4ThO7qcZ5PNttTVTqVyEVBfe8tETrLYCNwz5DQxwxyxuIERBW+xuaTH4dC/5fS/jEiohAwpfu5oENvGC2KGOjpxc994zgwtIOwWS0XjrMEBpONJisHdFdQ4rp9rRoEdho2fAXhWhSg1pbzO5ausz5fl81bpBxdXK5bzSe5AS/qxzfuoliodY+pue18JMnWOQLDVBqg==;
	5:TSHkxJS2Bwk/QyF4gdXq2whvpSbh4jaJcPhMB03JJtT2zvaCmRQc9YrVr9AuxUxjRXOuN3Qvcotnmdp0UOmEQOdLxWDxiOuWcxDRsFKb3wd8vHwG5z6tkZ5W/PQr95e00K8kk1RGLUoEYXxNF7Oqi8ekKok5JiiDR+WjQ7oQsjo=;
	7:fEwoOTXTWaSrI5QZHnMsO1uj2ezt4EuKn8VuJCAIc0U7dUGdEJkDjc+MLczbrWdMkdDDWaQUkwUSbYB54EhsHGHKBz7uDGZwAAClAVl8ae1pI4YyoArFGWPlRNIxKIyHnUE1cHfpYM3VEyR2YQWUCbz0McQg2z4inX3D4A725XIwdADDgQtcvKzolpvASrEG1QdVgnb4MH12y37XU1z3m1fjCroDytBGwEUmf9nXFyME6rcngYHACWoQR5WVBtST
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: 5f738015-bfcc-4e73-f818-08d6196d9eee
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989137)(4534165)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(2017052603328)(7153060)(7193020);
	SRVR:VI1PR01MB3918; 
x-ms-traffictypediagnostic: DB6PR01MB3911:
x-microsoft-antispam-prvs: <DB6PR01MB39110588D37FF5C191D48DA7E01A0@DB6PR01MB3911.eurprd01.prod.exchangelabs.com>
x-exchange-antispam-report-test: UriScan:(103651359005742)(228905959029699);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(8121501046)(5005006)(93006095)(93001095)(3002001)(3231311)(944501410)(52105095)(10201501046)(149027)(150027)(6041310)(20161123562045)(20161123558120)(20161123560045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123564045)(201708071742011)(7699050);
	SRVR:DB6PR01MB3911; BCL:0; PCL:0; RULEID:; SRVR:DB6PR01MB3911; 
x-forefront-prvs: 07943272E1
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(39860400002)(396003)(136003)(346002)(366004)(189003)(199004)(13464003)(4326008)(66066001)(25786009)(6246003)(105586002)(106356001)(97736004)(316002)(478600001)(5024004)(72206003)(486006)(14444005)(2906002)(256004)(33656002)(7736002)(99286004)(2900100001)(305945005)(446003)(476003)(53936002)(86362001)(3846002)(53546011)(6436002)(186003)(6506007)(14454004)(55016002)(9686003)(74316002)(102836004)(68736007)(11346002)(8676002)(6116002)(93886005)(81166006)(81156014)(5250100002)(26005)(6916009)(7696005)(5660300001)(76176011)(229853002)(8936002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR01MB3911;
	H:VI1PR01MB1070.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: gemalto.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: qKIxqKKX9/wdzEdgkInx84y8rfrDCvzm0RCY+xNYMoniq8mkIqrEso0UWNolfUWfqdkv2bdL2VXI0+BHi+JnH3pkU9rsfOQuqMbFyZlZOpblqu0nrqDYE0NPDt4mfFFN50aGaOJnTUEBRYD6ERoUWSF6ApU7uBU01qaRhFyHxjCcfvGtAuxIn7uCGzd93pKNLhwcFGY4r3ifht2eL4aIywNhlCzg8iuyCg5sLoIemuewaulKulrLF7XvGsGua4CROrx4pgUFr+xlSB/gqeeifP+KVXQjMmdLigd1UVD2EMB55lWiEX4TdKBL0NIKahiGW9lyWzBN7x1wO5uOo4S9dbWkT7u1Fc2U/USsjtplbZ0=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: gemalto.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f738015-bfcc-4e73-f818-08d6196d9eee
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2018 11:39:52.7157 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 37d0a9db-7c46-4096-bfe3-1add5b495d6d
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR01MB3911
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
X-List-Received-Date: Thu, 13 Sep 2018 21:17:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciBoaW50cy4NCkkgZG9uJ3Qgd2FudCB0byBoYXZlIHRoaXMgcGFja2FnZSBvbiB0
YXJnZXQgc3lzdGVtLg0KWW91IHNvdW5kIGxpa2UgaW5oZXJpdGluZyBleHBsaWNpdGx5IGhhZCBz
b21lIG1ham9yIGRyYXdiYWNrIG9mIHdpZGUgc2NvcGUuDQoNCkkgYW0gZmFtaWxpYXJpemVkIHdp
dGggYml0YmFrZSAtZSAuLi4uDQpJIGtub3cgaXQgYXMgYSB3YXkgdG8gcHJpbnQgcGFja2FnZS9p
bWFnZSB0YXNrcyB2YXJpYWJsZXMuDQpCdXQgaG93IGl0cyBvdXRwdXQgc2hvd3MgdGhlIGxpc3Qg
b2YgY2xhc3NlcyBpbmhlcml0ZWQgYW5kIHRoZSBvcmRlciB0aGV5IGFyZSBpbmhlcml0ZWQgYnkg
Qml0YmFrZSB0YXJnZXQ/DQpJcyBhbnkgdmFyaWFibGUgaW5kaWNhdGluZyB0aGlzIGluY2x1ZGVk
IGluIGl0cyBvdXRwdXQ/DQoNCmtyenlzaWVrDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQpGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21dDQpTZW50
OiBUaHVyc2RheSwgMTMuIFNlcHRlbWJlciAyMDE4IDEzOjIzDQpUbzogRHVkemlhayBLcnp5c3p0
b2YgPEtyenlzenRvZi5EdWR6aWFrQGdlbWFsdG8uY29tPjsgWW9jdG8tbWFpbGluZy1saXN0IDx5
b2N0b0B5b2N0b3Byb2plY3Qub3JnPg0KU3ViamVjdDogUmU6IFt5b2N0b10gaW5oZXJpdGluZyBu
YXRpdmUuYmJjbGFzcyBleHBsaWNpdGx5DQoNCkNDaW5nIHRoZSBsaXN0IGFnYWluLiAgUGxlYXNl
IHJlbWVtYmVyIHRvIHJlcGx5IHRvIHRoZSBsaXN0Lg0KDQpPbiAxMyBTZXB0ZW1iZXIgMjAxOCBh
dCAxMTo0MiwgRHVkemlhayBLcnp5c3p0b2YgPEtyenlzenRvZi5EdWR6aWFrQGdlbWFsdG8uY29t
PiB3cm90ZToNCj4gSXMgaXQgcG9zc2libGUgZm9yIG9uZSBCaXRiYWtlIHRhcmdldCB0byBjaGVj
ayBsaXN0IGFuZCBvcmRlciBvZiBjbGFzc2VzIGluaGVyaXRlZD8NCg0KYml0YmFrZSAtZSBbcmVj
aXBlXSB3aWxsIHNob3cgeW91IHdoYXQgd2FzIHBhcnNlZC4NCg0KSW4gdGhpcyBzaXR1YXRpb24g
SSB3b3VsZG4ndCB3b3JyeSB0b28gbXVjaC4gIEl0J3MgYmVzdCB0byB1c2UgQkJDTEFTU0VYVEVO
RCBpbnN0ZWFkIG9mIGluaGVyaXQgbmF0aXZlIGRpcmVjdGx5IGFueXdheS4NCg0KUm9zcw0KX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCiBUaGlzIG1lc3NhZ2UgYW5kIGFueSBhdHRh
Y2htZW50cyBhcmUgaW50ZW5kZWQgc29sZWx5IGZvciB0aGUgYWRkcmVzc2VlcyBhbmQgbWF5IGNv
bnRhaW4gY29uZmlkZW50aWFsIGluZm9ybWF0aW9uLiBBbnkgdW5hdXRob3JpemVkIHVzZSBvciBk
aXNjbG9zdXJlLCBlaXRoZXIgd2hvbGUgb3IgcGFydGlhbCwgaXMgcHJvaGliaXRlZC4NCkUtbWFp
bHMgYXJlIHN1c2NlcHRpYmxlIHRvIGFsdGVyYXRpb24uIE91ciBjb21wYW55IHNoYWxsIG5vdCBi
ZSBsaWFibGUgZm9yIHRoZSBtZXNzYWdlIGlmIGFsdGVyZWQsIGNoYW5nZWQgb3IgZmFsc2lmaWVk
LiBJZiB5b3UgYXJlIG5vdCB0aGUgaW50ZW5kZWQgcmVjaXBpZW50IG9mIHRoaXMgbWVzc2FnZSwg
cGxlYXNlIGRlbGV0ZSBpdCBhbmQgbm90aWZ5IHRoZSBzZW5kZXIuDQpBbHRob3VnaCBhbGwgcmVh
c29uYWJsZSBlZmZvcnRzIGhhdmUgYmVlbiBtYWRlIHRvIGtlZXAgdGhpcyB0cmFuc21pc3Npb24g
ZnJlZSBmcm9tIHZpcnVzZXMsIHRoZSBzZW5kZXIgd2lsbCBub3QgYmUgbGlhYmxlIGZvciBkYW1h
Z2VzIGNhdXNlZCBieSBhIHRyYW5zbWl0dGVkIHZpcnVzLg0K

