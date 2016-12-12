Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49E79E00C4B; Mon, 12 Dec 2016 06:59:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.36.130 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam02on0130.outbound.protection.outlook.com [104.47.36.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E07F7E00C37
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 06:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=lLm3zNvz0n5rb0gpkOWi/qyVBvDuUAeTLDc+yRGIi5U=;
	b=BJ4iyrajgdgN6wxkw6R8r4rVqiqz8VWjxAWMFmNffJ2AgSY86+BKwcMJgu6QkpeI9sR3/vZvoczwkPpfhKtjsZ/zthLH/1Tf2Gev4xPccee4KLXudQD9VdtnmDcpWROlBcBpqH9IJqnWMYRYuN67dZHdBpSOyi3kDFxdG/uMwLQ=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2956.namprd05.prod.outlook.com (10.168.176.144) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.771.4; Mon, 12 Dec 2016 14:59:33 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0771.014; Mon, 12 Dec 2016 14:59:33 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] Can't enable reverse debugging
Thread-Index: AdJRh7s3U+ajT5gsR0y6A3ueaaSV7AApt/RQAD9Y7oAAU/7XUA==
Date: Mon, 12 Dec 2016 14:59:33 +0000
Message-ID: <DM5PR05MB2954BB4AB770D47BE6BD3562BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
References: <DM5PR05MB29540B30AC5BD787AE4D7310BB840@DM5PR05MB2954.namprd05.prod.outlook.com>
	<DM5PR05MB29547D5AAF9D2D064B8F6DA1BB870@DM5PR05MB2954.namprd05.prod.outlook.com>
	<CAMKF1sqh=VLWPf5-VBSs2dvGwu0XTPuZiLc3WwEGmZ+eOSsY+A@mail.gmail.com>
In-Reply-To: <CAMKF1sqh=VLWPf5-VBSs2dvGwu0XTPuZiLc3WwEGmZ+eOSsY+A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-office365-filtering-correlation-id: e08c8341-ee72-45c5-15f0-08d4229f7bc6
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:DM5PR05MB2956;
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2956;
	7:JVMBXCIWxhBz6Aq7mEtIH9QxjKul+DNazCf/pR6AE6TcK8yy32ZMWxFGvV5V2YVoo+vTqBjWP7+2v6ssm2PyCJ592ezdv5HnnJmuBVB4ZTJ5WW5byQbyFBKDh2q3XWwE0UbSgOVnL55DQl6khL7V+Yv4kL9HibSzAkQOguriej8xqd3o6l1MCHI2tavAvIsHwhjY0ynxKyzeB/XaBLtkPq0DJvjKPg1fRElltzBCgCMajnah5px77pQ7TN4Yjg81jRuqigng8pTcOUiBFKZ9XGmnSbUoDMor2San9ohhzuvUAYK9WT7qRUa6G6PJlKO6gVxmMdJbppL02eIbjpuXEmqfUHLbX2hcuZweP7FLgX43lruw2i8YKfpatjoEd3r8zSNdouCj4yfcMWb4Yz+0MqPi/WXU15V3C1JrJ2cJ/F6icjQyW+9mlLBQT2Lur43Bfu3Hn7O7t11x2d+ZuhOvUg==
x-microsoft-antispam-prvs: <DM5PR05MB2956592D4EFEE5B0B3DA17D2BB980@DM5PR05MB2956.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123562025)(20161123555025)(20161123560025)(20161123564025)(6072148);
	SRVR:DM5PR05MB2956; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2956; 
x-forefront-prvs: 0154C61618
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(189002)(13464003)(377454003)(24454002)(199003)(6506006)(4326007)(81156014)(81166006)(38730400001)(86362001)(2950100002)(7736002)(2906002)(102836003)(6436002)(3846002)(229853002)(97736004)(92566002)(77096006)(39060400001)(6116002)(189998001)(2900100001)(76576001)(33656002)(68736007)(101416001)(5660300001)(74316002)(9686002)(3280700002)(7696004)(110136003)(8936002)(3660700001)(122556002)(54356999)(99286002)(305945005)(6916009)(50986999)(76176999)(66066001)(8676002)(106356001)(105586002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2956;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2016 14:59:33.6775 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2956
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't enable reverse debugging
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
X-List-Received-Date: Mon, 12 Dec 2016 14:59:39 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

S2hlbSwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLaGVtIFJhaiBb
bWFpbHRvOnJhai5raGVtQGdtYWlsLmNvbV0NCj4gU2VudDogU2F0dXJkYXksIERlY2VtYmVyIDEw
LCAyMDE2IDQ6MjYgUE0NCj4gVG86IEJyeWFuIEV2ZW5zb24gPGJldmVuc29uQG1lbGlua2NvcnAu
Y29tPg0KPiBDYzogeW9jdG9AeW9jdG9wcm9qZWN0Lm9yZw0KPiBTdWJqZWN0OiBSZTogW3lvY3Rv
XSBDYW4ndCBlbmFibGUgcmV2ZXJzZSBkZWJ1Z2dpbmcNCj4gDQo+IE9uIEZyaSwgRGVjIDksIDIw
MTYgYXQgODo0MyBBTSwgQnJ5YW4gRXZlbnNvbiA8YmV2ZW5zb25AbWVsaW5rY29ycC5jb20+DQo+
IHdyb3RlOg0KPiA+IEkgdHJpZWQgYSBmZXcgb3RoZXIgdGhpbmdzLCBzZWUgYmVsb3cuDQo+ID4N
Cj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogeW9jdG8tYm91bmNl
c0B5b2N0b3Byb2plY3Qub3JnIFttYWlsdG86eW9jdG8tDQo+ID4+IGJvdW5jZXNAeW9jdG9wcm9q
ZWN0Lm9yZ10gT24gQmVoYWxmIE9mIEJyeWFuIEV2ZW5zb24NCj4gPj4gU2VudDogVGh1cnNkYXks
IERlY2VtYmVyIDA4LCAyMDE2IDI6NTAgUE0NCj4gPj4gVG86IHlvY3RvQHlvY3RvcHJvamVjdC5v
cmcNCj4gPj4gU3ViamVjdDogW3lvY3RvXSBDYW4ndCBlbmFibGUgcmV2ZXJzZSBkZWJ1Z2dpbmcN
Cj4gPj4NCj4gPj4gSSdtIG9uIHBva3kvZGl6enkgYW5kIEknbSBnZXR0aW5nIGEgc2VnZW1lbnRh
dGlvbiBmYXVsdCBpbiBteSBhcHBsaWNhdGlvbg0KPiA+PiB0aGF0IEkgdGhpbmsgbWF5IGJlIHJl
bGF0ZWQgdG8gYSBidWZmZXIgb3ZlcmZsb3cuICBJJ20gdXNpbmcgdGhlIEVjbGlwc2UNCj4gcGx1
Zy1pbg0KPiA+PiAob24gRWNsaXBzZSBLZXBsZXIpIHRvIGRlYnVnIG9uIHRoZSBoYXJkd2FyZSB3
aXRoIEdEQi4gIEknbSB0cnlpbmcgdG8NCj4gZW5hYmxlDQo+ID4+IHJldmVyc2UgZGVidWdnaW5n
IGJ1dCBJIGhhdmUgbm90IGhhZCBhbnkgc3VjY2VzcyBhbmQgSSdtIGxvb2tpbmcgZm9yDQo+IHNv
bWUNCj4gPj4gaGVscC4NCj4gPj4NCj4gPj4gTXkgdGFyZ2V0IHByb2Nlc3NvciBpcyBhbiBTQU05
RzI1IChBUk05MjZFSi1TIGNvcmUpLiAgSSBoYXZlIGJlZW4gYWJsZQ0KPiB0bw0KPiA+PiBkZWJ1
ZyB0aHJvdWdoIEVjbGlwc2Ugb24gdGhlIHRhcmdldCBoYXJkd2FyZSB3aXRob3V0IGlzc3VlLiAg
SSB0cmllZA0KPiBlbmFibGluZw0KPiA+PiBSZXZlcnNlIERlYnVnZ2luZyBieSBnb2luZyB0byBX
aW5kb3ctPkN1c3RvbWl6ZSBQZXJzcGVjdGl2ZS4uLi0NCj4gPj4gPkNvbW1hbmQgR3JvdXBzIEF2
YWlsYWJpbGl0eSBhbmQgc2VsZWN0aW5nICJSZXZlcnNlIERlYnVnZ2luZyIuICBOb3cNCj4gPj4g
dGhlcmUgaXMgYSAiUmV2ZXJzZSBUb2dnbGUiIGJ1dHRvbiBvbiBteSB0b29sYmFyLCBidXQgaXQg
aXMgYWx3YXlzIGdyYXllZA0KPiBvdXQNCj4gPj4gd2hldGhlciBJIGhhdmUgYSBkZWJ1ZyBzZXNz
aW9uIHJ1bm5pbmcgb3Igbm90LiAgSSBoYXZlIGFsc28gdHJpZWQgZW50ZXJpbmcNCj4gdGhlDQo+
ID4+IGNvbW1hbmQgInJlY29yZCIgZnJvbSB0aGUgR0RCIGNvbnNvbGUgYWZ0ZXIgbXkgcHJvZ3Jh
bSBicmVha3MgYXQNCj4gbWFpbi4NCj4gPj4gV2hlbiBJIHJ1biB0aGUgcHJvZ3JhbSwgSSBnZXQg
dGhlIGVycm9yIG1lc3NhZ2UgIlByb2Nlc3MgcmVjb3JkOiBmYWlsZWQNCj4gdG8NCj4gPj4gcmVj
b3JkIGV4ZWN1dGlvbiBsb2ciLg0KPiA+DQo+ID4gSSB0cmllZCBmaXJzdCBydW5uaW5nIG15IGFw
cGxpY2F0aW9uLCBwYXVzaW5nIHRoZSBkZWJ1Z2dlciBhbmQgdGhlbiBzZW5kaW5nDQo+IHRoZSAi
cmVjb3JkIiBjb21tYW5kLiAgV2hlbiBJIGNvbnRpbnVlZCBkZWJ1Z2dpbmcsIEkgZ290IHRoZSBm
b2xsb3dpbmcNCj4gR0RCIGVycm9yOg0KPiA+DQo+ID4gLi4uLng4Nl82NC1uYXRpdmVzZGstcG9r
eXNkay1saW51eC9nZGItY3Jvc3MtY2FuYWRpYW4tYXJtLzcuNy4xLXIwL2dkYi0NCj4gNy43LjEv
Z2RiL3V0aWxzLmM6MTA3MzogaW50ZXJuYWwtZXJyb3I6IHZpcnR1YWwgbWVtb3J5IGV4aGF1c3Rl
ZC4NCj4gPiBBIHByb2JsZW0gaW50ZXJuYWwgdG8gR0RCIGhhcyBiZWVuIGRldGVjdGVkLA0KPiA+
IGZ1cnRoZXIgZGVidWdnaW5nIG1heSBwcm92ZSB1bnJlbGlhYmxlLg0KPiA+DQo+ID4gSSBkaWQg
c29tZSBsb29raW5nIGFyb3VuZCBhbmQgSSBjb3VsZG4ndCBzZWUgYW55IHJlYXNvbmFibGUgYW5z
d2VyIHRvIHdoeQ0KPiB0aGlzIHdvdWxkIGhhcHBlbi4gIEkgYWxzbyBqdXN0IG5vdGljZWQgdGhh
dCBmb3IgdGhlIERlYnVnIENvbmZpZ3VyYXRpb25zDQo+IHVuZGVyIEVjbGlwc2UsIHRoZSBkZWJ1
Z2dlciBzZXR0aW5ncyB0YWIgZG9lc24ndCBoYXZlICJFbmFibGUgUmV2ZXJzZQ0KPiBEZWJ1Z2dp
bmcgYXQgc3RhcnR1cCIgb3B0aW9uIGxpc3RlZCBmb3IgdGhlIEMvQysrIFJlbW90ZSBBcHBsaWNh
dGlvbg0KPiBkZWJ1Z2dpbmcgdHlwZS4gIElzIHRoaXMgb3B0aW9uIGp1c3Qgbm90IGF2YWlsYWJs
ZSB0byBtZSB3aXRoIG15IGVudmlyb25tZW50Pw0KPiANCj4gVGhpcyBjb3VsZCBtZWFuIG1hbnkg
dGhpbmdzIGJ1dCBvbmUgYXJlYSBJIGtub3cgaXMgdHJvdWJsZXNvbWUgaXMNCj4gcHl0aG9uIHN1
cHBvcnQuIFNvbWV0aW1lcyB0aGVyZSBhcmUgaXNzdWVzIGJldHdlZW4NCj4gZnVuZGFtZW50YWwg
dHlwZXMsIGNhbiB5b3UgY2hlY2sgaWYgdGhlIGVycm9yIGhhcHBlbnMgd2hlbiBnZGIgaXMNCj4g
cnVubmluZyBzb21lIHB5dGhvbmljIHN0dWZmLg0KDQpDb3VsZCB5b3UgZXhwbGFpbiBob3cgdG8g
ZG8gdGhpcz8gIEkgZG9uJ3QgdXNlIFB5dGhvbiBzbyBJJ20gbm90IHN1cmUgaWYgSSdtIGRvaW5n
IGEgdmFsaWQgdGVzdC4gIEkgdHJpZWQgdG8gZGVidWcgYSBQeXRob24gc2NyaXB0IHdpdGggR0RC
IHRocm91Z2ggRWNsaXBzZSBhbmQgSSB3YXNuJ3Qgc3VjY2Vzc2Z1bC4gIEkgdGhlbiB3ZW50IHRo
cm91Z2ggdGhlIGNvbW1hbmQgbGluZSBhbmQgd2FzIGFibGUgdG8gcmVtb3RlbHkgcnVuIGEgc2lt
cGxlIFB5dGhvbiBzY3JpcHQgKHByaW50ICJIZWxsbywgUHl0aG9uIiBvbmNlIHBlciBzZWNvbmQp
IHRocm91Z2ggR0RCLiAgSWYgSSBpc3N1ZWQgYSAicmVjb3JkIiBjb21tYW5kIHRocm91Z2ggR0RC
IGZpcnN0LCB0aGVuIHdoZW4gSSB0cmllZCB0byBkZWJ1ZyB0aGUgUHl0aG9uIHNjcmlwdCBJJ2Qg
aW1tZWRpYXRlbHkgZ2V0IGEgc2VnbWVudGF0aW9uIGZhdWx0Lg0KDQpJcyB0aGVyZSBzb21ldGhp
bmcgc3BlY2lmaWMgeW91J2QgbGlrZSBtZSB0byB0cnk/ICBJZiB5b3UgdGhpbmsgdGhlIFB5dGhv
biBzdXBwb3J0IG1heSBiZSB0aGUgaXNzdWUsIGlzIHRoZXJlIHNvbWV0aGluZyBJIHNob3VsZCBi
ZSB2ZXJpZnlpbmcgaXMgcHJlc2VudCBvciBpcyBhdCBhIGNlcnRhaW4gdmVyc2lvbj8NCg0KVGhh
bmtzLA0KQnJ5YW4NCg==

