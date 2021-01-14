Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.4584.1610643566915329669
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jan 2021 08:59:29 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@baesystems.com header.s=trusted01 header.b=LGpRol+3;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1610643566; x=1768323566;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=t5QU92S3KL48DVDuv5HxjlSngFtZ0EBqnnF+2xfmj4c=;
  b=LGpRol+3bwR4j/LrgNJYn3szsvpnTSL5oW0cGpFiNfCh0fRlsnaEZly7
   QSHSlb0ObR27hRhqisqEQ25A1ifPGs8MR8HHOWwxi3okJZ9sA1+0tb8K5
   S/htmA5KOG2xuq8mbku0fM6xJA8rPjxX4aEeRpbCASqI8NMoTP68i6srP
   s=;
IronPort-PHdr: =?us-ascii?q?9a23=3AOpl9GBzqMVXCba3XCy+O+j09IxM/srCxBDY+r6Qd?=
 =?us-ascii?q?0uoeKPad9pjvdHbS+e9qxAeQG9mCurQc06GP7OigATVGvc/e9ihaMdRlbFwssY?=
 =?us-ascii?q?0uhQsuAcqIWwXQDcXBSGgEJvlET0Jv5HqhMEJYS47UblzWpWCuv3ZJQk2sfQV6?=
 =?us-ascii?q?Kf7oFYHMks+5y/69+4HJYwVPmTGxfa5+IA+5oAnMssQam5duJro+xhfUoHZDZu?=
 =?us-ascii?q?BayX91KV6JkBvw+8W98IR//yhMvv4q6tJNX7j9c6kkV7JTES4oM3oy5M3ltBnD?=
 =?us-ascii?q?SRWA634BWWgIkRRGHhbI4gjiUpj+riX1uOx92DKHPcLtVrA7RS6i76ZwRxD2ji?=
 =?us-ascii?q?oMKiM0/3vWisx0i6JbvQ6hqhliyIPafI2ZKPxzdb7GcNgEWWROQNpeVy1ZAoO9?=
 =?us-ascii?q?cYQPCfYBPf1FpIX5vlcCsAeyCRWpCO7p1zRGhGL53bci3uohDw/IwRAgEdwNvn?=
 =?us-ascii?q?Tartr1NbsdX++6w6TT0TXMdPFW1Svh5ITUcB0sp+yHU7JqccrWzEkiDw3JgFKX?=
 =?us-ascii?q?qYzjJDOayPoCs3OD4+F9SOyvl3Aoqx9vrTip28whlJTCioYbxV7Z8Cl1zps+KN?=
 =?us-ascii?q?qjSE5nf9GkDoVftyeAO4tzRcMiRXpotzgkxb0dopO0ZzIFx4o8xx/fcPyHb5aH?=
 =?us-ascii?q?4hf4VOqLPTh4g3dldau5ih2v/keu1vfyWdOo0FZWsCVFiN/Mu2gQ2xLd98SKTu?=
 =?us-ascii?q?Vx8lml1DuT0w3f9OJJLEM6m6TVNZIs3qM9m4Ycv0rDGiL7mkv4gLGKe0gk5OSl?=
 =?us-ascii?q?5PnqbLriq5KeMYJ/lw/wMqMrmsOlAOQ4NBADXmic+eugyL3j+lX5QK9Njv00jK?=
 =?us-ascii?q?bWrIzaKd4cpq6jDA9Y1Jso5RWnDzq+zdgUgWMLIVxHdR6dkYTlJVHDLOr5APq+?=
 =?us-ascii?q?m1igjStny+rJM7DuGJnAIWLPnKrhcLt79kVS0hA8zcpF6JJRErwBJfXzVVLvu9?=
 =?us-ascii?q?HAFR85NhC0w/7gCNVgyoMSQWKPDbGdMKPVqVKH+vggI/KQa48QozbwL/wo6v3y?=
 =?us-ascii?q?gXMng1Mde7Om0YEMZ3+iAPtmOEWYYWHwgtgfFGcKpRAyQ/DtiF2HSTJTZnCyUL?=
 =?us-ascii?q?wg5jwjFY6qEZ3PS46vjbCbwiu3AJ1banpHB12NCXvocp+LW/YIaCKcOM9hlTkE?=
 =?us-ascii?q?WKC6S489yx6uqhH1y7x9IurR/S0Ys4nj28Zr6O3Ijhw97iZ7ANqG02CNVGF0gn?=
 =?us-ascii?q?0HRzot3KxlvUN9zVKD3bBig/NEDdxT++9JUgAiOJ/cyOx1F8zyWgXac9eNSVam?=
 =?us-ascii?q?WcmmASorQtMxxN8Bf1p9G9K6jhDZ2CqqAaEamKCXBJAu9aLcxXfxdI5BzCPl1K?=
 =?us-ascii?q?Qkx2MvQIMbL2SkwK1/+g37CIvAkkHfnKGvI/cyxinIoS2mymyVsUxDFEZLTajb?=
 =?us-ascii?q?UHZXTQOWkO+4rAuWVKOjF7khdA5Gz9WPJ7BiYNTklkRdWPrmI5LVZGfnyDT4Pg?=
 =?us-ascii?q?qB2r7ZNNmiQG4axiiITRFcyw0=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2DmAwCodgBg/0LhJQpiHgEBCxIMQIRwg?=
 =?us-ascii?q?TkKhDWRTgOKHJA4gWgLAQEBAQEBAQEBCAEYBxAEAQGESgIXgVcmOBMCEAEBBgE?=
 =?us-ascii?q?BAQEBBgQBhlEMgjgpAYMRAQEBAwEBIhFFDAQCAQgRBAEBAQICJgICAh8HChUIC?=
 =?us-ascii?q?AIEDgUIgx+CVQMOrzJ2gTKFWYJVDYIlgQ4qhnWBCoU0ggM+hCo+ghtCBAGBJwE?=
 =?us-ascii?q?SATiDAYJgBIM8RBsCdW6QOIMloyGBL1gHA4J3iS6LQ4FYhRUrhFqTS4pBoiyPF?=
 =?us-ascii?q?IQhAgQCBAUCFoFtgQpwcIM5CUcXAg2XJoVEdAIBNAIGAQkBAQMJjReBEQEB?=
X-IPAS-Result: =?us-ascii?q?A2DmAwCodgBg/0LhJQpiHgEBCxIMQIRwgTkKhDWRTgOKHJA?=
 =?us-ascii?q?4gWgLAQEBAQEBAQEBCAEYBxAEAQGESgIXgVcmOBMCEAEBBgEBAQEBBgQBhlEMg?=
 =?us-ascii?q?jgpAYMRAQEBAwEBIhFFDAQCAQgRBAEBAQICJgICAh8HChUICAIEDgUIgx+CVQM?=
 =?us-ascii?q?OrzJ2gTKFWYJVDYIlgQ4qhnWBCoU0ggM+hCo+ghtCBAGBJwESATiDAYJgBIM8R?=
 =?us-ascii?q?BsCdW6QOIMloyGBL1gHA4J3iS6LQ4FYhRUrhFqTS4pBoiyPFIQhAgQCBAUCFoF?=
 =?us-ascii?q?tgQpwcIM5CUcXAg2XJoVEdAIBNAIGAQkBAQMJjReBEQEB?=
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="339264002"
X-IronPort-AV: E=Sophos;i="5.79,347,1602547200"; 
   d="scan'208";a="176453141"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel
Thread-Topic: [yocto] #yocto #kernel
Thread-Index: AdbpHa4uv+X65smLT56sbWhYtNALIwARKvQAABDJg2AAAi/tkAAMtERAACukENAAAaWMUA==
Date: Thu, 14 Jan 2021 16:59:24 +0000
In-Reply-To: <MADEUP.165A25E53C911888.8149@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Message-ID: <MADEUP.165A27CAEC471216.8149@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

S2hlbToNCg0KSSBtYXkgaGF2ZSBzdHVtYmxlZCB1cG9uIGl0LCBpdCBhcHBlYXJzIEkgaGFkIHRv
IGFkZCBhIERFUEVORFMgKz0gImluZXR1dGlscyIgdG8gZml4IHRoZSBpc3N1ZSBvbiBpbmNsdWRp
bmcgaW5ldHV0aWxzLXJzaC4uLg0KDQpXaGF0IGRvZXMgImluaXQtc3lzdGVtLWhlbHBlcnMiIGRl
cGVuZCBvbiA/DQoNClRoYW5rcywNClN0ZXZlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQpGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIDx5b2N0b0BsaXN0cy55b2N0b3By
b2plY3Qub3JnPiBPbiBCZWhhbGYgT2YgTW9uc2VlcywgU3RldmVuIEMgKFVTKSB2aWEgbGlzdHMu
eW9jdG9wcm9qZWN0Lm9yZw0KU2VudDogVGh1cnNkYXksIEphbnVhcnkgMTQsIDIwMjEgMTE6MjQg
QU0NClRvOiBLaGVtIFJhaiA8cmFqLmtoZW1AZ21haWwuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dICN5b2N0byAja2VybmVsDQoNCioq
KiBXQVJOSU5HICoqKg0KRVhURVJOQUwgRU1BSUwgLS0gVGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMg
ZnJvbSBvdXRzaWRlIG91ciBvcmdhbml6YXRpb24uDQoNCg0KDQpLaGVtOg0KDQpJIGFwcGVhciB0
byBoYXZlIGEgc2ltaWxhciBpc3N1ZSBidWlsZGluZyBpbiBpbmV0dXRpbHMtcnNoIGFuZCBpbmV0
dXRpbHMtcnNoZC4uLg0KDQpXaGVuIGFkZGVkIHRvIElNQUdFX0lOU1RBTEwsIChJTUFHRV9JTlNU
QUxMICs9ICIgaW5ldHV0aWxzLXJzaCBpbmV0dXRpbHMtcnNoZCIpDQoNCkkgYWxzbyBnZXQgYW4g
IkVycm9yOiBOb3RoaW5nIFBST1ZJREVTIC4uLiINCg0KSG93IGRvIHlvdSBwdWxsIGluIHZhcmlv
dXMgbmV0IHV0aWxpdHkgY29tbWFuZHMgKGV4LiBybG9naW5kKSB3aXRob3V0IGluZXR1dGlscy1y
c2ggYW5kIGluZXR1dGlscy1yc2hkID8NCg0KSSBkbyBub3Qgc2VlIGFueXRoaW5nIGluIHRoZSBt
aWdyYXRpb24gZ3VpZGVzIG9uIHRoaXMuLi4NCg0KQW55IGlkZWFzID8NCg0KSSBhbSB1c2luZyB6
ZXVzIDMuMC40IGFuZCBidWlsZGluZyBhYXJjaDY0IFhpbGlueCBiYXNlZCBpbWFnZS4uLg0KDQpT
dGV2ZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogTW9uc2VlcywgU3RldmVu
IEMgKFVTKSANClNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxMywgMjAyMSAyOjI1IFBNDQpUbzog
S2hlbSBSYWogPHJhai5raGVtQGdtYWlsLmNvbT4NCkNjOiB5b2N0b0BsaXN0cy55b2N0b3Byb2pl
Y3Qub3JnDQpTdWJqZWN0OiBSRTogW3lvY3RvXSAjeW9jdG8gI2tlcm5lbA0KDQoNCktoZW06DQoN
CkkgYW0gaGF2aW5nIGlzc3VlcyBhdHRlbXB0aW5nIHRvIHJlc29sdmUgdGhpcyBpc3N1ZS4uLiAN
CkkgYW0gc2VlaW5nIGl0IGluIG15IGJvb3Rsb2FkZXIuLi4NCg0KQ2FuIHlvdSBwb3NzaWJseSBw
b2ludCBtZSBpbiB0aGUgcmlnaHQgZGlyZWN0aW9uID8NCg0KVGhhbmtzLg0KU3RldmUNCg0KLS0t
LS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5v
cmcgPHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBNb25zZWVzLCBT
dGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnDQpTZW50OiBXZWRuZXNkYXks
IEphbnVhcnkgMTMsIDIwMjEgODoxNyBBTQ0KVG86IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5j
b20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0
b10gI3lvY3RvICNrZXJuZWwNCg0KKioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBFTUFJTCAtLSBU
aGlzIG1lc3NhZ2Ugb3JpZ2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXphdGlvbi4NCg0K
DQpJIGFtIHVzaW5nIHN5c3Zpbml0Li4uDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIA0KU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDEz
LCAyMDIxIDc6MTUgQU0NClRvOiAnS2hlbSBSYWonIDxyYWoua2hlbUBnbWFpbC5jb20+DQpDYzog
eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUkU6IFt5b2N0b10gI3lvY3Rv
ICNrZXJuZWwNCg0KDQpXaGVuIEkgZG8gdGhpcyBJIGFtIHNlZWluZyAiTm90aGluZyBQUk9WSURF
UyAnaW5pdC1zeXN0ZW0taGVscGVycycsLCwNCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
CkZyb206IEtoZW0gUmFqIDxyYWoua2hlbUBnbWFpbC5jb20+IA0KU2VudDogVHVlc2RheSwgSmFu
dWFyeSAxMiwgMjAyMSA2OjEzIFBNDQpUbzogTW9uc2VlcywgU3RldmVuIEMgKFVTKSA8c3RldmVu
Lm1vbnNlZXNAYmFlc3lzdGVtcy5jb20+DQpDYzogeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9y
Zw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwNCg0KKioqIFdBUk5JTkcgKioq
DQpFWFRFUk5BTCBFTUFJTCAtLSBUaGlzIG1lc3NhZ2Ugb3JpZ2luYXRlcyBmcm9tIG91dHNpZGUg
b3VyIG9yZ2FuaXphdGlvbi4NCg0KDQpPbiBUdWUsIEphbiAxMiwgMjAyMSBhdCAxMjowOSBQTSBN
b25zZWVzLCBTdGV2ZW4gQyAoVVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIDxzdGV2ZW4u
bW9uc2Vlcz1iYWVzeXN0ZW1zLmNvbUBsaXN0cy55b2N0b3Byb2plY3Qub3JnPiB3cm90ZToNCj4N
Cj4NCj4NCj4gV29ya2luZyBvbiB6ZXVzIDMuMC40LCBmb3IgYWFyY2g2NA0KPg0KPg0KPg0KPiBJ
ICBoYXZlIGEgc3RhcnR1cCBzY3JpcHQgbWFraW5nIHVzZSBvZiDigJxzZXJ2aWNl4oCdIEhvdyBk
byBJIHByb3Blcmx5IGNvbmZpZ3VyZSBpbiBzdXBwb3J0IGZvciB0aGUg4oCcc2VydmljZeKAnSBj
b21tYW5kID8NCj4NCj4gSSBkbyBub3QgaGF2ZSBhbiBlcnJvciB3aGVuIHdvcmtpbmcgdW5kZXIg
cm9ja28uDQo+DQo+DQo+DQo+IFRoZSBlcnJvciBzZWVuIGlzIDogICAgL2V0Yy9yYzUuZC9TMTVt
b3VudG5mcy5zaDogbGluZSA3MDogc2VydmljZTogY29tbWFuZCBub3QgZm91bmQNCj4NCj4NCj4N
Cj4gVXNhZ2U6IEAgbGluZSA3MDogIOKAnHNlcnZpY2UgcnBjYmluZCBzdGF0dXMgPi9kZXYvbnVs
bOKAnQ0KPg0KPg0KDQpwZXJoYXBzIGp1c3QgYWRkIGluaXQtc3lzdGVtLWhlbHBlcnMgdG8gSU1B
R0VfSU5TVEFMTA0KDQo+DQo+IFRoYW5rcywNCj4NCj4gU3RldmUNCj4NCj4NCj4gDQo+DQo=
