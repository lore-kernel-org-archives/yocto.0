Return-Path: <Michael.Fainstein@ecitele.com>
Received: from mail1.bemta14.messagelabs.com (mail1.bemta14.messagelabs.com
	[193.109.254.117])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03675E0146C
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 08:49:47 -0700 (PDT)
Received: from [193.109.254.147:32166] by server-13.bemta-14.messagelabs.com
	id 73/7E-07387-89BD6615; Thu, 11 Apr 2013 15:49:44 +0000
X-Env-Sender: Michael.Fainstein@ecitele.com
X-Msg-Ref: server-6.tower-27.messagelabs.com!1365692089!3386606!4
X-Originating-IP: [147.234.242.234]
X-StarScan-Received: 
X-StarScan-Version: 6.8.6.1; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 22836 invoked from network); 11 Apr 2013 14:54:53 -0000
Received: from ilptbmg01-out.ecitele.com (HELO ilptbmg01-out.ecitele.com)
	(147.234.242.234)
	by server-6.tower-27.messagelabs.com with DHE-RSA-AES256-SHA encrypted
	SMTP; 11 Apr 2013 14:54:53 -0000
X-AuditID: 93eaf2e7-b7f396d000005d9d-57-5166ceb80cd7
Received: from ilptexch01.ecitele.com ( [172.31.244.40])
	by ilptbmg01-out.ecitele.com (Symantec Messaging Gateway) with SMTP id
	17.98.23965.8BEC6615; Thu, 11 Apr 2013 17:54:48 +0300 (IDT)
Received: from ILPTWPVEXCA02.ecitele.com (172.31.244.232) by
	ilptexch01.ecitele.com (172.31.244.40) with Microsoft SMTP Server (TLS)
	id 8.3.264.0; Thu, 11 Apr 2013 17:54:48 +0300
Received: from ILPTWPVEXMB02.ecitele.com ([fe80::5979:ca8d:419f:56df]) by
	ILPTWPVEXCA02.ecitele.com ([fe80::c473:490d:3a7e:e34a%12]) with mapi id
	14.02.0328.009; Thu, 11 Apr 2013 17:54:48 +0300
From: Michael Fainstein <Michael.Fainstein@ecitele.com>
To: =?utf-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
Thread-Topic: [yocto] how to use native executable from one recipe during
	install in another recipe
Thread-Index: Ac42q+uNDpDhPUR3TKSbxe3uxp3DW///3QAA//+xUuA=
Date: Thu, 11 Apr 2013 14:54:47 +0000
Message-ID: <62673661A504604B856269DAADA8BC281DE35FA7@ILPTWPVEXMB02.ecitele.com>
References: <62673661A504604B856269DAADA8BC281DE35E00@ILPTWPVEXMB02.ecitele.com>
	<20130411145330.1dbee1c2@e6520eb>
In-Reply-To: <20130411145330.1dbee1c2@e6520eb>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.4.58.22]
content-transfer-encoding: base64
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Brightmail-Tracker: H4sIAAAAAAAAA3VTe0hTURzm7M7turx1nZpHiVqnByhubS1plov+SLH+UXsXiV13j9ut7d6x
	e41WEIuKzKCHmZUIJln2sISSXjRLs7BasyAietHDqGn0QooKqnu7aUJ0/vrO+b7zfb9z+P1I
	wrhJn05yvIQDPONFOoN2T9+nAfP5aHmx9e2zHEd1rEU3GxRs7d6hKwLLQyCX4XlBYiRsYrHo
	cqKiALeGcQWRiWOdyIZMfi/jwj7MS07E+P2YZ9Esg+mflSvLON6EeZfAcrzbieYuKDQ7HNk5
	ZhuaNXmCzT7TsNDDiSZs9jGc1+TDosi4sUk+WdlGeCojvXp/jXHtxx+39CHwILEKxJOQngbf
	3rugUfFoeOdpq64KGEgjHQawKfJUq27OAhg616VTVEb6GoBHbnsUrKOnw57G93oFJ9NT4eVI
	dZyCCTob7tm/mVBwEs3Cx1+jhKrB8Or3Zp2KZ8DqrpegCpCklp4ET71ilGOKLoJdjy4SapQE
	d9w6/bu4eNoCK+8/AQoGcqFfbrZo1KhU+LC34c8DaNh0qYdQcQqMvfwRp+KxcGdk2+8ogs6A
	rRenqFfHw5rtz/VqbCK8caBXq8ZmwncDR/5cTYMdRx9od4G0umFpdX+d6oY51Q1zOgi0x0EK
	5/VLZT631WbBLk7CXmxxCb7TQO2X1+fBt4aJnYAmAUqgrgRxsTGOWSMGfZ0gjdSgFCp8u7zY
	OLJMYIMeRvSUBiq8WOwEkCRQMrUiLHMUywTX4YAwSOXJX7mbSB/hEuTO5KVSu9X6/w1KpZpD
	SwqNtFvuy9UY+3Fg0GcMSSJItSvxiQHsxmvLOa/0l9aQ8UoZCXIZrYqGEv2MT+TcKn8T2Mmm
	F2/6AXn0TKwfGLW8wOP0VGqzIqUVqaeCH3IbnJ0+kCp/QxLVpqgS5Mka8uuTozRylG0nq0TJ
	UzREpYfAzMa8EXtf27ImbrEvL5hqD0c/0/VLLQdXt+Xx3eyFyoq2k4ZYEG1dlFbfvF44Z+04
	O0dgam/k+6esCKPFJw4FNmRYIuaMn4WRdse+k/2owRotqR3HN+ajnpxo/ark63zLRseoeR2x
	rLt5Z46VNJIN1nE185/rxr9x3vtQuyz3MNKKHsaWSQRE5hfNP0D2FgQAAA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to use native executable from one recipe during install in another recipe
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
X-List-Received-Date: Thu, 11 Apr 2013 15:49:50 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEVyaWMgQsOpbmFyZCBb
bWFpbHRvOmVyaWNAZXVrcmVhLmNvbV0NCj4gU2VudDog15nXldedwqDXlCAxMSDXkNek16jX
mdecIDIwMTMgMTU6NTMNCj4gVG86IE1pY2hhZWwgRmFpbnN0ZWluDQo+IENjOiB5b2N0b0B5
b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJlOiBbeW9jdG9dIGhvdyB0byB1c2UgbmF0
aXZlIGV4ZWN1dGFibGUgZnJvbSBvbmUgcmVjaXBlIGR1cmluZw0KPiBpbnN0YWxsIGluIGFu
b3RoZXIgcmVjaXBlDQo+IA0KPiBIaSBNaWNoYWVsLA0KPiANCj4gTGUgVGh1LCAxMSBBcHIg
MjAxMyAxMTo1ODo1MCArMDAwMCwNCj4gTWljaGFlbCBGYWluc3RlaW4gPE1pY2hhZWwuRmFp
bnN0ZWluQGVjaXRlbGUuY29tPiBhIMOpY3JpdCA6DQo+ID4gSSBoYXZlIG9uZSByZWNpcGUg
dGhhdCBpbmhlcml0cyAibmF0aXZlIiwgYnVpbGRzIG5hdGl2ZSBleGVjdXRhYmxlIGFuZA0K
PiBpbnN0YWxscyBpdCBpbiB0bXAvd29yay94ODZfNjQtbGludXgvZm9vLW5hdGl2ZS0xLjAw
LXIwL2ltYWdlL3NiaW4vZm9vDQo+ID4NCj4gZG8geW91IGhhdmUgQkJDTEFTU0VYVEVORCA9
ICJuYXRpdmUiIGluIHRoaXMgcmVjaXBlID8NCj4gDQo+IEluIHRoZSBlbmQsIGlzbid0IHRo
ZSBuYXRpdmUgYmluYXJ5IGluc3RhbGxlZCBpbiA6DQo+IHN5c3Jvb3RzL3g4Nl82NC1saW51
eC91c3Ivc2Jpbi8gPw0KPiANCj4gPiBBbm90aGVyIHJlY2lwZSBkZXBlbmRzIG9uIGZpcnN0
IG9uZSBhbmQgbmVlZHMgdG8gZXhlY3V0ZSBmb28gaW4gaXRzDQo+IGRvX2luc3RhbGwgaW4g
b3JkZXIgdG8gaW5zdGFsbCBmaWxlcyBpbiB0bXAvd29yay9wcGNlNTAwdjItZnNsLWxpbnV4
LQ0KPiBnbnVzcGUvZm9vLTEuMDAtcjAvaW1hZ2UvZXRjLw0KPiA+DQo+ID4gSSBjYW4ndCBm
aW5kIGEgd2F5IHRvIGRvIGl0LiBBbnkgc3VnZ2VzdGlvbnM/IEhvdyBjYW4gSSBpbnN0YWxs
IGZvbyBpbg0KPiBmaXJzdCByZWNpcGUgdG8gc29tZSBjb21tb24gbG9jYXRpb24gdGhhdCAy
bmQgcmVjaXBlIGNhbiB1c2U/IElzIHRoZXJlIHN1Y2gNCj4gc3RhbmRhcmQgbG9jYXRpb24/
DQo+ID4NCj4gWW91IHNob3VsZCB0aGVuIGJlIGFibGUgdG8gY2FsbCBpdCBpbiB0aGUgb3Ro
ZXIgcmVjaXBlIGFzIElJUkMgdGhpcyBwYXRoDQo+IGlzIGluICRQQVRIIChhbmQgeW91ciBy
ZWNpcGUgc2hvdWxkIGRlcGVuZCBvbiBmb28tbmF0aXZlKQ0KPiANCj4gRXJpYw0KDQpUaGFu
a3MhDQoNCkkgaGFkIGEgcHJvYmxlbSB3aXRoIGRvX3BvcHVsYXRlX3N5c3Jvb3QgaW4gbmF0
aXZlIHJlY2lwZSBkdWUgdG8gYmFkIGdlbmVyYXRlZCBwYXRoIGZvciBkb19wb3B1bGF0ZV9z
eXNyb290W3NzdGF0ZS1pbnB1dGRpcnNdLiBJIG92ZXJyb2RlIGl0IGluIG15IHJlY2lwZSB3
aXRoIA0KZG9fcG9wdWxhdGVfc3lzcm9vdFtzc3RhdGUtaW5wdXRkaXJzXSA9ICIke1NZU1JP
T1RfREVTVERJUn0iIGFuZCB0aGlzIHJlY2lwZSB3YXMgYnVpbGQgIHN1Y2Nlc3NmdWxseS4g
SG93ZXZlciwgZm9vIHdhcyBub3QgaW5zdGFsbGVkIGluIHN5c3Jvb3RzL3g4Nl82NC1saW51
eC4NCkkgY2hhbmdlZCBERVNURElSIGluICdtYWtlIGluc3RhbGwnIGZyb20gJHtEfSB0byAk
e1NZU1JPT1RfREVTVERJUn0gYW5kIGZpbmFsbHkgZ290IGZvbyB3ZXJlIEkgbmVlZCBpdC4N
Cg0KVGhhbmtzLA0KTWljaGFlbA0KDQoNCg0KVGhpcyBlLW1haWwgbWVzc2FnZSBpcyBpbnRl
bmRlZCBmb3IgdGhlIHJlY2lwaWVudCBvbmx5IGFuZCBjb250YWlucyBpbmZvcm1hdGlvbiB3
aGljaCBpcyBDT05GSURFTlRJQUwgYW5kIHdoaWNoIG1heSBiZSBwcm9wcmlldGFyeSB0byBF
Q0kgVGVsZWNvbS4gSWYgeW91IGhhdmUgcmVjZWl2ZWQgdGhpcyB0cmFuc21pc3Npb24gaW4g
ZXJyb3IsIHBsZWFzZSBpbmZvcm0gdXMgYnkgZS1tYWlsLCBwaG9uZSBvciBmYXgsIGFuZCB0
aGVuIGRlbGV0ZSB0aGUgb3JpZ2luYWwgYW5kIGFsbCBjb3BpZXMgdGhlcmVvZi4NCg0K

