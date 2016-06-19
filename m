Return-Path: <Monica.Rajasekaran@us.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98407E00B52; Sun, 19 Jun 2016 13:24:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [168.127.0.56 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from fncnmp03.fnc.fujitsu.com (fncnmp03.fnc.fujitsu.com
	[168.127.0.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5C3AE00AAB
	for <yocto@yoctoproject.org>; Sun, 19 Jun 2016 13:23:57 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.26,495,1459832400"; d="scan'208";a="78238056"
Received: from rchexhcp1.fnc.net.local ([168.127.134.75])
	by fncnmp01.fnc.fujitsu.com with ESMTP/TLS/AES256-SHA;
	19 Jun 2016 15:23:55 -0500
Received: from RCHEXMBP1.fnc.net.local ([169.254.2.106]) by
	RCHEXHCP1.fnc.net.local ([168.127.134.75]) with mapi id 14.03.0294.000;
	Sun, 19 Jun 2016 15:23:54 -0500
From: "Rajasekaran, Monica" <Monica.Rajasekaran@us.fujitsu.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] autoreconf
Thread-Index: AdHHQradspqdggSsRDmRJnaYuJFirQAKyDOAAAovToD//7NpgIAAUspg//+u/AD/+hJIoA==
Date: Sun, 19 Jun 2016 20:23:53 +0000
Message-ID: <111ACD726EC3464BAED310F5EA7BEBDA6005D6@RCHEXMBP1.fnc.net.local>
References: <111ACD726EC3464BAED310F5EA7BEBDA6000AA@RCHEXMBP1.fnc.net.local>
	<7482070.IBUNiqSIt6@peggleto-mobl.ger.corp.intel.com>
	<111ACD726EC3464BAED310F5EA7BEBDA6000E2@RCHEXMBP1.fnc.net.local>
	<24600FD4-C8B5-4282-87C1-1F2AF3E403DF@gmail.com>
	<111ACD726EC3464BAED310F5EA7BEBDA600122@RCHEXMBP1.fnc.net.local>
	<88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
In-Reply-To: <88768378-90A2-41F2-A8A3-64BC892145B6@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [168.127.136.253]
x-tm-as-product-ver: SMEX-10.2.0.3176-8.000.1202-22402.002
x-tm-as-result: No--50.719100-0.000000-31
x-tm-as-user-approved-sender: Yes
x-tm-as-user-blocked-sender: No
MIME-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: autoreconf
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
X-List-Received-Date: Sun, 19 Jun 2016 20:24:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmFqLA0KDQpJIGFkZGVkIHRoZSBmb2xsb3dpbmcgbGluZSB0byBteSByZWNpcGUgZmlsZSwg
DQoNCklNQUdFX0lOU1RBTEwgKz0gInRvb2xzLXNkayINCg0KQnV0IHRoZXJlIHdhcyB0aGUgZm9s
bG93aW5nIGVycm9yIHdpdGggdGhlIGJ1aWxkOg0KDQpFUlJPUjogTm90aGluZyBSUFJPVklERVMg
J3Rvb2xzLXNkaycgKGJ1dCAvZGF0YS91c2Vycy9tcmFqYXNlL2wxMDBfbGFiZWxfYmFzZWRfcjEw
MHBvYy9yZXBvL3Bva3kvbWV0YS1mc3MtcHJvZHVjdC9yZWNpcGVzLWNvcmUvaW1hZ2VzL2Zzcy1p
bWFnZS1mdWxsLmJiIFJERVBFTkRTIG9uIG9yIG90aGVyd2lzZSByZXF1aXJlcyBpdCkNCk5PVEU6
IFJ1bnRpbWUgdGFyZ2V0ICd0b29scy1zZGsnIGlzIHVuYnVpbGRhYmxlLCByZW1vdmluZy4uLg0K
TWlzc2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNoYWluIHdhczogWyd0b29scy1zZGsn
XQ0KRVJST1I6IFJlcXVpcmVkIGJ1aWxkIHRhcmdldCAnZnNzLWltYWdlLWZ1bGwnIGhhcyBubyBi
dWlsZGFibGUgcHJvdmlkZXJzLg0KTWlzc2luZyBvciB1bmJ1aWxkYWJsZSBkZXBlbmRlbmN5IGNo
YWluIHdhczogWydmc3MtaW1hZ2UtZnVsbCcsICd0b29scy1zZGsnXQ0KDQpBbnkgaWRlYSBvbiB0
aGlzPw0KDQpUaGFua3MsDQpNb25pY2EgDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiBLaGVtIFJhaiBbbWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0gDQpTZW50OiBXZWRuZXNk
YXksIEp1bmUgMTUsIDIwMTYgMzo0OCBQTQ0KVG86IFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmlj
YS5SYWphc2VrYXJhbkB1cy5mdWppdHN1LmNvbT4NCkNjOiBQYXVsIEVnZ2xldG9uIDxwYXVsLmVn
Z2xldG9uQGxpbnV4LmludGVsLmNvbT47IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6
IFJlOiBbeW9jdG9dIGF1dG9yZWNvbmYNCg0KVGhhdCBtaWdodCB3b3JrLCBob3dldmVyIHlvdSBt
aWdodCBuZWVkIG1vcmUgcGFja2FnZXMsIHNvIGFkZGluZyB0b29scy1zZGsgd2lsbCBjb3ZlciBh
bGwgb2YgdGhlbSBpbiBvbmUgZ28NCg0KPiBPbiBKdW4gMTUsIDIwMTYsIGF0IDE6NDcgUE0sIFJh
amFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5SYWphc2VrYXJhbkB1cy5mdWppdHN1LmNvbT4gd3Jv
dGU6DQo+IA0KPiBIaSBSYWosDQo+IA0KPiBXaWxsIGFkZGluZyBhIGxpbmUgaW4gdGhlIGltYWdl
J3MgcmVjaXBlIGZpbGUgbGlrZSB0aGlzIHdvcmsgPw0KPiANCj4gSU1BR0VfSU5TVEFMTCA9IOKA
nWF1dG9jb25m4oCdDQo+IA0KPiBJIGluc3RhbGxlZCAiZ2l0IiBhbmQgInJlc29sdmNvbmYiIGlu
IHRoZSBzYW1lIHdheS4gSnVzdCBub3Qgc3VyZSBhYm91dCB0aGUgcGFja2FnZSBuYW1lIHRoaXMg
dGltZS4NCj4gDQo+IFRoYW5rcywNCj4gTW9uaWNhDQo+IA0KPiANCj4gLS0tLS1PcmlnaW5hbCBN
ZXNzYWdlLS0tLS0NCj4gRnJvbTogS2hlbSBSYWogW21haWx0bzpyYWoua2hlbUBnbWFpbC5jb21d
DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSAxNSwgMjAxNiAzOjQyIFBNDQo+IFRvOiBSYWphc2Vr
YXJhbiwgTW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+DQo+IENjOiBQ
YXVsIEVnZ2xldG9uIDxwYXVsLmVnZ2xldG9uQGxpbnV4LmludGVsLmNvbT47IHlvY3RvQHlvY3Rv
cHJvamVjdC5vcmcNCj4gU3ViamVjdDogUmU6IFt5b2N0b10gYXV0b3JlY29uZg0KPiANCj4gWW91
IG5lZWQgdG8gYWRkIGF1dG9jb25mIHRvIHlvdXIgdGFyZ2V0IGltYWdlLCBpZiB5b3UgZG8gbm90
IHVzZSBPbmxpbmUgcGFja2FnZSBtYW5hZ2VtZW50DQo+IA0KPiBFWFRSQV9JTUFHRV9GRUFUVVJF
U19hcHBlbmQgPSDigJwgdG9vbHMtc2Rr4oCdDQo+IA0KPiBpbiBsb2NhbC5jb25mIG1pZ2h0IGhl
bHANCj4gDQo+IA0KPj4gT24gSnVuIDE1LCAyMDE2LCBhdCAxOjM1IFBNLCBSYWphc2VrYXJhbiwg
TW9uaWNhIDxNb25pY2EuUmFqYXNla2FyYW5AdXMuZnVqaXRzdS5jb20+IHdyb3RlOg0KPj4gDQo+
PiBIaSBQYXVsLA0KPj4gDQo+PiBUaGFuayB5b3UuIFRoaXMgaXMgaW4gdGhlIHRhcmdldC4NCj4+
IA0KPj4gVGhhbmtzLA0KPj4gTW9uaWNhDQo+PiANCj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0t
LS0tDQo+PiBGcm9tOiBQYXVsIEVnZ2xldG9uIFttYWlsdG86cGF1bC5lZ2dsZXRvbkBsaW51eC5p
bnRlbC5jb21dDQo+PiBTZW50OiBXZWRuZXNkYXksIEp1bmUgMTUsIDIwMTYgMzoyNSBQTQ0KPj4g
VG86IFJhamFzZWthcmFuLCBNb25pY2EgPE1vbmljYS5SYWphc2VrYXJhbkB1cy5mdWppdHN1LmNv
bT4NCj4+IENjOiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnDQo+PiBTdWJqZWN0OiBSZTogW3lvY3Rv
XSBhdXRvcmVjb25mDQo+PiANCj4+IEhpIE1vbmljYSwNCj4+IA0KPj4gT24gV2VkLCAxNSBKdW4g
MjAxNiAyMDoxNzoxNiBSYWphc2VrYXJhbiwgTW9uaWNhIHdyb3RlOg0KPj4+IFdoYXQgaXMgdGhl
IHBhY2thZ2UgdG8gaW5zdGFsbCBhdXRvcmVjb25mID8gKFVidW50dSBlcXVpdmFsZW50Og0KPj4+
IGFwdC1nZXQgaW5zdGFsbCBkaC1hdXRvcmVjb25mICkNCj4+PiANCj4+PiBJIGFtIGdldHRpbmcg
dGhlIGZvbGxvd2luZyBlcnJvciBmb3Igb25lIG9mIG15IGFwcGxpY2F0aW9uczoNCj4+PiAiYXV0
b3JlY29uZjogY29tbWFuZCBub3QgZm91bmQiDQo+PiANCj4+IGF1dG9yZWNvbmYgaXMgcGFydCBv
ZiBhdXRvY29uZi4NCj4+IA0KPj4gV2hlcmUgaXMgdGhpcz8gT24gdGhlIHRhcmdldCBvciB3aXRo
aW4gdGhlIGJ1aWxkIHN5c3RlbT8NCj4+IA0KPj4gQ2hlZXJzLA0KPj4gUGF1bA0KPj4gDQo+PiAt
LQ0KPj4gDQo+PiBQYXVsIEVnZ2xldG9uDQo+PiBJbnRlbCBPcGVuIFNvdXJjZSBUZWNobm9sb2d5
IENlbnRyZQ0KPj4gLS0NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fDQo+PiB5b2N0byBtYWlsaW5nIGxpc3QNCj4+IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNCj4+IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPiAN
Cg0K

