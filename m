Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A85F9E00CD9; Mon,  9 Jul 2018 11:41:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.5.93 listed in list.dnswl.org]
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
X-Greylist: delayed 93172 seconds by postgrey-1.32 at yocto-www;
	Mon, 09 Jul 2018 11:40:59 PDT
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092005093.outbound.protection.outlook.com [40.92.5.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49618E00812
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 11:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=sPfXbps7p9hEZD0ztBd9jGBWZITRQnW/S+1UuFmAhl8=;
	b=N4upR7Cos6exJHvBBm6hY4W9EP1eq1n1NDWbXNZppKTcHQqNVAt5H0Ra3J1F8o5O7/2jv+C26y3iOgAaaISpt9w+8a/6/1qqTtAWfGSwPmA7zV0EjObtlMRbRMzddN+ozeRim0Vq2eImDN81XG92L0YOy/FFSiUdjRCcMZ4Az33D2inmUO2EZjJraomaIl160K8Z8nJ8Fgs8UQCCX1JfmBFgBUQis16u4Y5r2247t22Eg8XlryjYf52Ww0FnnSBblO4WDWuAnqo+oA1Pn13lWlYdnPkHMViZjkQOqAAr/ukQJKc1oRs6IYa/Ll/k1wj6oKALtADY37IQfPvVviluDQ==
Received: from BL2NAM02FT045.eop-nam02.prod.protection.outlook.com
	(10.152.76.59) by BL2NAM02HT108.eop-nam02.prod.protection.outlook.com
	(10.152.77.128) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.906.15;
	Mon, 9 Jul 2018 18:08:32 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.76.57) by
	BL2NAM02FT045.mail.protection.outlook.com (10.152.77.16) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.906.15 via Frontend Transport; Mon, 9 Jul 2018 18:08:32 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::641a:8a85:b9d5:1bcd%4]) with mapi id 15.20.0930.022;
	Mon, 9 Jul 2018 18:08:32 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Thread-Topic: [yocto] How to remove openssl from sysroots
Thread-Index: AQHUFXWajXIcjzfwuUSyRHt2ANT94aSEXDwAgAB9+OmAACAWAIABEGcagAAC6CKAAOpwgIAAPBg8
Date: Mon, 9 Jul 2018 18:08:32 +0000
Message-ID: <MWHPR19MB11839AC75D87A6A0C38FE263C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11832EE45DE3D590BC782414C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZDtCuKvvG7D9qfFQVAfSFd2xvOZiWMgdiiz1QriNYHTg@mail.gmail.com>
	<MWHPR19MB11839E1E2C80F4549861D246C5450@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAJTo0LZsUwJYTyC5dtk_aO0S3nEVhdcHboxnGTfYmi7JMenfZA@mail.gmail.com>
	<MWHPR19MB118360BDB9585099B356D139C5440@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183FD76EDEDD528BE5EFFCCC5440@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<CANNYZj-_YFCV7D+aY8kswVzs1Z0-Wjej7LDQiL0qvEiF9mnnSQ@mail.gmail.com>
In-Reply-To: <CANNYZj-_YFCV7D+aY8kswVzs1Z0-Wjej7LDQiL0qvEiF9mnnSQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:4C766D1227D93B82EE1C183C630CC323773B53D81E3809C3CBBA9BF41E45552C;
	UpperCasedChecksum:8BB8C59FA1938E8093EA7C9CF492B02A59BDAA5C7927B6660DB02268D5D24A66;
	SizeAsReceived:7798; Count:47
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [T36gy+GVusl2NgLGSQmD2R3Rs5vFNnI+]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; BL2NAM02HT108;
	7:8AeT08M0UdYPU5t7jVdmfGWWzd+rFKv/9E/hs0uFvWWe76wvS2w3e3vzD28/1XdOouLNjpF6NJNLMluz4BrITyDrOGiNEpV3knJ3tPRPv3YdKfXk+eJTAeD23/sx7PryFgHdVoccD9/GMnj4Pz2PnK35GIc1+3Uh4edi6A9Lx4NCFlnlOkOcMhEWIOXbLJ0okuwYxZmApyFeGTzVqIheVooQ6gZJC+nUSyBeqWZzoiNaJXmTpnQ5obzv7pAvqGZu
x-incomingheadercount: 47
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125500)(1603101448)(1701031045);
	SRVR:BL2NAM02HT108; 
x-ms-traffictypediagnostic: BL2NAM02HT108:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(82015058);
	SRVR:BL2NAM02HT108; BCL:0; PCL:0; RULEID:; SRVR:BL2NAM02HT108; 
x-forefront-prvs: 07283408BE
x-forefront-antispam-report: SFV:NSPM;
	SFS:(7070007)(199004)(189003)(86362001)(97736004)(446003)(11346002)(99286004)(6346003)(93886005)(14444005)(256004)(7696005)(26005)(54896002)(105586002)(9686003)(8936002)(73972006)(102836004)(6506007)(106356001)(53546011)(104016004)(54906003)(2900100001)(476003)(486006)(83332001)(76176011)(82202002)(25786009)(74316002)(19627405001)(8676002)(229853002)(39060400002)(87572001)(20460500001)(81156014)(45080400002)(4326008)(68736007)(33656002)(5660300001)(14454004)(5250100002)(6246003)(55016002)(6606003)(6916009)(6436002)(236005)(15852004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:BL2NAM02HT108;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; A:1; MX:1; LANG:; 
received-spf: None (protection.outlook.com: hotmail.com does not designate
	permitted sender hosts)
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=rksyeung@hotmail.com; 
x-microsoft-antispam-message-info: VX2gWirCISj11a7++edj2aqq2lCPacu2NQBOViybriVruJrV5+wtfp6ob7hMJO0xredDVij6I8gsVGMYk2l3oBVvWlxIJe5xPqSiupElQgv7cr64b+SuJYCoaDITdy1i9WZrJ5neRxlQiHLzaezt7Zm94ZjlhcIFFnMeuiEoT1MPI/w3VS1tNt7xx2q3qt9X7+5mQCtYQWGSpQQRSVkXAGCrVFUg65jHtiJpBbKM/kc=
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d39ddab-296f-4dcf-949a-08d5e5c6fb1e
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jul 2018 18:08:32.0972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL2NAM02HT108
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to remove openssl from sysroots
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
X-List-Received-Date: Mon, 09 Jul 2018 18:41:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB11839AC75D87A6A0C38FE263C5440MWHPR19MB1183namp_"

--_000_MWHPR19MB11839AC75D87A6A0C38FE263C5440MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

You may have missed one of my emails (still included here below) w.r.t. whe=
re the issue came from.  It's coming from application code outside of Yocto=
 that is built as 32-bit apps, while Poky/BSP are built in 64-bit.


________________________________
From: Alexander Kanavin <alex.kanavin@gmail.com>
Sent: Monday, July 9, 2018 7:31 AM
To: Raymond Yeung
Cc: Burton, Ross; yocto@yoctoproject.org
Subject: Re: [yocto] How to remove openssl from sysroots

Just fix the build issue. Look into how opensslconf.h gets created and wher=
e the -32 suffix comes from and why the included file is absent.

Seriously - that is less effort than trying to make Yocto do what it really=
 was not designed for, and certainly takes less than one week to resolve.

Also, you do not have to use core-image-minimal or -sato, or any of the sta=
ndard images, if they pull in things that you do not want. Write your own i=
mage recipe, and specify there precisely what you want.

Alex

2018-07-09 2:32 GMT+02:00 Raymond Yeung <rksyeung@hotmail.com<mailto:rksyeu=
ng@hotmail.com>>:


+ yocto mailing list.

________________________________
From: Raymond Yeung <rksyeung@hotmail.com<mailto:rksyeung@hotmail.com>>
Sent: Sunday, July 8, 2018 5:31 PM
To: Burton, Ross
Subject: Re: [yocto] How to remove openssl from sysroots


We're not going to integrate everything into one homogeneous package.  Poky=
 and BSP would be together.  Then, we've application codes that we'd build =
in the same old way with SCONs the way we do before.  The two parts would l=
ink together.


And we do have a number of 3rd party vendor packages beside openssl.  Curre=
ntly, the issue with openssl is that, we run into build issue with the vers=
ion we got in 2016 release.  See this:




In file included from /volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/core=
i7-64-poky-linux/usr/include/openssl/evp.h:66:0,

                 from src/infra/utils/obf/cv_obfuscate.c:20:

/volume/tools/x86_64_linux.x86_64/2.1.3/sysroots/corei7-64-poky-linux/usr/i=
nclude/openssl/opensslconf.h:41:36: fatal error: openssl/opensslconf-32.h: =
No such file or directory

We plan to use 64-bit kernel, and 32-bit applications.  Perhaps that explai=
ns the issue above.  We don't want to spend a lot of effort doing porting s=
imply because we adopt Yocto.  So ideally, if we could remove what's in Yoc=
to, we could integrate our apps with our own openssl; no changes, including=
 upgrade, would be needed.  We'd upgrade when we're ready.

Another question from my team is why the "minimal" package includes connect=
ivity, which includes openssl?

Raymond




--_000_MWHPR19MB11839AC75D87A6A0C38FE263C5440MWHPR19MB1183namp_
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
<p style=3D"margin-top:0;margin-bottom:0">You may have missed one of my ema=
ils (still included here below) w.r.t. where the issue came from. &nbsp;It'=
s coming from application code outside of Yocto that is built as 32-bit app=
s, while Poky/BSP are built in 64-bit.&nbsp;</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Alexander Kanavin &lt=
;alex.kanavin@gmail.com&gt;<br>
<b>Sent:</b> Monday, July 9, 2018 7:31 AM<br>
<b>To:</b> Raymond Yeung<br>
<b>Cc:</b> Burton, Ross; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</font>
<div>&nbsp;</div>
</div>
<meta content=3D"text/html; charset=3Dutf-8">
<div>
<div dir=3D"ltr">
<div>Just fix the build issue. Look into how opensslconf.h gets created and=
 where the -32 suffix comes from and why the included file is absent.<br>
</div>
<div><br>
</div>
<div>Seriously - that is less effort than trying to make Yocto do what it r=
eally was not designed for, and certainly takes less than one week to resol=
ve.</div>
<div><br>
</div>
<div>Also, you do not have to use core-image-minimal or -sato, or any of th=
e standard images, if they pull in things that you do not want. Write your =
own image recipe, and specify there precisely what you want.</div>
<div><br>
</div>
<div>Alex<br>
</div>
</div>
<div class=3D"x_gmail_extra"><br>
<div class=3D"x_gmail_quote">2018-07-09 2:32 GMT&#43;02:00 Raymond Yeung <s=
pan dir=3D"ltr">
&lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_blank" id=3D"LPlnk23=
75" class=3D"OWAAutoLink" previewremoved=3D"true">rksyeung@hotmail.com</a>&=
gt;</span>:<br>
<blockquote class=3D"x_gmail_quote" style=3D"margin:0 0 0 .8ex; border-left=
:1px #ccc solid; padding-left:1ex">
<div dir=3D"ltr">
<div id=3D"x_m_-4509669163777372016divtagdefaultwrapper" dir=3D"ltr" style=
=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-serif=
">
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
&#43; yocto mailing list.<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block; width:98%">
<div id=3D"x_m_-4509669163777372016divRplyFwdMsg" dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>From:</=
b> Raymond Yeung &lt;<a href=3D"mailto:rksyeung@hotmail.com" target=3D"_bla=
nk" id=3D"LPlnk147870" class=3D"OWAAutoLink" previewremoved=3D"true">rksyeu=
ng@hotmail.com</a>&gt;<br>
<b>Sent:</b> Sunday, July 8, 2018 5:31 PM<br>
<b>To:</b> Burton, Ross<span class=3D""><br>
<b>Subject:</b> Re: [yocto] How to remove openssl from sysroots</span></fon=
t>
<div>&nbsp;</div>
</div>
<div dir=3D"ltr">
<div id=3D"x_m_-4509669163777372016x_divtagdefaultwrapper" dir=3D"ltr" styl=
e=3D"font-size:12pt; color:#000000; font-family:Calibri,Helvetica,sans-seri=
f">
<p style=3D"margin-top:0; margin-bottom:0">We're not going to integrate eve=
rything into one homogeneous package.&nbsp; Poky and BSP would be together.=
&nbsp; Then, we've application codes that we'd build in the same old way wi=
th SCONs the way we do before.&nbsp; The two parts
 would link together.</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">And we do have a number of 3rd p=
arty vendor packages beside openssl.&nbsp; Currently, the issue with openss=
l is that, we run into build issue with the version we got in 2016 release.=
&nbsp; See this:</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"x_m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.=
0001pt 0.5in; font-size:11pt; font-family:Calibri,sans-serif">
&nbsp;</p>
</div>
</div>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"x_m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.=
0001pt 0.5in; font-size:11pt; font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier"><span style=3D"margin:0px!important; pa=
dding:0px!important; float:inherit!important; font-family:inherit!important=
; font-size:inherit!important; font-style:inherit!important; line-height:in=
herit!important">In file included from
 /volume/tools/x86_64_linux.<wbr>x86_64/2.1.3/sysroots/corei7-<wbr>64-poky-=
linux/usr/include/<span style=3D"background-color:rgb(255,238,148)!importan=
t; margin:0px!important; padding:0px!important; float:inherit!important; fo=
nt-family:inherit!important; font-size:inherit!important; font-style:inheri=
t!important; line-height:inherit!important">open<wbr>ssl</span>/evp.h:66:0,=
</span></span></p>
</div>
</div>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"x_m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.=
0001pt 0.5in; font-size:11pt; font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp;from src/infra/utils/obf/cv_<wbr>obfuscate.c:20:</sp=
an></p>
</div>
</div>
<div>
<div style=3D"margin-left:0.5in">
<p class=3D"x_m_-4509669163777372016x_MsoNormal" style=3D"margin:0in 0in 0.=
0001pt 0.5in; font-size:11pt; font-family:Calibri,sans-serif">
<span style=3D"font-family:Courier"><span style=3D"margin:0px!important; pa=
dding:0px!important; float:inherit!important; font-family:inherit!important=
; font-size:inherit!important; font-style:inherit!important; line-height:in=
herit!important">/volume/tools/x86_64_linux.<wbr>x86_64/2.1.3/sysroots/core=
i7-<wbr>64-poky-linux/usr/include/<span style=3D"background-color:rgb(255,2=
38,148)!important; margin:0px!important; padding:0px!important; float:inher=
it!important; font-family:inherit!important; font-size:inherit!important; f=
ont-style:inherit!important; line-height:inherit!important">open<wbr>ssl</s=
pan>/<span style=3D"background-color:rgb(255,238,148)!important; margin:0px=
!important; padding:0px!important; float:inherit!important; font-family:inh=
erit!important; font-size:inherit!important; font-style:inherit!important; =
line-height:inherit!important">openssl</span>conf.h:41:36:
 fatal error:&nbsp;<span style=3D"background-color:rgb(255,238,148)!importa=
nt; margin:0px!important; padding:0px!important; float:inherit!important; f=
ont-family:inherit!important; font-size:inherit!important; font-style:inher=
it!important; line-height:inherit!important">openssl</span>/<span style=3D"=
background-color:rgb(255,238,148)!important; margin:0px!important; padding:=
0px!important; float:inherit!important; font-family:inherit!important; font=
-size:inherit!important; font-style:inherit!important; line-height:inherit!=
important">openssl</span>conf-32.<wbr>h:
 No such file or directory</span></span></p>
</div>
</div>
<div><br>
</div>
We plan to use 64-bit kernel, and 32-bit applications.&nbsp; Perhaps that e=
xplains the issue above.&nbsp; We don't want to spend a lot of effort doing=
 porting simply because we adopt Yocto.&nbsp; So ideally, if we could remov=
e what's in Yocto, we could integrate our apps
 with our own openssl; no changes, including upgrade, would be needed.&nbsp=
; We'd upgrade when we're ready.
<div><br>
</div>
<div>Another question from my team is why the &quot;minimal&quot; package i=
ncludes connectivity, which includes openssl?<br>
<div><br>
</div>
<div>Raymond</div>
</div>
</div>
</div>
</div>
</div>
</div>
<br>
<br>
</blockquote>
</div>
<br>
</div>
</div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB11839AC75D87A6A0C38FE263C5440MWHPR19MB1183namp_--
