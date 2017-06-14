Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE65FE00B83; Wed, 14 Jun 2017 09:13:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 696F8E00B43
	for <yocto@yoctoproject.org>; Wed, 14 Jun 2017 09:13:32 -0700 (PDT)
Received: from DEBEMAIL001.kostal.int ([10.20.2.181]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v5EGD4K8000636 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL); Wed, 14 
	Jun 2017 18:13:04 +0200
Received: from DEBEMAIL002.kostal.int (10.20.2.182) by DEBEMAIL001.kostal.int 
	(10.20.2.181) with Microsoft SMTP Server (TLS) id 15.0.1263.5; Wed, 
	14 Jun 2017 18:13:04 +0200
Received: from DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb]) by 
	DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb%12]) with mapi id 
	15.00.1263.000; Wed, 14 Jun 2017 18:13:04 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "Maxin B. John" <maxin.john@intel.com>
Thread-Topic: [yocto] useradd and one sysroot per recipe in pyro
Thread-Index: AdLkX2KZGZ+uxj15QrG2mWY7ds6aFgAslx6AAAWA4mA=
Date: Wed, 14 Jun 2017 16:13:04 +0000
Message-ID: <273d47d96cf74bb98bb7b5c46693b0e2@DEBEMAIL002.kostal.int>
References: <c683cf9b78e04d5e912e0c0a8a0a59b4@DEBEMAIL002.kostal.int> 
	<20170614152552.GA18997@mbabyjoh-desk.ger.corp.intel.com>
In-Reply-To: <20170614152552.GA18997@mbabyjoh-desk.ger.corp.intel.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
X-OriginalId: qfv5EGD4K8000636
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 14 Jun 2017 16:13:37 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTWF4aW4sDQoNCj4gSGVyZSwgY291bGQgeW91IHRyeSB0byBidWlsZCBhZ2FpbiB3aXRoIGFu
IGFkZGl0aW9uYWwgREVQRU5ERU5DWSBvbiBzaGFkb3ctDQo+IG5hdGl2ZToNCj4gaWU6IGluc3Rl
YWQgb2YNCj4gPkRFUEVORFMgPSAicHVjay1iYXNlIg0KPiBERVBFTkRTID0gInB1Y2stYmFzZSBz
aGFkb3ctbmF0aXZlIg0KPiANCj4gVG8gYmUgc3VyZSwgcGxlYXNlIGNsZWFuc3N0YXRlIHRoZSBw
dWNrLWJhc2UgYW5kIHRlc3QgYmVmb3JlIGJ1aWxkLg0KDQpUaGFua3MhIEkgdHJpZWQgYXMgeW91
IHN1Z2dlc3RlZCAoY2xlYW5zc3RhdGUgYW5kIHRoZW4gYnVpbGQpIGFuZCB3aXRoIHNoYWRvdy1u
YXRpdmUgaXQgaXMgd29ya2luZyBub3cuDQogDQpEbyBJIGhhdmUgdG8gYWRkIHNoYWRvdy1uYXRp
dmUgaW4gYWxsIHRoZXNlIHJlY2lwZXMgb3IgaXMgaXQgYSBidWcgLyByZWdyZXNzaW9uIGluIHB5
cm8/DQoNClJlZ2FyZHMsDQpDaHJpc3RpYW4NCg0KS09TVEFMIEluZHVzdHJpZSBFbGVrdHJpayBH
bWJIIC0gU2l0eiBMw7xkZW5zY2hlaWQsIFJlZ2lzdGVyZ2VyaWNodCBJc2VybG9obiBIUkIgMzky
NCAtIFVTdC1JZC1Oci4vVmF0IE5vLjogREUgODEzNzQyMTcwDQpQb3N0YW5zY2hyaWZ0OiBBbiBk
ZXIgQmVsbG1lcmVpIDEwLCBELTU4NTEzIEzDvGRlbnNjaGVpZCAqIFRlbGVmb246ICs0OSAgMjM1
MSAxNi0wICogVGVsZWZheDogKzQ5ICAyMzUxIDE2LTI0MDANCldlcmtzYW5zY2hyaWZ0OiBMYW5n
ZSBFY2sgMTEsIEQtNTgwOTkgSGFnZW4gKiBUZWwuICs0OSAyMzMxIDgwNDAtNjAxICogRmF4ICs0
OSAyMzMxIDgwNDAtNjAyDQpHZXNjaMOkZnRzZsO8aHJ1bmc6IEF4ZWwgWmltbWVybWFubiwgRGlw
bC4tSW5nLiBNYXJ3aW4gS2luemwsIERpcGwuLU9lYy4gQW5kcmVhcyBLb3N0YWwNCg0K

