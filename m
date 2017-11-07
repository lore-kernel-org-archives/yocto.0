Return-Path: <zhenlw@msn.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6AF0E00A6A; Tue,  7 Nov 2017 08:43:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zhenlw[at]msn.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.255.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 105158 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Nov 2017 08:43:11 PST
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-oln040092255083.outbound.protection.outlook.com [40.92.255.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02A64E00928
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 08:43:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=msn.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=Utg4z4y+IiZiMo+hyTYxwF0BjiNaA2X7P3acDsXJ1i8=;
	b=bLgVoooi0UwDDGKglqu3GVYaR3Fmo0nNT+iKql1anyhvki+TqWH/Hdbk1K8AKAFldF0u/upDLs6HuetqsVprMWeX96kl6b12e73JIX+/5UYnlHNdcrCgAa8oGYf24kxr8Gu2u5/w9Ohp4CBj/amwpX0bWjE2glXJP6gZq25+cu8mowOKrBUD5hoHnSBcwF5179t/PxnPEDZIvftxUBaauKEy1CK3dFczHKp32is+nvkIjQV32kceBWvPO/GaSzF8tHNyosuL8rJIN/qq1OiTTrNlNcY8KRYpWhTW6Zsch7j8fuBXWzHsEnnxwNqgCT5aAHbFEyNhQ0N1BvYwcU2iPQ==
Received: from SG2APC01FT009.eop-APC01.prod.protection.outlook.com
	(10.152.250.58) by SG2APC01HT220.eop-APC01.prod.protection.outlook.com
	(10.152.251.158) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.178.5;
	Tue, 7 Nov 2017 15:09:27 +0000
Received: from PS1PR04MB1001.apcprd04.prod.outlook.com (10.152.250.58) by
	SG2APC01FT009.mail.protection.outlook.com (10.152.250.158) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.20.178.5 via
	Frontend Transport; Tue, 7 Nov 2017 15:09:28 +0000
Received: from PS1PR04MB1001.apcprd04.prod.outlook.com
	([fe80::9c39:d3de:5185:b3e9]) by
	PS1PR04MB1001.apcprd04.prod.outlook.com
	([fe80::9c39:d3de:5185:b3e9%14]) with mapi id 15.20.0197.020;
	Tue, 7 Nov 2017 15:09:27 +0000
From: Zhen LiWei <zhenlw@msn.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: use native (cross) toolchain instead of a populated nativesdk
	(cross-canadian) toolchain
Thread-Index: AQHTV9pnzH17ANxPqUOFgosuPP1aOg==
Date: Tue, 7 Nov 2017 15:09:27 +0000
Message-ID: <PS1PR04MB1001467D35F6C6E759E56B7AC7510@PS1PR04MB1001.apcprd04.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=msn.com; 
x-incomingtopheadermarker: OriginalChecksum:1B110C329691D5A08583E17C2C01C8CEF29D07FF921BD7079216DF634A65F2A6;
	UpperCasedChecksum:46C782F093184E59C8FFBB60010F76E40792F2E3DF12F6F66AA09D90B054741E;
	SizeAsReceived:6981; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [sbtf0fpwYUWzFsM6op5TsktMgw11jfzs]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SG2APC01HT220;
	6:8+HNxXSiEYkETpkECQHWgQuFX0DeLs9KHctaFnOJZVhtuQAWUunQDai6LR9jfh+AQcOd1xXeQPSMnjTg6hrwY/ruLbeddr6khhqsmOZ5jkF+O79qtxJrZbqjY7Gi+Y3t/ClBaQq24JvNlAwq+PeuvBFyFvdbSanBaWPeh5Q4g8ysfa2i5Kc59UR5qy03PixN0fgjs+9QT7lIyznr2MBtHejAdL4MfQ27nFgZgN6+VR252HwLZPp3kLT0M5umn98Zp++cwfVkJtFa3f9OSJ16XEBb1J9KyySBRHKmAAyCdpj50zWT1bwduYtNY+/KTTmNIY8gqrtdPDPu2vVPap6IBMfuoXdev3x4yJtewG+/DBU=;
	5:IN/VEYN//hHZIrEF/M0u4PRM0BRKfL0zaE9kYxBr8sUMaf41KnU7UMDtouWbAwSg1WsNif+kODxfCd20FNle+ixE1s9IX+JPq9sNMVTx8ZSV5IHBuPe26dQcxqPIhMu3y00PVDmSnODY7y0ZcA4z002am/XWXEPXv8r+pBoyJ/M=;
	24:M1tfaJkwY6GxSH/5ZTuusUU+KChyj/ZWZDOWc0PQoD3s0Xqh+qMdFTKQR6DuAoCT7lG5C70xnYxyITyWYi0o7CGZmaSArcltw8eGSH+SNmo=;
	7:8ZMwuvbqwC735CqB7KAt7DJTXJFBwkofKfpB704pHn49bnswf/cBg4FtDe6iNzNY63OSmZ5OMnTd0ABMpQIIUBZDPfnKbn/9M7OvnH87jUGdX4fZZqMMg9n8Qx7xvyZOHBzcf+jdCb+uM+6MqxBJfyK8+qHSErsWtOnuoaby896jkEhXFlCHbijHvjksxdGnGdtvQ4nEbmc2rwxKC39cIHJNG5RG0kwsnSa6emLZYS9cawxOZAChV6hA1RPx4VKe
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: f169f650-06fc-4855-6108-08d525f188c0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:SG2APC01HT220; 
x-ms-traffictypediagnostic: SG2APC01HT220:
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:SG2APC01HT220; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:SG2APC01HT220; 
x-forefront-prvs: 0484063412
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SG2APC01HT220;
	H:PS1PR04MB1001.apcprd04.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f169f650-06fc-4855-6108-08d525f188c0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2017 15:09:27.6949 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT220
Subject: use native (cross) toolchain instead of a populated nativesdk (cross-canadian) toolchain
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
X-List-Received-Date: Tue, 07 Nov 2017 16:43:13 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_PS1PR04MB1001467D35F6C6E759E56B7AC7510PS1PR04MB1001apcp_"

--_000_PS1PR04MB1001467D35F6C6E759E56B7AC7510PS1PR04MB1001apcp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIEkgYW0gd29ya2luZyBvbiBhIHlvY3RvIDIuMCBiYXNlZCBkaXN0cm8gYW5kIHdlIHVzdWFs
bHkgcG9wdWxhdGVfc2RrIGFuZCB1c2UgdGhlIHRvb2xjaGFpbiBpbmNsdWRlZCBpbiBTREsuDQoN
Cg0KDQpCdXQgd2UgYWxzbyBsaWtlIHRvIGNoZWNrIHRoZSBTREsgaW50byBhIFNWTiByZXBvLCBh
bmQgY2hlY2tvdXQgaXQgYW55d2hlcmUsIGFuZCB1c2UgaXQgYXdheSByaWdodCB3aGVyZSBpdCBp
cyBjaGVja2VkIG91dC4gQW5kIHNpbmNlIHRoZSBuYXRpdmVzZGsgYmluYXJpZXMgYXJlIGJhc2Vk
IG9uIGEgZGlmZmVyZW50IGdsaWJjIHRoYW4gbmF0aXZlLCBhbmQgaGF2ZSB0aGUg4oCcZHluYW1p
YyBsb2FkZXLigJ0gcGF0aCBoYXJkY29kZWQgaW4gdGhlbSwgSSBoYXZlIHRvIHBhdGNoIHRoZSB0
b29sY2hhaW4gYmluYXJpZXPigJkgLmludGVycCBzZWNpb24gdG8gcG9pbnQgdG8gYSBjb21tb24g
cGxhY2UsIGFuZCB1cGRhdGUgdGhlIGxvYWRlciBpbnRvIHRoYXQgY29tbW9uIHBsYWNlIGF1dG9t
YXRpY2FsbHkgaW4gc29tZSB3YXkuIE90aGVyIHRoYW4gdGhpcywgdGhpbmdzIHdvcmsgdmVyeSBn
b29kIGZvciB1cy4NCg0KDQoNClRoZW4gSSB3YXMgdGhpbmtpbmc6IGlzIGl0IGEgZ29vZCBwcmFj
dGljZSwgdG8gdXNlIHRoZSBuYXRpdmUvY3Jvc3MgdG9vbGNoYWluIGRpcmVjdGx5IGZyb20gdGhl
IHRtcC9zeXNyb290cy94ODZfNjQtbmF0aXZlIGZvbGRlci4gSSB0cmllZCBhbmQgc3VjY2VlZGVk
LCBieSBqdXN0IG1vdmluZyB0aGUgc3lzcm9vdCB0byB3aGVyZSB0aGUgY2hlY2tlZC1vdXQgbmF0
aXZlc2RrIHRvb2xjaGFpbiB3YXMuDQoNCg0KDQpBbiBleHRyYSBib251cyBhYm91dCB0aGlzIGlz
IHRoYXQgd2UgZ290IGEgbW9yZSBwb3B1bGF0ZWQgc3lzcm9vdCBmb3IgbmF0aXZlIHBsYXRmb3Jt
IHRvbywgZm9yIGV4YW1wbGUgYSBvcGVuc3NsIGRldiBwYWNrYWdlIGF0IHRoZSBzYW1lIHZlcnNp
b24gYXMgdGhhdCBvbiB0YXJnZXQsIHRoYXQgd2UgY2FuIGFjdHVhbGx5IHVzZSB0byBtYWtlIHRo
ZSBuYXRpdmUgcGxhdGZvcm0gYSBjbG9zZXItdG8tdGFyZ2V0IGRldiBlbnYgZm9yIHNvbWUg4oCc
d29ya2JlbmNo4oCdIGJ1aWxkLg0KDQoNCg0KSG93ZXZlciBJ4oCZbSBzdGlsbCB3b25kZXJpbmc6
IGlzIHRoZXJlIGFueSB0aGluZyBuZWdhdGl2ZSBhYm91dCB0aGlzIHN0eWxlPyBPbmUgdGhpbmcg
a25vd24gaXMgdGhhdCB0aGUgU0RLLXVzaW5nIGhvc3QgbmVlZCB0byBiZSBzaW1pbGFyIHRvIHRo
ZSBTREstYnVpbGRpbmcgaG9zdCwgYnV0IHRoYXQgaXMgbm90IGFuIGlzc3VlIGZvciB1cy4gQnV0
IGFueXRoaW5nIGVsc2UsIGd1eXM/DQo=

--_000_PS1PR04MB1001467D35F6C6E759E56B7AC7510PS1PR04MB1001apcp_
Content-Type: text/html; charset="utf-8"
Content-ID: <8C1CF4CC2A46484AB455920D7C3BAF33@apcprd04.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWw+DQo8aGVhZD4NCjxtZXRhIGh0dHAtZXF1aXY9IkNvbnRlbnQtVHlwZSIgY29udGVudD0i
dGV4dC9odG1sOyBjaGFyc2V0PXV0Zi04Ij4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBkaXI9ImF1
dG8iPg0KPGRpdiBjbGFzcz0iZ21haWxfZXh0cmEiIGRpcj0iYXV0byI+DQo8ZGl2IGNsYXNzPSJn
bWFpbF9xdW90ZSI+DQo8cCBzdHlsZT0iZm9udC1mYW1pbHk6IHNhbnMtc2VyaWY7IGZvbnQtc2l6
ZTogMTguMDQ4cHg7Ij5IaSwgSSBhbSB3b3JraW5nIG9uIGEgeW9jdG8gMi4wIGJhc2VkIGRpc3Ry
byBhbmQgd2UgdXN1YWxseSBwb3B1bGF0ZV9zZGsgYW5kIHVzZSB0aGUgdG9vbGNoYWluIGluY2x1
ZGVkIGluIFNESy48L3A+DQo8cCBzdHlsZT0iZm9udC1mYW1pbHk6IHNhbnMtc2VyaWY7IGZvbnQt
c2l6ZTogMTguMDQ4cHg7Ij4mbmJzcDs8L3A+DQo8cCBzdHlsZT0iZm9udC1mYW1pbHk6IHNhbnMt
c2VyaWY7IGZvbnQtc2l6ZTogMTguMDQ4cHg7Ij5CdXQgd2UgYWxzbyBsaWtlIHRvIGNoZWNrIHRo
ZSBTREsgaW50byBhIFNWTiByZXBvLCBhbmQgY2hlY2tvdXQgaXQgYW55d2hlcmUsIGFuZCB1c2Ug
aXQgYXdheSByaWdodCB3aGVyZSBpdCBpcyBjaGVja2VkIG91dC4gQW5kIHNpbmNlIHRoZSBuYXRp
dmVzZGsgYmluYXJpZXMgYXJlIGJhc2VkIG9uIGEgZGlmZmVyZW50IGdsaWJjIHRoYW4gbmF0aXZl
LA0KIGFuZCBoYXZlIHRoZSDigJxkeW5hbWljIGxvYWRlcuKAnSBwYXRoIGhhcmRjb2RlZCBpbiB0
aGVtLCBJIGhhdmUgdG8gcGF0Y2ggdGhlIHRvb2xjaGFpbiBiaW5hcmllc+KAmSAuaW50ZXJwIHNl
Y2lvbiB0byBwb2ludCB0byBhIGNvbW1vbiBwbGFjZSwgYW5kIHVwZGF0ZSB0aGUgbG9hZGVyIGlu
dG8gdGhhdCBjb21tb24gcGxhY2UgYXV0b21hdGljYWxseSBpbiBzb21lIHdheS4gT3RoZXIgdGhh
biB0aGlzLCB0aGluZ3Mgd29yayB2ZXJ5IGdvb2QgZm9yIHVzLjwvcD4NCjxwIHN0eWxlPSJmb250
LWZhbWlseTogc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxOC4wNDhweDsiPiZuYnNwOzwvcD4NCjxw
IHN0eWxlPSJmb250LWZhbWlseTogc2Fucy1zZXJpZjsgZm9udC1zaXplOiAxOC4wNDhweDsiPlRo
ZW4gSSB3YXMgdGhpbmtpbmc6IGlzIGl0IGEgZ29vZCBwcmFjdGljZSwgdG8gdXNlIHRoZSBuYXRp
dmUvY3Jvc3MgdG9vbGNoYWluIGRpcmVjdGx5IGZyb20gdGhlIHRtcC9zeXNyb290cy94ODZfNjQt
bmF0aXZlIGZvbGRlci4gSSB0cmllZCBhbmQgc3VjY2VlZGVkLCBieSBqdXN0IG1vdmluZyB0aGUg
c3lzcm9vdCB0byB3aGVyZSB0aGUgY2hlY2tlZC1vdXQNCiBuYXRpdmVzZGsgdG9vbGNoYWluIHdh
cy48L3A+DQo8cCBzdHlsZT0iZm9udC1mYW1pbHk6IHNhbnMtc2VyaWY7IGZvbnQtc2l6ZTogMTgu
MDQ4cHg7Ij4mbmJzcDs8L3A+DQo8cCBzdHlsZT0iZm9udC1mYW1pbHk6IHNhbnMtc2VyaWY7IGZv
bnQtc2l6ZTogMTguMDQ4cHg7Ij5BbiBleHRyYSBib251cyBhYm91dCB0aGlzIGlzIHRoYXQgd2Ug
Z290IGEgbW9yZSBwb3B1bGF0ZWQgc3lzcm9vdCBmb3IgbmF0aXZlIHBsYXRmb3JtIHRvbywgZm9y
IGV4YW1wbGUgYSBvcGVuc3NsIGRldiBwYWNrYWdlIGF0IHRoZSBzYW1lIHZlcnNpb24gYXMgdGhh
dCBvbiB0YXJnZXQsIHRoYXQgd2UgY2FuIGFjdHVhbGx5IHVzZSB0byBtYWtlIHRoZQ0KIG5hdGl2
ZSBwbGF0Zm9ybSBhIGNsb3Nlci10by10YXJnZXQgZGV2IGVudiBmb3Igc29tZSDigJx3b3JrYmVu
Y2jigJ0gYnVpbGQuPHNwYW4gc3R5bGU9ImZvbnQtc2l6ZToxMnB0Ij48L3NwYW4+PC9wPg0KPHAg
c3R5bGU9ImZvbnQtZmFtaWx5OiBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE4LjA0OHB4OyI+Jm5i
c3A7PC9wPg0KPHAgc3R5bGU9ImZvbnQtZmFtaWx5OiBzYW5zLXNlcmlmOyBmb250LXNpemU6IDE4
LjA0OHB4OyI+SG93ZXZlciBJ4oCZbSBzdGlsbCB3b25kZXJpbmc6IGlzIHRoZXJlIGFueSB0aGlu
ZyBuZWdhdGl2ZSBhYm91dCB0aGlzIHN0eWxlPyBPbmUgdGhpbmcga25vd24gaXMgdGhhdCB0aGUg
U0RLLXVzaW5nIGhvc3QgbmVlZCB0byBiZSBzaW1pbGFyIHRvIHRoZSBTREstYnVpbGRpbmcgaG9z
dCwgYnV0IHRoYXQgaXMgbm90IGFuIGlzc3VlIGZvciB1cy4gQnV0DQogYW55dGhpbmcgZWxzZSwg
Z3V5cz88L3A+DQo8L2Rpdj4NCjwvZGl2Pg0KPC9kaXY+DQo8L2JvZHk+DQo8L2h0bWw+DQo=

--_000_PS1PR04MB1001467D35F6C6E759E56B7AC7510PS1PR04MB1001apcp_--
