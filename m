Return-Path: <natalia_th92@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD460E00C1B; Thu, 10 Aug 2017 12:58:51 -0700 (PDT)
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
	*      [40.92.65.72 listed in list.dnswl.org]
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
X-Greylist: delayed 21589 seconds by postgrey-1.32 at yocto-www;
	Thu, 10 Aug 2017 12:58:48 PDT
Received: from EUR01-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092065072.outbound.protection.outlook.com [40.92.65.72])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76495E00C09
	for <yocto@yoctoproject.org>; Thu, 10 Aug 2017 12:58:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=N2xIAHUBM2ffLzzaWVK15DvX+thL2teW1DwkAhI4d+Q=;
	b=un/IL7y5O9HSZXZCBmBe5v9rloiarFp8/atLHgane+QohGejbw0DQbw3smfPjB0i5Vn7RUjQjqKELK2+lr4JYHayXfmarTRkqKBTRjFRwxmUA48xTSJr2HUSNdENj8lKfg+ASbtE3rcZJdS9FXQaw8xHDm6kujCoKu5GJepbXwXype/3JNVTTQtiuHo18DoKHHaTqGFVlza75p4/Hpktftz3MDvrY3wU6UR+X4nl6MIM8uFiTJJuBimY6zT3kt6t4NDDkh7lWiAw5K0YZ6/pJ0NXMbo7GRWW0Wd77BFJe64FMTfKzPCB3mjB92HH0Kve3TieyhlCzllOvcH3M5leig==
Received: from DB5EUR01FT029.eop-EUR01.prod.protection.outlook.com
	(10.152.4.55) by DB5EUR01HT055.eop-EUR01.prod.protection.outlook.com
	(10.152.5.142) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1304.16;
	Thu, 10 Aug 2017 08:24:34 +0000
Received: from VI1PR0502MB2941.eurprd05.prod.outlook.com (10.152.4.53) by
	DB5EUR01FT029.mail.protection.outlook.com (10.152.4.241) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1304.16 via Frontend Transport; Thu, 10 Aug 2017 08:24:34 +0000
Received: from VI1PR0502MB2941.eurprd05.prod.outlook.com
	([fe80::51ee:ca3f:556a:3d26]) by
	VI1PR0502MB2941.eurprd05.prod.outlook.com
	([fe80::51ee:ca3f:556a:3d26%13]) with mapi id 15.01.1320.019;
	Thu, 10 Aug 2017 08:24:34 +0000
From: Natalia Theologou <natalia_th92@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Nodejs and npm
Thread-Index: AQHTEbGzUWehXJOJlkm81oUIV6Wztg==
Date: Thu, 10 Aug 2017 08:24:34 +0000
Message-ID: <VI1PR0502MB2941DB28E0B30BBFC38F9EFFF9880@VI1PR0502MB2941.eurprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:1256DAF062D0E518D2974FCEA81CD9B0E0529E50EE08222A23B34F25AF17C9F4;
	UpperCasedChecksum:D57D6590255E1D25F78C4E2EFE65C25B5EC3453A5E77F2B7A2A099BD5C37CDA8;
	SizeAsReceived:7071; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [9xv9kygwkz43e3i28DgCWw4bKC99e44t]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DB5EUR01HT055;
	7:VqWSvYO7aNGRg1+3XcS7kIZWoUFc9+Jz31Ls1iv+0ffH+oZnXou8b9GECGbobyjKdaprl+Tg9SBbZ57VOWq7n5SFigU9x6S+XOZBsDRbsCruId698re56iz8AVRp2JFj7kYD22XkVr8z9SFNxjWpVEhFma9iR1g5Y7GNci89liJEHQ0PuTk8dKSuh2DvlRjBykDeii/QaGix5ugKb8d6sY+pTss2AU4eM7qnDdBPrCNcqreYgA69WZCFIDsznxvDw5mx4KrrcjXN2PDoI19csH3HqKJRWd/t9xOFTPcNXIzTMbAxpAlQeXvosBAxlz0a8JaL2PFMEB2BMtjJTuH3SCSGkDC7DiXeNpjQBIduI/y/R3zKTo5a5A+8oG0imwXGfdLBAB6TsaE4Z8JyVjd0s9I6tKLS0IAeWDuGuNupebMKN9bQ22rsH7YWnP30qkF8RBQ9lswIhohbF8lopB9iu0A6teEW9buEoNKeAaQsBgUTMY8aIA6r/kHznPoA45YAhhUpUghIXi2Q65C4CvxG0TBxQL8MQ4+OdOVAXOa2whEByInM3AknJOwrYt2b2XIlsHDFBpV+OXssEKqM+39zLP9j+DFy9CdtCL7kFxzl0d8NcIZTGM+jibHvh7IlZAGFyX3uWSU1VXzl+orTqLXs21QTh//V6N0+wg2BPvEqu38cDeKHFmh6mr+iRxHbiHqBzZtmTzEX387veAg77HByEbvVG9jMWMERaA/q5zN7BKzzRkJJwRM6t4FaLneMTgedMCshidrBju9Ktwe8WXP1nA==
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:DB5EUR01HT055;
	H:VI1PR0502MB2941.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 0ce060a1-ba14-4ace-5cac-08d4dfc93b54
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322377)(1603101448)(1601125374)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:DB5EUR01HT055; 
x-ms-traffictypediagnostic: DB5EUR01HT055:
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:DB5EUR01HT055; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:DB5EUR01HT055; 
x-forefront-prvs: 03950F25EC
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2017 08:24:34.1168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR01HT055
Subject: Nodejs and npm
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
X-List-Received-Date: Thu, 10 Aug 2017 19:58:51 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_VI1PR0502MB2941DB28E0B30BBFC38F9EFFF9880VI1PR0502MB2941_"

--_000_VI1PR0502MB2941DB28E0B30BBFC38F9EFFF9880VI1PR0502MB2941_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,


I follow these instructions https://github.com/imyller/meta-nodejs


and I bitbake nodejs in order to have nodejs and npm in a raspberry. In the=
 raspberry I have node -v but no npm -v.

What does it mean:

Inherit npm-install build task class in your recipe. ?

Should I do something more in order to have npm in the raspberry?

Thank you.
Best,
Natalia
<https://github.com/imyller/meta-nodejs#bitbake-classes>

--_000_VI1PR0502MB2941DB28E0B30BBFC38F9EFFF9880VI1PR0502MB2941_
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
<p>Hello,&nbsp;</p>
<p><br>
</p>
<p>I follow these instructions&nbsp;<a href=3D"https://github.com/imyller/m=
eta-nodejs" class=3D"OWAAutoLink" id=3D"LPlnk848381" previewremoved=3D"true=
">https://github.com/imyller/meta-nodejs</a>&nbsp;</p>
<p><br>
</p>
and I <span style=3D"background-color: rgb(190, 190, 190);">bitbake nodejs<=
/span> in order to have nodejs and npm in a raspberry. In the raspberry I h=
ave
<span style=3D"background-color: rgb(190, 190, 190);">node -v</span> but no=
 <span style=3D"background-color: rgb(190, 190, 190);">
npm -v.</span>
<div><span style=3D"background-color: rgb(190, 190, 190);"><br>
</span></div>
<div><span style=3D"background-color: rgb(190, 190, 190);"><span style=3D"b=
ackground-color: rgb(255, 255, 255);">What does it mean:</span><span style=
=3D"background-color: rgb(255, 255, 255);">&nbsp;</span>
<p style=3D"box-sizing: border-box; margin-bottom: 16px; color: rgb(36, 41,=
 46); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;,=
 Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe U=
I Emoji&quot;, &quot;Segoe UI Symbol&quot;; font-size: 16px;">
Inherit&nbsp;<code style=3D"box-sizing: border-box; font-family: SFMono-Reg=
ular, Consolas, &quot;Liberation Mono&quot;, Menlo, Courier, monospace; fon=
t-size: 13.6px; padding: 0.2em 0px; margin: 0px; background-color: rgba(27,=
 31, 35, 0.05); border-radius: 3px;">npm-install</code>&nbsp;build
 task class in your recipe. ?</p>
<div>Should I do something more in order to have npm in the raspberry?</div=
>
<div><br>
</div>
<div>Thank you.&nbsp;</div>
<div>Best,&nbsp;</div>
<div>Natalia</div>
<h1 style=3D"box-sizing: border-box; margin: 24px 0px 16px; line-height: 1.=
25; padding-bottom: 0.3em; border-bottom: 1px solid rgb(234, 236, 239); col=
or: rgb(36, 41, 46); font-family: -apple-system, BlinkMacSystemFont, &quot;=
Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;=
, &quot;Segoe UI Emoji&quot;, &quot;Segoe UI Symbol&quot;;">
<a id=3D"user-content-bitbake-classes" class=3D"anchor" href=3D"https://git=
hub.com/imyller/meta-nodejs#bitbake-classes" aria-hidden=3D"true" style=3D"=
box-sizing: border-box; background-color: transparent; color: rgb(3, 102, 2=
14); text-decoration-line: none; float: left; padding-right: 4px; margin-le=
ft: -20px; line-height: 1;"><svg aria-hidden=3D"true" class=3D"octicon octi=
con-link" height=3D"16" version=3D"1.1" viewBox=3D"0 0 16 16" width=3D"16">=
<path fill-rule=3D"evenodd" d=3D"M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h=
4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 =
5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S=
13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1=
.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path>=
</svg></a></h1>
</span></div>
</div>
</body>
</html>

--_000_VI1PR0502MB2941DB28E0B30BBFC38F9EFFF9880VI1PR0502MB2941_--
