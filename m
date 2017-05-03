Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11B62E00961; Thu,  4 May 2017 23:19:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.64.46 listed in list.dnswl.org]
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
X-Greylist: delayed 64779 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 May 2017 23:19:34 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-oln040092064046.outbound.protection.outlook.com [40.92.64.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2984CE0094C
	for <yocto@yoctoproject.org>; Thu,  4 May 2017 23:19:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=NuU1HhsiD3H3aNDXKKe1gUoVvqY4q4HekC5DVnXN5ro=;
	b=avo69DAB/u8GoH70H6vZKBEW0wO4D67xcCNwDwdA0g4s7A1A8n8LdhY9e/azOAPuXiznXAnZ9g2W24cZAxCs4geM0goA779Tfykrn69iMPdzIh5jEM0GB+2u7oX/MmmzT9NKjeEY+q783tbmZgS8E5R5CrGsarGofE5Sv+5/Y77fqXcK6wQ7342d9k0o+vALIdol9j1qSmaINUrvqKe6IiyUBBORi5Z3fSfUaTPBTsGJv0FOmP6Y5rmYNkcLM5BAHo5pMC9V7PmVy8b9xYeaiPK7jo4tn8I5Zi6c7yTi9Y6KC03WNAJ12bmwUkhwo0OCiXKoJDDBVBOmHdmObIAAkw==
Received: from HE1EUR01FT051.eop-EUR01.prod.protection.outlook.com
	(10.152.0.55) by HE1EUR01HT131.eop-EUR01.prod.protection.outlook.com
	(10.152.1.50) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1047.9;
	Wed, 3 May 2017 18:50:23 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM (10.152.0.56) by
	HE1EUR01FT051.mail.protection.outlook.com (10.152.1.71) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1047.9 via Frontend Transport; Wed, 3 May 2017 18:50:23 +0000
Received: from LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) by
	LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM ([10.167.30.18]) with mapi id
	15.01.1075.010; Wed, 3 May 2017 18:50:23 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: Pre-compiling Python Byte Code
Thread-Index: AQHSxD1sMQbfP5daTUec5qNCJ/J3Ew==
Date: Wed, 3 May 2017 18:50:22 +0000
Message-ID: <LO1P123MB1412B63A58F68E849F150760DA160@LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:95B92FFA5AC189E68F5246877EF2271214637D28EF24E93A237DFFD1E2D49ADF;
	UpperCasedChecksum:C5C9A06B508F542423A102FC5D038D70C894BD378216DFD32608391081B2D145;
	SizeAsReceived:8007; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [sihzFu65E2mvkEF3NjYSJGtjkNVzRz4P]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; HE1EUR01HT131;
	5:KCu6emnZMrMFHz5UtpMFEBivyOGkUQQaxgkJLzrjvRTvTt20+NwUWyANUfOOCpP5poXwt+hqp2jpWXpqFEwtgoIHkyJLcZ3vR1UFA1CeGIySBlhlMHOyFCtd2BBE4Ru8FY9BTlaGjU4AQ14c1+ZxZQ==;
	24:6a3mywylIKCwdVgIZN4MghO6rhnWhZqrvQy2zmnjOxIixnndRa7w8Gv/rDmBd5tS2ONpFcG6A7D8YABd1F67s1ryinOIDLy5iDuXke88bS0=;
	7:wWN+eMxePj9xM/B5G1Okzd1NZdXVD5KPCyUXptIQpI9bBK1ZbO18CHrGWXHYa4QJiuVEm8UQ9UT7GIeJA8c6IGboiH9Xiy5U/WQc+1i9xKrjGe+ltlNTp2LbyrCukSMnDW4FY8BzDGiTsv16NvLN7KAR7gbtQfMh/QXFgdw1vsyIm1iqoUzcZ1sSn7cYgUSyeYF1KTmPe0p1bBRxaxTCirEk23xkU/bbfJUyRX6hih0K40IvUqsabugFIT7mOLBLxGn5Jcwj6lp5h2s+AcQUiv0AEktWemq69UncxzH243k0mESfX8bdvKvTlLy9vSPu
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:HE1EUR01HT131;
	H:LO1P123MB1412.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: ce9c1402-bc5e-47fc-875f-08d49255413b
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(201702181274)(2017031322274)(1601125374)(1603101448)(1701031045);
	SRVR:HE1EUR01HT131; 
x-ms-exchange-slblob-mailprops: ojNIc3U7IR0OvbnECQLL2127G+jMrdAXsRRSe7W0vQ2g5ULwi979bNuucXBtnzUfMD9TQlXVDHGaPj6bUkHO+9/drCE9VycrBQ8+rlDKtT/IBgp8ZovnQkresALP171DA9j5pCWYw5UNTfHsMUyuHoWngECTfo1nJxCKoeCdfs6KfGzlmey1er5gXUio+bLO0nFe4Clm9W8f0VaOl+mAulCTkmGlhbklWHSMKb3kCuF/vwp2ALVOwZhXJuou/nI9czxjkKYCDYd5VKlYRqF6F8NgOWjqCq+ofxr4wdNdIf0YSB+xY5/MUQYaMc7SQHTGAYYM13KkVRRzWvEVVQg1L0xkey3mOYYulQ1tjnuRauvZ6QykXLlQGPV9kVjPhi0ifXLQyE4IfRVAv5Pda2HjpILJe/lw+9XD/CTEn1VOm71ZvXodQ6nYLVgAyd7eKSxWQz9GWRHBMKDYf/GomuGU5BHuzOh088o2A0xTO0nEaim+cMUrVmOmDA7PLprtTHiTtjKUOGq+vi2/PnawtZUDm7f2niVUonAneRhKtp/EPf0nHoX9dmvUcAXguUlAL8AyNr4P3pLWqNTRCO3EM3toMwD4MZK0H+GQbu002aJOoaW8I5nsddN+DrzKRYQ3+4Hr
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:HE1EUR01HT131; BCL:0; PCL:0; RULEID:; SRVR:HE1EUR01HT131; 
x-forefront-prvs: 029651C7A1
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2017 18:50:22.8972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT131
Subject: Pre-compiling Python Byte Code
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
X-List-Received-Date: Fri, 05 May 2017 06:19:38 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_LO1P123MB1412B63A58F68E849F150760DA160LO1P123MB1412GBRP_"

--_000_LO1P123MB1412B63A58F68E849F150760DA160LO1P123MB1412GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

To improve startup speed I have decided to pre-compile python3 byte code in=
 my bb recipe.  This is done semi automatically with the rpm build for Fedo=
ra but I've not found anything similar for Yocto.


I initially tried to use compileall:


python3 -m compileall ${D}/opt/test_app/python


This almost worked but it uses the host python3 to failed with a slight dif=
ference in magic.


The following works, as it uses the native python3 compiled by bitbake but =
it feels a little contrived.  Is there a better way of specifying the nativ=
e python3 interpreter, or a better way of getting my python byte code compi=
led prior to generating the packages?


${STAGING_BINDIR_NATIVE}/python3-native/python3 -m compileall ${D}/opt/test=
_app/python

Cheers,

Chris


--_000_LO1P123MB1412B63A58F68E849F150760DA160LO1P123MB1412GBRP_
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
<p>To improve startup speed I have decided to pre-compile python3 byte code=
 in my bb&nbsp;recipe. &nbsp;This is done semi automatically with the rpm b=
uild for Fedora but I've not found anything similar for Yocto.</p>
<p><br>
</p>
<p>I initially tried to use compileall:</p>
<p><br>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, Emoji=
Font, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">python3 -m compileall ${D}/opt/test_app/python</span><br=
>
</p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, Emoji=
Font, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, Emoji=
Font, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">This almost worked but it uses the host python3 to faile=
d
 with a slight difference in magic.</span></p>
<p><br>
</p>
<p>The following works, as it uses the native&nbsp;python3 compiled by bitb=
ake but it feels a little contrived. &nbsp;Is there a better way of specify=
ing the native python3 interpreter, or a better way of getting my python by=
te code compiled prior to generating the packages?</p>
<p><br>
</p>
<p></p>
<div>${STAGING_BINDIR_NATIVE}/python3-native/python3 -m compileall ${D}/opt=
/test_app/python</div>
<div><br>
</div>
Cheers,
<p></p>
<div>Chris</div>
<div><br>
</div>
</div>
</body>
</html>

--_000_LO1P123MB1412B63A58F68E849F150760DA160LO1P123MB1412GBRP_--
