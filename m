Return-Path: <michael.blaettler@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AAF5E00971; Mon, 24 Oct 2016 22:57:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [194.138.37.39 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 469 seconds by postgrey-1.32 at yocto-www;
	Mon, 24 Oct 2016 22:57:48 PDT
Received: from lizzard.sbs.de (lizzard.sbs.de [194.138.37.39])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11EC7E00912
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 22:57:48 -0700 (PDT)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by lizzard.sbs.de (8.15.2/8.15.2) with ESMTPS id u9P5ngWp009378
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Tue, 25 Oct 2016 07:49:42 +0200
Received: from DEFTHW99ERLMSX.ww902.siemens.net
	(defthw99erlmsx.ww902.siemens.net [139.22.70.136])
	by mail1.sbs.de (8.15.2/8.15.2) with ESMTPS id u9P5nfi0023842
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=OK);
	Tue, 25 Oct 2016 07:49:42 +0200
Received: from DENBGAT9ER3MSX.ww902.siemens.net (139.22.70.84) by
	DEFTHW99ERLMSX.ww902.siemens.net (139.22.70.136) with Microsoft SMTP
	Server (TLS) id 14.3.319.2; Tue, 25 Oct 2016 07:49:41 +0200
Received: from DEFTHW99EH2MSX.ww902.siemens.net ([169.254.12.168]) by
	DENBGAT9ER3MSX.ww902.siemens.net ([139.22.70.84]) with mapi id
	14.03.0319.002; Tue, 25 Oct 2016 07:49:40 +0200
From: "Blaettler, Michael" <michael.blaettler@siemens.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Thread-Topic: [yocto]  curl-native and ca-bundle
Thread-Index: AQHSLfl2wlSh0lO52kuwkEVMfEpEhqC4qfnQ
Date: Tue, 25 Oct 2016 05:49:39 +0000
Message-ID: <347AAC56F29ACA4EA31B39C2109A6FE702F12C61@DEFTHW99EH2MSX.ww902.siemens.net>
References: <347AAC56F29ACA4EA31B39C2109A6FE702F1298D@DEFTHW99EH2MSX.ww902.siemens.net>
	<1477314859.21499.20.camel@intel.com>
In-Reply-To: <1477314859.21499.20.camel@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [139.22.70.22]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	=?utf-8?B?QW5kcsOpIERyYXN6aWs=?= <git@andred.net>
Subject: Re: curl-native and ca-bundle
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
X-List-Received-Date: Tue, 25 Oct 2016 05:57:52 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUGF0cmljaw0KDQpXaGF0IGRvIHlvdSB0aGluayBvZiByZW1vdmluZyB0aGUgLS13aXRoLWNh
LWJ1bmRsZSBhcyBhIHNvbHV0aW9uIGZvciBjdXJsLW5hdGl2ZT8gT24gbXkgbWFjaGluZSBpdCB3
b3JrcyB3aXRob3V0IHByb2JsZW1zLg0KTWlnaHQgdGhpcyBiZSBhbiBhY2NlcHRhYmxlIHNvbHV0
aW9uIGZvciB1cHN0cmVhbT8NCg0KS2luZCByZWdhcmRzDQoNCk1pY2hhZWwNCg0KLS0tLS1VcnNw
csO8bmdsaWNoZSBOYWNocmljaHQtLS0tLQ0KVm9uOiBQYXRyaWNrIE9obHkgW21haWx0bzpwYXRy
aWNrLm9obHlAaW50ZWwuY29tXSANCkdlc2VuZGV0OiBNb250YWcsIDI0LiBPa3RvYmVyIDIwMTYg
MTU6MTQNCkFuOiBCbGFldHRsZXIsIE1pY2hhZWwgKEJUIENQUyBSJkQgWkcgRlcgSVRXKQ0KQ2M6
IHlvY3RvQHlvY3RvcHJvamVjdC5vcmc7IElzbW8gUHV1c3RpbmVuOyBBbmRyw6kgRHJhc3ppaw0K
QmV0cmVmZjogUmU6IFt5b2N0b10gY3VybC1uYXRpdmUgYW5kIGNhLWJ1bmRsZQ0KDQpPbiBNb24s
IDIwMTYtMTAtMjQgYXQgMDc6MjAgKzAwMDAsIEJsYWV0dGxlciwgTWljaGFlbCB3cm90ZToNCj4g
SGkgYWxsDQo+IA0KPiBXZSBqdXN0IGhhZCBhbiBpc3N1ZSBpbiByZWdhcmQgdG8gY3VybC1uYXRp
dmUuDQo+IEJ5IGRlZmF1bHQgY3VybCBpcyBjb25maWd1cmVkIHdpdGggdGhlICItLXdpdGgtY2Et
YnVuZGxlPSR7c3lzY29uZmRpcn0vc3NsL2NlcnRzL2NhLWNlcnRpZmljYXRlcy5jcnQiIGZsYWcu
DQo+IEluIGNhc2UgY3VybC1uYXRpdmUgaXMgYnVpbGRlZCB0aGUgJHtzeXNjb25mZGlyfSBvZiB0
aGUgY3VycmVudCBwcm9qZWN0IGlzIGNvbXBpbGVkIGludG8gdGhlIGJpbmFyeS4gRHVlIHRvIHNz
dGF0ZSBjYWNoaW5nIHRoZSBiaW5hcnkgd2lsbCBiZSByZXVzZWQgaW4gb3RoZXIgcHJvamVjdHMs
IGJ1dCB0aGUgY2EtYnVuZGxlIGlzIHN0aWxsIGxvYWRlZCBmcm9tIHRoZSBmaXJzdCBwcm9qZWN0
LiBBcyBzb29uIGFzIHRoZSBmaXJzdCBwcm9qZWN0ICh3aGVyZSB0aGUgaW5pdGlhbCBidWlsZCB0
b29rIHBsYWNlKSBpcyBkZWxldGVkLCBjdXJsLW5hdGl2ZSB3b24ndCBiZSBhYmxlIHRvIGZldGNo
IGZyb20gSFRUUFMgc291cmNlcywgYmVjYXVzZSB0aGUgY2EtcGF0aCBpcyBpbnZhbGlkLg0KPiAN
Cj4gQXMgYSBxdWljayBzb2x1dGlvbiBJIHJlbW92ZWQgdGhlICItLXdpdGgtY2EtYnVuZGxlIiBj
b25maWd1cmUgb3B0aW9uIGluIG5hdGl2ZSBidWlsZHMgYW5kIGN1cmwgaXMgbm93IGxvYWRpbmcg
dGhlIGRlZmF1bHQgY2VydGlmaWNhdGUgY2hhaW4gb2YgdGhlIGJ1aWxkIGhvc3QuDQo+IA0KPiBE
b2VzIGFueWJvZHkgZm91bmQgc2ltbWlsYXIgaXNzdWVzIGluIG90aGVyIHJlY2lwZXM/DQoNClll
cywgd2UgcmFuIGludG8gdGhlIHNhbWUgaXNzdWUgd2l0aCBhIENWRSBjaGVjayB0b29sLCB3aGlj
aCBhbHNvIHVzZXMgbGliY3VybC4NCg0KPiBIb3cgZG8geW91IGhhbmRsZSB0aGVtPw0KDQpXZSBo
YWQgdG8gcGF0Y2ggdGhlIHRvb2wgc28gdGhhdCBpdCBjYW4gb3ZlcnJpZGUgdGhlIENBIGNlcnQg
cGF0aCBhbmQgdGhlbiBleHBsaWNpdGx5IG92ZXJyaWRlIHRoZSBidWlsdGluIHBhdGggYXQgcnVu
dGltZSwgc2VlOg0KaHR0cHM6Ly9naXRodWIuY29tLzAxb3JnL21ldGEtc2VjdXJpdHktaXNhZncv
Y29tbWl0L2Q4NDRmMzcwZDU4NDdkYTA4ZmVmODNiOTE2ZTYyMWViZjZiNWZhMzcNCg0KU29tZSBj
b2xsZWFndWVzIHJlY2VudGx5IG5vdGljZWQgdGhhdCB0aGUgdmVyc2lvbiBvZiBjdmUtY2hlY2st
dG9vbCBpbiBPRS1jb3JlIGxhY2tzIHRoYXQgcGF0Y2guIEknbSBub3Qgc3VyZSB3aGV0aGVyIHRo
YXQgd2FzIHJlcG9ydGVkLCB0aG91Z2guIEFuZHLDqSwgSXNtbz8NCg0KPiBJcyB0aGVyZSBhIGNv
bW1vbiBhcHByb2FjaD8NCg0KTm8sIG5vdCByZWFsbHkuIFBhdGNoaW5nIGJpbmFyaWVzIHdhcyBt
ZW50aW9uZWQsIGJ1dCBpdCB3YXNuJ3QgY2xlYXIgaG93IHRvIGRvIHRoYXQgaW4gcHJhY3RpY2Uu
DQoNCi0tDQpCZXN0IFJlZ2FyZHMsIFBhdHJpY2sgT2hseQ0KDQpUaGUgY29udGVudCBvZiB0aGlz
IG1lc3NhZ2UgaXMgbXkgcGVyc29uYWwgb3BpbmlvbiBvbmx5IGFuZCBhbHRob3VnaCBJIGFtIGFu
IGVtcGxveWVlIG9mIEludGVsLCB0aGUgc3RhdGVtZW50cyBJIG1ha2UgaGVyZSBpbiBubyB3YXkg
cmVwcmVzZW50IEludGVsJ3MgcG9zaXRpb24gb24gdGhlIGlzc3VlLCBub3IgYW0gSSBhdXRob3Jp
emVkIHRvIHNwZWFrIG9uIGJlaGFsZiBvZiBJbnRlbCBvbiB0aGlzIG1hdHRlci4NCg0KDQoNCg==

