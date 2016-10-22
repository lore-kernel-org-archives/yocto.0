Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 639BDE00C9D; Sat, 22 Oct 2016 05:26:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (karim_atiki[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.54.190.157 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from BAY004-OMC3S19.hotmail.com (bay004-omc3s19.hotmail.com
	[65.54.190.157])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E461E00C86
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 05:26:04 -0700 (PDT)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com ([65.54.190.188])
	by BAY004-OMC3S19.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Sat, 22 Oct 2016 05:26:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=CwLU4bof1iN4uWVe+1ZFmFY4oMaElWVpK+4JEbyBD+Q=;
	b=lOFYytbjaBoevHEXkvwih/+70fpz2pBXLeqjIX/5voo41VJXVmMz/GMJpZC+zsnYr5AzUV4SVmugGQodRcwwtryQyuB5VlmxZzUatJSZOs3CnXQ77ZKS57tSx0y1B4NZ27tvmicLdV4FVD+5uOcI8Ct6MdEkI5RPGqh86x1kgsHNOWG8I3f+GQfLHcMQajwj/J8Mm6gg3Z0svs80cYaNCNjdYww/TRwwtuRbqq/VVQzUUUa2CGK63d137OMcvx76GvWZbDj4Smq1SpmOY24e0kmV3UzEEjzd7rBVUIVWzXt9brnAaTwfYpHwu7UnbYWGcmtaZmoyp+mKui2HUSu4aw==
Received: from VE1EUR02FT043.eop-EUR02.prod.protection.outlook.com
	(10.152.12.55) by VE1EUR02HT209.eop-EUR02.prod.protection.outlook.com
	(10.152.13.210) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.669.7;
	Sat, 22 Oct 2016 12:26:01 +0000
Received: from DB5PR01MB1880.eurprd01.prod.exchangelabs.com (10.152.12.56) by
	VE1EUR02FT043.mail.protection.outlook.com (10.152.13.89) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.669.7 via Frontend Transport; Sat, 22 Oct 2016 12:26:01 +0000
Received: from DB5PR01MB1880.eurprd01.prod.exchangelabs.com ([10.166.169.16])
	by DB5PR01MB1880.eurprd01.prod.exchangelabs.com ([10.166.169.16])
	with mapi id 15.01.0669.018; Sat, 22 Oct 2016 12:26:00 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
Thread-Index: AQHSLF9yRZyzpaMIaUqAHJgUBbdCuw==
Date: Sat, 22 Oct 2016 12:26:00 +0000
Message-ID: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [VviBT8EJMC+ZJmHS7FtcE38DP89957Wg]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT209;
	6:rLz6iYwMvcZneHukKC/nz0qxISurQ6QkWezhSi96LT2Ou4EskExj2ES0pMfC0KsxiPQ7RH3VMf/OfntKhmNwqNZTYs1U2BpaZRECtRDbBwuJWyJ0c5td3Mh/rOQBckVd51OSmtbFruYSZkh6gq5N5Esuyr39ripbOzQufIbspSFxr6jfIUFWxWjqdE7H7FTKkIoDal3zOEyC2/q36u/qzLZvl3Y1Lt44Cngm8PM04DrxRVoj4R1bBJBYNqkCT7nisSLjk5RINw3tatqmh+j9NNryakof6hH3vvdN+YRKk09Cio1+vFO1wdYWqsbTfIAq;
	5:d8F5Smwvjn16DrhisSyhLytijF0c5RJzkSC5fHXH3by7/Hby4hvaiINnGPYS0pQbf09zQDx1dvI//CkbCtozE8edOZcapyxdPIOavyZOAh+y9jgBCIMQk6+GJzmJk+Q86irJOUeAmqm2c/8xKlUywc7mXuGE3zNbTq530UUw4MU=;
	24:zqg0W9DNOggRk2mMhjPjvtPlC3ifFsijb2q4r111/TVS2hQUOsAerjIoNr/J5R+jiEwJFM1tRWNd2v4Xzt1nkYiBNSEt2SNU32y5wedzigE=;
	7:mggmk0uihTL1Nkv1dVcWZCuE+VekGkcxV0FKgmuob+0Vzamm2k8trlLl2ahGsRq++2QIy3QIPDxFl4y4YviujEKUcH+4q7NCp5Ay3nSPz/OOZ5PBfHSy1rmbh5OCBtS48OHsn4jW2WSm3R5e2gCGdUw5mz8N6WIscDmflnavttqH/J/YmGcNrGRzJwMZ6qGSk+syjulBg2/0nx4Q+1Ywn8nRiB6HRxyMQRy2II+SU+hKtqwEasL9ZW3F+TDI5cncgE8tgJrGx06+unQz5kaujKRh5kw6HzGjsKg+60dmKKVuToHSnbiyJ4yNRAOe5ZVPGFMFqF6LjNipx6Lxi4aXsRS+GqWRcCrC8t/nzOHixCs=
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR02HT209;
	H:DB5PR01MB1880.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: cd071add-0ceb-47fb-bb34-08d3fa76954e
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:VE1EUR02HT209;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR02HT209; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR02HT209; 
x-forefront-prvs: 01039C93E4
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2016 12:26:00.5600 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT209
X-OriginalArrivalTime: 22 Oct 2016 12:26:03.0573 (UTC)
	FILETIME=[7487AE50:01D22C5F]
Subject: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Sat, 22 Oct 2016 12:26:08 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_DB5PR01MB188022E6CBBDB28E6758242592D70DB5PR01MB1880eurp_"

--_000_DB5PR01MB188022E6CBBDB28E6758242592D70DB5PR01MB1880eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


Tryng to build the meta-toolchain-qt5, I've a failure while bulidng gst-plu=
gins-bad.


The underlying error seems to be:


| ./.libs/libgstgl-1.0.so: undefined reference to `graphics_get_display_siz=
e


This function seems to come from bcm_host library.

Isn't it related to  RaspberryPi graphic libs ?


Should I add a specific dependency ?


Weird.


Karim



--_000_DB5PR01MB188022E6CBBDB28E6758242592D70DB5PR01MB1880eurp_
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
-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>Tryng to build the meta-toolchain-qt5, I've a failure while bulidng gst-=
plugins-bad.</p>
<p><br>
</p>
<p>The underlying error seems to be:</p>
<p><br>
</p>
<p><i><b></b></i><span><b><i>| ./.libs/libgstgl-1.0.so: undefined reference=
 to `graphics_get_display_size</i></b></span><br>
</p>
<p><span><b><i><br>
</i></b></span></p>
<p><span>This function seems to come from bcm_host library.</span></p>
<p><span>Isn't it related to&nbsp; RaspberryPi graphic libs ?</span></p>
<p><br>
</p>
<p>Should I add a specific dependency ?</p>
<p><br>
</p>
<p>Weird.</p>
<p><br>
</p>
<p>Karim</p>
<p><span><b><i><br>
</i></b></span></p>
<p><span><b><i><br>
</i></b></span></p>
</div>
</body>
</html>

--_000_DB5PR01MB188022E6CBBDB28E6758242592D70DB5PR01MB1880eurp_--
