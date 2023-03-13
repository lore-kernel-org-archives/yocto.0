Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17118C61DA4
	for <webhook@archiver.kernel.org>; Mon, 13 Mar 2023 22:40:13 +0000 (UTC)
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
 by mx.groups.io with SMTP id smtpd.web10.8512.1678747209734778615
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Mar 2023 15:40:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WWKWm/Ys;
 spf=pass (domain: gmail.com, ip: 209.85.214.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f176.google.com with SMTP id a9so14609784plh.11
        for <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 15:40:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678747209;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wQGs0dVgmeGXTpKHtzwe/pS6JJGx15YbWX/9SE5jFM4=;
        b=WWKWm/YsDUDDgfoQuMVtIgBlwnyuSxOFysf1tyUmWkhNxGDtP1LkxiU7LflozxCHe1
         nJrkHZE4t3E2XEVcgzRkUdvGXgmxcZoeIgSUNnplT2kXq1L9sarAD8zgRDgkVD+1DM/K
         pMsC3MO3Vbtq+cd1r38fRpKx0fEE04JyHoZXcUGm/Zx2DH0neNmMrd5RuPPe85F2fIzK
         iDXlsOE6jGFigPR0mVJDAMjWWB/0vVTBlCAeUpSFGxB0yYsXPacuKZcjN6phUIMygUNf
         IUdJsTBsFEuhKKreLRGtLwG5EzcfO7ys6ECJYsvpvQ2mJ+WHIiQrooie/hgfnHhVMyZT
         cDhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678747209;
        h=content-language:thread-index:mime-version:message-id:date:subject
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wQGs0dVgmeGXTpKHtzwe/pS6JJGx15YbWX/9SE5jFM4=;
        b=aeTTM+ZDt/nidi1RgCNAjCjlj/i3sDlDEhfxIECbo3rr+Ig1iyawt5uHEbF8DDybFh
         PUnIR++sQy1VGzZauAlWjAHSpizB4paTtSVneIK9e9NcWHOe4oqipRuAGz0ij4jCTSgu
         /RL1LJ46gDPchceuOPNLIf7VkkbUYF6U6ssU9lYGv+vFTN18d8fdN/gSbvhV4LU5S2uU
         0baPNO6JpHW25POMemA49RjLNEcO6Q5DR8YqwB7XtCoASaqojep9RWbfAetRhXPslO+Y
         OJipQtc2SOPFfWxeSxLXpyo3myclmLba2NmTfrDSMpyb1zZPN7ZpbFgzHNf7mmQeoGJI
         fMXQ==
X-Gm-Message-State: AO0yUKUQrx5Kos85nrPiPCjfSKRnVCITcTGQJFTBg8/z24e9pXCD0EU4
	PDfv9cDR4mCSG03vB5DVxSg=
X-Google-Smtp-Source: AK7set9+ypITtimDvOTudS2pWdN+ThrxHRoaWZ+Guod242n+VIDzWvJ18yagQfyDBbPPYuWQOnqzFg==
X-Received: by 2002:a05:6a20:8408:b0:cb:ec5f:3c5b with SMTP id c8-20020a056a20840800b000cbec5f3c5bmr42705118pzd.18.1678747209161;
        Mon, 13 Mar 2023 15:40:09 -0700 (PDT)
Received: from skjolley ([2600:1011:a124:5236:fab7:c3f3:b8a7:82b5])
        by smtp.gmail.com with ESMTPSA id a14-20020a62e20e000000b005a8de0f4c76sm237216pfi.17.2023.03.13.15.40.08
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2023 15:40:08 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@lists.yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW10
Date: Mon, 13 Mar 2023 15:40:08 -0700
Message-ID: <0b7a01d955fc$c4793e60$4d6bbb20$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0B7B_01D955C2.181DC1C0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdlV/LOK7XIDmB8PSt6gnk6Cgvrzvw==
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 13 Mar 2023 22:40:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59424

This is a multipart message in MIME format.

------=_NextPart_000_0B7B_01D955C2.181DC1C0
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,

=20

YP M+ or high bugs which moved to a new milestone in WW10 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

11781

bitbake --observe-only may get KeyError

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

11899

broken 'bitbake --status-only' and 'bitbake -m' for multiple connections

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

13424

devupstream doesn't work with mutilib

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

13599

Enhancement: Detect variables that shouldn't be defined in image scope, =
but in global (distro) scope

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

13808

do_task[noexec] =3D "" marks task noexec, which is inconsistent with =
docs

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

14385

mode of sstate files created under pseudo

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

14620

QA error not seen when reusing SSTATE

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

14717

OEToolchainConfig.cmake sets wrong and unsuitable compiler flags

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

14811

Incorrect path matching in pseudo cause package failure in yocto

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

14870

Dangling bbappend behaviour can lead to unexpected surprises (error vs =
warn)

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.3 M1


=20

14896

Current autobuilder code incompatible with buildbot 3.5.0

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

14918

Devtool fails if SRCREV is set to ${AUTOREV}

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

15010

native.bbclass is unable to clear unconditional overrides during =
dependency rewriting

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4


=20

15008

'BitBakeXMLRPCServer' object has no attribute 'set_async_cmd'

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

4.2 M3

4.2 M4

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_0B7B_01D955C2.181DC1C0
Content-Type: text/html;
	boundary="----=_NextPart_000_0D50_01D95060.F5892A70";
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
bugs which moved to a new milestone in WW10 are listed below: =
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
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>11781<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>bitbake =
--observe-only may get KeyError<o:p></o:p></span></p></td><td =
width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>11899<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>broken =
'bitbake --status-only' and 'bitbake -m' for multiple =
connections<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>13424<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>devupstream =
doesn't work with mutilib<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>13599<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Enhancement: =
Detect variables that shouldn't be defined in image scope, but in global =
(distro) scope<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>13808<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>do_task[noexec] =3D &quot;&quot; marks task =
noexec, which is inconsistent with docs<o:p></o:p></span></p></td><td =
width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14385<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>mode of sstate =
files created under pseudo<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14620<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>QA error not =
seen when reusing SSTATE<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14717<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>OEToolchainConfig.cmake sets wrong and unsuitable =
compiler flags<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14811<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Incorrect path =
matching in pseudo cause package failure in =
yocto<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14870<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Dangling =
bbappend behaviour can lead to unexpected surprises (error vs =
warn)<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
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
style=3D'color:black'>14896<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Current =
autobuilder code incompatible with buildbot =
3.5.0<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>14918<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Devtool fails =
if SRCREV is set to ${AUTOREV}<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15010<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>native.bbclass =
is unable to clear unconditional overrides during dependency =
rewriting<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>15008<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>'BitBakeXMLRPCServer' object has no attribute =
'set_async_cmd'<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>4.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
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
------=_NextPart_000_0B7B_01D955C2.181DC1C0--


