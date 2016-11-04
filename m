Return-Path: <dinhn@cisco.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CB43EE00BB0; Fri,  4 Nov 2016 08:09:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_HI,SPF_HELO_PASS,
	USER_IN_DEF_DKIM_WL autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -7.5 USER_IN_DEF_DKIM_WL From: address is in the default DKIM
	white-list
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [173.37.142.88 listed in list.dnswl.org]
Received: from alln-iport-1.cisco.com (alln-iport-1.cisco.com [173.37.142.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DFD4E00ACE
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 08:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=cisco.com; i=@cisco.com; l=3284; q=dns/txt; s=iport;
	t=1478272189; x=1479481789;
	h=from:to:subject:date:message-id:mime-version;
	bh=AyoYp6sBwvGXF8mKepxFfvFW+bXdgaS9J6kWeMNqFC4=;
	b=Ba3PILG8Sk46fnhECcHdjPle22LYB4efDfT5hMY2dXWpXKISjaIPVhD+
	91GrNi2YFngS+g/5gfyHqAH6x77bqABCScdOBQoj1KQKMv9uhjPvowwvC
	wbTJP/+Mg+jOSZ1OsNP88ZXrG35TisPZYZSFsYm8H3A/zXjKK6XUOfd7o I=;
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0DnBAA9pBxY/49dJa1dHAEBBAEBCgEBg?=
	=?us-ascii?q?nM7AQEBAQEfWHwHs1+DCYIPgggghh+BfEATAQIBAQEBAQEBYh0LhGgjaAEMAT0?=
	=?us-ascii?q?CBDAnBIhrn16Peo0DAQEBAQEBBAEBAQEBAQEBAQEBHIY/gX2KIy2CLwWaIwGGM?=
	=?us-ascii?q?4MMBYZ7gW5OhCGJLZEkAR8BNWyFIXKGaIEMAQEB?=
X-IronPort-AV: E=Sophos;i="5.31,443,1473120000"; 
	d="scan'208,217";a="344321745"
Received: from rcdn-core-7.cisco.com ([173.37.93.143])
	by alln-iport-1.cisco.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Nov 2016 15:09:47 +0000
Received: from XCH-RTP-004.cisco.com (xch-rtp-004.cisco.com [64.101.220.144])
	by rcdn-core-7.cisco.com (8.14.5/8.14.5) with ESMTP id uA4F9ljk008160
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 4 Nov 2016 15:09:47 GMT
Received: from xch-rtp-002.cisco.com (64.101.220.142) by XCH-RTP-004.cisco.com
	(64.101.220.144) with Microsoft SMTP Server (TLS) id 15.0.1210.3;
	Fri, 4 Nov 2016 11:09:46 -0400
Received: from xch-rtp-002.cisco.com ([64.101.220.142]) by
	XCH-RTP-002.cisco.com ([64.101.220.142]) with mapi id 15.00.1210.000;
	Fri, 4 Nov 2016 11:09:46 -0400
From: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto : QA issue: package qlibc-dbg contains bad RPATH 
Thread-Index: AQHSNq16vmh4rdIsNEmUhoYDEGxJAg==
Date: Fri, 4 Nov 2016 15:09:46 +0000
Message-ID: <560994DC-02C8-4A2C-B489-646F9DBBF7EF@cisco.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/f.15.1.160411
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.24.102.175]
MIME-Version: 1.0
Subject: Yocto : QA issue: package qlibc-dbg contains bad RPATH
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
X-List-Received-Date: Fri, 04 Nov 2016 15:09:52 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_560994DC02C84A2CB489646F9DBBF7EFciscocom_"

--_000_560994DC02C84A2CB489646F9DBBF7EFciscocom_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgWW9jdG8gR3VydXMsDQoNCkVSUk9SOiBRQSBJc3N1ZTogcGFja2FnZSBxbGliYy1kYmcgY29u
dGFpbnMgYmFkIFJQQVRIIC9tZWRpYS9yYWdodXJhbS9kYXRhL2RpbmhuL2lveERldkxhdGVzdC9p
b3hzZGsveXBfcWxpYmMzMi90bXAvd29yay9wcGNlNTAwdjItcG9reS1saW51eC1nbnVzcGUvcWxp
YmMvMS4wLXIwL2dpdC9saWIgaW4gZmlsZSAvbWVkaWEvcmFnaHVyYW0vZGF0YS9kaW5obi9pb3hE
ZXZMYXRlc3QvaW94c2RrL3lwX3FsaWJjMzIvdG1wL3dvcmsvcHBjZTUwMHYyLXBva3ktbGludXgt
Z251c3BlL3FsaWJjLzEuMC1yMC9wYWNrYWdlcy1zcGxpdC9xbGliYy1kYmcvdXNyL2xpYi9saWJx
bGliY2V4dC5zbyBbcnBhdGhzXQ0KRVJST1I6IFFBIHJ1biBmb3VuZCBmYXRhbCBlcnJvcnMuIFBs
ZWFzZSBjb25zaWRlciBmaXhpbmcgdGhlbS4NCg0KDQpJIGFtIGFibGUgdG8gY29tcGlsZSBhbmQg
YnVpbGQgSVBLIHBhY2thZ2UgZm9yIHFsaWJjIHJlY2lwZS4gQnV0IGl0IHRoZSBhYm92ZSBRQSBp
c3N1ZSwgd2hpY2ggaW5kaWNhdGUgcGFja2FnZSBxbGliYy1kYmcgaGFzIGEgYmFkIFJQQVRILg0K
QW55IGlkZWEgaG93IHRvIHNvbHZlIHRoaXM/DQoNCk1hbnkgdGhhbmtzIGluIGFkdmFuY2UNCiAg
4oCURGluaA0K

--_000_560994DC02C84A2CB489646F9DBBF7EFciscocom_
Content-Type: text/html; charset="utf-8"
Content-ID: <AD5A19E63AF67C45BA5B28CF6615B0D5@emea.cisco.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5IHN0eWxlPSJ3b3JkLXdy
YXA6IGJyZWFrLXdvcmQ7IC13ZWJraXQtbmJzcC1tb2RlOiBzcGFjZTsgLXdlYmtpdC1saW5lLWJy
ZWFrOiBhZnRlci13aGl0ZS1zcGFjZTsgZm9udC1zaXplOiAxNHB4OyBmb250LWZhbWlseTogQ2Fs
aWJyaSwgc2Fucy1zZXJpZjsiPg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPkhp
IFlvY3RvIEd1cnVzLDwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPjxi
cj4NCjwvZGl2Pg0KPGRpdj4NCjxkaXY+RVJST1I6IDxmb250IGNvbG9yPSIjZmYwMDAwIj5RQSBJ
c3N1ZTogcGFja2FnZSBxbGliYy1kYmcgY29udGFpbnMgYmFkIFJQQVRIPC9mb250PiAvbWVkaWEv
cmFnaHVyYW0vZGF0YS9kaW5obi9pb3hEZXZMYXRlc3QvaW94c2RrL3lwX3FsaWJjMzIvdG1wL3dv
cmsvcHBjZTUwMHYyLXBva3ktbGludXgtZ251c3BlL3FsaWJjLzEuMC1yMC9naXQvbGliIGluIGZp
bGUgL21lZGlhL3JhZ2h1cmFtL2RhdGEvZGluaG4vaW94RGV2TGF0ZXN0L2lveHNkay95cF9xbGli
YzMyL3RtcC93b3JrL3BwY2U1MDB2Mi1wb2t5LWxpbnV4LWdudXNwZS9xbGliYy8xLjAtcjAvcGFj
a2FnZXMtc3BsaXQvcWxpYmMtZGJnL3Vzci9saWIvbGlicWxpYmNleHQuc28NCiBbcnBhdGhzXTwv
ZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPkVSUk9SOiBRQSBydW4gZm91
bmQgZmF0YWwgZXJyb3JzLiBQbGVhc2UgY29uc2lkZXIgZml4aW5nIHRoZW0uPC9kaXY+DQo8L2Rp
dj4NCjxkaXYgc3R5bGU9ImNvbG9yOiByZ2IoMCwgMCwgMCk7Ij48YnI+DQo8L2Rpdj4NCjxkaXYg
c3R5bGU9ImNvbG9yOiByZ2IoMCwgMCwgMCk7Ij48YnI+DQo8L2Rpdj4NCjxkaXYgc3R5bGU9ImNv
bG9yOiByZ2IoMCwgMCwgMCk7Ij5JIGFtIGFibGUgdG8gY29tcGlsZSBhbmQgYnVpbGQgSVBLIHBh
Y2thZ2UgZm9yIHFsaWJjIHJlY2lwZS4gQnV0IGl0IHRoZSBhYm92ZSBRQSBpc3N1ZSwgd2hpY2gg
aW5kaWNhdGUgcGFja2FnZSBxbGliYy1kYmcgaGFzIGEgYmFkIFJQQVRILiZuYnNwOzwvZGl2Pg0K
PGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPkFueSBpZGVhIGhvdyB0byBzb2x2ZSB0
aGlzPzwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPjxicj4NCjwvZGl2
Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPk1hbnkgdGhhbmtzIGluIGFkdmFu
Y2U8L2Rpdj4NCjxkaXYgc3R5bGU9ImNvbG9yOiByZ2IoMCwgMCwgMCk7Ij4mbmJzcDsg4oCURGlu
aCZuYnNwOzwvZGl2Pg0KPGRpdiBzdHlsZT0iY29sb3I6IHJnYigwLCAwLCAwKTsiPg0KPGRpdiBp
ZD0iTUFDX09VVExPT0tfU0lHTkFUVVJFIj48L2Rpdj4NCjwvZGl2Pg0KPC9ib2R5Pg0KPC9odG1s
Pg0K

--_000_560994DC02C84A2CB489646F9DBBF7EFciscocom_--
