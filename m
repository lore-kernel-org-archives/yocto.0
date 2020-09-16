Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.23119.1600265074398794037
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2020 07:04:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=I4bkF35H;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1600265074; x=1757945074;
  h=from:to:cc:subject:date:content-transfer-encoding:
   mime-version;
  bh=kYh8cxFrOEzpAcTkdUnBvkSW96MTJyOddV/fx5UcBbo=;
  b=I4bkF35HzIbSSTyu5Hon1/laT898167xb6MGBkhr+WyGII+NbZmO2am1
   NMQ8wbCl4IpLsi849lc6TtofeKvNUeHnPHRNYZewxC1Pi1qqpxD8cBLSb
   Bg877g1IbW0S2jHyh2qI6aZyrJgXJblGBrQnBLtcSySd8HU2g9iVWsZQW
   s=;
IronPort-PHdr: =?us-ascii?q?9a23=3AA/OCshA58Cmrb4cjcbcXUyQJP3N1i/DPJgcQr6Af?=
 =?us-ascii?q?oPdwSP36r8qwAkXT6L1XgUPTWs2DsrQY0rWQ6/qrBjVIoc7Y9ixbLtoUD15NoP?=
 =?us-ascii?q?5VtjRoONSCB0z/IayiRA0BN+MGamVY+WqmO1NeAsf0ag6aiHSz6TkPBke3blIt?=
 =?us-ascii?q?daz6FYHIksu4yf259YHNbAVUnjq9Zq55IAmroQnLucQanIlvJrwtxhfXrXdFef?=
 =?us-ascii?q?lazn5sKV6Pghrw/Mi98INi/ihKp/4t68tMWrjmcqolSrBVEC4oOH0v6s3xshnD?=
 =?us-ascii?q?QwqP5n8CXWgTjxFFHQvL4gzkU5noqif1ufZz1yecPc3tULA7Qi+i4LtxSB/pky?=
 =?us-ascii?q?gIKTg0+3zKh8NqjaJbpBWhpwFjw4PRfYqYOuZycr/bcNgHXmdKQNpfWDJdDYO9?=
 =?us-ascii?q?d4sPDvQOPeBEr4nmulACqQKyCRSwCO/zzzNFgGL9068n3OQ7CQzI3BIuEc8SsH?=
 =?us-ascii?q?rar9v1OqYSXvy6wqbH1jjDc+hZ2TXh5ITUbhwso/eBVq9wf8rLzkkvEhvIgluX?=
 =?us-ascii?q?p4ziOTOVzfoCvHaA7+Z4SOmhlnInpB9vojexwMcnl5fEjZ8Rxl/K6Ct1xYg5Ls?=
 =?us-ascii?q?C/RU5gfd6rDoVQuD+cN4dsR8MiRGdouD0kxbIYop62ZzMFx445yB7Ea/2HaJSI?=
 =?us-ascii?q?7QzmVOaKOzt3mHVleLemihu07EOvxfHyWNOu31ZWsipKjMPMtnYV2hDO9MWKSP?=
 =?us-ascii?q?Rw80Wl1DuT1Q3e9v9ILEQqmKfHN5Mt3KM8mocOvEnMHiL4mFn6gLKIekgk+ual?=
 =?us-ascii?q?6+bqbLr4q5KdM4J5jBz1PKopmsy6G+s4Mw4OUnCb+OS7yLLj4Ur5QK1Qjv0xkK?=
 =?us-ascii?q?nWrozVJdgBqq6+GQ9V3YAu4Au8ATe+yNkUgGULIEhLdR+FlYTlJU/CLfDiAfq+?=
 =?us-ascii?q?g1mgiCpny+zcMrDuDZjBNHzOnK3icLt/7UNX1RA9wspF551OD7EMOPfzWkjsu9?=
 =?us-ascii?q?PGFhI5KAm0w/r/CNV6y4MeRXqDAq+HP6PWtl+F/v4vIuaWa48TvTb9MPwo6+Ly?=
 =?us-ascii?q?gXMlhFMRZ6+p0oENZH+jBPtpPV6ZYHr3gtcdD2gKuxE+QPb2h12FVD5ff3eyX6?=
 =?us-ascii?q?Qi6TEnEI+qEJvPSpqjjbGDxiu3AINaa2BcBl2NEXrkb4CEVO0NaCKWLM9hiDsE?=
 =?us-ascii?q?Vb25Ro86yRGhqhH6xKRhLubO/y0YspTj1MNr6OLNjhE/7id7AN6D3GGWT2B0hX?=
 =?us-ascii?q?8ISCEz3KBku0By1lCD0a1gj/xCCdNT/+9JUhs9NZPEz+16DMz9Wh7GftqSTFam?=
 =?us-ascii?q?Q86mAS0qTt4rw94OZFpyG8mljhDbxSqqBL0VmKKXC5wo6K7c2GLxJ8kug0vAz7?=
 =?us-ascii?q?Qr2lk6XtNUZyrhgq9k6xOVFonCj0KBjaGoeK8AminX+yCMinuJt11fFxN2SrjP?=
 =?us-ascii?q?Dk0ZfVbckdnp+hbCU6O2EuZgdQ9A0tKZbLpNYcHulU9BRvroJJLZeW32lCChAh?=
 =?us-ascii?q?2UwfSRapH3cTYh23D+CEUB2zoa/z7SLwE8QCShrmf2AzlnFFapaETpp7pQsnS+?=
 =?us-ascii?q?GwURyAeRYkB6k/KO5hMLiPrUYLtT44lF8m91sCl5Alu7mdfRDcGNqhFJdqxRes?=
 =?us-ascii?q?Im/FpCziTSsAkrbc/oFLxrmlNLK1c/hEjpzRgiT9wYycU=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BCAwCBGmJf/0HhJQpfHQEBAQEJARIBB?=
 =?us-ascii?q?QUBQIFPgxqBNAqEL5E4ig2QKIFpCwEBAQEBAQEBAQgBGAsMBAEBhEsCF4IMJTg?=
 =?us-ascii?q?TAhABAQYBAQEBAQYEAYZIDII3BQIDHwEGgwsBAQEBAgEBIhEaKwwEAgEIEQQBA?=
 =?us-ascii?q?QECAiMDAgICHwcJARQBCAgBAQQOBQgVBIMGgksDDi+0UXaBMoQ7AYEXgkYNgiQ?=
 =?us-ascii?q?JAYEEKoZNDYEDhyw+hCE+ghorFwQBgScBEgE4gwCCYASTJqMjUQcDgmWIc4p/g?=
 =?us-ascii?q?UuEfiqEMJxJhW2XYIJokisCBAIEBQIVgWuBCnBwgzkJRxcCDZckhUJ0AgE0AgY?=
 =?us-ascii?q?BCQEBAwmMGy0qXIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2BCAwCBGmJf/0HhJQpfHQEBAQEJARIBBQUBQIFPgxqBNAq?=
 =?us-ascii?q?EL5E4ig2QKIFpCwEBAQEBAQEBAQgBGAsMBAEBhEsCF4IMJTgTAhABAQYBAQEBA?=
 =?us-ascii?q?QYEAYZIDII3BQIDHwEGgwsBAQEBAgEBIhEaKwwEAgEIEQQBAQECAiMDAgICHwc?=
 =?us-ascii?q?JARQBCAgBAQQOBQgVBIMGgksDDi+0UXaBMoQ7AYEXgkYNgiQJAYEEKoZNDYEDh?=
 =?us-ascii?q?yw+hCE+ghorFwQBgScBEgE4gwCCYASTJqMjUQcDgmWIc4p/gUuEfiqEMJxJhW2?=
 =?us-ascii?q?XYIJokisCBAIEBQIVgWuBCnBwgzkJRxcCDZckhUJ0AgE0AgYBCQEBAwmMGy0qX?=
 =?us-ascii?q?IERAQE?=
X-IronPort-AV: E=Sophos;i="5.76,433,1592870400"; 
   d="scan'208";a="310304556"
X-IronPort-AV: E=Sophos;i="5.76,433,1592870400"; 
   d="scan'208";a="85323347"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #sdk - meta-clang undefined references
Thread-Topic: [yocto] #yocto #sdk - meta-clang undefined references
Thread-Index: AdaLmOq5qmQi1ELyRo6IcXbt7Io+kQALJ08AABQBsfAAByDloA==
Date: Wed, 16 Sep 2020 14:04:31 +0000
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.1635489BF915C597.13893@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpJIGNhbiBzZWUgdGhhdCBsaWJjbGFuZyBpcyBiZWluZyBpbmNsdWRlZC4uLnNvLCBub3Qgc3Vy
ZSB3aHkgd2hlbiBsaW5raW5nIGFuIGV4ZWN1dGFibGUgdGhlc2UgcmVmZXJlbmNlcyBhcmUgbWlz
c2luZy4uLg0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTW9uc2VlcywgU3Rl
dmVuIEMgKFVTKSANClNlbnQ6IFdlZG5lc2RheSwgU2VwdGVtYmVyIDE2LCAyMDIwIDc6MDYgQU0N
ClRvOiAnS2hlbSBSYWonIDxyYWoua2hlbUBnbWFpbC5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUkU6IFt5b2N0b10gI3lvY3RvICNzZGsgLSBtZXRhLWNs
YW5nIHVuZGVmaW5lZCByZWZlcmVuY2VzDQoNCg0KDQpJdCBzaG91bGQgYmUgbGlua2luZyBpbiBs
aWJjbGFuZyAsIEkgd2lsbCB2YWxpZGF0ZS4uLg0KDQpOb3RlIHBlcmZvcm1pbmcgJ25tJyBvbiBs
aWJjbGFuZyBhcHBlYXIgdG8gc2hvdyB0aGUgbWFqb3JpdHkgcHJlc2VudC4uLg0KDQpRdWVzdGlv
bjogaWYgSSBuZWVkZWQgdG8gaW5jbHVkZSBhIGxpYnJhcnksIHdoYXQvaG93IHdvdWxkIEkgbW9k
aWZ5IGEgcmVjaXBlIHVuZGVyIFlvY3RvIHRvIGJlIHN1cmUgdG8gaW5jbHVkZS9saW5rIGluIHRo
ZSBsaWJyYXJ5ID8NCg0KVGhhbmtzLA0KU3RldmUNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0t
LS0NCkZyb206IEtoZW0gUmFqIFttYWlsdG86cmFqLmtoZW1AZ21haWwuY29tXQ0KU2VudDogVHVl
c2RheSwgU2VwdGVtYmVyIDE1LCAyMDIwIDU6MDYgUE0NClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAo
VVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSAjeW9jdG8gI3NkayAtIG1ldGEtY2xh
bmcgdW5kZWZpbmVkIHJlZmVyZW5jZXMNCg0KKioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBFTUFJ
TCAtLSBUaGlzIG1lc3NhZ2Ugb3JpZ2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXphdGlv
bi4NCg0KDQpPbiBUdWUsIFNlcCAxNSwgMjAyMCBhdCAxMjo1NiBQTSBNb25zZWVzLCBTdGV2ZW4g
QyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0
ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4NCj4NCj4NCj4gSSBhbSBi
dWlsZGluZyBtZXRhLWNsYW5nIChzdW1vIGJhc2VkIDYuMC4xKSwgd2l0aCBjbWFrZSAoMy44LjIp
LCBhbGwgDQo+IHVuZGVyIGEgc3RhbmRhcmQgU0RLIOKAnHJvY2tvIGJhc2Vk4oCdICgyLjQuMSni
gKYNCj4NCj4NCj4NCj4gQXJlIHRoZSBmb2xsb3dpbmcgcm91dGluZXMgYWNjZXNzaWJsZS9zdXBw
b3J0ZWQgdW5kZXIgbWV0YS1jbGFuZyA/DQo+DQo+DQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVk
IHJlZmVyZW5jZSB0byBgY2xhbmc6OkRpYWdub3N0aWNJRHM6On5EaWFnbm9zdGljSURzKCknDQo+
DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OlRleHREaWFnbm9z
dGljUHJpbnRlcjo6VGV4dERpYWdub3N0aWNQcmludGVyKGxsdm06OnJhd19vc3RyZWFtJiwgY2xh
bmc6OkRpYWdub3N0aWNPcHRpb25zKiwgYm9vbCknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVk
IHJlZmVyZW5jZSB0byBgY2xhbmc6OkRpYWdub3N0aWNzRW5naW5lOjp+RGlhZ25vc3RpY3NFbmdp
bmUoKScNCj4NCj4gbGliZ2JlLnNvOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBjbGFuZzo6Q29t
cGlsZXJJbnZvY2F0aW9uOjpDcmVhdGVGcm9tQXJncyhjbGFuZzo6Q29tcGlsZXJJbnZvY2F0aW9u
JiwgY2hhciBjb25zdCogY29uc3QqLCBjaGFyIGNvbnN0KiBjb25zdCosIGNsYW5nOjpEaWFnbm9z
dGljc0VuZ2luZSYpJw0KPg0KPiBsaWJnYmUuc286IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGNs
YW5nOjpDb21waWxlckludm9jYXRpb25CYXNlOjp+Q29tcGlsZXJJbnZvY2F0aW9uQmFzZSgpJw0K
Pg0KPiBsaWJnYmUuc286IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGNsYW5nOjpQQ0hDb250YWlu
ZXJPcGVyYXRpb25zOjpQQ0hDb250YWluZXJPcGVyYXRpb25zKCknDQo+DQo+IGxpYmdiZS5zbzog
dW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkNvbXBpbGVySW5zdGFuY2U6OmNyZWF0ZURp
YWdub3N0aWNzKGNsYW5nOjpEaWFnbm9zdGljQ29uc3VtZXIqLCBib29sKScNCj4NCj4gbGliZ2Jl
LnNvOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBjbGFuZzo6RGlhZ25vc3RpY3NFbmdpbmU6OkRp
YWdub3N0aWNzRW5naW5lKGxsdm06OkludHJ1c2l2ZVJlZkNudFB0cjxjbGFuZzo6RGlhZ25vc3Rp
Y0lEcz4sIGNsYW5nOjpEaWFnbm9zdGljT3B0aW9ucyosIGNsYW5nOjpEaWFnbm9zdGljQ29uc3Vt
ZXIqLCBib29sKScNCj4NCj4gbGliZ2JlLnNvOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBjbGFu
Zzo6Q29kZUdlbk9wdGlvbnM6OkNvZGVHZW5PcHRpb25zKCknDQo+DQo+IGxpYmdiZS5zbzogdW5k
ZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkNvbXBpbGVySW5zdGFuY2U6On5Db21waWxlcklu
c3RhbmNlKCknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6
OkNvbXBpbGVySW5zdGFuY2U6OkNvbXBpbGVySW5zdGFuY2Uoc3RkOjpzaGFyZWRfcHRyPGNsYW5n
OjpQQ0hDb250YWluZXJPcGVyYXRpb25zPiwgY2xhbmc6Ok1lbW9yeUJ1ZmZlckNhY2hlKiknDQo+
DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkVtaXRMTFZNT25s
eUFjdGlvbjo6RW1pdExMVk1Pbmx5QWN0aW9uKGxsdm06OkxMVk1Db250ZXh0KiknDQo+DQo+IGxp
YmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkNvbXBpbGVySW5zdGFuY2U6
OkV4ZWN1dGVBY3Rpb24oY2xhbmc6OkZyb250ZW5kQWN0aW9uJiknDQo+DQo+IGxpYmdiZS5zbzog
dW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkNvbXBpbGVySW52b2NhdGlvbkJhc2U6OkNv
bXBpbGVySW52b2NhdGlvbkJhc2UoKScNCj4NCj4gbGliZ2JlLnNvOiB1bmRlZmluZWQgcmVmZXJl
bmNlIHRvIGBjbGFuZzo6Q29tcGlsZXJJbnN0YW5jZTo6c2V0SW52b2NhdGlvbihzdGQ6OnNoYXJl
ZF9wdHI8Y2xhbmc6OkNvbXBpbGVySW52b2NhdGlvbj4pJw0KPg0KPiBsaWJnYmUuc286IHVuZGVm
aW5lZCByZWZlcmVuY2UgdG8gYGNsYW5nOjpDb2RlR2VuQWN0aW9uOjp0YWtlTW9kdWxlKCknDQo+
DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkRpYWdub3N0aWNJ
RHM6OkRpYWdub3N0aWNJRHMoKScNCj4NCg0KYXJlIHlvdSBsaW5raW5nIHRoaXMgbGlicmFyeSB3
aXRoIGxpYmNsYW5nID8gc2Vjb25kbHksIGFsc28gY2hlY2sgdGhhdCBpdHMgbm90IGVtaXR0aW5n
IGJ1bmNoIG9mIGxpYnJhcmllcyB3aGljaCBuZWVkcyB0byB0aGVuIGluZGl2aWR1YWxseSBsaW5r
ZWQNCg0KPg0KPg0KPiB0aGFua3MsDQo+DQo+IFN0ZXZlDQo+DQo+IA0K
