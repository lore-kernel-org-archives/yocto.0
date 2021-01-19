Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.11406.1611065289611483719
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 06:08:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=ez57clQI;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1611065289; x=1768745289;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=kL2qs060804y1hlzNBwBbSk2neRj5RARyU05zQC4ZKI=;
  b=ez57clQIbQmEiN13nIv4yxJrgcCVg5TeBn4/RGPFttSYS3iiMfA0ePji
   8lbQyQhwjAZ7q6+i0UodH1ReV5djpZRb+bQR1YIPVmDo6aeufUHlQbYlA
   YaX+ZEJmyP0+cr1j1Zc2P+t3CDjCF2nbAaCaLOUeBcZ1f4bEfedkHDKgY
   c=;
IronPort-PHdr: =?us-ascii?q?9a23=3AoHOJTxFRU7rXzqZ2zifEjZ1GYnF86YWxBRYc798d?=
 =?us-ascii?q?s5kLTJ76psq9bnLW6fgltlLVR4KTs6sC17OH9fm4EjFdqdbZ6TZeKcMKD0dEwe?=
 =?us-ascii?q?wt3CUYSPafDkP6KPO4JwcbJ+9lEGFfwnegLEJOE9z/bVCB6le77DoVBwmtfVEt?=
 =?us-ascii?q?fre9FYHdldm42P6v8JPPfQpImCC9YbRvJxmqsAndrMYbjZZmJ6or1xfFvnREdu?=
 =?us-ascii?q?RWyGh1IV6fgwvw6t2/8ZJ+8Slcoe4t+9JFXa7nY6k2ULtUASg8PWso/sPrrx7D?=
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
 =?us-ascii?q?mVWhnTZzy/zbIrHtGJrAI3fZnLruZ7px9k5RxQwuxt5F/Z1UEKsOIPfrV0/0s9?=
 =?us-ascii?q?zXEwE2PhSvw+biFNV9zoQeWX+TAqOBMKPdr1uI5uU3LuaQfoAVoyryK/0+5/Pq?=
 =?us-ascii?q?iXI0mkMRcbez0ZsRcn+0BO9pLF+Hbnr3gtYBCnsKsRQ7TOzxklGNTTlTZ3OqU6?=
 =?us-ascii?q?I94DE0Fp6mAJ/eSoyxmrCM0iW2EodIamxYCl2AC3bleoScV/cJci2SI8thkjIe?=
 =?us-ascii?q?VbimTo8szQqutBPkxLp5MOXU/DcUtZfk1Nhz/O3ciw899SdvAsuGyW6CUXp0n2?=
 =?us-ascii?q?MTRz8qwq9/pFd9xk2f3qh/hvxUDcZT6O9RUgcmKZ7cyPR3CtD1Wg3dYteJT02r?=
 =?us-ascii?q?QtGnATEqUtIx2MUCYkZ6G9q+khDD2DKqA6USl7yJGpM77r7c02L2J8ZnxHaVnJ?=
 =?us-ascii?q?Um2mMnSctGL2HuvrNl+wneT9rTkk6ZnrymM7wBxiLM+U+HzGyTrE9fTQh8WLnE?=
 =?us-ascii?q?WnZZYVHZ+5CxrFLFRKOpIbAmKRdaj9+FIbdNcsfuj1hNWLHkItuUKzagnGysAj?=
 =?us-ascii?q?6Mx6iQd8z7fG4B2z3HD0oJmBxV+myJY1sQHCCk9ij7Czp1GF/0JwvX7eRgpXXz?=
 =?us-ascii?q?ZQd08jrLJQU1zKa45BMTw/mbTege06kssi4ssCRvAFu4xJTdDN/W9FkpR7lVfd?=
 =?us-ascii?q?5ouAQP7mnerQEoe8X4d60=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2B+AwAs5wZg/0LhJQpiHgEBCxIMQIFEC?=
 =?us-ascii?q?4MhgTkKhDWRU5UOhUeBaAsBAQEBAQEBAQEIARgHEAQBAYRKAheBXSY3Bg4CEAE?=
 =?us-ascii?q?BBgEBAQEBBgQBhlEMgjgpAYMRAQEBBAEiEVEEAgEIEQQBAQECAiYCAgImChUIC?=
 =?us-ascii?q?AEBBAESCIMfsVZ2gTKKToEOKoZ3hkCCAz6EKj6CXQWBJwESAYM6gmAEgzUHgVZ?=
 =?us-ascii?q?qk2OlKwcDgneJL4tDhm0rhFqYIIVwLZNunS6EIQIEAgQFAhaBbIELcHCDOQlHF?=
 =?us-ascii?q?wINji0XiGKFRHQ3AgYBCQEBAwmLV4ERAQE?=
X-IPAS-Result: =?us-ascii?q?A2B+AwAs5wZg/0LhJQpiHgEBCxIMQIFEC4MhgTkKhDWRU5U?=
 =?us-ascii?q?OhUeBaAsBAQEBAQEBAQEIARgHEAQBAYRKAheBXSY3Bg4CEAEBBgEBAQEBBgQBh?=
 =?us-ascii?q?lEMgjgpAYMRAQEBBAEiEVEEAgEIEQQBAQECAiYCAgImChUICAEBBAESCIMfsVZ?=
 =?us-ascii?q?2gTKKToEOKoZ3hkCCAz6EKj6CXQWBJwESAYM6gmAEgzUHgVZqk2OlKwcDgneJL?=
 =?us-ascii?q?4tDhm0rhFqYIIVwLZNunS6EIQIEAgQFAhaBbIELcHCDOQlHFwINji0XiGKFRHQ?=
 =?us-ascii?q?3AgYBCQEBAwmLV4ERAQE?=
X-IronPort-AV: E=Sophos;i="5.79,359,1602547200"; 
   d="scan'208";a="340644532"
X-IronPort-AV: E=Sophos;i="5.79,359,1602547200"; 
   d="scan'208";a="176832422"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Topic: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Index: AdbuaJKKv64mRxX0TTiT7tjgC5xrOgALPEYAAApKU4A=
Date: Tue, 19 Jan 2021 14:08:06 +0000
In-Reply-To: <98759b01ae06675bb16dfbe4711fda63f230a0d0.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.165BA758E0747160.28895@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGF0IHdhcyBzZXQgOiBleHBvcnQgQkJfR0VORVJBVEVfTUlSUk9SX1RBUkJBTExTPTENCg0K
LS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVj
dC5vcmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBSaWNoYXJk
IFB1cmRpZQ0KU2VudDogVHVlc2RheSwgSmFudWFyeSAxOSwgMjAyMSA5OjAyIEFNDQpUbzogTW9u
c2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVuLm1vbnNlZXNAYmFlc3lzdGVtcy5jb20+OyB5b2N0
b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSAjeW9jdG8gI2tl
cm5lbCBCQl9HRU5FUkFURV9NSVJST1JfVEFSQkFMTFMNCg0KKioqIFdBUk5JTkcgKioqDQpFWFRF
Uk5BTCBFTUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3JpZ2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9y
Z2FuaXphdGlvbi4NCg0KDQpPbiBUdWUsIDIwMjEtMDEtMTkgYXQgMTM6NDIgKzAwMDAsIE1vbnNl
ZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgd3JvdGU6DQo+IFdo
ZW4gSSBnZW5lcmF0ZSBNSVJST1IgVEFSQkFMTFMgZm9yIG15IGJ1aWxkIGl0IGRvZXMgbm90IGFw
cGVhciB0byANCj4gZ2VuZXJhdGUgYWxsIHRoZSByZXF1aXJlZCB0YXJiYWxsc+KApg0KPiDCoA0K
PiBJIHRlc3RlZCBieSB0ZXN0ZWQgYnkgcmVidWlsZGluZyB3aXRoIOKAnEJCX05PX05FVFdPUksg
PSAx4oCdLCBhbmQgDQo+IHJlY2VpdmVkIHRoZSBmb2xsb3dpbmcgYnVpbGQgRXJyb3IgKHNlZSBi
ZWxvdykuDQo+IMKgDQo+IElzIHRoZXJlIHNvbWV0aGluZyBlbHNlIEkgbmVlZCB0byBkZWZpbmUg
dG8gZ2V0IGFsbCB0aGUgcmVxdWlyZWQgDQo+IHRhcmJhbGxzIGluIGJ1aWxkID8NCg0KRGlkIHlv
dSBzZXQ6DQoNCkJCX0dFTkVSQVRFX01JUlJPUl9UQVJCQUxMUyA9ICIxIg0KDQpJZiBub3QgeW91
IG5lZWQgdG8gc2V0IHRoYXQuIEFsc28sIHlvdSBtYXkgbmVlZCB0byByZWZldGNoIHRoaW5ncyBp
bml0aWFsbHkgdG8gZW5zdXJlIGFsbCB0aGUgcmlnaHQgdGhpbmdzIGFyZSBnZW5lcmF0ZWQgd2l0
aCB0aGF0IHNldC4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoNCg0KDQo=
