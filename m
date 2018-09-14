Return-Path: <Jeremy.Overesch@millerwelds.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 970AAE009E7; Fri, 14 Sep 2018 05:49:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [206.197.156.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailcuda.itwwelds.com (mailcuda.itwwelds.com [206.197.156.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50268E006AF
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2018 05:49:24 -0700 (PDT)
X-ASG-Debug-ID: 1536929363-08979511b91242900001-yzSStA
Received: from webmail.itwwelds.com (exch13mb01.itwwelds.com [10.52.121.20])
	by mailcuda.itwwelds.com with ESMTP id sj68wW1rRvoyJuIu;
	Fri, 14 Sep 2018 07:49:23 -0500 (CDT)
X-Barracuda-Envelope-From: Jeremy.Overesch@millerwelds.com
X-ASG-Whitelist: Client
Received: from EXCH13MB02.itwwelds.com (10.52.121.21) by
	EXCH13MB01.itwwelds.com (10.52.121.20) with Microsoft SMTP Server (TLS)
	id 15.0.1104.5; Fri, 14 Sep 2018 07:49:23 -0500
Received: from EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3]) by
	EXCH13MB02.itwwelds.com ([fe80::994c:a14b:1d78:3bd3%20]) with mapi id
	15.00.1104.000; Fri, 14 Sep 2018 07:49:23 -0500
From: Jeremy Overesch <Jeremy.Overesch@millerwelds.com>
To: Andre McCurdy <armccurdy@gmail.com>
Thread-Topic: [yocto] Whitelist gdbserver
X-ASG-Orig-Subj: RE: [yocto] Whitelist gdbserver
Thread-Index: AdRLdyiBIbwfdViTQ3i20DK6Qz/jowAXqw+AABSyucA=
Date: Fri, 14 Sep 2018 12:49:22 +0000
Message-ID: <5283ddf66e9b4b6f853f504c08b32d0c@EXCH13MB02.itwwelds.com>
References: <06a2ad55e4924b5982dfc2953e31a17a@EXCH13MB02.itwwelds.com>
	<CAJ86T=VnFKKaFdH8M=hwOXCG5oR8pBPSZPJneZvOL1qn-E0S7Q@mail.gmail.com>
In-Reply-To: <CAJ86T=VnFKKaFdH8M=hwOXCG5oR8pBPSZPJneZvOL1qn-E0S7Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.46.101.16]
MIME-Version: 1.0
X-Barracuda-Connect: exch13mb01.itwwelds.com[10.52.121.20]
X-Barracuda-Start-Time: 1536929363
X-Barracuda-URL: https://mailcuda.itwwelds.com:443/cgi-mod/mark.cgi
X-Barracuda-Scan-Msg-Size: 2436
X-Virus-Scanned: by bsmtpd at itwwelds.com
X-Barracuda-BRTS-Status: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Whitelist gdbserver
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
X-List-Received-Date: Fri, 14 Sep 2018 12:49:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIQ0KDQpJIHNlYXJjaGVkIGZvciAid2hpdGVsaXN0IiBpbiB0aGUgZG9jdW1lbnRhdGlv
biwgYnV0IGl0IGRpZG4ndCBsaXN0IGFueXRoaW5nIGFib3V0IHdoaXRlbGlzdGluZyBhIHBhY2th
Z2UgZXZlbiB0aG91Z2ggSSBrbmV3IGl0IHdhcyBwb3NzaWJsZS4gKGxpYmlkbiB3YXMgYmVpbmcg
d2hpdGVsaXN0ZWQuKSAgQWxzbywgaXQgdHVybnMgb3V0IEkgaGFkIHRvIHdoaXRlbGlzdCAiZ2Ri
IiBub3QganVzdCAiZ2Ric2VydmVyIiwgYmVjYXVzZSBnZGJzZXJ2ZXIgaXMgcGFydCBvZiB0aGUg
Z2RiIHJlY2lwZS4NCg0KVGhhbmtzIGFnYWluLA0KSmVyZW15DQoNCi0tLS0tT3JpZ2luYWwgTWVz
c2FnZS0tLS0tDQpGcm9tOiBBbmRyZSBNY0N1cmR5IDxhcm1jY3VyZHlAZ21haWwuY29tPg0KU2Vu
dDogVGh1cnNkYXksIFNlcHRlbWJlciAxMywgMjAxOCA0OjUxIFBNDQpUbzogSmVyZW15IE92ZXJl
c2NoIDxKZXJlbXkuT3ZlcmVzY2hAbWlsbGVyd2VsZHMuY29tPg0KQ2M6IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIFdoaXRlbGlzdCBnZGJzZXJ2ZXINCg0KT24g
VGh1LCBTZXAgMTMsIDIwMTggYXQgODo0MiBBTSwgSmVyZW15IE92ZXJlc2NoDQo8SmVyZW15Lk92
ZXJlc2NoQG1pbGxlcndlbGRzLmNvbT4gd3JvdGU6DQo+IEhJIGFsbCwNCj4NCj4gSeKAmW0gYXR0
ZW1wdGluZyB0byB3aGl0ZWxpc3QgZ2Ric2VydmVyIGp1c3QgZm9yIFNESyBwdXJwb3Nlcywgd2hp
bGUga2VlcGluZw0KPiBhbGwgb3RoZXIgR1BMdjMgY29kZSBhcyBpbmNvbXBhdGlibGUgKHRoZXJl
Zm9yZSB1bmJ1aWx0KS4gIEhvd2V2ZXIsDQo+IGV2ZXJ5dGhpbmcgSeKAmXZlIHRyaWVkIHN0aWxs
IHJlc3VsdHMgaW4gZ2Ric2VydmVyIGJlaW5nIHJlbW92ZWQgZnJvbSBteSBTREsNCj4gYW5kIHRo
ZXJlZm9yZSBmYWlsaW5nIHRvIGJ1aWxkLg0KPg0KPiBJbiBteSBsb2NhbC5jb25mLCBJIGhhdmUg
dGhlIGZvbGxvd2luZyBsaW5lOg0KPg0KPiBJTkNPTVBBVElCTEVfTElDRU5TRSA9ICJHUEx2MyBM
R1BMdjMgQUdQTHYzIg0KPg0KPiBUaHJvdWdoIHRoZSB5b2N0byBkb2N1bWVudGF0aW9uDQo+ICho
dHRwczovL3d3dy55b2N0b3Byb2plY3Qub3JnL2RvY3MvMi40L21lZ2EtbWFudWFsL21lZ2EtbWFu
dWFsLmh0bWwjbGljZW5zZS1mbGFnLW1hdGNoaW5nKSwNCj4gaXQgYXBwZWFycyB0aGF0IGFkZGlu
ZyB0aGUgZm9sbG93aW5nICpzaG91bGQqIHdvcmssIHlldCBpdCBkb2VzbuKAmXQ6DQoNCkkgdGhp
bmsgeW91IGFyZSBtaXhpbmcgdXAgIkxJQ0VOU0UiIGFuZCAiTElDRU5TRV9GTEFHUyIuIFRoZSB0
d28gZG9uJ3QNCnJlYWxseSB3b3JrIHRvZ2V0aGVyLiBJdCdzIHBhcnRseSBleHBsYWluZWQgaW46
DQoNCiAgaHR0cHM6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzIuNC9tZWdhLW1hbnVhbC9t
ZWdhLW1hbnVhbC5odG1sI3Zhci1MSUNFTlNFX0ZMQUdTDQoNClNlZSB0aGUgTElDRU5TRV9GTEFH
UyBjb21tZW50IHdoaWNoIHNheXMgIlRoaXMgdmFsdWUgaXMgaW5kZXBlbmRlbnQgb2YNCkxJQ0VO
U0UgYW5kIGlzIHR5cGljYWxseSB1c2VkIHRvIG1hcmsgcmVjaXBlcyB0aGF0IG1pZ2h0IHJlcXVp
cmUNCmFkZGl0aW9uYWwgbGljZW5zZXMgaW4gb3JkZXIgdG8gYmUgdXNlZCBpbiBhIGNvbW1lcmNp
YWwgcHJvZHVjdC4gRm9yDQptb3JlIGluZm9ybWF0aW9uLCBzZWUgdGhlICJFbmFibGluZyBDb21t
ZXJjaWFsbHkgTGljZW5zZWQgUmVjaXBlcyINCnNlY3Rpb24uIg0KDQpUbyB3aGl0ZWxpc3QgYSBy
ZWNpcGUgd2hpY2ggaXMgYmVpbmcgZXhjbHVkZWQgZHVlIHRvDQpJTkNPTVBBVElCTEVfTElDRU5T
RSwgdXNlIFdISVRFTElTVF9HUEwtMy4wLiBGb3IgZXhhbXBsZSBmb3INCmdkYnNlcnZlciwgdHJ5
IHRoZSBmb2xsb3dpbmc6DQoNCiAgV0hJVEVMSVNUX0dQTC0zLjAgKz0gImdkYnNlcnZlciINCg0K
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCg0KVGhpcyBtZXNzYWdlIChpbmNsdWRp
bmcgYW55IGF0dGFjaG1lbnRzKSBpcyBpbnRlbmRlZCBmb3IgdGhlIHNvbGUgdXNlIG9mIHRoZSBp
bnRlbmRlZCByZWNpcGllbnQvcyBhbmQgbWF5IGNvbnRhaW4gbWF0ZXJpYWwgdGhhdCBpcyBDT05G
SURFTlRJQUwgQU5EIFBSSVZBVEUgQ09NUEFOWSBJTkZPUk1BVElPTi4gSWYgeW91IGFyZSBub3Qg
dGhlIGludGVuZGVkIHJlY2lwaWVudCBvZiB0aGlzIG1lc3NhZ2UsIHlvdSBhcmUgaGVyZWJ5IG5v
dGlmaWVkIHRoYXQgeW91IG11c3QgZGVsZXRlIHRoZSBtZXNzYWdlIHdpdGhvdXQgZGlzc2VtaW5h
dGluZywgY29weWluZyBvciB0YWtpbmcgYW55IGFjdGlvbiBpbiByZWxpYW5jZSB1cG9uIGl0LiBJ
ZiB5b3UgaGF2ZSByZWNlaXZlZCB0aGlzIG1lc3NhZ2UgaW4gZXJyb3IsIHBsZWFzZSBub3RpZnkg
dGhlIHNlbmRlciB2aWEgcmV0dXJuIGUtbWFpbC4gVGhhbmsgeW91Lg0K

