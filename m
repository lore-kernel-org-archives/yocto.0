Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.5278.1617792366794915057
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Apr 2021 03:46:09 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=Ia/lgyes;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1617792366; x=1775472366;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=yY9aSnViqGkzVJ265/KVbwW0bsOPeWqxPnZKEAcxxGg=;
  b=Ia/lgyesCQdLnSezjTGGHMMA8c5klJ7o/Nkir2GYKnsYy4TgUWDHCcXf
   ZTdV0aNS9uKLb8Sh2OA59I1ZIeh23pNIjJK/Vv0AC9EGlDHzJQR1kVBG3
   m+Vz0jr0MmhCNWMPjVsvEuglgm7zd57b0f2jcBDMXwm6zGDU8qz8vtqyh
   0=;
IronPort-SDR: D6u/zotBiJbm7Fsl5oQ9EKtSY9YqvhnsVN/oarEFIh50Cih3ziJCVIGl9oZ0Be6MNddGWcj5Dk
 /wi7lgyb7QfQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3ACSmjYx8Tl2e6PP9uWdm7ngc9DhMPi/DPJgcQr?=
 =?us-ascii?q?6AfoPdwSMyLwZ3uMQTl6Ol3ixeRBMOHsqMC0rWJ+Pi5EUU7or+5+EgYd5JNU?=
 =?us-ascii?q?xJXwe43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdF?=
 =?us-ascii?q?QviPgRpOOv1BpTSj8Oq3Oyu5pHfeQpFiCe5bL9oMRm7rwfcusYKjYd/N6081?=
 =?us-ascii?q?gbHrnxUdupM2GhmP0iTnxHy5sex+J5s7SFdsO8/+sBDTKv3Yb02QaRXAzo6P?=
 =?us-ascii?q?W814tbrtQTYQguU+nQcSGQWnQFWDAXD8Rr3Q43+sir+tup6xSmaIcj7Rq06V?=
 =?us-ascii?q?Di+86tmTgLjhTwZPDAl7m7Yls1wjLpaoB2/oRx/35XUa5yROPZnY6/RYc8WS?=
 =?us-ascii?q?W9HU81MVSJOH5m8YpMPAeQfIOhYs4fzqVgArRS8BAmjGOzhxTBTi3/qxqI60?=
 =?us-ascii?q?fgtHR3a0AEiGd8FrXTarM/yNKcXSe25wq7GzTLFb/NNxzjy9pPIfgg8qv+RQ?=
 =?us-ascii?q?bJ/b9TRxlcpFwjYkFibtIjpMD2I2OgIvWSQ8u1tVfmzi2E5tQF+vD6vyt0pi?=
 =?us-ascii?q?onOgIIV0U7L+jtiwIsuPtK3UlB0YcWkEZtLqyGVKY52Qtg4T250vyY6z6QLt?=
 =?us-ascii?q?JimdycF1Jop3QTQa+Cbc4eW+BLjUv6cLSp2in54fL+zmQi+/Ey8x+D4SMW50?=
 =?us-ascii?q?1VHoCRLnNXSqn0AygDe5MeHRPZ5/Eqv1yiD2hzT5+1aLk05iKXVJpojz7M2i?=
 =?us-ascii?q?5Edv0PDHirsl0X3iq+bbkUl+u+05OT7ZbXmvoWcN4h2ig7gLqsuhtazAeMiM?=
 =?us-ascii?q?ggBWWWQ5Oey1KX78EHkXLlGlPM7n6vDvJzHIckWqLS1Dg5U34o79hqzEy2q3?=
 =?us-ascii?q?dsXkHUdI19JYg+LgojvNlrTOv73F+2/jE6pkDpzwvDGOaDuDYvVI3jYlbfhY?=
 =?us-ascii?q?a5960lByAov1dxf54xbCrUGIP/rXE/xtNrYAQU8MwyvwOvqCMlx2p8DVW6VB?=
 =?us-ascii?q?K+WKrnevkSS6e0xOOmNZJQVuCrjJPgg/P7il2M2mVgYfaWx3JsXbm63Huh+L?=
 =?us-ascii?q?kmEfXbgmNkMHGUQsgYjSOHnhkeOXD9SanqqWqIz/DA7CIaoDYfZQYCthaSM3?=
 =?us-ascii?q?DynHpJIeGBJFFaMHW3td4WDXfcMczydLdF6kjEfTreuUZEu1QqutQ/h17poM?=
 =?us-ascii?q?O/U+jYCuZ3/09h14vXflQsu+jxsE8Sdz2aNQnl0n2MPWzA2wKd/rFd5yleCy?=
 =?us-ascii?q?qh4n+dYGcZT5vNOTgg6KZncz/RgC9D1WALOYMuGSEq8TtWhGzExQYF5/tkVf?=
 =?us-ascii?q?kwoG8m+lguRmG2uAqQJjPqaA5co9brG2Hr8LNo7zGzJk6Zmnl4tXswIKGu9m?=
 =?us-ascii?q?6Qsyg7IGoT1nlWFwqa2abwHjmmK8GaY0XHIrUZTTAloS6LHUHsDIEzMopP2o?=
 =?us-ascii?q?VLFRKOpTqkhKRZLmvKFf4hKZ9iht1xEDKP5MdaYYGK8nk+/AB+JwvWHa4+8K?=
 =?us-ascii?q?EsH2yCIQm0DlRse8G3CfTMiCzmspSr1RHxTLhOlKxf37eRgpXX9S0gy1AyHd?=
 =?us-ascii?q?GVr3reu6wUJiPmHDfgU2+RX628atzxoEQPljJrtAN2aql8kJf0ECe4=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3ApFzX3KmNDDghgln8Go6OIKRLnODpDfO/j2?=
 =?us-ascii?q?dD5ilNYBxZY6WkvuiUtrAyyQL0hDENWHsphNCHP+26TWnB8INuiLNwAZ6LZy?=
 =?us-ascii?q?OjnGezNolt4c/ZwzPmEzDj7eI178ZdWoBEIpnLAVB+5PyV3CCRGdwt2cTC1a?=
 =?us-ascii?q?iui/vXwXsFd3AWV4hL6QBlBgGHVmh/QwdbDZQ0faDsmvZvjTymZHgRc4CHFm?=
 =?us-ascii?q?AINtKz6OHjubDHRVo9BxAh4BSTlj/A0tSKcCSw8x8CX1p0sMwf2EfflQiR3N?=
 =?us-ascii?q?TGj9ie6jvxk1De9I5XntyJ8KoMOOWphtIOIjvhziaEDb4RIYGqhzw+rOGx5F?=
 =?us-ascii?q?tCqrClzntOTqYDjk/5RW2pvQDrnzDpzTdG0Q679XajnXDhrcblLQhKbfZpuI?=
 =?us-ascii?q?NDfhPVr2omsd1suZg7p16xiptNARvM2Bn6/tjDPisa73acnHxKq591s1VvFa?=
 =?us-ascii?q?MDdbkUloAE5UVTCptFJj7i8ZsqCvMGNrCc2N9mNXehK1zJtGhmx9KhGl4pGA?=
 =?us-ascii?q?2df0QEssuJlxBLgXFQ1SIjtY8it0ZF0Kh4Z4hP5uzCPKgtvqpJVNUqYaV0A/?=
 =?us-ascii?q?pEaderC1bKXQnHPAupUBbaPZBCH0iIh4/84b0z6u3vUocP1oEOlJPIV04dkm?=
 =?us-ascii?q?IuZUT0C4mr0IdQ+h7ABEWxNA6dj/121txcgPnRVbDrOSqMRBQFiM27ucgSBc?=
 =?us-ascii?q?XdRrK9I5RTD/j/LXb/GIpA0gHkMqMibkU2YYkwgJIWSliOqsXEJsnBrerAas?=
 =?us-ascii?q?veI7LrDHIlVwrEcz0+dQm2AP8FwlGgW3f+jhSUcWjqYFbD8ZV5F7Wf+fMSxo?=
 =?us-ascii?q?gLPohFqRMUlly9+8GOJVR5w+gLVXo7BImivrKwpGGw82qNwGNzJBJHA0ZT7p?=
 =?us-ascii?q?DnVWoin35LD2rENZI4//mPc2Fb23WKYiJlR8TNCQhFuhBc4qSsNaGdwigkFv?=
 =?us-ascii?q?OqOm+XlGEouXqPVpsQ85fzvPvNS9cdNNIGULY0PRjXHxZ18Dwa11trWUshfA?=
 =?us-ascii?q?vjMR/AzY+il4cZAenDccIUunbUHedk7VX2lQG8qckjSmBzZVWTeP/Spx0vST?=
 =?us-ascii?q?pSjkB26IkFjtO76G2SAGMineU1N0BNYmyLALRASB+IfplQh6qDQnAAcU6awT?=
 =?us-ascii?q?OdkB09YWzs6gEbgXHgNzSdfbXRDkNaoW0w6NemzHpkMmCRO1tqbHp3q5dwGA?=
 =?us-ascii?q?39ywJO+P7OYqq4yG2KbFQehukbLTHeeDMXSzkejOyfxVqQmDyYE28hyYhrNu?=
 =?us-ascii?q?vBDK47e7WW3n+2MoWHmeUHGPBTlawVfuzGo6sOUeiFfRWSIy69A+Q12xaNrn?=
 =?us-ascii?q?JgITJqshAf4IXV8Qyg6HL90G80APLULlgjT7YHI8uE52yhQ/qTyp12gd88oO?=
 =?us-ascii?q?PYCBS8VveWjaXMKzJTIBLapmC7C/slrp1Zpqo+vrp+FZuza0qB6FhXmBElaM?=
 =?us-ascii?q?vknkIXR6p2pK3bMoh0ZsoIZmZX+EEqmNnnFjpdjiXmRuslOVcjgH/QM4nXv/?=
 =?us-ascii?q?7Gqb8zDlaAowW1M1+F6CFZ9+rEWSzG1bNyMdNDHU1GLEwnrHJl96eecoeVDg?=
 =?us-ascii?q?OgfeRK5kC7PX+wa6U1ctnNJZwA6hJhp8iVlOqWfTfi0A/evTFnMrtDmlzXMv?=
 =?us-ascii?q?+aEUaJA6pU6NS0NlSHn7uy7MOyhDnxTyGna05wv/wxSWUAKsJZijcji4Ur0i?=
 =?us-ascii?q?+9Dqzvy3hV42dj3Q=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2BCAACcjG1g/0LBJQpaHAEBAQEBAQc?=
 =?us-ascii?q?BARIBAQQEAQFACYE3BQEBCwGDIYFBCoQ4kVMDhWWESYR5i0IUgWgLAQEBAQE?=
 =?us-ascii?q?BAQEBCAEdCwwEAQGEUAIXgWEmNgcOAgMBAQwBAQYBAQEBAQYEAYEDhVANgjg?=
 =?us-ascii?q?FAgMfAQaDXAEBAQEDASIRGisMBAIBBgINBAQBAQECAhEVAgICHwcJARUICAE?=
 =?us-ascii?q?BBA4FCBUEgkwFglUDPo5Omlk1d4EyGgJlgz8BgRiCWQ2CJ4EPKgGBZIULD4Z?=
 =?us-ascii?q?Ogg1BhDU+gh4rFwQBgRYICgESATgVE4JYgmAEgW8UEIFKJAVLQAEHAU4aZJE?=
 =?us-ascii?q?UgwSlZ1sHA4MLiWOLeoFnhS8sg02BPok6hXoDixiFF6B/gxaPGAwGN4RIAgQ?=
 =?us-ascii?q?CBAUCFoFbCTdccHCDOQlHFwKXMYVFcwIBNQIGAQkBAQMJiyZcgQ8BAQ?=
X-IPAS-Result: =?us-ascii?q?A2BCAACcjG1g/0LBJQpaHAEBAQEBAQcBARIBAQQEAQFAC?=
 =?us-ascii?q?YE3BQEBCwGDIYFBCoQ4kVMDhWWESYR5i0IUgWgLAQEBAQEBAQEBCAEdCwwEA?=
 =?us-ascii?q?QGEUAIXgWEmNgcOAgMBAQwBAQYBAQEBAQYEAYEDhVANgjgFAgMfAQaDXAEBA?=
 =?us-ascii?q?QEDASIRGisMBAIBBgINBAQBAQECAhEVAgICHwcJARUICAEBBA4FCBUEgkwFg?=
 =?us-ascii?q?lUDPo5Omlk1d4EyGgJlgz8BgRiCWQ2CJ4EPKgGBZIULD4ZOgg1BhDU+gh4rF?=
 =?us-ascii?q?wQBgRYICgESATgVE4JYgmAEgW8UEIFKJAVLQAEHAU4aZJEUgwSlZ1sHA4MLi?=
 =?us-ascii?q?WOLeoFnhS8sg02BPok6hXoDixiFF6B/gxaPGAwGN4RIAgQCBAUCFoFbCTdcc?=
 =?us-ascii?q?HCDOQlHFwKXMYVFcwIBNQIGAQkBAQMJiyZcgQ8BAQ?=
X-IronPort-AV: E=Sophos;i="5.82,203,1613433600"; 
   d="scan'208";a="362436718"
IronPort-SDR: Be+x7wM0cQS5kXijRkdwi9jTtm/ZUcOLDnD7Q1/cLENSUG3nIUe1R9U/j2EiD+elaXfGXbkaLB
 Idx0oNpPUW6O+Euu975WkUxLkVx/MFklNIyYzjel9T/lJPkofC0Ga480jn1XUJ8fY9F26UI3IO
 DSXyCn5M2zDPW2FXctokjeFJwJdxBcDyLfWZ649QuZEf7/MIYWfOZJk6vNf0g5iwij/vW2783r
 oBqCfgNgF/12fU8BV8L/1hTbsPKGO56yjR+Ok4Y1x+14uzthxTUDXDFkccqwUeX9+32RAP86ZI
 u+Y=
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #sdk -XILINX/vivado dependencies
Thread-Topic: [yocto] #yocto #sdk -XILINX/vivado dependencies
Thread-Index: AdcrHRaWJs9zKBXOQYSU/4F+r8qT6QAJ9YgAABVtJGA=
Date: Wed, 7 Apr 2021 10:45:04 +0000
In-Reply-To: <CAMKF1sp_TH9YPYcznhDZH6C9ma7zzrRMF7Rh4B3XH7_uLSRJFQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.16738D969A26125D.13244@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpObyB0aGUgdml2YWRvIG1vZHVsZSBzZXRzIHVwIGtleSB2YXJpYWJsZXMsIHRoZSBsaWIgcGF0
aCwgYW5kIHRoZSBpbmNsdWRlIHBhdGhzIGZvciBidWlsZGluZyBYaWxpbnggbG93IGxldmVsIGRy
aXZlcnMgYnVpbHQgaW50byBib290YXBwL2tlcm5lbC4uLg0KDQpJIG5lZWQgdG8gYmUgYWJsZSB0
byBpbmNsdWRlIHRoZXNlIGNvbXBvbmVudHMgaW4gYWN0dWFsIFNESyBidWlsZC4uLiANCg0KU3Rl
dmUNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEtoZW0gUmFqIDxyYWoua2hl
bUBnbWFpbC5jb20+IA0KU2VudDogVHVlc2RheSwgQXByaWwgNiwgMjAyMSA0OjI4IFBNDQpUbzog
TW9uc2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVuLm1vbnNlZXNAYmFlc3lzdGVtcy5jb20+DQpD
YzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lv
Y3RvICNzZGsgLVhJTElOWC92aXZhZG8gZGVwZW5kZW5jaWVzDQoNCkV4dGVybmFsIEVtYWlsIEFs
ZXJ0DQoNClRoaXMgZW1haWwgaGFzIGJlZW4gc2VudCBmcm9tIGFuIGFjY291bnQgb3V0c2lkZSBv
ZiB0aGUgQkFFIFN5c3RlbXMgbmV0d29yay4NCg0KUGxlYXNlIHRyZWF0IHRoZSBlbWFpbCB3aXRo
IGNhdXRpb24sIGVzcGVjaWFsbHkgaWYgeW91IGFyZSByZXF1ZXN0ZWQgdG8gY2xpY2sgb24gYSBs
aW5rLCBkZWNyeXB0L29wZW4gYW4gYXR0YWNobWVudCwgb3IgZW5hYmxlIG1hY3Jvcy4gIEZvciBm
dXJ0aGVyIGluZm9ybWF0aW9uIG9uIGhvdyB0byBzcG90IHBoaXNoaW5nLCBhY2Nlc3Mg4oCcQ3li
ZXJzZWN1cml0eSBPbmVTcGFjZSBQYWdl4oCdIGFuZCByZXBvcnQgcGhpc2hpbmcgYnkgY2xpY2tp
bmcgdGhlIGJ1dHRvbiDigJxSZXBvcnQgUGhpc2hpbmfigJ0gb24gdGhlIE91dGxvb2sgdG9vbGJh
ci4NCg0KDQp0aGVyZSBpcyBLRVJORUxfTU9EVUxFX0FVVE9MT0FEIHdoaWNoIGNvdWxkIGJlIHVz
ZWQgdG8gbG9hZCBtb2R1bGVzIG9uIGJvb3QsIGRvbid0IGtub3cgaWYgdGhhdCBzdWZmaWNlcyB0
byB3aGF0IHlvdSBuZWVkIGJ1dCB3b3J0aCBsb29raW5nIGludG8uDQoNCk9uIFR1ZSwgQXByIDYs
IDIwMjEgYXQgMTI6NDcgUE0gTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZyA8c3RldmVuLm1vbnNlZXM9YmFlc3lzdGVtcy5jb21AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZz4gd3JvdGU6DQo+DQo+DQo+DQo+IFdvcmtpbmcgd2l0aCB6ZXVzLCBhYXJjaDY0LCB3
aXRoIFhpbGlueCB2aXZhZG8gZGVwZW5kZW5jaWVz4oCmDQo+DQo+IEtlcmVubCBpbWFnZSBhbmQg
Ym9vdGFwcCBidWlsZCBhbmQgcnVuIGNvcnJlY3RseSwgbmVlZCB0byBiZSBhYmxlIHRvIA0KPiBi
dWlsZCBFWFQgU0RLLCwsDQo+DQo+DQo+DQo+IEhvdyBkbyBJIGluY29ycG9yYXRlIHRoZSBkZXBl
bmRlbmNpZXMgb2YgdGhlIGxvdyBsZXZlbCBYaWxpbnggRlBHQSBzdXBwb3J0ICAoaS5lLiDigJx2
aXZhZG/igJ0pIGludG8gdGhlIEV4dCBTREsgYnVpbGQgZW52ID8NCj4NCj4NCj4NCj4gSXMgdGhl
cmUgYSB3YXkgdG8gYnVpbGQgaW4gc3VwcG9ydCBzbyB0aGF0IHRoZSDigJxtb2R1bGUgbG9hZOKA
nSBjb21tYW5kIHdvdWxkIGJlIHVzYWJsZSBmcm9tIHRoZSDigJwuY29uZuKAnSBvciAgdGhlIGVu
di1zZXR1cCBzY3JpcHQsIChpLmUuIOKAnG1vZHVsZSBsb2FkIHZpdmFkb+KApuKAnSA/DQo+DQo+
DQo+DQo+IFRoYW5rcywNCj4NCj4gU3RldmUNCj4NCj4NCj4NCj4NCj4gDQo+DQo=
