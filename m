Return-Path: <uriell@wicresoft.com>
Received: from WS-EDGE-01.wicresoft.com (WS-EDGE-01.wicresoft.com
	[210.13.114.162])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EC76E00305
	for <yocto@yoctoproject.org>; Tue, 20 Dec 2011 00:46:42 -0800 (PST)
Received: from WS-ZZHUB-02.wicresoft.com (210.13.114.234) by
	WS-EDGE-01.wicresoft.com (210.13.114.162) with Microsoft SMTP Server
	(TLS) id 8.3.106.1; Tue, 20 Dec 2011 16:46:39 +0800
Received: from WS-ZZMBX-01.wicresoft.com ([fe80::3d7c:2b45:c495:22c7]) by
	WS-ZZHUB-02.wicresoft.com ([2002:d20d:72ea::d20d:72ea]) with mapi;
	Tue, 20 Dec 2011 16:46:38 +0800
From: Uriel Liu <uriell@wicresoft.com>
To: Samuel Stirtzel <s.stirtzel@googlemail.com>, "Wang, Shane"
	<shane.wang@intel.com>
Date: Tue, 20 Dec 2011 16:46:37 +0800
Thread-Topic: [yocto] RFC: Web UI design for bitbake
Thread-Index: Acy+8V+fMs09K1uQR1qxzVWxc2PTEgAAig9w
Message-ID: <6F32BFA7AECCFE49B820962FDF3FE1BDBC92C5C228@WS-ZZMBX-01.wicresoft.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12ED44B7A4@shsmsx501.ccr.corp.intel.com>
	<CAGiJk9fSjJj+0M=xKX2=aeh=o3QadOf3VQz0=kG7HfBwk5qOkQ@mail.gmail.com>
In-Reply-To: <CAGiJk9fSjJj+0M=xKX2=aeh=o3QadOf3VQz0=kG7HfBwk5qOkQ@mail.gmail.com>
Accept-Language: zh-TW, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: zh-TW, en-US
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 20 Dec 2011 06:57:58 -0800
Cc: "Lv, XiaotongX \(xiaotongx.lv@intel.com\)" <xiaotongx.lv@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Lv, ChunhuaX
	<chunhuax.lv@intel.com> \(chunhuax.lv@intel.com\)" <chunhuax.lv@intel.com>
Subject: Re: RFC: Web UI design for bitbake
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 20 Dec 2011 08:46:44 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgU2FtdWVsLA0KDQpUaGFua3MgZm9yIHlvdXIgcHJlY2lvdXMgY29tbWVudCB3aGljaCBpcyBt
dWNoIG1vcmUgdmFsdWFibGUgdGhhbiAwLjAyIGNlbnRzIChsb2wpIC4gSSdsbCB0YWtlIGEgbG9v
ayBhdCBKZW5raW5zIGFuZCBIdWRzb24gdG8gc2VlIGhvdyBjb3VsZCB3ZSBzYXZlIG91ciBlZmZv
cnQgd2l0aCB0aGVzZS4NCg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NClNpbmNlcmVseSB5b3VycywN
ClVyaWVsIExpdQ0KDQoNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFNhbXVl
bCBTdGlydHplbCBbbWFpbHRvOnMuc3RpcnR6ZWxAZ29vZ2xlbWFpbC5jb21dIA0KU2VudDogMjAx
MeW5tDEy5pyIMjDml6UgMTY6MjkNClRvOiBXYW5nLCBTaGFuZQ0KQ2M6IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmc7IFVyaWVsIExpdQ0KU3ViamVjdDogUmU6IFt5b2N0b10gUkZDOiBXZWIgVUkgZGVz
aWduIGZvciBiaXRiYWtlDQoNCjIwMTEvMTIvMjAgV2FuZywgU2hhbmUgPHNoYW5lLndhbmdAaW50
ZWwuY29tPjoNCj4gSGkgYWxsLA0KPg0KPiBXZWIgVUkgaW50ZXJmYWNlIGlzIHRoZSBuZXh0IHdo
YXQgd2UgYXJlIGdvaW5nIHRvIGRvLiBVcmllbCBkcmFmdGVkIHRoZSBmaXJzdCBpdGVyYXRpb24g
b2YgdGhlIGFyY2hpdGVjdHVyZSBkZXNpZ24gYW5kIEkgcG9zdGVkIGl0IG9udG8gaHR0cHM6Ly93
aWtpLnlvY3RvcHJvamVjdC5vcmcvd2lraS9XZWJfVUkuDQo+DQo+IExvb2tpbmcgZm9yd2FyZCB0
byB5b3VyIGZlZWRiYWNrcy4NCj4NCj4gLS0NCj4gU2hhbmUNCj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4geW9jdG8gbWFpbGluZyBsaXN0DQo+IHlv
Y3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xp
c3RpbmZvL3lvY3RvDQoNCkl0IHNvdW5kcyBsaWtlIHlvdSB3YW50IHRvIGJ1aWxkIGl0IGFsbCBm
cm9tIHNjcmF0Y2gsIHF1aXRlIGEgbG90IG9mIHdvcmsgdG8gYnVpbGQgYSBmdWxseSBmZWF0dXJl
ZCB3ZWIgYnVpbGQgc3lzdGVtLCBpbiB0aGlzIGNhc2UgY29tcGF0aWJpbGl0eSB0byBvdGhlciBz
eXN0ZW1zIHdvdWxkIGJlIG5pY2UuDQoNCg0KRm9yIHdlYiBidWlsZHMgd2l0aCBiaXRiYWtlLCBK
ZW5raW5zLUNJIChhIGZvcmsgb2YgdGhlIGNvbnRpbnVvdXMgaW50ZWdyYXRpb24gc3lzdGVtIEh1
ZHNvbikgWzFdIGNvdWxkIGJlIHdvcnRoIGEgbG9vaywgaXQgaXMgbW9yZSB0aGFuIGp1c3QgYSBi
dWlsZCB0b29sLg0KDQpUaGVyZSBpcyBhbHNvIEF1dG9idWlsZGVyLCBidXQgSSBndWVzcyBmb3Ig
ZW5kIHVzZXJzIGl0IGlzIHRvbyBtdWNoIGNvbmZpZ3VyYXRpb24gZWZmb3J0Pw0KSmVua2lucy1D
SSB3YXMgdmVyeSBlYXN5IHRvIHNldHVwIGFuZCB3aXRoIGEgcGx1Zy1pbiBpdCBjb3VsZCBiZSBh
cyBzaW1wbGUgYXMgcG9pbnRpbmcgdGhlIHdlYi1VSSB0byB0aGUgQml0YmFrZSBwYXRoLCBtYW5h
Z2luZyBjbHVzdGVyL2Nsb3VkL3NsYXZlLXBjIGVudGl0aWVzIGlzIGVhc3kgdG9vLg0KDQpKdXN0
IG15IDAuMDIgY2VudHMgaW4gdGhlIGNhc2UgdGhhdCB5b3UgZGlkbid0IGFscmVhZHkgY2FzdCBp
dCBpbiBjb25jcmV0ZS4NCklNSE8gaXQgbG9va3MgbGlrZSBKZW5raW5zIGFuZCB0aGUgY29uY2Vw
dC1wZGYgYXJlIHZlcnkgc2ltaWxhciwgb25seSBkaWZmZXJlbmNlIHNlZW1zIHRvIGJlOiB5b3Ug
d2FudCB0byBpbnZlbnQgaXQgYWxsIGJ5IHlvdXJzZWxmPw0KDQoNClsxXSBKZW5raW5zLUNJIDog
aHR0cDovL2plbmtpbnMtY2kub3JnLw0KDQotLQ0KUmVnYXJkcw0KU2FtdWVsDQo=

