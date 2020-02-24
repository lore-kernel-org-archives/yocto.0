Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.1199.1582582468555663200
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2020 14:14:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rjgHAOdb;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sjolley.yp.pm@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B5B3E01755; Mon, 24 Feb 2020 14:14:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C8BCE016FE
	for <yocto@yoctoproject.org>; Mon, 24 Feb 2020 14:14:26 -0800 (PST)
Received: by mail-pl1-f174.google.com with SMTP id p7so231963pli.5
        for <yocto@yoctoproject.org>; Mon, 24 Feb 2020 14:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=PzFRX5t5jxltZjcNhPMh40KWri6diQUm1efbRFJ7tU8=;
        b=rjgHAOdbKUL3uYIl0I5FBzBRamGG3054QPyRamBQ5WzG+rq5vxvfF46z+7GA+lrArP
         nRN5/EgyTjs2lVFveH7xxPuXTCVMP/VRvutUBb+sp6rSey4nSmD8OaOEGndgqOPqrdON
         7rOoZnWs/vKvcUNiGy4Ox+X4pJ7/hAommgtdcoAhp7G9r8d99YrjSfGEM4K7ClkEMFhU
         ZpqV4kkg84tpoxO6wZWlrrtk1R/lV6so9HFS0cegMGsftgyQ8q9fHsS4gj49rGJ0NCEa
         RnE8Xcph0unzmFz9IoHIiQEmUfcO/Panac1lfAceJgGEEqoFqG25XsrrJUg9iIaoNaLY
         bQxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=PzFRX5t5jxltZjcNhPMh40KWri6diQUm1efbRFJ7tU8=;
        b=g4Oct0JoD/z8FeB2T6PNjobSVLIus4dJaN20cG3olzHuWYixz1o9ImUOmp5Imp4Bmj
         OGG2uYyyl8Z0eYtO1YkVdnrws/gx9jh3fso+mY8fdk8ZtVfoQAbQuTOTMVih2Vnnsxcd
         TC+32uHVwOD0/tQg9Ts8YRaNA5QDun84x7GCo5lm3rNoapHXuY5Q1/iBKvjETXIBU268
         3IE7TYQDf24lGBlDfctx2mZfGJRIAKhS9HqjKyKV0PsaiUSsN/cg8uHH+jurYrcsPOgB
         EoERerzUd4IG+2yoeWpZDD8NiBiow1v7GStIQ3h84+KVg1oNI0l+xbS0Jobmuo3BBh+K
         T2mg==
X-Gm-Message-State: APjAAAW+Bs0WB7DUYQ2MSTYw8Hpbc8eCpP3/v13P2avLOTFOhW3rSviB
	S+9d9pj8u2vMBs6W3hhXHhs=
X-Google-Smtp-Source: APXvYqxeWocVrL6+5gkOnfwck8hDKvso3y0+ezST8G0qJSlMzGw4I+R2M+6k3BtxJQSrsOKS9JyYTw==
X-Received: by 2002:a17:90a:1ac9:: with SMTP id p67mr1353715pjp.51.1582582466070;
        Mon, 24 Feb 2020 14:14:26 -0800 (PST)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id y5sm14418406pfr.169.2020.02.24.14.14.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 14:14:25 -0800 (PST)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW08
Date: Mon, 24 Feb 2020 14:14:26 -0800
Message-ID: <02b801d5eb5f$c6e9f6e0$54bde4a0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdXrX6x+mrdo2rw4SZCsHkMygUCLng==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_02B9_01D5EB1C.B8CB98E0"
Content-Language: en-us

------=_NextPart_000_02B9_01D5EB1C.B8CB98E0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

YP M+ or high bugs which moved to a new milestone in WW08 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


Medium+

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11449> 11449

Allow overriding classes to override overridden classes

richard.purdie@linuxfoundation.org

richard.purdie@linuxfoundation.org

3.99

3.1 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13767> 13767

Creating PDF docs doesn't include image files

randy.macleod@windriver.com

mark.morton@windriver.com

3.0.2

3.1 M3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13790> 13790

zeus-rc2] runtime_test.TestImage.test_testimage_dnf failed  on =
debian10-ty-3 & Ubuntu1804-ty-2

randy.macleod@windriver.com

akuster808@gmail.com

3.0.2

3.0.3


=20

 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13793> 13793

layerindex-web: Django 1.11 LTS EOL April 2020; need to upgrade to =
Django 2.2 LTS

randy.macleod@windriver.com

amber.n.elliot@intel.com

3.2

3.1 M4

=20

Thanks,

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_02B9_01D5EB1C.B8CB98E0
Content-Type: text/html;
	boundary="----=_NextPart_000_05D6_01D5DFF2.62E915E0";
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
	{font-family:"MS Sans Serif";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
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
bugs which moved to a new milestone in WW08 are listed below: =
<b><o:p></o:p></b></span></p><table class=3DMsoNormalTable border=3D0 =
cellspacing=3D0 cellpadding=3D0 width=3D1283 =
style=3D'width:962.25pt;margin-left:-.15pt;border-collapse:collapse'><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;background:#DCE6F1;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>Priority<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom style=3D'width:33.0pt;border:solid =
windowtext 1.0pt;border-left:none;background:#DCE6F1;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><b><span =
style=3D'color:black'>Bug ID<o:p></o:p></span></b></p></td><td =
width=3D587 nowrap valign=3Dbottom style=3D'width:440.25pt;border:solid =
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
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D11449" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>11449</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D587 nowrap valign=3Dbottom =
style=3D'width:440.25pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Allow overriding classes to override overridden =
classes<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>richard.purdie@linuxfoundation.org<o:p></o:p></span=
></p></td><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3.99<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.1 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13767" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13767</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D587 nowrap valign=3Dbottom =
style=3D'width:440.25pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>Creating PDF docs doesn't include image =
files<o:p></o:p></span></p></td><td width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>mark.morton@windriver.com<o:p></o:p></span></p></td=
><td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.0.2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.1 M3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13790" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13790</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D587 nowrap valign=3Dbottom =
style=3D'width:440.25pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>zeus-rc2] =
runtime_test.TestImage.test_testimage_dnf failed=C2=A0 on debian10-ty-3 =
&amp; Ubuntu1804-ty-2<o:p></o:p></span></p></td><td width=3D236 nowrap =
valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>akuster808@gmail.com<o:p></o:p></span></p></td><td =
width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.0.2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.0.3<o:p></o:p></span></p></td></tr><tr =
style=3D'height:15.0pt'><td width=3D64 nowrap valign=3Dbottom =
style=3D'width:48.0pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:15.0pt'><p =
class=3DMsoNormal><b><span =
style=3D'color:black'>&nbsp;<o:p></o:p></span></b></p></td><td =
width=3D44 nowrap valign=3Dbottom =
style=3D'width:33.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><b><span style=3D'color:black'><a =
href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D13793" =
target=3D"_parent"><span =
style=3D'color:black;text-decoration:none'>13793</span></a><o:p></o:p></s=
pan></b></p></td><td width=3D587 nowrap valign=3Dbottom =
style=3D'width:440.25pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>layerindex-web: Django 1.11 LTS EOL April 2020; =
need to upgrade to Django 2.2 LTS<o:p></o:p></span></p></td><td =
width=3D236 nowrap valign=3Dbottom =
style=3D'width:177.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>randy.macleod@windriver.com<o:p></o:p></span></p></=
td><td width=3D243 nowrap valign=3Dbottom =
style=3D'width:182.0pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>amber.n.elliot@intel.com<o:p></o:p></span></p></td>=
<td width=3D55 nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right'><span =
style=3D'color:black'>3.2<o:p></o:p></span></p></td><td width=3D55 =
nowrap valign=3Dbottom =
style=3D'width:41.0pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:15.0pt'><p class=3DMsoNormal><span =
style=3D'color:black'>3.1 M4<o:p></o:p></span></p></td></tr></table><p =
class=3DMsoNormal><b><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></b></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
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

------=_NextPart_000_02B9_01D5EB1C.B8CB98E0--
