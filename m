Return-Path: <Shrawan.Kumar@harman.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B18CFE00E25; Tue, 16 Aug 2016 04:55:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.82.243.195 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.bemta8.messagelabs.com (mail1.bemta8.messagelabs.com
	[216.82.243.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63B0DE00E25
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 04:55:25 -0700 (PDT)
Received: from [216.82.241.195] by server-3.bemta-8.messagelabs.com id
	6E/7D-13762-D2FF2B75; Tue, 16 Aug 2016 11:55:25 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprLKsWRWlGSWpSXmKPExsXinSZ8TFfn/6Z
	wg6V/DC1mHdrJZjHp5Ro2ByaPeScDPdpP9LEFMEWxZuYl5VcksGbcnX2DqeCpfMWHV6/ZGhg3
	yHcxcnEICWxhlPi+sJUVzlny7Ah7FyMnkHOQUeL9dh8Qm03AUOJKz11GEFtEIFXi0vOjbCC2s
	ECaxNePC1kh4ukSr1Z+h6oxkjj0upcZxGYRUJVofXUOrIZXwF3ia+8WRoj5xRI7OtrA5nAKmE
	v86XzMBGIzCshKfGlcDdbLLCAucevJfLC4hICAxJI955khbFGJl4//sULYBhJbl+5jgbAVJFZ
	2NwDN5ADq1ZRYv0sfYoyixJTuh+wQJwhKnJz5hAXiBFWJLQt/s0xgFJuFZNsshO5ZSLpnIele
	wMiyilG9OLWoLLVI10QvqSgzPaMkNzEzR9fQwEIvN7W4ODE9NScxqVgvOT93EyMwqhiAYAfjn
	T7nQ4ySHExKorwzJ24MF+JLyk+pzEgszogvKs1JLT7EqMHBIXDl4JHZjFIsefl5qUoSvI1/N4
	ULCRalpqdWpGXmAOMeplSCg0dJhHceSJq3uCAxtzgzHSJ1ilFRSpz3EkhCACSRUZoH1wZLNZc
	YZaWEeRmBjhLiKUgtys0sQZV/xSjOwagkzHsVZApPZl4J3PRXQIuZgBbrS28AWVySiJCSamAs
	1qg7dM9nRcTtgLT6ueWXToq2XbbsDsxctuKRBGOj2bV3lr82v4j3mGWWW3NZRXT1DpfPEZaLE
	loi3qy3lLjHVbOATSc/2U/YrvaT0qaDxvOsWJLN2RXvzX6n9XnX7fqY2NkzWWqu159T4V/OPc
	d37fFrF6b/F+wq3mXpYZ2btOLriyd+vvlKLMUZiYZazEXFiQBCDtB0MAMAAA==
X-Env-Sender: Shrawan.Kumar@harman.com
X-Msg-Ref: server-4.tower-119.messagelabs.com!1471348524!58725658!1
X-Originating-IP: [75.102.19.198]
X-StarScan-Received: 
X-StarScan-Version: 8.77; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 12933 invoked from network); 16 Aug 2016 11:55:24 -0000
Received: from unknown.ord.scnet.net (HELO HICGWSEXHC01.ad.harman.com)
	(75.102.19.198)
	by server-4.tower-119.messagelabs.com with AES128-SHA encrypted SMTP;
	16 Aug 2016 11:55:24 -0000
Received: from HIBDWSMB06.ad.harman.com (10.99.236.96) by
	HICGWSEXHC01.ad.harman.com (10.10.23.65) with Microsoft SMTP Server
	(TLS) id 14.3.235.1; Tue, 16 Aug 2016 06:55:24 -0500
Received: from HIBDWSMB05.ad.harman.com (10.99.236.95) by
	HIBDWSMB06.ad.harman.com (10.99.236.96) with Microsoft SMTP Server
	(TLS) id 15.0.1130.7; Tue, 16 Aug 2016 17:25:20 +0530
Received: from HIBDWSMB05.ad.harman.com ([fe80::18d8:b6af:4383:8957]) by
	HIBDWSMB05.ad.harman.com ([fe80::18d8:b6af:4383:8957%16]) with mapi id
	15.00.1130.005; Tue, 16 Aug 2016 17:25:19 +0530
From: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>
To: Joshua G Lock <joshua.g.lock@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Access Control List (ACL) permissions attributes not
	getting preserved in rootfs
Thread-Index: AQHR9KDlAw1Mgmic4E2ORVjDTkQ6JKBLdVBQ
Date: Tue, 16 Aug 2016 11:55:19 +0000
Message-ID: <b80a230f7b11491b93bf0dfe9cc93a16@HIBDWSMB05.ad.harman.com>
References: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
	<1471009925.19073.6.camel@linux.intel.com>
In-Reply-To: <1471009925.19073.6.camel@linux.intel.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.99.236.43]
MIME-Version: 1.0
Subject: Re: Access Control List (ACL) permissions attributes not getting preserved in rootfs
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
X-List-Received-Date: Tue, 16 Aug 2016 11:55:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

VGhhbmtzIEpvc2h1YSwNCg0KInBvc3RpbnN0IiAgd29ya3MhISAgSSBjb3VsZCBzZWUgdGhlIGF0
dHJpYnV0ZXMgc2V0IHVuZGVyICJwb2t5L2J1aWxkX3FlbXV4ODYvdG1wL3dvcmsvcWVtdXg4Ni1w
b2t5LWxpbnV4L2NvcmUtaW1hZ2UtbWluaW1hbC8xLjAtcjAvcm9vdGZzLyIuDQoNCiBIb3dldmVy
LCBJIHN0aWxsIGNvdWxkIG5vdCBzZWUgdGhlIGF0dHJpYnV0ZXMgYWZ0ZXIgYm9vdGluZyBxZW11
LiBJdCBzZWVtcyBkdXJpbmcgcm9vdGZzLmV4dDQgKG1rZnMuZXh0NCBjb21tYW5kICljcmVhdGlv
biB3aGVuICJjcmVhdGVfaW1hZ2VfZXh0NC5zaCIgaXMgY2FsbGVkICwgYWdhaW4gdGhpcyBpcyBn
ZXR0aW5nICAgbG9zdC4NCg0KQW55IGlkZWEgb24gdGhpcyA/DQoNCg0KUmVnYXJkcw0KU2hyYXdh
bg0KDQoNCg0KDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBKb3NodWEgRyBM
b2NrIFttYWlsdG86am9zaHVhLmcubG9ja0BsaW51eC5pbnRlbC5jb21dIA0KU2VudDogRnJpZGF5
LCBBdWd1c3QgMTIsIDIwMTYgNzoyMiBQTQ0KVG86IEt1bWFyLCBTaHJhd2FuOyB5b2N0b0B5b2N0
b3Byb2plY3Qub3JnDQpTdWJqZWN0OiBSZTogW3lvY3RvXSBBY2Nlc3MgQ29udHJvbCBMaXN0IChB
Q0wpIHBlcm1pc3Npb25zIGF0dHJpYnV0ZXMgbm90IGdldHRpbmcgcHJlc2VydmVkIGluIHJvb3Rm
cw0KDQpPbiBGcmksIDIwMTYtMDgtMTIgYXQgMTI6MzMgKzAwMDAsIEt1bWFyLCBTaHJhd2FuIHdy
b3RlOg0KPiBIZWxsbyBBbGwsDQo+IMKgDQo+IEkgYW0gwqB1c2luZyDCoHBva3kg4oCcIGpldGhy
b+KAnSDCoCwgYW5kIMKgdGhvdWdoIMKgb25lIG9mIG15IHJlY2lwZSwgSSBoYXZlIA0KPiBjcmVh
dGVkIHVzZXIxICYgdXNlcjIgYW5kIHRoZW4gdHJ5aW5nIHRvIHNldCBBQ0wgcnVsZXMgwqBvbiAN
Cj4g4oCcaGVsbG93b3JsZOKAnSBiaW4gYXMgYmVsb3cgOg0KPiDCoA0KPiDCoA0KPiBkb19pbnN0
YWxsKCkgew0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgIGluc3RhbGwg
LWQgJHtEfSR7YmluZGlyfQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKg
IGluc3RhbGwgLW0gMDcwMCBoZWxsb3dvcmxkICR7RH0ke2JpbmRpcn0NCj4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDCoCBpbnN0YWxsIC1kICR7RH0vbGliL3N5c3RlbWQvc3lz
dGVtDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgwqDCoMKgwqAgaW5zdGFsbCAtbSAw
NzAwIGhlbGxvLnNlcnZpY2UgDQo+ICR7RH0vbGliL3N5c3RlbWQvc3lzdGVtLw0KPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIMKgwqDCoMKgIGNob3duwqDCoMKgIHVzZXIxOmdyb3VwMSAk
e0R9JHtiaW5kaXJ9L2hlbGxvd29ybGQNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDCoMKgwqDC
oMKgwqDCoHNldGZhY2wgLW0gdTp1c2VyMjpyLS0gJHtEfSR7YmluZGlyfS9oZWxsb3dvcmxkIH0N
Cj4gwqANCj4gwqANCj4gw6ggV2hlbiBJIHNlZcKgIMKgb24gdGhlIGRldnNoZWxsICggYml0YmFr
ZSBIZWxsb1dvcmxkIOKAk2MgZGV2c2hlbGwpIMKgOg0KPiBwb2t5L2J1aWxkX3FlbXV4ODYvdG1w
L3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtDQo+IG1pbmltYWwvMS4wLXIwL3Jv
b3Rmcy91c3IvYmluIyBnZXRmYWNsIGhlbGxvd29ybGTCoMKgwqAgLCBJIGNvdWxkIHNlZSANCj4g
dGhhdCBBQ0wgcGVybWlzc2lvbnMgYXJlIHNldCBjb3JyZWN0bHkgYXMgYmVsb3cgOg0KPiAtwqDC
oMKgwqDCoMKgwqAgIyBmaWxlOiBoZWxsb3dvcmxkDQo+IC3CoMKgwqDCoMKgwqDCoCAjIG93bmVy
OiB1c2VyMQ0KPiAtwqDCoMKgwqDCoMKgwqAgIyBncm91cDogZ3JvdXAxDQo+IC3CoMKgwqDCoMKg
wqDCoCB1c2VyOjpyd3gNCj4gLcKgwqDCoMKgwqDCoMKgIHVzZXI6dXNlcjI6ci0tDQo+IC3CoMKg
wqDCoMKgwqDCoCBncm91cDo6LS0tDQo+IC3CoMKgwqDCoMKgwqDCoCBtYXNrOjpyLS0NCj4gLcKg
wqDCoMKgwqDCoMKgIG90aGVyOjotLS0NCj4gwqANCj4gSG93ZXZlciwgSXQgZG9lcyBub3Qgc2Vl
bXMgdG8gYmUgZ2V0dGluZyBwcmVzZXJ2ZWQgaW4gcm9vdGZzLiA6DQo+IC9wb2t5L2J1aWxkX3Fl
bXV4ODYvdG1wL3dvcmsvcWVtdXg4Ni1wb2t5LWxpbnV4L2NvcmUtaW1hZ2UtDQo+IG1pbmltYWwv
MS4wLXIwL3Jvb3Rmcy91c3IvYmluIyBnZXRmYWNsIGhlbGxvd29ybGQgIyBmaWxlOiBoZWxsb3dv
cmxkICMgDQo+IG93bmVyOiB1c2VyMSAjIGdyb3VwOiBncm91cDEgdXNlcjo6cnd4DQo+IGdyb3Vw
OjotLS0NCj4gb3RoZXI6Oi0tLQ0KPiDCoA0KPiBxdWljayBoZWxwIMKgaGVyZSB3b3VsZCBiZSBo
aWdobHkgYXBwcmVjaWF0ZWQNCg0KVGhpcyBpcyBkdWUgdG8gdGhlIGZhY3QgdGhhdCB3ZSBkb24n
dCBjdXJyZW50bHkgaGF2ZSBhIG1lY2hhbmlzbSB0byBwcmVzZXJ2ZSB4YXR0ciB0aHJvdWdoIHRv
IGltYWdlIGNvbnN0cnVjdGlvblsxXS4NCg0KVGhlIGxhcmdlc3QgYmFycmllciBmb3IgZG9pZyBz
byBpcyB0aGF0IHRoZSBwYWNrYWdlIG1hbmFnZXJzIChjZXJ0YWlubHkgZHBrZyBhbmQgcnBtKSBk
b24ndCBoYXZlIGFueSBzdXBwb3J0IGZvciB4YXR0cnMgaW4gcGFja2FnZXMgKGFuIGltYWdlIGlz
IHBvcHVsYXRlZCB2aWEgdGhlIHBhY2thZ2UgbWFuYWdlcikuDQoNClRvIHRoZSBiZXN0IG9mIG15
IGtub3dsZWRnZSB0aGUgb25seSBvcHRpb24gZm9yIGFkZGluZyBzb21lIHhhdHRyL0FDTCBpcyB0
byB1c2UgYSBwb3N0aW5zdFsyXSB0byBzZXQgdGhlIGF0dHJpYnV0ZXMgYWZ0ZXIgdGhlIHBhY2th
Z2UgaGFzIGJlZW4gaW5zdGFsbGVkLg0KDQpSZWdhcmRzLA0KDQpKb3NodWENCg0KMS7CoGh0dHBz
Oi8vYnVnemlsbGEueW9jdG9wcm9qZWN0Lm9yZy9zaG93X2J1Zy5jZ2k/aWQ9OTg1OA0KMi7CoGh0
dHA6Ly93d3cueW9jdG9wcm9qZWN0Lm9yZy9kb2NzLzIuMS9kZXYtbWFudWFsL2Rldi1tYW51YWwu
aHRtbCNuZXctDQpyZWNpcGUtcG9zdC1pbnN0YWxsYXRpb24tc2NyaXB0cw0KDQo=

