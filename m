Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76200E00BE2; Sun, 18 May 2014 22:34:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A71E00A13
	for <yocto@yoctoproject.org>; Sun, 18 May 2014 22:34:16 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 18 May 2014 22:34:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,865,1392192000"; d="scan'208";a="533974863"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 18 May 2014 22:34:15 -0700
Received: from orsmsx160.amr.corp.intel.com (10.22.226.43) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Sun, 18 May 2014 22:34:15 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.192]) by
	ORSMSX160.amr.corp.intel.com ([169.254.13.252]) with mapi id
	14.03.0123.003; Sun, 18 May 2014 22:34:15 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Chris Morgan <chmorgan@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Documentation improvements for gitsm:// fetcher
Thread-Index: AQHPcseAhz6n68E0Dk6SJ+uCHJ9joJtHYT1w
Date: Mon, 19 May 2014 05:34:14 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F98FD5@ORSMSX101.amr.corp.intel.com>
References: <CAAPegz3=+kmfS7DAY2MoFg0jxePeOSeay-4oFFVdB6b6x11xsw@mail.gmail.com>
In-Reply-To: <CAAPegz3=+kmfS7DAY2MoFg0jxePeOSeay-4oFFVdB6b6x11xsw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Documentation improvements for gitsm:// fetcher
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
X-List-Received-Date: Mon, 19 May 2014 05:34:18 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIA0KDQpUaGlzIHBhdGNoIGlzIG5vdCBjb21pbmcgYWNyb3NzIHRvIG1lIGludGFjdC4gIFRo
ZSBwcm9jZXNzIEkgdXNlIGZvciBwYXRjaGVzIGlzIHRvIHRha2UgdGhlIGF0dGFjaG1lbnQgZnJv
bSBteSBUaHVuZGVyYmlyZCBhY2NvdW50IGFuZCBzYXZlIGl0IGFzIGFuIC5FTUwgZmlsZS4gIFRo
ZW4sIEkgbWFpbCB0aGF0IC5FTUwgZmlsZSB0byBteSBMaW51eCBib3ggZ21haWwgYWNjb3VudC4g
IEZyb20gdGhlcmUgSSBwcm9jZXNzIHRoZSBwYXRjaCB1c2luZyB0aGUgJ3BhdGNoJyBjb21tYW5k
IGFzIG5vcm1hbC4gIEZvciBzb21lIHJlYXNvbiwgdGhlIC5FTUwgZmlsZSB3aGVuIGl0IGFycml2
ZXMgdG8gbXkgZ21haWwgYWNjb3VudCBoYXMgbG9uZyBsaW5lcyBvZiByYW5kb20gY2hhcmFjdGVy
cyAoZ2liYmVyaXNoKSB0aGF0IHRoZSBwYXRjaCBwcm9ncmFtIGlzIHVuYWJsZSB0byBkZWFsIHdp
dGguICBJIGFtIHVuc3VyZSBpZiBpdCBpcyBhIHByb2JsZW0gb24gbXkgZW5kIHdpdGggbXkgcHJv
Y2VzcyBvciB3aXRoIHRoZSBwYXRjaCBnZW5lcmF0aW9uLiANCg0KU2NvdHQNCg0KPi0tLS0tT3Jp
Z2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogeW9jdG8tYm91bmNlc0B5b2N0b3Byb2plY3Qub3Jn
IFttYWlsdG86eW9jdG8tDQo+Ym91bmNlc0B5b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYgT2Yg
Q2hyaXMgTW9yZ2FuDQo+U2VudDogU3VuZGF5LCBNYXkgMTgsIDIwMTQgMTE6MjkgQU0NCj5Ubzog
eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPlN1YmplY3Q6IFt5b2N0b10gW1BBVENIXSBEb2N1bWVu
dGF0aW9uIGltcHJvdmVtZW50cyBmb3IgZ2l0c206Ly8gZmV0Y2hlcg0KPg0KPlJvdWdoIHBhdGNo
IGZvciBkb2N1bWVudGF0aW9uIGltcHJvdmVtZW50cyBub3cgdGhhdCBJIGtub3cgaG93IGdpdHNt
DQo+c2hvdWxkIHdvcmsgYW5kIHRvIGhlbHAgb3RoZXJzIHRoYXQgbWlnaHQgYmUgY2F1Z2h0IGJ5
IHN3aXRjaGluZyBmcm9tIGdpdDovLw0KPnRvIGdpdHNtOi8vIFVSSXMuDQo+DQo+Q2hyaXMNCg==

