Return-Path: <Rikard.Olsson@se.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEC59E00C18; Mon,  4 Apr 2016 05:43:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [139.15.237.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp6-v.fe.bosch.de (smtp6-v.fe.bosch.de [139.15.237.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7BAAE00BFD
	for <yocto@yoctoproject.org>; Mon,  4 Apr 2016 05:43:22 -0700 (PDT)
Received: from vsmta13.fe.internet.bosch.com (unknown [10.4.98.53])
	by imta24.fe.bosch.de (Postfix) with ESMTP id 50CE7D8022C;
	Mon,  4 Apr 2016 14:43:20 +0200 (CEST)
Received: from FE-MBX1022.de.bosch.com (vsgw23.fe.internet.bosch.com
	[10.4.98.23])
	by vsmta13.fe.internet.bosch.com (Postfix) with ESMTP id 2AD152E40238; 
	Mon,  4 Apr 2016 14:43:20 +0200 (CEST)
Received: from SI-MBX1022.de.bosch.com (10.3.230.36) by
	FE-MBX1022.de.bosch.com (10.3.230.80) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Mon, 4 Apr 2016 14:43:19 +0200
Received: from SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88]) by
	SI-MBX1022.de.bosch.com ([fe80::94f3:2c29:36e3:3f88%22]) with mapi id
	15.00.1104.000; Mon, 4 Apr 2016 14:43:19 +0200
From: "Olsson Rikard (RBSN/ESW1)" <Rikard.Olsson@se.bosch.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, Paul Eggleton
	<paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Append to bblayers.conf and local.conf
Thread-Index: AdGMFet9TimazJ6STgShDmJ1nJIUugBxGAIAABpi/wAACs4hEA==
Date: Mon, 4 Apr 2016 12:43:18 +0000
Message-ID: <434fe8858bc94e6da6dac6f5f11636e6@SI-MBX1022.de.bosch.com>
References: <05908ff25fd54be287c631f4bc5b006b@SI-MBX1022.de.bosch.com>
	<3011913.B3k47xJghH@peggleto-mobl.ger.corp.intel.com>
	<CAP71WjxnqQrZRVTuANO7Y86qVVkN1nYRKc4ozX=0L+OD5OYh0w@mail.gmail.com>
In-Reply-To: <CAP71WjxnqQrZRVTuANO7Y86qVVkN1nYRKc4ozX=0L+OD5OYh0w@mail.gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.112.94.39]
MIME-Version: 1.0
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1679-8.0.0.1202-22238.006
X-TMASE-MatchedRID: 8+bhjh9TQnGnykMun0J1wpmug812qIbzDqPYSpGYuBawucNx4BfFInvs
	1XTG2z33MG6iNjuztGGgglhSgkQaQA+q5PB4uzgXW7gz/Gbgpl6eCG7F5rpuxtp1biJhIyNR47t
	D0xLQ0ufmhcnWoYPmp0bWzDBK3U7loc2jNPrbZniVUcz8XpiS9Pa/bRHEsPI35GbPjpDb1sPEOn
	qbmvWLBvFrDMunYTN5T9iua8toDZ5rIVHCHB/+6Ytbv1rdjkQ6OL9BEHibhsgA6s2mIXI3kOpX8
	3nlvZMBkMURWv8T/SyzzbH1Vt8BVEWzDYun6RK422QSll0Gqg1QCOsAlaxN72fyyQIPYpWBo8WM
	kQWv6iUVR7DQWX/WkfUwcrKuHEgWVnRXm1iHN1bEQdG7H66TyOk/y0w7JiZo
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Append to bblayers.conf and local.conf
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
X-List-Received-Date: Mon, 04 Apr 2016 12:43:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8gTmljb2xhcywNCg0KVGhhbmtzIGZvciB5b3VyIGFuc3dlci4gV2lsbCB0aGVzZSB0d28g
ZmlsZXMgY29uZi9hdXRvLmNvbmYgYW5kIGNvbmYvc2l0ZS5jb25mIGJlIGFibGUgdG8gaGFuZGxl
IGNoYW5nZXMgZm9yIGJibGF5ZXJzLmNvbmYgYXMgd2VsbD8NCg0KRm9yIGV4YW1wbGUgd2UgbmVl
ZCB0byBhZGQgbWV0YS1xdDUgYnV0IHdvdWxkIHByZWZlciB0byBhcHBlbmQgdG8gdGhlIGxheWVy
cyBhbHJlYWR5IHRoZXJlIGFuZCBub3QgYWRkIG91ciBjaGFuZ2VzIGludG8gYmJsYXllcnMuY29u
ZiB0byBhdm9pZCBtZXJnZSB3b3JrLg0KDQpCZXN0IHJlZ2FyZHMNClJpa2FyZCBPbHNzb24NCg0K
DQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWNvbGFzIERlY2hl
c25lIFttYWlsdG86bmljb2xhcy5kZWNoZXNuZUBsaW5hcm8ub3JnXQ0KPiBTZW50OiBkZW4gNCBh
cHJpbCAyMDE2IDExOjMwDQo+IFRvOiBQYXVsIEVnZ2xldG9uIDxwYXVsLmVnZ2xldG9uQGxpbnV4
LmludGVsLmNvbT4NCj4gQ2M6IE9sc3NvbiBSaWthcmQgKFJCU04vRVNXMSkgPFJpa2FyZC5PbHNz
b25Ac2UuYm9zY2guY29tPjsgWW9jdG8gbGlzdA0KPiBkaXNjdXNzaW9uIDx5b2N0b0B5b2N0b3By
b2plY3Qub3JnPg0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSBBcHBlbmQgdG8gYmJsYXllcnMuY29u
ZiBhbmQgbG9jYWwuY29uZg0KPiANCj4gT24gU3VuLCBBcHIgMywgMjAxNiBhdCAxMDo1NCBQTSwg
UGF1bCBFZ2dsZXRvbiA8cGF1bC5lZ2dsZXRvbkBsaW51eC5pbnRlbC5jb20+DQo+IHdyb3RlOg0K
PiA+PiBXZSBhcmUgcmVjZWl2aW5nIGJibGF5ZXIuY29uZiBhbmQgbG9jYWwuY29uZiBmcm9tIGV4
dGVybmFsIHN1cHBsaWVyDQo+ID4+IHdoaWNoIGFscmVhZHkgaGF2ZSBsYXllcnMvY29uZmlndXJh
dGlvbiBhZGRlZC4gTm93IHdlIHdhbnQgdG8gYWRkIG91cg0KPiA+PiBvd24gbGF5ZXJzL2NvbmZp
Z3VyYXRpb24gYnkgYXBwZW5kaW5nIHRvIHRoZXNlIGZpbGVzIHRoaXMgdG8gYXZvaWQNCj4gPj4g
bWFudWFsIG1lcmdlIHdvcmsgZWFjaCB0aW1lIGEgZGVsaXZlcnkgZnJvbSBleHRlcm5hbCBzdXBw
bGllciBpcyBtYWRlLg0KPiA+Pg0KPiA+PiBRdWVzdGlvbjoNCj4gPj4gSG93IGRvIEkgYXBwZW5k
IGxheWVycy9jb25maWd1cmF0aW9uIHRvIGJibGF5ZXIuY29uZiBhbmQgbG9jYWwuY29uZj8NCj4g
Pg0KPiA+IFRoZSBiZXN0IGFuc3dlciBJIGNhbiBnaXZlIGlzIHRoZXNlIGZpbGVzIGFyZW4ndCBy
ZWFsbHkgbWVhbnQgdG8gYmUNCj4gPiBkaXN0cmlidXRlZC4gSWYgeW91IGhhdmUgdG9vIG11Y2gg
c3BlY2lmaWMgc3R1ZmYgaW4gdGhlc2UgZmlsZXMNCj4gPiAocGFydGljdWxhcmx5DQo+ID4gbG9j
YWwuY29uZikgdGhlbiBJIHdvdWxkIHNheSBpdCdzIHBvc3NpYmxlIHlvdXIgc3VwcGxpZXIgaGFz
IHB1dA0KPiA+IHRoaW5ncyBpbiB0aGUgd3JvbmcgcGxhY2UuDQo+ID4NCj4gPiBUaGUgd2F5IGl0
IG91Z2h0IHRvIHdvcmsgaXMsIHlvdSBhZGQgdGhlIG5lZWRlZCBsYXllcnMgdG8geW91cg0KPiA+
IGJibGF5ZXJzLmNvbmYsIHRoZW4gZ28gdG8geW91ciBsb2NhbC5jb25mIGFuZCBzZXQgRElTVFJP
IGFuZCBNQUNISU5FDQo+ID4gYW5kIGFueXRoaW5nIHlvdSBuZWVkIGZvciAqbG9jYWwqIGNvbmZp
Z3VyYXRpb24gKGUuZy4gbG9jYWwgcGF0aHMpIGFuZA0KPiA+IHRoYXQncyBwcmV0dHkgbXVjaCBp
dC4gSWYgeW91IGhhdmUgdG8gaW5jbHVkZSBhIHdob2xlIGJ1bmNoIG9mIGV4dHJhDQo+ID4gbGlu
ZXMgaW4gbG9jYWwuY29uZiwgdGhvc2UgbGluZXMgcmVhbGx5IHNob3VsZCBiZSBlbHNld2hlcmUg
KGUuZy4NCj4gPiBjdXN0b20gZGlzdHJvIGNvbmZpZywgb3IgdGhlIG1hY2hpbmUgLmNvbmYgZmls
ZSBpZiB0aGV5IGFyZSBzcGVjaWZpYw0KPiA+IHRvIHRoZSBtYWNoaW5lLikNCj4gDQo+IE5vdGUg
dGhhdCB5b3UgY2FuIHVzZSBjb25mL2F1dG8uY29uZiBhbmQgY29uZi9zaXRlLmNvbmYgYXMgd2Vs
bCwgdGhlc2UgZmlsZXMgYXJlDQo+IHBhcnNlZCBhdCB0aGUgc2FtZSB0aW1lIGFzIGNvbmYvbG9j
YWwuY29uZiwgc28gaWYgeW91IHJlYWxseSBjYW5ub3QgY2hhbmdlDQo+IGxvY2FsLmNvbmYsIHlv
dSBjYW4gdXNlIHRoZSBvbmUgb2YgdGhlIG90aGVyIG9uZXMuDQo=

