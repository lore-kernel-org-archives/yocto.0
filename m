Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0E8A8C77B61
	for <webhook@archiver.kernel.org>; Mon, 24 Apr 2023 20:59:54 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.64163.1682369984727898448
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Apr 2023 13:59:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=gGWUpaIe;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1a66b9bd893so43152885ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 13:59:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682369984; x=1684961984;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=13giw2m79bP1yZUBHfATktDQUvRq04YRsFWpT+t/Rnk=;
        b=gGWUpaIeqlYtxTmvUU1//H7SCtQNxM8FtMhObCGiCJzpf39jwsjZ56h4t3pGJFEtSw
         Zq+eZkHyomAnoNrBpq3REGiPTfg0Hcf96ERadBdiuVjo3sxHx1HR/J2D86QO5IS2+0o4
         oBd0W4apBBxNjsc+k0tacJ3xD8lN8rftjZ5VZcjKVtYIFLIJkUtgt60kruc/MAep3daT
         /NhAHNdGq12wL8rz+qoxApXC8ttSUMxMEy3+rfB2+qIqZvGQwH6S8zeC0WwK2NDQWFg0
         d+1yiHu6FZGCSJXXUmBT/TK757D0/B9SS+QheX5Wr1vn/n+ZyrgwCGUDFHI5JWxuL5dX
         aBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682369984; x=1684961984;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=13giw2m79bP1yZUBHfATktDQUvRq04YRsFWpT+t/Rnk=;
        b=HlbeZWc95QrmUGWEexzD0JClyIoUrv/I+DYjl2VKbDQD2gs+Ukg+rTDTRPwlbzwhZJ
         YumQm6LlokZ1fyBBobKZiOHOYf1ALAIq+f3D3+r7M3U4LpREzvuroZcyOi0L1/UPSj2L
         m1ScqGWsnE+NGum3TUyV8WeI92lad6dtJFL2M/Dh9VOxC8qCg3oH78GXZ41+ADn2jl22
         4dM9gYa3cruyIO8jY9Po8Vt6IdBdFUDI2aX9Ez/AT5/VY5RYXl7hQNaXNfgj9rQ7IGRO
         rPKmx8zKZtDz8UTLkk/9Bo4pvFPAQDWYpTNADVxq0uP3+zcLV+0cc8ZXS73WbVqDZ6vR
         72tg==
X-Gm-Message-State: AAQBX9c6t5XMXDoMD11SozKpDkc+s4qRwHRcVCVaKyrZrtzDO1Wq6LDr
	C/GdTMmWQ6AZppAf7RZl/k7yY3g4ipY=
X-Google-Smtp-Source: AKy350ZpF3w1d/fok48aP/zqyoUQ+WS94K8EsTCpjdmgds/CrX+CKWVNEm35EH/zgHLwzn+v9/2l4A==
X-Received: by 2002:a17:902:82c7:b0:19e:61cc:6793 with SMTP id u7-20020a17090282c700b0019e61cc6793mr14507300plz.48.1682369984109;
        Mon, 24 Apr 2023 13:59:44 -0700 (PDT)
Received: from skjolley ([2600:1011:a110:fb5:3813:85e0:f5e9:8cd9])
        by smtp.gmail.com with ESMTPSA id j8-20020a17090276c800b001a686578b3dsm6910953plt.307.2023.04.24.13.59.43
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Apr 2023 13:59:43 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW16
Date: Mon, 24 Apr 2023 13:59:42 -0700
Message-ID: <104d01d976ef$b1b1a150$1514e3f0$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_104E_01D976B5.05564BC0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: Adl2749P82hKIiaeTl2mWZHu6Rn+lQ==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Apr 2023 20:59:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59772

This is a multipart message in MIME format.

------=_NextPart_000_104E_01D976B5.05564BC0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW16 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

13218 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13218>=20

native programs from RSS that alias hosttools can cause non-reproducible =
builds

randy.macleod@windriver.com

JPEWhacker@gmail.com

4.2

4.3

=09
13378 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13378>=20

Buildtools tarball python performance degraded by reproducibile builds

randy.macleod@windriver.com

JPEWhacker@gmail.com

4.2

4.3

=09
13679 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13679>=20

yocto-check-layer can fail if a layer adds new licenses

randy.macleod@windriver.com

JPEWhacker@gmail.com

4.2

4.3

=09
13917 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13917>=20

Remove debug_domain logic

randy.macleod@windriver.com

JPEWhacker@gmail.com

4.2

4.3

=09
14021 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14021>=20

[meta-mingw] nativesdk-openssl: Configure failed

randy.macleod@windriver.com

JPEWhacker@gmail.com

4.2

4.3

=09
14576 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14576>=20

Using overrides on security flags may produce an incorrect =
meta-environment for the generated SDK

randy.macleod@windriver.com

mark.hatle@kernel.crashing.org

0.0.0

4.3 M2

=09
15102 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15102>=20

patching path for cargo based recipe don't work with virtual manifest

randy.macleod@windriver.com

randy.macleod@windriver.com

0.0.0

4.3 M2

=09
15104 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15104>=20

Move ptest doc to Testing manual

randy.macleod@windriver.com

michael.opdenacker@bootlin.com

0.0.0

4.3 M1

=09
15106 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15106>=20

Add package specification for ptest (upstream test suite, ...)

randy.macleod@windriver.com

michael.opdenacker@bootlin.com

0.0.0

4.3 M1

=09
15107 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15107>=20

python3targetconfig.bbclass: PYTHONPATH is overwritten instead of =
extended

randy.macleod@windriver.com

johannes.schrimpf@blueye.no

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


------=_NextPart_000_104E_01D976B5.05564BC0
Content-Type: text/html;
	boundary="----=_NextPart_000_0392_01D96BEC.E1B06CF0";
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
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
style=3D'font-size:10.0pt;color:black'>All,<br><br>YP M+ or high bugs =
which moved to a new milestone in WW16 are listed below: </span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Priority</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Bug ID</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Short Description</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Changer</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Owner</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Was</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black =
1.0pt;background:#DCE6F2;padding:.75pt .75pt .75pt =
.75pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Became</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'font-size:10.0pt;color:black'>Medium+</span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13218">13218<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>native programs from RSS that =
alias hosttools can cause non-reproducible builds</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>JPEWhacker@gmail.com</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.2</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.3</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13378">13378<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Buildtools tarball python =
performance degraded by reproducibile builds</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>JPEWhacker@gmail.com</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.2</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.3</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13679">13679<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>yocto-check-layer can fail if a =
layer adds new licenses</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>JPEWhacker@gmail.com</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.2</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.3</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13917">13917<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Remove debug_domain =
logic</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>JPEWhacker@gmail.com</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.2</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.3</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14021">14021<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>[meta-mingw] nativesdk-openssl: =
Configure failed</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>JPEWhacker@gmail.com</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.2</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'font-size:10.0pt;color:black'>4.3</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14576">14576<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Using overrides on security flags =
may produce an incorrect meta-environment for the generated =
SDK</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>mark.hatle@kernel.crashing.org</sp=
an><span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>0.0.0</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>4.3 M2</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15102">15102<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>patching path for cargo based =
recipe don't work with virtual manifest</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>0.0.0</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>4.3 M2</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15104">15104<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Move ptest doc to Testing =
manual</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>michael.opdenacker@bootlin.com</sp=
an><span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>0.0.0</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>4.3 M1</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15106">15106<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>Add package specification for =
ptest (upstream test suite, ...)</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>michael.opdenacker@bootlin.com</sp=
an><span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>0.0.0</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>4.3 M1</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td valign=3Dbottom style=3D'border:solid black =
1.0pt;padding:.75pt .75pt .75pt .75pt;height:15.0pt'></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span =
style=3D'font-size:10.0pt;color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15107">15107<=
/a></span></b><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>python3targetconfig.bbclass: =
PYTHONPATH is overwritten instead of extended</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>randy.macleod@windriver.com</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>johannes.schrimpf@blueye.no</span>=
<span style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>0.0.0</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td><td =
valign=3Dbottom style=3D'border:solid black 1.0pt;padding:.75pt .75pt =
.75pt .75pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'font-size:10.0pt;color:black'>4.3 M1</span><span =
style=3D'font-size:10.0pt'><o:p></o:p></span></p></td></tr></table><p =
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
------=_NextPart_000_104E_01D976B5.05564BC0--


