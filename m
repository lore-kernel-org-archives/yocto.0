Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.329.1610649980858743904
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 10:46:23 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=J7kLWDiT;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610649980; x=1768329980;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=jwKpZnVKV6EjhVoKbgkvY6+VP9VV+sKR+gsHJCmPcIk=;
  b=J7kLWDiTTkFDN9IKBa7m7a/bDgfnwp3S77Dv1SgrblL+BovmnP2WDbOp
   1RDr3+1z71by3IsF3sI+Sba2nUChK4O0nISJHItDQIK7Tg9fSL28nDsRY
   AYmMLcnQL4OmzxJkXzOENRQD+k8x1F4DFkLfr0kai+oyZMuRmTHkJa18/
   4=;
IronPort-PHdr: =?us-ascii?q?9a23=3AhX3RexGqAca7CzCxpL92J51GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ76psSybnLW6fgltlLVR4KTs6sC17OH9fi4EjNZqdbZ6TZeKcMKD0dEwe?=
 =?us-ascii?q?wt3CUYSPafDkP6KPO4JwcbJ+9lEGFfwnegLEJOE9z/bVCB6le77DoVBwmtfVEt?=
 =?us-ascii?q?fre9FYHdldm42P6v8JPPfQpImCC9YbRvJxmqsAndrMYbjZZmJ6or1hfFvnREdu?=
 =?us-ascii?q?ZLyWh1IV6fgwvw6t2/8ZJ+8Slcoe4t+9JFXa7nY6k2ULtUASg8PWso/sPrrx7D?=
 =?us-ascii?q?TQWO5nsYTGoblwdDDhbG4h/nQJr/qzP2ueVh1iaUO832Vq00Vi+576h3Uh/oiT?=
 =?us-ascii?q?wIOCA//WrKl8F/lqNboBampxxi347ZZZyeOfRicq/Be94RWHFMVdhNWSNfHoy8?=
 =?us-ascii?q?bpMPD+sfMuZes4n9vEYFoR+nCQWxGO/j1jpEi3nr1qM4zushCxnL0gw+EdwTrH?=
 =?us-ascii?q?Taotb7NKkQXuC00KbGwjrMYuhK2Tjm6ojEbgwtre2OUL92bMHfyVMvFwTAjliI?=
 =?us-ascii?q?p4DrODSV1uIWs2eF8eVgTvqjgHM6pQFtvDev2Nkjio/UjY8L11vI8St2zpswKd?=
 =?us-ascii?q?G2VUV2ZsWkEIdOuCGEKYR2RNkuQ2RvuCY80b0Jp4C0fDMRxZs83RHQdeeHcoiT?=
 =?us-ascii?q?4hL/SumRJCx4iGh5d7K4gha/6E6twfDzWceoylhFtDZFksXSuXAX0Rze8tWLRP?=
 =?us-ascii?q?Vg8kqlxzqDyQTe5/1ALEwqlqfWKJAvzLAumpcPrEnOAiD4lkXygaKUeEso5PSl?=
 =?us-ascii?q?5uT5brjpu5KSOIt5hwP4P68zlMK/BuE4PRIPX2id4em91Lrj8lHlQLVNlv02iK?=
 =?us-ascii?q?7ZsJLEKssHuq61GQhV0pws6xu5Ejyo08wYkGEaIF5ZYh6KgYrkN0vQLPzmDfqz?=
 =?us-ascii?q?mVWhnTdzy/zbIrHtGJrAI3fZnLruZ7px9k5RxQwuxt5F/Z1UEKsOIPfrV0/0s9?=
 =?us-ascii?q?zXEwE2PhSvw+biFNV9zoQeWX+TAqOBMKPdr1uI5uU3LumQa44aojD9K/0+5/Pq?=
 =?us-ascii?q?kXM1hUMRcbSz0ZsRcn+0BO9pLF+Hbnr3gtYBCnsKsRQ7TOzxklGNTTlTZ3OqU6?=
 =?us-ascii?q?I94DE0Fp6mAJ/eSoyxmrCM0iW2EodIamxYCl2AC3bleoWcV/cJci2SI8thkjIe?=
 =?us-ascii?q?VbimTo8szQqutBPkxLp5MOXU/DcUtZfk1Nhz/O3ciw899SdvAsuGyW6CUXp0n2?=
 =?us-ascii?q?MTRz8qwq9/pFd9xk2f3qh/hvxUDcZT6O9RUgcmKZ7cyPR3CtD1Wg3dYteJT02r?=
 =?us-ascii?q?QtGnATEqUtIx2MUCYkZ6G9q+khDD2DKqA6USl7yJGpM77r7c02L2J8ZnxHaVnJ?=
 =?us-ascii?q?QnlEQsF8tTKXW91Ok48wnIG5WPgkKSi6Gyb6Me0SXRsmCZwi2B+1BfWxJ3FrjD?=
 =?us-ascii?q?Rm0VNXbQtsnz2k7SU+quFag/KVkGjsqDMbdRLMzuhklBXO3kOtnVfyS2gWj3Cl?=
 =?us-ascii?q?GZwbiQa833fX4A1nbhDx0nkw0WtUyPN0BqHC6j5WHeATlGGlfmYkeq+u57/iCV?=
 =?us-ascii?q?VEgxmkuvaEt62reuvlYumfGCRvVb9fpEhRxg4X0gB0qwwd/QTd+HoRFscb50a9?=
 =?us-ascii?q?ow+0ZcyW/crEp2OZn2fPMqvUIXbwki5xCm7B5wEIgV1JFy9H4=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DrAwDNjwBg/0HhJQpigQmEcIE5CoQ1k?=
 =?us-ascii?q?U8DihyQOIFoCwEBAQEBAQEBAQgBGAsMBAEBhEoCF4FXJjgTAhABAQYBAQEBAQY?=
 =?us-ascii?q?EAYZRDII4BQIDHwEGgwsBAQEEASIRGisMBAIBCBEEAQEBAgImAgICHwcJARUIC?=
 =?us-ascii?q?AEBBA4FCBUEgwaCVQM9rxN2gTKEQAGBGIJfDYIlgQ4qhmcOgQqFNIIDPoQqPoI?=
 =?us-ascii?q?bQgQBgScBEgE4gwGCYASCEYErGySBDwgBTRpij1wrgnqkUFgHA4J3iS6LQ4FYh?=
 =?us-ascii?q?RUrhFqeDJ8ygnqPFIQhAgQCBAUCFoFtgQpwcIM5CQk+FwINji0XiGKFRHQCATQ?=
 =?us-ascii?q?CBgEJAQEDCYw7XIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2DrAwDNjwBg/0HhJQpigQmEcIE5CoQ1kU8DihyQOIFoCwE?=
 =?us-ascii?q?BAQEBAQEBAQgBGAsMBAEBhEoCF4FXJjgTAhABAQYBAQEBAQYEAYZRDII4BQIDH?=
 =?us-ascii?q?wEGgwsBAQEEASIRGisMBAIBCBEEAQEBAgImAgICHwcJARUICAEBBA4FCBUEgwa?=
 =?us-ascii?q?CVQM9rxN2gTKEQAGBGIJfDYIlgQ4qhmcOgQqFNIIDPoQqPoIbQgQBgScBEgE4g?=
 =?us-ascii?q?wGCYASCEYErGySBDwgBTRpij1wrgnqkUFgHA4J3iS6LQ4FYhRUrhFqeDJ8ygnq?=
 =?us-ascii?q?PFIQhAgQCBAUCFoFtgQpwcIM5CQk+FwINji0XiGKFRHQCATQCBgEJAQEDCYw7X?=
 =?us-ascii?q?IERAQE?=
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="339294554"
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="95932776"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2AAAi/tkABH9NwAAAou7uA=
Date: Thu, 14 Jan 2021 18:46:14 +0000
In-Reply-To: <CAMKF1sqkmY0o1+2vi+q2r=COa5ye1qVYjhFE6jx_iWXw+BXycw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.165A2DA04A5EE2CE.3219@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpJIGJlbGlldmUgeW91IHNhaWQ6IGluaXQtc3lzdGVtLWhlbHBlcnMuLi4gDQpJIHdpbGwgdHJ5
IHRoZSBvdGhlciAoaW5pdC1zeXN0ZW0taGVscGVycy1zZXJ2aWNlKSBsYXRlciB0b2RheQ0KDQpU
aGFua3MsDQpTdGV2ZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBS
YWogPHJhai5raGVtQGdtYWlsLmNvbT4gDQpTZW50OiBUaHVyc2RheSwgSmFudWFyeSAxNCwgMjAy
MSAxOjM2IFBNDQpUbzogTW9uc2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVuLm1vbnNlZXNAYmFl
c3lzdGVtcy5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDog
UmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwNCg0KKioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBF
TUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3JpZ2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXph
dGlvbi4NCg0KDQpJIG11c3QgaGF2ZSBzYWlkIGFkZCBpbml0LXN5c3RlbS1oZWxwZXJzLXNlcnZp
Y2UNCg0KT24gV2VkLCBKYW4gMTMsIDIwMjEgYXQgNToxNyBBTSBNb25zZWVzLCBTdGV2ZW4gQyAo
VVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1z
LmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4NCj4gSSBhbSB1c2luZyBzeXN2
aW5pdC4uLg0KPg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNb25zZWVz
LCBTdGV2ZW4gQyAoVVMpDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxMywgMjAyMSA3OjE1
IEFNDQo+IFRvOiAnS2hlbSBSYWonIDxyYWoua2hlbUBnbWFpbC5jb20+DQo+IENjOiB5b2N0b0Bs
aXN0cy55b2N0b3Byb2plY3Qub3JnDQo+IFN1YmplY3Q6IFJFOiBbeW9jdG9dICN5b2N0byAja2Vy
bmVsDQo+DQo+DQo+IFdoZW4gSSBkbyB0aGlzIEkgYW0gc2VlaW5nICJOb3RoaW5nIFBST1ZJREVT
ICdpbml0LXN5c3RlbS1oZWxwZXJzJywsLA0KPg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0t
LQ0KPiBGcm9tOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0KPiBTZW50OiBUdWVzZGF5
LCBKYW51YXJ5IDEyLCAyMDIxIDY6MTMgUE0NCj4gVG86IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykg
PHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPg0KPiBDYzogeW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3RvXSAjeW9jdG8gI2tlcm5lbA0KPg0KPiAq
KiogV0FSTklORyAqKioNCj4gRVhURVJOQUwgRU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdpbmF0
ZXMgZnJvbSBvdXRzaWRlIG91ciBvcmdhbml6YXRpb24uDQo+DQo+DQo+IE9uIFR1ZSwgSmFuIDEy
LCAyMDIxIGF0IDEyOjA5IFBNIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxpc3RzLnlvY3Rv
cHJvamVjdC5vcmcgPHN0ZXZlbi5tb25zZWVzPWJhZXN5c3RlbXMuY29tQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmc+IHdyb3RlOg0KPiA+DQo+ID4NCj4gPg0KPiA+IFdvcmtpbmcgb24gemV1cyAzLjAu
NCwgZm9yIGFhcmNoNjQNCj4gPg0KPiA+DQo+ID4NCj4gPiBJICBoYXZlIGEgc3RhcnR1cCBzY3Jp
cHQgbWFraW5nIHVzZSBvZiDigJxzZXJ2aWNl4oCdIEhvdyBkbyBJIHByb3Blcmx5IGNvbmZpZ3Vy
ZSBpbiBzdXBwb3J0IGZvciB0aGUg4oCcc2VydmljZeKAnSBjb21tYW5kID8NCj4gPg0KPiA+IEkg
ZG8gbm90IGhhdmUgYW4gZXJyb3Igd2hlbiB3b3JraW5nIHVuZGVyIHJvY2tvLg0KPiA+DQo+ID4N
Cj4gPg0KPiA+IFRoZSBlcnJvciBzZWVuIGlzIDogICAgL2V0Yy9yYzUuZC9TMTVtb3VudG5mcy5z
aDogbGluZSA3MDogc2VydmljZTogY29tbWFuZCBub3QgZm91bmQNCj4gPg0KPiA+DQo+ID4NCj4g
PiBVc2FnZTogQCBsaW5lIDcwOiAg4oCcc2VydmljZSBycGNiaW5kIHN0YXR1cyA+L2Rldi9udWxs
4oCdDQo+ID4NCj4gPg0KPg0KPiBwZXJoYXBzIGp1c3QgYWRkIGluaXQtc3lzdGVtLWhlbHBlcnMg
dG8gSU1BR0VfSU5TVEFMTA0KPg0KPiA+DQo+ID4gVGhhbmtzLA0KPiA+DQo+ID4gU3RldmUNCj4g
Pg0KPiA+DQo+ID4NCj4gPg0KPg0KPiANCj4NCg==
