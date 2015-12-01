Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DB32E00AE6; Tue,  1 Dec 2015 12:22:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.110 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1938 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Dec 2015 12:22:46 PST
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0110.outbound.protection.outlook.com [65.55.169.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B58CE00ADF
	for <yocto@yoctoproject.org>; Tue,  1 Dec 2015 12:22:46 -0800 (PST)
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com (10.160.113.12) by
	BN3PR0501MB1092.namprd05.prod.outlook.com (10.160.113.139) with
	Microsoft
	SMTP Server (TLS) id 15.1.331.20; Tue, 1 Dec 2015 19:50:25 +0000
Received: from BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) by
	BN3PR0501MB1090.namprd05.prod.outlook.com ([10.160.113.12]) with
	mapi id 15.01.0337.015; Tue, 1 Dec 2015 19:50:25 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Michael Habibi <mikehabibi@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Best practice for files copied directly into sysroot?
Thread-Index: AQHRLEysoQoJ6J+2nk2wyet0ibQyrJ62bU7w
Date: Tue, 1 Dec 2015 19:50:24 +0000
Message-ID: <BN3PR0501MB1090CB712DB3C7DE23120AA3BB0F0@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
In-Reply-To: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-microsoft-exchange-diagnostics: 1; BN3PR0501MB1092;
	5:nJIBGfNwmz1UgJP+1xd+lBbG2Fa+UfDsFXE70qpGQn7Jh0Pt1fbO7IwXJFqfVjfww0dsDHpNi7rjQINeWN+MZbcW8SgJPy1yDNdYl/0BkZdgwF+P14NB8ieRFVXRmDXvhMcWwslU7jLzx3Xln/4jkQ==;
	24:7RGb47qDjrBxrXK33TrIa0m6WNFoMeYHElBxVGUdoPCTzXhDem+E+QZci9X7eCAaLE2hNKS+WBhW5X9Rw8foy7QhyK1l2F8IT+8dtPkp1Mw=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN3PR0501MB1092;
x-microsoft-antispam-prvs: <BN3PR0501MB10923092B731073C2B242220BB0F0@BN3PR0501MB1092.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(520078)(8121501046)(5005006)(3002001)(10201501046);
	SRVR:BN3PR0501MB1092; BCL:0; PCL:0; RULEID:;
	SRVR:BN3PR0501MB1092; 
x-forefront-prvs: 07778E4001
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(199003)(377454003)(189002)(13464003)(164054003)(19580395003)(99286002)(10400500002)(33656002)(1096002)(74316001)(97736004)(76576001)(5001770100001)(86362001)(106356001)(50986999)(40100003)(106116001)(5008740100001)(77096005)(2900100001)(5003600100002)(87936001)(101416001)(122556002)(11100500001)(5001960100002)(54356999)(102836003)(19580405001)(92566002)(76176999)(105586002)(6116002)(15975445007)(81156007)(1220700001)(107886002)(586003)(3846002)(2950100001)(2501003)(5002640100001)(189998001)(5004730100002)(66066001);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BN3PR0501MB1092;
	H:BN3PR0501MB1090.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2015 19:50:24.8522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3PR0501MB1092
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Tue, 01 Dec 2015 20:22:48 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

TWljaGFlbCwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiB5b2N0by1i
b3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by0NCj4gYm91bmNlc0B5b2N0b3By
b2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgTWljaGFlbCBIYWJpYmkNCj4gU2VudDogVHVlc2RheSwg
RGVjZW1iZXIgMDEsIDIwMTUgMTA6MjYgQU0NCj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
Cj4gU3ViamVjdDogW3lvY3RvXSBCZXN0IHByYWN0aWNlIGZvciBmaWxlcyBjb3BpZWQgZGlyZWN0
bHkgaW50byBzeXNyb290Pw0KPiANCj4gSSBhbSB3b3JraW5nIG9uIHBvdGVudGlhbGx5IG1pZ3Jh
dGluZyBvdXIgZGlzdHJpYnV0aW9uIHRvIFlvY3RvICh3aWxsIGJlIGEgbG9uZywNCj4gbG9uZyBw
cm9jZXNzKS4gV2UgaGF2ZSBhbiBhcmVhIG9mIG91ciBmaWxlc3lzdGVtIHdoZXJlIGFueSBmaWxl
IHBsYWNlZCB3aWxsIGdvDQo+IGRpcmVjdGx5IGludG8gdGhlIHJvb3RmcyBvZiB0aGUgdGFyZ2V0
LiBUaGlzIHdvcmtzIHdlbGwgd2l0aCBvdXIgcHJvZHVjdCwgYXMgd2UNCj4gaGF2ZSBjZXJ0YWlu
IGJpbmFyaWVzIGFuZCBzY3JpcHRzIHRoYXQgbmVlZCB0byBiZSBjb3BpZWQgZGlyZWN0bHksIGFu
ZCB0aGVyZSdzDQo+IG5vIG90aGVyIHJlYWwgc3RlcCBpbnZvbHZlZCAobm8gY29tcGlsYXRpb24s
IGV0YykuIElzIHRoZXJlIGEgYmVzdCBwcmFjdGljZSBvcg0KPiBleGlzdGluZyBjbGFzcyB0aGF0
IGhhbmRsZXMgdGhpcz8gSSBzYXcgbWVudGlvbiBvZiBhIGJpbmFyeS8gZGlyZWN0b3J5IGJ1dCBJ
DQo+IHdhc24ndCBzdXJlIGlmIHRoYXQgd2FzIGZvciB0aGlzIG9yIHNvbWV0aGluZyBlbHNlLg0K
PiANCj4gVGhhbmtzLA0KPiBNaWNoYWVsDQoNCkknbSBnbGFkIEkgZGVjaWRlZCB0byBhbnN3ZXIg
eW91ciBxdWVzdGlvbiBiZWNhdXNlIEkgdGhpbmsgSSBmb3VuZCBhbiBlYXNpZXIgd2F5IHRvIGRv
IGl0IHRoYW4gSSBoYXZlIGJlZW4gZG9pbmcgdGhpcyBpbiB0aGUgcGFzdC4gIElmIHlvdSB3YW50
IHRvIGJlIGFibGUgdG8gdXBkYXRlIHRoZSBmaWxlcyBvbiB5b3VyIHN5c3RlbSBhdCBhIGxhdGVy
IGRhdGUsIHlvdSB3aWxsIHdhbnQgdG8gbWFrZSB5b3VyIG93biByZWNpcGUgd2hpY2ggaW5zdGFs
bHMgdGhlIGJpbmFyaWVzIGFuZCBzY3JpcHRzIG9udG8gdGhlIHJvb3Rmcy4gIEluIGdlbmVyYWwg
eW91IGNyZWF0ZSBhIHJlY2lwZSB3aGljaCBkb2VzIG5vdCBoYXZlIGRvX2NvbmZpZ3VyZSBvciBk
b19jb21waWxlIHRhc2tzLiAgVGhlcmUgaXMgYSBjbGFzcyB0aGF0IGRvZXMgdGhpcyBhbHJlYWR5
IGNhbGxlZCAiYmluX3BhY2thZ2UiIHRoYXQgZG9lcyB0aGlzIGZvciB5b3UuICBTZWUgdGhlICJQ
YWNrYWdpbmcgRXh0ZXJuYWxseSBQcm9kdWNlZCBCaW5hcmllcyIgc2VjdGlvbiBvZiB0aGUgbWFu
dWFsIGhlcmU6IGh0dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzIuMC9tZWdhLW1hbnVh
bC9tZWdhLW1hbnVhbC5odG1sI25ldy1yZWNpcGUtdGVzdGluZy1leGFtcGxlcy4gICBTbyBpZiB5
b3UgaW5jbHVkZSB0aGUgbGluZSAiaW5oZXJpdCBiaW5fcGFja2FnZSIgYW5kIGZvbGxvdyB0aGUg
aW5zdHJ1Y3Rpb25zIGluIHRoYXQgc2VjdGlvbiBvZiB0aGUgbWFudWFsLCBpdCBzaG91bGQgaW5z
dGFsbCBhbGwgdGhlIGZpbGVzIHRvIHRoZSByb290ZnMgdGhhdCBhcmUgaW5jbHVkZWQgaW4gdGhl
IHJlY2lwZS4NCg0KUmVnYXJkcywNCkJyeWFuDQoNCg==

