Return-Path: <richard.zhang@pica8.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F287DE008D3; Tue, 17 Jan 2017 02:55:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.40.103 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-co1nam03on0103.outbound.protection.outlook.com [104.47.40.103])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5854E0083D
	for <yocto@yoctoproject.org>; Tue, 17 Jan 2017 02:55:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=pica8com.onmicrosoft.com; s=selector1-pica8-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=SI+59oBhcZHAMuQdRf+0qqDHL4gSlzVmxoq8gzOihrk=;
	b=Svng6KoofnJVlVL34Kl7m/GbNNN2SWAfnxmFDDnTxdiaJPPrR6Kwc1ssIeWaX8TyV+ZHYMct7nPWBmFZUrCI6BGmBu3t/NKa45RLyaSFpbMJHgXS6x0uBWOg9oMG+Yv65/dPcqS+qu7Glb17RuKStCbklJMFJKD0cBQIEHED08A=
Received: from CY4PR12MB1880.namprd12.prod.outlook.com (10.175.81.23) by
	CY4PR12MB1878.namprd12.prod.outlook.com (10.175.63.151) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.845.12; Tue, 17 Jan 2017 10:41:22 +0000
Received: from CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) by
	CY4PR12MB1880.namprd12.prod.outlook.com ([10.175.81.23]) with mapi id
	15.01.0845.013; Tue, 17 Jan 2017 10:41:22 +0000
From: Richard Zhang <richard.zhang@pica8.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to change toochains to gcc 4.9.3
Thread-Index: AQHScK3ZPAiMOTqPDUiuRIFArDQiFg==
Date: Tue, 17 Jan 2017 10:41:22 +0000
Message-ID: <CY4PR12MB18808159F83D6E2C201099F7A57C0@CY4PR12MB1880.namprd12.prod.outlook.com>
Accept-Language: zh-CN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=richard.zhang@pica8.com; 
x-originating-ip: [124.193.174.202]
x-ms-office365-filtering-correlation-id: 4e76b5f2-6e04-4ac4-2795-08d43ec56118
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:CY4PR12MB1878;
x-microsoft-exchange-diagnostics: 1; CY4PR12MB1878;
	7:d4wUfxtii78Bcjd4ydScLZAE+8ymi0z2ZMYuyAlJIlAHt4WIaqIA9uZx93jHqJKxJ9m6iIo/GtxseequGVzeiED5cWD36VQANFm+UKJlI4JtYKsj0TzUOb3Oe2ryPME1NwgGWSt19dbKtF7sIZEdYSF2axbPa37zbESaiNcO9IkT2/jQ0goAtAUSjw0c3+sdMJiSPKMq7Y/tMxhfX4psl3InC7S81qcYbvxXP5vEnLrIsWp/+9hvn28JDtCVjeSsa7Ju22EGDeULyjOuNS8m60O8U6e1fHB8674j6eL9Z/F0M+GkmCtdk8vHzshY1AMG/bXZIbFVvGFsS5AnseUYsmGdi0fn/RPhqDKqooaGV9zRRn/84C0fa5R4j3jMkMqU+lrkhbD+deiyu8N60fOeM5leRQDcmyjro68LBLeKEjp+Rw5yV+VmCLfEg0zI+0CaS8vO9FOtfWX4TfeF/14bhQ==
x-microsoft-antispam-prvs: <CY4PR12MB1878FA3D40E58CEF7D0FE534A57C0@CY4PR12MB1878.namprd12.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6041248)(2016111802025)(20161123555025)(20161123560025)(20161123564025)(20161123562025)(6072148)(6043046);
	SRVR:CY4PR12MB1878; BCL:0; PCL:0; RULEID:; SRVR:CY4PR12MB1878; 
x-forefront-prvs: 01901B3451
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(39830400002)(39410400002)(189002)(199003)(9686003)(38730400001)(2900100001)(3280700002)(97736004)(122556002)(74316002)(450100001)(54896002)(54356999)(189998001)(7736002)(50986999)(107886002)(101416001)(102836003)(92566002)(106356001)(81166006)(8936002)(3846002)(6606003)(86362001)(3660700001)(68736007)(6916009)(2906002)(6116002)(7696004)(105586002)(81156014)(6436002)(55016002)(1730700003)(5660300001)(99286003)(8676002)(5640700003)(2501003)(6506006)(66066001)(2351001)(110136003)(25786008)(19627405001)(558084003)(30001)(106116001)(16234385003)(77096006)(33656002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR12MB1878;
	H:CY4PR12MB1880.namprd12.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: pica8.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: pica8.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2017 10:41:22.3193 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 1649697f-e494-4b71-8227-3f383d0979ad
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR12MB1878
Subject: How to change toochains to gcc 4.9.3
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
X-List-Received-Date: Tue, 17 Jan 2017 10:55:53 -0000
Content-Language: zh-CN
Content-Type: multipart/alternative;
	boundary="_000_CY4PR12MB18808159F83D6E2C201099F7A57C0CY4PR12MB1880namp_"

--_000_CY4PR12MB18808159F83D6E2C201099F7A57C0CY4PR12MB1880namp_
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64

SGkNCg0KDQp3aGVuIEkgd2FudCB0byBjaGFuZ2UgZ2NjIHZlcnNpb24gdG8gNC45LjMuDQoNCkkg
anVzdCBjaGFuZ2UgZ2NjICYgbGliZ2NjLGJ1dCBnY2MtdHJ1bnRpbWUgc3RpbGwgNS4zLg0KDQoN
CklzIHRoZXJlIGEgcmFwaWQgbWV0aG9kIHRvIGNoYW5nZSBldmVyeXRoaW5nIEkgbmVlZD8NCg0K
DQoNCg0KUmVnYXJkcw0KDQpSaWNoYXJkDQo=

--_000_CY4PR12MB18808159F83D6E2C201099F7A57C0CY4PR12MB1880namp_
Content-Type: text/html; charset="gb2312"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dgb2312">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<p>Hi <br>
</p>
<p><br>
</p>
<p>when I want to change gcc version to 4.9.3.</p>
<p>I just change gcc &amp; libgcc,but gcc-truntime still 5.3.</p>
<p><br>
</p>
<p>Is there a rapid method to change everything I need?<br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p>Regards</p>
<p>Richard<br>
</p>
</div>
</body>
</html>

--_000_CY4PR12MB18808159F83D6E2C201099F7A57C0CY4PR12MB1880namp_--
