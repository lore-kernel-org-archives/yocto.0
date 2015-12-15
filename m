Return-Path: <Damian.Philipp@vector.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C8DEE00BDA; Mon, 14 Dec 2015 23:42:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [217.89.139.142 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp2.vector.com (smtp2.vector.com [217.89.139.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41A06E00AAA
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 23:42:29 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.vector.com (Postfix) with ESMTP id 68FEE8529C
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 08:42:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at vector.com
Received: from smtp2.vector.com ([127.0.0.1])
	by localhost (smtp2.vector.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LV6MRpX958Pj for <yocto@yoctoproject.org>;
	Tue, 15 Dec 2015 08:42:27 +0100 (CET)
Received: from vistrex5.vi.vector.int (unknown [10.49.3.65])
	by smtp2.vector.com (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Tue, 15 Dec 2015 08:42:27 +0100 (CET)
Received: from VISTREX4.vi.vector.int ([169.254.2.123]) by
	vistrex5.vi.vector.int ([10.49.3.65]) with mapi id 14.03.0235.001;
	Tue, 15 Dec 2015 08:42:27 +0100
From: "Philipp, Damian" <Damian.Philipp@vector.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Select make target for cmake
Thread-Index: AdEzbhgk5KhVZHryRXiSWgzLWWyV9AAHzSEAAN+P1HA=
Date: Tue, 15 Dec 2015 07:42:26 +0000
Message-ID: <094B1FB387EB1E4FBF933EEB0EFA3A0B623B6A1D@vistrex4.vi.vector.int>
References: <094B1FB387EB1E4FBF933EEB0EFA3A0B5BE0F2CA@vistrex3.vi.vector.int>
	<CAJTo0LY1=5wUJp+K=V6iV5w==jrHvfrUsDwE5-h=NdJDVfDAKA@mail.gmail.com>
In-Reply-To: <CAJTo0LY1=5wUJp+K=V6iV5w==jrHvfrUsDwE5-h=NdJDVfDAKA@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.49.73.104]
x-g-data-mailsecurity-for-exchange-state: 0
x-g-data-mailsecurity-for-exchange-error: 0
x-g-data-mailsecurity-for-exchange-sender: 23
x-g-data-mailsecurity-for-exchange-server: 8959ae4b-c457-4990-be14-918c767bdf10
x-g-data-mailsecurity-for-exchange-guid: 9FDEA4FF-6AD2-41F5-8972-BA1D4F754944
MIME-Version: 1.0
Subject: Re: Select make target for cmake
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
X-List-Received-Date: Tue, 15 Dec 2015 07:42:32 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sDQoNCj4gRnJvbTogQnVydG9uLCBSb3NzIFttYWlsdG86cm9zcy5idXJ0b25AaW50ZWwu
Y29tXSANCj4gU2VudDogVGh1cnNkYXksIERlY2VtYmVyIDEwLCAyMDE1IDEwOjU3IFBNDQo+IEEg
Y2xlYXJlciB3YXkgd291bGQgYmUgdG8gZG86DQo+IA0KPiBkb19jb21waWxlKCkgew0KPsKgIMKg
IG9lX3J1bm1ha2Ugc2VydmVyDQo+IH0NCj4NCj4gSXQncyBwb3NzaWJsZSB0aGF0IHRoZSBjb21w
aWxlIHBoYXNlIGlzIGJ1aWxkaW5nIGp1c3QgdGhlIHNlcnZlciwgYnV0IHRoZW4gaW5zdGFsbCBp
cyBidWlsZGluZyBhbmQgaW5zdGFsbGluZyBldmVyeXRoaW5nLg0KDQpJIHRyaWVkIHlvdXIgc3Vn
Z2VzdGlvbiAtIGluZGVlZCwgY21ha2UgaXMgdGhlbiBidWlsZGluZyB0aGUgcmVtYWluaW5nIGJp
bmFyaWVzIGluIHRoZSBpbnN0YWxsIHBoYXNlLiBGdXJ0aGVybW9yZSwgaXQgYXBwZWFycyB0aGF0
IGNtYWtlIGl0c2VsZiBpcyBsYWNraW5nIHN1cHBvcnQgZm9yIG11bHRpcGxlIGluc3RhbGwgdGFy
Z2V0cy4NCg0KSG93ZXZlciwgSSBkaWQgZXZlbnR1YWxseSBmaW5kIGEgc29sdXRpb24uIEEgeW9j
dG8gcmVjaXBlIGNhbiBoYXZlIG11bHRpcGxlIHBhY2thZ2VzIGFzIG91dHB1dC4gSW4gZmFjdCwg
dGhlIGRlZmF1bHQgc2VlbXMgdG8gYmUgdG8gY3JlYXRlICR7UE59LCAke1BOfS1kZXYgYW5kICR7
UE59LWRiZyBwYWNrYWdlcy4gSSBzaW1wbHkgYWRkZWQgJHtQTn0tY2xpZW50IGFuZCAke1BOfS1j
bGllbnQtZGJnIGFuZCBtYW51YWxseSBzb3J0ZWQgYWxsIHRoZSBjbGllbnQgZmlsZXMgaW50byB0
aG9zZSBwYWNrYWdlcyB1c2luZyB0aGUgRklMRVNfKiB2YXJpYWJsZXMuIFlvdSB0aGVuIGdldCBh
IGNsZWFuIHNlcGFyYXRpb24gb2YgY2xpZW50LSBhbmQgc2VydmVyIHBhY2thZ2VzIGFuZCBjYW4g
aW5zdGFsbCBlaXRoZXIgb3IgYm90aCB1c2luZywgZS5nLiwgSU5TVEFMTF9JTUFHRS4NCg0KUmVn
YXJkcw0KRGFtaWFuDQo=

