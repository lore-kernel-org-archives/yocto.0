Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.10855.1601343515112628905
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Sep 2020 18:38:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vJBKG3eN;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by mail.yoctoproject.org (Postfix) with ESMTPS id F32E238C06F7
	for <yocto@yoctoproject.org>; Mon, 28 Sep 2020 18:38:33 -0700 (PDT)
Received: by mail-pf1-f172.google.com with SMTP id k8so2958301pfk.2
        for <yocto@yoctoproject.org>; Mon, 28 Sep 2020 18:38:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=o4EE1tRy7k9tel8xFJomXZ4NdapFw2MiL0XlmsLJ+Cw=;
        b=vJBKG3eNFIhCUuw3gge/uvccbsQt/A8drY/nQGTvLYrSx8f+T2d/kxXs1VKVKBAUw5
         WzeDM8kSGbCfkPfLMbkHfrPFwfY6Sr3J69c2f6XsW/HzE+es1pxFsFPTASq9eLZRE3/C
         JNJQmlF2NkZADs0ZRKfdGERyNzyiAbK+xY0Qi874qo3zgyZMpd6DNzkUP9hKjvqkKJdu
         7zfpxLcDMpyKZQMOvvdFbanessAj8sxLQShVyDdp16GjXxKFVnTc7SP03LrNPdr92+3M
         dHUkg1/d3RAEjqnu7fa7F05yw46uZqJbCR/I0hFalOp4FJ7H//ixOqjlabNDmiNDWZNw
         aa1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=o4EE1tRy7k9tel8xFJomXZ4NdapFw2MiL0XlmsLJ+Cw=;
        b=F0i9O1bwQHEWYBPCQdfPBCSOMqbIbV+RHxfdft5vWpFy+IbdMHzNyCVQqK1aetlODy
         efNVfwNNn4RUlAIo+yaf/KbPwwS9S1Adr5pheTL9iRFx7v9VdZhq2if/K4W8S0QcPeAL
         SEdFEDXjVSrqa4MRjCgzP3nr3cr/Jtyh4f6ggBhU46w+Ye8exgn1cqfAu9X18qGm7EbL
         MnsnR0WTBOSetIg0DOy8gfBL0Hvb/0LxkYtMwOwJF2fBHfBLLy3o5Q7L5FPqpV44jq5N
         05S9v/2zRpfqIHjlfoD5gVTc5+itUgtJvW96TFwUMmVLIFxJXtd8jESiKhoJcCntfx4D
         t0wg==
X-Gm-Message-State: AOAM5324gOIKBD3mUB0e6/xgGztaikb/85QlMpmbD5hguHWYzfoHqQq5
	Q2ylshJ3MWpH9mnLCpPyIrk=
X-Google-Smtp-Source: ABdhPJz7IKQaY9EjO97FKDqGhU0Ldq8NCdJEHM/WEsJrTUiZBeWBodn46ebkLiV9vxMgdf8JuoKTtg==
X-Received: by 2002:a62:6147:0:b029:142:2501:34e8 with SMTP id v68-20020a6261470000b0290142250134e8mr1852791pfb.65.1601343513561;
        Mon, 28 Sep 2020 18:38:33 -0700 (PDT)
Received: from skjolley (wsip-184-183-149-66.ph.ph.cox.net. [184.183.149.66])
        by smtp.gmail.com with ESMTPSA id z23sm3056422pfj.177.2020.09.28.18.38.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 18:38:32 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: Current Autobuilder Intermittent bugs by the WW created or closed.
Date: Mon, 28 Sep 2020 18:38:32 -0700
Message-ID: <0c6e01d69601$3da8e1a0$b8faa4e0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQKWxT2B9P77QZ3tpkhbZ+81+DyOxQ==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0C6F_01D695C6.9151D1D0"
Content-Language: en-us

------=_NextPart_000_0C6F_01D695C6.9151D1D0
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

2


2020WW8

2020WW29

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


Grand Total

 

 

50

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0C6F_01D695C6.9151D1D0
Content-Type: text/html;
	boundary="----=_NextPart_000_04AE_01D690B3.73D716F0";
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
by the WW created or closed.</span><b><span =
style=3D'color:black'><o:p></o:p></span></b></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D284 =
style=3D'width:212.7pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span style=3D'color:black'>WW =
Opened<o:p></o:p></span></b></p></td><td width=3D83 nowrap =
valign=3Dbottom style=3D'width:62.25pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>WW Closed<o:p></o:p></span></b></p></td><td =
width=3D54 nowrap valign=3Dbottom style=3D'width:40.6pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Status<o:p></o:p></span></b></p></td><td =
width=3D51 nowrap valign=3Dbottom style=3D'width:38.1pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Count<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2018WW48<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2018WW49<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2019WW26<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW31<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2019WW43<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2019WW47<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2019WW51<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW13<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW21<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW21<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW23<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW27<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW8<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW8<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW29<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW24<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW24<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW25<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW25<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW27<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW25<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW26<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW27<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW28<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW29<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW29<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW30<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW31<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>5<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW33<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW35<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW34<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW35<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW35<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW36<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW36<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW37<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW36<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW37<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW38<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Closed<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><span =
style=3D'color:black'>2020WW39<o:p></o:p></span></p></td><td width=3D83 =
nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D54 =
nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>Open<o:p></o:p></span></p></td><td width=3D51 =
nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D96 nowrap valign=3Dbottom =
style=3D'width:71.75pt;border:solid windowtext =
1.0pt;border-top:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Grand Total<o:p></o:p></span></b></p></td><td =
width=3D83 nowrap valign=3Dbottom =
style=3D'width:62.25pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D54 nowrap valign=3Dbottom =
style=3D'width:40.6pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D51 nowrap valign=3Dbottom =
style=3D'width:38.1pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal align=3Dright style=3D'text-align:right'><b><span =
style=3D'color:black'>50<o:p></o:p></span></b></p></td></tr></table><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
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

------=_NextPart_000_0C6F_01D695C6.9151D1D0--
