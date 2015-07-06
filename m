Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DF9F3E00A31; Mon,  6 Jul 2015 06:11:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.129 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 855 seconds by postgrey-1.32 at yocto-www;
	Mon, 06 Jul 2015 06:11:56 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0129.outbound.protection.outlook.com [65.55.169.129])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94B64E00A21
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 06:11:56 -0700 (PDT)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1091.namprd05.prod.outlook.com (10.160.113.13) with
	Microsoft SMTP
	Server (TLS) id 15.1.207.19; Mon, 6 Jul 2015 12:57:39 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0207.004; Mon, 6 Jul 2015 12:57:39 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: =?utf-8?B?TWFyY2luIEtyemVtacWEc2tp?= <mar.krzeminski@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Multiple conncetion to svn (svn+ssh)
Thread-Index: AQHQtYcrO2U7l52cKEq8+428AKBrBJ3OZfhQ
Date: Mon, 6 Jul 2015 12:57:39 +0000
Message-ID: <BN3PR0501MB10902B0E1BAF6F95F9FE2BA7BB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CABc_YGAQqOMTMavBTQ+gjq1grteY_n9fy_2xSqVgfCc9ijf3=w@mail.gmail.com>
In-Reply-To: <CABc_YGAQqOMTMavBTQ+gjq1grteY_n9fy_2xSqVgfCc9ijf3=w@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: gmail.com; dkim=none (message not signed)
	header.d=none;
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1091;
	5:x8/3OeQln/CvTaBG043PrW9S73BSZJqLNcFL3MJPvMFXJf57nkXywFaCQ2PzapDNDEE2BRiTWLVim7CbiPuIZhPWw9VTIqK9qN5ZvDbTnG9aL7w0MP2QYz8Oh3Z4920CVVDjUwLt3NUWlU6gn1Y68A==;
	24:nHZ9KWStbpkdZmc7ltzhK14vLyeogUoNnTONIaWzOi9MhpIyKlp21YIFw9/+kcd6dmX3Ggm/G5D/QhUPG+jSqwx7FvxHwezfWGcROoLsrWk=;
	20:m8yaTPlhrxXRVVMvqEMKTQCNnIHezrTSGtjxUQeqKRF5Vf5BFoQpNbpxHW2QWtfXHK3ZW9CYCAib8p9DbqCd4A==
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1091;
x-microsoft-antispam-prvs: <BN3PR0501MB109156EC24AF6F3FBD8F9E00BB930@BN3PR0501MB1091.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(5005006)(3002001); SRVR:BN3PR0501MB1091; BCL:0;
	PCL:0; RULEID:; SRVR:BN3PR0501MB1091; 
x-forefront-prvs: 06290ECA9D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(377454003)(51704005)(5003600100002)(106116001)(76576001)(2501003)(92566002)(5001770100001)(77156002)(122556002)(66066001)(40100003)(33656002)(46102003)(74316001)(62966003)(19580395003)(2950100001)(86362001)(5002640100001)(54356999)(50986999)(76176999)(19580405001)(5001960100002)(107886002)(102836002)(77096005)(87936001)(2656002)(189998001)(2900100001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1091;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2015 12:57:39.4863 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1091
Subject: Re: Multiple conncetion to svn (svn+ssh)
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
X-List-Received-Date: Mon, 06 Jul 2015 13:11:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWFyY2luLA0KDQo+IEZyb206IHlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZyBbbWFpbHRv
OnlvY3RvLWJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIE1hcmNpbiBLcnpl
bWluc2tpDQo+IFNlbnQ6IEZyaWRheSwgSnVseSAwMywgMjAxNSA3OjU1IEFNDQo+IFRvOiB5b2N0
b0B5b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFt5b2N0b10gTXVsdGlwbGUgY29ubmNldGlv
biB0byBzdm4gKHN2bitzc2gpDQo+DQo+IEhlbGxvIGFnYWluLA0KPg0KPiBJIGhhdmUgMTIgcmVj
aXBlcyB0aGF0IGRvd25sb2FkIGNvZGUgZnJvbSBzYW1lIHN2biByZXBvc2l0b3J5ICh1c2luZyBz
dm4rc3NoKXByb3RvY29sLg0KPiBSZWNpcGVzIGFyZSBncm91cGVkIGluIHBhY2thZ2Vncm91cC4N
Cj4gV2hlbiBJIHdhbnQgdG8gYml0YmFrZSBwYWNrYWdlZ3JvdXAgZmV0Y2hlciBmYWlsLCBidXQg
d2hlbiBJIHJ1biByZWNpcGUgYWxvbmUgYWxsIGlzIG9rLg0KPiBJIHRoaW5rIGl0IGlzIGJlY2F1
c2UgSSB3YW50IHRvIG9wZW4gOCBjb25uZWN0aW9uIHRvIG9uZSBzdm4gcmVwb3NpdG9yeS5Ib3cg
Y2FuIEkgZml4IHRoaXMsIGZvciBleGFtcGxlIGJ5IGFsbG93aW5nIG9ubHkgZWcuIDIgcmVjaXBl
cyBmcm9tIHBhY2thZ2Vncm91cCB0byBiZSBleGVjdXRlZCBpbiBwYXJhbGVsbC4NCj4NCg0KVGhl
cmUgaXMgbm8gZmV0Y2hlci1zcGVjaWZpYyB2YXJpYWJsZSB0aGF0IEkga25vdyBvZiwgYnV0IEkg
dGhpbmsgeW91IGNhbiBzZXQgUEFSQUxMRUxfTUFLRT0iMiIgaW4geW91ciByZWNpcGVzIHRvIHJl
ZHVjZSB0aGUgbnVtYmVyIG9mIGZldGNoZXMgb24geW91ciByZXBvc2l0b3J5IGF0IGEgdGltZS4g
IFRoZQ0KZG93bnNpZGUgaXMgeW91ciBidWlsZCB3aWxsIGdvIHNsb3dlciB3aGVuIGl0IGlzIGJ1
aWxkaW5nIHlvdXIgcmVjaXBlcyBhcyBpdCB3b24ndCBiZSBkb2luZyBhcyBtYW55IHRoaW5ncyBp
biBwYXJhbGxlbC4NCg0KQW5vdGhlciBvcHRpb24gbWF5IGJlIHRvIGNoYW5nZSB5b3VyIFN1YnZl
cnNpb24gc2VydmVyIHNldHRpbmdzLCB5b3VyIGJ1aWxkIG1hY2hpbmUncyBTU0ggc2V0dGluZ3Ms
IG9yIGJvdGguICBJZiB5b3UgaGF2ZSBjb250cm9sIG92ZXIgeW91ciBTdWJ2ZXJzaW9uIHNlcnZl
ciwgeW91IG1heSBiZSBhYmxlIHRvDQpjaGFuZ2UgdGhlIG51bWJlciBvZiBhbGxvd2VkIHNpbXVs
dGFuZW91cyBjb25uZWN0aW9ucy4gIFNlZSB0aGUgZG9jdW1lbnRhdGlvbiBmb3IgeW91ciBzZXJ2
ZXIncyBTdWJ2ZXJzaW9uL3dlYiBob3N0aW5nL1NTSCB0b29scyB0byBzZWUgd2hhdCB5b3VyIG9w
dGlvbnMgYXJlLiAgSWYgeW91IGRvbid0DQpoYXZlIHRoYXQga2luZCBvZiBjb250cm9sIG92ZXIg
dGhlIFN1YnZlcnNpb24gc2VydmVyLCB0aGVuIG1heWJlIHlvdSBjYW4gY2hhbmdlIHlvdXIgU1NI
IHNldHRpbmdzIG9uIHlvdXIgYnVpbGQgbWFjaGluZSB0byBleHRlbmQgdGhlIGxvZ2luIHRpbWVv
dXQuICBBZ2Fpbiwgc2VlIHlvdXIgc3BlY2lmaWMNCnRvb2wncyBkb2N1bWVudGF0aW9uIHRvIHNl
ZSBob3cgdG8gZG8gdGhpcyBmb3IgeW91ciBidWlsZCBtYWNoaW5lLg0KDQo+IHwgREVCVUc6IFB5
dGhvbiBmdW5jdGlvbiBiYXNlX2RvX2ZldGNoIGZpbmlzaGVkDQo+IHwgREVCVUc6IFB5dGhvbiBm
dW5jdGlvbiBkb19mZXRjaCBmaW5pc2hlZA0KPiB8IEVSUk9SOiBGdW5jdGlvbiBmYWlsZWQ6IEZl
dGNoZXIgZmFpbHVyZTogRmV0Y2ggY29tbWFuZCBmYWlsZWQgd2l0aCBleGl0IGNvZGUgMSwgb3V0
cHV0Og0KPiB8IHN2bjogRTIxMDAwMjogVW5hYmxlIHRvIGNvbm5lY3QgdG8gYSByZXBvc2l0b3J5
IGF0IFVSTCAnc3ZuK3NzaDovL1NWTl9UQUcnDQo+IHwgc3ZuOiBFMjEwMDAyOiBUbyBiZXR0ZXIg
ZGVidWcgU1NIIGNvbm5lY3Rpb24gcHJvYmxlbXMsIHJlbW92ZSB0aGUgLXEgb3B0aW9uIGZyb20g
J3NzaCcgaW4gdGhlIFt0dW5uZWxzXSBzZWN0aW9uIG9mIHlvdXIgU3VidmVyc2lvbiBjb25maWd1
cmF0aW9uIGZpbGUuDQo+IHwgc3ZuOiBFMjEwMDAyOiBOZXR3b3JrIGNvbm5lY3Rpb24gY2xvc2Vk
IHVuZXhwZWN0ZWRsDQo+DQo+DQo+IE15IFlvY3RvIHZlcnNpb24gaXMgMS43LjINCj4NCj4gUmVn
YXJkcywNCj4gTWFyY2luDQoNClJlZ2FyZHMsDQpCcnlhbg0K

