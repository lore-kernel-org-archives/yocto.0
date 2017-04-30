Return-Path: <arunkr24@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D9ADE008C6; Sun, 30 Apr 2017 21:27:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (arunkr24[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.5.69 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 3660 seconds by postgrey-1.32 at yocto-www;
	Sun, 30 Apr 2017 21:27:03 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092005069.outbound.protection.outlook.com [40.92.5.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A000E007BA
	for <yocto@yoctoproject.org>; Sun, 30 Apr 2017 21:27:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=1ENuI2qambxzVo4q93IpnSi2OzZ2hYuZMyNsXz7xBlc=;
	b=HYIQAmElX6nfdVeAQ1/8MNPFbgCSfaDtc0rO4AS1fH0lk20Z8mVI0KG9VTCdbYCb6ToB6J75DSvRbCdZwU9snNzmrW2YGuEC3xgmemzVpZ/zWbU7QkO4oH4ILIs//WDvxDLFCqmZSSHqAo2syWlA3plNf9G0zreEnESDkBcTziunjN2mlnekY921Q9+hFSyH73/aI8X0OPqVMM7FPTJQGWMf1pUy3nr5jeWWM146ohP70sPEFznY05q0jMGhZ7BEe6lXkZlZMT+I3P+23YzY4p5lTdALD5iSo3Q4xSuDlF56j2STRgbDzZi03rz3lt5D0vnQjo7+/ujnXQzMvzricA==
Received: from BL2NAM02FT041.eop-nam02.prod.protection.outlook.com
	(10.152.76.55) by BL2NAM02HT129.eop-nam02.prod.protection.outlook.com
	(10.152.76.100) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1019.14;
	Sun, 30 Apr 2017 20:52:54 +0000
Received: from YQXPR01MB0374.CANPRD01.PROD.OUTLOOK.COM (10.152.76.60) by
	BL2NAM02FT041.mail.protection.outlook.com (10.152.77.122) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1019.14 via Frontend Transport; Sun, 30 Apr 2017 20:52:54 +0000
Received: from YQXPR01MB0374.CANPRD01.PROD.OUTLOOK.COM ([10.165.138.12]) by
	YQXPR01MB0374.CANPRD01.PROD.OUTLOOK.COM ([10.165.138.12]) with mapi id
	15.01.1061.021; Sun, 30 Apr 2017 20:52:54 +0000
From: Arun Kumar <arunkr24@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: hello world recipe failing at do_patch.
Thread-Index: AQHSwfO9NnBBUrsKvkmL7FiE+KEAiQ==
Date: Sun, 30 Apr 2017 20:52:54 +0000
Message-ID: <YQXPR01MB0374DDC32B81E75C018C9E39D8150@YQXPR01MB0374.CANPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:524F9F9444CD02F21C147805FE9CC42566D89D4926CC32DE29F17541C6A60BA3;
	UpperCasedChecksum:D7C0D8B1BCDC829C6A76561066DD8464D9F27633DCC2AE75D198A62348068F06;
	SizeAsReceived:7716; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT129;
	5:upUR4Eh6togutHvtUn73iixaF0SoBcfd548dA+kdth8c7+T7M1XU2AHEADGbw6hVx4FYVzby85phT/HbP1DP9t/yN2Z6k2J008wCUiLc5p5z2fC7d6g+/AGKWkVmChC95FglMHCoKdYsaCD4lkr58g==;
	24:gMJySiQPCxjNHAuMz23qMgiM4IZVrI9JROAIGq0NTyRXLwRHBb5nMDGjqtSPGCVxB8BY2kLGfIJqic2tPefKUU+toeRbjuvSwL6XUKTyK4Q=;
	7:KpNNmwuXG+Hy0fU5LUzkVt6f7lzmgZa29Y7wN4843l9gLqtBABRTgMCofDxjE3TXJ5MIu3U+q5rPc3xtOLLdgyK2abf8ZYyuNq9cfYVrgpF/vIcdTs+yjihJdXJpYQVsuVilGfSJ+G5g/puTVhVWczOt1wHU1hZPGG5ehDy+WxyqWmDjwFjJleD0d+1rBgXrOsEPxpnsYKH4nYh2A+TQBDiQNL0IuIjRFpDw5tiqGr0x2oxFq581wRKMXmcTYEhOdrlnbCacM2Mzpx0UI0dxRNtht4+bmNHsiZpfkRlwMTXQA/y++n5mIjeGwwM9rw9G
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:BL2NAM02HT129;
	H:YQXPR01MB0374.CANPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: e84768bd-5f72-4c67-e801-08d4900adecf
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1603101448)(1601125374)(1701031045);
	SRVR:BL2NAM02HT129; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:BL2NAM02HT129; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT129; 
x-forefront-prvs: 0293D40691
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2017 20:52:54.4416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT129
Subject: hello world recipe failing at do_patch.
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
X-List-Received-Date: Mon, 01 May 2017 04:27:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-ID: <C31532099E24D1489E3C6DA9D64C5363@CANPRD01.PROD.OUTLOOK.COM>
Content-Transfer-Encoding: base64

SGksDQoNCiAgICAgSSBhbSBzdGFydGluZyBvdXQgd2l0aCB0aGUgeW9jdG8gcHJvamVjdC4gQ3Jl
YXRlZCBhIG5ldyByZWNpcGUgDQp1c2luZyB0aGUgY29tbWFuZA0KDQogICAgICQgeW9jdG8tbGF5
ZXIgY3JlYXRlIGhlbGxvd29ybGQNCg0KSSBhZGRlZCB0aGUgZGlyZWN0b3J5IHRvIHRoZSBiYmxh
eWVycy5jb25mIGZpbGUgaW4gbXkgPGJ1aXVsZF9kaXI+L2NvbmYgDQpkaXJlY3RvcnkuIEFzIHBl
ciBteSBrbm93bGVkZ2UgYW5kIGFydGljbGUgb24gaW50ZXJuZXQgdGhpcyBzaG91bGQgYmUgYW4g
DQplYXN5IGJ1aWxkLg0KDQokIGJpdGJha2UgaGVsbG93b3JsZA0KDQpmYWlscyB3aXRoIHRoZSBm
b2xsb3dpbmcgc2lnbmF0dXJlLg0KDQovLy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tDQoNClN1bW1hcnk6IDIgdGFza3MgZmFpbGVkOg0KL2hvbWUvYmVh
Z2xlL3lvY3RvL3Bva3kvbWV0YS9yZWNpcGVzLWV4dGVuZGVkL3RleGluZm8tZHVtbXktbmF0aXZl
L3RleGluZm8tZHVtbXktbmF0aXZlLmJiOmRvX3BhdGNoDQp2aXJ0dWFsOm5hdGl2ZTovaG9tZS9i
ZWFnbGUveW9jdG8vcG9reS9tZXRhL3JlY2lwZXMtZGV2dG9vbHMvZ251LWNvbmZpZy9nbnUtY29u
ZmlnX2dpdC5iYjpkb19wYXRjaA0KLy8tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0NCg0KDQpSZWdhcmRzLA0KDQpBcnVuIE0gS3VtYXINCg0KDQo=

