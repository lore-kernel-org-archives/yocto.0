Return-Path: <sangeeta.jain@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77040E00CEE; Wed,  3 Apr 2019 19:19:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75344E00798
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 19:19:25 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Apr 2019 19:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,306,1549958400"; d="scan'208";a="158054396"
Received: from kmsmsx153.gar.corp.intel.com ([172.21.73.88])
	by fmsmga002.fm.intel.com with ESMTP; 03 Apr 2019 19:19:22 -0700
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.159]) by
	KMSMSX153.gar.corp.intel.com ([169.254.5.245]) with mapi id
	14.03.0415.000; Thu, 4 Apr 2019 10:19:21 +0800
From: "Jain, Sangeeta" <sangeeta.jain@intel.com>
To: "richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"sjolley.yp.pm@gmail.com"
	<sjolley.yp.pm@gmail.com>, Yi Zhao <yi.zhao@windriver.com>
Thread-Topic: [yocto] QA notification for completed autobuilder build
	(yocto-2.6.2.rc3)
Thread-Index: AQHU6f6It859uoTB+U2vFSaCBaMy76YrQyKA
Date: Thu, 4 Apr 2019 02:19:20 +0000
Message-ID: <015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
In-Reply-To: <8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYWNlMDhhMzktNTlhNi00OWFmLTgzYTAtNjU0YjBhODE1Nzg1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiZFAyRUt1a3BQeG9kUzFiR2JzVTdsY1FlbE5qUXl6MzJQczI0N3oybGF5dzdpRlp2ZjArTHExUW50VUFYS2lYeiJ9
x-originating-ip: [172.30.20.206]
MIME-Version: 1.0
Cc: "akuster808@gmail.com" <akuster808@gmail.com>, "Chan, Aaron Chun
	Yew" <aaron.chun.yew.chan@intel.com>,
	"otavio@ossystems.com.br" <otavio@ossystems.com.br>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Thu, 04 Apr 2019 02:19:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUmljaGFyZCwNCg0KDQo+LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj5Gcm9tOiByaWNo
YXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5k
YXRpb24ub3JnPg0KPlNlbnQ6IFdlZG5lc2RheSwgMyBBcHJpbCwgMjAxOSA1OjIwIFBNDQo+VG86
IEphaW4sIFNhbmdlZXRhIDxzYW5nZWV0YS5qYWluQGludGVsLmNvbT47IFBva3kgQnVpbGQgVXNl
cg0KPjxwb2t5YnVpbGRAdWJ1bnR1MTYwNC10eS0xLnlvY3RvLmlvPjsgeW9jdG9AeW9jdG9wcm9q
ZWN0Lm9yZzsNCj5zam9sbGV5LnlwLnBtQGdtYWlsLmNvbTsgWWkgWmhhbyA8eWkuemhhb0B3aW5k
cml2ZXIuY29tPg0KPkNjOiBvdGF2aW9Ab3NzeXN0ZW1zLmNvbS5icjsgQ2hhbiwgQWFyb24gQ2h1
biBZZXcNCj48YWFyb24uY2h1bi55ZXcuY2hhbkBpbnRlbC5jb20+OyBha3VzdGVyODA4QGdtYWls
LmNvbTsgWWVvaCwgRWUgUGVuZw0KPjxlZS5wZW5nLnllb2hAaW50ZWwuY29tPjsgU2FuZ2FsLCBB
cG9vcnYgPGFwb29ydi5zYW5nYWxAaW50ZWwuY29tPg0KPlN1YmplY3Q6IFJlOiBbeW9jdG9dIFFB
IG5vdGlmaWNhdGlvbiBmb3IgY29tcGxldGVkIGF1dG9idWlsZGVyIGJ1aWxkICh5b2N0by0NCj4y
LjYuMi5yYzMpDQo+DQo+SGksDQo+DQo+VGhpcyBpcyBnb29kIGluZm9ybWF0aW9uIGFuZCBoZWxw
cyBhIGxvdCwgdGhhbmtzISBJIGhhZCBhIHF1ZXN0aW9uIGJlbG93Lg0KPg0KPk9uIFdlZCwgMjAx
OS0wNC0wMyBhdCAwODowNiArMDAwMCwgSmFpbiwgU2FuZ2VldGEgd3JvdGU6DQo+PiBJbnRlbCBh
bmQgV1IgWVAgUUEgaXMgbm93IHdvcmtpbmcgb24gUUEgZXhlY3V0aW9uIGZvciBZUCBidWlsZCAy
LjYuMg0KPj4gUkMzLiBXZSBhcmUgcGxhbm5pbmcgdG8gZXhlY3V0ZSBmb2xsb3dpbmcgdGVzdHMg
Zm9yIHRoaXMgY3ljbGU6DQo+Pg0KPj4gT0VRQS1NYW51YWwgdGVzdHMgZm9yIGZvbGxvd2luZyBt
b2R1bGVzOg0KPj4gMS4JU0RLDQo+PiAyLglFY2xpcHNlLXBsdWdpbg0KPj4gMy4JS2VybmVsDQo+
PiA0LglUb2FzdGVyDQo+PiA1LglCaXRiYWtlIChvZS1jb3JlKQ0KPj4gNi4JQnVpbGQtYXBwbGlh
bmNlDQo+PiA3LglDcm9wcw0KPj4gOC4JQ29tcGxpYW5jZS10ZXN0DQo+PiA5LglCc3AtaHcNCj4+
IDEwLglCc3AtcWVtdQ0KPj4NCj4+IFJ1bnRpbWUgYXV0byB0ZXN0IGZvciBmb2xsb3dpbmcgcGxh
dGZvcm1zOg0KPj4NCj4+IDEuCU1pbm5vd1R1cmJvIDMyYml0DQo+PiAyLglNaW5ub3dUdXJib3Qg
NjQgYml0DQo+PiAzLglOVUMgNw0KPj4gNC4JTlVDIDYNCj4+IDUuCUVkZ2Vyb3V0ZXINCj4+IDYu
CU1QQzgzMTVlLXJkYg0KPj4gNy4JQmVhZ2xlYm9uZQ0KPj4gOC4JUWVtdWFybQ0KPj4gOS4JUWVt
dWFybS02NA0KPj4gMTAuCVFlbXVwcGMNCj4+IDExLglRZW11bWlwcw0KPj4gMTIuCVFlbXVtaXBz
NjQNCj4NCj5JJ20gd29uZGVyaW5nIGlmIHRoZXJlIGlzIGFueSBkaWZmZXJlbmNlIGJldHdlZW4g
aXRlbXMgOC0xMiBoZXJlIGFuZCB0aGUgcnVudGltZQ0KPnRlc3Rpbmcgd2UgcnVuIG9uIHRoZSBw
dWJsaWMgYXV0b2J1aWxkZXI/IElzIHRoZXJlIHNvbWUgdGVzdGluZyB3ZSdyZSBtaXNzaW5nIG9u
DQo+dGhlIHB1YmxpYyBhdXRvYnVpbGRlcj8NCg0KV2Ugd2lsbCBiZSBydW5uaW5nIG9lLXNlbGZ0
ZXN0IGZvciBtYWNoaW5lcyA4LTEyLCB3aGljaCBpcyBtaXNzaW5nIGluIGF1dG9idWlsZGVyIHJl
c3VsdHMuDQoNCkFsc28sIEkgZG9uJ3Qgc2VlIGFueSBwdGVzdCByZXN1bHRzIGZvciAyLjYuMi5y
YzMgb24gcHVibGljIGF1dG9idWlsZGVyLiBEbyB5b3UgaGF2ZSBhbnkgcGxhbnMgdG8gcnVuIHRo
ZW0gYW5kIHNoYXJlIHRoZSByZXN1bHRzIG9uIGF1dG9idWlsZGVyPw0KDQoNCj4NCj5DaGVlcnMs
DQo+DQo+UmljaGFyZA0KPg0KDQpUaGFua3MgJiBSZWdhcmRzLA0KU2FuZ2VldGEgSmFpbg0K

