Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 665E8C433FE
	for <webhook@archiver.kernel.org>; Thu, 17 Mar 2022 15:30:16 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com
 [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web09.11861.1647531015161524644
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 08:30:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=JpzCLc1q;
 spf=pass (domain: gmail.com, ip: 209.85.214.179,
 mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id q13so4714388plk.12
        for <yocto@lists.yoctoproject.org>;
 Thu, 17 Mar 2022 08:30:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:references:in-reply-to:subject:date:message-id
         :mime-version:thread-index:content-language;
        bh=MUN5qYcYK71TcgX6Loxj8IGgqkNcu69+A+1SwnXc+Bk=;
        b=JpzCLc1q6Zz3ilIKRx1wgo0+gYuki8Kx1CMQswA9d7i2NrahYoLQscwMXA0rWflqGB
         yyfm36kmkcKu+kJRAnI5CArCyjIEJ/e+KeYObk0B0khLWo5igoSn7S4rijIWq/NCFkYc
         PMmQ+PZ1nM6KDj9xkcjvMTcohrnHpWQAcSwy8kPNWFFfAX3U6JFfNalLFBjbEJWVUMJq
         IvpFVGmuT3g42sEO8T6bM8/Iq1MwPYb0lSFTFTrzChANnUCCuhhHOMX0NYq+q1hOnOPD
         o6Ce8wEY6g6Cl1bmEjQsI8XkV1wlN5QLR3k2zejSZmjMHLE425D9szQ9KxPvnPQOHhWJ
         sC2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:references:in-reply-to:subject:date
         :message-id:mime-version:thread-index:content-language;
        bh=MUN5qYcYK71TcgX6Loxj8IGgqkNcu69+A+1SwnXc+Bk=;
        b=Dq1ahTgr3TSeK72NukPnIRG3rqDoE2Axetq6N3Jm8Fu8ZR26tpI8C66qT0LW/bQNee
         B+02l7zH/v0cx8M1VRjDrdgO/65aIDSmk8d7dtGyjWNu5qyTAxW5xLpG3GMEYi+Ynr5T
         WNwaBIwxpCNxwYUYOVEcThN+BiJ05GH07ghz2fvny6622GGLvcRKSlPmmcx0ten0jx+Y
         L8Ai2sWBbBqO8DF3L91x26n1OVdSJbTGI+oTR47tLWqTEL7/hVlQu8hyj1nN2lYjFylc
         Nqcsbi2ZaxDrt2n2oS53dPvJpuGpCcoDF9bcT2st5q4Ens5FEXQpGwEdY01IB7q8yCf1
         Invw==
X-Gm-Message-State: AOAM533gArL9tkpH1d2jFnx/DHOSbTFuG43H2xyiG6utZENl3SYP2bCZ
	J4NLNxGp9vH8z6Y4zmpqX2E=
X-Google-Smtp-Source: 
 ABdhPJxQZrxMc5TiVq/KMT/NKEfVzJf50ewQ9YY/UzRtCho+UlMCobtrR6YvIkYjVtSVEt6SJA7Yew==
X-Received: by 2002:a17:902:f683:b0:153:ee22:18b7 with SMTP id
 l3-20020a170902f68300b00153ee2218b7mr3613312plg.159.1647531014540;
        Thu, 17 Mar 2022 08:30:14 -0700 (PDT)
Received: from skjolley ([2600:1011:a113:7f0a:84ca:17b8:596d:5114])
        by smtp.gmail.com with ESMTPSA id
 u18-20020a056a00099200b004f737cdd046sm7502393pfg.145.2022.03.17.08.30.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2022 08:30:14 -0700 (PDT)
From: <sjolley.yp.pm@gmail.com>
To: "'Trevor Gamblin'" <trevor.gamblin@windriver.com>,
	"'Yocto-mailing-list'" <yocto@lists.yoctoproject.org>
Cc: "'Richard Purdie'" <richard.purdie@linuxfoundation.org>,
	<alexandre.belloni@bootlin.com>,
	<luca.ceresoli@bootlin.com>,
	"'MacLeod, Randy'" <Randy.MacLeod@windriver.com>,
	"'Wold, Saul'" <saul.wold@windriver.com>,
	<tim.orling@konsulko.com>,
	<daiane.angolini@foundries.io>,
	"'Ross Burton'" <ross@burtonini.com>,
	"'Steve Sakoman'" <steve@sakoman.com>
References: <42ef1ee2-5b9f-d619-d9a3-a14de3cab0eb@windriver.com>
In-Reply-To: <42ef1ee2-5b9f-d619-d9a3-a14de3cab0eb@windriver.com>
Subject: RE: Minutes: Yocto Project Weekly Triage Meeting 3/17/2022
Date: Thu, 17 Mar 2022 08:30:13 -0700
Message-ID: <17ae01d83a13$e62391b0$b26ab510$@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_17AF_01D839D9.39C703A0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJMxZPSjGti4EK4+9CjxJ1LlynseKvanGkA
Content-Language: en-us
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Mar 2022 15:30:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56482

This is a multipart message in MIME format.

------=_NextPart_000_17AF_01D839D9.39C703A0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable

AR completed.

=20

Stephen

=20

From: Trevor Gamblin <trevor.gamblin@windriver.com>=20
Sent: Thursday, March 17, 2022 8:28 AM
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Cc: sjolley.yp.pm@gmail.com; Richard Purdie =
<richard.purdie@linuxfoundation.org>; alexandre.belloni@bootlin.com; =
luca.ceresoli@bootlin.com; MacLeod, Randy <Randy.MacLeod@windriver.com>; =
Wold, Saul <saul.wold@windriver.com>; tim.orling@konsulko.com; =
daiane.angolini@foundries.io; Ross Burton <ross@burtonini.com>; Steve =
Sakoman <steve@sakoman.com>
Subject: Minutes: Yocto Project Weekly Triage Meeting 3/17/2022

=20

Wiki: https://wiki.yoctoproject.org/wiki/Bug_Triage

Attendees: Alexandre, Daiane, Luca, Randy, Richard, Ross, Saul, Stephen, =
Steve, Tim, Trevor=20

ARs:

- Randy to move remaining Medium+ M3s to M1 (and move to newcomer bugs =
category, where appropriate)

- Stephen to create an issue for Michael run milestone naming script =
(3.6 to 4.1 and 3.99 to 4.99)

- Everyone to review assigned Old Milestone M3 bugs and move to later =
milestones

=20

Notes:

- ~43% of AB workers have been switched to SSDs. Failure rate appears =
lower, but still TBD. More coming soon!

Medium+ 3.5 Unassigned Enhancements/Bugs:  68 (Last week 73)

Medium+ 3.6 Unassigned Enhancements/Bugs: 10 (Last week 2)

Medium+ 3.99 Unassigned Enhancements/Bugs: 38 (Last week 38)

=20

AB Bugs: 72 (Last week 71)


------=_NextPart_000_17AF_01D839D9.39C703A0
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
span.EmailStyle20
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
class=3DWordSection1><p class=3DMsoNormal>AR completed.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p =
class=3DMsoNormal>Stephen<o:p></o:p></p></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><div =
style=3D'border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in'><p class=3DMsoNormal><b>From:</b> Trevor Gamblin =
&lt;trevor.gamblin@windriver.com&gt; <br><b>Sent:</b> Thursday, March =
17, 2022 8:28 AM<br><b>To:</b> Yocto-mailing-list =
&lt;yocto@lists.yoctoproject.org&gt;<br><b>Cc:</b> =
sjolley.yp.pm@gmail.com; Richard Purdie =
&lt;richard.purdie@linuxfoundation.org&gt;; =
alexandre.belloni@bootlin.com; luca.ceresoli@bootlin.com; MacLeod, Randy =
&lt;Randy.MacLeod@windriver.com&gt;; Wold, Saul =
&lt;saul.wold@windriver.com&gt;; tim.orling@konsulko.com; =
daiane.angolini@foundries.io; Ross Burton &lt;ross@burtonini.com&gt;; =
Steve Sakoman &lt;steve@sakoman.com&gt;<br><b>Subject:</b> Minutes: =
Yocto Project Weekly Triage Meeting =
3/17/2022<o:p></o:p></p></div></div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><div><p><b>Wiki: </b><a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage">https://wiki.yocto=
project.org/wiki/Bug_Triage</a><o:p></o:p></p><p><b>Attendees: =
</b>Alexandre, Daiane, Luca, Randy, Richard, Ross, Saul, Stephen, Steve, =
Tim, Trevor <o:p></o:p></p><p><b>ARs:</b><o:p></o:p></p><p>- Randy to =
move remaining Medium+ M3s to M1 (and move to newcomer bugs category, =
where appropriate)<o:p></o:p></p><p>- Stephen to create an issue for =
Michael run milestone naming script (3.6 to 4.1 and 3.99 to =
4.99)<o:p></o:p></p><p>- Everyone to review assigned Old Milestone M3 =
bugs and move to later milestones<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><b>Notes:</b><o:p></o:p></p></div><p>- ~43% of AB =
workers have been switched to SSDs. Failure rate appears lower, but =
still TBD. More coming soon!<o:p></o:p></p><div><p><b>Medium+ 3.5 =
Unassigned Enhancements/Bugs:&nbsp;</b> 68 (Last week =
73)<o:p></o:p></p><p><b>Medium+ 3.6 Unassigned Enhancements/Bugs: </b>10 =
(Last week 2)<o:p></o:p></p><p class=3DMsoNormal><b>Medium+ 3.99 =
Unassigned Enhancements/Bugs: </b>38<b> </b>(Last week =
38)<o:p></o:p></p></div><div><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div><div><p =
class=3DMsoNormal><b>AB Bugs: </b>72 (Last week =
71)<o:p></o:p></p></div></div></body></html>
------=_NextPart_000_17AF_01D839D9.39C703A0--


