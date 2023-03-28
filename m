Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8254C761A6
	for <webhook@archiver.kernel.org>; Tue, 28 Mar 2023 00:33:12 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web10.54866.1679963582884558063
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Mar 2023 17:33:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=O7o7e4mN;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id fy10-20020a17090b020a00b0023b4bcf0727so10833557pjb.0
        for <yocto@lists.yoctoproject.org>; Mon, 27 Mar 2023 17:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679963582;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MAWcrfaip/EcgFIxrLZCKSSvhwIBKk4SWJebg/cFmQo=;
        b=O7o7e4mNtygTqH/oOCdwTreiQhWiJMJZLh7SDGPsCHoECcssWaMhxWndC3g/+nMaVy
         abm2HvwQn8FWAae1RijzWg7SB4ZLn8uPvxe5vBmp8Y6QwVIMkGJVI2++8VLrL+JhbTI/
         GoOsmUlJcLoDByU0pb4cbZ4iI6Ww/YGY3LttqUytQuUc8UR6WZbJhS1h/dK2qFw77oTc
         L3TOGTGWW778W57nuxsWl8kTnocgdb5vl2CBd9wPpbA1IhpJ+XgFIv8In7X0Qmf/frgu
         UcUGUW2/j/4oT/EVzQmyPNos8KJY7bhYTyUPYLxKfZ/gUQ04YO4yjSvW8J8RX34HzU+2
         5zrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679963582;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MAWcrfaip/EcgFIxrLZCKSSvhwIBKk4SWJebg/cFmQo=;
        b=XyThK/rWq6gAv9QuArpsJIAsB9VNRxiOAZ81KbsXbcvD1bOXbzmS4Pc73pPoyy/Ump
         Z0n5v1qCffLh1FSuRCx8qQzk0mQwJpB7azfIsb87nTvo42WgoUoOim55h++iKSxm92Bo
         71o9yMcvqkvt3xGDhNuP2XYoRuI1N0RLDaj2ENze/e0wwck2Z/5YIFEY2oD5Hw5F+Xwc
         rGMgXapzvrnQVJB56giX2aQlmMMKWGkR9A0E8K5X0/4HyM5XgOR3W6K8B4rsNUDslq5T
         /PVgYTQFCnPu88vt1KpDlbahRmWg4y2/gJw54an1SjxyO+QoSXQ7RN5eLE+bDhEB3l5p
         nsrA==
X-Gm-Message-State: AAQBX9dGguc472fPXWYe9CPmFumIBZoplECHx1bl4Pv27ZXzKUolDHHU
	qSE9a7siro2bmGfwNUzWEkQ=
X-Google-Smtp-Source: AKy350YnasBhqeVfjf2dL/gjtveUJPXVnj8O/dXCSrBNyCUfUkxEtSdF3YQAxStdPnG31PryOr//Hg==
X-Received: by 2002:a17:90a:1990:b0:23d:16d6:2f05 with SMTP id 16-20020a17090a199000b0023d16d62f05mr15305084pji.22.1679963582299;
        Mon, 27 Mar 2023 17:33:02 -0700 (PDT)
Received: from skjolley ([2600:1011:a124:5236:fab7:c3f3:b8a7:82b5])
        by smtp.gmail.com with ESMTPSA id p11-20020a17090a4f0b00b0023cff7e39a6sm4890670pjh.22.2023.03.27.17.33.01
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2023 17:33:01 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW12
Date: Mon, 27 Mar 2023 17:33:01 -0700
Message-ID: <0f5401d9610c$dadabb50$909031f0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0F55_01D960D2.2E7FDAF0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdlhDLJ3lZAQ5S8KQ0+qB9zJ9KLM6w==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 00:33:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59536

This is a multipart message in MIME format.

------=_NextPart_000_0F55_01D960D2.2E7FDAF0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,

=20

YP M+ or high bugs which moved to a new milestone in WW12 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

13533

Devtool finish on _git package with SRCPV in PV points to wrong WORKDIR

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M3

4.3 M1


=20

14141

devtool modify fails with submodules

randy.macleod@windriver.com

david.reyna@windriver.com

4.2 M3

4.3 M1


=20

14890

create-spdx should parse license strings with and without spaces between =
license terms

randy.macleod@windriver.com

JPEWhacker@gmail.com

4.2 M3

4.3 M1


=20

15077

AB-INT: unfs couldn't bind to tcp port 3049

randy.macleod@windriver.com

unassigned@yoctoproject.org

0.0.0

4.2 M4


=20

15074

syncfs probe fails with newer compilers

randy.macleod@windriver.com

richard.purdie@linuxfoundation.org

3.1.23

4.3 M1


=20

15075

filemap.py does not handle 64KB block size

randy.macleod@windriver.com

geissonator@yahoo.com

0.0.0

4.3 M1


=20

15078

runqemu error string TypeError: not all arguments converted during =
string formatting

randy.macleod@windriver.com

JPEWhacker@gmail.com

0.0.0

4.2 M4

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0F55_01D960D2.2E7FDAF0
Content-Type: text/html;
	boundary="----=_NextPart_000_0B07_01D95B3C.13B2A360";
	charset="UTF-8"
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
class=3DWordSection1><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>All,<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>YP M+ or high =
bugs which moved to a new milestone in WW12 are listed below: =
<o:p></o:p></span></p><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 width=3D1331 =
style=3D'margin-left:-1.9pt;border-collapse:collapse'><tr =
style=3D'height:14.5pt'><td width=3D73 valign=3Dtop =
style=3D'width:54.95pt;border:solid windowtext =
1.0pt;background:#CCCCFF;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D52 valign=3Dtop style=3D'width:38.8pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span style=3D'color:black'>Bug =
ID<o:p></o:p></span></b></p></td><td width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span style=3D'color:black'>Short =
Description<o:p></o:p></span></b></p></td><td width=3D252 valign=3Dtop =
style=3D'width:189.3pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Changer<o:p></o:p></span></b></p></td><td =
width=3D260 valign=3Dtop style=3D'width:195.3pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D58 =
valign=3Dtop style=3D'width:43.45pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D63 =
valign=3Dtop style=3D'width:47.05pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Became<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D73 valign=3Dtop =
style=3D'width:54.95pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D52 valign=3Dtop =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>13533<o:p></o:p></span></b></p></td><td =
width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Devtool finish =
on _git package with SRCPV in PV points to wrong =
WORKDIR<o:p></o:p></span></p></td><td width=3D252 valign=3Dtop =
style=3D'width:189.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D260 valign=3Dtop =
style=3D'width:195.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D58 valign=3Dtop =
style=3D'width:43.45pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D63 valign=3Dtop =
style=3D'width:47.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D73 valign=3Dtop style=3D'width:54.95pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D52 valign=3Dtop =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14141<o:p></o:p></span></b></p></td><td =
width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>devtool modify =
fails with submodules<o:p></o:p></span></p></td><td width=3D252 =
valign=3Dtop =
style=3D'width:189.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D260 valign=3Dtop =
style=3D'width:195.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D58 valign=3Dtop =
style=3D'width:43.45pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D63 valign=3Dtop =
style=3D'width:47.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D73 valign=3Dtop style=3D'width:54.95pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D52 valign=3Dtop =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14890<o:p></o:p></span></b></p></td><td =
width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>create-spdx =
should parse license strings with and without spaces between license =
terms<o:p></o:p></span></p></td><td width=3D252 valign=3Dtop =
style=3D'width:189.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D260 valign=3Dtop =
style=3D'width:195.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>JPEWhacker@gmail.com<o:p></o:p></span></p></td><td =
width=3D58 valign=3Dtop =
style=3D'width:43.45pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D63 valign=3Dtop =
style=3D'width:47.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D73 valign=3Dtop style=3D'width:54.95pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D52 valign=3Dtop =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15077<o:p></o:p></span></b></p></td><td =
width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>AB-INT: unfs =
couldn't bind to tcp port 3049<o:p></o:p></span></p></td><td width=3D252 =
valign=3Dtop =
style=3D'width:189.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D260 valign=3Dtop =
style=3D'width:195.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D58 valign=3Dtop =
style=3D'width:43.45pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D63 =
valign=3Dtop =
style=3D'width:47.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D73 valign=3Dtop style=3D'width:54.95pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D52 valign=3Dtop =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15074<o:p></o:p></span></b></p></td><td =
width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>syncfs probe =
fails with newer compilers<o:p></o:p></span></p></td><td width=3D252 =
valign=3Dtop =
style=3D'width:189.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D260 valign=3Dtop =
style=3D'width:195.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.45pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>3.1.23<o:p></o:p></span></p></td><td width=3D63 =
valign=3Dtop =
style=3D'width:47.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D73 valign=3Dtop style=3D'width:54.95pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D52 valign=3Dtop =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15075<o:p></o:p></span></b></p></td><td =
width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>filemap.py =
does not handle 64KB block size<o:p></o:p></span></p></td><td =
width=3D252 valign=3Dtop =
style=3D'width:189.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D260 valign=3Dtop =
style=3D'width:195.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>geissonator@yahoo.com<o:p></o:p></span></p></td><td=
 width=3D58 valign=3Dtop =
style=3D'width:43.45pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D63 =
valign=3Dtop =
style=3D'width:47.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D73 valign=3Dtop style=3D'width:54.95pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D52 valign=3Dtop =
style=3D'width:38.8pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15078<o:p></o:p></span></b></p></td><td =
width=3D573 valign=3Dtop =
style=3D'width:429.65pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>runqemu error =
string TypeError: not all arguments converted during string =
formatting<o:p></o:p></span></p></td><td width=3D252 valign=3Dtop =
style=3D'width:189.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D260 valign=3Dtop =
style=3D'width:195.3pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>JPEWhacker@gmail.com<o:p></o:p></span></p></td><td =
width=3D58 valign=3Dtop =
style=3D'width:43.45pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D63 =
valign=3Dtop =
style=3D'width:47.05pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr></table><p class=3DMsoNormal><span =
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
------=_NextPart_000_0F55_01D960D2.2E7FDAF0--


