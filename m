Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web12.17359.1611087724229614351
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Jan 2021 12:22:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=SMk0Q/JV;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1611087724; x=1768767724;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=PLmkajJl37TagLZqYVwYGhrL1fw7tcjS8m8iYC4iBsI=;
  b=SMk0Q/JV/VEiac8RoKP+Q1S8/UJVQUdXam19s53vyUh95nDmhSh/XXXp
   EpxVGRpqbUzkWRk0/9SH75ttjtK23jbCCx6E4nqNuQd/ezODUKKNxOxE4
   ZPBtZ94SjMn6M8yf4SMJCepEeMwBIp4GwR/ugssvhXJk9gyX3ZyS1vKrj
   0=;
IronPort-PHdr: =?us-ascii?q?9a23=3AiDmTZxXVrH//EPjKpP7JKrL2e1HV8LGtZVwlr6E/?=
 =?us-ascii?q?grcLSJyIuqrYZReHvqdThVPEFb/W9+hDw7KP9fy5CCpZud3e7DhCKMUKC0Zaz5?=
 =?us-ascii?q?1O3kQJO42sMQXDNvnkbig3ToxpdWRO2DWFC3VTA9v0fFbIo3e/vnY4ExT7Mhdp?=
 =?us-ascii?q?dKyuQtaBx8u42Pqv9JLNfg5GmCSyYa9oLBWxsA7dqtQajZFtJ6oszhbFuGZEd/?=
 =?us-ascii?q?hZyW5qKl+YghLw6tut8JJ5/ClcpvAs+9RcXanmeqgzUKBVAikhP20p/sPgqAPN?=
 =?us-ascii?q?TRGI5nsSU2UWlgRHDg3Y5xzkXZn/rzX3uPNl1CaVIcP5Q7Y0WS+/76hwUx/nlD?=
 =?us-ascii?q?0HNz8i/27JjMF7kb9Wrwigpxx7xI7UfZ2VOf9jda7TYd8WWWxMVdtKWidfHo2z?=
 =?us-ascii?q?cZcAD+sZPeZZsYb9oUcOrQCjDgWoHe/j1yNEimPz0aA8zu8vExzJ3BY4EtwOrn?=
 =?us-ascii?q?rascn1OqkRX+C7zqbIzCnMYfxZ1jrm9IjHaRIhre2QUb5sc8fcz1QkGQPfjlWX?=
 =?us-ascii?q?rIzoJz2Z2OMKs2id9OpvS/ygi3U/pwpsvzav2tkjipfXiYIT11vJ6zhyzII7Kt?=
 =?us-ascii?q?OlTUJ3b8OvHZxLtyGGKYR2XN0tQ2dytCY/zb0Gv4W7czYUx5Q83BPQcOaIfJaT?=
 =?us-ascii?q?4hPjT+aRPSl3hHd+eL6lmxmy9k2gx/T6W8Kp31lEsjBLncPQtnARyRPT8M6HR+?=
 =?us-ascii?q?N980qi3TuCywDe5+JKLEwqlKfWKJAvz74um5cRvkrOAzH6lUf5gaKXeUgp5PWl?=
 =?us-ascii?q?5vj7b7j7opKRKY95hhzgP6kgnMG0HOo2Mg8LX2eB+OS80qXu/Vb+QLVXlP05jr?=
 =?us-ascii?q?fWsZ7AKsQBuKG1GQhV0pws6xqnFjepztEYnWQdIFJCYhKHgJDlO1XPIP/jF/i/?=
 =?us-ascii?q?mUijkDdqx/DYILLtGJLNLmLMkLv5fbd97FJTyBY0zdBH/ZJUDbMBL+zvVU/trt?=
 =?us-ascii?q?DYCQU5MwOyzu36C9t9zpsTVX+TDqODPq7fs0WE6vwxL+SMfoMYuTbwJ+A46/Ly?=
 =?us-ascii?q?l3M0llAQcbOm0JcNdXy1HvJrKFiDb3X2mNcOC2IKsxI7TOztlVKNTyZeZ223X6?=
 =?us-ascii?q?Ig/jE7D5+mDZvbSoCtnrOB2CC7E4VKZmFJEF+MF3Lod56AVvsQdC6ePtJtniYC?=
 =?us-ascii?q?Vbe7UYMuzguhuxHhy7tnNerU5jMXtZf41NRv++LTkhQy+SR1D8SbzW6NU3l5kn?=
 =?us-ascii?q?4USzMs0q1yo1Zxxkmd3aV4mfBVFNxe6+tMUgggNJ7cy+J6C8r1WgLEZtqJU0qm?=
 =?us-ascii?q?Tcu4AT4vSNI92doOY0F7G9W5kB/MwTGqDqQOmLORGpM06aLd32PtJ8ljznbGz7?=
 =?us-ascii?q?MtgEUhQstKLWGmnLJw9xDPB47VlEWUj6ardaMA0y7R82eO1m6OvEBDUA5sSqXJ?=
 =?us-ascii?q?R3AeZkzKotTl4UPCV6WuCbMlMgRf1cGCNrFGatrzjVVJF7/fP4GURmW3gGq9Hl?=
 =?us-ascii?q?LA/a+BcofsM05VnBjmSQJMxxsP8GiLM047ASG6rm/FJDZnGEn+eF/h9PI4o3S+?=
 =?us-ascii?q?GAt89QCBb0R72/KN5wQZhPHUH+kS1bINoitnsyhuEFew99bXDceQqQ18eqlVfd?=
 =?us-ascii?q?I65hFAz22P80Q3L5urM6dKgl8Fbx8xrkTlyxJvEIJCnMM26nQww0A6fbOf209G?=
 =?us-ascii?q?XzeZxozrfKzQIXX15AqoaaPdxhfZytnAqYkV7/Ft4XDkuhqkG1Fmu0573sdY1T?=
 =?us-ascii?q?O3rtX3N0tYGcbqTksp+h48orbceSQw/Kve3HB3ILKovzrZndkuAb12mV6bY95D?=
 =?us-ascii?q?PfbcR0fJGMoACp3rcbRylg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2B/AwB3Pgdg/0HhJQpigQmBT4MhgSIXC?=
 =?us-ascii?q?oQ1kVEDlQ6FR4FoCwEBAQEBAQEBAQgBGAsMBAEBhEoCF4FdJjcGDgIQAQEGAQE?=
 =?us-ascii?q?BAQEGBAGGUQyCOCkBgxEBAQEEASIRUQQCAQgRBAEBAQICJgICAiYKFQgIAgQBE?=
 =?us-ascii?q?giDH4MVrXcaPHaBMopMCQGBBCqGd4JOg3KCAz6EKj6CRhcFgScBEgGDOoJgBIN?=
 =?us-ascii?q?PKwGBF0SBFY8+gzaKappBBwOCd4kvi0OGbSuEWp4QLZNuixySEoQhAgQCBAUCF?=
 =?us-ascii?q?oFsgQtwcIM5CUcXAg2OLReIYoVEdAIBATMCBgoBAQMJi06BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2B/AwB3Pgdg/0HhJQpigQmBT4MhgSIXCoQ1kVEDlQ6FR4F?=
 =?us-ascii?q?oCwEBAQEBAQEBAQgBGAsMBAEBhEoCF4FdJjcGDgIQAQEGAQEBAQEGBAGGUQyCO?=
 =?us-ascii?q?CkBgxEBAQEEASIRUQQCAQgRBAEBAQICJgICAiYKFQgIAgQBEgiDH4MVrXcaPHa?=
 =?us-ascii?q?BMopMCQGBBCqGd4JOg3KCAz6EKj6CRhcFgScBEgGDOoJgBINPKwGBF0SBFY8+g?=
 =?us-ascii?q?zaKappBBwOCd4kvi0OGbSuEWp4QLZNuixySEoQhAgQCBAUCFoFsgQtwcIM5CUc?=
 =?us-ascii?q?XAg2OLReIYoVEdAIBATMCBgoBAQMJi06BEQEB?=
X-IronPort-AV: E=Sophos;i="5.79,359,1602547200"; 
   d="scan'208";a="479078198"
X-IronPort-AV: E=Sophos;i="5.79,359,1602547200"; 
   d="scan'208";a="96353599"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>, Richard Purdie
	<richard.purdie@linuxfoundation.org>, "yocto@lists.yoctoproject.org"
	<yocto@lists.yoctoproject.org>
Subject: Re: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Topic: [yocto] #yocto #kernel BB_GENERATE_MIRROR_TARBALLS
Thread-Index: AQHW7m0xv64mRxX0TTiT7tjgC5xrOqovAIywgABjbtA=
Date: Tue, 19 Jan 2021 20:22:00 +0000
In-Reply-To: <MADEUP.165BA83FDBC0DF47.2886@lists.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.165BBBC056A56FB9.28895@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpBbGwgYnV0IHRoZSBmb2xsb3dpbmcgZG93bmxvYWRlZCBleGNlcHQgdGhlc2Ugd2hpY2ggZmFp
bGVkICh0aW1pbmcgb3V0KToNCg0KIGh0dHBzOi8vc291cmNld2FyZS5vcmcvZWxmdXRpbHMvZnRw
LzAuMTc3L2VsZnV0aWxzLTAuMTc3LnRhci5iejINCiBodHRwczovL2Rvd25sb2FkLnFlbXUub3Jn
L3FlbXUtNC4xLjAudGFyLnh6DQogaHR0cDovL2xpYmFyY2hpdmUub3JnL2Rvd25sb2Fkcy9saWJh
cmNoaXZlLTMuNC4wLnRhci5neg0KDQpmeWkuLi4gSSBhbSB1c2luZyB6ZXVzIDMuMC40Lg0KDQpT
dGV2ZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogeW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZyA8eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZz4gT24gQmVoYWxmIE9m
IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgdmlhIGxpc3RzLnlvY3RvcHJvamVjdC5vcmcNClNlbnQ6
IFR1ZXNkYXksIEphbnVhcnkgMTksIDIwMjEgOToyNSBBTQ0KVG86IFJpY2hhcmQgUHVyZGllIDxy
aWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPjsgeW9jdG9AbGlzdHMueW9jdG9wcm9q
ZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwgQkJfR0VORVJBVEVf
TUlSUk9SX1RBUkJBTExTDQoNCioqKiBXQVJOSU5HICoqKg0KRVhURVJOQUwgRU1BSUwgLS0gVGhp
cyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRzaWRlIG91ciBvcmdhbml6YXRpb24uDQoNCg0K
DQpGcm9tIHNoZWxsLi4uIEkganVzdCBjaGVja2VkIHRoZSBtZWdhLW1hbnVhbCwgd2lsbCByZXJ1
biBhcyBkZXNjcmliZWQuLi4NCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IFJp
Y2hhcmQgUHVyZGllIDxyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnPiANClNlbnQ6
IFR1ZXNkYXksIEphbnVhcnkgMTksIDIwMjEgOToxMyBBTQ0KVG86IE1vbnNlZXMsIFN0ZXZlbiBD
IChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPjsgeW9jdG9AbGlzdHMueW9jdG9w
cm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gI3lvY3RvICNrZXJuZWwgQkJfR0VORVJB
VEVfTUlSUk9SX1RBUkJBTExTDQoNCioqKiBXQVJOSU5HICoqKg0KRVhURVJOQUwgRU1BSUwgLS0g
VGhpcyBtZXNzYWdlIG9yaWdpbmF0ZXMgZnJvbSBvdXRzaWRlIG91ciBvcmdhbml6YXRpb24uDQoN
Cg0KT24gVHVlLCAyMDIxLTAxLTE5IGF0IDE0OjA4ICswMDAwLCBNb25zZWVzLCBTdGV2ZW4gQyAo
VVMpIHdyb3RlOg0KPiBUaGF0IHdhcyBzZXQgOiBleHBvcnQgQkJfR0VORVJBVEVfTUlSUk9SX1RB
UkJBTExTPTENCg0KSnVzdCB0byBiZSBjbGVhciwgd2hlcmUgZGlkIHlvdSBzZXQgdGhhdD8gSW4g
YSAuY29uZiBmaWxlPyBJZiBzbywgeW91IGRvbid0IG5lZWQgdGhlIGV4cG9ydCBiaXQuIElmIGl0
IHdhcyBpbiBhIHNoZWxsIGl0IHByb2JhYmx5IHdvdWxkbid0IHdvcmsuDQoNCkFsc28sIHlvdSBk
aWRuJ3QgYW5zd2VyIG15IG90aGVyIHF1ZXN0aW9uLCBkaWQgeW91IHJlZmV0Y2ggZXZlcnl0aGlu
ZyB3aXRoIHRoYXQgc2V0Pw0KDQpDaGVlcnMsDQoNClJpY2hhcmQNCg0KDQoNCg==
