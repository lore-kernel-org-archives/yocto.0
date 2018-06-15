Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5657E00CC9; Sat, 16 Jun 2018 10:03:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.65.22 listed in list.dnswl.org]
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
X-Greylist: delayed 36051 seconds by postgrey-1.32 at yocto-www;
	Sat, 16 Jun 2018 10:03:41 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092065022.outbound.protection.outlook.com [40.92.65.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B01DDE006F1;
	Sat, 16 Jun 2018 10:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=P5TyoKGeWBGyU+1x/nqA4XOQW0YBt+naS7zcCjgBYSQ=;
	b=BOajaCFcJWO9hlhYdmedqAXPhG63d0917HZPUyGXKL3DDQH2GyZ1KmVc/q6lgK++bHFKPhJrtIfnABgXoKGj8F80bkohHT+BjkrTlx6mvEFbwopOD/FUPdXL1PdFnAVCEFoKSrImkQ1SQkRruCbsDibHwGbhuobiA+YwlOLuQ0nMoW//1OdyhCFmeEnzRjlmd06TfY2iJ7U2knnVvL95XmBxcJIlyJqacBRS7jOwzFQ4yZMLOCWF/bYJzgEPVaZcc2iPDK82KhgaD2LDXlLU5Xqz60s4ltnKmVd/fCEwEkQBosECXfVm1sVA1QJwFSoxQDDHgdyqyV+ykzAa3iO/BA==
Received: from DB5EUR01FT049.eop-EUR01.prod.protection.outlook.com
	(10.152.4.57) by DB5EUR01HT226.eop-EUR01.prod.protection.outlook.com
	(10.152.5.135) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.863.11;
	Fri, 15 Jun 2018 13:29:59 +0000
Received: from DB5PR01MB1350.eurprd01.prod.exchangelabs.com (10.152.4.57) by
	DB5EUR01FT049.mail.protection.outlook.com (10.152.5.138) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.863.11 via Frontend Transport; Fri, 15 Jun 2018 13:29:59 +0000
Received: from DB5PR01MB1350.eurprd01.prod.exchangelabs.com
	([fe80::e40b:2bb7:8cad:d732]) by
	DB5PR01MB1350.eurprd01.prod.exchangelabs.com
	([fe80::e40b:2bb7:8cad:d732%7]) with mapi id 15.20.0841.021;
	Fri, 15 Jun 2018 13:29:59 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [bitbake] fsl-image-xwayland DISTRO -- can't get rid of dev
	packages.
Thread-Index: AQHUBKz0f74h266nlUagn4IXNEOjqg==
Date: Fri, 15 Jun 2018 13:29:59 +0000
Message-ID: <DB5PR01MB135004DD435A63B34EAED624927C0@DB5PR01MB1350.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:98B4E8293E54D358788C31FF272C420C7E106885C796E4CE9BA9F0B15D7831AD;
	UpperCasedChecksum:9AA4102285884FE7A30DCD3CFB1C09419D826BC077397D61740C341EA3032169;
	SizeAsReceived:7038; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [+JgzRacAgCRkKR+o6q8EQgafqkDRO8lo]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT226;
	7:pGAe3z5lNqcQfoXiLC3z/LyjF18If7VYrSpwaLiKsRwwZ5BUw2CQ5RJ0zUl6qHWQ8dUrE+6MMYargtGxoPqbmuULl4BnU+JSrHNuC40biS34uE+FKqDp5AD5yBmEagL2CrbAg+vjl2Zv5j65w3ZAghA1U1NvKry9xK750/uyLNm4F0aizTCdVzadtysJfLzz0nF9OBIk4OkwJPqrFZC2Hf9i/2jVNQOKWo0iOMfUNurZ1WroqrHfOMinQKeYH6Bu
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101448)(1701031045);
	SRVR:DB5EUR01HT226; 
x-ms-traffictypediagnostic: DB5EUR01HT226:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:DB5EUR01HT226; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR01HT226; 
x-forefront-prvs: 0704670F76
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(53754006)(199004)(189003)(33656002)(6506007)(26005)(6346003)(87572001)(106356001)(8936002)(102836004)(73972006)(1857600001)(81156014)(476003)(5250100002)(105586002)(7696005)(2501003)(8676002)(74316002)(14454004)(3280700002)(20460500001)(3660700001)(19627405001)(82202002)(5660300001)(25786009)(104016004)(450100002)(54896002)(83332001)(55016002)(486006)(110136005)(6436002)(97736004)(68736007)(86362001)(99286004)(6606003)(2900100001)(9686003)(26583001)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DB5EUR01HT226;
	H:DB5PR01MB1350.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=karim_atiki@hotmail.com; 
x-microsoft-antispam-message-info: FFKPgrOjsDHS01HKDz5doOFTeVixX/e2SmHtU7fsFlwey7zZv4k+2UyjbZKH2i3v8WtpxmwjJDaxpq6UNB8Z7Jqx5RLwht+ZXeXy+lCVd1/ub4D4gliWDu6tNO7Y1d4Pvey66YQcN2NAjNinJxzLYJbjiWb3JKSUS+ooTz/GwseynRWL+yRXnzRXXgvQcAbW
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: fe669725-00bc-49ff-5575-08d5d2c417cc
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2018 13:29:59.6612 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT226
Subject: [bitbake] fsl-image-xwayland DISTRO -- can't get rid of dev packages.
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
X-List-Received-Date: Sat, 16 Jun 2018 17:03:43 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB5PR01MB135004DD435A63B34EAED624927C0DB5PR01MB1350eurp_"

--_000_DB5PR01MB135004DD435A63B34EAED624927C0DB5PR01MB1350eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I've created a custom image based on core-image.

It runs for an i.MX6 and i.MX8.

I've installed only Qt, gstreamer and xwayland stuff.


I've removed dev-pkgs, dbg-pkgs and staticdev-pkgs from IMAGE_FEATURES.


Finally, in the created image, ALL the dpg, dev packages have been installe=
d, with tons of .h header files. static .a files etc.

I've tried everything and just can't figure out how to get rid of them.


Any idea ?


Thanks.


K.

--_000_DB5PR01MB135004DD435A63B34EAED624927C0DB5PR01MB1350eurp_
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
<p style=3D"margin-top:0;margin-bottom:0">Hi all,</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I've created a custom image based=
 on core-image.</p>
<p style=3D"margin-top:0;margin-bottom:0">It runs for an i.MX6 and i.MX8.</=
p>
<p style=3D"margin-top:0;margin-bottom:0">I've installed only Qt, gstreamer=
 and xwayland stuff.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I've removed dev-pkgs, dbg-pkgs a=
nd staticdev-pkgs from IMAGE_FEATURES.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Finally, in the created image, AL=
L the dpg, dev packages have been installed, with tons of .h header files. =
static .a files etc.</p>
<p style=3D"margin-top:0;margin-bottom:0">I've tried everything and just ca=
n't figure out how to get rid of them.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Any idea ?</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Thanks.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">K.</p>
</div>
</body>
</html>

--_000_DB5PR01MB135004DD435A63B34EAED624927C0DB5PR01MB1350eurp_--
