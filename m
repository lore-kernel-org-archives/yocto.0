Return-Path: <evan.oloughlin@vitalograph.ie>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7643FE00BB7; Thu, 20 Sep 2018 02:41:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [192.162.217.193 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out6.electric.net (smtp-out6.electric.net
	[192.162.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5776CE00BAA
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 02:41:01 -0700 (PDT)
Received: from 1g2vSG-0005H8-TH by out6a.electric.net with emc1-ok (Exim
	4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1g2vSG-0005J0-Uk; Thu, 20 Sep 2018 02:41:00 -0700
Received: by emcmailer; Thu, 20 Sep 2018 02:41:00 -0700
Received: from [176.58.6.8] (helo=VitalExchange.vitalograph.local)
	by out6a.electric.net with esmtps (TLSv1.2:AES256-GCM-SHA384:256)
	(Exim 4.90_1) (envelope-from <evan.oloughlin@vitalograph.ie>)
	id 1g2vSG-0005H8-TH; Thu, 20 Sep 2018 02:41:00 -0700
Received: from VITALEXCHANGE.vitalograph.local ([fe80::93c:7e0f:858e:c090]) by
	VitalExchange.vitalograph.local ([fe80::93c:7e0f:858e:c090%12]) with
	mapi id 14.03.0399.000; Thu, 20 Sep 2018 10:40:59 +0100
From: Evan O'Loughlin <evan.oloughlin@vitalograph.ie>
To: 'Bas Mevissen' <abuse@basmevissen.nl>
Thread-Topic: [yocto] Yocto SDK generated - unable to compile application
Thread-Index: AQHUULkrB+PsRV1tME++SjwtRDDgE6T40b4AgAAXwvA=
Date: Thu, 20 Sep 2018 09:40:58 +0000
Message-ID: <2EE3E45FEAD8944697CC29BFE83DD70F289B92E6@VitalExchange.vitalograph.local>
References: <2EE3E45FEAD8944697CC29BFE83DD70F289B91F2@VitalExchange.vitalograph.local>
	<af1c99f79f52abe4c72b0b20b8ddc02a@basmevissen.nl>
In-Reply-To: <af1c99f79f52abe4c72b0b20b8ddc02a@basmevissen.nl>
Accept-Language: en-IE, en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.244.140]
MIME-Version: 1.0
X-Outbound-IP: 176.58.6.8
X-Env-From: evan.oloughlin@vitalograph.ie
X-Proto: esmtps
X-Revdns: 
X-HELO: VitalExchange.vitalograph.local
X-TLS: TLSv1.2:AES256-GCM-SHA384:256
X-Authenticated_ID: 
X-PolicySMART: 14033467
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto SDK generated - unable to compile application
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
X-List-Received-Date: Thu, 20 Sep 2018 09:41:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgQmFzLA0KDQpJJ20gdXNpbmcgdGhlIG9mZmVuZGluZyBsaW5lIGluIGhlbGxvd29ybGQuYyB0
byBoaWdobGlnaHQgdGhlIGlzc3VlIEknbSBzZWVpbmcuDQoNCk15IG1haW4gcHJvZ3JhbSBpcyBh
IFF0IGFwcGxpY2F0aW9uIHdoZXJlIEkgc2VlIHRoZSBzYW1lIGlzc3VlIHdoZW4gdHJ5aW5nIHRv
IGJ1aWxkIGluIFF0Q3JlYXRvci4NCg0KTXkgaXNzdWUgcmVsYXRlcyB0byB0aGUgZmFjdCB0aGF0
IHNldmVyYWwgaW5jbHVkZSBmaWxlcyBhcmUgbm90IHJlYWRpbHkgYXZhaWxhYmxlIGFmdGVyICdz
b3VyY2luZycgdGhlIGVudmlyb25tZW50IHNldHVwLg0KDQpEbyBJIG5lZWQgdG8gYWRqdXN0L2lu
Y2x1ZGUgb3RoZXIgcmVjaXBlcyB3aGVuIGJ1aWxkaW5nIHRoZSBTREs/DQoNClJlZ2FyZHMsDQpF
dmFuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCYXMgTWV2aXNzZW4gW21h
aWx0bzphYnVzZUBiYXNtZXZpc3Nlbi5ubF0gDQpTZW50OiAyMCBTZXB0ZW1iZXIgMjAxOCAxMDox
Mg0KVG86IEV2YW4gTydMb3VnaGxpbiA8ZXZhbi5vbG91Z2hsaW5Adml0YWxvZ3JhcGguaWU+DQpD
YzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gWW9jdG8gU0RL
IGdlbmVyYXRlZCAtIHVuYWJsZSB0byBjb21waWxlIGFwcGxpY2F0aW9uDQoNCk9uIDIwMTgtMDkt
MjAgMTA6MDgsIEV2YW4gTydMb3VnaGxpbiB3cm90ZToNCj4gSGVsbG8sDQo+IA0KPiBJ4oCZbSBo
YXZpbmcgYW4gaXNzdWUgd2hlbiBJIHRyeSB0byB1c2UgdGhlIFNESyBnZW5lcmF0ZWQgYnkgbXkg
eW9jdG8gDQo+IGluc3RhbmNlLg0KPiBDdXJyZW50bHkgSSBoYXZlIHlvY3RvIHNldC11cCB0byBj
b3JyZWN0bHkgYnVpbGQgbXkgaW1hZ2Ug4oCTIHRoaXMgYWxsIA0KPiB3b3JrcyB3ZWxsLg0KPiAN
Cj4gSSd2ZSBidWlsdCB0aGUgU0RLIGluIHRoZSBmb2xsb3dpbmcgd2F5czoNCj4gICAgKiBiaXRi
YWtlIHtpbWFnZX0g4oCTYyBwb3B1bGF0ZV9zZGsNCj4gICAgKiBiaXRiYWtlIG1ldGEtdG9vbGNo
YWluLXF0NQ0KPiAgICAqIGJpdGJha2Uge2ltYWdlLXNka30gdXNpbmcgYSBzZXBhcmF0ZSByZWNp
cGUgd2l0aCB0aGUgb3B0aW9uczoNCj4gICAgICAgIC0gcmVxdWlyZSB7aW1hZ2V9LmJiDQo+ICAg
ICAgICAtIElNQUdFX0ZFQVRVUkVTICs9ICIgZGV2LXBrZ3MgdG9vbHMtc2RrIHRvb2xzLWRlYnVn
IA0KPiBlY2xpcHNlLWRlYnVnIGRlYnVnLXR3ZWFrcyINCj4gICAgICAgIC0gSU1BR0VfSU5TVEFM
TCArPSAia2VybmVsLWRldnNyYyINCj4gICAgICAgIC0gaW5oZXJpdCBwb3B1bGF0ZV9zZGsgcG9w
dWxhdGVfc2RrX3F0NQ0KPiANCj4gDQo+IFdoZW4gSSB0cnkgdG8gdXNlIHRoZSBnZW5lcmF0ZWQg
U0RLcyBJIGdldCB0aGUgZXJyb3IgYmVsb3c6DQo+IFNpbXBsZSBoZWxsb3dvcmxkIGFwcDoNCj4g
ICAgI2luY2x1ZGUgPHN0ZGlvLmg+DQo+ICAgICNpbmNsdWRlIDxzdGRsaWIuaD4NCj4gICAgI2lu
Y2x1ZGUgPHN0ZGRlZi5oPg0KPiAgICAjaW5jbHVkZSA8Y3N0ZGRlZj4NCj4gDQo+ICAgIGludCBt
YWluIChpbnQgYXJnYywgY2hhcioqIGFyZ3YpDQo+ICAgIHsNCj4gICAgICAgcHJpbnRmKCJIZWxs
byBXb3JsZFxuIik7DQo+ICAgICAgIHJldHVybiAwOw0KPiAgICB9DQo+IA0KPiBDb21waWxlIGVy
cm9yOg0KPiAgICAke0NDfSBoZWxsb3dvcmxkLmMNCj4gICAgaGVsbG93b3JsZC5jOjQ6MTk6IGZh
dGFsIGVycm9yOiBjc3RkZGVmOiBObyBzdWNoIGZpbGUgb3IgZGlyZWN0b3J5DQo+ICAgICNpbmNs
dWRlIDxjc3RkZGVmPg0KPiAgICAgICAgICAgICAgICAgICAgIF4NCj4gICAgY29tcGlsYXRpb24g
dGVybWluYXRlZA0KPiANCj4gDQo+IEhhdmUgSSBtaXNzZWQgYSBzdGVwIGluIGdlbmVyYXRpbmcg
dGhlIFNESz8NCj4gDQo+IA0KDQpObywgeW91ciBTREsgbG9va3MgZmluZS4gVGhlIHNvbHV0aW9u
IGlzIHRvIGp1c3QgcmVtb3ZlIHRoZSBsaW5lDQoNCiNpbmNsdWRlIDxjc3RkZGVmPg0KDQpmcm9t
IHlvdXIgYyBzb3VyY2VzIG9yIHVzZSB0aGUgZysrIGNvbXBpbGVyIChjYWxsZWQgJHtDWFgpIGlu
IE1ha2VmaWxlKSB0byBjb21waWxlIHRoZSBzb3VyY2UuDQoNCj4gUmVnYXJkcywNCj4gdml0YWxF
b2wNCg0K

