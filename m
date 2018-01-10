Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B094E00DB5; Wed, 10 Jan 2018 05:40:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [198.47.27.77 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from lelnx193.ext.ti.com (lelnx193.ext.ti.com [198.47.27.77])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6695EE00DA5
	for <yocto@yoctoproject.org>; Wed, 10 Jan 2018 05:40:01 -0800 (PST)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by lelnx193.ext.ti.com (8.15.1/8.15.1) with ESMTP id w0ADdxg1006537;
	Wed, 10 Jan 2018 07:39:59 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ti.com;
	s=ti-com-17Q1; t=1515591599;
	bh=VAsuePsMPkCJ/h6hqc/yNTZ8Zf8tdqWvaoNpgR7pCxE=;
	h=From:To:Subject:Date:References:In-Reply-To;
	b=M45cSgAWNFWXv2X45ZVfHT67ZfHv/UnmV9sRYRRuP6beoDftsY/Ya0O67I8A5k+sH
	f6Wx8ft6Vh8W250awAw3ZRMpKmXmkhG1vkGJR7gzRU5gUn0N5pLBSa3me0196YUlup
	IMVG5SVkbHU8GmYLgw3OKpiNLfnS1bghWWlyIxlg=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id w0ADdxHE018622;
	Wed, 10 Jan 2018 07:39:59 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE110.ent.ti.com
	(10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1261.35;
	Wed, 10 Jan 2018 07:39:59 -0600
Received: from DFLE109.ent.ti.com ([fe80::e4e5:c81b:7525:c9b2]) by
	DFLE109.ent.ti.com ([fe80::e4e5:c81b:7525:c9b2%17]) with mapi id
	15.01.1261.035; Wed, 10 Jan 2018 07:39:59 -0600
From: "Mills, William" <wmills@ti.com>
To: Andrew Stuart <andrew.stuart@supercoders.com.au>, Yocto Project
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] beta testing netbooting Yocto on Amazon,	Google &
	Digital Ocean
Thread-Index: AQHTicOHigreaLn+7EiagOadbgoVuaNtGIGw
Date: Wed, 10 Jan 2018 13:39:59 +0000
Message-ID: <db4a0c733ee0428c8a3c57e0cc2fac3d@ti.com>
References: <71F965A7-EE3A-4E57-ABB3-F73AD25FB87F@supercoders.com.au>
In-Reply-To: <71F965A7-EE3A-4E57-ABB3-F73AD25FB87F@supercoders.com.au>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.22.90.93]
x-exclaimer-md-config: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
MIME-Version: 1.0
Subject: Re: beta testing netbooting Yocto on Amazon, Google & Digital Ocean
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
X-List-Received-Date: Wed, 10 Jan 2018 13:40:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

QW5kcmV3LA0KDQpJbnRlcmVzdGluZyBwcm9qZWN0Lg0KDQpJIGxvb2tlZCBhdCB5b3VyIGRvY3Vt
ZW50YXRpb24uICBZb3UgaGF2ZSBhIHNlY3Rpb24gIklzIGJvb3RyaW5vIG9wZW4gc291cmNlPyIN
CllvdSBkb24ndCByZWFsbHkgYW5zd2VyIHRoZSBxdWVzdGlvbi4gIA0KU28geW91ciBzaXRlIGlz
IGZyZWUgdG8gdXNlIGNhc3VhbGx5IGFuZCBwYWlkIG9wdGlvbnMgZm9yIG1vcmUgc2VyaW91cyB1
c2Vycy4NClRoYXTigJlzIGZpbmU7IGl0J3MgeW91ciBzZXJ2ZXIuDQpZb3UgYWxzbyBzYXkgdGhl
cmUgaXMgYW4gTUlUIGxpY2Vuc2VkIENMSS4gIE9LLg0KQnV0IHlvdSBkbyBub3QgbWVudGlvbiB0
aGUgc2VydmVyIGNvZGUgaXRzZWxmLg0KRnJvbSB0aGF0IEkgYXNzdW1lIHRoZSBhbnN3ZXIgdG8g
dGhlIHF1ZXN0aW9uICJJcyBib290cmlubyBvcGVuIHNvdXJjZT8iIGlzIG5vLg0KQW0gSSBjb3Jy
ZWN0Pw0KDQooTm90IHN1cmUgd2h5IHlvdSBhcmUgdGVsbGluZyB1cyBob3cgeW91IG1hZGUgaXQg
aWYgd2UgY2FuJ3Qgc2VlIHRoZSBjb2RlIGFueXdheS4gOikgKQ0KDQpTbyBmb3IgbXkgb3duIFBP
ViBJIHdvdWxkIG5vdCB3YW50IHRvIGdpdmUgdGhpcyBhY2Nlc3MgdG8gbXkgY2xvdWQgYWNjb3Vu
dCB3aXRob3V0IHNlZWluZyB0aGUgY29kZSBhbmQgcGVyaGFwcyBydW5uaW5nIGl0IG9uIG15IG93
biBzZXJ2ZXIgc28gSSBjYW4gYmUgc3VyZSBvZiB3aGF0IEkgYW0gZ2V0dGluZy4gIEkgY291bGQg
c2V0dXAgYSBzY3JhdGNoIGFjY291bnQgYnV0IEkgd291bGQgd29ycnkgZXZlbiB0aGVuIGFuZCBJ
IHdvdWxkIHN0aWxsIGhhdmUgY29uY2VybnMgZXZlciBnb2luZyB0byAicHJvZHVjdGlvbiIgbW9k
ZS4gIEkgYW0gYSBiaXQgcGlja3kgdGhhdCB3YXkuICANCg0KT3RoZXJzIG1heSBub3QgZmVlbCB0
aGUgc2FtZSB3YXkuICBJIHdpc2ggeW91IGx1Y2suDQoNCkJUVzogSWYgeW91IGRvbid0IHdhbnQg
dG8gZ28gb3BlbiBzb3VyY2UsIHlvdSBtYXkgZG8gYmV0dGVyIGlmIHlvdSBvZmZlciBmdWxsIHNv
dXJjZSAody8gcHJvcHJpZXRhcnkgbGljZW5zZSkgd2l0aCB0aGUgcGF5ZWQgb3B0aW9uLg0KDQpU
aGFua3MsDQpCaWxsDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiB5b2N0by1i
b3VuY2VzQHlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0by1ib3VuY2VzQHlvY3RvcHJvamVj
dC5vcmddIE9uIEJlaGFsZiBPZiBBbmRyZXcgU3R1YXJ0DQpTZW50OiBUdWVzZGF5LCBKYW51YXJ5
IDksIDIwMTggMTA6MzEgUE0NClRvOiBZb2N0byBQcm9qZWN0DQpTdWJqZWN0OiBbeW9jdG9dIGJl
dGEgdGVzdGluZyBuZXRib290aW5nIFlvY3RvIG9uIEFtYXpvbiwgR29vZ2xlICYgRGlnaXRhbCBP
Y2Vhbg0KDQpIaSBmb2xrcywNCg0KSSBidWlsdCBhIHdlYnNpdGUgdG8gbWFrZSBpdCBlYXN5IHRv
IG5ldGJvb3QgUnVuLUZyb20tUkFNIG9wZXJhdGluZyBzeXN0ZW1zIGxpa2UgWW9jdG8gTGludXgg
b24gY2xvdWQgaG9zdHMgKEdvb2dsZSwgQW1hem9uICYgRGlnaXRhbCBPY2VhbikuDQoNCkkgd2Fu
dGVkIHRvIHNlZSBpZiBhbnlvbmUgbWlnaHQgYmUgaW50ZXJlc3RlZCB0byBnaXZlIGl0IGEgdHJ5
IGFzIGEgYmV0YSB0ZXN0Lg0KDQpJdOKAmXMgYWJzb2x1dGVseSBicmFuZCBuZXcgc28gbGlrZWx5
IGhhcyBidWdzIGFuZCBpc3N1ZXMuDQoNCndlYnNpdGUgaXMgaHR0cHM6Ly93d3cuYm9vdHJpbm8u
Y29tDQpkb2N1bWVudGF0aW9uIGlzIGh0dHBzOi8vZG9jLmJvb3RyaW5vLmNvbSBjb25zb2xlIGlz
IGh0dHBzOi8vY29uc29sZS5ib290cmluby5jb20NCg0KTGV0IG1lIGtub3cgaWYgeW914oCZcmUg
aW50ZXJlc3RlZCBjYXVzZSBJ4oCZZCBiZSBpbnRlcmVzdGVkIHRvIGhlbHAgZGlyZWN0bHkgaWYg
YW55IGlzc3VlcyBjb21lIHVwLg0KDQp0aGFua3MhDQoNCkFuZHJldw0KDQotLQ0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCnlvY3RvIG1haWxpbmcgbGlz
dA0KeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KaHR0cHM6Ly9saXN0cy55b2N0b3Byb2plY3Qub3Jn
L2xpc3RpbmZvL3lvY3RvDQo=

