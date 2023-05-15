Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09521C77B75
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 23:07:19 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web10.6014.1684192031673214327
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 16:07:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=kr8JIC+l;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-24de2954bc5so9133321a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 16:07:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684192031; x=1686784031;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=J8PzKun72mIcyE22TtNFxJGUlwhQ4knfxrNVu2z+Sf8=;
        b=kr8JIC+lz0Q0sHsSkq5mCLjLcMmk4shh+RrY1ZMoY8mzevtZn71TqA5RqCV/lh0afu
         gDOD/xU4Sh4nMP1YtvJIQMHWiJykoEdkxxM+rCVuuTJHkLsLA/zbmD8zZyJTLNj4oBHn
         QBLnTFQTah+VYjiw/Wuyx0NSgsUysEgM2BrD/JkMajorbRDs7T1GGkqthvYRCNP57H+p
         sequR2SznUBlopAbApN/HqL4Q5VgjLofH3X7RBnktdVa8E4RjagS3A2gKVQX4M3QsyGe
         osrOXl0ZFeZNprxsFQt5QtUSGZNP3Pb1MfqiLPo6+TopXk9+oszmP4SlT0MS4TK88lau
         5Ubw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684192031; x=1686784031;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=J8PzKun72mIcyE22TtNFxJGUlwhQ4knfxrNVu2z+Sf8=;
        b=aLH5PeSyhW6UE316ilP/Ea+SgjRSly8tvOtlP11W6ywVnd+Q1aG/BHdGKynhqktNjG
         htU/0Hqw6+UpZSf9TJdtuGhM1kTmgbLH1AMVmSQ7/Gh4pGThQ0Z5LWJkbc+iMeFR2Sne
         r/mywvaUXS48KFHSZ3YNKL2agbnQ74mynvpkzPsiIe8sZE7DeknbaJBLqifXsZiq8t8R
         m/WbdKtrDNPWkHjfJItjvrA5ME73FwPY+bIVW844qvdom1hHaLMchkWqsPW04aLWVCNw
         IdqppXFbic/mKTLy8pC0HFdI0As+pgnSVxxXDbEQLJwrPDdP0NG5bnTJBi78Elbj5mr4
         UFuQ==
X-Gm-Message-State: AC+VfDzAUl9u8R2s5roslS2aqNoHgKou3WclVcXQG58mrneLBefFNxnT
	++yKOI4/+QsURhZSlvnUUMo=
X-Google-Smtp-Source: ACHHUZ7ajeTE0gQtySCBNQ9N7wDfKa1fbuO4Ajyl0tJyDbrT4oVL4IrADmbsNmshmNjUDx8bN5oXOw==
X-Received: by 2002:a17:90a:4886:b0:24e:1a7:eee6 with SMTP id b6-20020a17090a488600b0024e01a7eee6mr35957572pjh.45.1684192031023;
        Mon, 15 May 2023 16:07:11 -0700 (PDT)
Received: from skjolley ([2600:1011:a110:fb5:3813:85e0:f5e9:8cd9])
        by smtp.gmail.com with ESMTPSA id u13-20020a17090a890d00b002528588560fsm146068pjn.13.2023.05.15.16.07.10
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 May 2023 16:07:10 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW19
Date: Mon, 15 May 2023 16:07:10 -0700
Message-ID: <123801d98781$faf08d20$f0d1a760$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1239_01D98747.4E944D30"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdmHgdLtOB5jv2gqQYSSiRLaDgEawA==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 23:07:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60032

This is a multipart message in MIME format.

------=_NextPart_000_1239_01D98747.4E944D30
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW19 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

14905 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14905>=20

Error in compiling rustfmt does not cause do_compile to fail

randy.macleod@windriver.com

Yash.Shinde@windriver.com

4.3 M4

4.3 M2

=09
15114 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15114>=20

curl build fails when ssh is enable

randy.macleod@windriver.com

steve@sakoman.com

0.0.0

3.1.25

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_1239_01D98747.4E944D30
Content-Type: text/html;
	boundary="----=_NextPart_000_23BD_01D97C57.E9B989B0";
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
which moved to a new milestone in WW19 are listed below: <span =
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
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14905" =
target=3D"_blank">14905</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>Error in =
compiling rustfmt does not cause do_compile to =
fail<o:p></o:p></p></td><td valign=3Dbottom =
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
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M4<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>4.3 =
M2<o:p></o:p></p></td></tr><tr style=3D'height:15.0pt'><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;border-top:none;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><u><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15114" =
target=3D"_blank">15114</a><o:p></o:p></u></b></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p class=3DMsoNormal>curl build =
fails when ssh is enable<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>randy.macleod@windriver.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>steve@sakoman.com<o:p></o:p></p></td><td =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>0.0.0<o:p></o:p></p></td><td valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid black =
1.0pt;border-right:solid black 1.0pt;padding:0in 2.25pt 0in =
2.25pt;height:15.0pt;overflow:hidden'><p =
class=3DMsoNormal>3.1.25<o:p></o:p></p></td></tr></table><p =
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
------=_NextPart_000_1239_01D98747.4E944D30--


