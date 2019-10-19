Return-Path: <abhiarora4@live.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 056DFE00D8B; Sat, 19 Oct 2019 09:32:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_SPF_HELO,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (abhiarora4[at]live.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.92.255.95 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid *  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
Received: from APC01-HK2-obe.outbound.protection.outlook.com
	(mail-oln040092255095.outbound.protection.outlook.com [40.92.255.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E14EE009C2
	for <yocto@yoctoproject.org>; Sat, 19 Oct 2019 09:32:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
	b=bRf/lyRN4N/rl43UJ8GnMM7sX3Tpzto/6HBIAC8aCT/pE10u3ATl3IsogXqIomjfjOWFkWCZg+3KTbLHboZ+vfbgDxtkzfGOk9GhOCtLzasi8ZnR2g0Xwv+Wm1zSyhzKyH0BxXgzq91so2WCMUayXyOKBpV/y3Tcn8DYCKzzHrenAScv0sIdY3H8F7GGjRbQFFAbSPeKdxjl18ZEOO0NiIT8bxoXt4JhEf0OHtC4J+EroEzTja6t49tcsYNno1E9ToECF3mIJ/4BBYKAe1ku+2igWvoVOOpnmAZHy9zUj19XdYUecFMduvmtDHR94JHe6n6WFZdc4c6xbLLdhe5sKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
	s=arcselector9901;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KtMHbQTl6HL7EAyS1VIwzgBFE+PW/FvLUMLeHqDoSv8=;
	b=BR+NAKbI4OXAA8d7cUI6PQx0fpa6v1WECWBbS4bT/K5s8xPD6hKpP4f0JP7rLD4gBNAlmNXEP5mxQh10gKIyMoF3v+iPzbZ1Ox0arz/393W/PUD7etBcXzY61ECdHKNoHrVVPd3MGtTqYjDctK+cdDzBBXAU+tS5PLx0gGsQOBBl2ylm0KxuJ3kejKQEI4OCZrr7yJ9JErgf/SCBM6Hw4WjA+1Nwfl362yfHIUT/1CsKVpyhxqEPOb/LJsmBb/c4ATu+yXJYL95o/5zhpbysVCyQWhMV/0OQI01AFYzr+himIB+swh4LDFD8b3K/gZuJkxub7reFx0VEOXpHtWFXzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
	dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=live.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=KtMHbQTl6HL7EAyS1VIwzgBFE+PW/FvLUMLeHqDoSv8=;
	b=OHd3RORArv2CiyBYTy28jhNVFB6oBtGHI2yLakaHPSAflwtbyhq457U+CoZpBgrWszS0/9zBwv3KiOGkT7mbQ6sDQsYqqx7kbSXAwlsYHRWrB/kaNA5DxUdpSxeftH9dXvTHSwmd5x3xG6QDwyX/71NdsyXMEKNUO2rkihal2cuBoRSk7P8oet1bWXUQLDosyA6ySzU2SD8Dvl+Q5wsCpztvajEUNhu9io4MXxO31mx5loqgvdhxywUnCxvRU41RT4iyQSFEYfJ6pkFyhGCkQt01H6/PKn9t27tIDXx6hwTlXBguM+SOzwIfUEmcTQ+y6NeTaz7K5bJ1G3AAYLdwtA==
Received: from SG2APC01FT059.eop-APC01.prod.protection.outlook.com
	(10.152.250.58) by SG2APC01HT196.eop-APC01.prod.protection.outlook.com
	(10.152.251.218) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2367.14;
	Sat, 19 Oct 2019 16:32:26 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM (10.152.250.51) by
	SG2APC01FT059.mail.protection.outlook.com (10.152.251.134) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.2367.14 via Frontend Transport; Sat, 19 Oct 2019 16:32:26 +0000
Received: from MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c]) by
	MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM
	([fe80::bd9a:baee:a645:4b1c%6]) with mapi id 15.20.2347.028;
	Sat, 19 Oct 2019 16:32:26 +0000
From: Abhi Arora <abhiarora4@live.com>
To: Yann Dirson <yann.dirson@blade-group.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] Reducing the size of the image by optimizing python
Thread-Index: AQHVhYg7Pl6lKyJQokajvwtgB9NFP6dgGVOAgAHQRXSAACAaAIAABSDmgAAE6wCAAAMQAIAAE4NY
Date: Sat, 19 Oct 2019 16:32:26 +0000
Message-ID: <MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB220688520F47DEEC5D530BD9FA6C0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<CAMKF1sofAn-D104y=Aj2SQuvjrnLqoQjcpRRL3oNjTrXw75d3w@mail.gmail.com>
	<MAXPR01MB2206466821B5D2748ADF3F09FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<0562531ddf873d88cf8dfffd4f66efb2a35f9e64.camel@linuxfoundation.org>
	<MAXPR01MB22065FC20AFCDA4F861D7845FA6F0@MAXPR01MB2206.INDPRD01.PROD.OUTLOOK.COM>
	<e6d9c7aa1796070677b20b08999fa2313abde740.camel@linuxfoundation.org>,
	<CA+4=imYxNpiox1pPwi52LeL56vT+ZSpFgj9EStYh+EXmirBNeA@mail.gmail.com>
In-Reply-To: <CA+4=imYxNpiox1pPwi52LeL56vT+ZSpFgj9EStYh+EXmirBNeA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:BF36EAB5FC64FB74FBADD43CA05F9B7FE39A4AE86A4FD9C04A2AA16668EDA2A3;
	UpperCasedChecksum:C4E459F920FD207C78BC90EE9AC4A6F9CB0CA69E2E052D6DC72D6556A77518A3;
	SizeAsReceived:7524; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [ZY2a+BTwCKyeV4QmGUPdvW3E+5VEs0q8]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-traffictypediagnostic: SG2APC01HT196:
x-ms-exchange-purlcount: 3
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uoE8LlJxEWEFCiPUGaLq/JuLf0BgVvVDeKezOMR+vNgm4Bd1UYTYnATjFZ3LF9OiEerWfDmKGcvoaApt3RNt3BamO5oDiN/YQBjHgqRNrMlhNwv+MlizzpqNGB98KOHlYZqUhbJ5EgWVgprFbnFsVfCHA/jpvvAiQR8dVdWx2bythhlLkoeVhM2VmzSvksZkzLvUBC2+6c3AP/IlTfvcG21XJYJWdjS+wxSVEjpFN1Q=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: live.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e8c12c14-bf70-40cb-c5e7-08d754b1ed92
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Oct 2019 16:32:26.7468 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2APC01HT196
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing the size of the image by optimizing python
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
X-List-Received-Date: Sat, 19 Oct 2019 16:32:32 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0MAXPR01MB2206INDP_"

--_000_MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0MAXPR01MB2206INDP_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank you for being patient.

I am unable to find out python3-misc package online. Neither "sudo apt-get =
install python3-misc" helps me nor "pip install python3-misc".

I am a newbie, please help me what kind of package it is and where to find =
it.

I am planning to install it in my host machine and see if I am able to run =
my scripts and manually add or remove modules and python packages to get mi=
nimal required system for my scripts.

For that I need to access python3-misc and what it installs.



Get Outlook for Android<https://aka.ms/ghei36>

________________________________
From: Yann Dirson <yann.dirson@blade-group.com>
Sent: Saturday, October 19, 2019 8:51:52 PM
To: richard.purdie@linuxfoundation.org <richard.purdie@linuxfoundation.org>
Cc: Abhi Arora <abhiarora4@live.com>; Khem Raj <raj.khem@gmail.com>; yocto@=
yoctoproject.org <yocto@yoctoproject.org>
Subject: Re: [yocto] Reducing the size of the image by optimizing python

You can also look at the package dependency graph (see the file
generated by bitbake -g) to get a better idea of what pulls what.

2019-10-19 17:10 UTC+02:00, richard.purdie@linuxfoundation.org
<richard.purdie@linuxfoundation.org>:
> On Sat, 2019-10-19 at 14:55 +0000, Abhi Arora wrote:
>> Thanks your for the suggestion.
>>
>> From where I can find out what modules and packages python3-misc
>> downloads and installs? I am new to yocto and Don't know where to
>> look for. I tried grep but didn't help me.
>
> python3-misc is a package. You can look at its dependencies to see what
> it adds to the image.
>
>> And how about optimization using pyc file? Is it doable?
>
> Start simple. If you have python3-misc installed its using a lot of
> space and is the sensible place to start with trimming things down.
>
> Optimising to just pyc files is an optimisation further than most
> people find they need and will be much harder to do.
>
> Cheers,
>
> Richard
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--
Yann Dirson <yann@blade-group.com>
Blade / Shadow -- http://shadow.tech

--_000_MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0MAXPR01MB2206INDP_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<div>
<div align=3D"left">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
Thank you for being patient.<br>
</div>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<br>
</div>
<div align=3D"left">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
I am unable to find out python3-misc package online. Neither &quot;sudo apt=
-get install python3-misc&quot; helps me nor &quot;pip install python3-misc=
&quot;.<br>
</div>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<br>
</div>
<div align=3D"left">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
I am a newbie, please help me what kind of package it is and where to find =
it.<br>
</div>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<br>
</div>
<div align=3D"left">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
I am planning to install it in my host machine and see if I am able to run =
my scripts and manually add or remove modules and python packages to get mi=
nimal required system for my scripts.<br>
</div>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<br>
</div>
<div align=3D"left">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
For that I need to access python3-misc and what it installs.<br>
</div>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<br>
<br>
<br>
</div>
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
<span id=3D"x_OutlookSignature">
<div dir=3D"auto" style=3D"direction:ltr; margin:0; padding:0; font-family:=
sans-serif; font-size:11pt; color:black">
Get <a href=3D"https://aka.ms/ghei36">Outlook for Android</a></div>
</span><br>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Yann Dirson &lt;yan=
n.dirson@blade-group.com&gt;<br>
<b>Sent:</b> Saturday, October 19, 2019 8:51:52 PM<br>
<b>To:</b> richard.purdie@linuxfoundation.org &lt;richard.purdie@linuxfound=
ation.org&gt;<br>
<b>Cc:</b> Abhi Arora &lt;abhiarora4@live.com&gt;; Khem Raj &lt;raj.khem@gm=
ail.com&gt;; yocto@yoctoproject.org &lt;yocto@yoctoproject.org&gt;<br>
<b>Subject:</b> Re: [yocto] Reducing the size of the image by optimizing py=
thon</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:11pt;">
<div class=3D"PlainText">You can also look at the package dependency graph =
(see the file<br>
generated by bitbake -g) to get a better idea of what pulls what.<br>
<br>
2019-10-19 17:10 UTC&#43;02:00, richard.purdie@linuxfoundation.org<br>
&lt;richard.purdie@linuxfoundation.org&gt;:<br>
&gt; On Sat, 2019-10-19 at 14:55 &#43;0000, Abhi Arora wrote:<br>
&gt;&gt; Thanks your for the suggestion.<br>
&gt;&gt;<br>
&gt;&gt; From where I can find out what modules and packages python3-misc<b=
r>
&gt;&gt; downloads and installs? I am new to yocto and Don't know where to<=
br>
&gt;&gt; look for. I tried grep but didn't help me.<br>
&gt;<br>
&gt; python3-misc is a package. You can look at its dependencies to see wha=
t<br>
&gt; it adds to the image.<br>
&gt;<br>
&gt;&gt; And how about optimization using pyc file? Is it doable?<br>
&gt;<br>
&gt; Start simple. If you have python3-misc installed its using a lot of<br=
>
&gt; space and is the sensible place to start with trimming things down.<br=
>
&gt;<br>
&gt; Optimising to just pyc files is an optimisation further than most<br>
&gt; people find they need and will be much harder to do.<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; Richard<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; yocto@yoctoproject.org<br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
<br>
<br>
-- <br>
Yann Dirson &lt;yann@blade-group.com&gt;<br>
Blade / Shadow -- <a href=3D"http://shadow.tech">http://shadow.tech</a><br>
</div>
</span></font>
</body>
</html>

--_000_MAXPR01MB22067C10A6EF66D6DF82C41CFA6F0MAXPR01MB2206INDP_--
