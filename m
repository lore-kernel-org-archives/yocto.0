Return-Path: <erik.hoogeveen@outlook.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D0A8E00D2E; Thu, 20 Dec 2018 22:38:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (erik.hoogeveen[at]outlook.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.72.82 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 32237 seconds by postgrey-1.32 at yocto-www;
	Thu, 20 Dec 2018 22:38:07 PST
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
	(mail-oln040092072082.outbound.protection.outlook.com [40.92.72.82])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDEEEE00D21
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2018 22:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=outlook.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=kXrpePYhitqBvPqvmZinTMs3+po2k8qBGkouXyjhPlo=;
	b=Oe4xbrRPY8Sz7It7lvzVXJ60e5VnliGD/QXweit22vJmgb6q0+5k9ksKf8GJf73rNySkR7fv/ud6wkoppLEqfR7x1nTbT+nnTDFqhih6HXUzHyluPb591062j4fd8JmqxCHUWhGep/NshxdKZ1a7xhMGPESjkdrrEgzL12JQo3i/c7cd7WdgovGJlbvszrK8rwPjWsirntKFms7bNvaGfADMP+zRnXoDids0ldxui/9bMyNg+id7f9gm9HJc0lNccOlOs32ADw35KaWRnOhZjUe+m1gNgQxTbSa9uWYsC4FxzDlHeqV55NIenXci8RJPgPPEQfOnSytRMzZveXmcfQ==
Received: from VE1EUR03FT056.eop-EUR03.prod.protection.outlook.com
	(10.152.18.57) by VE1EUR03HT012.eop-EUR03.prod.protection.outlook.com
	(10.152.18.149) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1382.18;
	Thu, 20 Dec 2018 09:08:28 +0000
Received: from DB6PR0901MB1589.eurprd09.prod.outlook.com (10.152.18.56) by
	VE1EUR03FT056.mail.protection.outlook.com (10.152.19.28) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1382.18 via Frontend Transport; Thu, 20 Dec 2018 09:08:28 +0000
Received: from DB6PR0901MB1589.eurprd09.prod.outlook.com
	([fe80::6d7e:a00b:e727:62d]) by
	DB6PR0901MB1589.eurprd09.prod.outlook.com
	([fe80::6d7e:a00b:e727:62d%2]) with mapi id 15.20.1446.020;
	Thu, 20 Dec 2018 09:08:28 +0000
From: Erik Hoogeveen <erik.hoogeveen@outlook.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Yocto - Rpi: u-boot --- hangs on boot?
Thread-Index: AQHUmEOSwwf0xgSSnE2HU0e6BimklQ==
Date: Thu, 20 Dec 2018 09:08:28 +0000
Message-ID: <DB6PR0901MB1589EE2EA49628944F23C51195BF0@DB6PR0901MB1589.eurprd09.prod.outlook.com>
References: <mailman.6869.1545150432.2881.yocto@yoctoproject.org>
In-Reply-To: <mailman.6869.1545150432.2881.yocto@yoctoproject.org>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM5P190CA0007.EURP190.PROD.OUTLOOK.COM
	(2603:10a6:206:14::20) To DB6PR0901MB1589.eurprd09.prod.outlook.com
	(2603:10a6:4:6d::23)
x-incomingtopheadermarker: OriginalChecksum:8D12F64B0325F83E9F94328597390C05E5239227EAFE3DDF60E8FB15DE3D9895;
	UpperCasedChecksum:B2FD3BB7C04391A083FBB0D8C0D3335E65C8B9A80F57E61BD00598A14D3104C6;
	SizeAsReceived:7453; Count:49
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [/zBRzP0Y0jsi8uyvM8NgcWICMCEAjcuR]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT012;
	6:aYy+u+JT9+/Yep6TBzJ1mCh/ruvkdPgkW/PEYAkrZPHPTFiACbK8OpJLDLB8ZDvC6paho505rB62qQizRBfuQgJsgNTmXhe/fcmZuFhIiiRpE4EN8bdY4NX4rv7UIufSPkJGjov4sQD3owc0bIV2eUx/KUfAUCdDPWYqqKBXdZV+dxBY2emzixWkLApRuEWe681vmakXrjazRVSC2t5JSUNZLafBOWKOtmD25HNiSCc5lKkOkOhGT9/jEavpCbMBM0e1xj6WusFVL2D8lJV4dJs8C37I40moMKt6+C6aspI7UN0xFOL+DhXxYTqsXE+C1c0zAgyQnyEqLTlel8+N95r2Xmn115FIv7ehrCHwG10b4cFqJF69d4Y/MCzFTzz8bQFdTM2WlF94jGfrSjSpacIFF2do9ePs4u7g87gFrNXXKS0TiUebrUR7g4NJo9UXYCQIn5Ab9uugovsm/Nxx9Q==;
	5:2UTjlZb2Sm3FrwOmtCz6BBZWP4to6Lqe1sHGBp+oTS5/PfArxkbbUH8hQ3se0/UZvTlE1U5ESxEKVh9bXGUT7yQqLGZZJ5JXJjqHzgz/+SFvRVwWZv45d4FdqB7JxlPzAzn3TmMYbhT8Jb7yfdkU2dfDJMzs7vs2fB/2MqHFhhY=;
	7:Pz1DtCIvll3NbcQRNfFFhrPk4J/K4qIueJGyBcE6xrd9tfnx4pOQVGEJu5Zre9fDwQaxAE9F8Xw5mds8R1T6kBqUCSMeTk8PTU767lzEfW0eD7jDaTXRIyr4UglHqdwGs5AXto+G34DnKeIaCFk8Ng==
x-incomingheadercount: 49
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031323274)(2017031324274)(2017031322404)(1601125500)(1603101475)(1701031045);
	SRVR:VE1EUR03HT012; 
x-ms-traffictypediagnostic: VE1EUR03HT012:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(4566010)(82015058);
	SRVR:VE1EUR03HT012; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT012; 
x-microsoft-antispam-message-info: J5jtDGQmM86gvijQaktjLUIVVo4F5SLrxF2eOn+nsUPA8kE2SU9ulCNQd5SccVgt
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-Network-Message-Id: f408697b-d862-417f-227a-08d6665ab352
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: dd759f05-a917-4aa0-a2f5-4cc35c50e0c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2018 09:08:28.4097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT012
Subject: Re: Yocto - Rpi: u-boot --- hangs on boot?
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
X-List-Received-Date: Fri, 21 Dec 2018 06:38:09 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0901MB1589EE2EA49628944F23C51195BF0DB6PR0901MB1589_"

--_000_DB6PR0901MB1589EE2EA49628944F23C51195BF0DB6PR0901MB1589_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksDQoNCkkgaGFkIHNvbWV0aGluZyBzaW1pbGFyIGJ1dCB3aXRoIGEgUlBJIGNvbXB1dGUgbW9k
dWxlIDMuDQpGb3IgbWUgaXQgaGVscGVkIHRvIHB1dCB0aGUgdS1ib290LmJpbiBmaWxlIGluIGNv
bmZpZy50eHQuDQpTZWU6IGh0dHBzOi8vZ2l0aHViLmNvbS9hZ2hlcnphbi9tZXRhLXJhc3BiZXJy
eXBpL2lzc3Vlcy8zNTkNCg0KQ2hlZXJzLA0KRXJpaw0KT24gMTggRGVjIDIwMTgsIDE3OjI4ICsw
MTAwLCB5b2N0by1yZXF1ZXN0QHlvY3RvcHJvamVjdC5vcmcsIHdyb3RlOg0KRGF0ZTogTW9uLCAx
NyBEZWMgMjAxOCAxODozNzowNCArMDAwMA0KRnJvbTogS21hbiBEZXZudWxsIDxrbWFuLmRldm51
bGxAZ21haWwuY29tPg0KVG86IHlvY3RvQHlvY3RvcHJvamVjdC5vcmcNClN1YmplY3Q6IFt5b2N0
b10gWW9jdG8gLSBScGk6IHUtYm9vdCAtLS0gaGFuZ3Mgb24gYm9vdD8NCk1lc3NhZ2UtSUQ6DQo8
Q0FBZ3BnbTVpOEhpTGlfbVQyYU9YVWs9MUt0c2NGckh4a1lleWFCLTQ9SHdzZWFld3RnQG1haWwu
Z21haWwuY29tPg0KQ29udGVudC1UeXBlOiB0ZXh0L3BsYWluOyBjaGFyc2V0PSJ1dGYtOCINCg0K
SGksDQpIb3cgZG8geW91IGdldCB0aGUgdS1ib290IGJ1aWx0IHdpdGggeW9jdG8gZm9yIFJhc3Bi
ZXJyeSBQaSAzPw0KDQotIEkgdXNlZCB0aGlzIGxpbmsNCjxodHRwczovL25hbTAzLnNhZmVsaW5r
cy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMlM0ElMkYlMkZqdW1wbm93dGVrLmNv
bSUyRnJwaSUyRlJhc3BiZXJyeS1QaS1TeXN0ZW1zLXdpdGgtWW9jdG8uaHRtbCZhbXA7ZGF0YT0w
MiU3QzAxJTdDJTdDYzg2ODY3NjRjOTRkNDE0NzViYjIwOGQ2NjUwNWQ1YmIlN0M4NGRmOWU3ZmU5
ZjY0MGFmYjQzNWFhYWFhYWFhYWFhYSU3QzElN0MwJTdDNjM2ODA3NDczMDY3Nzg0MjIzJmFtcDtz
ZGF0YT1lYzFZTlZvbU15dWowTTNJMDZkczFiOWJuWTdOSnVuOENPTFV3V2lwNCUyRk0lM0QmYW1w
O3Jlc2VydmVkPTA+IHRvIGdldA0KdGhlIGJhc2UgYnVpbGQgd29ya2luZyBmb3IgcTUtaW1hZ2Ug
b24gUmFzcGJlcnJ5IFBpIDMuDQotIEkgaGF2ZSB1c2VkIHRoZSB5b2N0byAndGh1ZCcgcmVsZWFz
ZS4NCi0gTm93IGluIG9yZGVyIHRvIGdldCB1LWJvb3QgYnVpbGQgSSBhZGRlZCB0aGUgYmVsb3cg
bGluZSBmb3IgbG9jYWwuY29uZg0KZmlsZS4NClJQSV9VU0VfVV9CT09UID0gIjEiDQotIFdoZW4g
SSBib290IGl0IGp1c3QgaGFuZ3Mgb24gYSByYWluYm93IGNvbG91ciBzY3JlZW4uDQoNClBsZWFz
ZSBmaW5kIGJibGF5ZXJzLmNvbmYgYW5kIGxvY2FsLmNvbmYgYXR0YWNoZWQuDQoNCktpbmRseSBh
ZHZpY2UuDQo=

--_000_DB6PR0901MB1589EE2EA49628944F23C51195BF0DB6PR0901MB1589_
Content-Type: text/html; charset="utf-8"
Content-ID: <D7DD843585AB9B4AB9ABD9B3D931E1CF@eurprd09.prod.outlook.com>
Content-Transfer-Encoding: base64

PGh0bWwgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGh0bWwiPg0KPGhlYWQ+DQo8bWV0
YSBodHRwLWVxdWl2PSJDb250ZW50LVR5cGUiIGNvbnRlbnQ9InRleHQvaHRtbDsgY2hhcnNldD11
dGYtOCI+DQo8dGl0bGU+PC90aXRsZT4NCjwvaGVhZD4NCjxib2R5Pg0KPGRpdiBuYW1lPSJtZXNz
YWdlQm9keVNlY3Rpb24iIHN0eWxlPSJmb250LXNpemU6IDE0cHg7IGZvbnQtZmFtaWx5OiAtYXBw
bGUtc3lzdGVtLCBCbGlua01hY1N5c3RlbUZvbnQsIHNhbnMtc2VyaWY7Ij4NCkhpLDwvZGl2Pg0K
PGRpdiBuYW1lPSJtZXNzYWdlU2lnbmF0dXJlU2VjdGlvbiIgc3R5bGU9ImZvbnQtc2l6ZTogMTRw
eDsgZm9udC1mYW1pbHk6IC1hcHBsZS1zeXN0ZW0sIEJsaW5rTWFjU3lzdGVtRm9udCwgc2Fucy1z
ZXJpZjsiPg0KPGJyPg0KPGRpdj5JIGhhZCBzb21ldGhpbmcgc2ltaWxhciBidXQgd2l0aCBhIFJQ
SSBjb21wdXRlIG1vZHVsZSAzLiZuYnNwOzwvZGl2Pg0KPGRpdj5Gb3IgbWUgaXQgaGVscGVkIHRv
IHB1dCB0aGUgdS1ib290LmJpbiBmaWxlIGluIGNvbmZpZy50eHQuPC9kaXY+DQo8ZGl2PlNlZTom
bmJzcDs8YSBocmVmPSJodHRwczovL2dpdGh1Yi5jb20vYWdoZXJ6YW4vbWV0YS1yYXNwYmVycnlw
aS9pc3N1ZXMvMzU5Ij5odHRwczovL2dpdGh1Yi5jb20vYWdoZXJ6YW4vbWV0YS1yYXNwYmVycnlw
aS9pc3N1ZXMvMzU5PC9hPjwvZGl2Pg0KPGRpdj48YnI+DQo8L2Rpdj4NCjxkaXY+Q2hlZXJzLDwv
ZGl2Pg0KPGRpdj5FcmlrPC9kaXY+DQo8L2Rpdj4NCjxkaXYgbmFtZT0ibWVzc2FnZVJlcGx5U2Vj
dGlvbiIgc3R5bGU9ImZvbnQtc2l6ZTogMTRweDsgZm9udC1mYW1pbHk6IC1hcHBsZS1zeXN0ZW0s
IEJsaW5rTWFjU3lzdGVtRm9udCwgc2Fucy1zZXJpZjsiPg0KT24gMTggRGVjIDIwMTgsIDE3OjI4
ICYjNDM7MDEwMCwgeW9jdG8tcmVxdWVzdEB5b2N0b3Byb2plY3Qub3JnLCB3cm90ZTo8YnI+DQo8
YmxvY2txdW90ZSB0eXBlPSJjaXRlIiBzdHlsZT0ibWFyZ2luOiA1cHggNXB4OyBwYWRkaW5nLWxl
ZnQ6IDEwcHg7IGJvcmRlci1sZWZ0OiB0aGluIHNvbGlkICMxYWJjOWM7Ij4NCkRhdGU6IE1vbiwg
MTcgRGVjIDIwMTggMTg6Mzc6MDQgJiM0MzswMDAwPGJyPg0KRnJvbTogS21hbiBEZXZudWxsICZs
dDtrbWFuLmRldm51bGxAZ21haWwuY29tJmd0Ozxicj4NClRvOiB5b2N0b0B5b2N0b3Byb2plY3Qu
b3JnPGJyPg0KU3ViamVjdDogW3lvY3RvXSBZb2N0byAtIFJwaTogdS1ib290IC0tLSBoYW5ncyBv
biBib290Pzxicj4NCk1lc3NhZ2UtSUQ6PGJyPg0KJmx0O0NBQWdwZ201aThIaUxpX21UMmFPWFVr
PTFLdHNjRnJIeGtZZXlhQi00PUh3c2VhZXd0Z0BtYWlsLmdtYWlsLmNvbSZndDs8YnI+DQpDb250
ZW50LVR5cGU6IHRleHQvcGxhaW47IGNoYXJzZXQ9JnF1b3Q7dXRmLTgmcXVvdDs8YnI+DQo8YnI+
DQpIaSw8YnI+DQpIb3cgZG8geW91IGdldCB0aGUgdS1ib290IGJ1aWx0IHdpdGggeW9jdG8gZm9y
IFJhc3BiZXJyeSBQaSAzPzxicj4NCjxicj4NCi0gSSB1c2VkIHRoaXMgbGluazxicj4NCiZsdDto
dHRwczovL25hbTAzLnNhZmVsaW5rcy5wcm90ZWN0aW9uLm91dGxvb2suY29tLz91cmw9aHR0cHMl
M0ElMkYlMkZqdW1wbm93dGVrLmNvbSUyRnJwaSUyRlJhc3BiZXJyeS1QaS1TeXN0ZW1zLXdpdGgt
WW9jdG8uaHRtbCZhbXA7YW1wO2RhdGE9MDIlN0MwMSU3QyU3Q2M4Njg2NzY0Yzk0ZDQxNDc1YmIy
MDhkNjY1MDVkNWJiJTdDODRkZjllN2ZlOWY2NDBhZmI0MzVhYWFhYWFhYWFhYWElN0MxJTdDMCU3
QzYzNjgwNzQ3MzA2Nzc4NDIyMyZhbXA7YW1wO3NkYXRhPWVjMVlOVm9tTXl1ajBNM0kwNmRzMWI5
Ym5ZN05KdW44Q09MVXdXaXA0JTJGTSUzRCZhbXA7YW1wO3Jlc2VydmVkPTAmZ3Q7DQogdG8gZ2V0
PGJyPg0KdGhlIGJhc2UgYnVpbGQgd29ya2luZyBmb3IgcTUtaW1hZ2Ugb24gUmFzcGJlcnJ5IFBp
IDMuPGJyPg0KLSBJIGhhdmUgdXNlZCB0aGUgeW9jdG8gJ3RodWQnIHJlbGVhc2UuPGJyPg0KLSBO
b3cgaW4gb3JkZXIgdG8gZ2V0IHUtYm9vdCBidWlsZCBJIGFkZGVkIHRoZSBiZWxvdyBsaW5lIGZv
ciBsb2NhbC5jb25mPGJyPg0KZmlsZS48YnI+DQpSUElfVVNFX1VfQk9PVCA9ICZxdW90OzEmcXVv
dDs8YnI+DQotIFdoZW4gSSBib290IGl0IGp1c3QgaGFuZ3Mgb24gYSByYWluYm93IGNvbG91ciBz
Y3JlZW4uPGJyPg0KPGJyPg0KUGxlYXNlIGZpbmQgYmJsYXllcnMuY29uZiBhbmQgbG9jYWwuY29u
ZiBhdHRhY2hlZC48YnI+DQo8YnI+DQpLaW5kbHkgYWR2aWNlLjxicj4NCjwvYmxvY2txdW90ZT4N
CjxkaXY+PC9kaXY+DQo8L2Rpdj4NCjwvYm9keT4NCjwvaHRtbD4NCg==

--_000_DB6PR0901MB1589EE2EA49628944F23C51195BF0DB6PR0901MB1589_--
