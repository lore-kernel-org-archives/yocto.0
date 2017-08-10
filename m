Return-Path: <dsjnews@hotmail.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20F4CE00C31; Fri, 11 Aug 2017 17:15:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dsjnews[at]hotmail.co.uk)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.71.64 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 39758 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Aug 2017 17:15:15 PDT
Received: from EUR03-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092071064.outbound.protection.outlook.com [40.92.71.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6471AE00B67
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 17:15:15 -0700 (PDT)
Received: from AM5EUR03FT017.eop-EUR03.prod.protection.outlook.com
	(10.152.16.59) by AM5EUR03HT014.eop-EUR03.prod.protection.outlook.com
	(10.152.16.64) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1304.16;
	Thu, 10 Aug 2017 12:36:13 +0000
Received: from DB6PR0502MB2917.eurprd05.prod.outlook.com (10.152.16.54) by
	AM5EUR03FT017.mail.protection.outlook.com (10.152.16.89) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1304.16 via Frontend Transport; Thu, 10 Aug 2017 12:36:13 +0000
Received: from DB6PR0502MB2917.eurprd05.prod.outlook.com
	([fe80::11d4:bf38:4493:dfa4]) by
	DB6PR0502MB2917.eurprd05.prod.outlook.com
	([fe80::11d4:bf38:4493:dfa4%15]) with mapi id 15.01.1341.017;
	Thu, 10 Aug 2017 12:36:13 +0000
From: Never Read <dsjnews@hotmail.co.uk>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Debugging Yocto Project build failures
Thread-Index: AQHTEdUgnqap3nYA+Ee396xX7t1yJg==
Date: Thu, 10 Aug 2017 12:36:13 +0000
Message-ID: <DB6PR0502MB291749533AFB89E8DE29AC75E0880@DB6PR0502MB2917.eurprd05.prod.outlook.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.co.uk;
x-incomingtopheadermarker: OriginalChecksum:233A2ED4A33945136946AAB297D3A9D2133FD4EC95C74DF52BB48B16A254AC57;
	UpperCasedChecksum:C2B13398F4D008E66F2CFF81812E44E354097A0CBB5BBE16E57D36D9B30F886B;
	SizeAsReceived:7112; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [tVHKiLP55IHoZFLXB1Yp/tIJ/po+lCK7]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; AM5EUR03HT014;
	7:aEK9gq/44HPoCSj3oF77qCK2uNIz5bKLWNaYc0wWN12sX1EfF2CkY7igdrvPpcktSHSLFHQztXJA/xkJlOAq7GRY5n6tlsX5jLxvfQ8NHNKwGK9k45kVL+FL32bedU1429ol15q8KuDSh5z2dNRNX6flNUYzE94qcqMOdIcS5EqLfHmN0TNIr0XdvEeEeSPbA/LDPIS+xN5gVxSK3XWM9UP9Uur3QwcIEh7UOJsbcHV/GCA2pocztGKpJ+Qbj1NDDs85jP6vqayp8IKzij+qpf9eIdaFMhQzBv4A1qjuYMJWIPIzyio5jRMavfvIBRK2fR1B9A40CYpuUlXF73bx0Wc5NsduMIsqCkmB5Z8oHADF0dnDgP31ricUmRLJoBbNqR5GVjPXkBgDJaPgiZw0iaYUjFGqguTJxy96Oxn9esOnczjzE23uRbXAzumQeFyYRwzIMdOLRK4wjk7ULBgxPji5ophKQhtQ0mdQQr6yNfYsv7N7dCtijMLEu1WrUBzGznjlHFeMCzPrM971t+TDjvn85fh+sm4RbCh2I3VlOYmvu7dJLitkMDbiI4dusUQIzHzWjz3qN+hOCprcqaeaPh8jXOHxi+UA0mmuGEagXgO7HbdQfEJE/FD7nQHyqVsmrxCeUx+RHKCgog6R4xw9X6Fq0QEIcPgKZTKsk4EbY1oiBrCuRdYxu7xvoSGOdS+IjIPt0OmzP1HXU/zPVY5w24wxUtsSHLyLRjgZmVv/hyoPG7xBV6YEqZWEuEWkWTJ3UYqmd3+S0tryjQ+59QA9Bw==
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:AM5EUR03HT014;
	H:DB6PR0502MB2917.eurprd05.prod.outlook.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: e1616425-044c-46f3-b730-08d4dfec6352
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322377)(1601125374)(1603101448)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095)(300000506095)(300135500095);
	SRVR:AM5EUR03HT014; 
x-ms-traffictypediagnostic: AM5EUR03HT014:
x-exchange-antispam-report-test: UriScan:(20558992708506)(5213294742642);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:AM5EUR03HT014; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:AM5EUR03HT014; 
x-forefront-prvs: 03950F25EC
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2017 12:36:13.6943 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM5EUR03HT014
X-Mailman-Approved-At: Mon, 14 Aug 2017 08:17:38 -0700
Subject: Debugging Yocto Project build failures
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
X-List-Received-Date: Sat, 12 Aug 2017 00:15:18 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_DB6PR0502MB291749533AFB89E8DE29AC75E0880DB6PR0502MB2917_"

--_000_DB6PR0502MB291749533AFB89E8DE29AC75E0880DB6PR0502MB2917_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,

I am trying to build a yocto project for a particular platform and get a co=
mpile error after about 45 minutes or so.

The error is reported as a do_compile error when trying to compile a source=
 file for jq-1.5-r0 (JSON stream filter as far as I know). It reports that =
the file main.c could not be found. I have checked the particular directory=
 an can see that it is in fact present.

My question is as follows.

Instead of running make to try and debug the problem (which takes ages to r=
each the point of error), is there a way to use do_compile to manually comp=
ile/build this one item?

I have tried running make in projects directory (where its Makefile is loca=
ted) but this does not work because perhaps it is first necessary to setup =
the build environment first.
It appears that it needs x86_64-poky-linux-gcc to do the compile and on sea=
rching for this file there are about 8 or 9 versions/copies of this file, n=
one of which are on the current path.

If this is the case how would I go about doing this?

I am running Ubuntu 16.04 from VirtualBox.

Regards
FarmerJo


--_000_DB6PR0502MB291749533AFB89E8DE29AC75E0880DB6PR0502MB2917_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri,Helvetica,sans-serif,&quot;EmojiFont&=
quot;,&quot;Apple Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmo=
ji,&quot;Segoe UI Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols;">
<p></p>
<div>
<p class=3D"MsoNormal">Hi,</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I am trying to build a yocto project for a particula=
r platform and get a compile error after about 45 minutes or so.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">The error is reported as a do_compile error when try=
ing to compile a source file for jq-1.5-r0 (JSON stream filter as far as I =
know). It reports that the file main.c could not be found. I have checked t=
he particular directory an can see
 that it is in fact present.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">My question is as follows.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Instead of running make to try and debug the problem=
 (which takes ages to reach the point of error), is there a way to use do_c=
ompile to manually compile/build this one item?</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I have tried running make in projects directory (whe=
re its Makefile is located) but this does not work because perhaps it is fi=
rst necessary to setup the build environment first.</p>
<p class=3D"MsoNormal">It appears that it needs x86_64-poky-linux-gcc to do=
 the compile and on searching for this file there are about 8 or 9 versions=
/copies of this file, none of which are on the current path.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">If this is the case how would I go about doing this?=
</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">I am running Ubuntu 16.04 from VirtualBox.</p>
<p class=3D"MsoNormal">&nbsp;</p>
<p class=3D"MsoNormal">Regards</p>
<p class=3D"MsoNormal">FarmerJo</p>
<p class=3D"MsoNormal">&nbsp;</p>
</div>
<p></p>
</div>
</body>
</html>

--_000_DB6PR0502MB291749533AFB89E8DE29AC75E0880DB6PR0502MB2917_--
