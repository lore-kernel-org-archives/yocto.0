Return-Path: <vincent.beng.keat.cheah@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7508AE00A25; Tue,  9 Jun 2015 19:50:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC0A9E009F0;
	Tue,  9 Jun 2015 19:50:56 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 09 Jun 2015 19:50:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,585,1427785200"; d="scan'208";a="505876202"
Received: from pgsmsx102.gar.corp.intel.com ([10.221.44.80])
	by FMSMGA003.fm.intel.com with ESMTP; 09 Jun 2015 19:50:51 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.205]) by
	PGSMSX102.gar.corp.intel.com ([10.221.44.80]) with mapi id
	14.03.0224.002; Wed, 10 Jun 2015 10:50:50 +0800
From: "Cheah, Vincent Beng Keat" <vincent.beng.keat.cheah@intel.com>
To: Chris Tapp <opensource@keylevel.com>
Thread-Topic: [meta-intel] "Crazy" Xorg memory usage after upgrading from
	Daisy to Fido
Thread-Index: AQHQogZAhcPdu0sLrEaBPYZenhd+m52k7viwgAAPRtA=
Date: Wed, 10 Jun 2015 02:50:50 +0000
Message-ID: <D4B999590D2ACC499FE6A1F7CF2D454A05A77060@PGSMSX103.gar.corp.intel.com>
References: <107F2908-2817-46D5-96CC-0B71CD6ADBEB@keylevel.com>
	<2174669.LymzPMzo3U@peggleto-mobl.ger.corp.intel.com>
	<50B33AC5ED75F74F991980326F1C438D1905581B@PGSMSX103.gar.corp.intel.com>
In-Reply-To: <50B33AC5ED75F74F991980326F1C438D1905581B@PGSMSX103.gar.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
X-Mailman-Approved-At: Wed, 10 Jun 2015 08:01:38 -0700
Cc: Yocto Project <yocto@yoctoproject.org>, "Chang,
	Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>,
	'Paul Eggleton' <paul.eggleton@linux.intel.com>,
	"meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>
Subject: Re: [meta-intel] "Crazy" Xorg memory usage after upgrading from Daisy to Fido
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
X-List-Received-Date: Wed, 10 Jun 2015 02:50:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQ2hyaXMsIA0KDQpJIGRvbuKAmXQgaGF2ZSBhbnkgaWRlYSB3aXRoIHJlZ2FyZCB0byB0aGUg
aXNzdWUgdGhhdCB5b3UgYXJlIGdldHRpbmcgYmVsb3cuIEFsbCB0aGUgd29yayB0aGF0IHdlIGFy
ZSBkb2luZyBoZXJlIHNvIGZhciBpcyBvbiBDSFYgKHlvY3RvLWtlcm5lbC0zLjE5LjUgc3RhbmRh
cmQvYmFzZSBicmFuY2gpLg0KDQpGcm9tIHlvdXIgc3RhdGVtZW50IGJlbG93LCBpdCBsb29rcyB0
byBtZSB0aGF0IHlvdSBhcmUgdXBncmFkaW5nIG1ldGEtaW50ZWwgZnJvbSBEYWlzeSB0byBGaWRv
IGJyYW5jaCB3aGljaCBhcmUgdXNpbmcgeW9jdG8ta2VybmVsLTMuMTQgKG1ldGEtaW50ZWwvaXNn
L3ZhbGxleWlzbGFuZCBCU1ApLiBJJ20gbm90IHN1cmUgaWYgeW91IGFyZSBhYmxlIHRvIHJlcHJv
ZHVjZSB0aGlzIHdpdGggeW9jdG8ta2VybmVsLTMuMTkuNSAoc3RhbmRhcmQvYmFzZSBicmFuY2gp
IGZyb20gdGhlIG1ldGEtaW50ZWwgY29tbW9uIGRpcmVjdG9yeS4gQWxzbywgY29tcGFyaW5nIERh
aXN5IGJyYW5jaCBhZ2FpbnN0IEZpZG8sIGl0IHNlZW1zIGxpa2UgdGhlcmUgYXJlIGxvdCBvZiBj
aGFuZ2VzIGluIHRoZSB1c2VyLXNwYWNlIHN0YWNrcywgd2hpY2ggSSdtIG5vdCBzdXJlIGNvdWxk
IGNhdXNlIHRoZSBpc3N1ZSBiZWxvdy4gDQoNCg0KRGFpc3kgMS42LjINCglLZXJuZWwgMy40LCAz
LjEwLCAzLjE0IChTdXBwb3J0YWJsZSBjb21tb24gYmFzZSkNCglYb3JnLXNlcnZlciAxLjE1DQoJ
V2F5bGFuZC9XZXN0b24gMS40LjANCglYZjg2LXZpZGVvLWludGVsIDIuOTkuOTEwDQoJTGliZHJt
IDIuNC41Mg0KCU1FU0EgOS4yLjUNCglDYWlybyAxLjEyLjE2DQoJbGliVkEgMS4zLjEgKGZyb20g
bWV0YS1pbnRlbCkNCglJbnRlbC1WQS1kcml2ZXIgMS4zLjIgKGZyb20gbWV0YS1pbnRlbCkNCglH
U3RyZWFtZXIgMS4yLjMNCglHU3RyZWFtZXItVkFBUEkgMC41LjggKGZyb20gbWV0YS1pbnRlbCkN
Cg0KDQpEaXp6eSAxLjcuMQ0KCUtlcm5lbCAzLjEwLCAzLjE0LCAzLjE3IChTdXBwb3J0YWJsZSBj
b21tb24gYmFzZSkNCglYb3JnLXNlcnZlciAxLjE1LjENCglXYXlsYW5kL1dlc3RvbiAxLjUuMA0K
CVhmODYtdmlkZW8taW50ZWwgMi45OS45MTINCglMaWJkcm0gMi40LjU0DQoJTUVTQSAxMC4xLjMN
CglDYWlybyAxLjEyLjE2DQoJbGliVkEgMS4zLjEgKGZyb20gbWV0YS1pbnRlbCkNCglJbnRlbC1W
QS1kcml2ZXIgMS4zLjIgKGZyb20gbWV0YS1pbnRlbCkNCglHU3RyZWFtZXIgMS40LjENCglHU3Ry
ZWFtZXItVkFBUEkgMC41LjggKGZyb20gbWV0YS1pbnRlbCkNCg0KDQpGaWRvIDEuOA0KCUtlcm5l
bCAzLjE0LCAzLjE5IChzdXBwb3J0YWJsZSBjb21vbiBiYXNlKQ0KCVhvcmctc2VydmVyIDEuMTYu
Mw0KCVdheWxhbmQvd2VzdG9uIDEuNi4wDQoJWGY4Ni12aWRlby1pbnRlbCAyLjk5LjkxNw0KCUxp
YmRybSAyLjQuNTkNCglNZXNhIDEwLjQuNA0KCUNhaXJvIDEuMTIuMTgNCglMaWJWQSAxLjUuMCAo
ZnJvbSBtZXRhLWludGVsKQ0KCUludGVsLVZBLWRyaXZlciAxLjUuMCAoZnJvbSBtZXRhLWludGVs
KQ0KCUdzdHJlYW1lciAxLjQuNQ0KCUdzdHJlYW1lci12YWFwaSAwLjUuMTAgKGZyb20gbWV0YS1p
bnRlbCkNCg0KDQouLi4gVmluY2VudA0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJv
bTogQ2hhbmcsIFJlYmVjY2EgU3dlZSBGdW4gDQpTZW50OiBXZWRuZXNkYXksIEp1bmUgMTAsIDIw
MTUgOTowOCBBTQ0KVG86IENoZWFoLCBWaW5jZW50IEJlbmcgS2VhdA0KQ2M6IG1ldGEtaW50ZWxA
eW9jdG9wcm9qZWN0Lm9yZzsgQ2hyaXMgVGFwcDsgWW9jdG8gUHJvamVjdDsgV29sZCwgU2F1bDsg
J1BhdWwgRWdnbGV0b24nDQpTdWJqZWN0OiBSRTogW21ldGEtaW50ZWxdICJDcmF6eSIgWG9yZyBt
ZW1vcnkgdXNhZ2UgYWZ0ZXIgdXBncmFkaW5nIGZyb20gRGFpc3kgdG8gRmlkbw0KDQpIaSBWaW5j
ZW50LA0KDQpDYW4geW91IGhlbHAgdG8gY29tbWVudCBvbiB0aGlzIGlzc3VlIG1lbnRpb25lZCBi
eSBDaHJpcz8NClRoYW5rcy4NCg0KUmVnYXJkcywNClJlYmVjY2ENCg0KPiAtLS0tLU9yaWdpbmFs
IE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBQYXVsIEVnZ2xldG9uIFttYWlsdG86cGF1bC5lZ2dsZXRv
bkBsaW51eC5pbnRlbC5jb21dDQo+IFNlbnQ6IDA5IEp1bmUsIDIwMTUgMTI6MTUgQU0NCj4gVG86
IENoYW5nLCBSZWJlY2NhIFN3ZWUgRnVuDQo+IENjOiBtZXRhLWludGVsQHlvY3RvcHJvamVjdC5v
cmc7IENocmlzIFRhcHA7IFlvY3RvIFByb2plY3Q7IFdvbGQsIFNhdWwNCj4gU3ViamVjdDogUmU6
IFttZXRhLWludGVsXSAiQ3JhenkiIFhvcmcgbWVtb3J5IHVzYWdlIGFmdGVyIHVwZ3JhZGluZyAN
Cj4gZnJvbSBEYWlzeSB0byBGaWRvDQo+IA0KPiBSZWJlY2NhLCBpcyB0aGlzIHNvbWV0aGluZyB5
b3Ugb3Igb25lIG9mIHlvdXIgY29sbGVhZ3VlcyB3b3VsZCBiZSBhYmxlIA0KPiB0byBoZWxwIHdp
dGg/DQo+IA0KPiBUaGFua3MsDQo+IFBhdWwNCj4gDQo+IE9uIEZyaWRheSAwNSBKdW5lIDIwMTUg
MDg6Mjk6MDAgQ2hyaXMgVGFwcCB3cm90ZToNCj4gPiBJ4oCZdmUgZ290IGFuIGFwcGxpY2F0aW9u
IHRoYXQgSeKAmXZlIGhhZCBydW5uaW5nIG5pY2VseSB1bmRlciBEYWlzeSBmb3IgDQo+ID4gc29t
ZSB0aW1lLiBBcyBEYWlzeSBpcyBub3cgYSBiaXQgb2xkLCBJIGRlY2lkZWQgdG8gbW92ZSB0aGUg
DQo+ID4gYXBwbGljYXRpb24gdG8NCj4gRmlkby4NCj4gPiBJ4oCZbSB1c2luZyB0aGUgbWV0YS1p
bnRlbC9pc2cvdmFsbGV5aXNsYW5kIEJTUCBhbmQgYWxzbyBzd2l0Y2hlZCB0byANCj4gPiB1c2lu
ZyBpdHMgRmlkbyBicmFuY2guDQo+ID4NCj4gPiBUaGUgbW92ZSBvbmx5IHJlcXVpcmVkIGEgZmV3
IG1pbm9yIGNoYW5nZXMgYW5kIGFsbG93ZWQgbWUgdG8gZHJvcCBhIA0KPiA+IERhaXN5IOKAnHVw
ZGF0ZXPigJ0gbGF5ZXIgdGhhdCBJIGhhZCBiZWVuIHVzaW5nIGZvciB0aGluZ3MgbGlrZSBnc3Ry
ZWFtZXItMS4wLg0KPiA+DQo+ID4gSG93ZXZlciwgdGhlcmUgaXMgb25lIGJlaGF2aW91ciB3aGlj
aCBpcyBraWxsaW5nIG1lIC0gSSBrZWVwIGdldHRpbmcgDQo+ID4gb29tLWtpbGxlciBldmVudHMh
DQo+ID4NCj4gPiBUaGUgYXBwbGljYXRpb24gaXMgYmFzaWNhbGx5IGFuIE9wZW5HTC1FUyAyLjAg
YXBwbGljYXRpb24gdGhhdCANCj4gPiByZW5kZXJzIHZhcmlvdXMgYml0cyBvZiB0ZXh0LCBpbWFn
ZXMgYW5kIHN0cmVhbXMgY2FwdHVyZWQgZnJvbSBhIA0KPiA+IGdzdHJlYW1lciBwaXBlbGluZSBh
dCA2MCBIeiB0byBhIDEwODAgc2NyZWVuLg0KPiA+DQo+ID4gVW5kZXIgRGFpc3kgdGhpcyBnZW5l
cmFsbHkgdG9vayBqdXN0IHVuZGVyIDUwJSBDUFUgYW5kIHVzZWQgYSBtb2Rlc3QgDQo+ID4gcGVy
Y2VudGFnZSBvZiB0aGUgNCBHQiBzeXN0ZW0gbWVtb3J5IC0gaS5lLiBubyB3aGVyZSBuZWFyIHJ1
bm5pbmcgDQo+ID4gb3V0IGFuZCB1c2FnZSB3YXMganVzdCBhYm91dCBzdGF0aWMuDQo+ID4NCj4g
PiBVbmRlciBGaWRvIHRoZSBDUFUgdXNhZ2UgaXMgYWJvdXQgdGhlIHNhbWUgYW5kIHRoZSBtZW1v
cnkgdXNlZCBieSANCj4gPiB0aGUgYXBwbGljYXRpb24gaXRzZWxmIGxvb2tzIHJlYXNvbmFibGUg
d2hlbiBjb21wYXJlZCB0byBEYWlzeSAoYW5kIA0KPiA+IHVzYWdlIGlzIHN0YXRpYykuIEhvd2V2
ZXIsIHRoZSBtZW1vcnkgdXNlZCBieSBYT3JnIGlzIGZhciBmcm9tIA0KPiA+IGNvbnN0YW50IG9y
IHN0YWJsZSAtIGl0IGJhc2ljYWxseSBoYXMgYSBWU1ogdmFsdWUgY3ljbGluZyBmcm9tIGFib3V0
IA0KPiA+IDYzMG0gdG8gMjk4OW0gd2l0aCB0aGUgY3ljbGUgcGVyaW9kIGJlaW5nIGluIHRoZSBv
cmRlciBvZiA1IHRvIDEwIA0KPiA+IHNlY29uZHMuIFBlYWtzIGluIFhPcmcgbWVtb3J5IHVzYWdl
IGNvaW5jaWRlIHdpdGggc3R1dHRlcnMgaW4gdmlkZW8gDQo+ID4gcGxheWJhY2sgd2l0aGluIG15
IGFwcCAoYXVkaW8gaXMgdW5hZmZlY3RlZCkuDQo+ID4NCj4gPiBNb25pdG9yaW5nIC9wcm9jL21l
bWluZm8gd2hlbiB0aGlzIGlzIGdvaW5nIG9uIHNob3dzIHRoYXQg4oCcU2htZW3igJ0NCj4gPiB1
c2FnZSBpcyBmb2xsb3dpbmcgdGhlIHNhbWUgcGF0dGVybiBhcyB0aGUgbWVtb3J5IHVzZWQgYnkg
WE9yZyAoaS5lLg0KPiA+IFNobWVtIHVzYWdlIGlzIGhpZ2ggYXQgdGhlIHNhbWUgdGltZSkuIElm
IHRoZSB2YWx1ZXMgYXJlIHBsb3R0ZWQgb24gDQo+ID4gYSBncmFwaCB0aGV5IGFwcGVhciB0byBz
aG93IHRoYXQgU2htZW0gdXNhZ2UgZ3Jvd3MgbGluZWFybHkgYW5kIHRoZW4gDQo+ID4gZmFsbHMg
cmFwaWRseSB3aGVuIG5lYXJseSBhbGwgdGhlIGZyZWUgbWVtb3J5IGhhcyBiZWVuIGV4aGF1c3Rl
ZCwgDQo+ID4gcGVyaGFwcyBpbiByZXNwb25zZSB0byBhIGRlbGF5ZWQgZ2FyYmFnZSBjb2xsZWN0
aW9uIHJ1bi4NCj4gPg0KPiA+IERvZXMgYW55b25lIGhhdmUgYW55IGlkZWFzIGFzIHRvIHdoYXQg
SSBzaG91bGQgYmUgbG9va2luZyBhdCB0byB3b3JrIA0KPiA+IG91dCB3aGF04oCZcyBnb2luZyBv
bj8NCj4gPg0KPiA+IEFyZSB0aGVyZSBhbnkgc2lnbmlmaWNhbnQgY2hhbmdlcyBiZXR3ZWVuIFhP
cmcgdW5kZXIgRGFpc3kgYW5kIEZpZG8gDQo+ID4gdGhhdCBjb3VsZCBiZSBjYXVzaW5nIHRoaXM/
DQo+ID4NCj4gPiBDb3VsZCB0aGlzIGJlIHJlbGF0ZWQgdG8gdGhlIG1ldGEtaW50ZWwgdmlkZW8g
ZHJpdmVycz8NCj4gPg0KPiA+IEFueSBmZWVkYmFjayAvIGNvbW1lbnRzIHdvdWxkIGJlIHJlYWxs
eSBhcHByZWNpYXRlZC4NCj4gPg0KPiA+IFRoYW5rcyA6LSkNCj4gPg0KPiA+IC0tDQo+ID4NCj4g
PiBDaHJpcyBUYXBwDQo+ID4gb3BlbnNvdXJjZUBrZXlsZXZlbC5jb20NCj4gPiB3d3cua2V5bGV2
ZWwuY29tDQo+ID4NCj4gPiAtLS0tDQo+ID4gWW91IGNhbiB0ZWxsIHlvdSdyZSBnZXR0aW5nIG9s
ZGVyIHdoZW4geW91ciBjYXIgaW5zdXJhbmNlIGdldHMgcmVhbCBjaGVhcCENCj4gDQo+IC0tDQo+
IA0KPiBQYXVsIEVnZ2xldG9uDQo+IEludGVsIE9wZW4gU291cmNlIFRlY2hub2xvZ3kgQ2VudHJl
DQo=

