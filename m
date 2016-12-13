Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6310AE00828; Tue, 13 Dec 2016 08:25:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [65.55.34.209 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Tue, 13 Dec 2016 08:25:06 PST
Received: from COL004-OMC4S7.hotmail.com (col004-omc4s7.hotmail.com
	[65.55.34.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9CBEE00571
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2016 08:25:06 -0800 (PST)
Received: from EUR03-AM5-obe.outbound.protection.outlook.com ([65.55.34.201])
	by COL004-OMC4S7.hotmail.com over TLS secured channel with
	Microsoft SMTPSVC(7.5.7601.23008); Tue, 13 Dec 2016 08:24:05 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=ZrEmE3MhfmlSK6sZqroaD1bXPhbbq9TUpA5OcqrL5y0=;
	b=Hj0HxcJ+OLoPFMoz4OEJO6rsvutOPTGLgX9O/Rq+InAzLu1ydIw5fQkvtokzSm2iqcNJsxzMlqfx4B15STgbZbt771wFIjUk2uTEJIE1KHqJNAF7bRi5OmLpYKR+aqTLpW1tQBfNioNc0mt9M3Z1vcOvKCPVFSsV/2JQrmayvOB8XsZ05uUUmJRLABeQIZuKKq9ZHJS+FBgKxb/1AS7+A2KX/iY3Kr4zRuQuYnqa+/GCUrbWwv5io1N2hENIuMOdu4aiKZXOqNbu18sLLRSnsiz6DyesvboTUXxCc7gBwkX9/gB1ieIXb5V79v5hyTBF0+U7wKhMLKFk4Ao653rYow==
Received: from VE1EUR03FT048.eop-EUR03.prod.protection.outlook.com
	(10.152.18.58) by VE1EUR03HT224.eop-EUR03.prod.protection.outlook.com
	(10.152.19.219) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.761.6;
	Tue, 13 Dec 2016 16:24:03 +0000
Received: from LOXP123MB1080.GBRP123.PROD.OUTLOOK.COM (10.152.18.54) by
	VE1EUR03FT048.mail.protection.outlook.com (10.152.19.8) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.761.6 via Frontend Transport; Tue, 13 Dec 2016 16:24:03 +0000
Received: from LOXP123MB1080.GBRP123.PROD.OUTLOOK.COM ([10.166.252.12]) by
	LOXP123MB1080.GBRP123.PROD.OUTLOOK.COM ([10.166.252.12]) with mapi id
	15.01.0771.014; Tue, 13 Dec 2016 16:24:03 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: Issues Updating Asterisk/Dahdi recipes from meta-telephony
Thread-Index: AQHSVV1QKjj2YDQM70KG5LW85hs+yQ==
Date: Tue, 13 Dec 2016 16:24:02 +0000
Message-ID: <LOXP123MB1080B095E1C6F1532A482B39DA9B0@LOXP123MB1080.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:F0292BA66C666483F38B7B9FC9B31C1B2C29F57804835CDD162104A73F5A61E0;
	UpperCasedChecksum:EB4AC0584547DB52FFA965A822657DFCD737CC845DCFC4B4AE19690EFEEF9EEA;
	SizeAsReceived:7270; Count:37
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [wsjQ1boM+IUAE3rkM/Plb1PQJ3OCcExh]
x-incomingheadercount: 37
x-eopattributedmessage: 0
x-microsoft-exchange-diagnostics: 1; VE1EUR03HT224;
	7:T7hJ6ZA/2lqvX0Klw54vlDyHXEj7ZZfwyLAeahsyWRX4m8dcrYZPj4JaOpaFNg3ai8cQM43/6h789+bAciJCKfCvgGjCEyUaOfoKyBMA13NpJAi6me5DEa8kjI/mKlZtXJ/wsjDSSdhJiNi4vnUfjdYzvX0dkQ8NBXu3/wK3yXxEYaDMziAog+FOMKnmQVoUQfq3nN4/c/1U9gdrT0C/bmUy0wHFuEZjwlVKGBjFZ0IDF+ENDHiaYvda8EYxRVahAXsbAsbc6+ERYKkna3qd4TUKUz9UoAK2oeKHILcupXR8oBbzvGlTVxmQaZfWOAMLjzy32nphmAoArdR5Tq4bVmkgWsqQlyrYONT0Aa14ydUGMxxGb+Pd7N/uvSIqn3TBw4RzSH9/BqV6KKA7kad2cSYB3Bdy7ERfWdAGnOqpVJMn5yPk35ygVKKKz8EthuvAq9/FAScEKMfHOYxj6uwdZQ==
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(10019020)(98900003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:VE1EUR03HT224;
	H:LOXP123MB1080.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: eb1c79ed-0597-4ea5-aaac-08d4237473c8
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(1601124038)(1603103113)(1601125047);
	SRVR:VE1EUR03HT224; 
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(432015012)(82015046);
	SRVR:VE1EUR03HT224; BCL:0; PCL:0; RULEID:; SRVR:VE1EUR03HT224; 
x-forefront-prvs: 01559F388D
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2016 16:24:02.9850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR03HT224
X-OriginalArrivalTime: 13 Dec 2016 16:24:05.0807 (UTC)
	FILETIME=[52E2A3F0:01D2555D]
Subject: Issues Updating Asterisk/Dahdi recipes from meta-telephony
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
X-List-Received-Date: Tue, 13 Dec 2016 16:25:08 -0000
Content-Language: en-GB
Content-Type: multipart/alternative;
	boundary="_000_LOXP123MB1080B095E1C6F1532A482B39DA9B0LOXP123MB1080GBRP_"

--_000_LOXP123MB1080B095E1C6F1532A482B39DA9B0LOXP123MB1080GBRP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,


I have got around to updating these recipes and found a few issues:


asterisk has a autoconf macro file for pjproject in ./third-party/pjproject=
/, which does not get picked up by autobuild.bbclass.


This uses find with a -maxdepth of 2 but but 3 would be needed.  I found a =
temp fix by copying the m4 file manually to ./m4 directory in configure_pre=
pend but what would the best long term solution be?


/etc/init.d/functions stopped being installed for dahdi-tools and asterisk.


update-rc.d.bbclass adds a run-time dependency on initscripts-functions if =
the installed init.d script contains the literal string "/etc/init.d/functi=
ons" at the packet-split stage.


dahdi doesn't contain this literally but asterisk does so I am confused - b=
ut adding an explicit run-time dependency on initscripts-functions to dahdi=
-tools solved this.


Any ideas on why this isn't working be default?


asterisk also seems to have an issue locating neon but I have not started t=
o investigate that yet.


Regards,

Chris


morty 5aa481d

asterisk 13.13.1

dahdi-tools 2.10.2


--_000_LOXP123MB1080B095E1C6F1532A482B39DA9B0LOXP123MB1080GBRP_
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
<p>Hi,</p>
<p><br>
</p>
<p>I have got around to updating these recipes and found a few issues:</p>
<p><br>
</p>
<p>asterisk has a autoconf macro file for pjproject in&nbsp;<span style=3D"=
font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple Color Emoji=
&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe UI Symbol&q=
uot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;">./third-pa=
rty/pjproject/,
 which does not get picked up by autobuild.bbclass.</span></p>
<div></div>
<p></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">This uses find with a -maxdepth of 2 but but 3 would be needed. &nb=
sp;I
 found a temp fix by copying the m4 file manually to ./m4 directory in conf=
igure_prepend but what would&nbsp;the best long term solution be?</span></p=
>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">/etc/init.d/functions stopped being installed for dahdi-tools and
 asterisk.</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><br>
</span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;">update-rc.d.bbclass adds a run-time&nbsp;dependency on&nbsp;<span>i=
nitscripts-functions</span>&nbsp;if
 the installed&nbsp;init.d script contains the literal string &quot;<span>/=
etc/init.d/functions&quot; at the packet-split stage.</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><br>
</span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span>dahdi doesn't contain this literally but asterisk does so I
 am confused - but adding an explicit run-time&nbsp;dependency on&nbsp;<spa=
n style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot;Apple =
Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot;Segoe =
UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size: 16px;"=
>initscripts-functions
 to dahdi-tools solved this.</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;"><br>
</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">Any
 ideas on why this isn't working be default?</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;"><br>
</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">asterisk
 also seems to have an issue locating neon but I have not started to invest=
igate that yet.</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;"><br>
</span></span></span></p>
<p><span style=3D"font-family: Calibri, Arial, Helvetica, sans-serif, &quot=
;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorEmoji, &quot=
;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols; font-size:=
 16px;"><span><span style=3D"font-family: Calibri, Arial, Helvetica, sans-s=
erif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoColorE=
moji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymbols;=
 font-size: 16px;">Regards,</span></span></span></p>
<p>Chris</p>
<p><br>
</p>
<p>morty&nbsp;<span>5aa481d</span></p>
<p>asterisk 13.13.1</p>
<p>dahdi-tools 2.10.2</p>
<p><br>
</p>
</div>
</body>
</html>

--_000_LOXP123MB1080B095E1C6F1532A482B39DA9B0LOXP123MB1080GBRP_--
