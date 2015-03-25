Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53CA3E008EC; Wed, 25 Mar 2015 06:34:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [135.11.29.13 listed in list.dnswl.org]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Wed, 25 Mar 2015 06:34:34 PDT
Received: from p-us1-iereast-outbound.us1.avaya.com
	(p-us1-iereast-outbound.us1.avaya.com [135.11.29.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED90E008CE
	for <yocto@yoctoproject.org>; Wed, 25 Mar 2015 06:34:34 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AngFAC64ElXGmAcV/2dsb2JhbABcgmQigSwEgw7HdAIcgTVMAQEBAQEBfYQUAQEBAQIBEhERRQULAgEIDQgBAgICBh0DAgICMBQBEAEBBA4FCBqIBQgBpCaKTJofAQEBAQEBAQEBAQEBAQEBAQEBAQEBF4EhigCERRYbB4JoL4EWBZBQiwqFfoQchTCDRyKCAhyBUG+BRH8BAQE
X-IronPort-AV: E=Sophos;i="5.11,465,1422939600"; d="scan'208";a="112665532"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by p-us1-iereast-outbound.us1.avaya.com with ESMTP;
	25 Mar 2015 09:33:27 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC04.global.avaya.com) ([135.11.85.15])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	25 Mar 2015 09:33:27 -0400
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC04.global.avaya.com ([135.11.85.15]) with mapi id
	14.03.0174.001; Wed, 25 Mar 2015 09:33:26 -0400
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] populate_sysroot and sstate question
Thread-Index: AdBmf347nCMmxSZUS4q3p2qvUDMa3gAntgqAAAf2POA=
Date: Wed, 25 Mar 2015 13:33:26 +0000
Message-ID: <30C2D590D16A5C46ADFE652191037798538ED580@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE652191037798538ED24E@AZ-US1EXMB03.global.avaya.com>
	<1427288919.14020.41.camel@linuxfoundation.org>
In-Reply-To: <1427288919.14020.41.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: populate_sysroot and sstate question
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
X-List-Received-Date: Wed, 25 Mar 2015 13:34:38 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

PiBGcm9tOiBSaWNoYXJkIFB1cmRpZSBbbWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4Zm91bmRh
dGlvbi5vcmddDQo+IFNlbnQ6IE1hcmNoIDI1LCAyMDE1IDk6MDkgQU0NCj4gDQo+IE9uIFR1ZSwg
MjAxNS0wMy0yNCBhdCAyMjoyMiArMDAwMCwgVnVpbGxlLCBNYXJ0aW4gKE1hcnRpbikgd3JvdGU6
DQo+ID4gSXMgdGhlcmUgYSBiZXR0ZXIgd2F5IHRvIHN1cHByZXNzIHBvcHVsYXRlX3N5c3Jvb3Qg
d2l0aG91dCBicmVha2luZw0KPiA+IHNldHNjZW5lPw0KPiANCj4gRGVmaW5lIGFuIGVtcHR5IHN5
c3Jvb3Rfc3RhZ2VfZGlycyBmdW5jdGlvbi4NCj4gDQoNClRoYW5rcyBSaWNoYXJkLCBidXQgSSBz
dGlsbCBnZXQgdGhlIHNhbWUgZXJyb3IsIHNlZSBiZWxvdy4gUGVyaGFwcyBJIG1pc3VuZGVyc3Rv
b2QNCnlvdXIgaW5zdHJ1Y3Rpb25zLg0KDQpJIGRpZCBhIGNsZWFuc3N0YXRlIG9uIHRoZSBwYWNr
YWdlLCBhZGRlZCB0aGUgZW1wdHkgZnVuY3Rpb24gdG8gdGhlIHJlY2lwZQ0KDQoJZG9fcG9wdWxh
dGVfc3lzcm9vdCAoKSB7DQoJfQ0KDQoJc3lzcm9vdF9zdGFnZV9kaXJzKCkgew0KCX0NCg0KV2hl
biBJIGRlbGV0ZSBwb2t5L2J1aWxkL3RtcCBhbmQgcnVuIHRoZSBidWlsZCBhZ2FpbiwgSSBnZXQg
dGhpcyBlcnJvciBkdXJpbmcNCnNldHNjZW5lIHByb2Nlc3Npbmc6DQoNCglFUlJPUjogRXJyb3Ig
ZXhlY3V0aW5nIGEgcHl0aG9uIGZ1bmN0aW9uIGluIC9ob21lL3BsYXRmb3JtL1dvcmtzcGFjZS9k
c3BnYmFzZS9wb2t5Ly4uL21ldGEtQXZheWEvcmVjaXBlcy1hdmF5YS9hdmF5YS1mb250cy1iZGYv
YXZheWEtZm9udHMtYmRmXzEuMC4wLmJiOg0KDQoJVGhlIHN0YWNrIHRyYWNlIG9mIHB5dGhvbiBj
YWxscyB0aGF0IHJlc3VsdGVkIGluIHRoaXMgZXhjZXB0aW9uL2ZhaWx1cmUgd2FzOg0KCUZpbGU6
ICdkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lJywgbGluZW5vOiA2LCBmdW5jdGlvbjogPG1v
ZHVsZT4NCgkgICAgIDAwMDI6ZGVmIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmUoZCk6DQoJ
ICAgICAwMDAzOiAgICBzc3RhdGVfc2V0c2NlbmUoZCkNCgkgICAgIDAwMDQ6DQoJICAgICAwMDA1
Og0KCSAqKiogMDAwNjpkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lKGQpDQoJICAgICAwMDA3
Og0KCUZpbGU6ICdkb19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lJywgbGluZW5vOiAzLCBmdW5j
dGlvbjogZG9fcG9wdWxhdGVfc3lzcm9vdF9zZXRzY2VuZQ0KCSAgICAgMDAwMToNCgkgICAgIDAw
MDI6ZGVmIGRvX3BvcHVsYXRlX3N5c3Jvb3Rfc2V0c2NlbmUoZCk6DQoJICoqKiAwMDAzOiAgICBz
c3RhdGVfc2V0c2NlbmUoZCkNCgkgICAgIDAwMDQ6DQoJICAgICAwMDA1Og0KCSAgICAgMDAwNjpk
b19wb3B1bGF0ZV9zeXNyb290X3NldHNjZW5lKGQpDQoJICAgICAwMDA3Og0KCUZpbGU6ICdzc3Rh
dGUuYmJjbGFzcycsIGxpbmVubzogMywgZnVuY3Rpb246IHNzdGF0ZV9zZXRzY2VuZQ0KCSAgICAg
MDAwMTpkZWYgc3N0YXRlX3NldHNjZW5lKGQpOg0KCSAgICAgMDAwMjogICAgc2hhcmVkX3N0YXRl
ID0gc3N0YXRlX3N0YXRlX2Zyb212YXJzKGQpDQoJICoqKiAwMDAzOiAgICBhY2NlbGVyYXRlID0g
c3N0YXRlX2luc3RhbGxwa2coc2hhcmVkX3N0YXRlLCBkKQ0KCSAgICAgMDAwNDogICAgaWYgbm90
IGFjY2VsZXJhdGU6DQoJICAgICAwMDA1OiAgICAgICAgcmFpc2UgYmIuYnVpbGQuRnVuY0ZhaWxl
ZCgiTm8gc3VpdGFibGUgc3RhZ2luZyBwYWNrYWdlIGZvdW5kIikNCgkgICAgIDAwMDY6DQoJRmls
ZTogJ3NzdGF0ZS5iYmNsYXNzJywgbGluZW5vOiA2OCwgZnVuY3Rpb246IHNzdGF0ZV9pbnN0YWxs
cGtnDQoJICAgICAwMDY0OiAgICAgICAgb3MucmVtb3ZlKGZpeG1lZm4pDQoJICAgICAwMDY1Og0K
CSAgICAgMDA2NjogICAgZm9yIHN0YXRlIGluIHNzWydkaXJzJ106DQoJICAgICAwMDY3OiAgICAg
ICAgcHJlcGRpcihzdGF0ZVsxXSkNCgkgKioqIDAwNjg6ICAgICAgICBvcy5yZW5hbWUoc3N0YXRl
aW5zdCArIHN0YXRlWzBdLCBzdGF0ZVsxXSkNCgkgICAgIDAwNjk6ICAgIHNzdGF0ZV9pbnN0YWxs
KHNzLCBkKQ0KCSAgICAgMDA3MDoNCgkgICAgIDAwNzE6ICAgIGZvciBwbGFpbiBpbiBzc1sncGxh
aW5kaXJzJ106DQoJICAgICAwMDcyOiAgICAgICAgd29ya2RpciA9IGQuZ2V0VmFyKCdXT1JLRElS
JywgVHJ1ZSkNCglFeGNlcHRpb246IE9TRXJyb3I6IFtFcnJubyAyXSBObyBzdWNoIGZpbGUgb3Ig
ZGlyZWN0b3J5DQoNCk1WCQ0K

