Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE621C433F5
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 13:25:20 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.32074.1635168318074659921
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 06:25:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=DSa24kmf;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1635168318; x=1792848318;
  h=from:to:cc:subject:date:in-reply-to:
   content-transfer-encoding:mime-version;
  bh=D0JcrdyQi9Z4SvLzb7E8ItSULv+hrhOR1xLwEca4Pug=;
  b=DSa24kmf30nIG8TX/UQ+Mb2g6n1/jkhdOr1tLsqPBBlAX/uitT7HO5vt
   IlcpJZQ8UEwEL9skxZKamsoerfXLa65OTIYQuKccNhRi6gEX8T0ExNPFb
   UWT+RntkayjYLcrJ+ugjmqjM5pfhV7637uL4fkR9TmmNY2CDC4aWKl97A
   Q=;
IronPort-SDR: 
 2XKwpMzyV8EiX8WGXRsJ8tEVncbyXilgjSVcMsNvUSFbHNrToEU0OfeGZPn/VpJtvu94KmfNP9
 fhKFXc6fYEaA==
IronPort-PHdr: =?us-ascii?q?A9a23=3AYlu0lhWmMNFUIdMrVyrCxjlJ78PV8KybUjF92?=
 =?us-ascii?q?vMcY1JmTK2v8tzYMVDF4r011RmVB92dsakZwLSP+4nbGkU4qa6bt34DdJEeH?=
 =?us-ascii?q?zQksu4x2zIaPcieFEfgJ+TrZSFpVO5LVVti4m3peRMNQJW2aFLduGC94iAPE?=
 =?us-ascii?q?RvjKwV1Ov71GonPhMiryuy+4ZLebxtUiDanf79/IhW7oQrQu8ULnIBvNrs/x?=
 =?us-ascii?q?hzVr3VSZu9Y33loJVWdnxb94se/4ptu+DlOtvwi6sBNT7z0c7w3QrJEAjsmN?=
 =?us-ascii?q?Xs15NDwuhnYUQSP/HocXX4InRdOHgPI8Qv1Xpb1siv9q+p9xCyXNtD4QLwoR?=
 =?us-ascii?q?Tiv6bpgRRn1gykFKjE56nnahMxugqxGvBKvqR9xw4DWb4GUKPVwcazScMgGR?=
 =?us-ascii?q?WVaXMZdSzBNDp++YoYJEuEPPfxYr474p1YWoxewAg6sBOX0yjBWmHD2xrU22?=
 =?us-ascii?q?Pk8HwHawgMgAcwBsHLJp9jrKaweVe66wrTNwTnNcvhb3iz96JTWfRA/v/6MW?=
 =?us-ascii?q?6h8cc/WyUkpDAPKkEufqZf+MjyOzOsCrXOb7up7VeKzlWEnrhpxriKzyccrj?=
 =?us-ascii?q?4nEn4QYwU3L+itl2og6P8G4SFJlbt6+FptdrzyWOYVrTs4mXW1kpiI3x6ECt?=
 =?us-ascii?q?JKlfyUHy5opyRDBZ/GbboWF/h3tWuaVLDp6inxpZq6yihas/UWv1+DyWc253?=
 =?us-ascii?q?VRMoyFYnNfMsXUN2AbS6siBUvZ8/kCh1iqT1wDU8uFEO0c0lajFJJE93r48j?=
 =?us-ascii?q?J0TsV7MHiLwhU74j7eWe1059uS08ejqbLfrqoWCO4NqigzyKKUjl82nDeglL?=
 =?us-ascii?q?gQCRWeW9Oum2LDs50H1XbVHg/srmafDqp/aP94UpquhDg9Q1YYs9giwAi+90?=
 =?us-ascii?q?NQdgXkHNFVFeA+bj4TxO1HBPvT4DfCnjluwijhr3OzJPrj6ApjJKnXOk6vtc?=
 =?us-ascii?q?ahn505a0gU/18tQ6IhKBbEaIPPzQVPxu8LdDh8iKQC73+HnCNBl2oMfX2KAH?=
 =?us-ascii?q?LOZPbvPvVOU/O4iLeuBaJULtDrjK/Up/f/jgH4hlV8YZ6ap3J8XaH6iHvRhJ?=
 =?us-ascii?q?kWUeWHsgssfHmcUoAU+SvbmiFiFUT5VfHa9Qbwz5iogBY29F4jMWJutgbya3?=
 =?us-ascii?q?CenAJJWY3tGBkqQHnfvcoWIQ+0MZz6KIs99jjwEUqCsSo8m1R6yqA/6zKFqL?=
 =?us-ascii?q?u7V+i0DqZLjz8J55u3UlR4u6Tx0CNyd03uKT2F2gGwHWyM20Lp4oUxnxVfQm?=
 =?us-ascii?q?ZR/1rZiEtZe/e8BakFyF9iU4+VrQZimQBrDct6YYF28S86mCjYsVMk8hdQHN?=
 =?us-ascii?q?RVTAdKn21rm2CyxDrIO0/SwGJEq/6SU9DCxGv08gT6Sz7UskVQgBM5IM3ari?=
 =?us-ascii?q?7VX/QHeHJ/Sj0icjOChcqFKj32Fz3uK0Wfb5BIQawV3S6iQBRgi?=
IronPort-Data: =?us-ascii?q?A9a23=3AP+Smfaxr9c7miqtSUmN6t+cdxCrEfRIJ4+Muj?=
 =?us-ascii?q?C+fZmUNrF6WrkVUyzYeCGzXaPnfZDf3e9kjO42x8UkPuJfdyNMxTABqr1hgH?=
 =?us-ascii?q?ilAwSbn6XR1DatS0xt/paQvdWo/hyklQoSGfJ9cokP0/E/3a+G59yQkjMlke?=
 =?us-ascii?q?5KlYAL6EnEpLeNbYHp54f5Ts7ZRbr9A2bBVMSvU0T/Bi5G31Gue5tJBGjl8B?=
 =?us-ascii?q?5RvCf9YlK+aVDsw5jTSbB3Q1bPUvyF94Jk3fcldI5ZkK7S4ENJWR86bpF241?=
 =?us-ascii?q?mjQ5BwoEYL0wu6hNEsDBLTbMBOfkWZbXrPkiR9HzsAw+v9jcqFDLx0N1nPXw?=
 =?us-ascii?q?bidy/0U3XC0YRw1M7PBnqIYVB9DHixlFadP9aTWOmSytNfVxErDG5fp66k0V?=
 =?us-ascii?q?RlpZtBAoI6bBkkLr5T0MgslfxeIm+WexLOgVvIql8MoMM7zJoQdt3p8izbDA?=
 =?us-ascii?q?p4brTrrK0nRzYYAmmxvwJoUQLCAOaIkhfNUREyoS3Vy1p0/UvrSRNuVu0Q?=
 =?us-ascii?q?=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AemHNk62JQZ8p8puGVhVcwAqjBLIkLtp133?=
 =?us-ascii?q?Aq2lEZdPU7SKSlfqyV98jztiWatN9yYhwdcLm7UZVoKkmxyXca2+Ms1M+ZPD?=
 =?us-ascii?q?XOsm2uMY1k8M/+2DXmASLz7apQ0q1nfqh4BrTLbGSW5fyV3DWF?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2ArAwCor3Zh/0LhJQpagQkJgVCDIIF?=
 =?us-ascii?q?CC4Q8kRADhgmKDYwOFIFoCwEBAQEBAQEBAQgBKgcQBAEBhQACF4I5JjQJDgE?=
 =?us-ascii?q?CBAEBARIBAQYBAQEBAQYEAYEjhWgNgjUig2sBAQEBAgEBIhFFBQcEAgEIDQQ?=
 =?us-ascii?q?EAQEDAhEVAgICJgoVCAgBAQQOBQiCZQWCZqsWNXqBMRoCZYRphQ+BECqBZoU?=
 =?us-ascii?q?3hnmCDUOEPz6CYwWBFggKARIBYIJZgmUEjQcUggNLNQwHZZItV4MUqQwHA4M?=
 =?us-ascii?q?yikuMV4dELxWDaoFIiiaGLgOLY4UwlgygSg0GN4RoAgQCBAUCFoFhSFxwcIM?=
 =?us-ascii?q?5CUgXApc1hUp0OAIGAQoBAQMJkV+BEAEB?=
X-IPAS-Result: =?us-ascii?q?A2ArAwCor3Zh/0LhJQpagQkJgVCDIIFCC4Q8kRADhgmKD?=
 =?us-ascii?q?YwOFIFoCwEBAQEBAQEBAQgBKgcQBAEBhQACF4I5JjQJDgECBAEBARIBAQYBA?=
 =?us-ascii?q?QEBAQYEAYEjhWgNgjUig2sBAQEBAgEBIhFFBQcEAgEIDQQEAQEDAhEVAgICJ?=
 =?us-ascii?q?goVCAgBAQQOBQiCZQWCZqsWNXqBMRoCZYRphQ+BECqBZoU3hnmCDUOEPz6CY?=
 =?us-ascii?q?wWBFggKARIBYIJZgmUEjQcUggNLNQwHZZItV4MUqQwHA4MyikuMV4dELxWDa?=
 =?us-ascii?q?oFIiiaGLgOLY4UwlgygSg0GN4RoAgQCBAUCFoFhSFxwcIM5CUgXApc1hUp0O?=
 =?us-ascii?q?AIGAQoBAQMJkV+BEAEB?=
X-IronPort-AV: E=Sophos;i="5.87,180,1631577600";
   d="scan'208";a="421073502"
IronPort-SDR: 
 iXOCammhGC+eYXab8Bhk36tj3/yk7ZCSqL7A4Yp4x2Z/Qt8y+0Tcc2MouBaJhZOkM247Jy4WyL
 lg9N1sQXFtLg==
X-IronPort-AV: E=Sophos;i="5.87,180,1631577600";
   d="scan'208";a="15810418"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: RE: [yocto] bbappend usage
Thread-Topic: [yocto] bbappend usage
Thread-Index: AdfJnVTE4CPWQNMKRTKB5QfRNOLm+gAJcnUAAAf7o7A=
Date: Mon, 25 Oct 2021 13:24:14 +0000
In-Reply-To: <08a4cb0-64ab-6dd-b80-d64ee5a219ff@crashcourse.ca>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 13:25:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55140
Message-Id: <20211025132520.BE621C433F5@smtp.lore.kernel.org>

DQpObywgeW91IGdvdCBpdCB3cm9tZy4uLiBJIGhhdmUgYSBidWlsZGFibGUgaW1hZ2Ugd2hpY2gg
aGFzIGFsbCB0aGUgY29tcG9uZW50cyBuZWNlc3NhcnksIEkgd2FudCB0byByZW1vdmUgc29tZSBv
dmVyaGVhZCBpbnN0YWxsZWQgYnkgc29tZSBjb21wb25lbnRzIHRoYXQgSSB3aWxsIG5vdCBiZSB3
aXRoaW4gbXkgcnVubmluZyBhcHBsaWNhdGlvbi4uLiANCg0KLS0tLS1PcmlnaW5hbCBNZXNzYWdl
LS0tLS0NCkZyb206IHlvY3RvQGxpc3RzLnlvY3RvcHJvamVjdC5vcmcgPHlvY3RvQGxpc3RzLnlv
Y3RvcHJvamVjdC5vcmc+IE9uIEJlaGFsZiBPZiBSb2JlcnQgUC4gSi4gRGF5DQpTZW50OiBNb25k
YXksIE9jdG9iZXIgMjUsIDIwMjEgOToxMCBBTQ0KVG86IE1vbnNlZXMsIFN0ZXZlbiBDIChVUykg
PHN0ZXZlbi5tb25zZWVzQGJhZXN5c3RlbXMuY29tPg0KQ2M6IHlvY3RvQGxpc3RzLnlvY3RvcHJv
amVjdC5vcmcNClN1YmplY3Q6IFJlOiBbeW9jdG9dIGJiYXBwZW5kIHVzYWdlDQoNCkV4dGVybmFs
IEVtYWlsIEFsZXJ0DQoNClRoaXMgZW1haWwgaGFzIGJlZW4gc2VudCBmcm9tIGFuIGFjY291bnQg
b3V0c2lkZSBvZiB0aGUgQkFFIFN5c3RlbXMgbmV0d29yay4NCg0KUGxlYXNlIHRyZWF0IHRoZSBl
bWFpbCB3aXRoIGNhdXRpb24sIGVzcGVjaWFsbHkgaWYgeW91IGFyZSByZXF1ZXN0ZWQgdG8gY2xp
Y2sgb24gYSBsaW5rLCBkZWNyeXB0L29wZW4gYW4gYXR0YWNobWVudCwgb3IgZW5hYmxlIG1hY3Jv
cy4gIEZvciBmdXJ0aGVyIGluZm9ybWF0aW9uIG9uIGhvdyB0byBzcG90IHBoaXNoaW5nLCBhY2Nl
c3Mg4oCcQ3liZXJzZWN1cml0eSBPbmVTcGFjZSBQYWdl4oCdIGFuZCByZXBvcnQgcGhpc2hpbmcg
YnkgY2xpY2tpbmcgdGhlIGJ1dHRvbiDigJxSZXBvcnQgUGhpc2hpbmfigJ0gb24gdGhlIE91dGxv
b2sgdG9vbGJhci4NCg0KDQpPbiBNb24sIDI1IE9jdCAyMDIxLCBNb25zZWVzLCBTdGV2ZW4gQyAo
VVMpIHZpYSBsaXN0cy55b2N0b3Byb2plY3Qub3JnIHdyb3RlOg0KDQo+IElmIEkgYW0gYnVpbGRp
bmcgYW4gaW1hZ2Ug4oCcaW1hZ2UtQUJD4oCdLCBhbmQgaXQgaXMgY29tcG9zZWQgb2YgYSBudW1i
ZXIgDQo+IHJlY2lwZXMsIGFuZCBmb3Igc29tZSBvZiB0aGVzZSByZWNpcGVzIEkgbWF5IE5PVCB3
YW50IHRvIGluc3RhbGwgdGhlaXIgDQo+IGZpbmFsIGNvbXBvbmVudHMgd2l0aGluIG15IGltYWdl
4oCmDQo+DQo+IFdoaWNoIGlzIHRoZSBiZXN0IHBsYWNlIHRvIG1vZGlmeSB0aGUgYnVpbGQgd2l0
aCBiYmFwcGVuZCA/DQo+DQo+IFdvdWxkIEkgbW9kaWZ5IGEgcmVjaXBl4oCZcyBkb19pbnN0YWxs
IChkb19pbnN0YWxsX2FwcGVuZC1yZWNpcGVfeHl6KSA/LCANCj4gb3Igd291bGQgSSBtb2RpZnkg
dGhlIGltYWdlIHJlY2lwZSAoZG9faW5zdGFsbF9hcHBlbmQtaW1hZ2VfQUJDKSBJIGFtIA0KPiBs
ZWFuaW5nIHRoaXMgd2F5IHRvIGF2b2lkIGNhc2VzIHdoZXJlIHRoZSBjb21wb25lbnQgcmVjaXBl
cyBtaWdodCBoYXZlIA0KPiBiYmFwcGVuZHMgaW4gcGxhY2UgYWxyZWFkeSA/DQoNCiAgaSB3b3Vs
ZCB0aGluayBzdGFydCB3aXRoIGRlZmluaW5nIGEgbWluaW1hbCBpbWFnZSwgdGhlbiBkZWZpbmUg
b3RoZXIgaW1hZ2VzIGJhc2VkIG9uIHRoYXQgb25lIHdoaWNoIGFkZCBtb3JlIHJlY2lwZXMuIHRo
aXMgaGFzIG5vdGhpbmcgdG8gZG8gd2l0aCByZWRlZmluaW5nIHRoZSByZWNpcGVzLCBpdCBqdXN0
IG1lYW5zIGRlZmluaW5nIG1vcmUgdGhhbiBvbmUgaW1hZ2UuDQoNCnJkYXkNCg==

