Return-Path: <rebecca.swee.fun.chang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B1D0E00A21; Tue,  9 Jun 2015 18:09:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52D5EE009E6;
	Tue,  9 Jun 2015 18:08:58 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP; 09 Jun 2015 18:09:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,584,1427785200"; d="scan'208";a="708266171"
Received: from pgsmsx107.gar.corp.intel.com ([10.221.44.105])
	by orsmga001.jf.intel.com with ESMTP; 09 Jun 2015 18:08:56 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.205]) by
	PGSMSX107.gar.corp.intel.com ([10.221.44.105]) with mapi id
	14.03.0224.002; Wed, 10 Jun 2015 09:07:45 +0800
From: "Chang, Rebecca Swee Fun" <rebecca.swee.fun.chang@intel.com>
To: "Cheah, Vincent Beng Keat" <vincent.beng.keat.cheah@intel.com>
Thread-Topic: [meta-intel] "Crazy" Xorg memory usage after upgrading from
	Daisy to Fido
Thread-Index: AQHQogZAhcPdu0sLrEaBPYZenhd+m52k7viw
Date: Wed, 10 Jun 2015 01:07:45 +0000
Message-ID: <50B33AC5ED75F74F991980326F1C438D1905581B@PGSMSX103.gar.corp.intel.com>
References: <107F2908-2817-46D5-96CC-0B71CD6ADBEB@keylevel.com>
	<2174669.LymzPMzo3U@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <2174669.LymzPMzo3U@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Cc: "meta-intel@yoctoproject.org" <meta-intel@yoctoproject.org>,
	Yocto Project <yocto@yoctoproject.org>,
	'Paul Eggleton' <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Wed, 10 Jun 2015 01:09:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgVmluY2VudCwNCg0KQ2FuIHlvdSBoZWxwIHRvIGNvbW1lbnQgb24gdGhpcyBpc3N1ZSBtZW50
aW9uZWQgYnkgQ2hyaXM/DQpUaGFua3MuDQoNClJlZ2FyZHMsDQpSZWJlY2NhDQoNCj4gLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogUGF1bCBFZ2dsZXRvbiBbbWFpbHRvOnBhdWwu
ZWdnbGV0b25AbGludXguaW50ZWwuY29tXQ0KPiBTZW50OiAwOSBKdW5lLCAyMDE1IDEyOjE1IEFN
DQo+IFRvOiBDaGFuZywgUmViZWNjYSBTd2VlIEZ1bg0KPiBDYzogbWV0YS1pbnRlbEB5b2N0b3By
b2plY3Qub3JnOyBDaHJpcyBUYXBwOyBZb2N0byBQcm9qZWN0OyBXb2xkLCBTYXVsDQo+IFN1Ympl
Y3Q6IFJlOiBbbWV0YS1pbnRlbF0gIkNyYXp5IiBYb3JnIG1lbW9yeSB1c2FnZSBhZnRlciB1cGdy
YWRpbmcgZnJvbQ0KPiBEYWlzeSB0byBGaWRvDQo+IA0KPiBSZWJlY2NhLCBpcyB0aGlzIHNvbWV0
aGluZyB5b3Ugb3Igb25lIG9mIHlvdXIgY29sbGVhZ3VlcyB3b3VsZCBiZSBhYmxlIHRvDQo+IGhl
bHAgd2l0aD8NCj4gDQo+IFRoYW5rcywNCj4gUGF1bA0KPiANCj4gT24gRnJpZGF5IDA1IEp1bmUg
MjAxNSAwODoyOTowMCBDaHJpcyBUYXBwIHdyb3RlOg0KPiA+IEnigJl2ZSBnb3QgYW4gYXBwbGlj
YXRpb24gdGhhdCBJ4oCZdmUgaGFkIHJ1bm5pbmcgbmljZWx5IHVuZGVyIERhaXN5IGZvcg0KPiA+
IHNvbWUgdGltZS4gQXMgRGFpc3kgaXMgbm93IGEgYml0IG9sZCwgSSBkZWNpZGVkIHRvIG1vdmUg
dGhlIGFwcGxpY2F0aW9uIHRvDQo+IEZpZG8uDQo+ID4gSeKAmW0gdXNpbmcgdGhlIG1ldGEtaW50
ZWwvaXNnL3ZhbGxleWlzbGFuZCBCU1AgYW5kIGFsc28gc3dpdGNoZWQgdG8NCj4gPiB1c2luZyBp
dHMgRmlkbyBicmFuY2guDQo+ID4NCj4gPiBUaGUgbW92ZSBvbmx5IHJlcXVpcmVkIGEgZmV3IG1p
bm9yIGNoYW5nZXMgYW5kIGFsbG93ZWQgbWUgdG8gZHJvcCBhDQo+ID4gRGFpc3kg4oCcdXBkYXRl
c+KAnSBsYXllciB0aGF0IEkgaGFkIGJlZW4gdXNpbmcgZm9yIHRoaW5ncyBsaWtlIGdzdHJlYW1l
ci0xLjAuDQo+ID4NCj4gPiBIb3dldmVyLCB0aGVyZSBpcyBvbmUgYmVoYXZpb3VyIHdoaWNoIGlz
IGtpbGxpbmcgbWUgLSBJIGtlZXAgZ2V0dGluZw0KPiA+IG9vbS1raWxsZXIgZXZlbnRzIQ0KPiA+
DQo+ID4gVGhlIGFwcGxpY2F0aW9uIGlzIGJhc2ljYWxseSBhbiBPcGVuR0wtRVMgMi4wIGFwcGxp
Y2F0aW9uIHRoYXQgcmVuZGVycw0KPiA+IHZhcmlvdXMgYml0cyBvZiB0ZXh0LCBpbWFnZXMgYW5k
IHN0cmVhbXMgY2FwdHVyZWQgZnJvbSBhIGdzdHJlYW1lcg0KPiA+IHBpcGVsaW5lIGF0IDYwIEh6
IHRvIGEgMTA4MCBzY3JlZW4uDQo+ID4NCj4gPiBVbmRlciBEYWlzeSB0aGlzIGdlbmVyYWxseSB0
b29rIGp1c3QgdW5kZXIgNTAlIENQVSBhbmQgdXNlZCBhIG1vZGVzdA0KPiA+IHBlcmNlbnRhZ2Ug
b2YgdGhlIDQgR0Igc3lzdGVtIG1lbW9yeSAtIGkuZS4gbm8gd2hlcmUgbmVhciBydW5uaW5nIG91
dA0KPiA+IGFuZCB1c2FnZSB3YXMganVzdCBhYm91dCBzdGF0aWMuDQo+ID4NCj4gPiBVbmRlciBG
aWRvIHRoZSBDUFUgdXNhZ2UgaXMgYWJvdXQgdGhlIHNhbWUgYW5kIHRoZSBtZW1vcnkgdXNlZCBi
eSB0aGUNCj4gPiBhcHBsaWNhdGlvbiBpdHNlbGYgbG9va3MgcmVhc29uYWJsZSB3aGVuIGNvbXBh
cmVkIHRvIERhaXN5IChhbmQgdXNhZ2UNCj4gPiBpcyBzdGF0aWMpLiBIb3dldmVyLCB0aGUgbWVt
b3J5IHVzZWQgYnkgWE9yZyBpcyBmYXIgZnJvbSBjb25zdGFudCBvcg0KPiA+IHN0YWJsZSAtIGl0
IGJhc2ljYWxseSBoYXMgYSBWU1ogdmFsdWUgY3ljbGluZyBmcm9tIGFib3V0IDYzMG0gdG8gMjk4
OW0NCj4gPiB3aXRoIHRoZSBjeWNsZSBwZXJpb2QgYmVpbmcgaW4gdGhlIG9yZGVyIG9mIDUgdG8g
MTAgc2Vjb25kcy4gUGVha3MgaW4NCj4gPiBYT3JnIG1lbW9yeSB1c2FnZSBjb2luY2lkZSB3aXRo
IHN0dXR0ZXJzIGluIHZpZGVvIHBsYXliYWNrIHdpdGhpbiBteQ0KPiA+IGFwcCAoYXVkaW8gaXMg
dW5hZmZlY3RlZCkuDQo+ID4NCj4gPiBNb25pdG9yaW5nIC9wcm9jL21lbWluZm8gd2hlbiB0aGlz
IGlzIGdvaW5nIG9uIHNob3dzIHRoYXQg4oCcU2htZW3igJ0NCj4gPiB1c2FnZSBpcyBmb2xsb3dp
bmcgdGhlIHNhbWUgcGF0dGVybiBhcyB0aGUgbWVtb3J5IHVzZWQgYnkgWE9yZyAoaS5lLg0KPiA+
IFNobWVtIHVzYWdlIGlzIGhpZ2ggYXQgdGhlIHNhbWUgdGltZSkuIElmIHRoZSB2YWx1ZXMgYXJl
IHBsb3R0ZWQgb24gYQ0KPiA+IGdyYXBoIHRoZXkgYXBwZWFyIHRvIHNob3cgdGhhdCBTaG1lbSB1
c2FnZSBncm93cyBsaW5lYXJseSBhbmQgdGhlbg0KPiA+IGZhbGxzIHJhcGlkbHkgd2hlbiBuZWFy
bHkgYWxsIHRoZSBmcmVlIG1lbW9yeSBoYXMgYmVlbiBleGhhdXN0ZWQsDQo+ID4gcGVyaGFwcyBp
biByZXNwb25zZSB0byBhIGRlbGF5ZWQgZ2FyYmFnZSBjb2xsZWN0aW9uIHJ1bi4NCj4gPg0KPiA+
IERvZXMgYW55b25lIGhhdmUgYW55IGlkZWFzIGFzIHRvIHdoYXQgSSBzaG91bGQgYmUgbG9va2lu
ZyBhdCB0byB3b3JrDQo+ID4gb3V0IHdoYXTigJlzIGdvaW5nIG9uPw0KPiA+DQo+ID4gQXJlIHRo
ZXJlIGFueSBzaWduaWZpY2FudCBjaGFuZ2VzIGJldHdlZW4gWE9yZyB1bmRlciBEYWlzeSBhbmQg
Rmlkbw0KPiA+IHRoYXQgY291bGQgYmUgY2F1c2luZyB0aGlzPw0KPiA+DQo+ID4gQ291bGQgdGhp
cyBiZSByZWxhdGVkIHRvIHRoZSBtZXRhLWludGVsIHZpZGVvIGRyaXZlcnM/DQo+ID4NCj4gPiBB
bnkgZmVlZGJhY2sgLyBjb21tZW50cyB3b3VsZCBiZSByZWFsbHkgYXBwcmVjaWF0ZWQuDQo+ID4N
Cj4gPiBUaGFua3MgOi0pDQo+ID4NCj4gPiAtLQ0KPiA+DQo+ID4gQ2hyaXMgVGFwcA0KPiA+IG9w
ZW5zb3VyY2VAa2V5bGV2ZWwuY29tDQo+ID4gd3d3LmtleWxldmVsLmNvbQ0KPiA+DQo+ID4gLS0t
LQ0KPiA+IFlvdSBjYW4gdGVsbCB5b3UncmUgZ2V0dGluZyBvbGRlciB3aGVuIHlvdXIgY2FyIGlu
c3VyYW5jZSBnZXRzIHJlYWwgY2hlYXAhDQo+IA0KPiAtLQ0KPiANCj4gUGF1bCBFZ2dsZXRvbg0K
PiBJbnRlbCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5IENlbnRyZQ0K

