Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA06CE00D6A; Wed, 17 Jan 2018 09:10:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.251.16 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta12.messagelabs.com (mail1.bemta12.messagelabs.com
	[216.82.251.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 109CAE008A4
	for <yocto@yoctoproject.org>; Wed, 17 Jan 2018 09:10:13 -0800 (PST)
Received: from [216.82.251.44] by server-16.bemta-12.messagelabs.com id
	D7/8E-10560-4738F5A5; Wed, 17 Jan 2018 17:10:12 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBKsWRWlGSWpSXmKPExsXi5LtOQLekOT7
	K4PodTYv/j7exWUx6uYbNgclj3slAj/YTfWwBTFGsmXlJ+RUJrBl9R2cwFmwUrtj+9AVbA+ME
	4S5GLg4hgdWMEnf3d7JBOGsYJV6fvcEM4SxhlHh5fT+Qw8nBJmAuMe3wQZYuRg4OEYFcidU9B
	iBhYQEPiW9rG5lAbBEBT4n/p5pZIWw3iZ7bH1lAbBYBVYmp/5vZQWxeAV+JWbNfg40UEmhgkp
	h1xxXE5hRwltj77znYHEYBWYmV508zgtjMAuISt57MB4tLCAhILNlznhnCFpV4+fgfK4QtL/H
	q3BEmkNOYBTQl1u/Sh2hVlJjS/RBqraDEyZlPWCDWqkm0zZnAPIFRdBaSDbMQumch6Z6FpHsB
	I8sqRo3i1KKy1CJdI1O9pKLM9IyS3MTMHF1DQyO93NTi4sT01JzEpGK95PzcTYzA+KlnYGDcw
	bil0esQoyQHk5Io7wmj+CghvqT8lMqMxOKM+KLSnNTiQ4wyHBxKErwiTUA5waLU9NSKtMwcYC
	TDpCU4eJREeF0bgdK8xQWJucWZ6RCpU4zGHDdevG5j5tiy7E0bsxBLXn5eqpQ472uQUgGQ0oz
	SPLhBsARziVFWSpiXkYGBQYinILUoN7MEVf4VozgHo5IwrxzIPTyZeSVw+14BncIEdMqWGbEg
	p5QkIqSkGhhX/t7O0V78VUTihMXchee2PT8RONdg1VLTyVzevBuy0x4uZixQsXjaHWJi7pqwI
	2/ujyx+syjN6OQHK4PexcwLObxU/VnScle7rb6eSm88f1eIuLxsPrtHvnm34OW6+5PfvZTnj5
	iyYJrEvg2FZz7mqu4sfbTYqk+3+OLUs75Vag82dGpze2QosRRnJBpqMRcVJwIA+f5fOCsDAAA
	=
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-12.tower-200.messagelabs.com!1516209012!46907078!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 25096 invoked from network); 17 Jan 2018 17:10:12 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-12.tower-200.messagelabs.com with SMTP;
	17 Jan 2018 17:10:12 -0000
Received: from MTK-SMS-XCH03.digi.com (10.10.8.197) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 17 Jan 2018 11:10:09 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH03.digi.com
	(10.10.8.197) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Wed, 17 Jan 2018 11:10:09 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Wed, 17 Jan 2018 18:10:07 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Postinstallation script warnings in Yocto 2.4 Rocko
Thread-Index: AdOIYQlF3trmw5fqTDOXmOVi9/TopwACpYQAAAKIhvD///msAP/xrr0A
Date: Wed, 17 Jan 2018 17:10:06 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B7E03C@dor-sms-xch01.digi.com>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
	<5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
	<0B2EBCD48D33654381E736352034C70C01B5D3AC@dor-sms-xch01.digi.com>
	<3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
In-Reply-To: <3814c4b4-4787-1e7e-6791-a69856254831@linux.intel.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.2.93]
MIME-Version: 1.0
Subject: Re: Postinstallation script warnings in Yocto 2.4 Rocko
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
X-List-Received-Date: Wed, 17 Jan 2018 17:10:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEFsZXhhbmRlciBLYW5hdmluIFttYWls
dG86YWxleGFuZGVyLmthbmF2aW5AbGludXguaW50ZWwuY29tXSANClNlbnQ6IE1vbmRheSwgSmFu
dWFyeSA4LCAyMDE4IDE6MjAgUE0NCg0KT24gMDEvMDgvMjAxOCAwMTo0NCBQTSwgRGlheiBkZSBH
cmVudSwgSm9zZSB3cm90ZToNCg0KPiA+IFRoYW5rcyBmb3IgdGhlIGluZm9ybWF0aW9uLiBJIGd1
ZXNzIHRoaXMgZml4IHdpbGwgYmUgZm9yIFlvY3RvIDIuNT8NCg0KPiBNYXliZTsgSSdtIHdvcmtp
bmcgcmlnaHQgbm93IG9uIHRoZSBwYXRjaHNldCwgYW5kIHdpbGwgcG9zdCBpdCB0byBvZS1jb3Jl
IGxpc3QgbGF0ZXIgdG9kYXkuIExhc3QgdGltZSBpdCB3YXMgYSBiaXQgY29udHJvdmVyc2lhbCwg
c28gSSdkIGFwcHJlY2lhdGUgaWYgeW91IGEpIHRyeSBhbmQgdGVzdCBpdDsgYikgZXhwcmVzcyB5
b3VyDQo+IHN1cHBvcnQgZm9yIHRoZSBjaGFuZ2VzIDspDQoNCj4gV29yayBpbiBwcm9ncmVzcyBo
ZXJlOg0KDQo+IGh0dHBzOi8vZ2l0LnlvY3RvcHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9wb2t5
LWNvbnRyaWIvbG9nLz9oPWFrYW5hdmluL2RuZi1ycG00LXBvc3RpbnN0LWZpeA0KDQpVbmZvcnR1
bmF0ZWx5IEkgYW0gbm90IGFibGUgdG8gZm9sbG93IHRoZSBjb252ZXJzYXRpb24gaW4gb2UtY29y
ZSwgYXMgSSBzdWJzY3JpYmVkIGFmdGVyIHlvdSBzZW50IHRoZSBwYXRjaHNldC4gDQoNCkkgaGF2
ZSB0ZXN0ZWQgeW91ciBwYXRjaHNldCBieSBjaGVycnktcGlja2luZyB0aGUgY29tbWl0cyB0byB0
aGUgcm9ja28gYnJhbmNoLiBUaGVyZSB3YXMgb25seSBhIG1pbm9yIGNvbmZsaWN0LiBXaXRoIHRo
b3NlIGNoYW5nZXMgSSBnZXQgYSBtZXNzYWdlIGxpa2UgdGhpczoNCg0KV0FSTklORzogY29yZS1p
bWFnZS1iYXNlLTEuMC1yMCBkb19yb290ZnM6IFRoZSBwb3N0aW5zdGFsbHMgZm9yIHRoZSBmb2xs
b3dpbmcgcGFja2FnZXMgd2lsbCBiZSBwb3N0cG9uZWQgZm9yIGZpcnN0IGJvb3Q6IGluaXQtaWZ1
cGRvd24gdS1ib290LWZ3LXV0aWxzDQoNClRoZSBwYXRjaGVzIHdvcmssIGJ1dCBJIHdhcyB3b25k
ZXJpbmcgaWYgd2UgcmVhbGx5IG5lZWQgdG8gbWFyayB0aGlzIGJlaGF2aW9yIGFzIGEgV0FSTklO
Ry4gRnJvbSBteSBwb2ludCBvZiB2aWV3LCB0aGlzIG1heSBiZSBjb25mdXNpbmcgZm9yIGEgdXNl
ciwgYXMgaXQgY291bGQgbGVhZCB0byB0aGluayB0aGF0IHNvbWV0aGluZyBpcyB3cm9uZy4gQnV0
IEkgdGhpbmsgdGhhdCwgZXZlbiBpZiBpbWFnZSBwb3N0IHByb2Nlc3NpbmcgZHVyaW5nIHRoZSBi
dWlsZCBpcyBwcmVmZXJhYmxlLCB0aGVyZSBhcmUgc29tZSBpbWFnZSBwb3N0IHByb2Nlc3Npbmcg
dGhhdCBqdXN0IGNhbm5vdCBiZSBkb25lIHRoZXJlLiBUaGluayBmb3IgZXhhbXBsZSBvZiBhbnkg
SFcgaWRlbnRpZmllciwgbGlrZSBhIE1BQyBhZGRyZXNzIHRoYXQgeW91IG1pZ2h0IHdhbnQgdG8g
dXNlLg0KDQpJIHRoaW5rIGEgYmIubm90ZSBzaG91bGQgYmUgZW5vdWdoLiBBdCBsZWFzdCBhbiBv
cHRpb24gcGVyIHJlY2lwZSB0byBza2lwIHRoZSB3YXJuaW5nLCBzbyB0aGF0IGV4cGVjdGVkIG9u
LXRhcmdldC1wb3N0cHJvY2Vzc2luZyB3YXJuaW5ncyBjYW4gYmUgaGlkZGVuLg0KDQpBbHNvLCBp
cyB0aGVyZSBhbnkgY2hhbmNlIHRoaXMgY291bGQgZW5kIHVwIGluIHJvY2t5PyBBcyBpdCBpcywg
YW55IHBvc3Rwcm9jZXNzaW5nIGZvciB0aGUgdGFyZ2V0IGNhdXNlcyB1Z2x5IFdBUk5JTkdTIHdp
dGggJy0xIGVycm9yIGNvZGUnIG1lc3NhZ2VzLg0KDQpUaGFua3MgYWdhaW4gZm9yIHRoZSBwYXRj
aGVzIQ0KDQoNCg==

