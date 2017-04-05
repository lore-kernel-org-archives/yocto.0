Return-Path: <natalia_th92@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16950E00887; Thu,  6 Apr 2017 06:53:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (natalia_th92[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.67.66 listed in list.dnswl.org]
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
X-Greylist: delayed 52362 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Apr 2017 06:53:41 PDT
Received: from EUR02-AM5-obe.outbound.protection.outlook.com
	(mail-oln040092067066.outbound.protection.outlook.com [40.92.67.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92BCDE007BA
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 06:53:41 -0700 (PDT)
Received: from HE1EUR02HT128.eop-EUR02.prod.protection.outlook.com
	(10.152.10.232) by AM5EUR02HT125.eop-EUR02.prod.protection.outlook.com
	(10.152.8.192) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1005.5;
	Thu, 6 Apr 2017 03:21:56 +0000
Received: from AM5EUR02HT126.eop-EUR02.prod.protection.outlook.com
	(10.152.9.46) by HE1EUR02HT128.eop-EUR02.prod.protection.outlook.com
	(10.152.10.232) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1005.5;
	Wed, 5 Apr 2017 22:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=KpS0x951V1+Sqj5zBySO2jgQxCPXREYf1jdKSp6vkz0=;
	b=AX/glYV4zekhVrPmo8ncw5DW3VrUHvdMGqHzX3deXTgADy751kwpK1EDQo8/Fw9VWkXHBeizDkOWTuF+PlUyhw15ENw3NGi9sI9mvOBPI3vSkkqbdFQ4I9w1ccLfXvzJh84mowx+b+zLo7UeV8oP0riCZzuyEbm8QxU9E1xNBAxvZLbiHDZH3jV5kHtLKmGYKooL2khgQpATlEav4JzVpzh8WX+bO8KR5PkiSjGn/WvGnD4rkXXTfAuKg2sXzkAgSdgol1HsuyuWF6A6K0M59IcdhjEUb8rmR4D6ebPl3OpY02Fbx4LR61OkBt8VAz9nBaD4SmTkv+wr4rnqyb/ZOw==
Received: from AM5EUR02FT012.eop-EUR02.prod.protection.outlook.com
	(10.152.8.51) by AM5EUR02HT126.eop-EUR02.prod.protection.outlook.com
	(10.152.9.46) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1005.5;
	Wed, 5 Apr 2017 15:05:43 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com (10.152.8.55) by
	AM5EUR02FT012.mail.protection.outlook.com (10.152.8.82) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1005.5 via Frontend Transport; Wed, 5 Apr 2017 15:05:43 +0000
Received: from VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) by
	VI1PR05MB3376.eurprd05.prod.outlook.com ([10.170.238.153]) with mapi id
	15.01.1005.019; Wed, 5 Apr 2017 15:05:42 +0000
From: Natalia Theologou <natalia_th92@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Returning non-zero exit code
Thread-Index: AQHSrh4XMOt9VHGk60G3i91AsCTeBg==
Date: Wed, 5 Apr 2017 15:05:42 +0000
Message-ID: <VI1PR05MB337622D59EAB12A6C3D0C045F90A0@VI1PR05MB3376.eurprd05.prod.outlook.com>
References: <VI1PR05MB33768D6A8AB4303963AD7074F9080@VI1PR05MB3376.eurprd05.prod.outlook.com>
In-Reply-To: <VI1PR05MB33768D6A8AB4303963AD7074F9080@VI1PR05MB3376.eurprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:6995BFD283B89BBA3100DA4E2C4C5FF18C4D2BD2A2F00A3B0A26C1D56A6AE554;
	UpperCasedChecksum:4CE90E4B28970BB094044A6AACD11130DFFBC9EC9F1A2269DD47F6F4F47B01AD;
	SizeAsReceived:8097; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [8Cbya8rwzikRH4jQoOoeXBhrPDLzbJ92]
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT126;
	5:zMqktl7OvprvvqOumvhg8eosZykgO31YQMl1dLCVcLgF+gnU/94bXIor8tx8EbY/DfMPGyFCVVhkPRq0Tgrx2+OClLCztayI0E21N4ujrkS33iLRETielBx+zrNPv5HR/3NKXi/ZQI5Owz3TzhVy9A==;
	24:WFK2yXGaB3PUw/ZggcYbG1BjveTqmmmuC/4lxnx+sdK66kpgOklqfX3X84AKvdXJHHnJMVwor5hm2+6hJOh17pFNgAHyj5FKd5noRgtnRUc=;
	7:TZGO7emgsRAGjFfFcaDRaNZflbU1emB6b78jBoUb4OYTRhH0Nn4NE7rhwrLmpxWXqzOxEa5ctBKwFR6q0HeQm3RIgRDkkvl29RQie0tuFlixAPvNDtbk/5PVEyWnSeIEXwHZoizTHrkapDIHQdsYHmk/qKe/BaZiDjEYVTjk+uZHdY2Cs4BxzecBy793TpKLUmsC2YmX/jBx29kMGPEyPk0ZqVYU7enWDtkfFtLbKL+Gtle0URpFC6rRoTLuG2AhZKQazcNesmFAMcLuLwGl4xsbANNxTzOYzvwhriybBNUV/OZaa6mI4tpn+QsUpqjs
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AM5EUR02HT126;
	H:VI1PR05MB3376.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 4e4c2e7c-8044-479a-b242-08d47c353a76
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1603101448)(1601125374)(1701031045);
	SRVR:AM5EUR02HT126; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:AM5EUR02HT126; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT126; 
x-forefront-prvs: 0268246AE7
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2017 15:05:42.0279 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT126
X-Microsoft-Exchange-Diagnostics: 1; HE1EUR02HT128;
	23:2IITxce5tE7vAc66Bqj95b3uWJf3WbJvEgoiCMivdhmcyxRupMzIcgXEpqYs3bwkAS46sv1ynWqEJw8mkvDfmCUrvcZTCxzC7yZfoh32jYcASp7YO7ZTPMeuyI2IzkLpuACV0uOBjeQPwdewif3fwQ==
X-Microsoft-Exchange-Diagnostics: 1; AM5EUR02HT125;
	23:+W5WrXhdcSGEWq/UF913JSwey8NPPDw3ztor262x7iz5Eg1ePkJOnmJlLJCzR8FA0lQMD6+H5+i5jQprgfg9jIVTAxFSkggRYHrQ2JfJxkXY9FRD9oNEJLyopNrnl5I+dHFsllo53TLATI5V90PCug==
X-OriginatorOrg: hotmail.com
Subject: Returning non-zero exit code
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
X-List-Received-Date: Thu, 06 Apr 2017 13:53:44 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR05MB337622D59EAB12A6C3D0C045F90A0VI1PR05MB3376eurp_"

--_000_VI1PR05MB337622D59EAB12A6C3D0C045F90A0VI1PR05MB3376eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

While I am trying to bitbake fsl-image-x11 I am having this error:

ERROR: Task 1570 (virtual:native:~/sources/poky/meta/recipes-support/gmp/gm=
p_5.1.1.bb, do_compile) failed with exit code '1'
NOTE: Tasks Summary: Attempted 78 tasks of which 74 didn't need to be rerun=
 and 2 failed.
Waiting for 0 running tasks to finish:

Summary: 2 tasks failed:
  virtual:native:~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.bb, d=
o_compile
  virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb, do_c=
ompile

Does anyone know how to solve it?

Thank you in advance,
Natalia Theologou

--_000_VI1PR05MB337622D59EAB12A6C3D0C045F90A0VI1PR05MB3376eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;" dir=3D"ltr">
<div>Hello, <br>
<br>
While I am trying to bitbake <span>fsl-image-x11 I am having this error:</s=
pan><br>
<br>
ERROR: Task 1570 (virtual:native:~/sources/poky/meta/recipes-support/gmp/gm=
p_5.1.1.bb, do_compile) failed with exit code '1'<br>
NOTE: Tasks Summary: Attempted 78 tasks of which 74 didn't need to be rerun=
 and 2 failed.<br>
Waiting for 0 running tasks to finish:<br>
<br>
Summary: 2 tasks failed:<br>
&nbsp; virtual:native:~/sources/poky/meta/recipes-core/ncurses/ncurses_5.9.=
bb, do_compile<br>
&nbsp; virtual:native:~/sources/poky/meta/recipes-support/gmp/gmp_5.1.1.bb,=
 do_compile<br>
<br>
Does anyone know how to solve it?<br>
<br>
Thank you in advance, <br>
Natalia Theologou<br>
</div>
</div>
</body>
</html>

--_000_VI1PR05MB337622D59EAB12A6C3D0C045F90A0VI1PR05MB3376eurp_--
