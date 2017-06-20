Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BA59E00BE2; Tue, 20 Jun 2017 00:22:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68AF3E00B05
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 00:22:31 -0700 (PDT)
Received: from DEBEMAIL002.kostal.int ([10.20.2.182]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v5K7MQ8H030970 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL); Tue, 20 
	Jun 2017 09:22:26 +0200
Received: from DEBEMAIL002.kostal.int (10.20.2.182) by DEBEMAIL002.kostal.int 
	(10.20.2.182) with Microsoft SMTP Server (TLS) id 15.0.1263.5; Tue, 
	20 Jun 2017 09:22:25 +0200
Received: from DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb]) by 
	DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb%12]) with mapi id 
	15.00.1263.000; Tue, 20 Jun 2017 09:22:25 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] useradd and one sysroot per recipe in pyro
Thread-Index: AdLlJnSBihQf76a3STmRnV9EIq92wP//472A//cFfRA=
Date: Tue, 20 Jun 2017 07:22:25 +0000
Message-ID: <1957093d47c24322ad7754eeb77420bc@DEBEMAIL002.kostal.int>
References: <8af3780d8f5d43e988f8161ec69d5965@DEBEMAIL002.kostal.int> 
	<CAGbd71R8RRyuS+mDnfUsjriShpju=9VFrDNtxfWFWevs5YMhfQ@mail.gmail.com>
In-Reply-To: <CAGbd71R8RRyuS+mDnfUsjriShpju=9VFrDNtxfWFWevs5YMhfQ@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
X-OriginalId: qfv5K7MQ8H030970
Subject: Re: useradd and one sysroot per recipe in pyro
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
X-List-Received-Date: Tue, 20 Jun 2017 07:22:34 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTGF1cmVudCwNCg0KPiBJbiBweXJvIHRoZSBjcmVhdGlvbiBvZiB1c2VycyBhbmQgZ3JvdXAg
KHVzaW5nIHRoZSB1c2VyYWRkIGNsYXNzKSBpcyBkb25lIGR1cmluZw0KPiB0aGUgcGFja2FnZSBw
cmUtaW5zdGFsbGF0aW9uLg0KPiANCj4gU28gbXkgYmVzdCBndWVzcyBpcyB0aGF0IHlvdSBjb3Vs
ZCBtb3ZlIHRoZSBvd25lci9ncm91cCBjaGFuZ2UgaW4gdGhlIHBhY2thZ2UNCj4gcG9zdC1pbnN0
YWxsYXRpb24gYXMgZm9sbG93czoNCg0KdGhhbmtzIGZvciB5b3VyIGFkdmljZS4gQ3VycmVudGx5
IGl0IHNlZW1zIC0gYXMgc3RhdGVkIGJ5IE1heGltIEIuIEpvaG4gLSBkbyBiZSBhIGJ1ZyAvIHJl
Z3Jlc3Npb24gaW4gcHlybywgc28gYWRkaW5nIHNoYWRvdy1uYXRpdmUgdG8gdGhlIGRlcGVuZGVu
Y2llcyBoZWxwcy4gQmVzaWRlcyB0aGF0IEkgdGhpbmsgdGhhdCBpdCBpcyBva2F5IHRvIGFjY2Vz
cyB0aGUgdXNlciBpbiB0aGUgaW5zdGFsbCB0YXNrLCBzaW5jZSBpdCBzaG91bGQgYWxyZWFkeSBi
ZSBhdmFpbGFibGUgdGhlbi4NCg0KUmVnYXJkcw0KQ2hyaXN0aWFuDQoNCktPU1RBTCBJbmR1c3Ry
aWUgRWxla3RyaWsgR21iSCAtIFNpdHogTMO8ZGVuc2NoZWlkLCBSZWdpc3RlcmdlcmljaHQgSXNl
cmxvaG4gSFJCIDM5MjQgLSBVU3QtSWQtTnIuL1ZhdCBOby46IERFIDgxMzc0MjE3MA0KUG9zdGFu
c2NocmlmdDogQW4gZGVyIEJlbGxtZXJlaSAxMCwgRC01ODUxMyBMw7xkZW5zY2hlaWQgKiBUZWxl
Zm9uOiArNDkgIDIzNTEgMTYtMCAqIFRlbGVmYXg6ICs0OSAgMjM1MSAxNi0yNDAwDQpXZXJrc2Fu
c2NocmlmdDogTGFuZ2UgRWNrIDExLCBELTU4MDk5IEhhZ2VuICogVGVsLiArNDkgMjMzMSA4MDQw
LTYwMSAqIEZheCArNDkgMjMzMSA4MDQwLTYwMg0KR2VzY2jDpGZ0c2bDvGhydW5nOiBBeGVsIFpp
bW1lcm1hbm4sIERpcGwuLUluZy4gTWFyd2luIEtpbnpsLCBEaXBsLi1PZWMuIEFuZHJlYXMgS29z
dGFsDQoNCg==

