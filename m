Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.19909.1600254410734295230
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Sep 2020 04:06:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=LqjGKvOP;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1600254410; x=1757934410;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=5CmYncFeG4C4i+oy3PucsTmmTAc9/08AYwqBOdCA1OI=;
  b=LqjGKvOP/3Q1vfJnQhZ9rqC6wGu2tXbart/frtZHCyjbIauP0uiqLnFo
   lcIJJkw9WpppZlw3pK0BSLYImv05w9MWPetBInE2mX1EWLfo2c/SAkJm8
   /QvDF7qUoczD+kkm9lcL9JPLIkvzE/nB1//ehILFDVwORAgyVqFiMZxLs
   Q=;
IronPort-PHdr: =?us-ascii?q?9a23=3A5+B5LBxWBGvZYFjXCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?0useIvad9pjvdHbS+e9qxAeQG9mCtLQc0aGN7+igATVGvc/f9ihaMdRlbFwssY?=
 =?us-ascii?q?0uhQsuAcqIWwXQDcXBSGgEJvlET0Jv5HqhMEJYS47UblzWpWCuv3ZJQk2sfQV6?=
 =?us-ascii?q?Kf7oFYHMks+5y/69+4HJYwVPmTGxfa5+IA+5oAnMtMQam5duJrg+xhbHrXZDZu?=
 =?us-ascii?q?BayX91KV6JkBvw+8a98IR//yhMvv4q6tJNX7j9c6kkV7JTES4oM3oy5M3ltBnD?=
 =?us-ascii?q?SRWA634BWWgIkRRGHhbI4gjiUpj+riX1uOx92DKHPcLtVrA7RS6i76ZwRxD2ji?=
 =?us-ascii?q?oMKiM0/3vWisx0i6JbvQ6hqhliyIPafI2ZKPxzdb7GcNgEWWROQNpeVy1ZAoO9?=
 =?us-ascii?q?cYQPCfYBPf1FpIX5vlcCsAeyCRWpCO7p1zRGhGL53bci3uohDw/IwRAgEdwNvn?=
 =?us-ascii?q?Tartr1NbsdX++6w6TT0TXMdPFW1Svh5ITUcB0sp+yHU7JqccrWzEkiDw3JgFKX?=
 =?us-ascii?q?qYzjJDOayPoCs3OD4+F9SOyvl3Aoqx9vrTip28whlJTCioYbxV7Z8Cl1zps+KN?=
 =?us-ascii?q?qjSE5nf9GkDoVftyeAO4tzRcMiRXpotzgkxb0dopO0ZzIFx4o8xx/fcPyHb5aH?=
 =?us-ascii?q?4hf4VOqLPTh4g3dldau5ih2v/keu1vfyWdOo0FZWsCVFiN/Mu2gQ2xLd98SKTu?=
 =?us-ascii?q?Vx8lml1DuT0w3f9OJJLEM6m6TVNZIs3qM9m4Ycv0rDGiL7mkv4gLGKe0gk5OSl?=
 =?us-ascii?q?5PnqbLriq5KeMYJ/lw/wMqMrmsOlAOQ4NBADXmic+eugyL3j+lX5QK9Njv00jK?=
 =?us-ascii?q?bWrIzaKd4cpq6jDA9Y1Jso5RWnDzq+zdgUgWMLIVxHdR6dkYTlJVHDLOr5APq/?=
 =?us-ascii?q?m1igjStny+rJM7DuGJnAKmLPnbTjcLt79kVS0hA8zcpF6JJRErwBJfXzVVLvu9?=
 =?us-ascii?q?HAFR85NhC0w/7gCNVgyoMSQWKPDbGdMKPVqVKI+u0uLPOKZI8QozbwL+Qp6+Ly?=
 =?us-ascii?q?gXMkg1Mde7Om0YEMZ3+iAPtmOEWYYWHwgtgfFGcKpRAyQ/DtiF2HSTJTZnCyUL?=
 =?us-ascii?q?wg5jwjFY6qEZ3PS46vjbCbwiu3AJ1banpHB12MCXvocp+LW/YIaCKcOM9hlTkE?=
 =?us-ascii?q?WKC6S489yx6uqhH1y7x9IurR/S0Ys4nj28Zr6O3Ijhw97iZ7ANqG02CNVGF0gn?=
 =?us-ascii?q?0HRzot3KxlvUN9zVKD3bBig/NEDdxT++9JUgAiOJ/cyOx1F8zyWgXac9eNSVam?=
 =?us-ascii?q?WcmmASorQtMxxN8Bf1p9G9K6jhDZ2CqqAaEamKCXBJAu9aLcxXfxdI5AzW3b3v?=
 =?us-ascii?q?whk0U+WZkIcmmnnbJksRnUDJLOi1+elauhaeIbxiGK+yCSymGSuwZFVhVtW/b4?=
 =?us-ascii?q?W2sCbHfbvcis5l/eV6T8TvMjMxBd0oiTLaBWbcXzildLT+ulP87RJG32imC7GR?=
 =?us-ascii?q?HP27WXcYC5R2JI/yXQDQA+mgJbqWyPN049Biqki23bBT1qU1noZhW/3/N5rSbx?=
 =?us-ascii?q?a0gy1AyHdAkp7Ka45BMTzdfUC84on/hM7Dw9pit5GhC42NTNBtebjwBocb5Nes?=
 =?us-ascii?q?8w5UwB3mXc4V8udqe8Jrxv0wZNOz98uFnjglAuUt1N?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BCAwBX8WFf/0HhJQpfHQEBAQEJARIBB?=
 =?us-ascii?q?QUBQIFPgxqBNAqEL5E6ig2QKIFpCwEBAQEBAQEBAQgBGAsMBAEBhEsCF4IMJTg?=
 =?us-ascii?q?TAhABAQYBAQEBAQYEAYZIDII3BQIDHwEGgwsBAQEBAgEBIhEaKwwEAgEIEQQBA?=
 =?us-ascii?q?QECAiMDAgICHwcJARQBCAgBAQQOBQgVBIMGgksDDi+0O3aBMoQ7AYEXgkUNgiQ?=
 =?us-ascii?q?JAYEEKoZNDYEDhyw+hCE+ghorFwQBgScBEgE4gwCCYASTJqMjUQcDgmWIc4p/g?=
 =?us-ascii?q?UuEfiqEMJxJhW2XX4JnkioCBAIEBQIVgWuBCnBwgzkJRxcCDZckhUJ0AgE0AgY?=
 =?us-ascii?q?BCQEBAwmMGy0qXIERAQE?=
X-IPAS-Result: =?us-ascii?q?A2BCAwBX8WFf/0HhJQpfHQEBAQEJARIBBQUBQIFPgxqBNAq?=
 =?us-ascii?q?EL5E6ig2QKIFpCwEBAQEBAQEBAQgBGAsMBAEBhEsCF4IMJTgTAhABAQYBAQEBA?=
 =?us-ascii?q?QYEAYZIDII3BQIDHwEGgwsBAQEBAgEBIhEaKwwEAgEIEQQBAQECAiMDAgICHwc?=
 =?us-ascii?q?JARQBCAgBAQQOBQgVBIMGgksDDi+0O3aBMoQ7AYEXgkUNgiQJAYEEKoZNDYEDh?=
 =?us-ascii?q?yw+hCE+ghorFwQBgScBEgE4gwCCYASTJqMjUQcDgmWIc4p/gUuEfiqEMJxJhW2?=
 =?us-ascii?q?XX4JnkioCBAIEBQIVgWuBCnBwgzkJRxcCDZckhUJ0AgE0AgYBCQEBAwmMGy0qX?=
 =?us-ascii?q?IERAQE?=
X-IronPort-AV: E=Sophos;i="5.76,432,1592870400"; 
   d="scan'208";a="310260369"
X-IronPort-AV: E=Sophos;i="5.76,432,1592870400"; 
   d="scan'208";a="85303255"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #sdk - meta-clang undefined references
Thread-Topic: [yocto] #yocto #sdk - meta-clang undefined references
Thread-Index: AdaLmOq5qmQi1ELyRo6IcXbt7Io+kQALJ08AABQBsfA=
Date: Wed, 16 Sep 2020 11:06:26 +0000
In-Reply-To: <CAMKF1sohUwxX+-7953QE29_HOFTfvuL6o7_d9TMvjBnSN3QW1A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.16353EE92958C5D5.13893@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQoNCkl0IHNob3VsZCBiZSBsaW5raW5nIGluIGxpYmNsYW5nICwgSSB3aWxsIHZhbGlkYXRlLi4u
DQoNCk5vdGUgcGVyZm9ybWluZyAnbm0nIG9uIGxpYmNsYW5nIGFwcGVhciB0byBzaG93IHRoZSBt
YWpvcml0eSBwcmVzZW50Li4uDQoNClF1ZXN0aW9uOiBpZiBJIG5lZWRlZCB0byBpbmNsdWRlIGEg
bGlicmFyeSwgd2hhdC9ob3cgd291bGQgSSBtb2RpZnkgYSByZWNpcGUgdW5kZXIgWW9jdG8gdG8g
YmUgc3VyZSB0byBpbmNsdWRlL2xpbmsgaW4gdGhlIGxpYnJhcnkgPw0KDQpUaGFua3MsDQpTdGV2
ZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogS2hlbSBSYWogW21haWx0bzpy
YWoua2hlbUBnbWFpbC5jb21dIA0KU2VudDogVHVlc2RheSwgU2VwdGVtYmVyIDE1LCAyMDIwIDU6
MDYgUE0NClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2ZW4ubW9uc2Vlc0BiYWVzeXN0
ZW1zLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTog
W3lvY3RvXSAjeW9jdG8gI3NkayAtIG1ldGEtY2xhbmcgdW5kZWZpbmVkIHJlZmVyZW5jZXMNCg0K
KioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBFTUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3JpZ2luYXRl
cyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXphdGlvbi4NCg0KDQpPbiBUdWUsIFNlcCAxNSwgMjAy
MCBhdCAxMjo1NiBQTSBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnIDxzdGV2ZW4ubW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qu
b3JnPiB3cm90ZToNCj4NCj4NCj4NCj4gSSBhbSBidWlsZGluZyBtZXRhLWNsYW5nIChzdW1vIGJh
c2VkIDYuMC4xKSwgd2l0aCBjbWFrZSAoMy44LjIpLCBhbGwgDQo+IHVuZGVyIGEgc3RhbmRhcmQg
U0RLIOKAnHJvY2tvIGJhc2Vk4oCdICgyLjQuMSnigKYNCj4NCj4NCj4NCj4gQXJlIHRoZSBmb2xs
b3dpbmcgcm91dGluZXMgYWNjZXNzaWJsZS9zdXBwb3J0ZWQgdW5kZXIgbWV0YS1jbGFuZyA/DQo+
DQo+DQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkRpYWdu
b3N0aWNJRHM6On5EaWFnbm9zdGljSURzKCknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJl
ZmVyZW5jZSB0byBgY2xhbmc6OlRleHREaWFnbm9zdGljUHJpbnRlcjo6VGV4dERpYWdub3N0aWNQ
cmludGVyKGxsdm06OnJhd19vc3RyZWFtJiwgY2xhbmc6OkRpYWdub3N0aWNPcHRpb25zKiwgYm9v
bCknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkRpYWdu
b3N0aWNzRW5naW5lOjp+RGlhZ25vc3RpY3NFbmdpbmUoKScNCj4NCj4gbGliZ2JlLnNvOiB1bmRl
ZmluZWQgcmVmZXJlbmNlIHRvIGBjbGFuZzo6Q29tcGlsZXJJbnZvY2F0aW9uOjpDcmVhdGVGcm9t
QXJncyhjbGFuZzo6Q29tcGlsZXJJbnZvY2F0aW9uJiwgY2hhciBjb25zdCogY29uc3QqLCBjaGFy
IGNvbnN0KiBjb25zdCosIGNsYW5nOjpEaWFnbm9zdGljc0VuZ2luZSYpJw0KPg0KPiBsaWJnYmUu
c286IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGNsYW5nOjpDb21waWxlckludm9jYXRpb25CYXNl
Ojp+Q29tcGlsZXJJbnZvY2F0aW9uQmFzZSgpJw0KPg0KPiBsaWJnYmUuc286IHVuZGVmaW5lZCBy
ZWZlcmVuY2UgdG8gYGNsYW5nOjpQQ0hDb250YWluZXJPcGVyYXRpb25zOjpQQ0hDb250YWluZXJP
cGVyYXRpb25zKCknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xh
bmc6OkNvbXBpbGVySW5zdGFuY2U6OmNyZWF0ZURpYWdub3N0aWNzKGNsYW5nOjpEaWFnbm9zdGlj
Q29uc3VtZXIqLCBib29sKScNCj4NCj4gbGliZ2JlLnNvOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRv
IGBjbGFuZzo6RGlhZ25vc3RpY3NFbmdpbmU6OkRpYWdub3N0aWNzRW5naW5lKGxsdm06OkludHJ1
c2l2ZVJlZkNudFB0cjxjbGFuZzo6RGlhZ25vc3RpY0lEcz4sIGNsYW5nOjpEaWFnbm9zdGljT3B0
aW9ucyosIGNsYW5nOjpEaWFnbm9zdGljQ29uc3VtZXIqLCBib29sKScNCj4NCj4gbGliZ2JlLnNv
OiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBjbGFuZzo6Q29kZUdlbk9wdGlvbnM6OkNvZGVHZW5P
cHRpb25zKCknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6
OkNvbXBpbGVySW5zdGFuY2U6On5Db21waWxlckluc3RhbmNlKCknDQo+DQo+IGxpYmdiZS5zbzog
dW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xhbmc6OkNvbXBpbGVySW5zdGFuY2U6OkNvbXBpbGVy
SW5zdGFuY2Uoc3RkOjpzaGFyZWRfcHRyPGNsYW5nOjpQQ0hDb250YWluZXJPcGVyYXRpb25zPiwg
Y2xhbmc6Ok1lbW9yeUJ1ZmZlckNhY2hlKiknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJl
ZmVyZW5jZSB0byBgY2xhbmc6OkVtaXRMTFZNT25seUFjdGlvbjo6RW1pdExMVk1Pbmx5QWN0aW9u
KGxsdm06OkxMVk1Db250ZXh0KiknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5j
ZSB0byBgY2xhbmc6OkNvbXBpbGVySW5zdGFuY2U6OkV4ZWN1dGVBY3Rpb24oY2xhbmc6OkZyb250
ZW5kQWN0aW9uJiknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJlZmVyZW5jZSB0byBgY2xh
bmc6OkNvbXBpbGVySW52b2NhdGlvbkJhc2U6OkNvbXBpbGVySW52b2NhdGlvbkJhc2UoKScNCj4N
Cj4gbGliZ2JlLnNvOiB1bmRlZmluZWQgcmVmZXJlbmNlIHRvIGBjbGFuZzo6Q29tcGlsZXJJbnN0
YW5jZTo6c2V0SW52b2NhdGlvbihzdGQ6OnNoYXJlZF9wdHI8Y2xhbmc6OkNvbXBpbGVySW52b2Nh
dGlvbj4pJw0KPg0KPiBsaWJnYmUuc286IHVuZGVmaW5lZCByZWZlcmVuY2UgdG8gYGNsYW5nOjpD
b2RlR2VuQWN0aW9uOjp0YWtlTW9kdWxlKCknDQo+DQo+IGxpYmdiZS5zbzogdW5kZWZpbmVkIHJl
ZmVyZW5jZSB0byBgY2xhbmc6OkRpYWdub3N0aWNJRHM6OkRpYWdub3N0aWNJRHMoKScNCj4NCg0K
YXJlIHlvdSBsaW5raW5nIHRoaXMgbGlicmFyeSB3aXRoIGxpYmNsYW5nID8gc2Vjb25kbHksIGFs
c28gY2hlY2sgdGhhdCBpdHMgbm90IGVtaXR0aW5nIGJ1bmNoIG9mIGxpYnJhcmllcyB3aGljaCBu
ZWVkcyB0byB0aGVuIGluZGl2aWR1YWxseSBsaW5rZWQNCg0KPg0KPg0KPiB0aGFua3MsDQo+DQo+
IFN0ZXZlDQo+DQo+IA0K
