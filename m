Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45596C433FE
	for <webhook@archiver.kernel.org>; Tue, 25 Jan 2022 03:14:55 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.2489.1643080494033449819
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Jan 2022 19:14:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=i6ksLZNi;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 s61-20020a17090a69c300b001b4d0427ea2so867526pjj.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 24 Jan 2022 19:14:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=cn1rovH0C2STo0TTyTE/IaeHvEsH81qE4+7QIpfbzrQ=;
        b=i6ksLZNit3zVLkOfLXfDQz+G3HQ2xTWZDAKIVGaLQ6QTaNS6+7fSAEZFp1CpmO4NY6
         7zPAvhN0wAQ2pIaniL/9lXBJAXPBNhGb7sD285VYMtb9LP79McC7VuyG7nT6nBJHuBOX
         fiqH/86SrYRJsrisKSXU47ckbOdbg8vjn7WfcE33H6sTe2JMx5N7KwxTK9+0sw+p2Zs0
         IEM0XcbbgGliWdgxyWYMmomzCFsL+kQve9oQM2PWD8VwA3dso6TawUz6E7rdczrCKUf/
         ozbxv5a6ApDAZhiRlDy8zUKs1rs7YuEbkPXtqNLJT5zGKfma4eINoIKAjgiBbzHUm0HQ
         QxaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=cn1rovH0C2STo0TTyTE/IaeHvEsH81qE4+7QIpfbzrQ=;
        b=D5UL73jTAWXplh9exR4NtpmEB9E+OGHASvmCGT7n8JFMd2HkB+5xU12YEuCbEHbzNt
         wFvY/7QHld1EOgJJ1TAPDLfI/ALdKHALezokJ4iv/OKZC4tI1JON8SNslhsn/6XchX6A
         twhUGhq3rIMz88VMou05Rg+YbcR+/4y6XOUp6xoQOLtiOJvwxL2sNGuD5qtHAyf/ypC2
         /AfNszbEv+zeyJ9INcV6rGLyP4NC31JZf2tRFL3+CuUswBj7K2loS2VsrZzzfrxcD0en
         hixlv4M00wRpECibA0kXYnq9OYxpuTLXKA+YFOtD7HfdWJwJ3D5J8ugCSfq3Qw6cPbTt
         8lbg==
X-Gm-Message-State: AOAM532rYn8rVCeMGgI8wJdTPy0Sa43rNrhi1c62U3A1egWhhkA61wuq
	cowZH7oNTnXPs+6+n8Q+eKw=
X-Google-Smtp-Source: 
 ABdhPJzUO6ZigwvbgZ8G9/eq76taw+VvdkbHZPSCPSVMdQfBuz5fCQygf8rtr9UkMbs8OudvuT8nuQ==
X-Received: by 2002:a17:90a:4482:: with SMTP id
 t2mr1385268pjg.133.1643080493597;
        Mon, 24 Jan 2022 19:14:53 -0800 (PST)
Received: from skjolley (176.sub-72-107-27.myvzw.com. [72.107.27.176])
        by smtp.gmail.com with ESMTPSA id
 g19sm3947617pfc.33.2022.01.24.19.14.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Jan 2022 19:14:53 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW02
Date: Mon, 24 Jan 2022 20:14:31 -0700
Message-ID: <0e4101d81199$b8af14e0$2a0d3ea0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0E42_01D8115F.0C54F7D0"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQG6SOoJiuFgmDHDBz4PYiOin/UFhg==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Jan 2022 03:14:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55960

This is a multipart message in MIME format.

------=_NextPart_000_0E42_01D8115F.0C54F7D0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW04 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14697> 14697

Hang due to missing asyncio loop argument: Initialising tasks at 44%

randy.macleod@windriver.com

jatedev@gmail.com

0.0.0

3.1.14


=20

	=20

jatedev@gmail.com

jatedev@gmail.com

3.1.14

0.0.0

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0E42_01D8115F.0C54F7D0
Content-Type: text/html;
	boundary="----=_NextPart_000_0E24_01D80630.582B76F0";
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
new milestone in WW04 are listed below: <o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1240 =
style=3D'width:930.0pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom style=3D'width:33.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID<o:p></o:p></span></b></p></td><td =
width=3D544 nowrap valign=3Dbottom style=3D'width:408.0pt;border:solid =
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
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D55 =
nowrap valign=3Dbottom style=3D'width:41.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D55 =
nowrap valign=3Dbottom style=3D'width:41.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14697" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14697</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D544 nowrap valign=3Dbottom =
style=3D'width:408.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Hang due to missing asyncio loop argument: =
Initialising tasks at 44%<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>jatedev@gmail.com<o:p></o:p></span></p></td><td =
width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.1.14<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'></td><td width=3D544 nowrap valign=3Dbottom =
style=3D'width:408.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></p></td><td width=3D236 =
nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>jatedev@gmail.com<o:p></o:p></span></p></td><td =
width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>jatedev@gmail.com<o:p></o:p></span></p></td><td =
width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.1.14<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td></tr></table><p =
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
------=_NextPart_000_0E42_01D8115F.0C54F7D0--


