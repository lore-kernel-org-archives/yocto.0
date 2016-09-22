Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57B19E00D36; Thu, 22 Sep 2016 06:36:29 -0700 (PDT)
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
	*      [65.55.111.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Thu, 22 Sep 2016 06:36:25 PDT
Received: from BLU004-OMC4S35.hotmail.com (blu004-omc4s35.hotmail.com
	[65.55.111.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E680CE006EE
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 06:36:25 -0700 (PDT)
Received: from EUR02-VE1-obe.outbound.protection.outlook.com ([65.55.111.135])
	by BLU004-OMC4S35.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 22 Sep 2016 06:35:24 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=K2ApYYaZ0B29MHdb17JWGQfZVTLXI0rB9K0YK0goOv0=;
	b=sXAw5DRRfBfCJOg8nKZDiNwf+h/ThvsJeAMoJmZrrqXqOlvj/xwOQDCl59RXQ/kSOUAegJ/m4d8r3K00ybeVrt4EciB/kSIKyJx4w+tHX177X+oTJ+k1GOLuImbbOzGNAOjNjTg5XxAgcId11WQ/ndCDF7J9Wvb14u82zqbtfIeRV8oO6AdEgakAwnirXXGBTAF17WloTmpYN/bUmrC9pZx+q0Fn6ZmAIOLNyZo9QTW1g6qd3sIDhXJPltsgyzuiTjkD0+HFFfQZ3R4y7hQTDXUWTovxoVNrCLA0jP192h7EpUklHycR9JrPH6vQO2qC19qJZasgfWI5UpBjzmMTMA==
Received: from AM5EUR02FT020.eop-EUR02.prod.protection.outlook.com
	(10.152.8.55) by AM5EUR02HT045.eop-EUR02.prod.protection.outlook.com
	(10.152.9.32) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.629.5;
	Thu, 22 Sep 2016 13:35:23 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com (10.152.8.58) by
	AM5EUR02FT020.mail.protection.outlook.com (10.152.8.125) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.629.5 via Frontend Transport; Thu, 22 Sep 2016 13:35:22 +0000
Received: from HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	by HE1PR01MB1883.eurprd01.prod.exchangelabs.com ([10.165.228.143])
	with mapi id 15.01.0629.006; Thu, 22 Sep 2016 13:35:22 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] meta-toradex: How to generate uImage* files ?
Thread-Index: AQHSFNWxrSM2r2GegkOYNDSjxTXW/Q==
Date: Thu, 22 Sep 2016 13:35:22 +0000
Message-ID: <HE1PR01MB188363A66CEC33154BFAAA9492C90@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=softfail (sender IP is 10.152.8.58)
	smtp.mailfrom=hotmail.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=fail action=none
	header.from=hotmail.com;
received-spf: SoftFail (protection.outlook.com: domain of transitioning
	hotmail.com discourages use of 10.152.8.58 as permitted sender)
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ix1HAu3E7Uac8JKS8fv8RIBgzBfqH2x/]
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; AM5EUR02HT045;
	6:V0wKNxz7FiDJz9CrjizFkUNeX7H9e+csS0FLhVpzfUTfQsd/5E1t0dYIXGJDDXSXbSp3fjoOwP0JVRetxHcLsiG9dXwV7PCMlGc1KA1lxVH7Y4b7tMt6V6Z2M5TVm4K1Mxx1DrF5N7et554kIKBCETN+LtxuQT3xCdIg5IR6nmeUK8e82F07yuDkv8GT6Mwz3UzwJ63zY/KtkDH+8pv3wSwy/bOYq0MHTJMo4gi7bpEbwLS4145Ydvh3tsQrRgMCZZPbyKwG510luAIDuZm4xeRJH4jU0J0kBeOsL0K58e4=;
	5:9t5xpRVjrS5NyydT58/0nuntSTL/RPCaeJ9visKXo32PuikYNcB86wymbCjBc36V7Wcu4gcpBC+Zey+QukBT9faleGzNCYq3r6+Y01UKfzyCqH8SJAdix1HPOXrprjuQRtkHr2RalI+e9E/a36Drkw==;
	24:4X3xNit6rnxMiwBHaSk5ReBgpmKl5K3bqVq9yb3p1Ob6aKZMY4leTJKmfQH+Bz8AHqKKJyJ+q5xbajIfuiwJnc0WUGlr9+niTmyGah+nrcw=;
	7:oi7jWJf1GK5RWCOzwQnpyf5CN6a0OyP0wtSiJI1bJghd17WcZQiZxvGGr6BwTh8nhd30T2SKtYdmCG3gx6Ij9D8BGVMW8vxnWXtt23mSyUzwBffxypDLIujgHGw5Jp4MLcbeXRa5uVfLaKI12mSNvPIsn+bH3N/O8hRRsrQ95pYwhtnxOvCaCHN34sTIEiF4bi/RBSGJm6GDeCFiz0xQBoPPNO8XQ2mXQZ27cF/TxgeTgcNSBr1A3alSiq3SFFOP/9pTckXsgiePnR03/HY9QZxl2EXCF2uSDbmGLQUWDXDICtPB2bNUuHWDAXVcmWrd
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:AM5EUR02HT045;
	H:HE1PR01MB1883.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 69a72a5d-aa94-4467-d109-08d3e2ed4d69
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(1601124038)(1603103081)(1601125047); SRVR:AM5EUR02HT045;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:AM5EUR02HT045; BCL:0; PCL:0; RULEID:; SRVR:AM5EUR02HT045; 
x-forefront-prvs: 0073BFEF03
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Sep 2016 13:35:22.2318 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR02HT045
X-OriginalArrivalTime: 22 Sep 2016 13:35:24.0628 (UTC)
	FILETIME=[2C51C940:01D214D6]
Subject: meta-toradex: How to generate uImage* files ?
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
X-List-Received-Date: Thu, 22 Sep 2016 13:36:29 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_HE1PR01MB188363A66CEC33154BFAAA9492C90HE1PR01MB1883eurp_"

--_000_HE1PR01MB188363A66CEC33154BFAAA9492C90HE1PR01MB1883eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi all,


I have downloaded a sample linux image from the Toradex developers website =
to test on a Toradex Colibri T20 device. It worked fine.


Now I have generated a custom poky distribution (core-image-minimal) to dep=
lkoy on the device.

However, the generated image is zImage format. Whereas it seems that uBoot =
is expecting uImage.


1) How do we inform Yocto to generate uImage instead of zImage ?


2) Therefore, I have deleted the tmp/deploy directory.

But right now, I'm unable to generate the distro again.

I tried many things:


bitbake -c clean core-image-minimal

bitbake -c cleanall core-image-minimal

bitbake core-image-minimal


Everything fails.


Is there a way to get things working again or should generate everythingh f=
rom scratch again ?



Z.

--_000_HE1PR01MB188363A66CEC33154BFAAA9492C90HE1PR01MB1883eurp_
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
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;back=
ground-color:#FFFFFF;font-family:Calibri,Arial,Helvetica,sans-serif;">
<p>Hi all,</p>
<p><br>
</p>
<p>I have downloaded a sample linux image from the Toradex developers websi=
te to test on a&nbsp;<span style=3D"font-family: Calibri, Arial, Helvetica,=
 sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, Not=
oColorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiS=
ymbols; font-size: 16px;">Toradex
 Colibri T20 device. It worked fine.</span></p>
<p><br>
</p>
<p>Now&nbsp;I have generated a custom&nbsp;poky distribution (core-image-mi=
nimal) to deplkoy on the device.</p>
<p>However, the generated image is zImage format. Whereas it seems that uBo=
ot is expecting uImage.</p>
<p><br>
</p>
<p>1) How do we inform Yocto to generate uImage instead of zImage ?</p>
<p><br>
</p>
<p>2) Therefore, I have deleted the tmp/deploy directory.</p>
<p>But right now, I'm unable to generate the distro again.</p>
<p>I tried many things:</p>
<p><br>
</p>
<p>bitbake -c clean core-image-minimal</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">bitbake -c cleanall core-image-minimal</span><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;">bitbake
 core-image-minimal</span><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;"><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;">Everything
 fails.</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;"><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;">Is
 there a way to get things working again or should generate everythingh fro=
m scratch again ?</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;"><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;"><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, =
&quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, =
&quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-=
size: 16px;">Z.</span></span></p>
</div>
</body>
</html>

--_000_HE1PR01MB188363A66CEC33154BFAAA9492C90HE1PR01MB1883eurp_--
