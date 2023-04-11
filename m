Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F7D3C7619A
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 03:41:59 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web10.5681.1681184512811870239
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Apr 2023 20:41:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PhMGDJZn;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-632384295f6so566208b3a.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Apr 2023 20:41:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1681184512;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r5gwPvvDFXufrLHhG1NwGnZ/Gk5fdQR4dq5wy3KP1Tw=;
        b=PhMGDJZn7ApLb66OxYpusUpxoBhQg3ibwPTltBfmDHPQyEMcjbv+sCDSrxuMm+gPOJ
         szDQp1ni4HFcsyHZ8fyMrTCqodaYhbI9Tk+1bFElGhAuUYhUc88Ne2LZJxFXluJtoCsR
         CtsLOzUeDDLOgdzkjUKIAlaJfLe7d3let9zqK57c/PanfzZIdPrauqucNvJ+4xUF1P1Z
         CI6T8TY9nKGjWNv5ZXOgs1l6P5Uf998dzUno4A+QpofhWbIWX+cI1a3R5fE1gQKzD8t6
         Sxl4Wz/q+GTkO5ZpUlQoRLBtjzYXwlM2BVzWi7lOa9Ks3Y5bCgATbEhI/LY38ylG5V2a
         ovhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681184512;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r5gwPvvDFXufrLHhG1NwGnZ/Gk5fdQR4dq5wy3KP1Tw=;
        b=vi5W/97gcjFsDy4tecgnZnqVQvYHVXgx1d4TYOGK7nyNQgBpJL09lvc6rQJN1uJQAl
         Kjueyl4qgCt5UfFxLIJNNlADgioSW+AdvuFEmD9q2uUHd70bUduFXLxS32Kr8qDB9iH8
         7Lt/wWpma3J33O8jYZcncmeX3RQadYsEx+lMfQNoRtivABWNZyzBPDqNU6YFp8PLGGH6
         JYK9/pLrMB1sG5mYakvcqk9XvDIqnLOnuS64I7oO7FNj1Fm9ZuWIcm1fUmklBwSKizS6
         y+hr6ChG6/QDl/vKMva4Unv3qB8pcYtd3RGmDkIPhl9LkuAQ0Wc0LhF5wM621sYv0q83
         Qj1A==
X-Gm-Message-State: AAQBX9eyP06+LSEv8XV6yrSVLPaMfQsLJ2jIXr+TE/GM842XbXiXASR9
	vmC+vHFPS1shnAhLL16YuABZF+8k7Ec=
X-Google-Smtp-Source: AKy350Z4K2QvnRRqUVrMJrfHd8TLAaA0bzvIhYmIXfqsR2Zc1z8X+SYIrfSbJ/Rn5xe8PgzGnIvkZg==
X-Received: by 2002:aa7:9435:0:b0:633:1938:e302 with SMTP id y21-20020aa79435000000b006331938e302mr9928637pfo.18.1681184512173;
        Mon, 10 Apr 2023 20:41:52 -0700 (PDT)
Received: from skjolley ([2600:1011:a124:5236:fab7:c3f3:b8a7:82b5])
        by smtp.gmail.com with ESMTPSA id p15-20020aa7860f000000b006227c3d5e29sm8958615pfn.16.2023.04.10.20.41.51
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Apr 2023 20:41:51 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW14
Date: Mon, 10 Apr 2023 20:41:51 -0700
Message-ID: <039101d96c27$8e08b540$aa1a1fc0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0392_01D96BEC.E1B06CF0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdlsJ3AqDX9DpAOKThS5dXgJoWlIYA==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 03:41:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59664

This is a multipart message in MIME format.

------=_NextPart_000_0392_01D96BEC.E1B06CF0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

=20

YP M+ or high bugs which moved to a new milestone in WW14 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


High

14065

Automated ptest regression testing

randy.macleod@windriver.com

alexis.lothore@bootlin.com

4.2 M4

4.3 M1


=20

15089

Enabling create-spdx causes autobuilder failures

randy.macleod@windriver.com

david.reyna@windriver.com

0.0.0

4.3 M1


=20

15094

ctrl-c aborts bitbake immediately

randy.macleod@windriver.com

richard.purdie@linuxfoundation.org

0.0.0

4.3 M1


Medium+

14125

busybox wget ssl is exposed to MitM attack due to CVE-2018-1000500

randy.macleod@windriver.com

randy.macleod@windriver.com

4.2 M4

4.3 M1


=20

15091

libarchive does't respect DISTRO_FEATURES acl and xattr for native =
target

randy.macleod@windriver.com

p.lobacz@welotec.com

0.0.0

4.3 M1


=20

15090

rust recipe zvariant is not reproducible

randy.macleod@windriver.com

frederic.martinsons@gmail.com

0.0.0

4.3 M1


=20

15092

Document devicetree.bbclass

randy.macleod@windriver.com

michael.opdenacker@bootlin.com

0.0.0

4.3 M1


=20

15093

Add Yocto Compatible icon to Layer Index.

randy.macleod@windriver.com

unassigned@yoctoproject.org

0.0.0

4.3 M2


=20

15095

recipes-devtools/go-1.20 native: not possible to build with go 1.4

randy.macleod@windriver.com

jonas.licht@gmail.com

0.0.0

4.3 M1

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0392_01D96BEC.E1B06CF0
Content-Type: text/html;
	boundary="----=_NextPart_000_0B51_01D9662A.1CCD3390";
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
class=3DWordSection1><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>All,<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>YP M+ or high =
bugs which moved to a new milestone in WW14 are listed below: =
<o:p></o:p></span></p><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 width=3D1331 =
style=3D'margin-left:-1.9pt;border-collapse:collapse'><tr =
style=3D'height:14.5pt'><td width=3D69 valign=3Dtop =
style=3D'width:51.6pt;border:solid windowtext =
1.0pt;background:#CCCCFF;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D47 valign=3Dtop style=3D'width:35.4pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span style=3D'color:black'>Bug =
ID<o:p></o:p></span></b></p></td><td width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span style=3D'color:black'>Short =
Description<o:p></o:p></span></b></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Changer<o:p></o:p></span></b></p></td><td =
width=3D261 valign=3Dtop style=3D'width:195.85pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D58 =
valign=3Dtop style=3D'width:43.55pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D58 =
valign=3Dtop style=3D'width:43.55pt;border:solid windowtext =
1.0pt;border-left:none;background:#CCCCFF;padding:0in 5.4pt 0in =
5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Became<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:14.5pt'><td width=3D69 valign=3Dtop =
style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'>High<o:p></o:p></span></b></p></td><td width=3D47 =
valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14065<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Automated =
ptest regression testing<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>alexis.lothore@bootlin.com<o:p></o:p></span></p></t=
d><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15089<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Enabling =
create-spdx causes autobuilder failures<o:p></o:p></span></p></td><td =
width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15094<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>ctrl-c aborts =
bitbake immediately<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14125<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>busybox wget =
ssl is exposed to MitM attack due to =
CVE-2018-1000500<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15091<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>libarchive =
does't respect DISTRO_FEATURES acl and xattr for native =
target<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>p.lobacz@welotec.com<o:p></o:p></span></p></td><td =
width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15090<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>rust recipe =
zvariant is not reproducible<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>frederic.martinsons@gmail.com<o:p></o:p></span></p>=
</td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15092<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Document =
devicetree.bbclass<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>michael.opdenacker@bootlin.com<o:p></o:p></span></p=
></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15093<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Add Yocto =
Compatible icon to Layer Index.<o:p></o:p></span></p></td><td =
width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M2<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15095<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>recipes-devtools/go-1.20 native: not possible to =
build with go 1.4<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>jonas.licht@gmail.com<o:p></o:p></span></p></td><td=
 width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>0.0.0<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.3 =
M1<o:p></o:p></span></p></td></tr></table><p class=3DMsoNormal><span =
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
------=_NextPart_000_0392_01D96BEC.E1B06CF0--


