Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 000A6C001DC
	for <webhook@archiver.kernel.org>; Mon, 17 Jul 2023 21:50:07 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.web11.560.1689630599822943139
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jul 2023 14:49:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=UpanToGg;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-1b8ad8383faso40001985ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 14:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689630599; x=1692222599;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Mj75WLJ00YUWtmajkBNv/r/0un9DhGMCEwoe9EnJlG4=;
        b=UpanToGgVEzYvvPu2pfT1DW8m7glOKdL8+eGW0/1y3Xz676BPolggmJaBkolkunnhL
         0K9WgXkh9NuDIXYj0wYiXSQxUcjNADd5SCYS7EyJEbCJiDxYe61X4W8x6aVHXsLZHsHX
         iISRnJJbXTFFOd1HmVYxr8PlmSAv6mdBWAVaLzr4nO8OK1MJpXLNyBrRgM93POnqtdvq
         rU/MrW9EWytuSLi/yn+6JdCyWo6uSYrzQfNCLV+dPmZL3dwBNOudvLyYjVkSTRoFHe7B
         1xTJwl0yRqgZSIyCfn7HNgaIsXvSvOUBH1MQaE2uscO0qMpsEB7GXcheYZgAu/KH6N7j
         CreA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689630599; x=1692222599;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mj75WLJ00YUWtmajkBNv/r/0un9DhGMCEwoe9EnJlG4=;
        b=kMzDPvAFJt1xKOXo4uz/EzL0cow58yJX4SrO++PuCA60pIl3/QKpZ2y6m1eW/Be3nP
         lYszqQcOzA3RqpPtnZ8mmLGpRblNBFn4iuIVkDSTwDpmVv7+SwhsGbJP/XbIPOmpZhi6
         KyTUKdRF638D1I0iUSeeBeG5T+LsRB4dRCZzqGxWG/MQv5+HSUtvfnpTjFi+RVuc27Ri
         +fGJ59SuXfJuDDOJuIg4Mric++cGIxf5106KiZp5AtvQbRDkRjQfBGDWIJkf22HXL4VH
         fO+BKEbg+OT+Ep5YXh1VHlT3iVRCY2wvIw/WhAhXVOWBWYbHFTZm2Eq8PZhT+C0AGUe4
         PfXw==
X-Gm-Message-State: ABy/qLY9iqC0KMUZrj3HOkmGqtPF3g9coYZxqOmyGQAanNKxkQkuHveR
	9sUFR9G9jrUAxKDy52cFAKY=
X-Google-Smtp-Source: APBJJlEzS/+R7X7Mx6GJ86br61UrwjI7g2lpVcDESi2SL4Ojo8hhMm/nSALlkZuf3HiE1CFIEZYIhg==
X-Received: by 2002:a17:902:bb89:b0:1a9:b8c3:c2c2 with SMTP id m9-20020a170902bb8900b001a9b8c3c2c2mr13083564pls.37.1689630599208;
        Mon, 17 Jul 2023 14:49:59 -0700 (PDT)
Received: from skjolley ([2600:1011:a122:34d2:28e7:9ea4:5bbb:7068])
        by smtp.gmail.com with ESMTPSA id u8-20020a170902e80800b001b9dfa946b4sm343825plg.49.2023.07.17.14.49.57
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Jul 2023 14:49:58 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW28
Date: Mon, 17 Jul 2023 14:49:56 -0700
Message-ID: <0b3601d9b8f8$a162fec0$e428fc40$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0B37_01D9B8BD.F50670B0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adm4+IuzwGHiWDjwRriDEVak6GrQPQ==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jul 2023 21:50:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60601

This is a multipart message in MIME format.

------=_NextPart_000_0B37_01D9B8BD.F50670B0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW28 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

15025 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15025>=20

Rust build failure on arm architecture.

randy.macleod@windriver.com

Yash.Shinde@windriver.com

4.0.11

4.0.12

=09
15157 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15157>=20

boot/loader folder is missing when I try to build a signed image for =
installation in an intel NUC using meta-intel

randy.macleod@windriver.com

anuj.mittal@intel.com

4.2.1

4.2.3

=09
15158 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15158>=20

AB-INT meta-mingw freetype do_compile failure: =
x86_64-poky-linux-windres: command not found

randy.macleod@windriver.com

JPEWhacker@gmail.com

0.0.0

4.3 M2

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0B37_01D9B8BD.F50670B0
Content-Type: text/html;
	boundary="----=_NextPart_000_116B_01D9A836.253B8BA0";
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
	font-size:10.0pt;
	mso-ligatures:none;}
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
class=3DWordSection1><p class=3DMsoNormal>All,<br><br>YP M+ or high bugs =
which moved to a new milestone in WW28 are listed below: <span =
style=3D'color:black'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D0 style=3D'border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DBE5F1;padding:0in 2.25pt 0in 2.25pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority</span></b><b><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description</span><o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was</span><o:p></o:p></b></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became</span><o:p></o:p></b></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal><b>Medium+<o:p></o:p></b></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15025" =
target=3D"_blank">15025</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Rust build =
failure on arm architecture.<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>Yash.Shinde@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>4.0.11<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>4.0.12<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15157" =
target=3D"_blank">15157</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>boot/loader =
folder is missing when I try to build a signed image for installation in =
an intel NUC using meta-intel<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>anuj.mittal@intel.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>4.2.1<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>4.2.3<o:p></o:p></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15158" =
target=3D"_blank">15158</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>AB-INT =
meta-mingw freetype do_compile failure: x86_64-poky-linux-windres: =
command not found<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>JPEWhacker@gmail.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr></table><p class=3DMsoNormal><span =
style=3D'color:black'>Thanks,</span><span style=3D'color:white'> =
<o:p></o:p></span></p><p class=3DMsoNormal><span =
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
------=_NextPart_000_0B37_01D9B8BD.F50670B0--


