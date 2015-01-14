Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF280E0083C; Wed, 14 Jan 2015 13:33:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83F6AE002F9
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 13:33:48 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 14 Jan 2015 13:30:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,758,1418112000"; d="scan'208";a="637395660"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga001.jf.intel.com with ESMTP; 14 Jan 2015 13:33:48 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Wed, 14 Jan 2015 13:33:48 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.192]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.150]) with mapi id
	14.03.0195.001; Wed, 14 Jan 2015 13:33:47 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [yocto] BSP guide refers to meta-fri2 as example for binary/
	data, it has none
Thread-Index: AQHQJF1nW83ytnDKJkqA9TfN+wertZyyF3rwgACPuICADZOI0A==
Date: Wed, 14 Jan 2015 21:33:47 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E99F0A@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1412301317080.7369@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237988E908CE@ORSMSX101.amr.corp.intel.com>
	<1420496041.8591.17.camel@picadillo>
In-Reply-To: <1420496041.8591.17.camel@picadillo>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BSP guide refers to meta-fri2 as example for binary/ data, it has none
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
X-List-Received-Date: Wed, 14 Jan 2015 21:33:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSBmaXhlZCB0aGlzIHVwIGEgYml0Lg0KDQpTY290dA0KDQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCj5Gcm9tOiBaYW51c3NpLCBUb20NCj5TZW50OiBNb25kYXksIEphbnVhcnkgMDUsIDIw
MTUgMjoxNCBQTQ0KPlRvOiBSaWZlbmJhcmssIFNjb3R0IE0NCj5DYzogUm9iZXJ0IFAuIEouIERh
eTsgWW9jdG8gZGlzY3Vzc2lvbiBsaXN0DQo+U3ViamVjdDogUmU6IFt5b2N0b10gQlNQIGd1aWRl
IHJlZmVycyB0byBtZXRhLWZyaTIgYXMgZXhhbXBsZSBmb3IgYmluYXJ5LyBkYXRhLA0KPml0IGhh
cyBub25lDQo+DQo+T24gTW9uLCAyMDE1LTAxLTA1IGF0IDIxOjQ0ICswMDAwLCBSaWZlbmJhcmss
IFNjb3R0IE0gd3JvdGU6DQo+Pg0KPj4gPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+PiA+
RnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tDQo+PiA+
Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgUm9iZXJ0IFAuIEouIERheQ0K
Pj4gPlNlbnQ6IFR1ZXNkYXksIERlY2VtYmVyIDMwLCAyMDE0IDEwOjIwIEFNDQo+PiA+VG86IFlv
Y3RvIGRpc2N1c3Npb24gbGlzdA0KPj4gPlN1YmplY3Q6IFt5b2N0b10gQlNQIGd1aWRlIHJlZmVy
cyB0byBtZXRhLWZyaTIgYXMgZXhhbXBsZSBmb3IgYmluYXJ5Lw0KPj4gPmRhdGEsIGl0IGhhcyBu
b25lDQo+PiA+DQo+PiA+DQo+PiA+ICBpbiBzZWMgMS4zLjEgb2YgQlNQIGd1aWRlLCB0aGVyZSBp
cyBhbiBleHBsYW5hdGlvbiBvZiB0aGUgUkVBRE1FLnNvdXJjZXMNCj5maWxlLg0KPj4gPmZpcnN0
LCB0aGUgdGV4dCBzdWdnZXN0cyB0aGF0IGZpbGUgaXMgbWFuZGF0b3J5Og0KPj4gPg0KPj4gPiJZ
b3UgbXVzdCBpbmNsdWRlIGEgUkVBRE1FLnNvdXJjZXMgaW4gdGhlIG1ldGEtYnNwX25hbWUgZGly
ZWN0b3J5LiINCj4+DQo+PiBJIHVuZGVyc3Rvb2QgdGhhdCBmb3IgYSByZWxlYXNlZCBCU1AgdG8g
YmUgY29uc2lkZXJlZCBZb2N0by1jb21wbGlhbnQsDQo+PiB0aGUgUkVBRE1FLnNvdXJjZXMgZmls
ZXMgaXMgYSByZXF1aXJlbWVudC4NCj4+ID4NCj4NCj5SaWdodCwgUkVBRE1FLnNvdXJjZXMgcmVm
ZXJzIHRvIHRoZSBzb3VyY2VzIHVzZWQgdG8gZ2VuZXJhdGUgdGhlIGJpbmFyaWVzIGluDQo+YSBy
ZWxlYXNlZCBCU1AgZS5nLiB0aGUgcmVsZWFzZSB0YXJiYWxscyBvbiB0aGUgWW9jdG8gQlNQIERv
d25sb2FkcyBwYWdlKHMpLg0KPg0KPj4gPmhvd2V2ZXIsIGFzIGkgcmVhZCBpdCwgaXQncyByZWFs
bHkgb25seSBuZWNlc3Nhcnkgd2hlbiBhIGxheWVyDQo+PiA+cHJvdmlkZXMgc29tZSBiaW5hcnkg
Y29udGVudCBpbiB0aGUgYmluYXJ5LyBzdWJkaXJlY3RvcnkuIHRoZSBndWlkZQ0KPj4gPnRoZW4g
Z29lcyBvbiB0byBjbGFpbSB0aGF0IHRoZSBtZXRhLWZyaTIgbGF5ZXIgZG9lcyBqdXN0IHRoYXQs
IGJ1dCBpDQo+PiA+c2VlIG5vIGJpbmFyeSBjb250ZW50IGluIHRoYXQgbGF5ZXINCj4+ID4tLSBp
biBmYWN0LCBub25lIG9mIHRoZSBtZXRhLWludGVsIHN1YmxheWVycyBhcHBlYXIgdG8gY29tZSB3
aXRoDQo+PiA+YmluYXJ5IGNvbnRlbnQuIHNvIHBlcmhhcHMgdGhhdCBwYXJ0IG9mIHRoZSBndWlk
ZSBjYW4gYmUgdXBkYXRlZCB0bw0KPj4gPnJlZmVyIHRvIGFuIGFwcHJvcHJpYXRlIGxheWVyLg0K
Pj4NCj4+IFRoZSB3b3JkaW5nIGhlcmUgZG9lcyBpbXBseSB0aGF0IHRoZSBzb3VyY2VzIGFyZSB0
aGUgb25lcyB1c2VkIHRvDQo+PiBnZW5lcmF0ZSB0aGUgaW1hZ2VzIHRoYXQgd291bGQgYmUgaW4g
dGhlICJiaW5hcnkvIiBkaXJlY3RvcnkuICBDYW4NCj4+IHNvbWVvbmUgdGVsbCBtZSBpZiBpdCB3
b3VsZCBiZSBtb3JlIGFjY3VyYXRlIHRvIHN0YXRlIHRoYXQgdGhlDQo+PiBSRUFETUUuc291cmNl
cyBmaWxlIHNpbXBseSBpbmRpY2F0ZXMgd2hlcmUgdGhlIHNvdXJjZXMgdG8gYnVpbGQgdGhlDQo+
PiBCU1AgYXJlIHBlcmlvZC4uLiByZWdhcmRsZXNzIG9mIHdoZXRoZXIgb3Igbm90IGFueSBiaW5h
cmllcyBhcmUNCj4+IGluY2x1ZGVkIGluIHRoYXQgZGlyZWN0b3J5PyAgS25vd2luZyB0aGF0IHdv
dWxkIGhlbHAgbWUgbWFrZSBzdXJlIHRoaXMNCj4+IHNlY3Rpb24gaXMgbm90IG1pcy1sZWFkaW5n
LiAgQWxzbywga25vd2luZyB0aGF0IHdvdWxkIGhlbHAgbWUgY2hvb3NlDQo+PiBhbiBhcHByb3By
aWF0ZSBleGFtcGxlIHRvIHBvaW50IHRvIGZvciB0aGUgUkVBRE1FLnNvdXJjZXMgZmlsZS4NCj4+
DQo+DQo+Tm8uIHRoZSBSRUFETUUuc291cmNlcyBpbmRpY2F0ZSB3aGF0IHdhcyBhY3R1YWxseSB1
c2VkIHRvIGJ1aWxkIHRoZSBpbWFnZXMsDQo+d2hpY2ggY2FuIGFuZCBkbyBjb250YWluIG11Y2gg
bW9yZSB0aGFuIHdoYXQgaXMgc3BlY2lmaWVkIGJ5IHRoZSByZWNpcGVzIGluDQo+dGhlIEJTUCBs
YXllci4NCj4NCj5TbyBSRUFETUUuc291cmNlcyBpcyBtZWFuaW5nbGVzcyBpZiB0aGVyZSBhcmUg
bm8gYmluYXJpZXMgaW4gL2JpbmFyeSwgYW5kIHRoZQ0KPmxheWVyIGl0c2VsZiBtYXkgaGF2ZSBu
byAvYmluYXJ5IGRpcmVjdG9yeSBvciBSRUFETUUuc291cmNlcyB1bnRpbCBhIHRhcmJhbGwgaXMN
Cj5nZW5lcmF0ZWQgZm9yIHJlbGVhc2UsIHdoaWNoIGdlbmVyYXRpb24gbWlnaHQgYmUgZG9uZSBi
eSB0aGUgcmVsZWFzZQ0KPnByb2Nlc3MgaW5zdGVhZC4NCj4NCj5BZ2FpbiwgdGhpcyBhbGwgcmVm
ZXJzIHRvIHJlbGVhc2VkIEJTUHMsIGFuZCBpZiBlLmcuIG1ldGEtZnJpMiBkb2Vzbid0IGhhdmUg
dGhlc2UNCj5pbiB0aGUgbWV0YS1pbnRlbCBnaXQgcmVwbywgYW55IG1ldGEtZnJpMiByZWxlYXNl
ZCBCU1AgY2VydGFpbmx5IGRvZXMuDQo+DQo+aHRoLA0KPg0KPlRvbQ0KPg0KPg0KPg0KPj4gPg0K
Pj4gPnJkYXkNCj4+ID4NCj4+ID4tLQ0KPj4gPg0KPj4NCj4+PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPj0NCj4+ID49PT09PT09PT09
PT09DQo+PiA+Um9iZXJ0IFAuIEouIERheSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IE90dGF3YSwgT250YXJpbywgQ0FOQURBDQo+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgaHR0
cDovL2NyYXNoY291cnNlLmNhDQo+PiA+DQo+PiA+VHdpdHRlcjogICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICBodHRwOi8vdHdpdHRlci5jb20vcnBqZGF5DQo+PiA+TGlua2Vk
SW46ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGh0dHA6Ly9jYS5saW5rZWRpbi5jb20v
aW4vcnBqZGF5DQo+Pg0KPj49PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09DQo+PQ0KPj4gPj09PT09PT09PT09PT0NCj4+ID4tLQ0KPj4gPl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+PiA+eW9jdG8g
bWFpbGluZyBsaXN0DQo+PiA+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPj4gPmh0dHBzOi8vbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPg0KDQo=

