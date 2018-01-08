Return-Path: <Jose.DiazdeGrenu@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D68CE00DFE; Mon,  8 Jan 2018 03:51:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.203 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 376 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Jan 2018 03:51:02 PST
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.203])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EF57E00A00
	for <yocto@yoctoproject.org>; Mon,  8 Jan 2018 03:51:02 -0800 (PST)
Received: from [216.82.242.35] (using TLSv1.2 with cipher
	DHE-RSA-AES256-GCM-SHA384 (256 bits))
	by server-11.bemta-8.messagelabs.com id 45/14-06017-DA9535A5;
	Mon, 08 Jan 2018 11:44:45 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprBKsWRWlGSWpSXmKPExsXi5LtOQHdtZHC
	UweQ1Yhb/H29js5j0cg2bA5PHvJOBHu0n+tgCmKJYM/OS8isSWDPezXzPXHCBs+JST1QD4wHO
	LkYuDiGBVYwS0+93s0M4qxkl3nVtYoVwFjNKfPy5Dcjh5GATMJeYdvggSxcjB4eIQK7E6h4Dk
	LCwgIfEt7WNTCC2iICnxP9TzawQtpXEzwd3mEFsFgEViebpE8BqeAV8JXr3z2CBmN/KKPHmzw
	uwBk4BZ4njvz+C2YwCshIrz59mBLGZBcQlbj2ZD9YsISAgsWTPeWYIW1Ti5eN/rBC2osTdJ2e
	ZQW5jFtCUWL9LH6JVUWJK90N2iL2CEidnPmEBsYUE1CTa5kxgnsAoOgvJhlkI3bOQdM9C0r2A
	kWUVo0ZxalFZapGuiZFeUlFmekZJbmJmjq6hgYVebmpxcWJ6ak5iUrFecn7uJkZg/NQzMDDuY
	Hy5LPoQoyQHk5Ior6hzQJQQX1J+SmVGYnFGfFFpTmrxIUYZDg4lCV7JiOAoIcGi1PTUirTMHG
	Akw6QlOHiURHjNQdK8xQWJucWZ6RCpU4zGHE+uzfvLxPFs5usGZiGWvPy8VClx3hKQUgGQ0oz
	SPLhBsARziVFWSpiXkYGBQYinILUoN7MEVf4VozgHo5IwrzDIFJ7MvBK4fa+ATmECOuXdvkCQ
	U0oSEVJSDYxun+p8r9fzZeWe5FuiZ2YbWMA1b12yXfiEz7Oa9DZ+PLGx7+Gf3CY/V0UPJ83ud
	VcmvRPP2bi6SPpNrmL1Wrl5kycIxr7UUXQI5TSyvnbyo3ubWZyX6xyVQ+v6fmT9ztN4+vKq+W
	eJL8kFbpsP8uxwvLXxa5sGS9m8P8+eJr74/2jhr5ebvKqVWIozEg21mIuKEwGEtq4OKwMAAA=
	=
X-Env-Sender: Jose.DiazdeGrenu@digi.com
X-Msg-Ref: server-9.tower-75.messagelabs.com!1515411885!33727071!1
X-Originating-IP: [66.77.174.16]
X-StarScan-Received: 
X-StarScan-Version: 9.4.45; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 41711 invoked from network); 8 Jan 2018 11:44:45 -0000
Received: from owa.digi.com (HELO MCL-VMS-XCH01.digi.com) (66.77.174.16)
	by server-9.tower-75.messagelabs.com with SMTP;
	8 Jan 2018 11:44:45 -0000
Received: from MTK-SMS-XCH04.digi.com (10.10.8.198) by MCL-VMS-XCH01.digi.com
	(10.5.8.49) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 8 Jan 2018 05:44:42 -0600
Received: from DOR-VMS-XCH01.digi.com (10.49.8.98) by MTK-SMS-XCH04.digi.com
	(10.10.8.198) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Mon, 8 Jan 2018 05:44:42 -0600
Received: from DOR-SMS-XCH01.digi.com ([fe80::894b:3bdc:74ae:6efc]) by
	DOR-VMS-XCH01.digi.com ([::1]) with mapi id 14.03.0361.001;
	Mon, 8 Jan 2018 12:44:40 +0100
From: "Diaz de Grenu, Jose" <Jose.DiazdeGrenu@digi.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Postinstallation script warnings in Yocto 2.4 Rocko
Thread-Index: AdOIYQlF3trmw5fqTDOXmOVi9/TopwACpYQAAAKIhvA=
Date: Mon, 8 Jan 2018 11:44:40 +0000
Message-ID: <0B2EBCD48D33654381E736352034C70C01B5D3AC@dor-sms-xch01.digi.com>
References: <0B2EBCD48D33654381E736352034C70C01B5781A@dor-sms-xch01.digi.com>
	<5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
In-Reply-To: <5aa601c6-2947-c890-eb37-ed9b33bd8677@linux.intel.com>
Accept-Language: es-ES, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.101.11.101]
MIME-Version: 1.0
Subject: Re: Postinstallation script warnings in Yocto 2.4 Rocko
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
X-List-Received-Date: Mon, 08 Jan 2018 11:51:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQWxleGFuZGVyIEthbmF2aW4gW21h
aWx0bzphbGV4YW5kZXIua2FuYXZpbkBsaW51eC5pbnRlbC5jb21dIA0KT24gMDEvMDgvMjAxOCAx
MToxNCBBTSwgRGlheiBkZSBHcmVudSwgSm9zZSB3cm90ZToNCg0KPiBOb3BlLCAnZXhpdCAxJyBp
cyB0aGUgY3VycmVudGx5IGNvcnJlY3Qgd2F5IHRvIGRlZmVyIHRvIGZpcnN0IGJvb3QuIE9uIHRo
ZSBvdGhlciBoYW5kLCBpdCdzIGFsc28gYSBjb3JyZWN0IHdheSB0byBpbmRpY2F0ZSB0aGF0IHRo
ZSBzY3JpcHQgaGFzIGZhaWxlZCwgYW5kIHJwbSBpcyByaWdodCBpbiByZXBvcnRpbmcgaXQgYXMg
c3VjaC4gIFRoaXMgaXMgYSBkZXNpZ24gZGVmZWN0IGluIFlvY3RvLCBhbmQgSSBwbGFuIHRvIGZp
eCBpdCwgc28gdGhhdCBpbnN0ZWFkIHlvdSB3b3VsZCBzaW1wbHkgd3JpdGUgeW91ciBmcmFnbWVu
dCBhcyBmb2xsb3dzOg0KPg0KPg0KPiBwa2dfcG9zdGluc3Rfb250YXJnZXRfUEFDS0FHRU5BTUUo
KSB7DQo+ICAgICAgICAjIEFjdGlvbnMgdG8gY2Fycnkgb3V0IG9uIHRoZSBkZXZpY2UgZ28gaGVy
ZQ0KPiAgICAgICAgLi4uLg0KPiB9DQoNClRoYW5rcyBmb3IgdGhlIGluZm9ybWF0aW9uLiBJIGd1
ZXNzIHRoaXMgZml4IHdpbGwgYmUgZm9yIFlvY3RvIDIuNT8NCg0KVGhlIHByb2JsZW0gaXMgdGhh
dCBpbiBZb2N0byAyLjQgdGhlbiBhbnkgYnVpbGQgd2hpY2ggcmVxdWlyZXMgb24tdGFyZ2V0IHBv
c3RpbnN0YWxsYXRpb24gc2NyaXB0IGlzIGdvaW5nIHRvIHRyaWdnZXIgd2FybmluZywgZXZlbiBp
ZiBpdCBpcyBjb21wbGV0ZWx5IGNvcnJlY3QuIElzIHRoZXJlIG5vIHdheSBhcm91bmQgdGhpcz8g
SXMgdGhlcmUgYSB3YXkgdG8gYXQgbGVhc3QgaGlkZSB0aGVtPw0KDQpUaGFua3MgYWdhaW4uDQo=

