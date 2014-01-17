Return-Path: <khajahussain-s@hcl.com>
Received: from GWS08.hcl.com (gws08.hcl.com [192.8.186.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CB31E00867
	for <yocto@yoctoproject.org>; Fri, 17 Jan 2014 05:47:21 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.95,670,1384281000"; d="scan'208";a="17994367"
Received: from unknown (HELO CHN-CORP-HT02.CORP.HCL.IN) ([10.249.2.34])
	by GWS08.hcl.com with ESMTP/TLS/AES128-SHA; 17 Jan 2014 19:09:11 +0530
Received: from CHN-HCLT-CSHT03.HCLT.CORP.HCL.IN (10.150.12.28) by
	CHN-CORP-HT02.CORP.HCL.IN (10.249.2.34) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 17 Jan 2014 19:17:15 +0530
Received: from CHN-HCLT-MBS06.HCLT.CORP.HCL.IN ([10.150.12.21]) by
	CHN-HCLT-CSHT03.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Fri, 17 Jan 2014 19:17:15 +0530
From: Khaja Hussain Shaik <khajahussain-s@hcl.com>
To: Carlos Rafael Giani <dv@pseudoterminal.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan
Thread-Index: Ac8R300FuJ10dsUKQ0yVngGjpSs7Gv//qHqAgAAUtICAAtN/gP//OyOQ
Date: Fri, 17 Jan 2014 13:47:14 +0000
Message-ID: <31DD9473F5EB4E468EDC3B5642AD64BD08AEE4FD@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
	<1938188.T29nr9UITP@peggleto-mobl5.ger.corp.intel.com>
	<52D8DBA7.4070700@pseudoterminal.org>
In-Reply-To: <52D8DBA7.4070700@pseudoterminal.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
Subject: Re: Rgardring GSTreamer1.0 integration on Yocto dylan
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
X-List-Received-Date: Fri, 17 Jan 2014 13:47:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB5b3VyIHJlcGx5Lg0KDQpJIHdpbGwgdmVyeSB0aGFua2Z1bCB0byB5b3UgaWYg
eW91IGJhY2twb3J0IGdzdDEueCB0byBEeWxhbiwgd2UgYXJlIHF1aXQgc3R1Y2sgaGVyZSA6LSkN
Cg0KVGhhbmtzICYgUmVnYXJkcw0KS2hhamENCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IENhcmxvcyBSYWZhZWwgR2lhbmkgW21haWx0bzpkdkBwc2V1ZG90ZXJtaW5hbC5vcmdd
IA0KU2VudDogRnJpZGF5LCBKYW51YXJ5IDE3LCAyMDE0IDEyOjU5IFBNDQpUbzogUGF1bCBFZ2ds
ZXRvbjsgS2hhamEgSHVzc2FpbiBTaGFpazsgRGlwZXNoIEthcm1ha2FyDQpDYzogTmljb2xhcyBE
ZWNoZXNuZTsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gUmdh
cmRyaW5nIEdTVHJlYW1lcjEuMCBpbnRlZ3JhdGlvbiBvbiBZb2N0byBkeWxhbg0KDQpPbiAyMDE0
LTAxLTE1IDEzOjE5LCBQYXVsIEVnZ2xldG9uIHdyb3RlOg0KPiBPbiBXZWRuZXNkYXkgMTUgSmFu
dWFyeSAyMDE0IDEyOjA1OjAzIE5pY29sYXMgRGVjaGVzbmUgd3JvdGU6DQo+PiBPbiBXZWQsIEph
biAxNSwgMjAxNCBhdCAxMTo0OSBBTSwgS2hhamEgSHVzc2FpbiBTaGFpayA8DQo+PiBraGFqYWh1
c3NhaW4tc0BoY2wuY29tPiB3cm90ZToNCj4+PiBHcmVldGluZ3MgZnJvbSBLaGFqYS4NCj4+Pg0K
Pj4+IFdlIGFyZSB0cnlpbmcgdG8gbWFrZSBhIER5bGFuIGJ1aWxkIHdpdGggR1N0cmVhbWVyIDEu
MCBzdXBwb3J0LCBob3dldmVyIHdlDQo+Pj4gYXJlIGZhY2luZyBsb3RzIG9mIGRlcGVuZGVuY2ll
cy4gV2UgbGlrZSB0byBrbm93IHdoZXRoZXIgaXTigJlzIHBvc3NpYmxlIHRvDQo+Pj4gaW5jb3Jw
b3JhdGUgR1N0cmVhbWVyIDEuMCBpbiBEeWxhbj8gSWYgeWVzIHRoZW4gY291bGQgaXQgYmUgcG9z
c2libGUgdG8NCj4+PiBkaXJlY3QgdXMgdG8gc29tZSBkb2N1bWVudHMvcHJvY2VkdXJlLg0KPj4g
c3VjaCBsYXJnZSAnZmVhdHVyZXMnIGFyZSBub3QgZ2VuZXJhbGx5IGJhY2twb3J0ZWQgdG8gb2xk
L3N0YWJsZSByZWxlYXNlcy4NCj4+IG9ubHkgYnVnIGZpeGVzLg0KPj4NCj4+IGdzdDEuMCB3YXMg
aW50cm9kdWNlZCBpbiAnZG9yYScgd2hlcmUgeW91IGNhbiBmaW5kIGdzdCAxLjAueCBicmFuY2gs
IGFuZA0KPj4geW91IGhhdmUgZ3N0IDEuMi54IHN1cHBvcnQgaW4gY3VycmVudCBtYXN0ZXIuIHNv
IHlvdSBlaXRoZXIgbmVlZCB0bw0KPj4gYmFja3BvcnQgdGhlc2UgY2hhbmdlcyBpbnRvIGR5bGFu
LCBvciBzd2l0Y2ggdG8gYSBuZXdlciByZWxlYXNlLg0KPiBCVFcsIGl0J3Mgd29ydGggcG9pbnRp
bmcgb3V0IHRoYXQgdGhlc2UgcmVjaXBlcyBjYW4gYmUgYWRkZWQgaW4gYW4gYWRkaXRpb25hbA0K
PiBsYXllciwgc28geW91IGRvbid0IG5lZWQgdG8gcGF0Y2ggdGhlIGNvcmUgLSBpbiBmYWN0IHRo
ZXJlIGlzIGENCj4gbWV0YS1nc3RyZWFtZXIxMCBsYXllciB0aGF0IHNheXMgaXQncyBjb21wYXRp
YmxlIHdpdGggZHlsYW4gYWxyZWFkeToNCj4NCj4gaHR0cDovL2xheWVycy5vcGVuZW1iZWRkZWQu
b3JnL2xheWVyaW5kZXgvYnJhbmNoL21hc3Rlci9sYXllci9tZXRhLWdzdHJlYW1lcjEwLw0KPg0K
PiBJJ20gbm90IHN1cmUgaG93IHdlbGwgbWFpbnRhaW5lZCBpdCBpcywgeW91J2QgbmVlZCB0byB0
YWxrIHRvIHRoZSBtYWludGFpbmVyDQo+ICh3aG8gSSd2ZSBhZGRlZCB0byBDQykuDQo+DQo+IENo
ZWVycywNCj4gUGF1bA0KPg0KDQpJIGFtIHRoZSBtYWludGFpbmVyLiBTdXBwb3J0IGZvciBHU3Ry
ZWFtZXIgMS4yIGluIG1ldGEtZ3N0cmVhbWVyMS4wIA0KZHlsYW4gaGFzIG5vdCBiZWVuIG9uIG15
IGltbWVkaWF0ZSBUT0RPIGxpc3Qgc28gZmFyLCBzaW5jZSB0aGVyZSBoYXMgDQpiZWVuIG5vIGRl
bWFuZCBmb3IgaXQuIEkgY2FuIGJhY2twb3J0IGl0IGluIGEgZmV3IGRheXMuDQoNCmNoZWVycw0K
Cgo6OkRJU0NMQUlNRVI6OgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpUaGUg
Y29udGVudHMgb2YgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGFyZSBjb25maWRl
bnRpYWwgYW5kIGludGVuZGVkIGZvciB0aGUgbmFtZWQgcmVjaXBpZW50KHMpIG9ubHkuCkUtbWFp
bCB0cmFuc21pc3Npb24gaXMgbm90IGd1YXJhbnRlZWQgdG8gYmUgc2VjdXJlIG9yIGVycm9yLWZy
ZWUgYXMgaW5mb3JtYXRpb24gY291bGQgYmUgaW50ZXJjZXB0ZWQsIGNvcnJ1cHRlZCwKbG9zdCwg
ZGVzdHJveWVkLCBhcnJpdmUgbGF0ZSBvciBpbmNvbXBsZXRlLCBvciBtYXkgY29udGFpbiB2aXJ1
c2VzIGluIHRyYW5zbWlzc2lvbi4gVGhlIGUgbWFpbCBhbmQgaXRzIGNvbnRlbnRzCih3aXRoIG9y
IHdpdGhvdXQgcmVmZXJyZWQgZXJyb3JzKSBzaGFsbCB0aGVyZWZvcmUgbm90IGF0dGFjaCBhbnkg
bGlhYmlsaXR5IG9uIHRoZSBvcmlnaW5hdG9yIG9yIEhDTCBvciBpdHMgYWZmaWxpYXRlcy4KVmll
d3Mgb3Igb3BpbmlvbnMsIGlmIGFueSwgcHJlc2VudGVkIGluIHRoaXMgZW1haWwgYXJlIHNvbGVs
eSB0aG9zZSBvZiB0aGUgYXV0aG9yIGFuZCBtYXkgbm90IG5lY2Vzc2FyaWx5IHJlZmxlY3QgdGhl
CnZpZXdzIG9yIG9waW5pb25zIG9mIEhDTCBvciBpdHMgYWZmaWxpYXRlcy4gQW55IGZvcm0gb2Yg
cmVwcm9kdWN0aW9uLCBkaXNzZW1pbmF0aW9uLCBjb3B5aW5nLCBkaXNjbG9zdXJlLCBtb2RpZmlj
YXRpb24sCmRpc3RyaWJ1dGlvbiBhbmQgLyBvciBwdWJsaWNhdGlvbiBvZiB0aGlzIG1lc3NhZ2Ug
d2l0aG91dCB0aGUgcHJpb3Igd3JpdHRlbiBjb25zZW50IG9mIGF1dGhvcml6ZWQgcmVwcmVzZW50
YXRpdmUgb2YKSENMIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBoYXZlIHJlY2VpdmVk
IHRoaXMgZW1haWwgaW4gZXJyb3IgcGxlYXNlIGRlbGV0ZSBpdCBhbmQgbm90aWZ5IHRoZSBzZW5k
ZXIgaW1tZWRpYXRlbHkuCkJlZm9yZSBvcGVuaW5nIGFueSBlbWFpbCBhbmQvb3IgYXR0YWNobWVu
dHMsIHBsZWFzZSBjaGVjayB0aGVtIGZvciB2aXJ1c2VzIGFuZCBvdGhlciBkZWZlY3RzLgoKLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo=


