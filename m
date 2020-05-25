Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.24988.1590373043862274404
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 May 2020 19:17:23 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=none, err=SPF record not found (domain: cn.fujitsu.com, ip: 140.211.169.56, mailfrom: zangrc.fnst@cn.fujitsu.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 329BBE01C08; Sun, 24 May 2020 19:17:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [183.91.158.132 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
Received: from heian.cn.fujitsu.com (mail.cn.fujitsu.com [183.91.158.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47A80E01C06
	for <yocto@yoctoproject.org>; Sun, 24 May 2020 19:17:21 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.73,431,1583164800"; 
   d="scan'208";a="93011172"
Received: from unknown (HELO cn.fujitsu.com) ([10.167.33.5])
  by heian.cn.fujitsu.com with ESMTP; 25 May 2020 10:17:18 +0800
Received: from G08CNEXMBPEKD06.g08.fujitsu.local (unknown [10.167.33.206])
	by cn.fujitsu.com (Postfix) with ESMTP id 2F79D50A9974;
	Mon, 25 May 2020 10:17:14 +0800 (CST)
Received: from G08CNEXMBPEKD04.g08.fujitsu.local (10.167.33.201) by
 G08CNEXMBPEKD06.g08.fujitsu.local (10.167.33.206) with Microsoft SMTP Server
 (TLS) id 15.0.1497.2; Mon, 25 May 2020 10:17:16 +0800
Received: from G08CNEXMBPEKD04.g08.fujitsu.local ([fe80::a02b:f831:342:223])
 by G08CNEXMBPEKD04.g08.fujitsu.local ([fe80::a02b:f831:342:223%14]) with mapi
 id 15.00.1497.006; Mon, 25 May 2020 10:17:17 +0800
From: "zangrc" <zangrc.fnst@cn.fujitsu.com>
To: Ross Burton <ross@burtonini.com>, Paul Barker <pbarker@konsulko.com>
CC: Alexander Kanavin <alex.kanavin@gmail.com>, Yocto discussion list
	<yocto@yoctoproject.org>, Anibal Limon <anibal.limon@linaro.org>, Tim Orling
	<ticotimo@gmail.com>
Subject: Re: [yocto] [ptest-runner] Added output processing to pytest
Thread-Topic: [yocto] [ptest-runner] Added output processing to pytest
Thread-Index: AQHWL+ySwMW8CUz66kWBaGauDAl/B6izUCwAgAAA04CAAEINgIAAAYoAgAABm4CABHx+gA==
Date: Mon, 25 May 2020 02:17:17 +0000
Message-ID: <2bd9057d62bf49be9242cecfe7092f6c@G08CNEXMBPEKD04.g08.fujitsu.local>
References: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
 <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com>
 <CAM9ZRVtS4tKmrBb9Z+L+wjAcd3pwAj5wfTYmueTsg=CW6BXdUQ@mail.gmail.com>
 <CAAnfSTsEXz13ngzs3=8oqWmdLcLH-dX8gPjtkW9Gb-GDA4yc0Q@mail.gmail.com>
 <CAM9ZRVtN371hZaR1-b8sdPcxfHSo=QkuHdvin8xgNvicAcqMHQ@mail.gmail.com>
 <CAAnfSTuZJqF67pw28Z8pv-dgYDAtDjagvHwiuZgfkb+xC5Durw@mail.gmail.com>
In-Reply-To: <CAAnfSTuZJqF67pw28Z8pv-dgYDAtDjagvHwiuZgfkb+xC5Durw@mail.gmail.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.167.225.81]
MIME-Version: 1.0
X-yoursite-MailScanner-ID: 2F79D50A9974.A8CBD
X-yoursite-MailScanner: Found to be clean
X-yoursite-MailScanner-From: zangrc.fnst@cn.fujitsu.com
Content-Language: zh-CN
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SXMgaXQgcG9zc2libGUgdG8gY29udGludWUgdG8gYWRkIHB0ZXN0IGZvciBw
eXRob24tWFggaW4gdGhlIG9sZCB3YXkgYXQgcHJlc2VudCwgYW5kIHdhaXQg
Zm9yIHRoZSBuZXcgcmVjaXBlIHRvIGJlIGludGVncmF0ZWQgKHVuY2VydGFp
biB0aW1lKSwgYW5kIHRoZW4gdW5pZm9ybWx5IHByb2Nlc3MgdGhlIG91dHB1
dD8gT3Igc3VzcGVuZCB0aGUgd29yayBvZiBhcHBlbmRpbmcgcHRlc3QgYW5k
IHdhaXQgZm9yIHRoZSBzb2x1dGlvbi4NCg0KLS0NClphbmcgUnVvY2hlbg0K
DQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogeW9jdG9AbGlz
dHMueW9jdG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZz4gT24gQmVoYWxmIE9mIFJvc3MgQnVydG9uDQpTZW50OiBGcmlkYXks
IE1heSAyMiwgMjAyMCA5OjM3IFBNDQpUbzogUGF1bCBCYXJrZXIgPHBiYXJr
ZXJAa29uc3Vsa28uY29tPg0KQ2M6IEFsZXhhbmRlciBLYW5hdmluIDxhbGV4
LmthbmF2aW5AZ21haWwuY29tPjsgWmFuZywgUnVvY2hlbi/oh6cg6Iul5bCY
IDx6YW5ncmMuZm5zdEBjbi5mdWppdHN1LmNvbT47IFlvY3RvIGRpc2N1c3Np
b24gbGlzdCA8eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZz47IEFuaWJhbCBMaW1v
biA8YW5pYmFsLmxpbW9uQGxpbmFyby5vcmc+DQpTdWJqZWN0OiBSZTogW3lv
Y3RvXSBbcHRlc3QtcnVubmVyXSBBZGRlZCBvdXRwdXQgcHJvY2Vzc2luZyB0
byBweXRlc3QNCg0KT24gRnJpLCAyMiBNYXkgMjAyMCBhdCAxNDozMSwgUGF1
bCBCYXJrZXIgPHBiYXJrZXJAa29uc3Vsa28uY29tPiB3cm90ZToNCj4gPiBX
ZSBjb3VsZCBoYXZlIGEgcmVjaXBlIGluIG9lLWNvcmUgd2l0aCB0aGlzIGlu
LCBvciBqdXN0IGRyb3AgaXQgaW50byANCj4gPiB0aGUgcHl0aG9uIHJlY2lw
ZSBkaXJlY3RseS4NCj4NCj4gSXQncyBwYWNrYWdlZCBvbiBweXBpOiBodHRw
czovL3B5cGkub3JnL3Byb2plY3QvYmV0YXRlc3QvDQo+DQo+IEkgbmVlZCB0
byBkbyBhIG5ldyByZWxlYXNlIGFzIEkgdGlkaWVkIGEgZmV3IHRoaW5ncyB1
cCBhbmQgYWRkZWQgYSANCj4gc3VidGVzdCB3cmFwcGVyIGFmdGVyIEkgcHVi
bGlzaGVkIHYwLjEuMC4gVGhpcyBnaXZlcyBtZSBhIGtpY2sgdG8gZ2V0IA0K
PiB0aGF0IGRvbmUgOikNCg0KQXdlc29tZS4gIEkgZW5kb3JzZSBhIHB5cGkg
cmVjaXBlIHNoaXBwaW5nIHRoYXQsIHdoaWNoIHJlY2lwZXMgY2FuIHRoZW4g
cmUtdXNlLg0KDQpUaGUgbmV4dCBxdWVzdGlvbiBpcyBob3cgdG8gaW50ZWdy
YXRlIHRoYXQgcnVubmVyIHdpdGggcHl0ZXN0Lg0KDQpSb3NzDQoNCg0KCgo=
