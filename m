Return-Path: <B19537@freescale.com>
Received: from db8outboundpool.messaging.microsoft.com
	(mail-db8lp0185.outbound.messaging.microsoft.com [213.199.154.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE031E01574
	for <yocto@yoctoproject.org>; Fri,  7 Jun 2013 03:46:10 -0700 (PDT)
Received: from mail33-db8-R.bigfish.com (10.174.8.238) by
	DB8EHSOBE002.bigfish.com (10.174.4.65) with Microsoft SMTP Server id
	14.1.225.23; Fri, 7 Jun 2013 10:46:08 +0000
Received: from mail33-db8 (localhost [127.0.0.1])	by mail33-db8-R.bigfish.com
	(Postfix) with ESMTP id D0407BC00CE	for <yocto@yoctoproject.org>;
	Fri,  7 Jun 2013 10:46:08 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(zz98dI9371I936eI542I1432Izz1f42h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ah1fc6hzzz2dh2a8h668h839h8e2h8e3h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail33-db8 (localhost.localdomain [127.0.0.1]) by mail33-db8
	(MessageSwitch) id 1370601966648301_27732;
	Fri,  7 Jun 2013 10:46:06 +0000 (UTC)
Received: from DB8EHSMHS006.bigfish.com (unknown [10.174.8.228])	by
	mail33-db8.bigfish.com (Postfix) with ESMTP id 9CA754C0051	for
	<yocto@yoctoproject.org>; Fri,  7 Jun 2013 10:46:06 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB8EHSMHS006.bigfish.com
	(10.174.4.16) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 7 Jun 2013 10:46:06 +0000
Received: from 039-SN2MPN1-021.039d.mgd.msft.net ([169.254.1.137]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0328.011; Fri, 7 Jun 2013 10:47:24 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Can Yocto run on host with other CPU types
Thread-Index: Ac5igd9+xX5mFZ2JT6aEWilowWIgcQA4oOOAAAGMZxA=
Date: Fri, 7 Jun 2013 10:45:37 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A0157FC1A@039-SN2MPN1-021.039d.mgd.msft.net>
References: <CA452391058F6D4E9715FB2C29D9312A0157EC80@039-SN2MPN1-021.039d.mgd.msft.net>
	<1370598605.6864.16.camel@ted>
In-Reply-To: <1370598605.6864.16.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Wrobel Heinz-R39252 <r39252@freescale.com>
Subject: Re: Can Yocto run on host with other CPU types
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
X-List-Received-Date: Fri, 07 Jun 2013 10:46:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFp
bHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRhdGlvbi5vcmddDQo+IFNlbnQ6IEZyaWRheSwg
SnVuZSAwNywgMjAxMyA1OjUwIFBNDQo+IA0KPiBPbiBUaHUsIDIwMTMtMDYtMDYgYXQgMDY6NDgg
KzAwMDAsIEx1byBaaGVuaHVhLUIxOTUzNyB3cm90ZToNCj4gPiBFeGNlcHQgeDg2L3g4Ni02NCBo
b3N0cywgY2FuIFlvY3RvIHN1cHBvcnQgdG8gcnVuIG9uIGhvc3RzIHdpdGggb3RoZXINCj4gPiBD
UFUgYXJjaCwgZS5nLiAgQVJNLCBQb3dlcnBjLCBldGM/DQo+IA0KPiBZb3UgbWVhbiBhcyB0aGUg
c3lzdGVtIHRvIHJ1biB0aGUgYnVpbGRzIG9uPyANCltMdW8gWmhlbmh1YS1CMTk1MzddIFllcw0K
DQo+IEluIHRoZW9yeSB0aGF0IHdvdWxkIGJlIHBvc3NpYmxlIGFsdGhvdWdoIG1vc3QgcGVvcGxl
IHRlbmQgdG8gdXNlIHg4NiBhbmQgdGhlIG90aGVycyBhcmVuJ3QNCj4gdGVzdGVkIGFmYWlrLg0K
W0x1byBaaGVuaHVhLUIxOTUzN10gRG9lcyBpdCBtYWtlIHNlbnNlIHRvIGxvZyBkZWZlY3RzIGlu
IFlQIGJ1Z3ppbGxhIGlmIGlzc3VlIGlzIGZvdW5kIG9uIGhvc3Qgd2l0aCB0aG9zZSBDUFUgdHlw
ZXM/DQoNCkJUVywgaXMgdGhlcmUgYSBsaW1pdGF0aW9uIGZvciBtYXhpbXVtIHBhcmFsbGVsIG51
bWJlciBvZiBZb2N0byBidWlsZD8gSSBkb24ndCB0aGluayB0aGUgbnVtYmVyIGNhbiBiZSBhcmJp
dHJhcnkuIA0KDQoNCkJlc3QgUmVnYXJkcywNCg0KWmhlbmh1YQ0K


