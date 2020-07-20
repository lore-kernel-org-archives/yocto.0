Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web12.872.1595267475389244145
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 10:51:17 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=EmqALfhJ;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1595267475; x=1752947475;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=LtKkRo6Ux5doC6Sorw+bbpk2Pba9rs0uUn0MhZQwLS4=;
  b=EmqALfhJHgijM/vcooAbERjH2CEoX1BCSJKR5BbiAWIO/9tDiXAcxJLG
   tq3bSW9COibZkY296xXAxdQiLSq+TkTyAr0GtPiQOpzymrRBJz1ikfZnN
   5k7qdhX+ZrJwxxf1S9TmEVDdxyj5NhXeo9a8cNMnFgOvpg2l1JU4jY3u8
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3ArKpGoR+bFJCqIP9uRHKM819IXTAuvvDOBiVQ1KB+?=
 =?us-ascii?q?0+IXIJqq85mqBkHD//Il1AaPAdyFra4YwLWG+4nbGkU4qa6bt34DdJEeHzQksu?=
 =?us-ascii?q?4x2zIaPcieFEfgJ+TrZSFpVO5LVVti4m3peRMNQJW2aFLduGC94iAPERvjKwV1?=
 =?us-ascii?q?Ov71GonPhMiryuy+4ZLebxhJiTanbr5/Ixq6oAfSu8ILnYZsN6E9xwfTrHBVYe?=
 =?us-ascii?q?pW32RoJVySnxb4+Mi9+YNo/jpTtfw86cNOSL32cKskQ7NWCjQmKH0169bwtRbf?=
 =?us-ascii?q?VwuP52ATXXsQnxFVHgXK9hD6XpP2sivnqupw3TSRMMPqQbwoXzmp8rxmQwH0hi?=
 =?us-ascii?q?gZKzE58XnXis1ug6JdvBKhvAF0z4rNbI2IKPZyYqbRcNUHTmRDQ8lRTTRMDIOi?=
 =?us-ascii?q?YYUSE+oPM+VWr4f/qFsPsRSwCgajCfjzyjBThH/6wbE23/gjHAzAwQcuH8gOsH?=
 =?us-ascii?q?PRrNjtOqscVue1zK/TzTrdcfxWwi/x45XVfBA9v/6MQ6x/cczMwkQxCgjJiluf?=
 =?us-ascii?q?p5HgMz+by+8AtHOb7/Z+WuKxlWEnrRt9oj2oxscqkYnGmJwaykvf+Cpi2ok6O8?=
 =?us-ascii?q?a4SU5gYd64DpRQsjqaO5FqTcMlRmFloSA3waAJtpCnZiYF0ognxwLBZPyddYiF?=
 =?us-ascii?q?+h3tWfqRLDplhX9rd66yihev/UWj1ODyWNW53VZJoyZbkdTBtmwA2Rzd5MSaTv?=
 =?us-ascii?q?Zx40is1DWR2wzP6OxJPEQ5mKjdJpU8wbAwjoIevVnfEiPslkj7jrWaelgg9+Wm?=
 =?us-ascii?q?8ejqY7XrqoeBO4NokA3zPasjlta7DOgiMQUDXW6W8vmm2rL55032WrBKg+Uzkq?=
 =?us-ascii?q?nerZ/VO9wWprW8Aw9JyoYj7Au/Dyu+3NQYg3YHKFVFdQqZj4fzO1HOJvX4Dey7?=
 =?us-ascii?q?jlmolDpn2+3KMqfnAprXNHTMi63ucqhm609c0woz0c5Q55dPCr0bPP3zXUrxuM?=
 =?us-ascii?q?TZDh8/LQO03/7qBMhh2o8EV2+CALWVPL7WvFKG/O4iIumBaJcQuDnnKvgl4/Du?=
 =?us-ascii?q?jWU+mV8YZaSpxocXZ26mHvt4JUWVe3/sgtAHEWcRoAUxUvfqhUaZXjFJeXmyRK?=
 =?us-ascii?q?I95ionCI24CIfDXZqhj6CG3Ce+BpFWfHxJCkiQEXf0cIWJQ/cNaCWOLc99lTwJ?=
 =?us-ascii?q?TryhS4461RGyrw/20bpmLu3I9S0EspLjzMJ15+rRlR4s6TN0E96R02aXT2F7zS?=
 =?us-ascii?q?s0QGoM3at/qFZxgm+ey6R5jrQMD91Y5/pTXkEiKITQzuFSD9H0RxLPecqPRF+6?=
 =?us-ascii?q?Q9KgRzYrQYR1i5UfZE1hHP2mjwvfxGy7BLQJkKSRA545+b6a2GL+bY4p2nHNyK?=
 =?us-ascii?q?4Ji1g9XtAJJGqtmqln7Q/RCoXV1UKDmPD5W74b2XuH0WCF1meDpwUQaxJ9T6jD?=
 =?us-ascii?q?FVtXJnbt7J6xsljeQqGjD/IiNQ1axMOZAqFDZ8b4lklLQeylM9PbNTHi01ysDA?=
 =?us-ascii?q?qFk+vfJLHhfH8QiWCEUBAJ?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AQAAAu2RVf/0HBJQpgGgEBAQEBAQEBA?=
 =?us-ascii?q?QEDAQEBARIBAQEBAgIBAQEBQIE5AgEBAQELAYMYgTMKhCmRE5oggWkLAQEBAQE?=
 =?us-ascii?q?BAQEBBwEYBxAEAQGETAIXggklNwYOAhABAQYBAQEBAQYEAYZUgjcpAYMQAQEBA?=
 =?us-ascii?q?QMBIhFRBAIBCBEEAQEBAgIjAwICAiYKFAEICAIEARIIgx+uFnaBMopHCQGBBCo?=
 =?us-ascii?q?Bhj6IDz6Dcy4+hAgBEgGDN4JgBJJSonUHA4JdiFaKVoYuKp9IkgGefwIEAgQFA?=
 =?us-ascii?q?hWBaYELcHBQgmkJRxcCDY4qF44kdDcCBggBAQMJjn6BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2AQAAAu2RVf/0HBJQpgGgEBAQEBAQEBAQEDAQEBARIBAQE?=
 =?us-ascii?q?BAgIBAQEBQIE5AgEBAQELAYMYgTMKhCmRE5oggWkLAQEBAQEBAQEBBwEYBxAEA?=
 =?us-ascii?q?QGETAIXggklNwYOAhABAQYBAQEBAQYEAYZUgjcpAYMQAQEBAQMBIhFRBAIBCBE?=
 =?us-ascii?q?EAQEBAgIjAwICAiYKFAEICAIEARIIgx+uFnaBMopHCQGBBCoBhj6IDz6Dcy4+h?=
 =?us-ascii?q?AgBEgGDN4JgBJJSonUHA4JdiFaKVoYuKp9IkgGefwIEAgQFAhWBaYELcHBQgmk?=
 =?us-ascii?q?JRxcCDY4qF44kdDcCBggBAQMJjn6BEQEB?=
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="424552986"
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="424881521"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
Thread-Topic: [yocto] Adjusting Extensible SDK for build setup
Thread-Index: AQHWXrePr0r4qTsuQMiHvVDazPILjKkQs0xAgABGAwD//8PnMA==
Date: Mon, 20 Jul 2020 17:50:46 +0000
In-Reply-To: <1be512a8c6122e1305c4290514a4603f8e4ebfaa.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.162387519F244141.16142@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpNeSBhcG9sb2dpZXMuLi4NCg0KSW4gcG9wdWxhdGVfc2RrX2V4dC5iYmNsYXNzIGxpbmUgODE1
LCBJIGhhcmRjb2RlZCB0aGUgcmVscGF0aCBmb3IgdGVzdCBwdXJwb3NlcyA6DQoJcmVscGF0aCA9
ICdsYXllcnMvbWV0YS1iYWUvbWV0YS1saW13cy9zZXR1cC1idWlsZC1lbnYnDQoNCkluIGNvcHlf
YnVpbGRzeXN0ZW0ucHkgYWZ0ZXIgbGluZSAzMTIgSSBhcHBlbmRlZCBteSBzY3JpcHQgdG8gdGhl
IGxpc3QgdG8gYmUgY29waWVkOg0KCUxheWVycy5hcHBlbmQoIjw8ZnVsbCBwYXRoPj4vc2V0dXAt
YnVpbGQtZW52IikNCg0KU3RldmUNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206
IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgW21haWx0bzp5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnXSBPbiBCZWhhbGYgT2YgUmljaGFyZCBQdXJkaWUNClNlbnQ6IE1vbmRheSwgSnVs
eSAyMCwgMjAyMCAxOjE5IFBNDQpUbzogTW9uc2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVuLm1v
bnNlZXNAYmFlc3lzdGVtcy5jb20+OyB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJq
ZWN0OiBSZTogW3lvY3RvXSBBZGp1c3RpbmcgRXh0ZW5zaWJsZSBTREsgZm9yIGJ1aWxkIHNldHVw
DQoNCioqKiBXQVJOSU5HICoqKg0KRVhURVJOQUwgRU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdp
bmF0ZXMgZnJvbSBvdXRzaWRlIG91ciBvcmdhbml6YXRpb24uDQoNCg0KT24gTW9uLCAyMDIwLTA3
LTIwIGF0IDE3OjEzICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHdyb3RlOg0KPiBObywg
SSBndWVzcyBJIHdhc24ndCBjbGVhciwgSSBuZWVkZWQgdG8gYWRkIHRvIGxpbmVzIG9mIGNvZGUg
aW4gdGhlIA0KPiBzY3JpcHRzIHRvIGFkanVzdCB0aGluZ3Mgc28gdGhhdCBteSBlbnYgc2NyaXB0
IHdhcyBjb3BpZWQgdG8gdGhlIA0KPiBwcm9wZXIgU0RLIGJ1aWxkIGVudiAibGF5ZXJzIiBkaXJl
Y3RvcnkgYW5kIHNldCB0aGUgY29uZl9pbml0cGF0aCB0byANCj4gdXNlIG15IGVudiBzY3JpcHQu
Li4NCj4gDQo+IFRoZSB2YXJpYWJsZSBhc3NpZ25tZW50cyBtZW50aW9uZWQgYXJlIGNvbmZpZ3Vy
ZWQgaW4gbXkgZGlzdHJvIGNvbmZpZyANCj4gZm9yIHRoZSBvdmVyYWxsIFNESyBidWlsZC4NCg0K
SXQgd291bGQgYmUgaGVscGZ1bCB0byB1bmRlcnN0YW5kIHdoaWNoIHR3byBsaW5lcyB5b3UgbmVl
ZGVkIHRvIG1vZGlmeSBhbmQgaG93Lg0KDQpXYXMgdGhlIHNldHVwIHNjcmlwdCBiZWluZyBjb3Bp
ZWQgYXQgYWxsIHdpdGhvdXQgeW91ciBjaGFuZ2VzPyBJZiBzbyB3aGVyZSB3YXMgaXQgYmVpbmcg
Y29waWVkPyBJZiBub3QsIHdoYXQgZGlkIHlvdSBjaGFuZ2UgYW5kIHdoZXJlIHdhcyBpdCBjb3Bp
ZWQgYWZ0ZXJ3YXJkcz8NCg0KV2hhdCB2YWx1ZSBhcmUgeW91IHNldHRpbmcgY29uZl9pbml0cGF0
aCB0bz8NCg0KSXRzIHZlcnkgZGlmZmljdWx0IHRvIGFuc3dlciBxdWVzdGlvbnMgb24gYSBsYXll
ciBzdHJ1Y3R1cmUgd2hpY2ggaXNuJ3QgY2xlYXJseSBkZXNjcmliZWQgOigNCg0KQ2hlZXJzLA0K
DQpSaWNoYXJkDQoNCg==
