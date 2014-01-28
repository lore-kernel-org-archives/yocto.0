Return-Path: <khajahussain-s@hcl.com>
Received: from GWS07.hcl.com (gws07.hcl.com [192.8.186.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56F35E0044A
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 04:49:33 -0800 (PST)
X-IronPort-AV: E=Sophos;i="4.95,736,1384281000"; d="scan'208";a="18371883"
Received: from unknown (HELO CHN-CORP-HT01.CORP.HCL.IN) ([10.249.2.33])
	by GWS07.hcl.com with ESMTP/TLS/AES128-SHA; 28 Jan 2014 18:19:40 +0530
Received: from CHN-HCLT-CSHT06.HCLT.CORP.HCL.IN (10.150.12.31) by
	CHN-CORP-HT01.CORP.HCL.IN (10.249.2.33) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 28 Jan 2014 18:19:29 +0530
Received: from CHN-HCLT-MBS06.HCLT.CORP.HCL.IN ([10.150.12.21]) by
	CHN-HCLT-CSHT06.HCLT.CORP.HCL.IN ([::1]) with mapi id 14.03.0123.003;
	Tue, 28 Jan 2014 18:19:29 +0530
From: Khaja Hussain Shaik <khajahussain-s@hcl.com>
To: Carlos Rafael Giani <dv@pseudoterminal.org>
Thread-Topic: [yocto] Rgardring GSTreamer1.0 integration on Yocto dylan
Thread-Index: Ac8R300FuJ10dsUKQ0yVngGjpSs7Gv//qHqAgAAUtICAAtN/gP//OyOQ/+08b1A=
Date: Tue, 28 Jan 2014 12:49:29 +0000
Message-ID: <31DD9473F5EB4E468EDC3B5642AD64BD08E3F431@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
References: <31DD9473F5EB4E468EDC3B5642AD64BD08AECFFC@chn-hclt-mbs06.HCLT.CORP.HCL.IN>
	<CAP71Wjwgmoyj-L9MVyNe4Fk=g5OGmOa7KrAKCuWP+C-=iEZX6g@mail.gmail.com>
	<1938188.T29nr9UITP@peggleto-mobl5.ger.corp.intel.com>
	<52D8DBA7.4070700@pseudoterminal.org> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.150.5.114]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Paul
	Eggleton <paul.eggleton@linux.intel.com>, "Kishore Divvela -ERS,
	HCL Tech" <kishore-d@hcl.com>, Dipesh Karmakar <Dipesh.Karmakar@hcl.com>
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
X-List-Received-Date: Tue, 28 Jan 2014 12:49:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2FybG9zLA0KDQpEaWQgeW91IGdldCBhIGNoYW5jZSB0byBsb29rIGludG8gdGhlIHBvcnRp
bmcgb2YgZ3N0MS4wIHRvIER5bGFuPw0KDQpSZWdhcmRzDQpLaGFqYQ0KDQotLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hhamEgSHVzc2FpbiBTaGFpayANClNlbnQ6IEZyaWRheSwg
SmFudWFyeSAxNywgMjAxNCA3OjE3IFBNDQpUbzogJ0NhcmxvcyBSYWZhZWwgR2lhbmknOyBQYXVs
IEVnZ2xldG9uDQpDYzogTmljb2xhcyBEZWNoZXNuZTsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsg
RGlwZXNoIEthcm1ha2FyDQpTdWJqZWN0OiBSRTogW3lvY3RvXSBSZ2FyZHJpbmcgR1NUcmVhbWVy
MS4wIGludGVncmF0aW9uIG9uIFlvY3RvIGR5bGFuDQoNClRoYW5rcyBmb3IgeW91ciByZXBseS4N
Cg0KSSB3aWxsIHZlcnkgdGhhbmtmdWwgdG8geW91IGlmIHlvdSBiYWNrcG9ydCBnc3QxLnggdG8g
RHlsYW4sIHdlIGFyZSBxdWl0IHN0dWNrIGhlcmUgOi0pDQoNClRoYW5rcyAmIFJlZ2FyZHMNCkto
YWphDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBDYXJsb3MgUmFmYWVsIEdp
YW5pIFttYWlsdG86ZHZAcHNldWRvdGVybWluYWwub3JnXSANClNlbnQ6IEZyaWRheSwgSmFudWFy
eSAxNywgMjAxNCAxMjo1OSBQTQ0KVG86IFBhdWwgRWdnbGV0b247IEtoYWphIEh1c3NhaW4gU2hh
aWs7IERpcGVzaCBLYXJtYWthcg0KQ2M6IE5pY29sYXMgRGVjaGVzbmU7IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIFJnYXJkcmluZyBHU1RyZWFtZXIxLjAgaW50
ZWdyYXRpb24gb24gWW9jdG8gZHlsYW4NCg0KT24gMjAxNC0wMS0xNSAxMzoxOSwgUGF1bCBFZ2ds
ZXRvbiB3cm90ZToNCj4gT24gV2VkbmVzZGF5IDE1IEphbnVhcnkgMjAxNCAxMjowNTowMyBOaWNv
bGFzIERlY2hlc25lIHdyb3RlOg0KPj4gT24gV2VkLCBKYW4gMTUsIDIwMTQgYXQgMTE6NDkgQU0s
IEtoYWphIEh1c3NhaW4gU2hhaWsgPA0KPj4ga2hhamFodXNzYWluLXNAaGNsLmNvbT4gd3JvdGU6
DQo+Pj4gR3JlZXRpbmdzIGZyb20gS2hhamEuDQo+Pj4NCj4+PiBXZSBhcmUgdHJ5aW5nIHRvIG1h
a2UgYSBEeWxhbiBidWlsZCB3aXRoIEdTdHJlYW1lciAxLjAgc3VwcG9ydCwgaG93ZXZlciB3ZQ0K
Pj4+IGFyZSBmYWNpbmcgbG90cyBvZiBkZXBlbmRlbmNpZXMuIFdlIGxpa2UgdG8ga25vdyB3aGV0
aGVyIGl04oCZcyBwb3NzaWJsZSB0bw0KPj4+IGluY29ycG9yYXRlIEdTdHJlYW1lciAxLjAgaW4g
RHlsYW4/IElmIHllcyB0aGVuIGNvdWxkIGl0IGJlIHBvc3NpYmxlIHRvDQo+Pj4gZGlyZWN0IHVz
IHRvIHNvbWUgZG9jdW1lbnRzL3Byb2NlZHVyZS4NCj4+IHN1Y2ggbGFyZ2UgJ2ZlYXR1cmVzJyBh
cmUgbm90IGdlbmVyYWxseSBiYWNrcG9ydGVkIHRvIG9sZC9zdGFibGUgcmVsZWFzZXMuDQo+PiBv
bmx5IGJ1ZyBmaXhlcy4NCj4+DQo+PiBnc3QxLjAgd2FzIGludHJvZHVjZWQgaW4gJ2RvcmEnIHdo
ZXJlIHlvdSBjYW4gZmluZCBnc3QgMS4wLnggYnJhbmNoLCBhbmQNCj4+IHlvdSBoYXZlIGdzdCAx
LjIueCBzdXBwb3J0IGluIGN1cnJlbnQgbWFzdGVyLiBzbyB5b3UgZWl0aGVyIG5lZWQgdG8NCj4+
IGJhY2twb3J0IHRoZXNlIGNoYW5nZXMgaW50byBkeWxhbiwgb3Igc3dpdGNoIHRvIGEgbmV3ZXIg
cmVsZWFzZS4NCj4gQlRXLCBpdCdzIHdvcnRoIHBvaW50aW5nIG91dCB0aGF0IHRoZXNlIHJlY2lw
ZXMgY2FuIGJlIGFkZGVkIGluIGFuIGFkZGl0aW9uYWwNCj4gbGF5ZXIsIHNvIHlvdSBkb24ndCBu
ZWVkIHRvIHBhdGNoIHRoZSBjb3JlIC0gaW4gZmFjdCB0aGVyZSBpcyBhDQo+IG1ldGEtZ3N0cmVh
bWVyMTAgbGF5ZXIgdGhhdCBzYXlzIGl0J3MgY29tcGF0aWJsZSB3aXRoIGR5bGFuIGFscmVhZHk6
DQo+DQo+IGh0dHA6Ly9sYXllcnMub3BlbmVtYmVkZGVkLm9yZy9sYXllcmluZGV4L2JyYW5jaC9t
YXN0ZXIvbGF5ZXIvbWV0YS1nc3RyZWFtZXIxMC8NCj4NCj4gSSdtIG5vdCBzdXJlIGhvdyB3ZWxs
IG1haW50YWluZWQgaXQgaXMsIHlvdSdkIG5lZWQgdG8gdGFsayB0byB0aGUgbWFpbnRhaW5lcg0K
PiAod2hvIEkndmUgYWRkZWQgdG8gQ0MpLg0KPg0KPiBDaGVlcnMsDQo+IFBhdWwNCj4NCg0KSSBh
bSB0aGUgbWFpbnRhaW5lci4gU3VwcG9ydCBmb3IgR1N0cmVhbWVyIDEuMiBpbiBtZXRhLWdzdHJl
YW1lcjEuMCANCmR5bGFuIGhhcyBub3QgYmVlbiBvbiBteSBpbW1lZGlhdGUgVE9ETyBsaXN0IHNv
IGZhciwgc2luY2UgdGhlcmUgaGFzIA0KYmVlbiBubyBkZW1hbmQgZm9yIGl0LiBJIGNhbiBiYWNr
cG9ydCBpdCBpbiBhIGZldyBkYXlzLg0KDQpjaGVlcnMNCgoKOjpESVNDTEFJTUVSOjoKLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQoKVGhlIGNvbnRlbnRzIG9mIHRoaXMgZS1tYWls
IGFuZCBhbnkgYXR0YWNobWVudChzKSBhcmUgY29uZmlkZW50aWFsIGFuZCBpbnRlbmRlZCBmb3Ig
dGhlIG5hbWVkIHJlY2lwaWVudChzKSBvbmx5LgpFLW1haWwgdHJhbnNtaXNzaW9uIGlzIG5vdCBn
dWFyYW50ZWVkIHRvIGJlIHNlY3VyZSBvciBlcnJvci1mcmVlIGFzIGluZm9ybWF0aW9uIGNvdWxk
IGJlIGludGVyY2VwdGVkLCBjb3JydXB0ZWQsCmxvc3QsIGRlc3Ryb3llZCwgYXJyaXZlIGxhdGUg
b3IgaW5jb21wbGV0ZSwgb3IgbWF5IGNvbnRhaW4gdmlydXNlcyBpbiB0cmFuc21pc3Npb24uIFRo
ZSBlIG1haWwgYW5kIGl0cyBjb250ZW50cwood2l0aCBvciB3aXRob3V0IHJlZmVycmVkIGVycm9y
cykgc2hhbGwgdGhlcmVmb3JlIG5vdCBhdHRhY2ggYW55IGxpYWJpbGl0eSBvbiB0aGUgb3JpZ2lu
YXRvciBvciBIQ0wgb3IgaXRzIGFmZmlsaWF0ZXMuClZpZXdzIG9yIG9waW5pb25zLCBpZiBhbnks
IHByZXNlbnRlZCBpbiB0aGlzIGVtYWlsIGFyZSBzb2xlbHkgdGhvc2Ugb2YgdGhlIGF1dGhvciBh
bmQgbWF5IG5vdCBuZWNlc3NhcmlseSByZWZsZWN0IHRoZQp2aWV3cyBvciBvcGluaW9ucyBvZiBI
Q0wgb3IgaXRzIGFmZmlsaWF0ZXMuIEFueSBmb3JtIG9mIHJlcHJvZHVjdGlvbiwgZGlzc2VtaW5h
dGlvbiwgY29weWluZywgZGlzY2xvc3VyZSwgbW9kaWZpY2F0aW9uLApkaXN0cmlidXRpb24gYW5k
IC8gb3IgcHVibGljYXRpb24gb2YgdGhpcyBtZXNzYWdlIHdpdGhvdXQgdGhlIHByaW9yIHdyaXR0
ZW4gY29uc2VudCBvZiBhdXRob3JpemVkIHJlcHJlc2VudGF0aXZlIG9mCkhDTCBpcyBzdHJpY3Rs
eSBwcm9oaWJpdGVkLiBJZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIGVtYWlsIGluIGVycm9yIHBs
ZWFzZSBkZWxldGUgaXQgYW5kIG5vdGlmeSB0aGUgc2VuZGVyIGltbWVkaWF0ZWx5LgpCZWZvcmUg
b3BlbmluZyBhbnkgZW1haWwgYW5kL29yIGF0dGFjaG1lbnRzLCBwbGVhc2UgY2hlY2sgdGhlbSBm
b3IgdmlydXNlcyBhbmQgb3RoZXIgZGVmZWN0cy4KCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0K


