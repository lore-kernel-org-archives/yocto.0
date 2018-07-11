Return-Path: <aaron.chun.yew.chan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 678A7E006B4; Tue, 10 Jul 2018 19:24:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1509CE0080A
	for <yocto@yoctoproject.org>; Tue, 10 Jul 2018 19:24:30 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2018 19:24:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,336,1526367600"; d="scan'208";a="70349869"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2018 19:24:29 -0700
Received: from pgsmsx103.gar.corp.intel.com ([169.254.2.4]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.73]) with mapi id
	14.03.0319.002; Wed, 11 Jul 2018 10:23:54 +0800
From: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Thread-Topic: [PATCH] [yocto-autobuilder] init: Fix the import module
	yoctoabb & yocto_console_view
Thread-Index: AQHUF/2Sn7dPTp+TgEut+88gdg1JC6SHnTQAgACnAJuAAD0JAIAAv0DQ
Date: Wed, 11 Jul 2018 02:23:53 +0000
Message-ID: <AA9B40170ABA1047B45E714CB2B866B7068FFB22@PGSMSX103.gar.corp.intel.com>
References: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>
	,<0c6dfc5e97f24bd90f6b3ff573a637eb2ec12915.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068FF63C@PGSMSX103.gar.corp.intel.com>
	<e93986c0d370dee8918b51d0743907ef8c34ce28.camel@linuxfoundation.org>
In-Reply-To: <e93986c0d370dee8918b51d0743907ef8c34ce28.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYTkwNjhkMWItZmY1OS00ZTdmLWIxMjEtYTUxZmY4OWEwOGZmIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoibjhERmpRNEdEQlwvOWlNSjY5c1JBb1g1Mjhld3ZKTWtRdUU2VTlGM0RrNWpVQXlIdFRWa3JmRVAxUzJyak4zYWEifQ==
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
X-List-Received-Date: Wed, 11 Jul 2018 02:24:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KSXQgYXBwZWFycyB0aGF0IHlvdXIgdXNpbmcgdmlydHVhbGVudiAoc3dp
dGNoIHRvIHB5dGhvbjMpIHRvIHN0YXJ0dXAgeW91ciBidWlsZGJvdCBwcm9jZXNzZXMgYW5kIG5v
dCB1c2luZyB0aGUgZGVmYXVsdCBweXRob24gZnJvbSBob3N0IGRpc3RyaWJ1dGlvbi4NCkkgYW0g
YXdhcmUgdGhhdCB5b3UgY2FuIHN3aXRjaCBpbnRlcnByZXRlciB0byBweXRob24yLzMgaW4gdmly
dHVhbGVudi4gU2hvdWxkbuKAmXQgd2UgaGFuZGxlIHRoZXNlIGZvciBib3RoIGluIGV2ZW50cyB1
c2VycyB1c2VzDQp0aGUgZGVmYXVsdCBob3N0IGRpc3RyaWJ1dGlvbiBhcyBkZWZhdWx0IHB5dGhv
bjIgYW5kIHN0aWxsIG1ha2UgaXQgd29ya2VkPyBXaGF0IGlzIHRoZSBiZXN0IHByYWN0aWNlcyBo
ZXJlIGFuZCBzaG91bGQgYWxsIHRoZSBidWlsZGJvdC13b3JrZXJzIHN0YXJ0IGluDQp2aXJ0dWFs
ZW52IGRlZmF1bHRzIHRvIHB5dGhvbjMgYXMgd2VsbCA/IEkgYW0gbGl0dGxlIGxvc3QgcmlnaHQg
aGVyZSwgcGxlYXNlIGFkdmlzZS4NCg0KQ2hlZXJzLA0KQWFyb24NCg0KVHJ5IHVzaW5nIHZpcnR1
YWxlbnY6DQoNCiQgcHl0aG9uIC0tdmVyc2lvbg0KUHl0aG9uIDIuNy4xNXJjMQ0KDQokIHZpcnR1
YWxlbnYgLXAgcHl0aG9uMyB0ZXN0DQpBbHJlYWR5IHVzaW5nIGludGVycHJldGVyIC91c3IvYmlu
L3B5dGhvbjMgVXNpbmcgYmFzZSBwcmVmaXggJy91c3InDQpOZXcgcHl0aG9uIGV4ZWN1dGFibGUg
aW4gL21lZGlhL2J1aWxkMS90ZXN0L2Jpbi9weXRob24zIEFsc28gY3JlYXRpbmcgZXhlY3V0YWJs
ZSBpbiAvbWVkaWEvYnVpbGQxL3Rlc3QvYmluL3B5dGhvbiBJbnN0YWxsaW5nIHNldHVwdG9vbHMs
IHBrZ19yZXNvdXJjZXMsIHBpcCwgd2hlZWwuLi5kb25lLg0KDQokIC4gLi90ZXN0L2Jpbi9hY3Rp
dmF0ZQ0KDQoodGVzdCkgcmljaGFyZEBkYXg6L21lZGlhL2J1aWxkMS8kIHB5dGhvbiAtLXZlcnNp
b24gUHl0aG9uIDMuNi41DQoNCg0KSWYgeW91IHN0YXJ0IGJ1aWxkYm90IHdpdGhpbiB0aGUgdmly
dHVhbGVudiwgeW91IHNob3VsZCBzZWUgaXQgdXNpbmcgcHl0aG9uMy4NCg0KQ2hlZXJzLA0KDQpS
aWNoYXJkDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiByaWNoYXJkLnB1cmRp
ZUBsaW51eGZvdW5kYXRpb24ub3JnIFttYWlsdG86cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0
aW9uLm9yZ10gDQpTZW50OiBXZWRuZXNkYXksIEp1bHkgMTEsIDIwMTggNjoxNyBBTQ0KVG86IENo
YW4sIEFhcm9uIENodW4gWWV3IDxhYXJvbi5jaHVuLnlldy5jaGFuQGludGVsLmNvbT47IHlvY3Rv
QHlvY3RvcHJvamVjdC5vcmc7IEJ1cnRvbiwgUm9zcyA8cm9zcy5idXJ0b25AaW50ZWwuY29tPjsg
RWdnbGV0b24sIFBhdWwgPHBhdWwuZWdnbGV0b25AaW50ZWwuY29tPg0KU3ViamVjdDogUmU6IFtQ
QVRDSF0gW3lvY3RvLWF1dG9idWlsZGVyXSBpbml0OiBGaXggdGhlIGltcG9ydCBtb2R1bGUgeW9j
dG9hYmIgJiB5b2N0b19jb25zb2xlX3ZpZXcNCg0KT24gVHVlLCAyMDE4LTA3LTEwIGF0IDEwOjQ3
ICswMDAwLCBDaGFuLCBBYXJvbiBDaHVuIFlldyB3cm90ZToNCj4gW1JpY2hhcmRdIEkgdGhpbmsg
dGhpcyBtZWFucyB5b3UncmUgdXNpbmcgcHl0aG9uMiBhbmQgd2UgcmVhbGx5IHNob3VsZA0KPiBi
ZSB1c2luZw0KPiAgICAgICAgICAgICAgICAgcHl0aG9uMyBhcyBJIGRvbid0IHdhbnQgdG8gc3Vw
cG9ydCBib3RoLi4uDQo+IA0KPiBbUmVwbHldIFRoaXMgZXJyb3IvYnVnIHdhcyBmb3VuZCBkdXJp
bmcgYnVpbGRib3Qgc3RhcnR1cCBtZWFuaW5nIHRoaXMgDQo+IGlzIG91dCBvZiBteSBjb250cm9s
Lg0KDQpObywgaXQgaXMgbm90IG91dCBvZiB5b3VyIGNvbnRyb2wuDQoNCj4gICAgICAgICAgICAg
TWF5YmUgeW91IGhhdmUgYSBmaXggZm9yIHRoaXMsIG90aGVyd2lzZSBJIGRvIHN1Z2dlc3QgdG8g
DQo+IGFkZCBpbiBfX2luaXRfXy5weSBpbiBwbGFjZXMgd2hlcmUgd2UgbmVlZCB0byBzb3VyY2Ug
Y3VzdG9tIG1vZHVsZXMuDQo+IA0KPiAkIGJ1aWxkYm90IHN0YXJ0IH4veW9jdG8tY29udHJvbGxl
cg0KPiAkIGNhdCAtbiAxMDAgfi95b2N0by1jb250cm9sbGVyL3R3aXN0ZC5sb2cNCg0KVHJ5IHVz
aW5nIHZpcnR1YWxlbnY6DQoNCiQgcHl0aG9uIC0tdmVyc2lvbg0KUHl0aG9uIDIuNy4xNXJjMQ0K
DQokIHZpcnR1YWxlbnYgLXAgcHl0aG9uMyB0ZXN0DQpBbHJlYWR5IHVzaW5nIGludGVycHJldGVy
IC91c3IvYmluL3B5dGhvbjMgVXNpbmcgYmFzZSBwcmVmaXggJy91c3InDQpOZXcgcHl0aG9uIGV4
ZWN1dGFibGUgaW4gL21lZGlhL2J1aWxkMS90ZXN0L2Jpbi9weXRob24zIEFsc28gY3JlYXRpbmcg
ZXhlY3V0YWJsZSBpbiAvbWVkaWEvYnVpbGQxL3Rlc3QvYmluL3B5dGhvbiBJbnN0YWxsaW5nIHNl
dHVwdG9vbHMsIHBrZ19yZXNvdXJjZXMsIHBpcCwgd2hlZWwuLi5kb25lLg0KDQokIC4gLi90ZXN0
L2Jpbi9hY3RpdmF0ZQ0KDQoodGVzdCkgcmljaGFyZEBkYXg6L21lZGlhL2J1aWxkMS8kIHB5dGhv
biAtLXZlcnNpb24gUHl0aG9uIDMuNi41DQoNCg0KSWYgeW91IHN0YXJ0IGJ1aWxkYm90IHdpdGhp
biB0aGUgdmlydHVhbGVudiwgeW91IHNob3VsZCBzZWUgaXQgdXNpbmcgcHl0aG9uMy4NCg0KQ2hl
ZXJzLA0KDQpSaWNoYXJkDQo=

