Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.8328.1609217867149996576
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Dec 2020 20:57:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jlrmT8Ot;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 4C14238C03D5
	for <yocto@yoctoproject.org>; Tue, 29 Dec 2020 04:57:46 +0000 (UTC)
Received: by mail-pg1-f174.google.com with SMTP id w5so8583896pgj.3
        for <yocto@yoctoproject.org>; Mon, 28 Dec 2020 20:57:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=+YgbRysmv40xUrfFj/DQea1H/qNwSktBilw1EXDklSM=;
        b=jlrmT8OthAq73u9tKrlwF8IypCu0TTDe6su2Yp2I19gzMqYEOHhb+xLO9K8ZMzDMjI
         xQTPX8uBfvVhKdud7vVPNYHMuD5c0sJ4vSG5XtztWPhnLftlPBaePKznyOKmK8BKHZ5Y
         rI7EaNKEQ3FKQ+0/X76xXW63HoV1uRMJCWkmpYtHjmhWUfD7iSpRZUsvRGH+FxG9W8bD
         DRbGCp5sYduzkM9f2xPym2l4fs6bR4NmzLfdqLkmYwdB8dX4nxoUOxpkslISfzitNg1Z
         AIJ/1K6eOtvFruJlbr21Wf1u1HfNK58AoHGKA86jcGhMVtEN/ePYaGGbg6hJ/cuRqu6d
         wWQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=+YgbRysmv40xUrfFj/DQea1H/qNwSktBilw1EXDklSM=;
        b=J5W7xZ6F24JYSrhllYYcSleXSHkziJ6wzf0JiXwCaGxZEGb70t4RONo/zMG/39Fmr1
         WnwF0zsgELMZ+QcqEyMlwDTGHbTx+US94fJV/ruJhV+hDAHQoESwIrwiDYYmZe7pKjdK
         OrCSM9DxJ2NDt95SJG3d5fbDIFNs3YJiJw6jJfEcoh3Rm3oqw9CGNsqpgA0ZBgJJvM1d
         wRpWiUkvTbb4Q9ryU45BNushfY1z78fUm8Z9cJGc7mUQ6c3tBLv8TI1pvhnNMso/0t1j
         ND8HluN3izOlK1vDr3nFmBXOnkM/BIfOv+4vd3vK41WNR0XrMyyUhIPU2mjMjd+rJ0hB
         52KQ==
X-Gm-Message-State: AOAM530rSIft9P5Q/f0FSLqVmcprctNGXVh8ycbU/mYnvbt+NpqVN3qt
	2fqL2iCrC6q2fG77qKdv0SM=
X-Google-Smtp-Source: ABdhPJyuG6ZsE9VdA61hfZSlcdwW9pPcae5R/1ZZEYi7HgunkcHrCCBGF0RnmHOeIT0cYHLEaafyQg==
X-Received: by 2002:aa7:8d86:0:b029:19e:cb57:2849 with SMTP id i6-20020aa78d860000b029019ecb572849mr43887807pfr.54.1609217865883;
        Mon, 28 Dec 2020 20:57:45 -0800 (PST)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id gj1sm1137338pjb.11.2020.12.28.20.57.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Dec 2020 20:57:45 -0800 (PST)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: Enhancements/Bugs closed WW52!
Date: Mon, 28 Dec 2020 20:57:46 -0800
Message-ID: <0c4101d6dd9f$26574380$7305ca80$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdbdnyXwmSkCdjNcSkWwJb4nhnABUw==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0C42_01D6DD5C.18364D70"
Content-Language: en-us

------=_NextPart_000_0C42_01D6DD5C.18364D70
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

All,

The below were the owners of enhancements or bugs closed during the last
week!


Who

Count


mhalstead@linuxfoundation.org

1


akuster808@gmail.com

1


Grand Total

2

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0C42_01D6DD5C.18364D70
Content-Type: text/html;
	boundary="----=_NextPart_000_033E_01D6D7B9.8D147CA0";
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
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal><span =
style=3D'color:black'>All,<br><br>The below were the owners of =
enhancements or bugs closed during the last =
week!<b><o:p></o:p></b></span></p><table class=3DMsoNormalTable =
border=3D0 cellspacing=3D0 cellpadding=3D0 width=3D293 =
style=3D'width:220.0pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D251 nowrap valign=3Dbottom =
style=3D'width:188.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span style=3D'color:black'>Who</span></b><b><span =
style=3D'color:black'><o:p></o:p></span></b></p></td><td width=3D43 =
nowrap valign=3Dbottom style=3D'width:32.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Count<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mhalstead@linuxfoundation.org<o:p></o:p></span></p>=
</td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>1<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>akuster808@gmail.com<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
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
0in 0in 0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'color:black'>2<o:p></o:p></span></b></p></td></tr></table><p =
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

------=_NextPart_000_0C42_01D6DD5C.18364D70--
