Received: from dmzms99802.na.baesystems.com (dmzms99802.na.baesystems.com [149.32.232.66])
 by mx.groups.io with SMTP id smtpd.web12.41596.1595262507616227420
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 09:28:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=bHeKUvf4;
 spf=pass (domain: baesystems.com, ip: 149.32.232.66, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1595262507; x=1752942507;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=ovUBJxRnZ+u6Na4SuogcKaBdgkixgmF2sXqb2H4KQGw=;
  b=bHeKUvf4uiRva16bn822e1k7yDdn6GjpoRls/IKouwBYYBAtMJ3Aclin
   AfNtsbvDa1c2oMI51XWETBOT4VfCDR0jvUDQxYYneK+79aleBaDeemEy3
   8fUL0tPOxCCZhMdEvhaVbG3BHAB9pBtlgVMfSiRm8Ue4UrQ7RYr9CIeNs
   Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AjupZyhKayrdMhKBkP9mcpTZWNBhigK39O0sv0rFi?=
 =?us-ascii?q?tYgXKvT6rarrMEGX3/hxlliBBdydt6sazbaK+P6wEUU7or+5+EgYd5JNUxJXwe?=
 =?us-ascii?q?43pCcHRPC/NEvgMfTxZDY7FskRHHVs/nW8LFQHUJ2mPw6arXK99yMdFQviPgRp?=
 =?us-ascii?q?OOv1BpTSj8Oq3Oyu5pHfeQpFiCe8bL9oIxi7ogrdu8gVjIB/Nqs/1xzFr2dSde?=
 =?us-ascii?q?9L321oP1WTnxj95se04pFu9jlbtuwi+cBdT6j0Zrw0QrNEAjsoNWA1/9DrugLY?=
 =?us-ascii?q?TQST/HscU34ZnQRODgPY8Rz1RJbxsi/9tupgxCmXOND9QL4oVTi+6apgVQTlgz?=
 =?us-ascii?q?kbOTEn7G7Xi9RwjKNFrxKnuxx/2JPfbIWMOPZjYq/RYdYWSGxcVchTSiNBGJux?=
 =?us-ascii?q?YYsRAeQcIeZWoYrzp1UMohu/GQaiC+zgxyRUhnDt3602z/gtHR3E0QEmAtkAsG?=
 =?us-ascii?q?7UrNLwNKoKX+y7y67IzTPYb/xIxzj985DEeQ08r/GQQ71wb9TeyU8yHA7bk16c?=
 =?us-ascii?q?rYLqMS6Q2ugDrmOW6PFgVf6xhG45tQ5xpCKjxsIrionPnYIa1E7L9T5izYkuP9?=
 =?us-ascii?q?K3VlV7YN6/EJtMqS6aMpB2Ttk+TGFvvSY307sLsoO0cyYW0poo3QLfa+CZfIiS?=
 =?us-ascii?q?5BLuTOmfLCt4iX94eb+xiAq//Em9xuD/SMS63kpHoypGn9XStX0A1wDe5MiJRP?=
 =?us-ascii?q?dg+kqtxDmC2gPN5u1YI005iK7WJpwnz7UtlZQTqVzOEjLqlEnsgqKbdF8o9vWs?=
 =?us-ascii?q?5unpeLnrp5+RO5dphg3iKKgjlcOyDf48PwQUXGWW++Kx36D580LjWrVFlPg2n7?=
 =?us-ascii?q?HcsJDdOMsUuLa0AxRQ0oY/8xa/CCqm0MgAkXkHMl1FfBWHgpD3O17UIPD4C/K/?=
 =?us-ascii?q?g0+onTpvw/3KIqDtDo/LLnfZirvuZqxy5FBHyAsz1tBf+4xbCrQaIP7pRkDxs9?=
 =?us-ascii?q?nYAgc4Mwyy3ennFM1w2p4CVW6VDKKUMrnevUKM6+8hOeWBZY8YtC74K/c/5v7u?=
 =?us-ascii?q?iXE5mUUafamsxZYXc2y4Eep4I0qHZ3rgmNIBEWAMvgolUuPllkaCXCVIaHmoQa?=
 =?us-ascii?q?08/TE6CJm6DYjdQ4Ctm6aN0zu8Hp1TfmxGEEyDEW/0d4WYXPcBcCKTIsh9nTwY?=
 =?us-ascii?q?UrisUIsh1RC1tA/m0LprNOrV+ioEupL/09h1//fTlRYw9TNqE8udz3uBT2Zunm?=
 =?us-ascii?q?MHFHcK2/VFoEd9w02PmZBlmfBZGJQH/fJCUg4gOdjE0vZ2Ct3aXgPHY8eHT0ug?=
 =?us-ascii?q?Tty6ADY3CNUrzIlKKwxsHN6+iTjH3jG2GPkEkLeXA4Qu9aDR1GS3INxygT6Sxa?=
 =?us-ascii?q?4qk14ORspUKXbgl6l06w/LHYnLnk6F0aGwevJP8jTK8TLJ6G2Ip0xVS0o4arnI?=
 =?us-ascii?q?Q30ZLmCe7enCpwmKG6SyBKoqNE1EzsiZJ6ZRQtfggE5XX+vuPc+YaGW0zTTjTS?=
 =?us-ascii?q?2Uz6+BOdK5M14W2z/QXQ1dy1ge?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AHAABExRVf/0HBJQpgGgEBAQEBAQEBA?=
 =?us-ascii?q?QEDAQEBARIBAQEBAgIBAQEBQIE4AwEBAQELAYRLCoQpkRKaDBSBaQsBAQEBAQE?=
 =?us-ascii?q?BAQEHARgXBAEBhEwCF4IJJTYHDgIQAQEGAQEBAQEGBAGGVII3KQGDEAEBAQEDA?=
 =?us-ascii?q?SIRUQQCAQgRBAEBAQICIwMCAgImChQBCAgCBAESCLBvdoEyikEJAYEEKgGGPog?=
 =?us-ascii?q?PPoNzLj6ECAESATiCf4JgBJJSonUHA4JdkyyGLiqfSJIBnn8CBAIEBQIVgVoJg?=
 =?us-ascii?q?RFwcIM5UBcCDZxldDcCBggBAQMJjn6BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2AHAABExRVf/0HBJQpgGgEBAQEBAQEBAQEDAQEBARIBAQE?=
 =?us-ascii?q?BAgIBAQEBQIE4AwEBAQELAYRLCoQpkRKaDBSBaQsBAQEBAQEBAQEHARgXBAEBh?=
 =?us-ascii?q?EwCF4IJJTYHDgIQAQEGAQEBAQEGBAGGVII3KQGDEAEBAQEDASIRUQQCAQgRBAE?=
 =?us-ascii?q?BAQICIwMCAgImChQBCAgCBAESCLBvdoEyikEJAYEEKgGGPogPPoNzLj6ECAESA?=
 =?us-ascii?q?TiCf4JgBJJSonUHA4JdkyyGLiqfSJIBnn8CBAIEBQIVgVoJgRFwcIM5UBcCDZx?=
 =?us-ascii?q?ldDcCBggBAQMJjn6BEQEB?=
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="424508470"
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="424860988"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
Thread-Topic: [yocto] Adjusting Extensible SDK for build setup
Thread-Index: AQHWXrEir0r4qTsuQMiHvVDazPILjKkQpfOQ
Date: Mon, 20 Jul 2020 16:28:18 +0000
In-Reply-To: <bd561a5bfcde2e37f297d52ad3094831cd3d4229.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.162382CDAD44D3F3.1350@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpZZXMsIHRoaXMgaXMgd2hhdCBJIHNhdyBhcyB3ZWxsLi4uDQoNCkkgaGFkIHRvIGFkZCB0d28g
bGluZXMgdG8gdGhlIHBvcHVsYXRlX3Nka19leHQuYmJjbGFzcyB0byBwcm9wZXJseSBnZXQgaXQg
dG8gcGljayB1cCBteSBlbnYgc2NyaXB0Lg0KSSBzZXQgOg0KDQoJT0VfSU5JVF9FTlZfU0NSSVBU
ID0gInNldHVwLWJ1aWxkLWVudiINCglDT1JFX0JBU0VfRmlsZXMgPSAiIFwNCgkgICAgIFNjcmlw
dHMgXA0KCSAgICAgTElDRU5TRSBcDQoJICAgICAudGVtcGxhdGVjb25mIFwNCgkiDQpUaGlzIGFs
bG93ZWQgbWUgdG8gYnVpbGQgdGhlICJtaW5pbWFsZSBTREsgRVhULg0KDQoJU0RLX0VYVF9UWVBF
ID0gIm1pbmltYWwiDQoJU0RLX0xPQ0FMX0NPTkZfV0hJVEVMSVNUID0gIlNTVEFURV9NSVJST1JT
Ig0KDQpXYXMgaG9waW5nIEkgd291bGQgYmUgYWJsZSB0byBjb25maWd1cmUgdGhlIHZhcmlhYmxl
cyByYXRoZXIgdGhhbiBtb2RpZnkgdGhlIHNjcmlwdC4uLg0KRG8gbm90IHdhbnQgdG8gaW50cm9k
dWNlIGZ1dHVyZSBzdXBwb3J0IHVzc3VlcyBpZiBwb3NzaWJsZS4NCg0KVGhhbmtzLA0KU3RldmUN
Cg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcgW21haWx0bzp5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnXSBPbiBCZWhhbGYg
T2YgUmljaGFyZCBQdXJkaWUNClNlbnQ6IE1vbmRheSwgSnVseSAyMCwgMjAyMCAxMjoxNyBQTQ0K
VG86IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29t
PjsgeW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gQWRq
dXN0aW5nIEV4dGVuc2libGUgU0RLIGZvciBidWlsZCBzZXR1cA0KDQoqKiogV0FSTklORyAqKioN
CkVYVEVSTkFMIEVNQUlMIC0tIFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVzIGZyb20gb3V0c2lkZSBv
dXIgb3JnYW5pemF0aW9uLg0KDQoNCk9uIE1vbiwgMjAyMC0wNy0yMCBhdCAxNTo1NyArMDAwMCwg
TW9uc2VlcywgU3RldmVuIEMgKFVTKSB3cm90ZToNCj4gVGhlIEJVSUxERElSIGlzIGRlZmluZWQg
YXMgY29uZmlndXJhYmxlIHVuZGVyIFlvY3RvLi4uDQo+DQo+IEkgc2V0IHRoaXMgdXAgYXMgcGVy
IHRoZSBZb2N0byBkb2NzIGJhc2VkIG9uIHRoZSAiTUFDSElORScgSSBhbSANCj4gYnVpbGRpbmcs
IEkgZG8gbm90IGJlbGlldmUgdGhpcyBpcyB0aGUgaXNzdWUuDQo+IA0KPiBUaGVyZSBpcyBubyBp
c3N1ZSB3aGVuIGJ1aWxkaW5nIHRoZSBzdGFuZGFyZCBTREsuLi4gDQo+IA0KPiBJIGFtIGxvb2tp
bmcgZm9yIHRoZSBwcm9wZXIgdmFyaWFibGUgc2V0dGluZ3MgZm9yIENPUkVCQVNFLCANCj4gQ09S
RUJBU0VfRklMRVMsIGFuZCBPRV9JTklUX0VOVl9TQ1JJUFQgdmFyaWFibGVzIHJlcXVpcmVkIGJ5
IGVTREsgd2hlbiANCj4gd29ya2luZyB3aXRoIGEgZGlmZmVyZW50IGVudmlyb25tZW50IHNldHVw
IHNjcmlwdCBub3QgbG9jYXRlZCBpbiB0aGUgDQo+IENPUkVCQVNFIChpLmUuIHBva3kpIGRpcmVj
dG9yeS4uLg0KDQpMb29raW5nIGF0IHRoZSBjb2RlIGluIHBvcHVsYXRlX3Nka19leHQuYmJjbGFz
czpjb3B5X2J1aWxkc3lzdGVtKCksDQppdCBsb29rcyBpbiBlYWNoIGxheWVyIGZvciB0aGUgc2Ny
aXB0IHNwZWNpZmllZCBpbiBPRV9JTklUX0VOVl9TQ1JJUFQuDQoNCkZyb20geW91ciBkZXNjcmlw
dGlvbiBpdHMgaW1wb3NzaWJsZSB0byBrbm93IHdoZXRoZXIgbWV0YS1saW13cyBvciBtZXRhLWJh
ZSBpcyBzZWVuIGFzIGluZGl2aWR1YWwgbGF5ZXJzIGFuZCB3aGV0aGVyIHRoZXkncmUgY29waWVk
IGluZGl2aWR1YWxseSBpbnRvIGxheWVycy8gaW4gdGhlIGVTREsgb3Igbm90Lg0KDQpJJ2QgZ3Vl
c3MgdGhhdCAiIG1ldGEtbGltd3Mvc2V0dXAtYnVpbGQtZW52IiBvciAibWV0YS1iYWUvbWV0YS0g
bGltd3Mvc2V0dXAtYnVpbGQtZW52IiBzaG91bGQgd29yayBhcyB0aGUgdmFsdWUgZm9yIE9FX0lO
SVRfRU5WX1NDUklQVC4NCg0KSWYgcG9reSBpcyBiZWluZyB1c2VkIGFuZCBpcyB1bmFsdGVyZWQs
IENPUkVCQVNFIGFuZCBDT1JFQkFTRV9GSUxFUyBzaG91bGQgd29yayB1bmFsdGVyZWQuDQoNCkNo
ZWVycywNCg0KUmljaGFyZA0KDQo=
