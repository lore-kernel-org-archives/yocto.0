Return-Path: <john.s.summers@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6526EE00744; Mon, 22 Sep 2014 13:20:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F35D4E00566
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 13:20:01 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 22 Sep 2014 13:20:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,574,1406617200"; d="scan'208";a="603625018"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
	by fmsmga002.fm.intel.com with ESMTP; 22 Sep 2014 13:19:59 -0700
Received: from fmsmsx152.amr.corp.intel.com (10.18.125.5) by
	FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Mon, 22 Sep 2014 13:19:59 -0700
Received: from fmsmsx106.amr.corp.intel.com ([169.254.6.135]) by
	FMSMSX152.amr.corp.intel.com ([169.254.6.86]) with mapi id
	14.03.0195.001; Mon, 22 Sep 2014 13:19:58 -0700
From: "Summers, John S" <john.s.summers@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>
Thread-Topic: [yocto] Packages util-linux and gettext both showing undefined
	reference
Thread-Index: Ac/UZukDqRQi6fEkRgawA0lmIJuUTACUor0AAAz8fbD//6+0gIAAXyjw///JTYCAAHRZEA==
Date: Mon, 22 Sep 2014 20:19:58 +0000
Message-ID: <AC825E12842FCA4C9E6DDED8AF00318F1FB7D7F6@FMSMSX106.amr.corp.intel.com>
References: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LaFn30Fxx2UeJbAdH94Kv1uLbDisiMXHNCHu49POoscwg@mail.gmail.com>
	<AC825E12842FCA4C9E6DDED8AF00318F1FB79231@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LYt=tZxtDO0qmOT+aNNdZxMOEqfum=dXrQO1UumYkQLJA@mail.gmail.com>
	<AC825E12842FCA4C9E6DDED8AF00318F1FB7D767@FMSMSX106.amr.corp.intel.com>
	<1411415577.26861.24.camel@empanada.home.network>
In-Reply-To: <1411415577.26861.24.camel@empanada.home.network>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Packages util-linux and gettext both showing undefined reference
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
X-List-Received-Date: Mon, 22 Sep 2014 20:20:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVG9tLA0KDQpTbyB0aGUgd2ljIGNvbW1hbmQgSSBhbSB1c2luZyB0aGF0IGZhaWxzLCBJIGJl
bGlldmUgaXMgYSBkaWZmZXJlbnQgaXNzdWUuICBJIGFjdHVhbGx5IHRlc3RlZCB0aGlzIGFuZCBp
dCB3b3JrcyB3aXRoIHRoZSAicG9reSIgZGlzdHJvLCBidXQgbm90IHdpdGggInBva3ktdGlueSIu
ICBUaGF0IHNhaWQsIGhlcmUgYXJlIHRoZSB0d28gY29tbWFuZHMgSSBhbSB1c2luZyAodXNpbmcg
cG9reS10aW55KS4NCkZhaWxzOg0KCXdpYyBjcmVhdGUgbWtlZmlkaXNrIC1lIGNvcmUtaW1hZ2Ut
bWluaW1hbA0KCUNoZWNraW5nIGJhc2ljIGJ1aWxkIGVudmlyb25tZW50Li4uDQoJRG9uZS4NCg0K
CUNyZWF0aW5nIGltYWdlKHMpLi4uDQoNCglFcnJvcjogQ291bGRuJ3QgZmluZCBIRERESVIsIGV4
aXRpbmcNClN1Y2NlZWRzOg0KCXdpYyBjcmVhdGUgbWtlZmlkaXNrIC1yIC4vdG1wL3dvcmsvZm9v
LWxheWVyLXBva3ktbGludXgvY29yZS1pbWFnZS1taW5pbWFsLzEuMC1yMC9yb290ZnMvIC1iIC4v
dG1wL3N5c3Jvb3RzL2Zvby1sYXllci91c3Ivc2hhcmUvIC1rIC4vdG1wL3N5c3Jvb3RzL2Zvby1s
YXllci91c3Ivc3JjL2tlcm5lbC8gLW4gLi90bXAvc3lzcm9vdHMveDg2XzY0LWxpbnV4LyAtbyAu
Li9mb28taW1hZ2Utb3V0Lw0KCUNyZWF0aW5nIGltYWdlKHMpLi4uDQoNCglJbmZvOiBUaGUgbmV3
IGltYWdlKHMpIGNhbiBiZSBmb3VuZCBoZXJlOg0KICAJLi4vZm9vLWltYWdlLW91dC9idWlsZC9t
a2VmaWRpc2stMjAxNDA5MjIxMzEwLXNkYS5kaXJlY3QNCg0KCVRoZSBmb2xsb3dpbmcgYnVpbGQg
YXJ0aWZhY3RzIHdlcmUgdXNlZCB0byBjcmVhdGUgdGhlIGltYWdlKHMpOg0KCSAgUk9PVEZTX0RJ
UjogICAgICAgICAgICAgICAgICAgLi90bXAvd29yay9mb28tbGF5ZXItcG9reS1saW51eC9jb3Jl
LWltYWdlLW1pbmltYWwvMS4wLXIwL3Jvb3Rmcy8NCgkgIEJPT1RJTUdfRElSOiAgICAgICAgICAg
ICAgICAgIC4vdG1wL3N5c3Jvb3RzL2Zvby1sYXllci91c3Ivc2hhcmUvDQoJICBLRVJORUxfRElS
OiAgICAgICAgICAgICAgICAgICAuL3RtcC9zeXNyb290cy9mb28tbGF5ZXIvdXNyL3NyYy9rZXJu
ZWwvDQoJICBOQVRJVkVfU1lTUk9PVDogICAgICAgICAgICAgICAuL3RtcC9zeXNyb290cy94ODZf
NjQtbGludXgvDQoNCg0KCVRoZSBpbWFnZShzKSB3ZXJlIGNyZWF0ZWQgdXNpbmcgT0Uga2lja3N0
YXJ0IGZpbGU6DQoJICAuLi4vcG9reS9zY3JpcHRzL2xpYi9pbWFnZS9jYW5uZWQtd2tzL21rZWZp
ZGlzay53a3MNCg0KSW4gdGVybXMgb2YgZ2V0dGluZyB0aGUgdW5kZWZpbmVkIGJ1aWxkIGVycm9y
cywgSSBiZWxpZXZlIGFsbCBJIGhhZCB0byBkbyB3YXMgdXNlIHBva3ktdGlueSBhbmQgYXR0ZW1w
dCB0byBidWlsZCBnZXR0ZXh0LiAgSSBoYWQgdGhlIHNhbWUgZXJyb3Igd2hlbiBJIGJ1aWx0IHRo
ZSBpbWFnZSB2aWEgdGhlICJob2IiIHRvb2wuICBJIGhhdmUgc2luY2UgY29udmVydGVkIGV2ZXJ5
dGhpbmcgb3ZlciB0byBjb21tYW5kIGxpbmUgZm9yIGF1dG9tYXRpb24gcHVycG9zZXMsIGJ1dCB0
aGUgZXJyb3IgcmVtYWlucyB0aGUgc2FtZS4NCg0KVGhhbmtzLA0KU3R1YXJ0DQoNCi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBaYW51c3NpLCBUb20gDQpTZW50OiBNb25kYXksIFNl
cHRlbWJlciAyMiwgMjAxNCAxMjo1MyBQTQ0KVG86IFN1bW1lcnMsIEpvaG4gUw0KQ2M6IEJ1cnRv
biwgUm9zczsgeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzsgRGFycmVuIEhhcnQNClN1YmplY3Q6IFJl
OiBbeW9jdG9dIFBhY2thZ2VzIHV0aWwtbGludXggYW5kIGdldHRleHQgYm90aCBzaG93aW5nIHVu
ZGVmaW5lZCByZWZlcmVuY2UNCg0KT24gTW9uLCAyMDE0LTA5LTIyIGF0IDE5OjE5ICswMDAwLCBT
dW1tZXJzLCBKb2huIFMgd3JvdGU6DQo+IEhpIERhcnJlbiwNCj4gDQo+IE1heWJlIEkgc2hvdWxk
IGVsYWJvcmF0ZSBhIGJpdCBvbiB3aGF0IEkgYW0gdHJ5aW5nIHRvIGRvLiAgQmFzaWNhbGx5LCAN
Cj4gSSBhbSB0cnlpbmcgdG8gZGV2ZWxvcCBhbiBlbWJlZGRlZCBFRkktYm9vdGFibGUgaW1hZ2Ug
dXNpbmcgdGhlIA0KPiBwb2t5LXRpbnkgZGlzdHJvLg0KPiANCj4gSSB3b3VsZCBsaWtlIHRvIGJl
IGFibGUgdG8gYXV0b21hdGUgdGhlIGltYWdlIGdlbmVyYXRpb24gcHJvY2Vzcywgc28gDQo+IEkn
dmUgYmVlbiB1c2luZyB0aGUgIndpYyIgdG9vbCB0byBnZW5lcmF0ZSB0aGUgaW1hZ2UuICBXaWMg
aGFzIGJlZW4gDQo+IHdvcmtpbmcgZ3JlYXQgKGF0IGxlYXN0IGl0IHdvcmtzIGZpbmUgd2l0aCBt
YW51YWwgcGFyYW1ldGVycywgdGhlIC1lIA0KPiBhcmd1bWVudCByZXN1bHRzIGluIGEgZmFpbHVy
ZSBhcyBkZXNjcmliZWQgYXQgDQo+IGh0dHBzOi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9z
aG93X2J1Zy5jZ2k/aWQ9NjcwNCZsaXN0X2lkPWNvb2tpZSksIGJ1dCBpdCBhcHBlYXJzIHRoYXQg
dGhlIGluaXRyYW1mcyBpbWFnZSBpcyBub3QgYmVpbmcgZ2VuZXJhdGVkIHByb3Blcmx5LCByZXN1
bHRpbmcgaW4gYSBrZXJuZWwgUGFuaWMgd2hlbiBJIGxvYWQgdGhlIGltYWdlIHZpYSBVRUZJLg0K
PiANCg0KSGksDQoNCkkgaGF2ZW4ndCBnZW5lcmF0ZWQgYSBwb2t5LXRpbnkgaW1hZ2Ugd2l0aCB3
aWMgYmVmb3JlLCBidXQgdGhvc2UgdW5kZWZpbmVkIGVycm9yIG1lc3NhZ2VzIGRvIHNlZW0gdmFn
dWVseSBmYW1pbGlhciB0byBtZSwgYW5kIEkgc2VlbSB0byByZW1lbWJlciB3b3JraW5nIGFyb3Vu
ZCB0aGVtIGJ1dCBJIGNhbid0IHJlbWVtYmVyIHRoZSBkZXRhaWxzLg0KDQpDYW4geW91IHNlbmQg
bWUgdGhlIHRoZSByZWxldmFudCBpbmZvIHRvIHRyeSBhIGJ1aWxkIG15c2VsZiwgYW5kIGFsc28g
dGhlIHdpYyBjb21tYW5kIHlvdSdyZSB1c2luZyAoYW5kIHRoZSBvbmUgdGhhdCBmYWlscyk/DQoN
ClRoYW5rcywNCg0KVG9tDQoNCj4gSSBzYXcgdGhhdCBwb2t5LXRpbnkgYnkgZGVmYXVsdCB1c2Vz
IHRoZSBmb2xsb3dpbmcgaW1hZ2UgdHlwZXM6DQo+IElNQUdFX0ZTVFlQRVMgPSAiZXh0MiBjcGlv
Lmd6Ig0KPiANCj4gVGhpcyBpcyBpbiBteSBmb28tbGF5ZXIvY29uZi9kaXN0cm8vZm9vLWxheWVy
LmNvbmYgZmlsZS4gIFRoZXJlJ3MgYWxzbyANCj4gYSBub3RlIHRoZXJlIHNheWluZyB0aGF0ICJX
ZSBkb24ndCBidWlsZCBsaXZlIGFzIHRoYXQgcHVsbHMgaW4gYSBsb3QgDQo+IG9mIGRlcGVuZGVu
Y2llcyBmb3IgbGl2ZSBpbWFnZSBhbmQgdGhlIGluc3RhbGxlciwgbGlrZSB1ZGV2LCBncnViLCAN
Cj4gZXRjLiAgVGhlc2UgcHVsbCBpbiBnZXR0ZXh0LCB3aGljaCBmYWlscyB0byBidWlsZCB3aXRo
IHdpZGUgY2hhcmFjdGVyIA0KPiBzdXBwb3J0LiINCj4gDQo+IERvZXMgdGhpcyBtZWFuIHRoYXQg
d2ljIGlzIG5vdCBzdXBwb3J0ZWQgd2l0aCBwb2t5LXRpbnk/ICBJZiBpdCBpcyANCj4gc3VwcG9y
dGVkLCBhcmUgdGhlcmUgYW55IGFkZGl0aW9uYWwgcmVxdWlyZW1lbnRzIGZvciBidWlsZGluZyAN
Cj4gaW5pdHJhbWZzIGltYWdlcyBpbnRvIHdpYyBnZW5lcmF0ZWQgaW1hZ2VzPw0KPiANCj4gQWxz
bywgSSBkb24ndCBzZWUgY29yZS1pbWFnZS1taW5pbWFsLWluaXRyYW1mcyBhZGRlZCBpbiBwb2t5
LXRpbnkgYXMgYSANCj4gUE5CTEFDS0xJU1QgaW1hZ2UuICBEbyB5b3Uga25vdyBvZiBhbnkgYWRk
aXRpb25hbCBjb25maWd1cmF0aW9uIEkgbmVlZCANCj4gdG8gZ2V0IHRoaXMgaW1hZ2UgdG8gYnVp
bGQgcHJvcGVybHkgKGVpdGhlciBkaXJlY3RseSB3aXRoIGJpdGJha2Ugb3IgDQo+IGVtYmVkZGVk
IGludG8gbXkgcmVjaXBlKT8NCj4gDQo+IFRoYW5rcyBpbiBhZHZhbmNlLA0KPiBTdHVhcnQNCj4g
DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEJ1cnRvbiwgUm9zcyBbbWFp
bHRvOnJvc3MuYnVydG9uQGludGVsLmNvbV0NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1iZXIgMjIs
IDIwMTQgMTA6MjggQU0NCj4gVG86IFN1bW1lcnMsIEpvaG4gUw0KPiBDYzogeW9jdG9AeW9jdG9w
cm9qZWN0Lm9yZzsgRGFycmVuIEhhcnQNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gUGFja2FnZXMg
dXRpbC1saW51eCBhbmQgZ2V0dGV4dCBib3RoIHNob3dpbmcgDQo+IHVuZGVmaW5lZCByZWZlcmVu
Y2UNCj4gDQo+IE9uIDIyIFNlcHRlbWJlciAyMDE0IDE4OjA1LCBTdW1tZXJzLCBKb2huIFMgPGpv
aG4ucy5zdW1tZXJzQGludGVsLmNvbT4gd3JvdGU6DQo+ID4gRElTVFJPICAgICAgICAgICAgPSAi
cG9reS10aW55Ig0KPiANCj4gSSBleHBlY3QgdGhpcyBpcyB3aGF0J3MgY2F1c2luZyB0aGUgcHJv
YmxlbS4gIHBva3ktdGlueSBpcyB2ZXJ5IGN1dC1kb3duLiAgQ0MnaW5nIERhcnJlbiBmb3IgYSBt
b3JlIGluZm9ybWVkIGNvbW1lbnQuDQo+IA0KPiBSb3NzDQoNCg0K

