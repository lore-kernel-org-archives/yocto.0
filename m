Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web12.110.1595265198056968130
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 10:13:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=Stnewvim;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1595265198; x=1752945198;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=AkCp0pwV4afdmhFasq8GXKdoG7G5NR2sGQfCATXNVpQ=;
  b=StnewvimcdzPsKKrDlyrHux+WPLvBxoRR+nGlgxBmVCyf7Qd4jadxWUn
   qrxGA1k7wHTirx5ZQLsDyVAIBeeQAKeMpYDjdrAw0x12aB01J5HefW7ut
   1pP1BKUqUibdyDhXwdQTqu5bMY+m0MUAY28qBmGtmMsqgonG44sqqX9Tw
   k=;
IronPort-PHdr: =?us-ascii?q?9a23=3Azq6kJx3ZpOxoABoxsmDT+DRfVm0co7zxezQtwd8Z?=
 =?us-ascii?q?sesWIv3xwZ3uMQTl6Ol3ixeRBMOHsqwC17ad7PCocFdDyK7JiGoFfp1IWk1Nou?=
 =?us-ascii?q?QttCtkPvS4D1bmJuXhdS0wEZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZr?=
 =?us-ascii?q?KeTpAI7SiNm82/yv95HJbAhEmTuwbal9IRi5ognctMobipZ+J6gszRfEvmFGcP?=
 =?us-ascii?q?lMy2NyIlKTkRf85sOu85Nm7i9dpfEv+dNeXKvjZ6g3QqBWAzogM2Au+c3krgLD?=
 =?us-ascii?q?QheV5nsdSWoZjBxFCBXY4R7gX5fxtiz6tvdh2CSfIMb7Q6w4VSik4qx2UxLjlj?=
 =?us-ascii?q?sJOCAl/2HWksxwjbxUoBS9pxxk3oXYZJiZOOdicq/BeN8XQ3dKUMRMWCxbGo6y?=
 =?us-ascii?q?b5UBAfcdPehWrIf9qVkBrRqiCgejC+zi0SNIiWT03aEmz+gtDQPL0Qo9FNwOqn?=
 =?us-ascii?q?TUq9D1Ob8cXe6yy6nIyy7DYO1I1jfm8ITDbw0voe2SUrJub8XRz1QkGh3YhVmU?=
 =?us-ascii?q?p4PrIjaZ2uoQuGWc9OpgSfygi3A5pAF3uDSvw8Asio/Sho0L1F/E7j50z50vKt?=
 =?us-ascii?q?KmU056YcWkEIdOuCGfLIt6WN8tQ2ZtuCsjzLANpJG0cjQQxps92x7fd+KIc5KO?=
 =?us-ascii?q?4h/7W+icPTd1iW9kdbywmxu/8FWsx+7iW8e6zFtHrilInsfPu30NyxHd6saJRu?=
 =?us-ascii?q?Z580u81juC1B7f5v1GLE0pkafWKZgsyaMzmJoLqUnPAzP6lF/4gaKUbEko5+yl?=
 =?us-ascii?q?5ur9brjnppKQL5J4hh3kPqkhlcGzG+A1PhINUmWZ/+m3yaft8lfjQLpQi/07iq?=
 =?us-ascii?q?zZsJfHKssFvqO5GApV0po76xa4EjemzMwUnXkZI1JBfxKKl5bpNEvOIPD+CPe/?=
 =?us-ascii?q?mFChnTNvyvzaI7HtGJPNIWLZnLj6Z7ly9VVcyQoozdBD+Z1UD6oBLOjvVU/2sd?=
 =?us-ascii?q?zUFh45MwqqzOb7ENhxy58SVXiBD6KbKq/erFuF6+w1L+SNZIIZoDP9JOIk5/7q?=
 =?us-ascii?q?g385g1gdfayx0JsMdHC3AOpmLFufYXb2h9cBFmEKvhEgQ+P0k12PSiVcaGysUK?=
 =?us-ascii?q?In5jA7E56mApnGRoC2mrCOwCC7HphOamBcFl+MCWvod5mDW/oUaCOSJdNukiAD?=
 =?us-ascii?q?VbW6T48h1AqutBPhy7Z9LuvU/TEXtY7k1Nht/e3TkhMy+iJoAMSByW2NSHt0nm?=
 =?us-ascii?q?xbDwMxiZp+qkx00FvL6bVij/1VXYhJ5vhJWx02c4bB1eB7Bvj2WwTcbtmOVVCq?=
 =?us-ascii?q?S8mnBjd3Scg+lZtGKVd6EMmlphTCxDaxRa4SnKCMHIYz8K/Xwz72Pck3gyLX06?=
 =?us-ascii?q?I9iHEiQ9BTLiu3gaVj8BDJAIzEmFnfkLylI/cyxinIoS2mymyVsUxDFEZLTajb?=
 =?us-ascii?q?UHZXTQOWkO+4rAuWVKOjF7khdA5Gz9WPJ7BiYNTklkRdWPrmI5LVZGfnyDT4Pg?=
 =?us-ascii?q?qB2r7ZNNmiQG4axiiITRFcyw0=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AHAABqzxVf/0HBJQpgGgEBAQEBAQEBA?=
 =?us-ascii?q?QEDAQEBARIBAQEBAgIBAQEBQIE4AwEBAQELAYRLCoQpkRKaDBSBaQsBAQEBAQE?=
 =?us-ascii?q?BAQEHARgXBAEBhEwCF4IJJTYHDgIQAQEGAQEBAQEGBAGGVII3KQGDEAEBAQEDA?=
 =?us-ascii?q?SIRUQQCAQgRBAEBAQICIwMCAgImChQBCAgCBAESCLB9doEyij2BDioBhj6IDz6?=
 =?us-ascii?q?Dcy4+hAgBEgGDN4JgBJJSonUHA4JdkyyGLiqfSJIBnn8CBAIEBQIVgVoOgQxwc?=
 =?us-ascii?q?IM5UBcCDZxldDcCBggBAQMJjn6BEQEB?=
X-IPAS-Result: =?us-ascii?q?A2AHAABqzxVf/0HBJQpgGgEBAQEBAQEBAQEDAQEBARIBAQE?=
 =?us-ascii?q?BAgIBAQEBQIE4AwEBAQELAYRLCoQpkRKaDBSBaQsBAQEBAQEBAQEHARgXBAEBh?=
 =?us-ascii?q?EwCF4IJJTYHDgIQAQEGAQEBAQEGBAGGVII3KQGDEAEBAQEDASIRUQQCAQgRBAE?=
 =?us-ascii?q?BAQICIwMCAgImChQBCAgCBAESCLB9doEyij2BDioBhj6IDz6Dcy4+hAgBEgGDN?=
 =?us-ascii?q?4JgBJJSonUHA4JdkyyGLiqfSJIBnn8CBAIEBQIVgVoOgQxwcIM5UBcCDZxldDc?=
 =?us-ascii?q?CBggBAQMJjn6BEQEB?=
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="291555303"
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="424872365"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
Thread-Topic: [yocto] Adjusting Extensible SDK for build setup
Thread-Index: AQHWXrePr0r4qTsuQMiHvVDazPILjKkQs0xA
Date: Mon, 20 Jul 2020 17:13:15 +0000
In-Reply-To: <224f8a27bc8a2c8074f78e32dcac025686ed420c.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Message-ID: <MADEUP.1623853FAF59D08E.10418@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpObywgSSBndWVzcyBJIHdhc24ndCBjbGVhciwgSSBuZWVkZWQgdG8gYWRkIHRvIGxpbmVzIG9m
IGNvZGUgaW4gdGhlIHNjcmlwdHMgdG8gYWRqdXN0IHRoaW5ncyBzbyB0aGF0IG15IGVudiBzY3Jp
cHQgd2FzIGNvcGllZCB0byB0aGUgcHJvcGVyIFNESyBidWlsZCBlbnYgImxheWVycyIgZGlyZWN0
b3J5IGFuZCBzZXQgdGhlIGNvbmZfaW5pdHBhdGggdG8gdXNlIG15IGVudiBzY3JpcHQuLi4NCg0K
VGhlIHZhcmlhYmxlIGFzc2lnbm1lbnRzIG1lbnRpb25lZCBhcmUgY29uZmlndXJlZCBpbiBteSBk
aXN0cm8gY29uZmlnIGZvciB0aGUgb3ZlcmFsbCBTREsgYnVpbGQuDQoNClN0ZXZlDQoNCi0tLS0t
T3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3Jn
IFttYWlsdG86eW9jdG9AbGlzdHMueW9jdG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIFJpY2hh
cmQgUHVyZGllDQpTZW50OiBNb25kYXksIEp1bHkgMjAsIDIwMjAgMTowMyBQTQ0KVG86IE1vbnNl
ZXMsIFN0ZXZlbiBDIChVUykgPHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPjsgeW9jdG9A
bGlzdHMueW9jdG9wcm9qZWN0Lm9yZw0KU3ViamVjdDogUmU6IFt5b2N0b10gQWRqdXN0aW5nIEV4
dGVuc2libGUgU0RLIGZvciBidWlsZCBzZXR1cA0KDQoqKiogV0FSTklORyAqKioNCkVYVEVSTkFM
IEVNQUlMIC0tIFRoaXMgbWVzc2FnZSBvcmlnaW5hdGVzIGZyb20gb3V0c2lkZSBvdXIgb3JnYW5p
emF0aW9uLg0KDQoNCk9uIE1vbiwgMjAyMC0wNy0yMCBhdCAxNjoyOCArMDAwMCwgTW9uc2Vlcywg
U3RldmVuIEMgKFVTKSB3cm90ZToNCj4gWWVzLCB0aGlzIGlzIHdoYXQgSSBzYXcgYXMgd2VsbC4u
Lg0KPiANCj4gSSBoYWQgdG8gYWRkIHR3byBsaW5lcyB0byB0aGUgcG9wdWxhdGVfc2RrX2V4dC5i
YmNsYXNzIHRvIHByb3Blcmx5IGdldCANCj4gaXQgdG8gcGljayB1cCBteSBlbnYgc2NyaXB0Lg0K
PiBJIHNldCA6DQo+IA0KPiAJT0VfSU5JVF9FTlZfU0NSSVBUID0gInNldHVwLWJ1aWxkLWVudiIN
Cj4gCUNPUkVfQkFTRV9GaWxlcyA9ICIgXA0KPiAJICAgICBTY3JpcHRzIFwNCj4gCSAgICAgTElD
RU5TRSBcDQo+IAkgICAgIC50ZW1wbGF0ZWNvbmYgXA0KPiAJIg0KPiBUaGlzIGFsbG93ZWQgbWUg
dG8gYnVpbGQgdGhlICJtaW5pbWFsZSBTREsgRVhULg0KPiANCj4gCVNES19FWFRfVFlQRSA9ICJt
aW5pbWFsIg0KPiAJU0RLX0xPQ0FMX0NPTkZfV0hJVEVMSVNUID0gIlNTVEFURV9NSVJST1JTIg0K
PiANCj4gV2FzIGhvcGluZyBJIHdvdWxkIGJlIGFibGUgdG8gY29uZmlndXJlIHRoZSB2YXJpYWJs
ZXMgcmF0aGVyIHRoYW4gDQo+IG1vZGlmeSB0aGUgc2NyaXB0Li4uDQo+IERvIG5vdCB3YW50IHRv
IGludHJvZHVjZSBmdXR1cmUgc3VwcG9ydCB1c3N1ZXMgaWYgcG9zc2libGUuDQoNCkJvdGggdmFy
aWFibGVzIGFyZSBhc3NpZ25lZCB3aXRoIHdlYWsgZGVmYXVsdHMuIENhbid0IHlvdSBqdXN0IHNl
dCB0aG9zZSB2YXJpYWJsZXMgaW4geW91ciBvd24gZGlzdHJvIGNvbmZpZyB0byBvdmVycmlkZSB0
aGUgZGVmYXVsdHM/DQoNCkNoZWVycywNCg0KUmljaGFyZA0KDQoNCg0KDQoNCg==
