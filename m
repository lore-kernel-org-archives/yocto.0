Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06F3DC7EE24
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 01:08:27 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.113402.1682989702064765963
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 May 2023 18:08:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=EGOwT3hl;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-63f273b219eso2303016b3a.1
        for <yocto@lists.yoctoproject.org>; Mon, 01 May 2023 18:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682989701; x=1685581701;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=tWr/B4Y1vgJfCEnhD9tZOY78Zl0UhHSEUYTN8kiMGu0=;
        b=EGOwT3hlsQqvtHHjUwoVBEoRGOXl/7C9+Dg/Ju+ZQrV3R+y1rssG/zYOGbt0c32VMB
         eSu8YYAZMpWPa6bTBsSyDc1ZdzqFbsuIKwkAtPq071l9qqi6CLvCjN3tgzisQB6rgS8C
         4JwZjEo0HbBPzZgDKhdnL23b542hnLWFeY/27SywZ0O+8euLf2BUxD/qsYlyQlz5wxrK
         zwM4SxD31qLbWTEYDS2zJNmLf+ujL9JZTI3IdCbKZWvPm4R6iW9DO16pkz9ZS5OmO8mP
         aGSZEn+WhqmOChFUALorHYagps0RumS3RjkLe2Q+ZKeSD5cCexK80trSw43Vj8kRAsKy
         bg9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682989701; x=1685581701;
        h=thread-index:content-language:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tWr/B4Y1vgJfCEnhD9tZOY78Zl0UhHSEUYTN8kiMGu0=;
        b=jyDeuilttIjC6KthhHCUBv8Iw3NtNnvbtDxMXub9x7MaJKpIa/+Co/lr3MI4pUj1rc
         WdRSgDTwq+FxxdTQgq4gDxO8K3tKijOgrrpS6D3EnLa0YgVkeJiO0IhZY5LN8KpHc6i/
         xN/iAaZJ5nGN1B0rcvxl2lxVAezpfbbZKxi6h/eEBUAlRUE+bpm9XfXNy3l38/A+wa5w
         ckj215fCM91tH1PGAln+ElIG3puJkjnWKZOs5Wu+Oae0gJu273XYuwaKTQhzPvCvBlcf
         P381KjjLRm3ZPsj21GZWgQrdjMaGMrvpQi5dZEJAnmlyEN0WVRjfN5qZI67DIlivH37l
         tgxQ==
X-Gm-Message-State: AC+VfDwIc2RuCucEqiTsEzsoJLwKNW/TJqw2fWPvoKHBj9hshC3jb5SU
	Ghh56gcOIVOZmQ8XbMLK6O9w/pxbkA0=
X-Google-Smtp-Source: ACHHUZ6IEaR0NWS+C+SgQ9IvHE3OLbS4pnakI4ZBoCTIwBQCRE6m1bcDNfPPoAO+yjn+jKknW6s5vw==
X-Received: by 2002:a05:6a00:2392:b0:641:4e80:a7c0 with SMTP id f18-20020a056a00239200b006414e80a7c0mr9933435pfc.22.1682989701450;
        Mon, 01 May 2023 18:08:21 -0700 (PDT)
Received: from skjolley ([2600:1011:a110:fb5:3813:85e0:f5e9:8cd9])
        by smtp.gmail.com with ESMTPSA id fa9-20020a056a002d0900b0062622ae3648sm20447732pfb.78.2023.05.01.18.08.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 May 2023 18:08:21 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW17
Date: Mon, 1 May 2023 18:08:19 -0700
Message-ID: <23bc01d97c92$96170220$c2450660$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_23BD_01D97C57.E9B989B0"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: Adl8kn8o/JUJUyXJSVKRhyqUkP+8kA==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 01:08:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59830

This is a multipart message in MIME format.

------=_NextPart_000_23BD_01D97C57.E9B989B0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW17 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

14955 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14955>=20

eSDK/devtool/create-spdx: if you enable create-spdx it breaks the SDK

richard.purdie@linuxfoundation.org

david.reyna@windriver.com

4.2 M4

4.3 M1

=09
15040 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15040>=20

zephyr menuconfig doesn't work

richard.purdie@linuxfoundation.org

naveen.kumar.saini@intel.com

4.2 M4

4.3 M1

=09
15067 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15067>=20

System groups like sgx, wheel, renderer etc. which are not in any recipe =
are not being set by useradd-staticids bbclass

richard.purdie@linuxfoundation.org

p.lobacz@welotec.com

4.2 M4

4.3 M1

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_23BD_01D97C57.E9B989B0
Content-Type: text/html;
	boundary="----=_NextPart_000_104E_01D976B5.05564BC0";
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
class=3DWordSection1><p class=3DMsoNormal>All,<br><br>YP M+ or high bugs =
which moved to a new milestone in WW17 are listed below: <span =
style=3D'color:black'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1056 style=3D'width:791.95pt;border-collapse:collapse'><tr =
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
style=3D'color:black'>Owner</span><o:p></o:p></b></p></td><td width=3D52 =
valign=3Dbottom style=3D'width:39.35pt;border:solid black =
1.0pt;border-left:none;background:#DBE5F1;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was</span><o:p></o:p></b></p></td><td width=3D42 =
valign=3Dbottom style=3D'width:31.85pt;border:solid black =
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
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14955" =
target=3D"_blank">14955</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>eSDK/devtool/create-spdx: if you enable create-spdx it =
breaks the SDK<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>david.reyna@windriver.com<o:p></o:p></p></td><td =
width=3D52 valign=3Dbottom =
style=3D'width:39.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.2 =
M4<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15040" =
target=3D"_blank">15040</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>zephyr =
menuconfig doesn't work<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>naveen.kumar.saini@intel.com<o:p></o:p></p></td><td =
width=3D52 valign=3Dbottom =
style=3D'width:39.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.2 =
M4<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15067" =
target=3D"_blank">15067</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>System groups =
like sgx, wheel, renderer etc. which are not in any recipe are not being =
set by useradd-staticids bbclass<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>richard.purdie@linuxfoundation.org<o:p></o:p></p></td><=
td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>p.lobacz@welotec.com<o:p></o:p></p></td><td width=3D52 =
valign=3Dbottom =
style=3D'width:39.35pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.2 =
M4<o:p></o:p></p></td><td width=3D42 valign=3Dbottom =
style=3D'width:31.85pt;border-top:none;border-left:none;border-bottom:sol=
id black 1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M1<o:p></o:p></p></td></tr></table><p class=3DMsoNormal><span =
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
------=_NextPart_000_23BD_01D97C57.E9B989B0--


