Return-Path: <Elmarblabla@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3397E009C2; Thu, 13 Jul 2017 18:02:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (elmarblabla[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.65.64 listed in list.dnswl.org]
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
X-Greylist: delayed 58400 seconds by postgrey-1.32 at yocto-www;
	Thu, 13 Jul 2017 18:02:08 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092065064.outbound.protection.outlook.com [40.92.65.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EEF0E0090A
	for <yocto@yoctoproject.org>; Thu, 13 Jul 2017 18:02:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=/8krMs6oXzEVlwcKrm9B8dd/EsUWlKofq6R3kOYtoBY=;
	b=fuV/apxSnY8L8UMQsNMwhNbPfime/KeZIUOhmmQDsYwNFsx+WHGgj6ljMU5aw6RVfre5sdkze7RyzCFfeaMqlJoZ9Nk2tUxCKYw96nd3I9cRxq7fyqJNxsrpgzOspZFiIy2XzPBDAHdBIhXzmJqz+HAvsY0CQIbWaxRZPE0ZSNIazTBr5pb/tZYBcWze4bF1XEkNBjKsHNN+SASH2Bajh47AXWzKQ7jCzGpfAtSzltYfDmamgxntB9ULX5phlBvAJNm0McCw/kyPqr6DoAuPi5WdV9xOXh66gyZYAxxcUqGyw7XPawJQR/uirc3AZp9cOlimQPqE8e3wuYWlNOj5EQ==
Received: from DB5EUR01HT116.eop-EUR01.prod.protection.outlook.com
	(10.152.5.31) by DB5EUR01HT116.eop-EUR01.prod.protection.outlook.com
	(10.152.5.31) with ShadowRedundancy id 15.1.1240.9;
	Thu, 13 Jul 2017 18:28:31 +0000
Received: from HE1EUR01HT118.eop-EUR01.prod.protection.outlook.com
	(10.152.0.237) by DB5EUR01HT116.eop-EUR01.prod.protection.outlook.com
	(10.152.5.31) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1240.9;
	Thu, 13 Jul 2017 08:48:46 +0000
Received: from DB6PR1001MB1078.EURPRD10.PROD.OUTLOOK.COM (10.152.0.58) by
	HE1EUR01FT020.mail.protection.outlook.com (10.152.0.171) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1240.9 via Frontend Transport; Thu, 13 Jul 2017 08:48:46 +0000
Received: from DB6PR1001MB1078.EURPRD10.PROD.OUTLOOK.COM
	([fe80::999:668b:b156:4131]) by
	DB6PR1001MB1078.EURPRD10.PROD.OUTLOOK.COM
	([fe80::999:668b:b156:4131%17]) with mapi id 15.01.1261.017;
	Thu, 13 Jul 2017 08:48:46 +0000
From: Elmar van Rijnswou <Elmarblabla@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Cross compile recipe cmake
Thread-Index: AQHS+7QrpLkHrb/K90ORQOSSth0mmQ==
Date: Thu, 13 Jul 2017 08:48:46 +0000
Message-ID: <DB6PR1001MB107895DCFA50D66A17EFE7D6B8AC0@DB6PR1001MB1078.EURPRD10.PROD.OUTLOOK.COM>
Accept-Language: nl-NL, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:56DB6EA87C40E32AD4708146C6FBE86213816C0966AB1014E3F16DE7AD8BC728;
	UpperCasedChecksum:8B8E3F63383B30E5B109CBFC759157129877E883B66BCB3334BA799988788C0F;
	SizeAsReceived:7042; Count:42
x-tmn: [JPDKV1L5ui9ooS6e3rlTppcLA3oBA8ac]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT116;
	7:gVRqBO+5NocFWEJQ9Lg6VVUQGtyXtgrShREdNzHYNZxOGq/M8tm0u2JinsD6le+BfHGEPyVwMndswW2awfR9QXe6qWo/b302cNG3+60/zVvLK+lEM2WecZy4Lo6uhdlY0xeX3DsPRnfGIEDGdxuIMYl8ksddzhYim7YT2/kM3QZ+NaiKd9H7IE9z8kIy/L8uSeCQ4Bmu3o/bi0MU28bv4Iorinm8nJyxJHb1mQdBM+QWTdxXhxR+8w1XiDz7GPqaqmDPPNyR9Swx5sSLL9pHZP7Py41KJ19eY9ED0zcZSGiJIFbvMU56dHPA6cjiQQ4bcFgZPu5OIrlDpn1za0HXXu0MWdlEztMnJJQzPUJjASrblALITyB9BjYpOfUkZWM2BBFwztSRNXwTyguOgMvEX3dxZxnocfFAlgrNy1ycSfwNKqXl512wW8eAmNonfWgflKxDPYtV3PrG6a9DPhnYw2uUO3Tao/HfD8peyG+GwM0zyMcQuV3gibjOlC6WqVbcMUC5n1J7Z+udDDaI2e7D5NLAbEmQVWMxmFjcHKv6nSuXeTDAoPUBf39zSr9o0eN5SJylxQKnrwqc2j8qSME9PCjXOcP4FEODD9uq/kFoWzqg9vAHBj3K3MJf0QzB2N4XD30aV3TO51WPTU0QZ1Df27cXEEwyU+AWH17eRT46MdCNMW0mwhntmysvKyLvdrZ7RYbxBOAvJx6r4sUb2khs/hxw+rU8PUGuvkrAlZDE6oGQcVU5xX9fZdK13dYblkq9WsHbCZMhksA1uz3yD/6pJA==
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DB5EUR01HT116;
	H:HE1EUR01HT118.eop-EUR01.prod.protection.outlook.com; FPR:;
	SPF:None; LANG:en; 
x-ms-office365-filtering-correlation-id: 98871416-c4d8-4d80-1886-08d4c9cbf92f
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(1603103135)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:DB5EUR01HT116; 
x-ms-traffictypediagnostic: DB5EUR01HT116:
x-exchange-antispam-report-test: UriScan:(236129657087228);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:DB5EUR01HT116; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB5EUR01HT116; 
x-forefront-prvs: 0367A50BB1
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Jul 2017 08:48:46.1302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT116
Subject: Cross compile recipe cmake
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
X-List-Received-Date: Fri, 14 Jul 2017 01:02:12 -0000
Content-Language: nl-NL
Content-Type: multipart/alternative;
	boundary="_000_DB6PR1001MB107895DCFA50D66A17EFE7D6B8AC0DB6PR1001MB1078_"

--_000_DB6PR1001MB107895DCFA50D66A17EFE7D6B8AC0DB6PR1001MB1078_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello! I've been doing a lot of searching on the internet,but I can't seem =
to find anybody with my problem. I'm trying to add a recipe to my image and=
 deliver it straight with the system. Everything goes fine, up until the re=
cipe I created links to other libraries. I have dependencies to Qt4. I used=
 the hello world example recipe, which I can bitbake successfully. My recip=
e is the following:


SUMMARY =3D "Simple helloworld application"
SECTION =3D "examples"
LICENSE =3D "Closed"
SRC_URI =3D "file://media/traffic/Yocto/src/elva/"
S =3D "/media/traffic/Yocto/src/elva/proj/src"
inherit cmake
EXTRA_OECMAKE =3D ""


The problem I'm having now is that, using the generated toolchain, cmake is=
 looking at the wrong directories. The rootpath is also crooked when I prin=
t it out in my cmake project file:

CMAKE_FIND_ROOT_PATH:/media/traffic/Yocto/QorIQ-SDK-V2.0-20160527-yocto/bui=
ld_ls2080abluebox/tmp/sysroots/ls2080abluebox/media/traffic/Yocto/QorIQ-SDK=
-V2.0-20160527-yocto/build_ls2080abluebox/tmp/sysroots/x86_64-linux


What am I doing wrong? My target is arm. I can build my image fine without =
the recipe, so I'm thinking that there is a step I'm missing. Also when I e=
xport the SDK I can see that all the right libraries and findscripts are av=
ailable (in the sysroot). But whenever I change my source, it still looks i=
n the sysroot of the host system. Any help would be greatly appreciated!

--_000_DB6PR1001MB107895DCFA50D66A17EFE7D6B8AC0DB6PR1001MB1078_
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
<p>Hello! I've been doing a lot of searching on the internet,but I can't se=
em to find anybody with my problem. I'm trying to add a recipe to my image =
and deliver it straight with the system. Everything goes fine, up until the=
 recipe I created links to other
 libraries. I have dependencies to Qt4. I used the hello world example reci=
pe, which I can bitbake successfully. My recipe is the following:
<br>
</p>
<p><br>
</p>
<p></p>
<div>SUMMARY =3D &quot;Simple helloworld application&quot;<br>
SECTION =3D &quot;examples&quot;<br>
LICENSE =3D &quot;Closed&quot;<br>
SRC_URI =3D &quot;file://media/traffic/Yocto/src/elva/&quot;<br>
S =3D &quot;/media/traffic/Yocto/src/elva/proj/src&quot;<br>
inherit cmake<br>
EXTRA_OECMAKE =3D &quot;&quot;<br>
</div>
<br>
<p></p>
<p>The problem I'm having now is that, using the generated toolchain, cmake=
 is looking at the wrong directories. The rootpath is also crooked when I p=
rint it out in my cmake project file:</p>
<p><span>CMAKE_FIND_ROOT_PATH:/media/traffic/Yocto/QorIQ-SDK-V2.0-20160527-=
yocto/build_ls2080abluebox/tmp/sysroots/ls2080abluebox<span>/media/traffic/=
Yocto/QorIQ-SDK-V2.0-20160527-yocto/build_ls2080abluebox/tmp/sysroots/x86_6=
4-linux</span></span></p>
<p><span><span><br>
</span></span></p>
<p><span><span>What am I doing wrong? My target is arm. I can build my imag=
e fine without the recipe, so I'm thinking that there is a step I'm missing=
. Also when I export the SDK I can see that all the right libraries and fin=
dscripts are available (in the sysroot).
 But whenever I change my source, it still looks in the sysroot of the host=
 system. Any help would be greatly appreciated!</span></span><br>
</p>
</div>
</body>
</html>

--_000_DB6PR1001MB107895DCFA50D66A17EFE7D6B8AC0DB6PR1001MB1078_--
