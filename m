Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.315.1598913394579438518
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 Aug 2020 15:36:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=JD4gF+Jy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sjolley.yp.pm@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ED9CE020EF; Mon, 31 Aug 2020 15:36:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,
	URIBL_RED autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4D1CE020ED
	for <yocto@yoctoproject.org>; Mon, 31 Aug 2020 15:36:33 -0700 (PDT)
Received: by mail-pl1-f172.google.com with SMTP id a8so3949016plm.2
        for <yocto@yoctoproject.org>; Mon, 31 Aug 2020 15:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:thread-index
         :content-language;
        bh=XuBD6SgmIIaTdrQymq84PPrTG6hXVHANxHjy/++GLdk=;
        b=JD4gF+JyHWDly4DfA5iRA8xT62F/k/0rapZ3rjmTsJbGw7kAzrZg16XGrIc50MCvnj
         5YqyzNk639aRi7EkV+71xoZGlSzZuqFJd2PIZXxdRrRJnrcSsBac6t7jcoLtv4VGaY9Q
         rU5oXJ8NT+L7fRpwQzEVzifrsnUq6bWWfbXxRPtJvkCp/xCesNGBdNl2QtCqp6aOb+nf
         KSnMRkDWgc4lrTj+hoVPIl1aT/odn5muGd1Un7ewYeCb9q+HlrHaD/IKh5obDXG0MgNM
         e+kQGG91eYFYze+ST/u2sSZfEDzvNSjLyPrzMwC0MW29VCO4dG4eWkewdXsi176HejI5
         atSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :thread-index:content-language;
        bh=XuBD6SgmIIaTdrQymq84PPrTG6hXVHANxHjy/++GLdk=;
        b=PoaeYHwWcl3lhJTUjlgiQ5QgONqeQqnYdOBzgoKwJUFsS0fbFv9IMMo31CxA1xJKVb
         gauPWFgL7bAFq85Bc0kdlOUmdqI/WR22oqkMg95IVw/WOBHM9uiyx474iNC/y/rWnB9D
         qLciXkAZPlRt4pk7BHQaL/plffpA3qs+/l8v4afP/eCTmQuqr1zMGfvQQ+gtpmy/bsoR
         slLm1xk37yZl4J7nhDYpattQ8tws1A6fsoz/SzGWrrNXqAZldfvOzJ9wTutHSzfUWnqW
         h2Q8mCo8FWa2YfI1RiZO25PhKuoqD+0mkS5Cz57Gi4p2cRurgjWa0HsX5/UxUifxudYz
         U4nw==
X-Gm-Message-State: AOAM532FCUoHlz87JzL1/dDUDQUR1svZ2Tdue68j/it3ftmycEUbXC3r
	EBvYmNTyAU4E+PBoAcHipCE=
X-Google-Smtp-Source: ABdhPJycB8eVsmQGkgeaDcg123lScvYZKRbJ/DY4GhrwBzT+rXXZRWE0Paug/wr+TZ+TG0H+BvHDuA==
X-Received: by 2002:a17:90a:dd45:: with SMTP id u5mr1389764pjv.198.1598913393527;
        Mon, 31 Aug 2020 15:36:33 -0700 (PDT)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id z26sm9092312pfa.55.2020.08.31.15.36.32
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 15:36:33 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>
Subject: M+ & H bugs with Milestone Movements WW35
Date: Mon, 31 Aug 2020 15:36:33 -0700
Message-ID: <04e201d67fe7$2da79a60$88f6cf20$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdZ/5yS1KvfMfrs1Qpe7oRmM+u2D6A==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_04E3_01D67FAC.814A21F0"
Content-Language: en-us

------=_NextPart_000_04E3_01D67FAC.814A21F0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

All,

=20

YP M+ or high bugs which moved to a new milestone in WW35 are listed =
below:=20


Priority

Bug ID

Short Description

Changer

Owner

Was

Became


High

13802

ltp tests fail with ssh connection lost  error intermittently

randy.macleod@windriver.com

sakib.sajal@windriver.com

3.2 M3

3.2 M4


Medium+

10096

Allow PREFERRED_VERSION miss to be fatal

randy.macleod@windriver.com

unassigned@yoctoproject.org

3.2 M3

3.3 M1


=20

13004

Automate yocto-check-layer -m option

randy.macleod@windriver.com

unassigned@yoctoproject.org

3.2 M3

3.2 M4


=20

13233

fetch2: try_premirror(): improve on updating repo from mirror

randy.macleod@windriver.com

unassigned@yoctoproject.org

3.2 M3

3.3 M1

=20

Thanks,=20

=20

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com =
<mailto:sjolley.yp.pm@gmail.com>=20

=20


------=_NextPart_000_04E3_01D67FAC.814A21F0
Content-Type: text/html;
	boundary="----=_NextPart_000_0AA5_01D67A18.E4AC01D0";
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
class=3DMsoNormal style=3D'text-autospace:none'><span =
style=3D'color:black'>All,<o:p></o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>YP M+ or high =
bugs which moved to a new milestone in WW35 are listed below: =
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
style=3D'color:black'>13802<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>ltp tests fail =
with ssh connection lost=C2=A0 error =
intermittently<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'color:black'>sakib.sajal@windriver.com<o:p></o:p></span></p></td=
><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.2 =
M4<o:p></o:p></span></p></td></tr><tr style=3D'height:14.5pt'><td =
width=3D69 valign=3Dtop style=3D'width:51.6pt;border:solid windowtext =
1.0pt;border-top:none;padding:0in 5.4pt 0in 5.4pt;height:14.5pt'><p =
class=3DMsoNormal style=3D'text-autospace:none'><b><span =
style=3D'color:black'>Medium+<o:p></o:p></span></b></p></td><td =
width=3D47 valign=3Dtop =
style=3D'width:35.4pt;border-top:none;border-left:none;border-bottom:soli=
d windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in 5.4pt =
0in 5.4pt;height:14.5pt'><p class=3DMsoNormal align=3Dright =
style=3D'text-align:right;text-autospace:none'><b><span =
style=3D'color:black'>10096<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Allow =
PREFERRED_VERSION miss to be fatal<o:p></o:p></span></p></td><td =
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
style=3D'text-autospace:none'><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
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
style=3D'color:black'>13004<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>Automate =
yocto-check-layer -m option<o:p></o:p></span></p></td><td width=3D254 =
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
style=3D'color:black'>unassigned@yoctoproject.org<o:p></o:p></span></p></=
td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.2 =
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
style=3D'color:black'>13233<o:p></o:p></span></b></p></td><td =
width=3D584 valign=3Dtop =
style=3D'width:438.35pt;border-top:none;border-left:none;border-bottom:so=
lid windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>fetch2: =
try_premirror(): improve on updating repo from =
mirror<o:p></o:p></span></p></td><td width=3D254 valign=3Dtop =
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
style=3D'text-autospace:none'><span style=3D'color:black'>3.2 =
M3<o:p></o:p></span></p></td><td width=3D58 valign=3Dtop =
style=3D'width:43.55pt;border-top:none;border-left:none;border-bottom:sol=
id windowtext 1.0pt;border-right:solid windowtext 1.0pt;padding:0in =
5.4pt 0in 5.4pt;height:14.5pt'><p class=3DMsoNormal =
style=3D'text-autospace:none'><span style=3D'color:black'>3.3 =
M1<o:p></o:p></span></p></td></tr></table><p class=3DMsoNormal =
style=3D'text-autospace:none'><span =
style=3D'color:black'><o:p>&nbsp;</o:p></span></p><p =
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

------=_NextPart_000_04E3_01D67FAC.814A21F0--
