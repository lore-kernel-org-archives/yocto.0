Return-Path: <karim_atiki@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E93E0083C; Tue,  7 Feb 2017 03:06:34 -0800 (PST)
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
	*      [65.55.34.22 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 07 Feb 2017 03:06:32 PST
Received: from COL004-OMC1S12.hotmail.com (col004-omc1s12.hotmail.com
	[65.55.34.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB629E0082E
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2017 03:06:32 -0800 (PST)
Received: from EUR01-HE1-obe.outbound.protection.outlook.com ([65.55.34.7]) by
	COL004-OMC1S12.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 7 Feb 2017 03:05:31 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=Vw0kpYc/n4idJ/+E1hUjoKvpgiMz91uOhhxzOhkn/lE=;
	b=BiMfBT0XOAFePA1le8eGHVnaVLHor+QfDHCD8JgG0CFPGwWRKhh3C1oynVL+dad8MTUZWJvyCEG5S8fx+Tt7Y/SKB91HvDlIWwJ2H739pnxcG8GBtrGthqOng0D/zRtHmN6NjiJWHv9xIWiHBASxPd7s+utdrfHwghol3uo0l2QmYZ8HSfJK3DM2TO55aqVjKIDqsmR1CD6I7Kti2OVg6DCaRjxy0JBBUiU4YJb1Ihmh1L7MCoKxRPm2uVAJuONOcGeSALFaDYWkNx1n6sXsobMGfuhHHnWNFQHCwHCl+45KlJQTFqNF6trd/NIwvzBRgttZZYXLdh4ki8JfORWlZA==
Received: from VE1EUR01FT045.eop-EUR01.prod.protection.outlook.com
	(10.152.2.54) by VE1EUR01HT151.eop-EUR01.prod.protection.outlook.com
	(10.152.3.91) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.888.7;
	Tue, 7 Feb 2017 11:05:30 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com (10.152.2.54) by
	VE1EUR01FT045.mail.protection.outlook.com (10.152.3.125) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.888.7 via Frontend Transport; Tue, 7 Feb 2017 11:05:30 +0000
Received: from AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.241])
	by AMSPR01MB184.eurprd01.prod.exchangelabs.com ([169.254.10.241])
	with mapi id 15.01.0888.025; Tue, 7 Feb 2017 11:05:29 +0000
From: Karim ATIKI <karim_atiki@hotmail.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: [yocto][dora] Compiling Qt 5.7 without meta-qt5
Thread-Index: AQHSgTEd3z7QSjRHkUOVLDRwKSvVgQ==
Date: Tue, 7 Feb 2017 11:05:29 +0000
Message-ID: <AMSPR01MB184F3B10715A0857C3D716992430@AMSPR01MB184.eurprd01.prod.exchangelabs.com>
Accept-Language: fr-FR, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:E876A0D1003A38D87B5B8B5C534AE2A12C74388270E5842C7C30E8D20ADEC21A;
	UpperCasedChecksum:4E10A179199736DEC57063732EA949AC75CAAB3CC87402B9669CCA2451C8EF6B;
	SizeAsReceived:7634; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [tjVIdb1zDAXmbDLWkhk5i/6DLi05WmM/]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR01HT151;
	5:nICrDbu9dNuo85VpvIHOa0u5d+0DKim0gz7W2gPbwsJuPJRABFLfkHam5SRUwz1iwWLw+ITDlvx898EEn/Hv4UN/52kGRC6patc6R4Vdlt7nCKZCNnThf6gTyywlyUawAQys/e6/mn2kO7K3ubigxwOgjRQL9d/rKi6rCOFUkvI=;
	24:9VILxwOlD3W+2oS8TY7i6XEZdV+XdQBwvu9HxcoaG/zp5Zw15w+YaXjd0yNeu5MaVGoZW/yhNkILZ28JLSkDFNCCUQ2iUg1Z5KjyODXj5Tw=;
	7:sov/ugYdHzHXdTAuRBDkYX4OH2sAXco5x+odhZdQf9hvfUMjGcCY8oWs/N6flaV63IQSeOtzoaL5rMVMKzpRcN5PUWHgie9/gLRdasjpKSDG8N+bWB8Fk8AHiNmPrFyA0io+/qxTHprvDj8dRmYpechcudhKUJnFLMv+NoRW6Xvm8phYZLvG/+3fQip8RqM6UZ9zxjktSKmuSmSdPoZMSxtLZmlWgaW0wzvdf6BbofTT8ijsy1IyGkt0an3QC+c1w5hnODdZc18Gp4NCSXyph/T+B/hIVi+CnBV2cJIficC1Twlckc1YRHbvOsCJ3ylNHdyhTteZTTHUFgjq5mAH3n6r9kZ8fO6jeoGK6P98lZ9NX0tpGDRuUTizIUOZXrvwp7eK+HXN6TSnY1MoP2yg7BYZBRk35+IRDQmQBOYcJCzKL4Wk1dTbOh1POhx5ziTTkIfobZkbZOFtbRqR+JeBklNgPSRxvf9Hs0ObtWAiGwUIO55MKzQObFQsJZrSnuYx3pPXqO0mgV+ome+6v7FSZw==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900005);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR01HT151;
	H:AMSPR01MB184.eurprd01.prod.exchangelabs.com; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 683feda9-54ba-4707-4a97-08d44f493a77
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(5061506426)(5061507331)(1603103135)(1601125107)(1701031045);
	SRVR:VE1EUR01HT151; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(444111334)(432015086)(82015046); SRVR:VE1EUR01HT151;
	BCL:0; PCL:0; RULEID:; SRVR:VE1EUR01HT151; 
x-forefront-prvs: 0211965D06
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Feb 2017 11:05:29.6215 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT151
X-OriginalArrivalTime: 07 Feb 2017 11:05:31.0772 (UTC)
	FILETIME=[192A5BC0:01D28132]
Subject: [dora] Compiling Qt 5.7 without meta-qt5
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
X-List-Received-Date: Tue, 07 Feb 2017 11:06:34 -0000
Content-Language: fr-FR
Content-Type: multipart/alternative;
	boundary="_000_AMSPR01MB184F3B10715A0857C3D716992430AMSPR01MB184eurprd_"

--_000_AMSPR01MB184F3B10715A0857C3D716992430AMSPR01MB184eurprd_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I'm trying to create/integrate a recipe that builds Qt5.7 on a Architech Ha=
chiko  (ARM) board.


This board is uniquely compatible with Poky DORA (for technical reasons, I =
don't have the choice).


Using meta-qt5 is excluded.


Actually? I succeeded to build qt5.7 with the Poky SDK and I would like to =
create a recipe that will call the "configure" and the "make / make install=
".


The command line looks like:


./configure -v -prefix /usr/local/qt5 -extprefix /opt/qt5-hachiko -device l=
inux-arm-hachiko-g++ -device-option CROSS_COMPILE=3D/opt/poky/hachiko64/1.5=
.4/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-li=
nux-gnueabi- -sysroot /opt/poky/hachiko64/1.5.4/sysroots/cortexa9hf-vfp-neo=
n-poky-linux-gnueabi -release -shared -no-opengl -no-gstreamer -no-sql-sqli=
te -no-sql-sqlite2 -qt-zlib -no-gif -no-accessibility -qt-libpng -qt-libjpe=
g  -qt-xcb -device-option QMAKE_LFLAGS=3D-O1 -opensource -confirm-license -=
nomake examples -nomake tests -skip qt3d -skip qtwebengine -skip qtcanvas3d=
 -no-icu -skip qtvirtualkeyboard


But in a Yocto recipe, which variable should I use for the following option=
s:


 CROSS_COMPILE=3D/opt/poky/hachiko64/1.5.4/sysroots/x86_64-pokysdk-linux/us=
r/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-


-sysroot /opt/poky/hachiko64/1.5.4/sysroots/cortexa9hf-vfp-neon-poky-linux-=
gnueabi



Currently, the values points to the Poky SDK generated by Yocto.


Thanks.


Z.


--_000_AMSPR01MB184F3B10715A0857C3D716992430AMSPR01MB184eurprd_
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
<p>I'm trying to create/integrate a recipe that builds Qt5.7 on a Architech=
 Hachiko &nbsp;(ARM) board.</p>
<p><br>
</p>
<p>This board is uniquely compatible with Poky DORA (for technical reasons,=
 I don't have the choice).</p>
<p><br>
</p>
<p>Using meta-qt5 is excluded.</p>
<p><br>
</p>
<p>Actually? I succeeded to build qt5.7 with the Poky SDK and I would like =
to create a recipe that will call the &quot;configure&quot; and the &quot;m=
ake / make install&quot;.</p>
<p><br>
</p>
<p>The command line looks like:</p>
<p><br>
</p>
<p><span>./configure -v -prefix /usr/local/qt5 -extprefix /opt/qt5-hachiko =
-device linux-arm-hachiko-g&#43;&#43; -device-option CROSS_COMPILE=3D/opt/p=
oky/hachiko64/1.5.4/sysroots/x86_64-pokysdk-linux/usr/bin/arm-poky-linux-gn=
ueabi/arm-poky-linux-gnueabi- -sysroot /opt/poky/hachiko64/1.5.4/sysroots/c=
ortexa9hf-vfp-neon-poky-linux-gnueabi
 -release -shared -no-opengl -no-gstreamer -no-sql-sqlite -no-sql-sqlite2 -=
qt-zlib -no-gif -no-accessibility -qt-libpng -qt-libjpeg &nbsp;-qt-xcb -dev=
ice-option QMAKE_LFLAGS=3D-O1 -opensource -confirm-license -nomake examples=
 -nomake tests -skip qt3d -skip qtwebengine
 -skip qtcanvas3d -no-icu -skip qtvirtualkeyboard</span></p>
<p><span><br>
</span></p>
<p><span>But in a Yocto recipe, which variable should I use for the followi=
ng options:</span></p>
<p><span><br>
</span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;">&nbsp;CROSS_COMPILE=3D/opt/poky/hachiko64/1.5.4/sysroots/x86_=
64-pokysdk-linux/usr/bin/arm-poky-linux-gnueabi/arm-poky-linux-gnueabi-</sp=
an><br>
</span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><br>
</span></span></p>
<p><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif,=
 &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji,=
 &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font=
-size: 16px;"><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">-sysroot
 /opt/poky/hachiko64/1.5.4/sysroots/cortexa9hf-vfp-neon-poky-linux-gnueabi&=
nbsp;</span><br>
</span></span></p>
<p><span><br>
</span></p>
<p><span><br>
</span></p>
<p><span>Currently, the values points to the Poky&nbsp;SDK generated by Yoc=
to.</span></p>
<p><span><br>
</span></p>
<p><span>Thanks.</span></p>
<p><span><br>
</span></p>
<p><span>Z.</span></p>
<p><span><br>
</span></p>
</div>
</body>
</html>

--_000_AMSPR01MB184F3B10715A0857C3D716992430AMSPR01MB184eurprd_--
