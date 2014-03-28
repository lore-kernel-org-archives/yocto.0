Return-Path: <meenakumari.s@hcl.com>
Received: from GWS06.hcl.com (gws06.hcl.com [203.105.185.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83E91E00BA7
	for <yocto@yoctoproject.org>; Thu, 27 Mar 2014 23:06:19 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.97,748,1389724200"; d="scan'208";a="64278650"
Received: from unknown (HELO NDA-HCLIN-HT02.CORP.HCL.IN) ([10.248.64.36])
	by GWS06.hcl.com with ESMTP/TLS/AES128-SHA; 28 Mar 2014 11:31:57 +0530
Received: from NDA-HCLT-CSHT03.HCLT.CORP.HCL.IN (10.98.132.28) by
	NDA-HCLIN-HT02.CORP.HCL.IN (10.248.64.36) with Microsoft SMTP Server
	(TLS) id 8.3.245.1; Fri, 28 Mar 2014 11:35:41 +0530
Received: from NDA-HCLT-MBS02.HCLT.CORP.HCL.IN ([10.98.132.17]) by
	NDA-HCLT-CSHT03.HCLT.CORP.HCL.IN ([10.98.132.28]) with mapi id
	14.03.0123.003; Fri, 28 Mar 2014 11:35:40 +0530
From: Meenakumari Shedole <meenakumari.s@hcl.com>
To: "ross.burton@intel.com" <ross.burton@intel.com>
Thread-Topic: [yocto] Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
Thread-Index: AQHPSYlGWF8OgI4BY0eUG8fpk2Rq8Zr0llAAgAFgBgCAAAsvkA==
Date: Fri, 28 Mar 2014 06:05:39 +0000
Message-ID: <E4938C0D959B3445943720B88F07213415613522@NDA-HCLT-MBS02.hclt.corp.hcl.in>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.98.134.12]
MIME-Version: 1.0
Cc: Dipesh Karmakar <Dipesh.Karmakar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help-Gstreamer Vaapi Plugin Issue in 1080p mp4 playback
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
X-List-Received-Date: Fri, 28 Mar 2014 06:06:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9zcywNCg0KVGhhbmtzIGZvciB5b3VyIHJlcGx5Lg0KDQpBY3R1YWxseSB3ZSBoYXZlIHRy
aWVkIHRoYXQsIHByb2JsZW0gd2FzLA0KMS4gcGxheWJpbjIgKyBhdmkvM2dwIGlzIHdvcmtpbmcg
cHJvcGVybHkgYmVjYXVzZSBvZiB4dmltYWdlc2luayBpcyB1c2VkIGludGVyYWxseS4NCjIuIHBs
YXliaW4yICsgbXA0IGlzIG5vdCB0YWtpbmcgdmFhcGkgc2luaywgd2UgbmVlZCB0byBtYW51YWxs
eSBzZXQgdmlkZW8tc2luaz12YWFwaXNpbmsuDQogICBBbHNvIHdlIGFyZSBnZXR0aW5nIGFyYml0
cmFyeSBjcmFzaCB3aGlsZSBzZXR0aW5nIHRoZSBxbWwgdmlkZW8gd2luZG93IGlkIHRvIHRoZSB2
YWFwaSBzaW5rLg0KICAgU28gd2UgYXJlIG5vdCBnZXR0aW5nIGFueSBzaW5nbGUgcGlwZSB0byBw
bGF5IG1wNC9hdmkvM2dwIHN0dWZmLg0KDQpJIGJlbGlldmUgd2UgbmVlZCB0byBjaGFuZ2UgcGxh
eWJpbjIgc2luayBkeW5hbWljYWxseSB0byB4dmltYWdlc2luay92YWFwaXNpbmsgYmFzZWQgb24g
dGhlIGlucHV0Lg0KSXMgaXQganVzdGlmaWVkPyBXaGF0IGtpbmQgb2YgaXNzdWVzIHdlIG1heSBm
b3VuZCBpbiBjYXNlPw0KDQoNClJlZ2FyZHMNCk1lZW5hDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2Fn
ZS0tLS0tDQpGcm9tOiBCdXJ0b24sIFJvc3MgW21haWx0bzpyb3NzLmJ1cnRvbkBpbnRlbC5jb21d
IA0KU2VudDogVGh1cnNkYXksIE1hcmNoIDI3LCAyMDE0IDc6MTUgUE0NClRvOiBNZWVuYWt1bWFy
aSBTaGVkb2xlDQpDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0
b10gSGVscC1Hc3RyZWFtZXIgVmFhcGkgUGx1Z2luIElzc3VlIGluIDEwODBwIG1wNCBwbGF5YmFj
aw0KDQpPbiAyNyBNYXJjaCAyMDE0IDA2OjU4LCBNZWVuYWt1bWFyaSBTaGVkb2xlIDxtZWVuYWt1
bWFyaS5zQGhjbC5jb20+IHdyb3RlOg0KPiBmaWxlc3JjLT4gZGVjb2RlYmluLT5xdWV1ZS0+ZmZt
cGVnY29sb3JzcGFjZS0+eHZpbWFnZXNpbmsNCg0KVHJ5IGp1c3QgdXNpbmcgcGxheWJpbjIgaW5z
dGVhZCBvZiBjb25zdHJ1Y3RpbmcgYSBwaXBlbGluZSBtYW51YWxseSwNCnRoZXJlJ3MgbG90IG9m
IHNtYXJ0cyB0aGF0IHlvdSdsbCBuZWVkIHRvIGRvIG1hbnVhbGx5IG90aGVyd2lzZS4NCg0KUm9z
cw0KCgo6OkRJU0NMQUlNRVI6OgotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCgpU
aGUgY29udGVudHMgb2YgdGhpcyBlLW1haWwgYW5kIGFueSBhdHRhY2htZW50KHMpIGFyZSBjb25m
aWRlbnRpYWwgYW5kIGludGVuZGVkIGZvciB0aGUgbmFtZWQgcmVjaXBpZW50KHMpIG9ubHkuCkUt
bWFpbCB0cmFuc21pc3Npb24gaXMgbm90IGd1YXJhbnRlZWQgdG8gYmUgc2VjdXJlIG9yIGVycm9y
LWZyZWUgYXMgaW5mb3JtYXRpb24gY291bGQgYmUgaW50ZXJjZXB0ZWQsIGNvcnJ1cHRlZCwKbG9z
dCwgZGVzdHJveWVkLCBhcnJpdmUgbGF0ZSBvciBpbmNvbXBsZXRlLCBvciBtYXkgY29udGFpbiB2
aXJ1c2VzIGluIHRyYW5zbWlzc2lvbi4gVGhlIGUgbWFpbCBhbmQgaXRzIGNvbnRlbnRzCih3aXRo
IG9yIHdpdGhvdXQgcmVmZXJyZWQgZXJyb3JzKSBzaGFsbCB0aGVyZWZvcmUgbm90IGF0dGFjaCBh
bnkgbGlhYmlsaXR5IG9uIHRoZSBvcmlnaW5hdG9yIG9yIEhDTCBvciBpdHMgYWZmaWxpYXRlcy4K
Vmlld3Mgb3Igb3BpbmlvbnMsIGlmIGFueSwgcHJlc2VudGVkIGluIHRoaXMgZW1haWwgYXJlIHNv
bGVseSB0aG9zZSBvZiB0aGUgYXV0aG9yIGFuZCBtYXkgbm90IG5lY2Vzc2FyaWx5IHJlZmxlY3Qg
dGhlCnZpZXdzIG9yIG9waW5pb25zIG9mIEhDTCBvciBpdHMgYWZmaWxpYXRlcy4gQW55IGZvcm0g
b2YgcmVwcm9kdWN0aW9uLCBkaXNzZW1pbmF0aW9uLCBjb3B5aW5nLCBkaXNjbG9zdXJlLCBtb2Rp
ZmljYXRpb24sCmRpc3RyaWJ1dGlvbiBhbmQgLyBvciBwdWJsaWNhdGlvbiBvZiB0aGlzIG1lc3Nh
Z2Ugd2l0aG91dCB0aGUgcHJpb3Igd3JpdHRlbiBjb25zZW50IG9mIGF1dGhvcml6ZWQgcmVwcmVz
ZW50YXRpdmUgb2YKSENMIGlzIHN0cmljdGx5IHByb2hpYml0ZWQuIElmIHlvdSBoYXZlIHJlY2Vp
dmVkIHRoaXMgZW1haWwgaW4gZXJyb3IgcGxlYXNlIGRlbGV0ZSBpdCBhbmQgbm90aWZ5IHRoZSBz
ZW5kZXIgaW1tZWRpYXRlbHkuCkJlZm9yZSBvcGVuaW5nIGFueSBlbWFpbCBhbmQvb3IgYXR0YWNo
bWVudHMsIHBsZWFzZSBjaGVjayB0aGVtIGZvciB2aXJ1c2VzIGFuZCBvdGhlciBkZWZlY3RzLgoK
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo=


