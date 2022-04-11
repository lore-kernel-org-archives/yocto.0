Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B0CC38A02
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:39 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web08.4723.1649720468179665093
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 16:41:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IU3Tox6A;
 spf=pass (domain: gmail.com, ip: 209.85.216.47,
 mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id
 mm4-20020a17090b358400b001cb93d8b137so863495pjb.2
        for <yocto@lists.yoctoproject.org>;
 Mon, 11 Apr 2022 16:41:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=dy4OMrtyq3gnQr3CPbCFnRyAV9Wi5+QYivWHJNsOqsQ=;
        b=IU3Tox6Ao+1DsXFrq30GdsWC3KKSlOE8ETUSngUHzdtZsDuJZQ7mDwkQ7XWXrP1SZd
         5d5CUTSbYjcy5iWqaDjtILoJNddEA23b52/0ULWeY+BJqz4RyOSgb7WiFABABiBJuWYm
         9pbS9S4521PQtn1w6r0ODM6KZVm7svuY7OR7kw5nQggYrGcddJgvQEkP3j7Ll//h1akX
         Q20s7+Br4E5P4Ssfm2TDUglZxjR7vtFUSlCZlWFIKqBATC9NO/XnoVjkgQmfdc39BoEV
         IsTkrL9PcOW0O8mZjAhZtIqPctEtOPsuENUZ0MDgXG5xnxk9/rg9yRXqNELy/BAIb69M
         X8Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=dy4OMrtyq3gnQr3CPbCFnRyAV9Wi5+QYivWHJNsOqsQ=;
        b=yIz53k7Flr9vC4hMxSZRVJX45VO99fKhNnyhqljtsFGjDW16GOxjrmyypDd6V165TC
         O5RhLbapty2LyVmt+e3BmHpaebDet7ARJcAKHQiVMTke4RD0r/bag0l94IokNw2mYsm3
         2FAdhcu65to5dQFMw7EQhEJ5oHQ8hRHWv43pMHx3FL2F6mCReRNAT4BD3FyFVvO8Lxlm
         iDQQQqnbT8T6/FCrMfpB8vWR2+Hcs88EwAr853i5a1fxxIHe8tY7COQcv63LOCwoF2DJ
         Ncnloi9//uX0inQe6nWz0RNiwjEOqKoXXUqBx0mCCUxvjlMsfXyqRIdwpLqPsqkE+Qwn
         8Lew==
X-Gm-Message-State: AOAM531HqFBjSFmsfcgL9ymzKl8lz58EiyradX5xZpR6S0jrTunFJ6rJ
	jicO9XDa3+bn3wS2VFdBwPXZrY5NIdU=
X-Google-Smtp-Source: 
 ABdhPJyLrIxIhueEDoA3INP4kYS+knNX63gkXdfRAn3J+dg/zDF/ZD425S73fttT/7IIpQxemxKq5w==
X-Received: by 2002:a17:902:76ca:b0:157:1c6:5660 with SMTP id
 j10-20020a17090276ca00b0015701c65660mr24944944plt.105.1649720467677;
        Mon, 11 Apr 2022 16:41:07 -0700 (PDT)
Received: from skjolley ([2600:1011:a106:74:3971:1874:2802:a0d3])
        by smtp.gmail.com with ESMTPSA id
 d21-20020a056a0024d500b004fb0e7c7c3bsm38167570pfv.161.2022.04.11.16.41.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Apr 2022 16:41:06 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW15
Date: Mon, 11 Apr 2022 16:41:05 -0700
Message-ID: <142401d84dfd$9d52e5f0$d7f8b1d0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1425_01D84DC2.F0F8C8E0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdhN/YI+lduEwI3fR4G0NAUwWudP7w==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56733

This is a multipart message in MIME format.

------=_NextPart_000_1425_01D84DC2.F0F8C8E0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW15 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14495> 14495

Implement CVE checking on all packages in a SBOM/manifest

randy.macleod@windriver.com

ross@burtonini.com

3.5 M4

3.6 M1

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_1425_01D84DC2.F0F8C8E0
Content-Type: text/html;
	boundary="----=_NextPart_000_0C66_01D83D45.7F9D4280";
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
new milestone in WW15 are listed below: <o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1265 =
style=3D'width:948.75pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D73 nowrap valign=3Dbottom =
style=3D'width:54.9pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D52 nowrap valign=3Dbottom style=3D'width:38.8pt;border:solid =
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
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D64 =
nowrap valign=3Dbottom style=3D'width:48.05pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt 0in =
5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D53 =
nowrap valign=3Dbottom style=3D'width:40.0pt;border:solid windowtext =
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
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14495" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>14495</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D544 nowrap valign=3Dbottom =
style=3D'width:408.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Implement CVE checking on all packages in a =
SBOM/manifest<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>ross@burtonini.com<o:p></o:p></span></p></td><td =
width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.5 M4<o:p></o:p></span></p></td><td width=3D53 =
nowrap valign=3Dbottom =
style=3D'width:40.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.6 M1<o:p></o:p></span></p></td></tr></table><p =
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
------=_NextPart_000_1425_01D84DC2.F0F8C8E0--


