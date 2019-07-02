Return-Path: <btv1==086c9cf8106==cgong@trijicon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6411E00D74; Tue,  2 Jul 2019 08:25:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from WI11BFS.trijicon.com
	(50-253-248-89-static.hfc.comcastbusiness.net [50.253.248.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA59AE00C02
	for <yocto@yoctoproject.org>; Tue,  2 Jul 2019 08:25:15 -0700 (PDT)
X-ASG-Debug-ID: 1562081114-1008250bbaa46b40001-yzSStA
Received: from WI102WEP.trijicon1.com (wi102wep.trijicon1.com [10.0.0.99]) by
	WI11BFS.trijicon.com with ESMTP id p38bBhVNTyjtFmhX;
	Tue, 02 Jul 2019 11:25:14 -0400 (EDT)
X-Barracuda-Envelope-From: cgong@trijicon.com
Received: from WI102WEP.trijicon1.com (10.0.0.99) by WI102WEP.trijicon1.com
	(10.0.0.99) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1034.26;
	Tue, 2 Jul 2019 11:25:07 -0400
Received: from WI102WEP.trijicon1.com ([::1]) by WI102WEP.trijicon1.com
	([::1]) with mapi id 15.01.1034.033; Tue, 2 Jul 2019 11:25:07 -0400
From: Chad Gong <cgong@trijicon.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Poky build errors, help is needed
X-ASG-Orig-Subj: RE: [yocto] Poky build errors, help is needed
Thread-Index: AdUw0o8Uu4i3AJLIQi68br/66gdncgAJRcUAAAOnaZA=
Date: Tue, 2 Jul 2019 15:25:07 +0000
Message-ID: <9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
	<CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.224]
x-exclaimer-md-config: 74e93b01-4765-4777-9f3e-4485472e4022
MIME-Version: 1.0
X-Barracuda-Connect: wi102wep.trijicon1.com[10.0.0.99]
X-Barracuda-Start-Time: 1562081114
X-Barracuda-URL: https://wi11bsf.trijicon1.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at trijicon.com
X-Barracuda-Scan-Msg-Size: 3421
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.73416
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky build errors, help is needed
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
X-List-Received-Date: Tue, 02 Jul 2019 15:25:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9zcywgR2FicmllbGUsDQoNCkkgc3dpdGNoZWQgdG8gYnJhbmNoIDIuNy4gU3RpbGwgaGF2ZSB0
aGUgc2FtZSBwcm9ibGVtIGFzIHNob3duIGJlbG93Lg0KDQpFUlJPUjogb3BrZy11dGlscy0wLjQu
MC1yMCBkb19mZXRjaDogQ2hlY2tzdW0gZmFpbHVyZSBmZXRjaGluZyBodHRwOi8vZ2l0LnlvY3Rv
cHJvamVjdC5vcmcvY2dpdC9jZ2l0LmNnaS9vcGtnLXV0aWxzL3NuYXBzaG90L29wa2ctdXRpbHMt
MC40LjAudGFyLmd6DQoNCg0KV2hlbiB1c2luZyB3Z2V0LCB0aGUgZmlsZXMgY2FuIGJlIGRvd25s
b2FkZWQgYXMgc2hvd24gYmVsb3cuDQoNCiQgd2dldCBodHRwOi8vZ2l0LnlvY3RvcHJvamVjdC5v
cmcvY2dpdC9jZ2l0LmNnaS9vcGtnLXV0aWxzL3NuYXBzaG90L29wa2ctdXRpbHMtMC40LjAudGFy
Lmd6DQotLTIwMTktMDctMDEgMjA6MTE6MDEtLSAgaHR0cDovL2dpdC55b2N0b3Byb2plY3Qub3Jn
L2NnaXQvY2dpdC5jZ2kvb3BrZy11dGlscy9zbmFwc2hvdC9vcGtnLXV0aWxzLTAuNC4wLnRhci5n
eg0KUmVzb2x2aW5nIGdpdC55b2N0b3Byb2plY3Qub3JnIChnaXQueW9jdG9wcm9qZWN0Lm9yZyku
Li4gMTQwLjIxMS4xNjkuNTYNCkNvbm5lY3RpbmcgdG8gZ2l0LnlvY3RvcHJvamVjdC5vcmcgKGdp
dC55b2N0b3Byb2plY3Qub3JnKXwxNDAuMjExLjE2OS41Nnw6ODAuLi4gY29ubmVjdGVkLg0KSFRU
UCByZXF1ZXN0IHNlbnQsIGF3YWl0aW5nIHJlc3BvbnNlLi4uIDIwMCBPSw0KTGVuZ3RoOiB1bnNw
ZWNpZmllZCBbYXBwbGljYXRpb24veC1nemlwXQ0KU2F2aW5nIHRvOiDigJhvcGtnLXV0aWxzLTAu
NC4wLnRhci5neuKAmQ0KDQpvcGtnLXV0aWxzLTAuNC4wLnRhci5neiAgICAgICAgICAgWyA8PT4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIF0gIDI5LjgySyAgLS0u
LUtCL3MgICAgaW4gMC4wMDVzDQoNCjIwMTktMDctMDEgMjA6MTE6MDIgKDUuOTcgTUIvcykgLSDi
gJhvcGtnLXV0aWxzLTAuNC4wLnRhci5neuKAmSBzYXZlZCBbMzA1MzZdDQoNCg0KDQoNCg0KQ2hh
ZCBHb25nDQpFbGVjdHJpY2FsIEVuZ2luZWVyDQoNClRyaWppY29uLCBJbmMuDQoNCg0KIHwgUC5P
LiBCb3ggOTMwMDU5DQpXaXhvbSwgTWljaGlnYW4gNDgzOTMgVVMNCmNnb25nQHRyaWppY29uLmNv
bSB8DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBCdXJ0b24sIFJvc3MgPHJv
c3MuYnVydG9uQGludGVsLmNvbT4NClNlbnQ6IFR1ZXNkYXksIEp1bHkgMDIsIDIwMTkgOTowMCBB
TQ0KVG86IENoYWQgR29uZyA8Y2dvbmdAdHJpamljb24uY29tPg0KQ2M6IHlvY3RvQHlvY3RvcHJv
amVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIFBva3kgYnVpbGQgZXJyb3JzLCBoZWxwIGlz
IG5lZWRlZA0KDQpDQVVUSU9OOiBUaGlzIGVtYWlsIG9yaWdpbmF0ZWQgZnJvbSBvdXRzaWRlIHlv
dXIgb3JnYW5pemF0aW9uLiBFeGVyY2lzZSBjYXV0aW9uIHdoZW4gb3BlbmluZyBhdHRhY2htZW50
cyBvciBjbGlja2luZyBsaW5rcywgZXNwZWNpYWxseSBmcm9tIHVua25vd24gc2VuZGVycy4NCg0K
T24gVHVlLCAyIEp1bCAyMDE5IGF0IDEzOjUzLCBDaGFkIEdvbmcgPGNnb25nQHRyaWppY29uLmNv
bT4gd3JvdGU6DQo+IFdBUk5JTkc6IG00LW5hdGl2ZS0xLjQuMTgtcjAgZG9fZmV0Y2g6IEZhaWxl
ZCB0byBmZXRjaCBVUkwNCj4gaHR0cDovL2Z0cC5nbnUub3JnL2dudS9tNC9tNC0xLjQuMTgudGFy
Lmd6LCBhdHRlbXB0aW5nIE1JUlJPUlMgaWYNCj4gYXZhaWxhYmxlDQoNCiQgd2dldCBodHRwOi8v
ZnRwLmdudS5vcmcvZ251L200L200LTEuNC4xOC50YXIuZ3oNClVSTCB0cmFuc2Zvcm1lZCB0byBI
VFRQUyBkdWUgdG8gYW4gSFNUUyBwb2xpY3kNCi0tMjAxOS0wNy0wMiAxMzo1OTozNC0tICBodHRw
czovL2Z0cC5nbnUub3JnL2dudS9tNC9tNC0xLjQuMTgudGFyLmd6DQpSZXNvbHZpbmcgZnRwLmdu
dS5vcmcgKGZ0cC5nbnUub3JnKS4uLiAyMDkuNTEuMTg4LjIwLCAyMDAxOjQ3MDoxNDI6Mzo6YiBD
b25uZWN0aW5nIHRvIGZ0cC5nbnUub3JnIChmdHAuZ251Lm9yZyl8MjA5LjUxLjE4OC4yMHw6NDQz
Li4uIGNvbm5lY3RlZC4NCkhUVFAgcmVxdWVzdCBzZW50LCBhd2FpdGluZyByZXNwb25zZS4uLiAy
MDAgT0sNCkxlbmd0aDogMjAwNjY0MyAoMS45TSkgW2FwcGxpY2F0aW9uL3gtZ3ppcF0gU2F2aW5n
IHRvOiDigJhtNC0xLjQuMTgudGFyLmd64oCZDQoNCm00LTEuNC4xOC50YXIuZ3oNCjEwMCVbPT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT5dDQogIDEuOTFNICAxLjM4TUIvcyAgICBpbiAxLjRzDQoNCjIw
MTktMDctMDIgMTM6NTk6MzYgKDEuMzggTUIvcykgLSDigJhtNC0xLjQuMTgudGFyLmd64oCZIHNh
dmVkIFsyMDA2NjQzLzIwMDY2NDNdDQoNCkxvb2tzIGxpa2UgeW91J3ZlIGdvdCBuZXR3b3JraW5n
IHByb2JsZW1zIGluc2lkZSB0aGUgdmlydHVhbCBtYWNoaW5lLg0KVmVyaWZ5IHVzaW5nIHdnZXQg
dGhhdCB5b3UgY2FuIGRvd25sb2FkIHRob3NlIGZpbGVzIHN1Y2Nlc3NmdWxseS4NCg0KUm9zcw0K
DQoNCg0KVGhpcyBlbGVjdHJvbmljIG1lc3NhZ2UgY29udGFpbnMgaW5mb3JtYXRpb24gdGhhdCBt
YXkgYmUNCmNvbmZpZGVudGlhbCwgcHJpdmlsZWdlZCwgcHJvcHJpZXRhcnksIG9yIHN1YmplY3Qg
dG8gdGhlIGV4cG9ydCBjb250cm9sIGxhd3Mgb2YNCnRoZSBVbml0ZWQgU3RhdGVzLCBpbmNsdWRp
bmcgdGhlIEFybXMgRXhwb3J0IENvbnRyb2wgQWN0ICgyMiBVLlMuQy4gMjU3MSBldA0Kc2VxLiks
IHRoZSBJbnRlcm5hdGlvbmFsIFRyYWZmaWMgaW4gQXJtcyBSZWd1bGF0aW9ucyAgKDIyIEMuRi5S
LiBQYXJ0IDEyMA0KZXQgc2VxLiksIGFuZC9vciB0aGUgRXhwb3J0IEFkbWluaXN0cmF0aW9uIFJl
Z3VsYXRpb25zICgxNSBDLkYuUi4gUGFydCA3MzAgZXQNCnNlcS4pLiAgVGhpcyBpbmZvcm1hdGlv
biBpcyBpbnRlbmRlZCBmb3IgdGhlIHVzZSBvZiB0aGUgYWRkcmVzc2VlIG9ubHksIGFuZA0KaWYg
eW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwgYW55IGRpc2Nsb3N1cmUsIGNvcHlp
bmcsIGRpc3RyaWJ1dGlvbiwNCnByaW50aW5nLCBvciBhbnkgb3RoZXIgdXNlIG9mLCB0aGUgY29u
dGVudHMgb2YgdGhpcyBtZXNzYWdlIGlzIHByb2hpYml0ZWQuDQpBbnkgdHJhbnNmZXIsIHJldHJh
bnNmZXIsIG9yIGRpc2Nsb3N1cmUgb2YgdGhpcyBkYXRhIHRvIGEgRm9yZWlnbiBQZXJzb24gd2l0
aG91dA0KVW5pdGVkIFN0YXRlcyBHb3Zlcm5tZW50IGF1dGhvcml6YXRpb24gaXMgYWxzbyBwcm9o
aWJpdGVkLiAgSWYgeW91IGhhdmUNCnJlY2VpdmVkIHRoaXMgbWVzc2FnZSBpbiBlcnJvciwgcGxl
YXNlIG5vdGlmeSB0aGUgc2VuZGVyIGFuZCBkZXN0cm95IHRoZQ0Kb3JpZ2luYWwgbWVzc2FnZS4N
Cg==

