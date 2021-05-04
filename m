Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.3834.1620091250133704946
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 May 2021 18:20:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=eZeZFhWp;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1075338C069E
	for <yocto@yoctoproject.org>; Tue,  4 May 2021 01:20:49 +0000 (UTC)
Received: by mail-pg1-f173.google.com with SMTP id m37so5227649pgb.8
        for <yocto@yoctoproject.org>; Mon, 03 May 2021 18:20:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=eGuP2WHXsdKVm2FD5WokuOL0u17xn5eKa9nj/JxHgok=;
        b=eZeZFhWpNr2rwekG0HuJ4z1iKNQ6/H1SpPawVhwpoRWGF+J0e8UPdYgNI4RGG0tnK2
         IF3oEBwRdJTw2PWhVna+rNjh7JhIBpoQo/hoUSq/f051WdLz+Civ87PkgADcR4o1Xjln
         u2fd99+RlZZwq5XUCR1qG/YG/AHxiNlKLNFSa9vgPCfmsjRybgEvLmpzxmAQi2J9bx2a
         skJsLmyrORnLpQ0w5Pxq0lkVGLxGZfAOl3nRAUtu4YMMWQdARgmk71fl9ZkcTlUvlSn7
         XusVsCA8abczlUAi3+ZDCi2IwFZATaCu93d6/3NZhsRDEfjMheclcAkCkPZTVhg5zS4G
         hBgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=eGuP2WHXsdKVm2FD5WokuOL0u17xn5eKa9nj/JxHgok=;
        b=k/lmcIiv1cc8JPNawKnhhaSMSMzFACyrLFtxXrpStEKpfAsbo5VsU3pTh7uNDr0Hqd
         75JBkA8/h2dJGaM25Hf/Fy2TYXrVi9h+wOeMtykNmVhZl4Dp9XGStApzEv8dUMyg/CXN
         iptooZvLDVK7s7gAUXe2JJbdYJIRr9f5NYC4XmHb/sHEqO/Lrmao6s3ppY09nyodQPd8
         OiY0yZ7s2wjLtuPi0vxoCveK6yt8ODosXnT2/EQL+x3ez8wUl9SdfqoQSxv7uc3sM2bb
         wIl0IdB1LfKMMX2hZI332kxE0FZEyNnkIQjU17RWpRT/ykSbBlGvXDeQhK7FowC92PR+
         qJhQ==
X-Gm-Message-State: AOAM531+q37vcBx3TqghN2f3zDSWEzVgy/GDvAKMG+xVDKsTil+5vQqw
	8mm5sc+mt/hbdOz8EDFEiio=
X-Google-Smtp-Source: ABdhPJxTcQPFBQou0Ld1u6OGYutAMWKa6dzJauqIodPEqlOLnE0hYxIHeo+Jp/zxV4VzVvRHUOSsjA==
X-Received: by 2002:a17:90a:4615:: with SMTP id w21mr24758418pjg.50.1620091248652;
        Mon, 03 May 2021 18:20:48 -0700 (PDT)
Received: from skjolley (wsip-72-194-163-85.ph.ph.cox.net. [72.194.163.85])
        by smtp.gmail.com with ESMTPSA id j16sm1165590pgh.69.2021.05.03.18.20.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 18:20:48 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW18
Date: Mon, 3 May 2021 18:20:48 -0700
Message-ID: <140e01d74083$b72297b0$2567c710$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AddAg2OvaBGR3OoEQnqgad6UtChdsA==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_140F_01D74049.0AC87AA0"
Content-Language: en-us

------=_NextPart_000_140F_01D74049.0AC87AA0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW18 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

12723

mysql requires unicode and char length filtering

david.reyna@windriver.com

david.reyna@windriver.com

3.3 M4

3.4 M1


=20

13103

[Bug][QA 2.7 M1 rc1][Toaster] "Recipes" table=E2=94=AC=C3=A1 and =
=E2=94=AC=C3=A1"machines" table are not getting populated after =
clicking=E2=94=AC=C3=A1on imported layer as well as after clicking =
Machines Tab on project page

david.reyna@windriver.com

david.reyna@windriver.com

3.3 M4

3.4 M1


=20

13311

xargs: fdleak.c:396: complain_about_leaky_fds: Assertion `no_leaks' =
failed.

randy.macleod@windriver.com

mingli.yu@windriver.com

3.3 M4

3.4 M1


=20

13533

Devtool finish on _git package with SRCPV in PV points to wrong WORKDIR

randy.macleod@windriver.com

jaewon@xilinx.com

3.3 M3

3.4 M1


=20

13625

test_devtool_add_library fails in multilib setups

randy.macleod@windriver.com

bluelightning@bluelightning.org

3.3 M3

3.4 M1


=20

13722

Debugging With the GNU Project Debugger enhancements

randy.macleod@windriver.com

john.kaldas.enpj@gmail.com

3.3 M3

3.4 M1


=20

13731

Cross canadian GCC fails to find header files when using tclibc-newlib

randy.macleod@windriver.com

alejandro@enedino.org

3.3 M3

3.4 M1


=20

13888

Toaster is not starting for Django-3

david.reyna@windriver.com

david.reyna@windriver.com

3.1.7

3.4 M1


=20

13919

Multi License GPLv3 -lic cannot be installed into the image because it =
has incompatible license

timothy.t.orling@intel.com

unassigned@yoctoproject.org

3.3 M3

3.4 M1


=20

13934

Apparent duplication of libtirpc package causes failure in "bitbake =
linux-yocto -c menuconfig"

randy.macleod@windriver.com

hongxu.jia@windriver.com

3.3 M4

3.4 M1


=20

14085

Toaster UI should know when bitbake crashed

david.reyna@windriver.com

david.reyna@windriver.com

3.3 M4

3.4 M1


=20

14116

Go cannot compile on target

randy.macleod@windriver.com

raj.khem@gmail.com

3.3 M3

3.4 M1


=20

14125

busybox wget ssl is exposed to MitM attack due to CVE-2018-1000500

randy.macleod@windriver.com

shachar@vdoo.com

3.3 M4

3.4 M1


=20

14188

Missing packages on brand new Fedora 33

randy.macleod@windriver.com

akuster808@gmail.com

3.4

3.4 M1


=20

14360

oe-selftest oescripts.OEPybootchartguyTests.test_pybootchartguy* =
failure,  ZeroDivisionError

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

3.4 M1

---

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_140F_01D74049.0AC87AA0
Content-Type: text/html;
	boundary="----=_NextPart_000_03F0_01D73ABE.AF1D01B0";
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
new milestone in WW18 are listed below: <o:p></o:p></span></p><table =
class=3DMsoNormalTable border=3D0 cellspacing=3D0 cellpadding=3D0 =
width=3D1331 style=3D'margin-left:-1.9pt;border-collapse:collapse'><tr =
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
style=3D'color:black'>12723<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>mysql requires =
unicode and char length filtering<o:p></o:p></span></p></td><td =
width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13103<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>[Bug][QA 2.7 =
M1 rc1][Toaster] &quot;Recipes&quot; table</span><span =
style=3D'font-family:"Arial",sans-serif;color:black'>=E2=94=AC</span><spa=
n style=3D'color:black'>=C3=A1 and </span><span =
style=3D'font-family:"Arial",sans-serif;color:black'>=E2=94=AC</span><spa=
n style=3D'color:black'>=C3=A1&quot;machines&quot; table are not getting =
populated after clicking</span><span =
style=3D'font-family:"Arial",sans-serif;color:black'>=E2=94=AC</span><spa=
n style=3D'color:black'>=C3=A1on imported layer as well as after =
clicking Machines Tab on project page<o:p></o:p></span></p></td><td =
width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13311<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>xargs: =
fdleak.c:396: complain_about_leaky_fds: Assertion `no_leaks' =
failed.<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'color:black'>mingli.yu@windriver.com<o:p></o:p></span></p></td><=
td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13533<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Devtool finish =
on _git package with SRCPV in PV points to wrong =
WORKDIR<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'color:black'>jaewon@xilinx.com<o:p></o:p></span></p></td><td =
width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13625<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>test_devtool_add_library fails in multilib =
setups<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'color:black'>bluelightning@bluelightning.org<o:p></o:p></span></=
p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13722<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Debugging With =
the GNU Project Debugger enhancements<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>john.kaldas.enpj@gmail.com<o:p></o:p></span></p></t=
d><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13731<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Cross canadian =
GCC fails to find header files when using =
tclibc-newlib<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'color:black'>alejandro@enedino.org<o:p></o:p></span></p></td><td=
 width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13888<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Toaster is not =
starting for Django-3<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D261 valign=3Dtop =
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
style=3D'color:black'>3.1.7<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13919<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Multi License =
GPLv3 -lic cannot be installed into the image because it has =
incompatible license<o:p></o:p></span></p></td><td width=3D254 =
valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>timothy.t.orling@intel.com<o:p></o:p></span></p></t=
d><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>13934<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Apparent =
duplication of libtirpc package causes failure in &quot;bitbake =
linux-yocto -c menuconfig&quot;<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>hongxu.jia@windriver.com<o:p></o:p></span></p></td>=
<td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>14085<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Toaster UI =
should know when bitbake crashed<o:p></o:p></span></p></td><td =
width=3D254 valign=3Dtop =
style=3D'width:190.2pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D261 valign=3Dtop =
style=3D'width:195.85pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>david.reyna@windriver.com<o:p></o:p></span></p></td=
><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>14116<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Go cannot =
compile on target<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'color:black'>raj.khem@gmail.com<o:p></o:p></span></p></td><td =
width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>shachar@vdoo.com<o:p></o:p></span></p></td><td =
width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M4<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>14188<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Missing =
packages on brand new Fedora 33<o:p></o:p></span></p></td><td =
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
style=3D'color:black'>akuster808@gmail.com<o:p></o:p></span></p></td><td =
width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><span =
style=3D'color:black'>3.4<o:p></o:p></span></p></td><td width=3D58 =
valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
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
style=3D'color:black'>14360<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>oe-selftest =
oescripts.OEPybootchartguyTests.test_pybootchartguy* failure,=C2=A0 =
ZeroDivisionError<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'text-autospace:none'><span style=3D'color:black'>3.4 =
M1<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'>---<o:p></o:p></span></p></td></tr></table><p =
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

------=_NextPart_000_140F_01D74049.0AC87AA0--
