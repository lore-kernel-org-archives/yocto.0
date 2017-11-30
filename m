Return-Path: <gsteri1@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C1ACE00CBF; Thu, 30 Nov 2017 17:24:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gsteri1[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.7.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 7191 seconds by postgrey-1.32 at yocto-www;
	Thu, 30 Nov 2017 17:24:16 PST
Received: from NAM03-CO1-obe.outbound.protection.outlook.com
	(mail-oln040092007064.outbound.protection.outlook.com [40.92.7.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D974EE00C97
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 17:24:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=gBR4JZcba9SPIbCdIdNYF8AqYQGyJblbjGliLDNvjhc=;
	b=Ovrp32rNJas9gxAfuFZqqHM8ONfM/ujB9cBFd6fD2q2tuFbmETOVDbyRUYAiyCsviHMGv+LEk31DUC+EafkHD2jO7nlgJCMhTWDnURLcioWiaKaoyIZzxmTTDrOs+wxb+2hpR68RZctAMZ5bKAT0v0/EobCx52MYOzmo+p+XSZqPoMUaGtP0m81mmFyx103osT2RXMI0uJCI7wzeGSe+x6JsEprYLjd2042xs13p0fUUWK3B3//Fua6skFOgUBZe+1Vpwp6J3RQ1nU1jPzC6dtS4wNPbiXtwlVP06qgkvRX3+uu2uFMIVvu17ntB0uYVXPL9Fb0IyxQ+n4V+Q1O8Aw==
Received: from CO1NAM03FT058.eop-NAM03.prod.protection.outlook.com
	(10.152.80.51) by CO1NAM03HT243.eop-NAM03.prod.protection.outlook.com
	(10.152.81.148) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.239.4;
	Thu, 30 Nov 2017 16:53:08 +0000
Received: from BLUPR04MB465.namprd04.prod.outlook.com (10.152.80.51) by
	CO1NAM03FT058.mail.protection.outlook.com (10.152.81.107) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.239.4 via Frontend Transport; Thu, 30 Nov 2017 16:53:08 +0000
Received: from BLUPR04MB465.namprd04.prod.outlook.com ([10.141.28.12]) by
	BLUPR04MB465.namprd04.prod.outlook.com ([10.141.28.12]) with mapi id
	15.20.0282.007; Thu, 30 Nov 2017 16:53:08 +0000
From: Greg Sterijevski <gsteri1@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Perl build question
Thread-Index: AQHTafsGrDYQHp1zGUeUBTE0dEj4oQ==
Date: Thu, 30 Nov 2017 16:53:08 +0000
Message-ID: <BLUPR04MB465F6EDF0FD473302469416E0380@BLUPR04MB465.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:1C96CC060FF7303329003C9261906C4F3320E47BF116E2B11F91B346447A21A5;
	UpperCasedChecksum:D660DE984D889506F51AE09849B6AA2166CF3C6D431DD1D2C0BE3628B9CF5DF3;
	SizeAsReceived:6769; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [HPItmidkO4EpxVGGKMO7YPpYvo/DNeZd]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CO1NAM03HT243;
	6:H+84kJukQtZz4uKJrCmUU3xSNGQB/OKaNGMcPOEVYrz7mf1i4pYYpbxuemwkETmn+JvTC+8Gy99uzT/WMBgmyBCubFSfg7HoWO/PWXYDIM13GqeoDWfSpips0lFz7JpvxJpbgUM8ve3S4ZEt2xs15w8U98v7GdBR1MR7AucwzcnWdIvBtI4/usZ8nJZEHBXYeB9mJAq5lNvJ+VTdRAsoRAkg5IfLCQ0MO6HSc94wyldoZsyhhTGpOUwhI7wIajxpH0cxQX7gs2PWaFYNGAGbFxNkUqe28Z7jn47n9IIA84B7ZKcicNlaUloAlWVeS2NZSjw9vEq9cX4uopE/Qol2q1RtBV6v452ebFQx3WnvFd8=;
	5:r9UGkj1DaFKIm74MO3E3E7BrmprfZmc7Oy5eHBKSR7v1eB9StsaFC5ypOoGrfXpmCLuudXcdWwrqWtTVDsFzUbaMS7OKf7fwS6PrdWVTDEAgwwS5eT5bcTVP/4fvQcwhgyp0KYP+ehCh6rVJGJlaIDHrYb+Fg+BiwVCsmkfU5uk=;
	24:z6HHmrCHbuaSeL/Ekdj/gUbdawekWgSA78ut89kJ8UhSGpw5TfAV4NbWFqjD6NF4GDzMp/nayi4i7xMF3ov9VDx7z8q35QrSstCQnYMsCWM=;
	7:/H7nfsd5Jy1vsDFJ5nBFYLmclIHiPkqgERUyWzngCMTYXOztKYTqodEiOWqL4KWqfWoQqq7UerPhrvVbBSW1AuqwXQvmyUdft0LPwBnFrNvooQEWp90/8XzJj2hUPSC1e8tf62HlO8wPwLo5laFuOQuOEYKAxf4mhOg3MR85Mvoz9W7tfVo6PP0wdf3I77S7pviXlEeC2lKq0XQbRBxbxcC7hN2B1Z4VwE9OBs3biudiAEMMgno2VvKmkbOLqMEJ
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:CO1NAM03HT243; 
x-ms-traffictypediagnostic: CO1NAM03HT243:
x-ms-office365-filtering-correlation-id: ef2c9f51-e799-42d7-93ec-08d53812d59d
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:CO1NAM03HT243; BCL:0; PCL:0;
	RULEID:(100000803101)(100110400095); SRVR:CO1NAM03HT243; 
x-forefront-prvs: 05079D8470
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:CO1NAM03HT243;
	H:BLUPR04MB465.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:;
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef2c9f51-e799-42d7-93ec-08d53812d59d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2017 16:53:08.6765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM03HT243
Subject: Perl build question
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
X-List-Received-Date: Fri, 01 Dec 2017 01:24:18 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BLUPR04MB465F6EDF0FD473302469416E0380BLUPR04MB465namprd_"

--_000_BLUPR04MB465F6EDF0FD473302469416E0380BLUPR04MB465namprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I am building an operating system for a Gumstik Overo using the Poky-Krogot=
h branch. The build box is an openSuSe box. The build progresses quite a bi=
t until I hit:



MiscXS.c: loadable library and perl binaries are mismatched (got handshake =
key 0xde00080, needed 0xdb80080)


for the qemu documentation as well as


ERROR: glibc-2.23-r0 do_package: QA Issue: glibc: Files/directories were in=
stalled but not shipped in any package:
  /usr/share
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.
glibc: 1 installed and not shipped files. [installed-vs-shipped]
ERROR: glibc-2.23-r0 do_package: Fatal QA errors found, failing task.
ERROR: glibc-2.23-r0 do_package: Function failed: do_package
ERROR: Logfile of failure stored in: /vms/oe5/overo/tmp-krogoth/work/cortex=
a8hf-neon-poky-linux-gnueabi/glibc/2.23-r0/temp/log.do_package.1041
ERROR: Task 344 (/vms/poky-krogoth/meta/recipes-core/glibc/glibc_2.23.bb, d=
o_package) failed with exit code '1'

I have seen this email: https://lists.yoctoproject.org/pipermail/yocto/2016=
-January/028128.html


But I am not sure what exactly this means.


Thank you!


--_000_BLUPR04MB465F6EDF0FD473302469416E0380BLUPR04MB465namprd_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Hi,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I am building an operating system=
 for a Gumstik Overo using the Poky-Krogoth branch. The build box is an ope=
nSuSe box. The build progresses quite a bit until I hit:</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><span>MiscXS.c: loadable library =
and perl binaries are mismatched (got handshake key 0xde00080, needed 0xdb8=
0080)</span></p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">for the qemu documentation as wel=
l as</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"></p>
<div>ERROR: glibc-2.23-r0 do_package: QA Issue: glibc: Files/directories we=
re installed but not shipped in any package:<br>
&nbsp; /usr/share<br>
Please set FILES such that these items are packaged. Alternatively if they =
are unneeded, avoid installing them or delete them within do_install.<br>
glibc: 1 installed and not shipped files. [installed-vs-shipped]<br>
ERROR: glibc-2.23-r0 do_package: Fatal QA errors found, failing task.<br>
ERROR: glibc-2.23-r0 do_package: Function failed: do_package<br>
ERROR: Logfile of failure stored in: /vms/oe5/overo/tmp-krogoth/work/cortex=
a8hf-neon-poky-linux-gnueabi/glibc/2.23-r0/temp/log.do_package.1041<br>
ERROR: Task 344 (/vms/poky-krogoth/meta/recipes-core/glibc/glibc_2.23.bb, d=
o_package) failed with exit code '1'<br>
<br>
</div>
I have seen this email: <a href=3D"https://lists.yoctoproject.org/pipermail=
/yocto/2016-January/028128.html" class=3D"OWAAutoLink" id=3D"LPlnk296009">
https://lists.yoctoproject.org/pipermail/yocto/2016-January/028128.html</a>=
<br>
<br>
<p style=3D"margin-top:0;margin-bottom:0">But I am not sure what exactly th=
is means.
<br>
</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thank you!</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p></p>
</div>
</body>
</html>

--_000_BLUPR04MB465F6EDF0FD473302469416E0380BLUPR04MB465namprd_--
