Return-Path: <btv1==3433b300ed1==Matt.Schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 545EFE00890; Mon, 22 Sep 2014 21:32:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from barbvt10.planar.com (mail.planar.com [199.244.172.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB085E00875
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 21:32:17 -0700 (PDT)
X-ASG-Debug-ID: 1411446717-04b02b73834765f0001-yzSStA
Received: from msxbvt03.planar.net ([172.16.0.147]) by barbvt10.planar.com
	with ESMTP id cqg8EiKz3G9PUUN0; Mon, 22 Sep 2014 21:31:57 -0700 (PDT)
X-Barracuda-Envelope-From: Matt.Schuckmann@planar.com
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Mon, 22 Sep 2014 21:31:57 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: =?utf-8?B?Sm9zZXBoIEFuZHJldyBkZSBsYSBQZcOxYQ==?= <jdelapena@lexmark.com>
Date: Mon, 22 Sep 2014 21:31:54 -0700
Thread-Topic: [yocto] How to include static library and headers in sdk
X-ASG-Orig-Subj: Re: [yocto] How to include static library and headers in sdk
Thread-Index: Ac/W505B1GQwQobuTdWLr7fpAcwD/Q==
Message-ID: <0BCF42B3-E535-4126-A211-041FBD780946@planar.com>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
	<CAJrRHk5wwXTHq0G3vDjp_=MKB6COWBBGd2JG9+_r-q-3yU3jrQ@mail.gmail.com>
In-Reply-To: <CAJrRHk5wwXTHq0G3vDjp_=MKB6COWBBGd2JG9+_r-q-3yU3jrQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Barracuda-Connect: UNKNOWN[172.16.0.147]
X-Barracuda-Start-Time: 1411446717
X-Barracuda-URL: http://10.10.111.112:8000/cgi-mod/mark.cgi
X-Barracuda-BRTS-Status: 1
X-Virus-Scanned: by bsmtpd at planar.com
X-Barracuda-Bayes: INNOCENT GLOBAL 0.0000 1.0000 -2.0210
X-Barracuda-Spam-Score: -2.02
X-Barracuda-Spam-Status: No,
	SCORE=-2.02 using per-user scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=HTML_MESSAGE
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.9776
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
	0.00 HTML_MESSAGE           BODY: HTML included in message
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 23 Sep 2014 04:32:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_0BCF42B3E5354126A211041FBD780946planarcom_"

--_000_0BCF42B3E5354126A211041FBD780946planarcom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIGZvciB0aGUgcmVzcG9uc2UgYnV0IEknbSBub3Qgc3VyZSB0aGF0IEkgdW5kZXJzdGFu
ZC4NCldoZXJlIGRvZXMgdGhpcyBzdHVmZiBnbz8gSW4gYSBQYWNrYWdlZ3JvdXAgZmlsZS4NCg0K
SSB0cmllZCBhZGRpbmcgc2ltcGxlMS1zdGF0aWNkZXYgdG8gSU1BR0VfSU5TVEFMTCBhbmQgSSBn
ZXQgYW4gZXJyb3IgdGhhdCBpdCBkb2Vzbid0IGV4aXN0Lg0KDQpDYW4geW91IHBvaW50IG1lIGF0
IGFuIGV4YW1wbGU/DQoNCk1hdHQgUy4NClNlbnQgZnJvbSBteSBwb2NrZXQNCg0KT24gU2VwIDIy
LCAyMDE0LCBhdCA3OjUyIFBNLCBKb3NlcGggQW5kcmV3IGRlIGxhIFBlw7FhIDxqZGVsYXBlbmFA
bGV4bWFyay5jb208bWFpbHRvOmpkZWxhcGVuYUBsZXhtYXJrLmNvbT4+IHdyb3RlOg0KDQpHb29k
IGRheSBNYXR0LA0KDQpZb3UgbmVlZCB0byBleHBsaWNpdGx5IFJERVBFTkRTIHlvdXItdW5pdC1z
dGF0aWNkZXYgYW5kIHlvdXItdW5pdCBpbiB5b3VyIGltYWdlJ3MgcGFja2FnZWdyb3VwLiBBc3N1
bWluZywgeW91ciBGSUxFU18ke1BOfS1zdGF0aWNkZXYgaXMgeW91ciAuYSBhbmQgRklMRVNfJHtQ
Tn0gY29udGFpbnMgeW91ciBoZWFkZXJzLg0KDQpUaGFua3MsDQpKb3NlcGgNCg0KT24gVHVlLCBT
ZXAgMjMsIDIwMTQgYXQgOTo1NyBBTSwgTWF0dCBTY2h1Y2ttYW5uIDxNYXR0LlNjaHVja21hbm5A
cGxhbmFyLmNvbTxtYWlsdG86TWF0dC5TY2h1Y2ttYW5uQHBsYW5hci5jb20+PiB3cm90ZToNCkkn
dmUgZ290IGEgY3VzdG9tIGltYWdlIGFuZCAyIGN1c3RvbSByZWNpcGVzIGJvdGggdmVyeSBzaW1w
bGUgbGlicmFyaWVzIHRoYXQgdXNlIGNtYWtlLg0KSSBpbmNsdWRlZCB0aGUgbGlicmFyaWVzIGlu
dG8gbXkgaW1hZ2UgYnkgYWRkaW5nDQpFWFRSQV9JTUFHRURFUEVORFMgKz0gInNpbXBsZTEiDQpF
WFRSQV9JTUFHRURFUEVORFMgKz0gInNpbXBsZTIiDQpUbyBteSBpbWFnZSByZWNpcGUuDQoNCldo
ZW4gSSBidWlsZCBteSBpbWFnZSAoaS5lLiBiaXRiYWtlIGN1c3RvbS1pbWFnZSApIEkgY2FuIHNl
ZSB0aGF0IHRoZSBsaWJyYXJ5IGhlYWRlciBmaWxlcyBhbmQgLmEgZmlsZXMgYXJlIHBsYWNlZCBp
biB0aGUgY29ycmVjdCBwbGFjZSBpbiB0aGUgc3lzcm9vdCBkaXJlY3RvcnkuDQoNCkhvd2V2ZXIg
d2hlbiBJIHRyeSB0byBjcmVhdGUgYW4gc2RrIChpLmUuIGJpdGJha2UgY3VzdG9tLWltYWdlIC1j
IHBvcHVsYXRlX3NkaykgYW5kIHRoZW4gaW5zdGFsbCB0aGUgU0RLIHRoZSBoZWFkZXJzIGFuZCAu
YSBmaWxlcyBhcmUgbm93aGVyZSB0byBiZSBmb3VuZCBpbiB0aGUgaW5zdGFsbGVkIHN5c3Jvb3Qu
DQoNCldoYXQgYW0gSSBtaXNzaW5nPw0KDQpUaGFua3MsDQpNYXR0IFMuDQoNCi0tDQpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXw0KeW9jdG8gbWFpbGluZyBs
aXN0DQp5b2N0b0B5b2N0b3Byb2plY3Qub3JnPG1haWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3Jn
Pg0KaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQoNCg==

--_000_0BCF42B3E5354126A211041FBD780946planarcom_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: base64

PGh0bWw+PGhlYWQ+PG1ldGEgaHR0cC1lcXVpdj0iY29udGVudC10eXBlIiBjb250ZW50PSJ0ZXh0
L2h0bWw7IGNoYXJzZXQ9dXRmLTgiPjwvaGVhZD48Ym9keSBkaXI9ImF1dG8iPjxkaXY+VGhhbmtz
IGZvciB0aGUgcmVzcG9uc2UgYnV0IEknbSBub3Qgc3VyZSB0aGF0IEkgdW5kZXJzdGFuZC4mbmJz
cDs8L2Rpdj48ZGl2PldoZXJlIGRvZXMgdGhpcyBzdHVmZiBnbz8gSW4gYSBQYWNrYWdlZ3JvdXAg
ZmlsZS4mbmJzcDs8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkkgdHJpZWQgYWRkaW5nIHNpbXBs
ZTEtc3RhdGljZGV2IHRvIElNQUdFX0lOU1RBTEwgYW5kIEkgZ2V0IGFuIGVycm9yIHRoYXQgaXQg
ZG9lc24ndCBleGlzdC4mbmJzcDs8L2Rpdj48ZGl2Pjxicj48L2Rpdj48ZGl2PkNhbiB5b3UgcG9p
bnQgbWUgYXQgYW4gZXhhbXBsZT88YnI+PGJyPjxkaXY+TWF0dCBTLiZuYnNwOzwvZGl2PlNlbnQg
ZnJvbSBteSBwb2NrZXQ8L2Rpdj48ZGl2Pjxicj5PbiBTZXAgMjIsIDIwMTQsIGF0IDc6NTIgUE0s
IEpvc2VwaCBBbmRyZXcgZGUgbGEgUGXDsWEgJmx0OzxhIGhyZWY9Im1haWx0bzpqZGVsYXBlbmFA
bGV4bWFyay5jb20iPmpkZWxhcGVuYUBsZXhtYXJrLmNvbTwvYT4mZ3Q7IHdyb3RlOjxicj48YnI+
PC9kaXY+PGJsb2NrcXVvdGUgdHlwZT0iY2l0ZSI+PGRpdj48ZGl2IGRpcj0ibHRyIj48ZGl2Pkdv
b2QgZGF5IE1hdHQsPC9kaXY+PGRpdj48YnI+PC9kaXY+WW91IG5lZWQgdG8gZXhwbGljaXRseSBS
REVQRU5EUyB5b3VyLXVuaXQtc3RhdGljZGV2IGFuZCB5b3VyLXVuaXQgaW4geW91ciBpbWFnZSdz
IHBhY2thZ2Vncm91cC4gQXNzdW1pbmcsIHlvdXIgRklMRVNfJHtQTn0tc3RhdGljZGV2IGlzIHlv
dXIgLmEgYW5kIEZJTEVTXyR7UE59IGNvbnRhaW5zIHlvdXIgaGVhZGVycy48ZGl2Pjxicj48L2Rp
dj48ZGl2PlRoYW5rcyw8L2Rpdj48ZGl2Pkpvc2VwaDwvZGl2PjwvZGl2PjxkaXYgY2xhc3M9Imdt
YWlsX2V4dHJhIj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPk9uIFR1ZSwgU2VwIDIzLCAy
MDE0IGF0IDk6NTcgQU0sIE1hdHQgU2NodWNrbWFubiA8c3BhbiBkaXI9Imx0ciI+Jmx0OzxhIGhy
ZWY9Im1haWx0bzpNYXR0LlNjaHVja21hbm5AcGxhbmFyLmNvbSIgdGFyZ2V0PSJfYmxhbmsiPk1h
dHQuU2NodWNrbWFubkBwbGFuYXIuY29tPC9hPiZndDs8L3NwYW4+IHdyb3RlOjxicj48YmxvY2tx
dW90ZSBjbGFzcz0iZ21haWxfcXVvdGUiIHN0eWxlPSJtYXJnaW46MCAwIDAgLjhleDtib3JkZXIt
bGVmdDoxcHggI2NjYyBzb2xpZDtwYWRkaW5nLWxlZnQ6MWV4Ij5JJ3ZlIGdvdCBhIGN1c3RvbSBp
bWFnZSBhbmQgMiBjdXN0b20gcmVjaXBlcyBib3RoIHZlcnkgc2ltcGxlIGxpYnJhcmllcyB0aGF0
IHVzZSBjbWFrZS48YnI+DQpJIGluY2x1ZGVkIHRoZSBsaWJyYXJpZXMgaW50byBteSBpbWFnZSBi
eSBhZGRpbmc8YnI+DQpFWFRSQV9JTUFHRURFUEVORFMgKz0gInNpbXBsZTEiPGJyPg0KRVhUUkFf
SU1BR0VERVBFTkRTICs9ICJzaW1wbGUyIjxicj4NClRvIG15IGltYWdlIHJlY2lwZS48YnI+DQo8
YnI+DQpXaGVuIEkgYnVpbGQgbXkgaW1hZ2UgKGkuZS4gYml0YmFrZSBjdXN0b20taW1hZ2UgKSBJ
IGNhbiBzZWUgdGhhdCB0aGUgbGlicmFyeSBoZWFkZXIgZmlsZXMgYW5kIC5hIGZpbGVzIGFyZSBw
bGFjZWQgaW4gdGhlIGNvcnJlY3QgcGxhY2UgaW4gdGhlIHN5c3Jvb3QgZGlyZWN0b3J5Ljxicj4N
Cjxicj4NCkhvd2V2ZXIgd2hlbiBJIHRyeSB0byBjcmVhdGUgYW4gc2RrIChpLmUuIGJpdGJha2Ug
Y3VzdG9tLWltYWdlIC1jIHBvcHVsYXRlX3NkaykgYW5kIHRoZW4gaW5zdGFsbCB0aGUgU0RLIHRo
ZSBoZWFkZXJzIGFuZCAuYSBmaWxlcyBhcmUgbm93aGVyZSB0byBiZSBmb3VuZCBpbiB0aGUgaW5z
dGFsbGVkIHN5c3Jvb3QuPGJyPg0KPGJyPg0KV2hhdCBhbSBJIG1pc3Npbmc/PGJyPg0KPGJyPg0K
VGhhbmtzLDxicj4NCk1hdHQgUy48YnI+DQo8c3BhbiBjbGFzcz0iSE9FblpiIj48Zm9udCBjb2xv
cj0iIzg4ODg4OCI+PGJyPg0KLS08YnI+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXzxicj4NCnlvY3RvIG1haWxpbmcgbGlzdDxicj4NCjxhIGhyZWY9Im1h
aWx0bzp5b2N0b0B5b2N0b3Byb2plY3Qub3JnIj55b2N0b0B5b2N0b3Byb2plY3Qub3JnPC9hPjxi
cj4NCjxhIGhyZWY9Imh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5mby95b2N0
byIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0Lm9yZy9saXN0aW5m
by95b2N0bzwvYT48YnI+DQo8L2ZvbnQ+PC9zcGFuPjwvYmxvY2txdW90ZT48L2Rpdj48YnI+PC9k
aXY+DQo8L2Rpdj48L2Jsb2NrcXVvdGU+PC9ib2R5PjwvaHRtbD4=

--_000_0BCF42B3E5354126A211041FBD780946planarcom_--
