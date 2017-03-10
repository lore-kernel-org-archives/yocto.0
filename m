Return-Path: <Sebastian.Waldvogel@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6167E009B9; Thu,  9 Mar 2017 23:52:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.141 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.vector.com (smtp1.vector.com [217.89.139.141])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 164D2E009A0
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 23:52:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.vector.com (Postfix) with ESMTP id C622F3730D0;
	Fri, 10 Mar 2017 08:52:26 +0100 (CET)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp1.vector.com ([127.0.0.1])
	by localhost (smtp1.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AA6vnC6wnYMr; Fri, 10 Mar 2017 08:52:24 +0100 (CET)
Received: from vistrex6.vi.vector.int (unknown [10.49.3.66])
	by smtp1.vector.com (Postfix) with ESMTPS;
	Fri, 10 Mar 2017 08:52:24 +0100 (CET)
Received: from VISTREX4.vi.vector.int ([169.254.2.57]) by
	vistrex6.vi.vector.int ([10.49.3.66]) with mapi id 14.03.0339.000;
	Fri, 10 Mar 2017 08:52:23 +0100
From: "Waldvogel, Sebastian" <Sebastian.Waldvogel@vector.com>
To: Daniel. <danielhilst@gmail.com>, Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Source Code provision without full git repository history
Thread-Index: AdKYz+lX59UT34AcRbm3INw63zgiRgACU1YAAAQkN4AAId1LkA==
Date: Fri, 10 Mar 2017 07:52:23 +0000
Message-ID: <3A90C4317711354D832A265F7C4DF966021BF2A67A@vistrex4.vi.vector.int>
References: <3A90C4317711354D832A265F7C4DF966021BF28939@vistrex4.vi.vector.int>
	<CAMKF1spvkP-K1OcXGO_o57T_LjqOyW8SyNBHpyHGnNR7k4g-Rg@mail.gmail.com>
	<CAF3SDA6_i-U6j33VbbEQjcbVuN3_xcQdxKb8Mm3uePOPSLZhRA@mail.gmail.com>
In-Reply-To: <CAF3SDA6_i-U6j33VbbEQjcbVuN3_xcQdxKb8Mm3uePOPSLZhRA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.81.175]
x-g-data-mailsecurity-for-exchange-spamlevel: 0
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 32
x-g-data-mailsecurity-for-exchange-server: 97a2f4b1-5af3-4486-b5c5-94a8deb8247e
x-g-data-mailsecurity-for-exchange-guid: C3257002-E2C2-4F80-83D4-8AE4BC01EA04
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Source Code provision without full git repository history
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
X-List-Received-Date: Fri, 10 Mar 2017 07:52:30 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhlIHBvaW50IGlzIHRoYXQgd2Ugd2FudCB0byBkZWxpdmVyIHRoZSBZb2N0byBidWlsZCBlbnZp
cm9ubWVudCBpbmNsdWRpbmcgdGhlIGxheWVycy9yZWNpcGVzIGFuZCB0aGUgZG93bmxvYWQgZGly
ZWN0b3J5IChETF9ESVIpIHRvIG91ciBjdXN0b21lcnMgYXMgd2VsbC4NClRoZSBkb3dubG9hZCBk
aXJlY3Rvcnkgc2hhbGwgY29udGFpbiBhbiBhcmNoaXZlIG9mIHRoZSBzb2Z0d2FyZSBtb2R1bGVz
IC8gYXBwbGljYXRpb25zIGRldmVsb3BlZCBieSBteSBjb21wYW55LiBUaGUgY3VzdG9tZXIgaGFz
IG5vIGFjY2VzcyB0byB0aGUgY29tcGFueSdzIGdpdCByZXBvc2l0b3J5Lg0KDQpXZSB0cnkgdG8g
dXNlIGFzIG11Y2ggYXMgcG9zc2libGUgZGVmYXVsdCBmdW5jdGlvbmFsaXR5IG9mIFlvY3RvIGFu
ZCBhdm9pZCBkZXZlbG9waW5nIGFkZGl0aW9uYWwgZGVsaXZlcnkgdG9vbHMgYXJvdW5kIFlvY3Rv
Lg0KQSB3b3JrYXJvdW5kIHdvdWxkIGJlIG1hbnVhbCBleHRyYWN0aW9uIG9mIHRoZSBnZW5lcmF0
ZWQgdGFyYmFsbHMgKGluY2x1ZGluZyBmdWxsIGdpdCByZXBvKSBhbmQgY3JlYXRpbmcgYSBuZXcg
YXJjaGl2ZSB3aXRoIGdpdCBhcmNoaXZlIGNvbnRhaW5pbmcgb25seSB0aGUgc291cmNlIGZpbGVz
IG9mIHRoZSBkZXNpcmVkIGdpdCByZXZpc2lvbi4NCkluIGFkZGl0aW9uIHRoZSBTUkNfVVJJIG9m
IHRoZSByZWxhdGVkIHJlY2lwZSBuZWVkIHRvIGJlIG92ZXJ3cml0dGVuICBieSBhbiAuYmJhcHBl
bmQgcG9pbnRpbmcgdG8gdGhlIHRhcmJhbGwgaW5zdGVhZCBvZiB0aGUgY29tcGFueSBnaXQgcmVw
by4NCg0KTXkgZmF2b3JpdGUgc29sdXRpb24gd291bGQgYmUgYW4gYWRkaXRpb25hbCBhdHRyaWJ1
dGUgaW4gdGhlIFNSQ19VUkkgdG8gY29udHJvbCB0aGUgYmVoYXZpb3Igb2YgdGhlIG1pcnJvciB0
YXJiYWxsIGdlbmVyYXRpb24uIEUuZy4gU1JDX1VSSSA9ICIgZ2l0Oi8vZ2l0LmNvbXBhbnkudXJs
O25vZ2l0aGlzdG9yeT0xIg0KDQpCZXN0IHJlZ2FyZHMNClNlYmFzdGlhbg0KDQo+LS0tLS1Pcmln
aW5hbCBNZXNzYWdlLS0tLS0NCj5Gcm9tOiBEYW5pZWwuIFttYWlsdG86ZGFuaWVsaGlsc3RAZ21h
aWwuY29tXQ0KPlNlbnQ6IFRodXJzZGF5LCBNYXJjaCAwOSwgMjAxNyA1OjI4IFBNDQo+VG86IEto
ZW0gUmFqDQo+Q2M6IFdhbGR2b2dlbCwgU2ViYXN0aWFuOyB5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
DQo+U3ViamVjdDogUmU6IFt5b2N0b10gU291cmNlIENvZGUgcHJvdmlzaW9uIHdpdGhvdXQgZnVs
bCBnaXQgcmVwb3NpdG9yeSBoaXN0b3J5DQo+DQo+SSdtIG5vdCB0cnlpbmcgdG8gYmUgc2ltcGxp
c3RpYyBoZXJlLCBidXQsIHdoeSBub3QgcGFja2FnZSB0aGUgc291cmNlDQo+cmVsZWFzZXMgdG8g
YSB0YXJiYWxsICh3aXRoIGdpdCBhcmNoaXZlIG9yIHNvbXRoaW5nKSBhbmQgcHJvdmlkZSBpdA0K
PnRocm91Z2ggYSBGVFAgc2VydmVyPw0KPg0KPlJlZ2FyZHMsDQo+DQo+MjAxNy0wMy0wOSAxMToy
OSBHTVQtMDM6MDAgS2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT46DQo+Pg0KPj4gT24gVGh1
LCBNYXIgOSwgMjAxNyBhdCA1OjAyIEFNIFdhbGR2b2dlbCwgU2ViYXN0aWFuDQo+PiA8U2ViYXN0
aWFuLldhbGR2b2dlbEB2ZWN0b3IuY29tPiB3cm90ZToNCj4+Pg0KPj4+IEhlbGxvLA0KPj4+DQo+
Pj4NCj4+Pg0KPj4+IEkgYW0gc2VhcmNoaW5nIGZvciBhIHdheSBpbiBZb2N0by9CaXRCYWtlIHRv
IGV4dHJhY3QgdGhlIHNvdXJjZSBjb2RlcyBvZg0KPj4+IHRoZSBzb2Z0d2FyZSBhcHBsaWNhdGlv
bnMgZGV2ZWxvcGVkIGJ5IG15IGNvbXBhbnkgZm9yIGRlbGl2ZXJ5IHRvIG91cg0KPj4+IGN1c3Rv
bWVycy4NCj4+Pg0KPj4+IFRoZSBzb3VyY2UgY29kZXMgc2hhbGwgYmUgZGVsaXZlcmVkIGFzIGFy
Y2hpdmUgY29udGFpbmluZyBvbmx5IHRoZSBzb3VyY2UNCj4+PiBmaWxlcyB3aXRob3V0IHRoZSB3
aG9sZSBnaXQgcmVwb3NpdG9yeSBoaXN0b3J5Lg0KPj4+DQo+Pj4NCj4+Pg0KPj4+IFNldHVwIGlz
IHRoYXQgd2UgaGF2ZSBvd24gWW9jdG8gbGF5ZXJzL3JlY2lwZXMgcmVmZXJlbmNpbmcgdGhlIGNv
bXBhbnkNCj4+PiBpbnRlcm5hbCBnaXQgcmVwb3NpdG9yeSAoU1JDX1VSST3igJ1naXQ6Ly9naXQu
Y29tcGFueS51cmzigJ0pIGFuZCB0aGUgY29uY3JldGUNCj4+PiBTUkNSRVYgdG8gYmUgdXNlZC4g
QmFzaWMgaWRlYSB3YXMgdG8gdXNlIHRoZSBvcHRpb24NCj4+PiBCQl9HRU5FUkFURV9NSVJST1Jf
VEFSQkFMTFMgPSAiMSIgd2hpY2ggZ2VuZXJhdGVzIGFuIGFyY2hpdmUgZmlsZQ0KPndpdGggdGhl
DQo+Pj4gYXBwbGljYXRpb24gc291cmNlIGNvZGUuIFVuZm9ydHVuYXRlbHkgdGhlIGdlbmVyYXRl
ZCB0YXJiYWxsIGNvbnRhaW5zIHRoZQ0KPj4+IGZ1bGwgYmFyZSBjbG9uZWQgZ2l0IHJlcG9zaXRv
cnkgd2l0aCBmdWxsIGhpc3RvcnkgYW5kIG5vdCBvbmx5IHRoZSBzb3VyY2UNCj4+PiBmaWxlcyBv
ZiB0aGUgY29uY3JldGUgU1JDUkVWLg0KPj4+DQo+Pj4NCj4+Pg0KPj4+IEFzIGFsdGVybmF0aXZl
IEkgdHJpZWQgdG8gdXNlIHRoZSBhcmNoaXZlciBjbGFzcy4gVGhlIGdlbmVyYXRlZCB0YXJiYWxs
cw0KPj4+IGNvbnRhaW5zIHRoZSBjb25jcmV0ZSBzb3VyY2UgZmlsZXMgYnV0IGluIGFkZGl0aW9u
IHRoZSBmdWxsIGdpdCByZXBvc2l0b3J5DQo+Pj4gd2l0aCBoaXN0b3J5IGlzIGNvbnRhaW5lZCB0
b28uDQo+Pg0KPj4NCj4+IEkgYW0gbm90IHN1cmUgaWYgaXQgaXMgaW50ZW5kZWQgdG8ga2VlcCBT
Q00gaGlzdG9yeSB0aG91Z2ggeW91IG1pZ2h0IHdhbnQgdG8NCj4+IGZpbGUgYSBidWcNCj4+Pg0K
Pj4+DQo+Pj4NCj4+PiBEb2VzIGFueW9uZSBoYXMgYW4gaWRlYSBob3cgdG8gZXh0cmFjdCB0aGUg
Y29uY3JldGUgc291cmNlIGZpbGVzIHdpdGhvdXQNCj4+PiBnaXQgcmVwb3NpdG9yeSBhbmQgaGlz
dG9yeT8NCj4+Pg0KPj4+DQo+Pj4NCj4+PiBUaGFuayB5b3UgdmVyeSBtdWNoIGZvciB5b3VyIGhl
bHANCj4+Pg0KPj4+IFNlYmFzdGlhbiBXYWxkdm9nZWwNCj4+Pg0KPj4+DQo+Pj4NCj4+Pg0KPj4+
DQo+Pj4gLS0NCj4+PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXw0KPj4+IHlvY3RvIG1haWxpbmcgbGlzdA0KPj4+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcN
Cj4+PiBodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8NCj4+DQo+
Pg0KPj4gLS0NCj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fDQo+PiB5b2N0byBtYWlsaW5nIGxpc3QNCj4+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4+
IGh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0bw0KPj4NCj4NCj4N
Cj4NCj4tLQ0KPuKAnElmIHlvdSdyZSBnb2luZyB0byB0cnksIGdvIGFsbCB0aGUgd2F5LiBPdGhl
cndpc2UsIGRvbid0IGV2ZW4gc3RhcnQuIC4uLiINCj4gIENoYXJsZXMgQnVrb3dza2kNCg==

