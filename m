Return-Path: <denis.hopp@vaillant-group.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99F20E00D11; Tue, 29 Jan 2019 22:46:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [213.15.0.25 listed in list.dnswl.org]
Received: from mailgw01.vaillant-group.net (mailgw01.vaillant-group.net
	[213.15.0.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69AF1E00CDF
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2019 22:46:24 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailgw01.vaillant-group.net (Postfix) with ESMTP id 6F1BA9C592;
	Wed, 30 Jan 2019 07:46:23 +0100 (CET)
X-Virus-Scanned: Virusscanner at mailgw01
Received: from mailgw01.vaillant-group.net ([127.0.0.1])
	by localhost (mailgw01.hp-net.de [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id nGDE2lDfe7gG; Wed, 30 Jan 2019 07:46:23 +0100 (CET)
Received: from jv-de-dc-fideas01.vaillant.vhgroup.lan
	(jv-de-dc-fideas01.vaillant.vhgroup.lan [10.107.7.215])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw01.vaillant-group.net (Postfix) with ESMTPS id 4D4409C2CB;
	Wed, 30 Jan 2019 07:46:23 +0100 (CET)
Received: from DERLVAI0010.vaillant.vhgroup.lan
	(derlvai0010.vaillant.vhgroup.lan [10.108.7.15])
	by jv-de-dc-fideas01.vaillant.vhgroup.lan (Postfix) with ESMTPS;
	Wed, 30 Jan 2019 07:46:23 +0100 (CET)
Received: from DEFRVAI0013.vaillant.vhgroup.lan ([169.254.1.178]) by
	DERLVAI0010.vaillant.vhgroup.lan ([30.33.58.15]) with mapi id
	14.03.0435.000; Wed, 30 Jan 2019 07:46:22 +0100
From: "Hopp, Denis" <Denis.Hopp@vaillant-group.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Thread-Topic: [yocto] [YP Core] Thud moved out of active releases
Thread-Index: AdS3mNGHUFXY8jK2R+uTmJ8c5qAb2gAWjqqAABzTgNA=
Date: Wed, 30 Jan 2019 06:46:21 +0000
Message-ID: <0EACE12BE5CA844DB512EF10CAC5B840448B3963@DEFRVAI0013.vaillant.vhgroup.lan>
References: <0EACE12BE5CA844DB512EF10CAC5B840448B06B4@DEFRVAI0013.vaillant.vhgroup.lan>
	<CAFNP8Ov9acRVmiRe+E+8guTmGTuR23JaKn=32AZNs4J2m7eu2Q@mail.gmail.com>
In-Reply-To: <CAFNP8Ov9acRVmiRe+E+8guTmGTuR23JaKn=32AZNs4J2m7eu2Q@mail.gmail.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.107.185.224]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [YP Core] Thud moved out of active releases
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
X-List-Received-Date: Wed, 30 Jan 2019 06:46:25 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgU2NvdHQsDQoNCnRoYW5rcyBmb3IgdGhlIHZlcmlmaWNhdGlvbiwgSSB3aWxsIGJlbGlldmUg
aXQganVzdCB3ZW50IHRoZXJlIHVuaW50ZW5kZWQsIHRoZW4uIDIuNi4xIGlzIG5vdCBmYXIsIGFu
eXdheXMuIEZyb20geWVzdGVyZGF5cyBrZXkgbm90ZXM6DQoi4oCiCVlQIDIuNi4xIHNob3VsZCBy
ZWxlYXNlIHRoaXMgd2Vlay4gVGhlIHRyYW5zaXRpb24gdG8gYXV0b21hdGVkIFFBIGlzIHJhaXNp
bmcgc29tZSBxdWVzdGlvbnMgYWJvdXQgdGVzdCByZXN1bHRzIGJ1dCB3ZeKAmXJlIHdvcmtpbmcg
dGhyb3VnaCB0aG9zZS4iDQoNCj4gT24gVHVlc2RheSwgMjkuIEphbiAyMDE5IGF0IDE4OjUzIGJ5
IFNjb3R0IFJpZmVuYmFyayA8c3JpZmVuYmFya0BnbWFpbC5jb20+DQo+IERlbmlzLCANCj4gDQo+
IEkgZG9uJ3QgdW5kZXJzdGFuZCB0aGlzIG15c2VsZi4gIEkgZG9uJ3QgYmVsaWV2ZSAyLjYuMSBo
YXMgcmVsZWFzZWQganVzdCB5ZXQuICBJIGhhdmUgc3ltbGlua3Mgc2V0IHN1Y2ggdGhhdCB0aGUg
ImN1cnJlbnQiIGRvY3VtZW50YXRpb24gcG9pbnRzIHRvICIyLjYiIHNvIGFueSBVUkwgZm9yIGEg
bWFudWFsIHN1Y2ggYXMgaHR0cHM6Ly95b2N0b3Byb2plY3Qub3JnL2RvY3MvY3VycmVudC9yZWYt
bWFudWFsL3JlZi1tYW51YWwuaHRtbCByZXNvbHZlcyB0byB0aGUgIjIuNiIgbWFudWFsLiAgDQo+
IA0KPiBTY290dA0KPj4gT24gTW9uLCBKYW4gMjgsIDIwMTkgYXQgMTA6MzMgUE0gSG9wcCwgRGVu
aXMgPG1haWx0bzpEZW5pcy5Ib3BwQHZhaWxsYW50LWdyb3VwLmNvbT4gd3JvdGU6DQo+PiBIZWxs
byBhbGwsDQo+PiANCj4+IGlzIGl0IGludGVuZGVkIHRoYXQgdGhlIHRodWQgcmVsZWFzZSAyLjYg
ZG9jdW1lbnRzIG92ZXJ2aWV3IHdlbnQgDQo+PiBpbnRvIGFyY2hpdmVkIGRvY3VtZW50cz8gSSBj
YW4ndCBmaW5kIGFueSBuZXdzIGFib3V0IGl0IGFuZCB0aHVkIGlzDQo+PiBzdGlsbCBwcm9tb3Rl
ZCBhcyBsYXRlc3QgcmVsZWFzZSBvbiB0aGUgZnJvbnRwYWdlLg0KPj4gKGh0dHBzOi8vd3d3Lnlv
Y3RvcHJvamVjdC5vcmcvKQ0KPj4gT3IgaXMgdGhpcyBzdGFuZGFyZCBwcm9jZWR1cmUgYW5kIDIu
Ni4xIHdpbGwgZm9sbG93IHNob3J0bHk/DQo+PiANCj4+IEdyZWV0aW5ncw0KDQoNCg==

