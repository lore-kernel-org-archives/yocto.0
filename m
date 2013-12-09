Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DDE0E005B1
	for <yocto@yoctoproject.org>; Mon,  9 Dec 2013 10:51:04 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 09 Dec 2013 10:51:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,859,1378882800"; d="scan'208";a="447139697"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga002.fm.intel.com with ESMTP; 09 Dec 2013 10:51:04 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 9 Dec 2013 10:51:03 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.94]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Mon, 9 Dec 2013 10:51:03 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: David <david.c.nystrom@gmail.com>, "Rifenbark, Scott M"
	<scott.m.rifenbark@linux.intel.com>
Thread-Topic: [yocto] [yocto-docs][PATCH] Revert "ref-manual: Added sdk-pms
	to Distro Feature list."
Thread-Index: AQHO8oV3FsBLPSJMq0aauaZ8LiGbTZpMg/oA//+12sA=
Date: Mon, 9 Dec 2013 18:51:02 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F534F0@ORSMSX101.amr.corp.intel.com>
References: <1386254684-26972-1-git-send-email-david.nystrom@enea.com>
	<52A1CDEA.5050303@linux.intel.com> <52A5DE80.9070602@gmail.com>
In-Reply-To: <52A5DE80.9070602@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-docs][PATCH] Revert "ref-manual: Added sdk-pms to Distro Feature list."
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
X-List-Received-Date: Mon, 09 Dec 2013 18:51:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SSB3aWxsIGxvb2sgYXQgaXQgYWdhaW4uLi4gTXkgd29ya2Zsb3cgZm9yIHBhdGNoZXMgcmVxdWly
ZXMgbWUgdG8gc2F2ZSB0aGUgcGF0Y2ggZnJvbSBteSBUaHVuZGVyYmlyZCBhY2NvdW50IG9uIG15
IFdpbmRvd3MgbWFjaGluZSBhcyBhbiAuZW1sIGZpbGUgYW5kIHRoZW4gbWFpbCBpdCB0byBteSBn
bWFpbCBhY2NvdW50IG9uIG15IExpbnV4IGJveC4gIFdoZW4gSSBkaWQgdGhpcyB3aXRoIHRoZSBw
cmV2aW91cyBvbmUgaXQgd2FzIGp1c3QgYSBsb25nIHN0cmluZyBvZiBiaXRzLiAgDQoNClNjb3R0
DQoNCj4tLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPkZyb206IHlvY3RvLWJvdW5jZXNAeW9j
dG9wcm9qZWN0Lm9yZyBbbWFpbHRvOnlvY3RvLQ0KPmJvdW5jZXNAeW9jdG9wcm9qZWN0Lm9yZ10g
T24gQmVoYWxmIE9mIERhdmlkDQo+U2VudDogTW9uZGF5LCBEZWNlbWJlciAwOSwgMjAxMyA3OjE1
IEFNDQo+VG86IFJpZmVuYmFyaywgU2NvdHQgTQ0KPkNjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQo+U3ViamVjdDogUmU6IFt5b2N0b10gW3lvY3RvLWRvY3NdW1BBVENIXSBSZXZlcnQgInJlZi1t
YW51YWw6IEFkZGVkIHNkay1wbXMNCj50byBEaXN0cm8gRmVhdHVyZSBsaXN0LiINCj4NCj5PbiBm
cmUgIDYgZGVjIDIwMTMgMTQ6MTU6MjIsIFJpZmVuYmFyaywgU2NvdHQgTSB3cm90ZToNCj4+IERh
dmlkLA0KPj4NCj4+IFRoaXMgcGF0Y2ggZGlkIG5vdCBmb3JtYXQgd2VsbCB3aGVuIEkgc2VudCB0
byBteSBMaW51eCBib3guICBJIGNhbm5vdA0KPj4gYXBwbHkgaXQuICBJIGNhbiBhcHBseSBpdCBi
eSBoYW5kIG9yIHlvdSBjYW4gdHJ5IGFuZCBmb3JtIHRoZSBwYXRjaA0KPj4gYWdhaW4gYW5kIHJl
LXNlbmQgaXQgdG8gdGhlIHlvY3RvQHlvY3RvcHJvamVjdC5vcmcgbWFpbGluZyBncm91cC4NCj4+
DQo+PiBUaGFua3MsDQo+PiBTY290dA0KPg0KPkhpIFNjb3R0LA0KPg0KPkhtbSwgSSBkb24ndCBz
ZWUgYW55dGhpbmcgd3Jvbmcgd2l0aCB0aGlzIHBhdGNoLCBJIGRvdWJsZS1jaGVja2VkIGJ5IHNh
dmluZw0KPml0IGZyb20gdGhlIE1MIGFuZCBpdCBhcHBsaWVzIGNsZWFubHkgdG8gd2l0aCAiZ2l0
IGFtIiB0byBib3RoIHBva3kvbWFzdGVyIGFuZA0KPnlvY3RvLWRvY3MvbWFzdGVyDQo+DQo+VGhp
cyBwYXRjaCBpcyBhIGNsZWFuIHJldmVydCwgYW5kIHdvdWxkIGJlIHRoZSBzYW1lIGFzIGlzc3Vp
bmcgZ2l0IHJldmVydA0KPmY4MDc2ZjE5MTZjYzUyNjQ3YjEyOTkyMmMxYjE2NDZhZDZkZjhmZjkg
aW4geW9jdG8tZG9jcy4NCj4NCj5CciwNCj5EYXZpZA0KPg0KPj4NCj4+IE9uIDEyLzUvMjAxMyA2
OjQ0IEFNLCBEYXZpZCBOeXN0csO2bSB3cm90ZToNCj4+PiBUaGlzIHJldmVydHMgY29tbWl0IGY4
MDc2ZjE5MTZjYzUyNjQ3YjEyOTkyMmMxYjE2NDZhZDZkZjhmZjkuDQo+DQo+X19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj55b2N0byBtYWlsaW5nIGxpc3QN
Cj55b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+aHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2xpc3RpbmZvL3lvY3RvDQo=

