Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.443.1631201351652112360
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Sep 2021 08:29:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JAZv4KcL;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id t1so2135674pgv.3
        for <yocto@lists.yoctoproject.org>; Thu, 09 Sep 2021 08:29:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:thread-index:content-language;
        bh=gdssK/1RE9HunJ68GQd7Vq1oDjBi0JFuqx/YzCSkkZM=;
        b=JAZv4KcLgpt4yp1vNcNkG4k0h+Rmok8ZglEtNi/NFIMqXXJOTFRwsoirnH4rXbZPBO
         GxMXnDF2p5xT/iZGKB4MJoRCsSugp+uiy/+Nu5Si2d5DWEBpqIgnyV81fIlupALvYmCg
         CLHrvpJXOdDJe8CkFZqro1CoFIH85TgHYB/WpIckMXsy3kus2TXlPgJgRQTx9eLy0oCH
         NoDfVZJTxbCAcfQRo5MFquZPfZvT17DU14baY69vP09tpspAOQvFF1ykc1/DHtNEy41+
         6QJYAPnBS5w3fyJIa8UgsjS0v7PV3LVSYUEzLdk91L5Ik6rfWAHPVNLejdd5s/znXakW
         ZWUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:thread-index:content-language;
        bh=gdssK/1RE9HunJ68GQd7Vq1oDjBi0JFuqx/YzCSkkZM=;
        b=0oQ+I9HYiyohO+nFsRGF+5ISdrxfOP8UHciyFh0KemTYW2aI6JapgwqXsWo4GvsKc/
         VfCT/DO404KCy/COUrcDGqg9F5yCgB1EGqwVw45pUTD1HHpU+4blK6GiqWU66MJExzYs
         PvYyyaMXIpAStHy/60OSqdm+R0WMFZ2EmpfaCHyicHDSaqX8kLBY0ljCz5kMy6/lsS7i
         Xkgd8xOJctaT7A9YQT6ApkO+3cd2nVhiIZgSOQJXU+G8MIvtfeEHv01YMs9Qa720eCgm
         OIgaklBNhpCKHsrmWC376hS+caM1gJm/sslgqGLYyAsfGj0Lkp2wGzrUE8x61MS1N3P9
         XjnQ==
X-Gm-Message-State: AOAM533Y2pINGi5eKszW+89Dc47SgakKh9WEEeOp1Ir60oCcxWTfN0y8
	uspySpExhCX50R9I+9sBz0k=
X-Google-Smtp-Source: ABdhPJz1KXVb3ld8jSyjYFRsGQQNmdOUo26NWWSkViOF1pN7R0wYJJJ/BiSYdyYqoC3ixejOKpNt9w==
X-Received: by 2002:a63:ed17:: with SMTP id d23mr3128653pgi.29.1631201351150;
        Thu, 09 Sep 2021 08:29:11 -0700 (PDT)
Return-Path: <sjolley.yp.pm@gmail.com>
Received: from skjolley ([2600:8800:1d8f:b200:554:60b4:70a5:1266])
        by smtp.gmail.com with ESMTPSA id 31sm2880743pgy.26.2021.09.09.08.29.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Sep 2021 08:29:10 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: "'Trevor Gamblin'" <trevor.gamblin@windriver.com>,
	"'Yocto-mailing-list'" <yocto@lists.yoctoproject.org>
Cc: "'Richard Purdie'" <richard.purdie@linuxfoundation.org>,
	"'MacLeod, Randy'" <Randy.MacLeod@windriver.com>,
	<steve@sakoman.com>,
	<timothy.t.orling@intel.com>,
	<alexandre.belloni@bootlin.com>,
	"'Ross Burton'" <ross@burtonini.com>,
	"'Wold, Saul'" <saul.wold@windriver.com>,
	"'Bruce Ashfield'" <bruce.ashfield@gmail.com>,
	<kiran.surendran@windriver.com>
References: <1511ca8c-7e82-0eb2-383d-4622978d194a@windriver.com>
In-Reply-To: <1511ca8c-7e82-0eb2-383d-4622978d194a@windriver.com>
Subject: Re: Minutes: Yocto Project Weekly Triage Meeting 9/9/2021
Date: Thu, 9 Sep 2021 08:29:09 -0700
Message-ID: <11be01d7a58f$6fe31b60$4fa95220$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHbx/fo07IF9j56SPaV/xqE47MEO6uTjsbg
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_11BF_01D7A554.C3849180"
Content-Language: en-us

------=_NextPart_000_11BF_01D7A554.C3849180
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Done with AR

=20

Stephen

=20

From: Trevor Gamblin <trevor.gamblin@windriver.com>=20
Sent: Thursday, September 9, 2021 8:06 AM
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: Richard Purdie <richard.purdie@linuxfoundation.org>; =
trevor.gamblin@windriver.com; MacLeod, Randy =
<Randy.MacLeod@windriver.com>; steve@sakoman.com; =
timothy.t.orling@intel.com; sjolley.yp.pm@gmail.com; =
alexandre.belloni@bootlin.com; Ross Burton <ross@burtonini.com>; Wold, =
Saul <saul.wold@windriver.com>; Bruce Ashfield =
<bruce.ashfield@gmail.com>; kiran.surendran@windriver.com
Subject: Minutes: Yocto Project Weekly Triage Meeting 9/9/2021

=20

Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage

Attendees: Alex, Bruce, Diane, Kiran, Randy, Richard, Ross, Saul, =
Stephen, Steve, Tim, Trevor

ARs:

- Randy to move AB defects to M4 after call

- Tim to file a bug about improving ptest runner timeout warnings

- Stephen to handle 3.4 M3 unassigned bugs (move to M4 or 3.5 M1 if =
enhancements)

- Trevor to ask Alex Kanavin if he could help on 14518

- General reminder to review Old Milestone bugs and move as necessary

=20

Notes:

=20

- (carried over) Steve encountered build failures such as the one in =
https://errors.yoctoproject.org/Errors/Details/593109/ when attempting =
to run dunfell builds with the PARALLEL_MAKE load averaging added. WR is =
testing/investigating on internal Autobuilder instance - Trevor is still =
planning on looking into this!

Medium+ 3.4 Unassigned Enhancements/Bugs: 77 (No change)

Medium+ 3.99 Unassigned Enhancements/Bugs: 38 (No change)=20

=20

AB-INT Bugs: 49 (Last week 48)


------=_NextPart_000_11BF_01D7A554.C3849180
Content-Type: text/html;
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
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
span.EmailStyle19
	{mso-style-type:personal-reply;
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
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US link=3Dblue =
vlink=3Dpurple style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Done with AR<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>Stephen<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Trevor Gamblin =
&lt;trevor.gamblin@windriver.com&gt; <br><b>Sent:</b> Thursday, =
September 9, 2021 8:06 AM<br><b>To:</b> Yocto-mailing-list =
&lt;yocto@lists.yoctoproject.org&gt;<br><b>Cc:</b> Richard Purdie =
&lt;richard.purdie@linuxfoundation.org&gt;; =
trevor.gamblin@windriver.com; MacLeod, Randy =
&lt;Randy.MacLeod@windriver.com&gt;; steve@sakoman.com; =
timothy.t.orling@intel.com; sjolley.yp.pm@gmail.com; =
alexandre.belloni@bootlin.com; Ross Burton &lt;ross@burtonini.com&gt;; =
Wold, Saul &lt;saul.wold@windriver.com&gt;; Bruce Ashfield =
&lt;bruce.ashfield@gmail.com&gt;; =
kiran.surendran@windriver.com<br><b>Subject:</b> Minutes: Yocto Project =
Weekly Triage Meeting 9/9/2021<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p><b>Wiki: </b><a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage">https://wiki.yocto=
project.org/wiki/Bug_Triage</a><o:p></o:p></p><p><b>Attendees:</b> Alex, =
Bruce, Diane, Kiran, Randy, Richard, Ross, Saul, Stephen, Steve, Tim, =
Trevor<o:p></o:p></p><p><b>ARs:</b><o:p></o:p></p></div><p>- Randy to =
move AB defects to M4 after call<o:p></o:p></p><p>- Tim to file a bug =
about improving ptest runner timeout warnings<o:p></o:p></p><p>- Stephen =
to handle 3.4 M3 unassigned bugs (move to M4 or 3.5 M1 if =
enhancements)<o:p></o:p></p><p>- Trevor to ask Alex Kanavin if he could =
help on 14518<o:p></o:p></p><div><p class=3DMsoNormal>- General reminder =
to review Old Milestone bugs and move as =
necessary<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><b>Notes:</b><o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p class=3DMsoNormal>- =
(carried over) Steve encountered build failures such as the one in <a =
href=3D"https://errors.yoctoproject.org/Errors/Details/593109/">https://e=
rrors.yoctoproject.org/Errors/Details/593109/</a> when attempting to run =
dunfell builds with the PARALLEL_MAKE load averaging added. WR is =
testing/investigating on internal Autobuilder instance - Trevor is still =
planning on looking into this!<o:p></o:p></p></div><div><p><b>Medium+ =
3.4 Unassigned Enhancements/Bugs: </b>77 (No change)<o:p></o:p></p><p =
class=3DMsoNormal><b>Medium+ 3.99 Unassigned Enhancements/Bugs: =
</b>38<b> </b>(No change) <o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><b>AB-INT Bugs: </b>49 (Last week =
48)<o:p></o:p></p></div></div></body></html>

------=_NextPart_000_11BF_01D7A554.C3849180--
