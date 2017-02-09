Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C819E00A3B; Thu,  9 Feb 2017 08:40:19 -0800 (PST)
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
	*      [65.55.34.76 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from COL004-OMC2S2.hotmail.com (col004-omc2s2.hotmail.com
	[65.55.34.76])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA8FEE0094C
	for <yocto@yoctoproject.org>; Thu,  9 Feb 2017 08:40:16 -0800 (PST)
Received: from EUR03-DB5-obe.outbound.protection.outlook.com ([65.55.34.71])
	by COL004-OMC2S2.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Thu, 9 Feb 2017 08:40:16 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=1DbjWxuYPNDECjSDcQ+g+zSR50Ed1RaSYy3gStK/h7c=;
	b=hEhEStF1Ggw4R966FyYTjUqWwBaV70tyUZAlPDDH/YCvE3sEdgFkwHGXJgrBVYraPIdxTi9F6Bxsyo8xklUsxLw9Ed3MEJMfZaidnABb6zrASv3Fnz/CD5ybPfi9abmOWXxPnqvn2JJeUfXcLDT30UFag81vmFNcnx/fjiUc2Zr9+MkKQB5S6bgbHrYXD0eOcH7RvSVPN1yKw+voZA/h4AqKhlMnKB00VOuhDpWhqmgms4TYvHCPaHQEzx8VunYdAs1UIXxRWgzdv6Ma8mTGP0yBZpleMhUG4gu8PsKpCi5CVJ86ZN1Vs5v5c4xTPS05y5TR4XN9B8IQHUjwSDzohw==
Received: from DB5EUR03FT052.eop-EUR03.prod.protection.outlook.com
	(10.152.20.57) by DB5EUR03HT053.eop-EUR03.prod.protection.outlook.com
	(10.152.21.238) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.888.7;
	Thu, 9 Feb 2017 16:40:13 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com (10.152.20.55) by
	DB5EUR03FT052.mail.protection.outlook.com (10.152.21.82) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.7 via Frontend Transport; Thu, 9 Feb 2017 16:40:13 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.241])
	by AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.241])
	with mapi id 15.01.0888.026; Thu, 9 Feb 2017 16:40:13 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][bitbake] Custom LIC_FILES_CHKSUM location
Thread-Index: AQHSgvL4FLG4WGXnVk+QymJ6oA3QAg==
Date: Thu, 9 Feb 2017 16:40:12 +0000
Message-ID: <AMSPR01MB184EE0F28D568C71146B57392450@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:C45D1D4D9A1D857E0B8CE35B57A2AC1B9EB8237CDD0A78927574E8F080BB5F35;
	UpperCasedChecksum:29C527756A0FA390E26EFF3758ED17E9820714921DEBF219CA77A5DB17746FD2;
	SizeAsReceived:7627; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hcwxBID09efGSBLEDQnvw/tUJcLVz5B+]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; DB5EUR03HT053;
	5:fDrLGG48B8F/uXv9aV8mv/pXse7HRgxlmUWxBDK5WGZ4A/Kx3UiX8pM65Up39AnUfeqdng0yE7FWm+hPzPz7n1EXqTHwQB05NfFPh1EZ3F4gvoM0sjCBeNLDakJBtzb81dgrpU3VNtFl8SrEDGCXvg==;
	24:rOZbK+zbkdSt8dVwQ6ktxyasOhhlD+5QqiyH4OMOWDSoT6ds5321mAeRc+Wwxzjp980LCSTXke1eDVzzBdv60DjETDcwQT0r10zfx/l9OT0=;
	7:rQUt8JDVC8TYn4jJREJMl9Rlsw8FJ+IdgvQwKCS7h27pyYW/Bw5tcST7/CQZ+vwO8n/MyDgOld2eG7jnE2uYo/ALta7qREqIGWXnvkgBfu9MLHHcjbM+YKNCufvQtxtEql5BjBBePc2YaNXUdS+el7Xx+HJjyMcKqWma4FoB0fSyF23xHtRYH7hBk/l8mWiIvA9qAuHLuuNM91g2NZHwyU3gSQv2xL1he0uZVD15jez9bAhdUlkHMgptOPfZDAoN8U/WV0b3YP6I0Ql5nmH9lPhMmgvoo+F3hC+VLe2m4Iuy2DbJCG7L2cIXO550Bo+Mv02ZrZqEhffioFdH+07pE9aCRm4p3JzJffZj1O994py2o2/U1a7DHPz1SOswgYg2ZR0/70agRnFNf5QkfS0ctrsfBlWX0v7kUWcQ5krt/ao91U9n/SdJFIAHSWibSNeEkGHt6oyWkA/tC9m9RXOP5tX7JhDHKqKbFM8utrCfRXtxOx1Fq3RBzdToclMXLpiW801ju0V7WZ19WY9DQ4uEUA==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900006);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB5EUR03HT053;
	H:AMSPR01MB184.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: d60dda69-6b1b-434c-aa6f-08d4510a51e8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(5061506426)(5061507331)(1603103135)(1601125107)(1701031045);
	SRVR:DB5EUR03HT053; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015086)(82015046);
	SRVR:DB5EUR03HT053; BCL:0; PCL:0; RULEID:; SRVR:DB5EUR03HT053; 
x-forefront-prvs: 02135EB356
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Feb 2017 16:40:12.9087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5EUR03HT053
X-OriginalArrivalTime: 09 Feb 2017 16:40:16.0428 (UTC)
	FILETIME=[316126C0:01D282F3]
Subject: [bitbake] Custom LIC_FILES_CHKSUM location
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
X-List-Received-Date: Thu, 09 Feb 2017 16:40:19 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMSPR01MB184EE0F28D568C71146B57392450AMSPR01MB184eurprd_"

--_000_AMSPR01MB184EE0F28D568C71146B57392450AMSPR01MB184eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I need to integrate a custom licence file in the recipes we're creating.


Basically, the layer strcutureis:



meta-mylayer

     + recipes-connectivity /

         + bootscripts /

                 + bootscript_0-1.bb

     + recipes-qt

     ...

    MYLICENSE.TXT




In bootscript_0-1.bb:

I've added:

LIC_FILES_CHKSUM =3D "file://LICENSE.PGA;md5=3D149a23532762ef4f5c3a1ad0d021=
249c"


But of course, it does not find the file.

What variable should I use so that the file points to valid location ?


Best Regards,

Z.


--_000_AMSPR01MB184EE0F28D568C71146B57392450AMSPR01MB184eurprd_
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
<p>I need to integrate a custom licence file in the recipes we're creating.=
</p>
<p><br>
</p>
<p>Basically, the layer strcutureis:</p>
<p><br>
</p>
<p><br>
</p>
<p>meta-mylayer</p>
<p>&nbsp; &nbsp; &nbsp;&#43; recipes-connectivity /</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&#43; bootscripts /&nbsp;</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&#43; boot=
script_0-1.bb</p>
<p>&nbsp; &nbsp; &nbsp;&#43; recipes-qt</p>
<p>&nbsp; &nbsp; &nbsp;...</p>
<p>&nbsp; &nbsp; MYLICENSE.TXT</p>
<p><br>
</p>
<p><br>
</p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">In bootscript_0-1.bb:</span><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">I've added:&nbsp;</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span>LIC_FILES_CHKSUM =3D &quot;file://LICENSE.PGA;md5=3D149a23532=
762ef4f5c3a1ad0d021249c&quot;</span><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span>But of course, it does not find the file.</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span>What variable&nbsp;should I use so that the file points to va=
lid
 location ?</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span>Best&nbsp;Regards,</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span>Z.</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><br>
</span></p>
</div>
</body>
</html>

--_000_AMSPR01MB184EE0F28D568C71146B57392450AMSPR01MB184eurprd_--
