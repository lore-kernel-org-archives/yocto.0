Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2145.1610410615977073456
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Jan 2021 16:16:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Blu1iFgH;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D1A9C38C051C
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2021 00:16:55 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id n3so673860pjm.1
        for <yocto@yoctoproject.org>; Mon, 11 Jan 2021 16:16:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=itGVcKE20hOfQgmFz/21i/3DQHy1gww+1jhBNIKo/IQ=;
        b=Blu1iFgHL7wMkUvR0TQE760C1KaklyP0PZywluNnFd/YKPFdZ8ooZhCEgrXcENtIc5
         6VdmbyjxWdrVKuXf7Sa2s/qtJ/dcSJLZvsG9PLhkjQ6APCzcKBHGR4d+/dFhP2oXF37J
         dBT4+elxTCXkGD9zWKgYFZg8n1+p3PPug24GJN5Vb9/l75TT66aJIg3qzaYfwvpXX+B6
         OcOoHaucpG0kMYHZXz0XDZ72P9llBdoHF8cRx6jwoVwwJ78GXWz0aoj9dl6rWlkzLOeP
         SXXPf5sArn/O2rgGpmn1fHY9vnZRvIlXTz67GVcJahnVJEockl5LkSEjqUYt70ndrzpy
         flvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=itGVcKE20hOfQgmFz/21i/3DQHy1gww+1jhBNIKo/IQ=;
        b=msm49b+LXkq7omMrVGYxCkdvTQZAR8PBYZkUYvaCJV4hdP6RRxoS2tAP5qu0dcyQTw
         CMQF/dDoGPPAsIO8OdGHoAJEQ7a6wRjBh4kLN1LC1RE4mbbxXzT0MpWvPOGbImsBDcNV
         Sion3zGdvHGDPhK76UUJavJfSjq2iHr8oLstr+2F2c8SbhBe390OmpLL6fC3xUfCTWzg
         M3eB3Ji8yTY7uEXp0Lq7+QhUzWf7ZZ0l8TnTEpQLfhiSdlMryO/QIdGxqedmqmolcTub
         uL6hCKXsVs1EFSGNFVLZgx0P3BVvMUG7yoqnIK4isdzG+2MSfGCaCUwSZLj+wxKOr8pN
         E+nA==
X-Gm-Message-State: AOAM530b45Qnd9GFxjfrnLMhI82Q98Im9vmezSoHFLJdAGhRuX7YV18p
	XqU5U6p0uymIgqsn9yH89HE=
X-Google-Smtp-Source: ABdhPJzW4MNSk+dMVy+831pu1dz3IPiERYcj23t18ZxDq34q5yrW3y0ai8S7uZXX1kQ72ocEwwepAg==
X-Received: by 2002:a17:90b:e0d:: with SMTP id ge13mr1419425pjb.111.1610410615555;
        Mon, 11 Jan 2021 16:16:55 -0800 (PST)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id e65sm789404pfh.175.2021.01.11.16.16.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Jan 2021 16:16:55 -0800 (PST)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW02
Date: Mon, 11 Jan 2021 16:16:55 -0800
Message-ID: <06d501d6e878$3c1c8570$b4559050$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdboeCh3fPpZpHbuQ8mrI2CHn8bWqQ==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_06D6_01D6E835.2DFB8F60"
Content-Language: en-us

------=_NextPart_000_06D6_01D6E835.2DFB8F60
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW02 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13919> 13919

Multi License GPLv3 -lic cannot be installed into the image because it =
has incompatible license

randy.macleod@windriver.com

idadelm@gmail.com

3.3 M1

3.3 M2


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14077> 14077

devtool doesn't handle server failing to startup gracefully

randy.macleod@windriver.com

stacygaikovaia@gmail.com

3.3 M1

3.3 M2

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_06D6_01D6E835.2DFB8F60
Content-Type: text/html;
	boundary="----=_NextPart_000_0578_01D6E285.FF3A31E0";
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; charset=3Dutf-8"><meta =
name=3DGenerator content=3D"Microsoft Word 15 (filtered =
medium)"><style><!--
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
style=3D'color:black'>All,<br><br>YP M+ or high bugs which moved to a =
new milestone in WW02 are listed below: <o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1282 =
style=3D'width:961.3pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom style=3D'width:38.8pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID<o:p></o:p></span></b></p></td><td =
width=3D561 nowrap valign=3Dbottom style=3D'width:420.55pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description<o:p></o:p></span></b></p></td><td width=3D236 nowrap =
valign=3Dbottom style=3D'width:177.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer<o:p></o:p></span></b></p></td><td =
width=3D243 nowrap valign=3Dbottom style=3D'width:182.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D59 =
nowrap valign=3Dbottom style=3D'width:44.5pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D58 =
nowrap valign=3Dbottom style=3D'width:43.55pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13919" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13919</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D561 nowrap valign=3Dbottom =
style=3D'width:420.55pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Multi License GPLv3 -lic cannot be installed into =
the image because it has incompatible =
license<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>idadelm@gmail.com<o:p></o:p></span></p></td><td =
width=3D59 nowrap valign=3Dbottom =
style=3D'width:44.5pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.3 M1<o:p></o:p></span></p></td><td width=3D58 =
nowrap valign=3Dbottom =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.3 M2<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14077" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14077</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D561 nowrap valign=3Dbottom =
style=3D'width:420.55pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>devtool doesn't handle server failing to startup =
gracefully<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>stacygaikovaia@gmail.com<o:p></o:p></span></p></td>=
<td width=3D59 nowrap valign=3Dbottom =
style=3D'width:44.5pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.3 M1<o:p></o:p></span></p></td><td width=3D58 =
nowrap valign=3Dbottom =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.3 M2<o:p></o:p></span></p></td></tr></table><p =
class=3DMsoNormal><span style=3D'color:black'>Thanks,</span><span =
style=3D'color:white'> <o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'color:white'><o:p>&nbsp;</o:p></span></p><p =
class=3DMsoNormal><b><i><span =
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

------=_NextPart_000_06D6_01D6E835.2DFB8F60--
