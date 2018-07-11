Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CA06E00E0A; Wed, 11 Jul 2018 01:36:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FE8CE004F6
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 01:36:58 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Jul 2018 01:36:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,337,1526367600"; d="scan'208";a="71374447"
Received: from pgsmsx108.gar.corp.intel.com ([10.221.44.103])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jul 2018 01:36:48 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	PGSMSX108.gar.corp.intel.com ([169.254.8.127]) with mapi id
	14.03.0319.002; Wed, 11 Jul 2018 16:33:47 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: [PATCH] [yocto-autobuilder] init: Fix the import module
	yoctoabb & yocto_console_view
Thread-Index: AQHUF/2Sn7dPTp+TgEut+88gdg1JC6SHnTQAgACnAJuAAD0JAIAAv0DQ///WRgCAAJrq0A==
Date: Wed, 11 Jul 2018 08:33:47 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068FFC4F@PGSMSX103.gar.corp.intel.com>
References: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>
	,<0c6dfc5e97f24bd90f6b3ff573a637eb2ec12915.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068FF63C@PGSMSX103.gar.corp.intel.com>
	<e93986c0d370dee8918b51d0743907ef8c34ce28.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068FFB22@PGSMSX103.gar.corp.intel.com>
	<a4bbc2555cb61b8c3b6aea33fcc2e31b874f0b7f.camel@linuxfoundation.org>
In-Reply-To: <a4bbc2555cb61b8c3b6aea33fcc2e31b874f0b7f.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZWU1MzhhMzctNzg4Ni00YmI2LTkwN2MtMDk5Zjk5NDJlYTA5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiaFhoT05tbkdaWHNCSWV6MW1tXC9Rb2R3KzBSNEhvdXZ4Ryt0VjRuRDd6djhxRER5SVZZOTZLMW9XWHVVUWU2UkkifQ==
x-originating-ip: [172.30.20.205]
MIME-Version: 1.0
Subject: Re: [PATCH] [yocto-autobuilder] init: Fix the import module yoctoabb & yocto_console_view
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
X-List-Received-Date: Wed, 11 Jul 2018 08:36:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KVGhhbmtzIGZvciB0aGUgd2VsbCBjcmFmdGVkIGV4cGxhbmF0aW9uLCBh
bmQgYWZ0ZXIgdGFsa2luZyB0byBQYXVsIEkgZ290IGEgY2xlYXJlciBwaWN0dXJlIG9uIHdoaWNo
IGRpcmVjdGlvbiB3ZSBzaG91bGQgYmUgaGVhZGluZyBhbmQgd2Ugc2hvdWxkIGFsaWduDQphbmQg
d29yayB0b3dhcmRzIHB5dGhvbjMuIE1heWJlIEkgd2FzIG5vdCBhd2FyZSwgbXkgYmFkLg0KDQpD
aGVlcnMsDQpBYXJvbg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogcmljaGFy
ZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZyBbbWFpbHRvOnJpY2hhcmQucHVyZGllQGxpbnV4
Zm91bmRhdGlvbi5vcmddIA0KU2VudDogV2VkbmVzZGF5LCBKdWx5IDExLCAyMDE4IDM6MTIgUE0N
ClRvOiBDaGFuLCBBYXJvbiBDaHVuIFlldyA8YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+
OyB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBCdXJ0b24sIFJvc3MgPHJvc3MuYnVydG9uQGludGVs
LmNvbT47IEVnZ2xldG9uLCBQYXVsIDxwYXVsLmVnZ2xldG9uQGludGVsLmNvbT4NClN1YmplY3Q6
IFJlOiBbUEFUQ0hdIFt5b2N0by1hdXRvYnVpbGRlcl0gaW5pdDogRml4IHRoZSBpbXBvcnQgbW9k
dWxlIHlvY3RvYWJiICYgeW9jdG9fY29uc29sZV92aWV3DQoNCk9uIFdlZCwgMjAxOC0wNy0xMSBh
dCAwMjoyMyArMDAwMCwgQ2hhbiwgQWFyb24gQ2h1biBZZXcgd3JvdGU6DQo+IEl0IGFwcGVhcnMg
dGhhdCB5b3VyIHVzaW5nIHZpcnR1YWxlbnYgKHN3aXRjaCB0byBweXRob24zKSB0byBzdGFydHVw
IA0KPiB5b3VyIGJ1aWxkYm90IHByb2Nlc3NlcyBhbmQgbm90IHVzaW5nIHRoZSBkZWZhdWx0IHB5
dGhvbiBmcm9tIGhvc3QgDQo+IGRpc3RyaWJ1dGlvbi4NCj4gSSBhbSBhd2FyZSB0aGF0IHlvdSBj
YW4gc3dpdGNoIGludGVycHJldGVyIHRvIHB5dGhvbjIvMyBpbiB2aXJ0dWFsZW52LiANCj4gU2hv
dWxkbuKAmXQgd2UgaGFuZGxlIHRoZXNlIGZvciBib3RoIGluIGV2ZW50cyB1c2VycyB1c2VzIHRo
ZSBkZWZhdWx0IA0KPiBob3N0IGRpc3RyaWJ1dGlvbiBhcyBkZWZhdWx0IHB5dGhvbjIgYW5kIHN0
aWxsIG1ha2UgaXQgd29ya2VkPyBXaGF0IGlzIA0KPiB0aGUgYmVzdCBwcmFjdGljZXMgaGVyZSBh
bmQgc2hvdWxkIGFsbCB0aGUgYnVpbGRib3QtIHdvcmtlcnMgc3RhcnQgaW4gDQo+IHZpcnR1YWxl
bnYgZGVmYXVsdHMgdG8gcHl0aG9uMyBhcyB3ZWxsID8gSSBhbSBsaXR0bGUgbG9zdCByaWdodCBo
ZXJlLCANCj4gcGxlYXNlIGFkdmlzZS4NCg0KVGhlcmUgYXJlIG11bHRpcGxlIHdheXMgdG8gYWNo
aWV2ZSB0aGlzLCB5b3UgY2FuIG1ha2UgL3Vzci9iaW4vcHl0aG9uIHBvaW50IGF0IHB5dGhvbjMg
dG9vLCBvciBzaW1wbHkgbm90IGluc3RhbGwgcHl0aG9uMiBvbiB0aGUgY29udHJvbGxlci4NClVz
aW5nIHZpcnR1YWxlbnYgd2FzIGp1c3QgYSBzaW1wbGUgd2F5IHRvIGlsbHVzdHJhdGUgaG93IHlv
dSBjYW4gdXNlIGl0Lg0KDQpNeSB3b3JyeSBhYm91dCB0cnlpbmcgdG8gc3VwcG9ydCBib3RoIHB5
dGhvbiB2ZXJzaW9ucyBpcyB0aGF0IGFzIHlvdSd2ZSBmb3VuZCBvdXQsIHRoZXJlIGFyZSBwcm9i
bGVtcyB0aGF0IGNhbiBvY2N1ciBpbiBvbmUgdGhhdCBkb24ndCBvY2N1ciBpbiB0aGUgb3RoZXIs
IHdoaWNoIHRoZW4gbWVhbnMgdHdpY2UgYXMgbXVjaCB0ZXN0aW5nLiBTaW5jZSBweXRob24yIGlz
IGFuIG9mZmljaWFsICJkZWFkIGVuZCIgYW5kIGFzIGEgcHJvamVjdCB3ZSdyZSB0cnlpbmcgaGFy
ZCB0byB1c2UgcHl0aG9uMyBldmVyeXdoZXJlLCBpdCBkb2Vzbid0IHNlZW0gdG8gbWFrZSBzZW5z
ZSB0byB0cnkgYW5kIHN1cHBvcnQgcHl0aG9uMiBvbiBuZXcgY29kZSBzdWNoIGFzIHRoZSBhdXRv
YnVpbGRlcj8NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQo=

