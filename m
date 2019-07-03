Return-Path: <btv1==087564a510a==cgong@trijicon.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 780EBE00C43; Wed,  3 Jul 2019 06:32:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,URI_NOVOWEL
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 URI_NOVOWEL URI: URI hostname has long non-vowel sequence
X-Greylist: delayed 688 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Jul 2019 06:32:21 PDT
Received: from WI11BFS.trijicon.com
	(50-253-248-89-static.hfc.comcastbusiness.net [50.253.248.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 723A8E00736
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 06:32:21 -0700 (PDT)
X-ASG-Debug-ID: 1562160051-1008250bbaa7d550001-yzSStA
Received: from WI102WEP.trijicon1.com (wi102wep.trijicon1.com [10.0.0.99]) by
	WI11BFS.trijicon.com with ESMTP id xZ21SYnatl60f22s;
	Wed, 03 Jul 2019 09:20:51 -0400 (EDT)
X-Barracuda-Envelope-From: cgong@trijicon.com
Received: from WI102WEP.trijicon1.com (10.0.0.99) by WI102WEP.trijicon1.com
	(10.0.0.99) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1034.26;
	Wed, 3 Jul 2019 09:20:44 -0400
Received: from WI102WEP.trijicon1.com ([::1]) by WI102WEP.trijicon1.com
	([::1]) with mapi id 15.01.1034.033; Wed, 3 Jul 2019 09:20:44 -0400
From: Chad Gong <cgong@trijicon.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Poky build errors, help is needed
X-ASG-Orig-Subj: RE: [yocto] Poky build errors, help is needed
Thread-Index: AdUw0o8Uu4i3AJLIQi68br/66gdncgAJRcUAAAOnaZAAAY0NAAACjpXwAAQCa4AAHohW4A==
Date: Wed, 3 Jul 2019 13:20:44 +0000
Message-ID: <9d65e7b2c1794d4ab7618a9a769b4bf9@trijicon.com>
References: <2566dd81001d4f4891db00ffb2419a21@trijicon.com>
	<CAJTo0LZcAF+F5SF1ifK+wB5ZzZjDXhZHn0a-Q+7wA1FRqJRDgQ@mail.gmail.com>
	<9b82304b0ac6483b9de2eedbc6a961f7@trijicon.com>
	<CAJTo0LbvoJNCAncDpSk-yUQSN=x3Oge4R-bQJV-6MzYTKHmvwg@mail.gmail.com>
	<1f5813cde712457c8eae5ce20a5e90e2@trijicon.com>
	<CAJTo0LYApGjZXeQFP+gr_55cXaKwOGahnW4Zp83M8Hj+pSNOZQ@mail.gmail.com>
In-Reply-To: <CAJTo0LYApGjZXeQFP+gr_55cXaKwOGahnW4Zp83M8Hj+pSNOZQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.0.10.224]
x-exclaimer-md-config: 74e93b01-4765-4777-9f3e-4485472e4022
MIME-Version: 1.0
X-Barracuda-Connect: wi102wep.trijicon1.com[10.0.0.99]
X-Barracuda-Start-Time: 1562160051
X-Barracuda-URL: https://wi11bsf.trijicon1.com:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at trijicon.com
X-Barracuda-Scan-Msg-Size: 2701
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
	QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.73457
	Rule breakdown below
	pts rule name              description
	---- ----------------------
	--------------------------------------------------
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 03 Jul 2019 13:32:23 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

Um9zcywNCg0KVGhlIGNoZWNrc3VtIG9mIHRoZSBncmFiYmVkIGZpbGUgbWF0Y2hlcyBvbmUgaW4g
dGhlIHJlY2lwZSwgYnV0IHRoZSBjaGVja3N1bSBvZiB0aGUgZmlsZSBkb3dubG9hZGVkIGR1cmlu
ZyBidWlsZCBkb2Vzbid0IG1hdGNoLg0KDQpJIHJlLXJhbiBhbm90aGVyIGJ1aWxkIG9mIHRoZSBz
YW1lIGNvbmZpZ3VyYXRpb24uIFRoaXMgdGltZSB0aGVyZSBpcyBubyBmZXRjaCBlcnJvciBmb3Ig
dGhlIGZpbGUgdGhhdCBmYWlsZWQgbGFzdCB0aW1lLiBJIGxvb2tzIGVhY2ggdGltZSBJIGJ1aWxk
LCBJIGdldCBkaWZmZXJlbnQgZmV0Y2ggZXJyb3IgcmFuZG9tbHkuIEJ1dCB0aGlzIHRpbWUgdGhl
IGZhaWxlZCBVUkwgaXMgZ2l0IHNob3duIGJlbG93LCBhbmQgSSBjYW5ub3QgZXZlbiB1c2Ugd2dl
dCB0byBkb3dubG9hZCBpdC4NCg0KRVJST1I6IGxpYm5zbDItbmF0aXZlLTEuMi4wK2dpdEFVVE9J
TkMrMzdjNWZmZTMwMy1yMCBkb19mZXRjaDogRmV0Y2hlciBmYWlsdXJlIGZvciBVUkw6ICdnaXQ6
Ly9naXRodWIuY29tL3Roa3VrdWsvbGlibnNsJy4gVW5hYmxlIHRvIGZldGNoIFVSTCBmcm9tIGFu
eSBzb3VyY2UuDQoNCiQgd2dldCBnaXQ6Ly9naXRodWIuY29tL3Roa3VrdWsvbGlibnNsDQpnaXQ6
Ly9naXRodWIuY29tL3Roa3VrdWsvbGlibnNsOiBVbnN1cHBvcnRlZCBzY2hlbWUg4oCYZ2l04oCZ
Lg0KDQoNClJlZ2FyZHMsDQpDaGFkDQoNCg0KDQpDaGFkIEdvbmcNCkVsZWN0cmljYWwgRW5naW5l
ZXINCg0KVHJpamljb24sIEluYy4NCg0KDQogfCBQLk8uIEJveCA5MzAwNTkNCldpeG9tLCBNaWNo
aWdhbiA0ODM5MyBVUw0KY2dvbmdAdHJpamljb24uY29tIHwNCg0KLS0tLS1PcmlnaW5hbCBNZXNz
YWdlLS0tLS0NCkZyb206IEJ1cnRvbiwgUm9zcyA8cm9zcy5idXJ0b25AaW50ZWwuY29tPg0KU2Vu
dDogVHVlc2RheSwgSnVseSAwMiwgMjAxOSAyOjM4IFBNDQpUbzogQ2hhZCBHb25nIDxjZ29uZ0B0
cmlqaWNvbi5jb20+DQpDYzogWW9jdG8tbWFpbGluZy1saXN0IDx5b2N0b0B5b2N0b3Byb2plY3Qu
b3JnPg0KU3ViamVjdDogUmU6IFt5b2N0b10gUG9reSBidWlsZCBlcnJvcnMsIGhlbHAgaXMgbmVl
ZGVkDQoNCkNBVVRJT046IFRoaXMgZW1haWwgb3JpZ2luYXRlZCBmcm9tIG91dHNpZGUgeW91ciBv
cmdhbml6YXRpb24uIEV4ZXJjaXNlIGNhdXRpb24gd2hlbiBvcGVuaW5nIGF0dGFjaG1lbnRzIG9y
IGNsaWNraW5nIGxpbmtzLCBlc3BlY2lhbGx5IGZyb20gdW5rbm93biBzZW5kZXJzLg0KDQpPbiBU
dWUsIDIgSnVsIDIwMTkgYXQgMTk6MjIsIENoYWQgR29uZyA8Y2dvbmdAdHJpamljb24uY29tPiB3
cm90ZToNCj4gVGhhbmsgeW91IGZvciB0aGUgYWR2aWNlLiBXaGljaCBmb2xkZXIgY29udGFpbnMg
dGhlIHJlY2lwZT8gV2hpY2ggbWV0aG9kIGlzIHVzZWQgdG8gY2FsY3VsYXRlIHRoZSBjaGVja3N1
bT8NCg0KUGxlYXNlIHJlbWVtYmVyIHRvIGVuc3VyZSB0aGUgbGlzdCBpcyBjb3BpZWQuDQoNCiQg
ZmluZCAuIC1uYW1lIG9wa2ctdXRpbCpiYg0KLi9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvb3BrZy11
dGlscy9odHRwczovL2xpbmtwcm90ZWN0LmN1ZGFzdmMuY29tL3VybD9hPWh0dHBzJTNhJTJmJTJm
b3BrZy11dGlsc18wLjQuMS5iYiZjPUUsMSxwZ29ZR1RDY0FVOHdYSzBCNm5PNGtmYVEwREhvUjFX
bTMzaWJjY0JtaVhoYkxpOVlsM3ZkcFJNRHFDaTZzdS0zRFRWZjhuTzN3aDRsVjhjcUNLc3I2OWRH
NlNxckxMUjJjX0JPVHM1RDR2VSwmdHlwbz0xDQoNCllvdSdyZSBvbiBhIGRpZmZlcmVudCB2ZXJz
aW9uIHNvIHRoZSBmaWxlbmFtZSB3b24ndCBiZSB0aGUgc2FtZS4gIEZvciB0aGUgTUQ1IHN1bSwg
dXNlIG1kNXN1bS4NCg0KUm9zcw0KDQoNCg0KVGhpcyBlbGVjdHJvbmljIG1lc3NhZ2UgY29udGFp
bnMgaW5mb3JtYXRpb24gdGhhdCBtYXkgYmUNCmNvbmZpZGVudGlhbCwgcHJpdmlsZWdlZCwgcHJv
cHJpZXRhcnksIG9yIHN1YmplY3QgdG8gdGhlIGV4cG9ydCBjb250cm9sIGxhd3Mgb2YNCnRoZSBV
bml0ZWQgU3RhdGVzLCBpbmNsdWRpbmcgdGhlIEFybXMgRXhwb3J0IENvbnRyb2wgQWN0ICgyMiBV
LlMuQy4gMjU3MSBldA0Kc2VxLiksIHRoZSBJbnRlcm5hdGlvbmFsIFRyYWZmaWMgaW4gQXJtcyBS
ZWd1bGF0aW9ucyAgKDIyIEMuRi5SLiBQYXJ0IDEyMA0KZXQgc2VxLiksIGFuZC9vciB0aGUgRXhw
b3J0IEFkbWluaXN0cmF0aW9uIFJlZ3VsYXRpb25zICgxNSBDLkYuUi4gUGFydCA3MzAgZXQNCnNl
cS4pLiAgVGhpcyBpbmZvcm1hdGlvbiBpcyBpbnRlbmRlZCBmb3IgdGhlIHVzZSBvZiB0aGUgYWRk
cmVzc2VlIG9ubHksIGFuZA0KaWYgeW91IGFyZSBub3QgdGhlIGludGVuZGVkIHJlY2lwaWVudCwg
YW55IGRpc2Nsb3N1cmUsIGNvcHlpbmcsIGRpc3RyaWJ1dGlvbiwNCnByaW50aW5nLCBvciBhbnkg
b3RoZXIgdXNlIG9mLCB0aGUgY29udGVudHMgb2YgdGhpcyBtZXNzYWdlIGlzIHByb2hpYml0ZWQu
DQpBbnkgdHJhbnNmZXIsIHJldHJhbnNmZXIsIG9yIGRpc2Nsb3N1cmUgb2YgdGhpcyBkYXRhIHRv
IGEgRm9yZWlnbiBQZXJzb24gd2l0aG91dA0KVW5pdGVkIFN0YXRlcyBHb3Zlcm5tZW50IGF1dGhv
cml6YXRpb24gaXMgYWxzbyBwcm9oaWJpdGVkLiAgSWYgeW91IGhhdmUNCnJlY2VpdmVkIHRoaXMg
bWVzc2FnZSBpbiBlcnJvciwgcGxlYXNlIG5vdGlmeSB0aGUgc2VuZGVyIGFuZCBkZXN0cm95IHRo
ZQ0Kb3JpZ2luYWwgbWVzc2FnZS4NCg==

