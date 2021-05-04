Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3777.1620090954159262426
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 May 2021 18:15:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=D8qFxBLY;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6240138C069E
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 01:15:53 +0000 (UTC)
Received: by mail-pg1-f175.google.com with SMTP id s22so5215221pgk.6
        for <yocto@yoctoproject.org>; Mon, 03 May 2021 18:15:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=J0e8f3CK2KByb3jgDEmMM+vfTVLQ9FEKQgp7Go67RCg=;
        b=D8qFxBLY4o8LBZH0MEAG373sMzEnzt3JLJIxToI2Quv804UurH3Ccbhh/Qv6XE+vAy
         3UPCStAmO/BS4iE3FItGxN1sWLYGR5PYtsCnuMVyXrWL8LFq1b1n5lSM7H93J4TVN6fk
         r++sCsNVnj4QfbEWViOwE/MqLHhblbShOPKrmytZ2UFvZXQaB6nrcG8qLaEIydkMcrXk
         lOEzezCGkYBLrr8GWeguwuFnRmukvfFV9XNRDmgUkLJ7aS0skis7z0H2TW5zt6R9OSDd
         5aIm8nYeqMgEhNfYP/hPotO9IG3qE/bz3cGdCrcqhMXelHpcbFZJK5UdFCVwPHX/OmXK
         PVHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=J0e8f3CK2KByb3jgDEmMM+vfTVLQ9FEKQgp7Go67RCg=;
        b=HiAveSjIh2CZlwkt8/3qyreh/LMZTdxv8lgAWiFMtlPhjmIa2KrrwZylDk57THVGiH
         G5IK1hkZR5HSW9oxpVU8R4JwC+xziCh+w0bWWq8h2MA3s2Yb8RNpEhXLoY2GpL+hCTeS
         /Y4o31fhmDBqgkuYsjPArLwEh+Xkay7Nz7EPcSoe7tcnzo2THQgyiyjFKgDBHfG7QDHN
         2zOX2UUYqKI5VYZNtobq2aL/gyIRtfbr1ShG7RiW/piz/GqQAKk4S6b+iIM6NeEAnV7W
         YmG6IGhaZ8LpY1eJgbYs0FFVPMuJsMBWnohp+h2LXN2I9/1JzWzT1No/valVYip6py9B
         MLUw==
X-Gm-Message-State: AOAM531NB7Odyr8kHOqYcS3vb/5sQL+UTg4totDVa5vGWfzhAkyuOe2s
	KfgdScUExZOdVsnuLVkCm4o=
X-Google-Smtp-Source: ABdhPJxFXpdSpzRvhaDb8kRLphtlKmgzkl4qGFiHENiA1rT+ahLn/OXprkawZ/yXSfuyfKR4eYa1uw==
X-Received: by 2002:a17:90a:cb0e:: with SMTP id z14mr1815837pjt.128.1620090952970;
        Mon, 03 May 2021 18:15:52 -0700 (PDT)
Received: from skjolley (wsip-72-194-163-85.ph.ph.cox.net. [72.194.163.85])
        by smtp.gmail.com with ESMTPSA id 132sm10378839pfw.38.2021.05.03.18.15.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 18:15:52 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: Enhancements/Bugs closed WW18!
Date: Mon, 3 May 2021 18:15:52 -0700
Message-ID: <140901d74083$07238220$156a8660$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AddAguhPlaE5FCF8T4OPklWkNQsPTQ==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_140A_01D74048.5AC4AA20"
Content-Language: en-us

------=_NextPart_000_140A_01D74048.5AC4AA20
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

 

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


randy.macleod@windriver.com

7


steve@sakoman.com

1


akuster808@gmail.com

1


david.reyna@windriver.com

1


michael.opdenacker@bootlin.com

1


timothy.t.orling@intel.com

1


trevor.gamblin@windriver.com

1


Grand Total

13

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_140A_01D74048.5AC4AA20
Content-Type: text/html;
	boundary="----=_NextPart_000_03EB_01D73ABE.829CA460";
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
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>All,<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>The below were =
the owners of enhancements or bugs closed during the last =
week!<o:p></o:p></span></p><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 =
style=3D'margin-left:-1.9pt;border-collapse:collapse'><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;background:#CCCCFF;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Who<o:p></o:p></span></b></p></td><td width=3D46 =
valign=3Dtop style=3D'width:34.65pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Count<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>7<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>steve@sakoman.com<o:p></o:p></span></p></td><td =
width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>akuster808@gmail.com<o:p></o:p></span></p></td><td =
width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>michael.opdenacker@bootlin.com<o:p></o:p></span></p=
></td><td width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>timothy.t.orling@intel.com<o:p></o:p></span></p></t=
d><td width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>trevor.gamblin@windriver.com<o:p></o:p></span></p><=
/td><td width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D269 valign=3Dtop =
style=3D'width:201.5pt;border:solid windowtext =
1.0pt;border-top:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span style=3D'color:black'>Grand =
Total<o:p></o:p></span></b></p></td><td width=3D46 valign=3Dtop =
style=3D'width:34.65pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext =
1.0pt;background:#CCCCFF;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>13<o:p></o:p></span></b></p></td></tr></table><p =
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

------=_NextPart_000_140A_01D74048.5AC4AA20--
