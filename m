Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.1394.1601931346676451558
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Oct 2020 13:55:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cluMoi7A;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id E93FB38C049A
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2020 13:55:45 -0700 (PDT)
Received: by mail-pl1-f174.google.com with SMTP id o9so120157plx.10
        for <yocto@yoctoproject.org>; Mon, 05 Oct 2020 13:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=bsZSKjf1Yw9E3T89u0a0eZBEY3x1IzruFp3ZXMfRCaE=;
        b=cluMoi7AnGX3jErJY/jNHV0MsJx/2k86xgI6ZmFkgMmHVEXdInm+LWjkPLLHyyIySb
         42e7MKeFL2N311og+ekmFAJr+ZgF24N0PjVHplquKDm5c5DmpokM13UF6IRYRGm0U13d
         vV6bh7dLuWj0cj/2fwVioIP7a6hE49qMlZysRv5/cJ8BrEUiEAa5v/c8+AZgjzI2hUZF
         ScGgw7Qx23kGSx6ED3IRhBug6hwcoD6VCMJTp/pD5U8DNp9bsswhjks1hQuhKnh1y8M3
         yWd5Ohl+S4cu2UhifLMYkTvdyCvBlbXAIwiYOuD4vjKC9V6jlCOCO9tegr8WtW7jnNWx
         TKqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=bsZSKjf1Yw9E3T89u0a0eZBEY3x1IzruFp3ZXMfRCaE=;
        b=qiAIlpHP1koY7LWiheG3lVDKClDEQwx3JQxRMrs5uLPD0uJPO9+CmfhcKrVmzQdLED
         HPbeKYBniBOpSAtXquGGcssKbwNjnQcxYyOabP3EXgHK+tk0kU0DZTfzrVnnPMaI8XdN
         EN++5X2cEoBBndCjrDaHrKturihzSFtKNcWNNLXu0H2oA6ZjXwDud9I7DV3MkE9tODuZ
         dxVbATOmGU9pbBtQVjNAxqJxI2jSQuWp8DafDAu2uqXN9xtTwh3TIXGFPubaX2zfyH9+
         FKL8ZdTz4TnNuNtD8O9WuRa43Ad19mGiLyOk8Oi/uHRkVG01qMU0dy2IiQBbJVkhE49g
         MCbQ==
X-Gm-Message-State: AOAM531uSIkwyg1sRuuD8YjtOIFC8GFzvYeRxdT2p6SijN9sJYVQTbNS
	UaHmQpoXBSaZLybA5cWO2JxFZeTwdqEbtA==
X-Google-Smtp-Source: ABdhPJzOfHPsKJ6rGNAVxbE4DBpZMI35wA7gIuUTEqffo7jd4b0VuFgME9eiQLG7qQz6UaoYtptiWg==
X-Received: by 2002:a17:90a:e60c:: with SMTP id j12mr1180753pjy.27.1601931345488;
        Mon, 05 Oct 2020 13:55:45 -0700 (PDT)
Received: from skjolley (wsip-184-183-149-66.ph.ph.cox.net. [184.183.149.66])
        by smtp.gmail.com with ESMTPSA id g22sm14282pfh.147.2020.10.05.13.55.44
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 13:55:44 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: Current Autobuilder Intermittent bugs by the WW created or closed.
Date: Mon, 5 Oct 2020 13:55:45 -0700
Message-ID: <04c701d69b59$e57c94f0$b075bed0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQImPt1i/5GAQh9FhwPKXalmEeAAOQ==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04C8_01D69B1F.39205500"
Content-Language: en-us

------=_NextPart_000_04C8_01D69B1F.39205500
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

Below are the lists of open and closed medium or higher Autobuilder
Intermittent bugs by the WW created or closed. 


WW Opened

WW Closed

Status

Count


2018WW48

2020WW26

Closed

1


2018WW49

2020WW28

Closed

1


2019WW26

2020WW31

Closed

1


2019WW43

2020WW30

Closed

1


2019WW47

 

Open

1


2019WW51

2020WW30

Closed

1


2020WW13

2020WW30

Closed

1


2020WW21

2020WW30

Closed

1


2020WW21

2020WW33

Closed

1


2020WW23

2020WW27

Closed

1


2020WW8

 

Open

1


2020WW8

2020WW29

Closed

1


2020WW8

2020WW40

Closed

1


2020WW24

 

Open

1


2020WW24

2020WW34

Closed

1


2020WW25

 

Open

1


2020WW25

2020WW27

Closed

1


2020WW25

2020WW33

Closed

1


2020WW26

2020WW26

Closed

2


2020WW26

2020WW28

Closed

1


2020WW27

2020WW28

Closed

1


2020WW28

2020WW29

Closed

1


2020WW29

 

Open

1


2020WW30

 

Open

1


2020WW31

 

Open

2


2020WW33

 

Open

5


2020WW33

2020WW34

Closed

2


2020WW33

2020WW35

Closed

1


2020WW34

 

Open

2


2020WW34

2020WW34

Closed

1


2020WW35

 

Open

2


2020WW35

2020WW39

Closed

1


2020WW36

 

Open

2


2020WW36

2020WW37

Closed

2


2020WW36

2020WW39

Closed

1


2020WW37

 

Open

1


2020WW38

2020WW39

Closed

1


2020WW39

 

Open

2


2020WW40

 

Open

1


2020WW41

 

Open

1


Grand Total

 

 

52

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_04C8_01D69B1F.39205500
Content-Type: text/html;
	boundary="----=_NextPart_000_0C6F_01D695C6.9151D1D0";
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:black'>All,<br><br>Below are the =
lists of open and closed medium or higher Autobuilder Intermittent bugs =
by the WW created or closed.</span> <o:p></o:p></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D271 style=3D'width:203.0pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D89 nowrap valign=3Dbottom =
style=3D'width:67.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span style=3D'color:black'>WW =
Opened</span></b><b><span =
style=3D'color:black'><o:p></o:p></span></b></p></td><td width=3D89 =
nowrap valign=3Dbottom style=3D'width:67.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>WW Closed<o:p></o:p></span></b></p></td><td =
width=3D49 nowrap valign=3Dbottom style=3D'width:37.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Status<o:p></o:p></span></b></p></td><td =
width=3D43 nowrap valign=3Dbottom style=3D'width:32.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Count<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2018WW48<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2018WW49<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2019WW26<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW31<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2019WW43<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2019WW47<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2019WW51<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW13<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW21<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW21<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW23<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW27<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW8<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW8<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW29<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW8<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW40<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW24<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW24<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW25<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW25<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW27<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW25<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW27<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW29<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW29<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW31<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>5<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW35<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW35<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW35<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW36<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW36<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW37<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW36<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW37<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW38<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW40<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW41<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Grand Total<o:p></o:p></span></b></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;background:#DCE6F1;padding:0in =
0in 0in 0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;background:#DCE6F1;padding:0in =
0in 0in 0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;background:#DCE6F1;padding:0in =
0in 0in 0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'color:black'>52<o:p></o:p></span></b></p></td></tr></table><p =
class=3DMsoNormal> Thanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_04C8_01D69B1F.39205500--
