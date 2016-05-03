Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D89A9E00D41; Tue,  3 May 2016 02:41:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [185.38.180.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp-out10.electric.net (smtp-out10.electric.net
	[185.38.180.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98052E00CD2
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 02:41:44 -0700 (PDT)
Received: from 1axWpq-0007im-Ta by out10c.electric.net with emc1-ok (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1axWpq-0007jg-UN; Tue, 03 May 2016 02:41:42 -0700
Received: by emcmailer; Tue, 03 May 2016 02:41:42 -0700
Received: from [192.36.1.72] (helo=mx-3.enea.com)
	by out10c.electric.net with esmtps (TLSv1:AES128-SHA:128) (Exim 4.87)
	(envelope-from <Adrian.Dudau@enea.com>)
	id 1axWpq-0007im-Ta; Tue, 03 May 2016 02:41:42 -0700
Received: from SESTOEX09.enea.se ([fe80::94d8:372f:210c:b4da]) by
	SESTOEX08.enea.se ([fe80::1c3:4003:dc47:23c0%11]) with mapi id
	14.03.0294.000; Tue, 3 May 2016 11:41:42 +0200
From: Adrian Dudau <Adrian.Dudau@enea.com>
To: "sanzi.voicu@yahoo.com" <sanzi.voicu@yahoo.com>
Thread-Topic: [meta-cgl][PATCH] CGL Requirements Template Parser first draft
Thread-Index: AQHRosswrnCn9KXGLUqvfLEvgLXhcZ+m2PWA
Date: Tue, 3 May 2016 09:41:40 +0000
Message-ID: <1462268519.3297.15.camel@sestows129.enea.se>
References: <1462012161-17330-1-git-send-email-sanzi.voicu@yahoo.com>
	<1462012161-17330-2-git-send-email-sanzi.voicu@yahoo.com>
In-Reply-To: <1462012161-17330-2-git-send-email-sanzi.voicu@yahoo.com>
Accept-Language: en-US, sv-SE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.141.157]
MIME-Version: 1.0
X-Outbound-IP: 192.36.1.72
X-Env-From: Adrian.Dudau@enea.com
X-PolicySMART: 6551647
X-Virus-Status: Scanned by VirusSMART (c)
X-Virus-Status: Scanned by VirusSMART (s)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-cgl][PATCH] CGL Requirements Template Parser first draft
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
X-List-Received-Date: Tue, 03 May 2016 09:41:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <C8927298FC378A4AAF745E829274E540@local>
Content-Transfer-Encoding: base64

T24gbMO2ciwgMjAxNi0wNC0zMCBhdCAxMzoyOSArMDMwMCwgU2FuemlhbmEuVm9pY3Ugd3JvdGU6
DQo+IEZyb206IFNhbnppYW5hIFZvaWN1IDxzYW56aS52b2ljdUB5YWhvby5jb20+DQo+IA0KPiBU
aGUgc2NyaXB0IGNyZWF0ZXMgdGhyZWUgYXJyYXlzIGZvciBlYWNoIHR5cGUgb2YgcmVxdWlyZW1l
bnQsIGJhc2VkIG9uDQo+IGEgdGVtcGxhdGUuIFRoZSBhcnJheXMgYXJlIG9yZGVyZWQgZm9yIGEg
aGlnaGx5IGNvc3R1bWlzYWJsZSBzZWFyY2guDQo+IFRoaXMgc2NyaXB0IGlzIHRoZSBmaXJzdCBj
b21wb25lbnQgb2YgYSBjYWxjdWxhdG9yL2F1dG9tYXRpYyB0ZW1wbGF0ZQ0KPiBwYXJzZXIgYW5k
IHVwZGF0ZXIgdG9vbC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFNhbnppYW5hIFZvaWN1IDxzYW56
aS52b2ljdUB5YWhvby5jb20+DQo+IC0tLQ0KPiAgKnNuaXAqDQoNCkhpIFNhbnppYW5hLA0KDQpD
YW4geW91IHBsZWFzZSBzZW5kIGEgY292ZXIgbGV0dGVyIGZpcnN0IHdpdGggd2hhdCB5b3UgeW91
IGFyZSB0cnlpbmcgdG8NCmFjaGlldmUgYW5kIGhvdyAtIHNvbWV0aGluZyBsaWtlIGEgZGVzaWdu
IHByb3Bvc2FsLiBBcyBpdCBpcyByaWdodCBub3cgSQ0KZmluZCBpdCBoYXJkIHRvIHJldmlldyB0
aGlzIHBhdGNoIHdpdGhvdXQga25vd2luZyB3aGF0IHRoZSBmaW5hbCBhaW0gaXMuDQoNCkFsc28g
dGhlIHBhdGNoIHRvIG5lZWRzIGEgYmV0dGVyIHN1YmplY3QgdG8gYmUgbWVyZ2VkIGludG8gdGhl
IGxheWVyDQpzdGFuZGFsb25lIDopDQoNCmJlc3QgcmVnYXJkcywNCi0tQWRyaWFuDQo=

