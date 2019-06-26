Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0FA3BE00D51; Tue, 25 Jun 2019 19:58:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [139.15.230.186 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 60677 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Jun 2019 19:58:04 PDT
Received: from de-out1.bosch-org.com (de-out1.bosch-org.com [139.15.230.186])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0465BE00931
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 19:58:04 -0700 (PDT)
Received: from fe0vm1650.rbesz01.com (unknown [139.15.230.188])
	by fe0vms0186.rbdmz01.com (Postfix) with ESMTPS id 45YSQ36kYQz1XLFjN;
	Wed, 26 Jun 2019 04:58:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=2015-01-21; t=1561517883;
	bh=kmbbyd/eXHWmM/ldh4LARMy1qrokxHzermXXBChs6H0=; l=10;
	h=From:Subject:From:Reply-To:Sender;
	b=Pdwv6Ps3C67XyekfDeJPMrD7dUAZpCLlxpBS8nyASUp1b/cEEqSlJokpNLHwRD0X6
	Zfv9ijUUEn2u3DM3uxcV5ptSqA6qL2m+7qicxJS0Cm4sJGHx0lOo/XgCguaEb4WKtB
	4CgR533tcOh8WtlEAhhS/F/7TorKAfE1mwHG1Wks=
Received: from fe0vm7918.rbesz01.com (unknown [10.58.172.176])
	by fe0vm1650.rbesz01.com (Postfix) with ESMTPS id 45YSQ36Q2Hz1CV;
	Wed, 26 Jun 2019 04:58:03 +0200 (CEST)
X-AuditID: 0a3aad10-057ff70000007f88-51-5d12df3b3bb4
Received: from si0vm1949.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm7918.rbesz01.com (SMG Outbound) with SMTP id
	B4.64.32648.B3FD21D5; Wed, 26 Jun 2019 04:58:03 +0200 (CEST)
Received: from FE-MBX2035.de.bosch.com (fe-mbx2035.de.bosch.com [10.3.231.45])
	by si0vm1949.rbesz01.com (Postfix) with ESMTPS id 45YSQ33lJZz6Cjg8J; 
	Wed, 26 Jun 2019 04:58:03 +0200 (CEST)
Received: from SGPMBX2018.APAC.bosch.com (10.187.83.36) by
	FE-MBX2035.de.bosch.com (10.3.231.45) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1713.5; Wed, 26 Jun 2019 04:58:02 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2018.APAC.bosch.com (10.187.83.36) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1713.5; Wed, 26 Jun 2019 10:58:01 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1713.007; Wed, 26 Jun 2019 10:58:01 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] build on CVE is failing
Thread-Index: AdUrPDrE6qabECPnQOS4uz2QpTQK////y2UA//6utWA=
Date: Wed, 26 Jun 2019 02:58:00 +0000
Message-ID: <22b8b93a35164facac62905d3c1dbd5c@in.bosch.com>
References: <22839e9497e34df9b93272590fcc483d@in.bosch.com>
	<CAJTo0LaUTDZi-cKg4dfGDdfm+gNrVxwPRQpVO0chprNn9nTBMQ@mail.gmail.com>
In-Reply-To: <CAJTo0LaUTDZi-cKg4dfGDdfm+gNrVxwPRQpVO0chprNn9nTBMQ@mail.gmail.com>
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.209]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA22TfUwbdRjH+fWu5eh6cD2oPCsvQiOJLGOAA+2AOI0JIfOPvfzhNh2OQw7a
	DFrSK4SiiWwCc6VORBSoGzA2JsgQt+msyEZohkMWwC7MjJetLmOG4mhYEGUxoHccrP3Dfy7f
	5+XzfX6/55cjMPoqoSb0BjNrMjCFGpkcl6d1RyWku+nsJNdsvLZl8QmubXbs1NZ5LshewbLs
	x7sCs872eSRZx4dOyvZgb8oz8thCfSlrSnw5R677dXYeL74QWuZ1duEV6BFtRUEEUCmwMuvG
	BU1TjRI4/2O5Fcl5fQ1BRfdCoBgsIFg6Oo/EYBHBzG+jEjG4jqDXdkUq8DIqE7rqj0kEHUZt
	gZE/HmBCE0bZJGC7M702JJTaCp+dasTFpgRYftQfKOo06G5aRoLGqTiob/teJmiSSgdrW/X6
	6GMIBqvHMaEQRO2F7+6OrwGIioK2ibo1U4wKh8mZFol4OwrO9Y1holaB58GqVNSxcPFGDZ8n
	+P546OlNFNFYqK+5HyjOVcLPTTN4LQK7n6vdR9j9CLsf0Yrwr5Aqn00qLXppR7J2mymX5cqT
	kre9Yyy6hMQ3pBzoh+F8J6IIpFGQ8hE6m5YypZylyIlSCYlGRbKX+VRwrjHPomM43WFTSSHL
	adRk5C+7DtGhT9NcSW6RnuP0RoMTAYFpwsh2hsqmyTzGUs6ajCLmRBEErgknC4jdh2iqgDGz
	R1i2mDVtVNMJQgNkyD1+oNLEFrBl+fpC80ZZE0WigIAA+hn/iv9YCRHkRNsJBT+74i5vQXLF
	TBGnL1jHN4s4vZH1ocNoN1HrOd2GEQODzfz3+un2NozGDUYDqw4n/xa8KIHSlRienkYdSd7c
	H5JNq/wKPsc5NIH4fYaSVdM8rOB/G985gIwQVqdcT/qgF9p5hnpIwKePHRIYmv0dA+f5Sil4
	V0al8HX1LSkMNR2VwfiJK5ugcd6qAIfDrYAvLo4Gw79d90LAujCshP6Rn2je4EQYLH0+FgYd
	V10q8E7ObQZ3kzMCzt46GQWTrTXR0PHx42ho/rA1Blb7bj8Pvd134qFqqXMr2D9aTYDp2jPb
	4dKEPRUe2jpT4bJ3MBWmV+d3QM8ndWlz/JIl/JJzqtaWbGbM/7Pk9azvduoK9CIjvVZzO3aw
	sudJiyXnr3/Gwm+8IZtyfaA7deBIZGXvQIbHGzO1T7H4XKX7m8PjMttrZV2diXHLzfsOuqNm
	MlxxezMtIStvadtlf3KddPT0QMOZXcEx77luVilHUuYdU3P3EzIrOg48u6ngyz217/e/bux/
	d7GhYWeZ99uDr67oUnrf1uCcjknegpk45j9dcIsi0AQAAA==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Ramadevi Sennakesavan
	\(RBEI/ECF3\)" <Ramadevi.Sennakesavan@in.bosch.com>, "Farkas Bastian
	\(ADITG/ESA\)" <bfarkas@de.adit-jv.com>
Subject: Re: build on CVE is failing
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 26 Jun 2019 02:58:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgUm9zcywNCg0KU3VyZSwgSSB3aWxsIGdpdmUgYSB0cnkuDQpUaGFuayBZb3UuDQoNCkJlc3Qg
cmVnYXJkcywNCg0KUmFqZW5kcmFuIFZpZ25lc2gNClJCRUkvRUNGMyAgDQoNClRlbC4gKzkxIDQy
MiA2NzYtNTEwMyB8IFRocmVlbWEgV29yazogKzkxNDIyNjc2NTEwMyANCg0KDQotLS0tLU9yaWdp
bmFsIE1lc3NhZ2UtLS0tLQ0KRnJvbTogQnVydG9uLCBSb3NzIDxyb3NzLmJ1cnRvbkBpbnRlbC5j
b20+IA0KU2VudDogVHVlc2RheSwgSnVuZSAyNSwgMjAxOSA4OjE4IFBNDQpUbzogVmlnbmVzaCBS
YWplbmRyYW4gKFJCRUkvRUNGMykgPFZpZ25lc2guUmFqZW5kcmFuQGluLmJvc2NoLmNvbT4NCkNj
OiB5b2N0b0B5b2N0b3Byb2plY3Qub3JnOyBSYW1hZGV2aSBTZW5uYWtlc2F2YW4gKFJCRUkvRUNG
MykgPFJhbWFkZXZpLlNlbm5ha2VzYXZhbkBpbi5ib3NjaC5jb20+DQpTdWJqZWN0OiBSZTogW3lv
Y3RvXSBidWlsZCBvbiBDVkUgaXMgZmFpbGluZw0KDQpZZXMsIHlvdSdyZSByaWdodCwgdGhpcyBp
cyBhIGJ1ZyBpbiB0aGUgbmV3IGZ1bmN0aW9uYWxpdHkuDQoNClRoZSB1c3VhbCB2YXJpYWJsZXMg
YXJlIGluIHRoZSBkYXRhIHN0b3JlLCBzbyB5b3UgY2FuIGdldCB0aGVtIHdpdGggZS5nLiBkLmdl
dFZhcigiaHR0cF9wcm94eSIpLCBhcyB5b3UgY2FuIGNsZWFybHkgcmVwbGljYXRlIHRoZSBmYWls
dXJlIHdvdWxkIHlvdSBiZSBhYmxlIHRvIGF0dGVtcHQgYSBwYXRjaD8NCg0KUm9zcw0KDQpPbiBU
dWUsIDI1IEp1biAyMDE5IGF0IDExOjE0LCBWaWduZXNoIFJhamVuZHJhbiAoUkJFSS9FQ0YzKSA8
VmlnbmVzaC5SYWplbmRyYW5AaW4uYm9zY2guY29tPiB3cm90ZToNCj4NCj4gSGksDQo+DQo+DQo+
DQo+IEkgd2FzIHRyeWluZyB0byBjaGVjayB0aGUgQ1ZFIGZlYXR1cmUgb24gWW9jdG8uDQo+DQo+
DQo+DQo+IEkgY291bGRu4oCZdCBzdWNjZWVkIHRoZSBidWlsZCB3aXRoIENWRS4NCj4NCj4gaHR0
cHM6Ly9wYXN0ZWJpbi5jb20vbTdoTmNOY20NCj4NCj4NCj4NCj4gVGhlcmUgc2VlbXMgbGlrZSBw
cm94eSBlbnZpcm9ubWVudCBkb2VzbuKAmXQgcmVjb2duaXplZCBpbnNpZGUgZG9fcG9wdWxhdGVf
Y3ZlX2RiLg0KPg0KPg0KPg0KPiBFUlJPUjogY3ZlLXVwZGF0ZS1kYi0xLjAtcjAgZG9fcG9wdWxh
dGVfY3ZlX2RiOiBIVFRQU0Nvbm5lY3Rpb25Qb29sKGhvc3Q9J252ZC5uaXN0LmdvdicsIHBvcnQ9
NDQzKToNCj4NCj4gTWF4IHJldHJpZXMgZXhjZWVkZWQgd2l0aCB1cmw6IA0KPiAvZmVlZHMvanNv
bi9jdmUvMS4wL252ZGN2ZS0xLjAtMjAwMi5tZXRhIChDYXVzZWQgYnkgDQo+IE5ld0Nvbm5lY3Rp
b25FcnJvcignPHVybGxpYjMuY29ubmVjdGlvbi5WZXJpZmllZEhUVFBTQ29ubmVjdGlvbiBvYmpl
Y3QgDQo+IGF0IDB4N2Y3ODdmMWE4OTA4PjogRmFpbGVkIHRvIGVzdGFibGlzaCBhIG5ldyBjb25u
ZWN0aW9uOiBbRXJybm8gLTJdIA0KPiBOYW1lIG9yIHNlcnZpY2Ugbm90IGtub3duJywpKQ0KPg0K
Pg0KPg0KPiBJIGFtIHVzaW5nIEhFQUQgb2YgcG9reSBtYXN0ZXIgYnJhbmNoLg0KPg0KPg0KPg0K
PiBCZXN0IHJlZ2FyZHMsDQo+DQo+IFJhamVuZHJhbiBWaWduZXNoDQo+IFJCRUkvRUNGMw0KPg0K
PiBUZWwuICs5MSA0MjIgNjc2LTUxMDMgfCBUaHJlZW1hIFdvcms6ICs5MTQyMjY3NjUxMDMNCj4N
Cj4gLS0NCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18N
Cj4geW9jdG8gbWFpbGluZyBsaXN0DQo+IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNCj4gaHR0cHM6
Ly9saXN0cy55b2N0b3Byb2plY3Qub3JnL2xpc3RpbmZvL3lvY3RvDQo=

