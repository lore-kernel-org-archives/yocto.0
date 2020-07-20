Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.40915.1595260667421600079
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jul 2020 08:57:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=h7sB9953;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1595260667; x=1752940667;
  h=from:to:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=Wd3kIemBYUBV7dGTtwNsiAzOeDBfCPaik/BH+4+LSbk=;
  b=h7sB9953x6E7GH6ccLhswl/gRfjS+/MoLwmFtS9HmgSenHpj9D9Cv4/w
   KLXod6uOygfktnGwBZazFR4m/cFVPFIDbiN5cm+6V12oWZ6NAHbJcdR6K
   Cw2UUr9z0Tp71sLXvL3iIg3tKW7v2m2ySJHMhQ8EaONO/Q3H3d3BSZH1C
   E=;
IronPort-PHdr: =?us-ascii?q?9a23=3AS8j1dRDHEFyAqyrHifXkUyQJP3N1i/DPJgcQr6Af?=
 =?us-ascii?q?oPdwSP37r82wAkXT6L1XgUPTWs2DsrQY0rSQ7/yrBzxIyK3CmUhKSIZLWR4BhJ?=
 =?us-ascii?q?detC0bK+nBN3fGKuX3ZTcxBsVIWQwt1Xi6NU9IBJS2PAWK8TW94jEIBxrwKxd+?=
 =?us-ascii?q?KPjrFY7OlcS30P2594HObwlSizexfLJ/IA+5oAjeucUbgIhvIbstxxXUpXdFZ/?=
 =?us-ascii?q?5Yzn5yK1KJmBb86Maw/Jp9/ClVpvks6c1OX7jkcqohVbBXAygoPG4z5M3wqBnM?=
 =?us-ascii?q?VhCP6WcGUmUXiRVHHQ7I5wznU5jrsyv6su192DSGPcDzULs5Vyiu47ttRRT1ky?=
 =?us-ascii?q?oMKSI3/3/LhcxxlKJboQyupxpjw47PfYqZMONycr7Bcd8GQGZMWNtaWS5cDYOm?=
 =?us-ascii?q?d4YBD/QPM/tEr4fzpFUOoxmxBQiwC+3gxTBFnWP20rY40+g9DQ3KwA4tEtQTu3?=
 =?us-ascii?q?rUttX1M6ISXPi7wKfPyjXDaehW1inj54jTahwqvOyCXa5ufsrP10YvER7Og0uN?=
 =?us-ascii?q?ooDhMTyby+EBv2aG5OdnTuKvl3Aoqx9vrTip3Mssj47JhoQOyl/a6yp52504Ks?=
 =?us-ascii?q?aiR0Flet6lEIBQtz2EOItzWcMuWX1nuCE/yrAfv5OwYScFxog9yRHFd/yHb5aH?=
 =?us-ascii?q?4gjlVOuJLjl1mHJoda++ihi97UWty/DwW8qq3VhEsidIktrBum4O2hHT9sWJSv?=
 =?us-ascii?q?Vz8lql1DqS2A3e6f9ILVw2mKfGL5MswLg9nYcQv0TbBiL6hVn6gLWYe0gm4OSk?=
 =?us-ascii?q?9uDqb7v8qpKdNoJ4khzyPrg0lsGwDuk0KAwDU3KY9Om+0rDo4Ff3T69QjvIsl6?=
 =?us-ascii?q?nUqJXaJcMGqaGnGwJVyYMj6wqnDzehzdQYgWELLFJbdxKDiIjkI1fOIPD+Dfil?=
 =?us-ascii?q?hlSsizRmyvDaMrH9H5nBNH7Dn637cblm8UFT1hEzzNBE55JIFL4BJenzVlXtu9?=
 =?us-ascii?q?zfCx81Kw20w+D5B9Vhzo4SRH6DDrWXPa7Qq1OE++YiLueWaIIUuTvxM/0l6OTv?=
 =?us-ascii?q?jX89l18dZ66p3Z4PZXCjAvRpPVuZbmTqgtsbFGcKuQw+TPf0h1KcSj5efG29UL?=
 =?us-ascii?q?gi6TEgCIOmFpvDSZ6ogLyaxiu0AppWZmVeBlCWDXjob5mEW+sLaC+KIs5hlSAL?=
 =?us-ascii?q?VaSmS4I60RGutRT6y6Z8LubO+iwYso7s1MRy5+3LjxEy8j50ANqB3GGRVW10mX?=
 =?us-ascii?q?kIRzBllJx49HZ8wVeKy6Qwu+FCGd1er6dTUww6PITQifRnEdzzVyrFf9GUWFih?=
 =?us-ascii?q?X9OqCC0wSdR3xMUBNQI1UcSlhQzE9y6rGKMO0a2MD4Az6rjb3XX6O4B60XmMnP?=
 =?us-ascii?q?0wiFI6ReNLNHa6nehu8APPAJbTlEeUnLrscr4Tin3j7mCGmCCru0dDXQNrFe3+?=
 =?us-ascii?q?QX0Ba02ehpy523iDBff6EqgqLAZHj8uFLLBHZ8bBh1xLX+b4JNnbeCS6nGLmVk?=
 =?us-ascii?q?XA/a+FcIe/IzZV5y7aEkVR1llLpXs=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AHAACvvRVf/0LBJQpgGgEBAQEBAQEBA?=
 =?us-ascii?q?QEDAQEBARIBAQEBAgIBAQEBQIE4AwEBAQELAYRLCoQpkROaDBSBaQsBAQEBAQE?=
 =?us-ascii?q?BAQEHARgXBAEBhEwCF4IJJTYHDgIQAQEGAQEBAQEGBAGGVII3KQGDEAEBAQEDA?=
 =?us-ascii?q?SIRUQQCAQgRAQMBAQECAiMDAgICJgoUAQIGCAEBBAESCLBgdoEyikMJAYEEKgG?=
 =?us-ascii?q?GPogPPoNzLj6ECAESATiCf4JgBJJSonUHA4JdkyyGLiqfSJIBnn8CBAIEBQIVg?=
 =?us-ascii?q?VoDgRdwcIM5UBcCDZxldDcCBgEHAQEDCY5+gREBAQ?=
X-IPAS-Result: =?us-ascii?q?A2AHAACvvRVf/0LBJQpgGgEBAQEBAQEBAQEDAQEBARIBAQE?=
 =?us-ascii?q?BAgIBAQEBQIE4AwEBAQELAYRLCoQpkROaDBSBaQsBAQEBAQEBAQEHARgXBAEBh?=
 =?us-ascii?q?EwCF4IJJTYHDgIQAQEGAQEBAQEGBAGGVII3KQGDEAEBAQEDASIRUQQCAQgRAQM?=
 =?us-ascii?q?BAQECAiMDAgICJgoUAQIGCAEBBAESCLBgdoEyikMJAYEEKgGGPogPPoNzLj6EC?=
 =?us-ascii?q?AESATiCf4JgBJJSonUHA4JdkyyGLiqfSJIBnn8CBAIEBQIVgVoDgRdwcIM5UBc?=
 =?us-ascii?q?CDZxldDcCBgEHAQEDCY5+gREBAQ?=
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="291516892"
X-IronPort-AV: E=Sophos;i="5.75,375,1589241600"; 
   d="scan'208";a="210477098"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adjusting Extensible SDK for build setup
Thread-Topic: [yocto] Adjusting Extensible SDK for build setup
Thread-Index: AdZep08Nr0r4qTsuQMiHvVDazPILjAAJO7oAAAgHZeA=
Date: Mon, 20 Jul 2020 15:57:29 +0000
In-Reply-To: <8ee586c7f4a0d7dcb4016a34d479f79aa38d9891.camel@linuxfoundation.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.9.87]
MIME-Version: 1.0
Return-Path: steven.monsees@baesystems.com
Message-ID: <MADEUP.162381208891302B.3108@lists.yoctoproject.org>
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

DQpUaGUgQlVJTERESVIgaXMgZGVmaW5lZCBhcyBjb25maWd1cmFibGUgdW5kZXIgWW9jdG8uLi4N
Ckkgc2V0IHRoaXMgdXAgYXMgcGVyIHRoZSBZb2N0byBkb2NzIGJhc2VkIG9uIHRoZSAiTUFDSElO
RScgSSBhbSBidWlsZGluZywgSSBkbyBub3QgYmVsaWV2ZSB0aGlzIGlzIHRoZSBpc3N1ZS4gDQoN
ClRoZXJlIGlzIG5vIGlzc3VlIHdoZW4gYnVpbGRpbmcgdGhlIHN0YW5kYXJkIFNESy4uLiANCg0K
SSBhbSBsb29raW5nIGZvciB0aGUgcHJvcGVyIHZhcmlhYmxlIHNldHRpbmdzIGZvciBDT1JFQkFT
RSwgQ09SRUJBU0VfRklMRVMsIGFuZCBPRV9JTklUX0VOVl9TQ1JJUFQgdmFyaWFibGVzIHJlcXVp
cmVkIGJ5IGVTREsgd2hlbiB3b3JraW5nIHdpdGgNCmEgZGlmZmVyZW50IGVudmlyb25tZW50IHNl
dHVwIHNjcmlwdCBub3QgbG9jYXRlZCBpbiB0aGUgQ09SRUJBU0UgKGkuZS4gcG9reSkgZGlyZWN0
b3J5Li4uDQoNClRoYW5rcywNClN0ZXZlDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpG
cm9tOiB5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG9AbGlzdHMueW9j
dG9wcm9qZWN0Lm9yZ10gT24gQmVoYWxmIE9mIFJpY2hhcmQgUHVyZGllDQpTZW50OiBNb25kYXks
IEp1bHkgMjAsIDIwMjAgMTE6MzEgQU0NClRvOiBNb25zZWVzLCBTdGV2ZW4gQyAoVVMpIDxzdGV2
ZW4ubW9uc2Vlc0BiYWVzeXN0ZW1zLmNvbT47IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcN
ClN1YmplY3Q6IFJlOiBbeW9jdG9dIEFkanVzdGluZyBFeHRlbnNpYmxlIFNESyBmb3IgYnVpbGQg
c2V0dXANCg0KKioqIFdBUk5JTkcgKioqDQpFWFRFUk5BTCBFTUFJTCAtLSBUaGlzIG1lc3NhZ2Ug
b3JpZ2luYXRlcyBmcm9tIG91dHNpZGUgb3VyIG9yZ2FuaXphdGlvbi4NCg0KDQpPbiBNb24sIDIw
MjAtMDctMjAgYXQgMTU6MDYgKzAwMDAsIE1vbnNlZXMsIFN0ZXZlbiBDIChVUykgd3JvdGU6DQo+
ICANCj4gSSBhbSBmYWlybHkgbmV3IHRvIHRoZSBZb2N0byBTREsgYnVpbGQgcHJvY2VzcywgYW5k
IGFtIGxvb2tpbmcgdG8gDQo+IGNyZWF0ZSBhbiBleHRlbnNpYmxlIFNESyBmb3Igb25lIG9mIG91
ciBwbGF0Zm9ybXMuDQo+ICANCj4gSSBhbSBjdXJyZW50bHkgd29ya2luZyB3aXRoIFJvY2tvIDIu
NC4xLCBpbiBjb25qdW5jdGlvbiB3aXRoIHVuaW5hdGl2ZSANCj4gcmVsZWFzZSAxLjnigKYNCj4g
IA0KPiBNeSBjdXJyZW50IGJ1aWxkIHN5c3RlbSBzZXR1cCBkb2VzIG5vdCBmb2xsb3cgdGhlIHN0
YW5kYXJkIA0KPiBjb25maWd1cmF0aW9uLCBJIHVzZSBhIGRpZmZlcmVudCBlbnZpcm9ubWVudCBz
ZXR1cCBzY3JpcHQgb3RoZXIgdGhhbiANCj4g4oCcb2UtaW5pdC1idWlsZC1lbnbigJ0uDQo+ICAN
Cj4gTXkgZW52aXJvbm1lbnQgc2V0dXAgc2NyaXB0IOKAnHNldHVwLWJ1aWxkLWVuduKAnSBpcyBh
bHNvIG5vdCBsb2NhdGVkIGluIA0KPiB0aGUgICR7Q09SRUJBU0V9LCBpLmUuIHRoZSDigJxwb2t5
4oCdIGRpcmVjdG9yeSwgYnV0IHJhdGhlciBhdCANCj4g4oCcJHtDT1JFQkFTRX0vLi4vbWV0YS1i
YWUvbWV0YS1saW13c+KAnSwgdGhlIG1ldGEtbGltd3MgbGV2ZWwgaGFzIA0KPiBtdWx0aXBsZSBh
cmNoaXRlY3R1cmUgc3ViIGxldmVscyAoZWFjaCBhbiBpbmRlcGVuZGVudCBidWlsZCksIEkgYW0g
DQo+IG9ubHkgbG9va2luZyB0byBidWlsZCBhbiBTREsgZm9yIG9uZSBvZiB0aGVzZSBhcmNoaXRl
Y3R1cmVzLiBFYWNoIA0KPiBhcmNoaXRlY3R1cmXigJlzICBiYmxheWVycy5jb25mIHByb3ZpZGVz
IHRoZSBhcHByb3ByaWF0ZSBsYXllcnPigKYNCj4gIA0KPiBNeSBidWlsZCBkaXJlY3RvcnkgaXMg
ZXhwZWN0ZWQgdG8gcmVzaWRlIGhlcmU6DQo+ICAg4oCcJHtDT1JFQkFTRX0vLi4vbWV0YS1iYWUv
bWV0YS1saW13cy9idWlsZHMsIGFuZCB0aGVyZSBhcmUgbXVsdGlwbGUgDQo+IGFyY2hpdGVjdHVy
ZSBidWlsZHMgdW5kZXIgdGhpcyBkaXJlY3RvcnkNCg0KSSB0aGluayB0aGUgYnVpbGQgZGlyZWN0
b3J5IGV4cGVjdGF0aW9uIGlzbid0IGdvaW5nIHRvIHdvcmsgd2l0aCB0aGUgZVNESy4NCg0KVGhl
IGVTREsgaXMgcmVhbGx5IGRlc2lnbmVkIGFnYWluc3Qgb25lIGNvbmZpZ3VyYXRpb24gYW5kIHRo
ZSBidWlsZCBkaXJlY3RvcnkgYmVjb21lcyB0aGF0IHNwZWNpZmljIFNESy4gWW91IHRoZXJlZm9y
ZSBjYW4ndCByZXF1aXJlIHNvbWUgc3ViIGRpcmVjdG9yeSBvZiB0aGUgZVNESyBiZWNvbWUgdGhl
IGJ1aWxkIGRpcmVjdG9yeSBhcyB0aGF0IGlzbid0IGhvdyBpdHMgZGVzaWduZWQgdG8gb3BlcmF0
ZS4NCg0KQ2hlZXJzLA0KDQpSaWNoYXJkDQoNCg==
