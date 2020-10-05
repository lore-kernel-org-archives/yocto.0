Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web10.80.1601931757259214413
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Oct 2020 14:02:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f970leZk;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: sjolley.yp.pm@gmail.com)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 1DF0738C06FF
	for <yocto@yoctoproject.org>; Mon,  5 Oct 2020 14:02:37 -0700 (PDT)
Received: by mail-pl1-f180.google.com with SMTP id y20so128239pll.12
        for <yocto@yoctoproject.org>; Mon, 05 Oct 2020 14:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=bQWICa1YnKO4okvnpPTt25c1Z1l10B+rPO+s8QprjSg=;
        b=f970leZksrtg/4uE3uMwUg7rjqLABSP4XDK8oyx30xOAyJqXZ3w52oNpZVfTcGXq7a
         v9dEupFAuPHGUW/1U5R+CoT4mRYyxjnFmoAmZix3xplM4bDnmPWF+vMjpAn6Lt70H7SC
         4A8B2mKxQm2b9otFr1FZjc53mEx96yb7/HptlYRznvJcq7wWjYiJBwfS+b1WJVkdQObn
         LM2RxmFgcoeGaeTFommceoEbmpohUS2Oq18HXXCya6wLiSeaSPd2xXlUAAycpbLVwV22
         U4agxfkYEZ2Ye42/6XQyVG11/hBVJSjs5j2BpxXHNpag0/0UD3e6KAKZhhDFJdI4CRU2
         IjBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=bQWICa1YnKO4okvnpPTt25c1Z1l10B+rPO+s8QprjSg=;
        b=q8W+ecAyzfV3koZ7mZCT1dW4TMYFTm5heWCIIpCyeEKa0DkDavAtFFl0Dp/Pz4rUxa
         yEBw2MJpR1OyNDlCr5Cer0udGHiPy2APWUHyAiAxD+yLx8YGXa8zSvaO5ERVNNLC45JE
         Oxcdr/LHhC0X7J0E3S/TvYYYrUKB1sKRkeEezdpnVay9yf9pusE5AN7g1rRVbPnuTHiU
         5FqY1rgkTrdLLg90N9XAHTRltUaU33uUaZKwlYjLhrWhv8j00GCEdLfFRL8kkImrLhe8
         /5PHhSEHRytzzB0VvadiHxqabyuDU//VyU7JBm49tshhBtHvk/0s0uDqd6fIfVuyrLM1
         ZEhA==
X-Gm-Message-State: AOAM531FqsbgwgLzRYg5c2dhTzyipr5Xmt8+v2f1jH3T54dv4HbMnkbe
	KsIkXnXHxvguq9gDrDb0FT4=
X-Google-Smtp-Source: ABdhPJygoclmj0oldJrBHAXRDAYHm87JBjrtA1fTBUly3O844uvRsOG3kcnM9ZXrVJOfqri1UHRFtw==
X-Received: by 2002:a17:902:bcc9:b029:d3:c7de:5cfc with SMTP id o9-20020a170902bcc9b02900d3c7de5cfcmr328133pls.19.1601931756579;
        Mon, 05 Oct 2020 14:02:36 -0700 (PDT)
Received: from skjolley (wsip-184-183-149-66.ph.ph.cox.net. [184.183.149.66])
        by smtp.gmail.com with ESMTPSA id g4sm532538pgh.65.2020.10.05.14.02.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2020 14:02:36 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW40
Date: Mon, 5 Oct 2020 14:02:36 -0700
Message-ID: <04db01d69b5a$da9ecb10$8fdc6130$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdabWrhKwKDwxPH4TP2gqz6vHPLEuw==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04DC_01D69B20.2E47E250"
Content-Language: en-us

------=_NextPart_000_04DC_01D69B20.2E47E250
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW40 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5322> 5322

Global DNS fallback mechanism not present in poky distro

kai.kang@windriver.com

kai.kang@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10693> 10693

Add a testcase for multilib eSDK on the autobuilder

Qi.Chen@windriver.com

Qi.Chen@windriver.com

3.2 M3

3.3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11385> 11385

poky-container: clarify that meta-data should be checked out using =
native tools that run the host and not with tools in container

timothy.t.orling@intel.com

timothy.t.orling@intel.com

3.99

3.3 M1


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12060> 12060

It is possible to specify a PACKAGE and a PKG_ rename that conflict

kai.kang@windriver.com

kai.kang@windriver.com

3.2 M3

3.3 M1


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12342> 12342

lib32-core-image-sato -ctestimage failed due to wrong package names

kai.kang@windriver.com

kai.kang@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12917> 12917

Warnings from nightly-multilib builds (build-deps)

kai.kang@windriver.com

kai.kang@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13182> 13182

Inconsistency detected by ld.so: dl-open.c: 274: dl_open_worker: =
Assertion xxx failed

Qi.Chen@windriver.com

Qi.Chen@windriver.com

3.2 M3

3.3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13288> 13288

pseudo should not follow symlinks in /proc

randy.macleod@windriver.com

sakib.sajal@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13581> 13581

Line wrapping over prompt in BASH

randy.macleod@windriver.com

jason.wessel@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13589> 13589

Document sstate cache mirror best practices

randy.macleod@windriver.com

mark.morton@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13631> 13631

core-image-full-cmdline qemumips systemd boot failure

kai.kang@windriver.com

kai.kang@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13646> 13646

runtime tests sometimes can't login to the serial console on systemd =
images (generates warning)

kai.kang@windriver.com

richard.purdie@linuxfoundation.org

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13666> 13666

[QA 3.0.1 RC3] valgrind.drd failure in ptest

randy.macleod@windriver.com

stacy.gaikovaia@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13838> 13838

[QA 3.1 M3 RC1] failure in ptest: valgrind.drd/tests/bar_bad and =
valgrind.drd/tests/bar_bad_xml

randy.macleod@windriver.com

stacy.gaikovaia@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13841> 13841

quilt ptest intermittent failure

joe.slater@windriver.com

joe.slater@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904> 13904

do_prepare_recipe_sysroot: postinst-useradd-* does not run in order of =
dependency and sometimes fails

randy.macleod@windriver.com

sakib.sajal@windriver.com

3.2 M3

3.2 M4


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13997> 13997

[QA 3.2 M2 RC1] failure in ptest : libinput.libinput-test-suite

randy.macleod@windriver.com

sakib.sajal@windriver.com

3.2 M3

3.2 M4

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_04DC_01D69B20.2E47E250
Content-Type: text/html;
	boundary="----=_NextPart_000_0C83_01D695C8.63BEBA10";
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
	{font-family:"MS Sans Serif";}
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
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
class=3DMsoNormal><span style=3D'color:black'>All,<br><br>YP M+ or high =
bugs which moved to a new milestone in WW40 are listed below: =
<o:p></o:p></span></p><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 width=3D1240 =
style=3D'width:930.0pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority</span></b><b><span =
style=3D'color:black'><o:p></o:p></span></b></p></td><td width=3D44 =
nowrap valign=3Dbottom style=3D'width:33.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID<o:p></o:p></span></b></p></td><td =
width=3D544 nowrap valign=3Dbottom style=3D'width:408.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Short =
Description<o:p></o:p></span></b></p></td><td width=3D236 nowrap =
valign=3Dbottom style=3D'width:177.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Changer<o:p></o:p></span></b></p></td><td =
width=3D243 nowrap valign=3Dbottom style=3D'width:182.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Owner<o:p></o:p></span></b></p></td><td width=3D55 =
nowrap valign=3Dbottom style=3D'width:41.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Was<o:p></o:p></span></b></p></td><td width=3D55 =
nowrap valign=3Dbottom style=3D'width:41.0pt;border:solid windowtext =
1.0pt;border-left:none;background:#DCE6F1;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Became<o:p></o:p></span></b></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D5322" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>5322</span></a><o:p></o:p></sp=
an></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Global DNS fallback mechanism not present in poky =
distro<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D10693" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>10693</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>Add =
a testcase for multilib eSDK on the =
autobuilder<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3.3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11385" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>11385</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>poky-container: clarify that meta-data should be =
checked out using native tools that run the host and not with tools in =
container<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>timothy.t.orling@intel.com<o:p></o:p></span></p></t=
d><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>timothy.t.orling@intel.com<o:p></o:p></span></p></t=
d><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3.99<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12060" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12060</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>It =
is possible to specify a PACKAGE and a PKG_ rename that =
conflict<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.3 =
M1<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12342" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12342</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>lib32-core-image-sato -ctestimage failed due to =
wrong package names<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12917" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>12917</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Warnings from nightly-multilib builds =
(build-deps)<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13182" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13182</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Inconsistency detected by ld.so: dl-open.c: 274: =
dl_open_worker: Assertion xxx failed<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Qi.Chen@windriver.com<o:p></o:p></span></p></td><td=
 nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3.3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td nowrap valign=3Dbottom style=3D'border:solid =
windowtext 1.0pt;border-top:none;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13288" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13288</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>pseudo should not follow symlinks in =
/proc<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13581" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13581</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>Line =
wrapping over prompt in BASH<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>jason.wessel@windriver.com<o:p></o:p></span></p></t=
d><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13589" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13589</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Document sstate cache mirror best =
practices<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mark.morton@windriver.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13631" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13631</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>core-image-full-cmdline qemumips systemd boot =
failure<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13646" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13646</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>runtime tests sometimes can't login to the serial =
console on systemd images (generates =
warning)<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>kai.kang@windriver.com<o:p></o:p></span></p></td><t=
d nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13666" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13666</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>[QA =
3.0.1 RC3] valgrind.drd failure in ptest<o:p></o:p></span></p></td><td =
nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>stacy.gaikovaia@windriver.com<o:p></o:p></span></p>=
</td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13838" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13838</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>[QA =
3.1 M3 RC1] failure in ptest: valgrind.drd/tests/bar_bad and =
valgrind.drd/tests/bar_bad_xml<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>stacy.gaikovaia@windriver.com<o:p></o:p></span></p>=
</td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13841" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13841</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>quilt ptest intermittent =
failure<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>joe.slater@windriver.com<o:p></o:p></span></p></td>=
<td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>joe.slater@windriver.com<o:p></o:p></span></p></td>=
<td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13904" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13904</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>do_prepare_recipe_sysroot: postinst-useradd-* does =
not run in order of dependency and sometimes =
fails<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:15.0pt'><td nowrap =
valign=3Dbottom style=3D'border:solid windowtext =
1.0pt;border-top:none;padding:0in 0in 0in 0in;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13997" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13997</span></a><o:p></o:p></s=
pan></b></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>[QA =
3.2 M2 RC1] failure in ptest : =
libinput.libinput-test-suite<o:p></o:p></span></p></td><td nowrap =
valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td nowrap valign=3Dbottom =
style=3D'border-top:none;border-left:none;border-bottom:solid windowtext =
1.0pt;border-right:solid windowtext 1.0pt;padding:0in 0in 0in =
0in;height:15.0pt'><p class=3DMsoNormal><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr></table><p class=3DMsoNormal><span =
style=3D'color:black'> Thanks,</span><span style=3D'color:white'> =
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

------=_NextPart_000_04DC_01D69B20.2E47E250--
