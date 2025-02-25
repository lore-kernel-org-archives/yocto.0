Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C250C021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 05:54:39 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web11.2095.1740462870635284257
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2025 21:54:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QXM/a2I/;
 spf=pass (domain: gmail.com, ip: 209.85.216.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2fbfc9ff0b9so8083512a91.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2025 21:54:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740462870; x=1741067670; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bz4IKUXRLuSJ8M0qwKexRYgKddmwRtkbh1qsjniqi84=;
        b=QXM/a2I/vS1ykHMtmClZKRbnvK8jHxzuvIjdPNSovu9Dk3MwynU5Ud7EUTwFQCHwVy
         LcSi8Gqvu0iPoL9N/a1rRdIEpJmVomwBViurfsFEFfpDeMVXYuupOu4x8TQF6XPEW+A/
         OgOz4fUm82mL59YYblpnrszbhr0YeN1H1v80EoJ0l5RHBsW7GsMFjmeXAwyj1KfCFtry
         wK6oxUAGlrlaaiqE6WNz12hlhzlpsOdFaFjq+G6d7XgvUnK3PfAQSMaNDDaLX8MOlUI5
         3SpuHQYPffPc3YJMFdHdY4Rloacy1T9kRE3M0M5MbMsK91Je69N3DUEf2BzEnf2P560d
         juxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740462870; x=1741067670;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bz4IKUXRLuSJ8M0qwKexRYgKddmwRtkbh1qsjniqi84=;
        b=GiiC+PQSsogtIcCppmwi4iLUxmiMReKasXNAWQzavqOpazhffL4CZ+kufksqrcURTX
         ZlGNqjaYDKuQ6wYZ2Kx54ajK3znqoVxsfFosHo+cNYuHgYRRIjjMVPMFh/ucpaj51WRc
         +p2AVnQ4XLxg7/9wQaH1ibynon53X4LLCEDlb2NepHaPxlST2YRsvdseltos2NN9xF8Q
         b8vD6HC52vuX6kmarRMTSw/v1UIb6UNLB57JnoFrl8CCxw9voiTB+16d33bDChZ+vFY+
         tTqfVIhLkGbwUjo3vvuOYfEPiD6nunUg9Mj093oIOrYXbw5YM66g9klht8+rt/m+2fUs
         FdnA==
X-Gm-Message-State: AOJu0Yw0CLqylVme1uJTn5I1g0JeMBwzKEn+5MkjgOgNZrnYrcgFyPcN
	/GOZdQs/EmSd+Th2L5r29YwBGLbAGWV+2SJ2UpSwvhwU27S44PuXlSS25kOxGzacXp4A8NYQJhk
	ZqtIjr5VYQ7Fp8P14UBAcDhOFHKXR+2BjH3c=
X-Gm-Gg: ASbGncs0yCCSK9PKgcFRI8NzGkhS+paZl2kuMOLXAj0d0UVS5UNqITvdVjbcQIpAnt2
	L4RJW2262SOB166W6jG3Fggu7Gl5ATOUwMTL/41SPnAA0v0qWvx5XX6k426NLopcTSkFviXQ6EW
	aVzftjD/+lAJiHTqFTo1JjGAJs/T+0iM8hUIPt9Yo=
X-Google-Smtp-Source: AGHT+IFlmgj9QiN8sSjOhHaPUhb0BzbcdKUxITyjEkjsb0NO6ZJIJc83utYt9qRWSJeesXxe8PJnIEejkKzegmUWw+w=
X-Received: by 2002:a17:90b:54c7:b0:2ee:5111:a54b with SMTP id
 98e67ed59e1d1-2fe68d05e2bmr3094697a91.31.1740462869784; Mon, 24 Feb 2025
 21:54:29 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 24 Feb 2025 22:54:18 -0700
X-Gm-Features: AQ5f1Jqlji0YNyHvbWlrsaicX5Y5sSlV1k2MHX5zXxLL2nFuPiDK5yh055PKT9Q
Message-ID: <CAK5yBb9hZmWnzPWYscrUmOL93J3GM3iHonwwF=QYZibL3nn5Lw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW08
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000193216062ef11731"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 05:54:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64863

--000000000000193216062ef11731
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW08 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14126 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14126>
resolvconf
incompatible with busybox flock randy.macleod@windriver.com
randy.macleod@windriver.com 5.99 5.2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000193216062ef11731
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW08 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43=
"><col width=3D"543"><col width=3D"235"><col width=3D"242"><col width=3D"53=
"><col width=3D"53"></colgroup><tbody><tr style=3D"height:20px"><td style=
=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Priority</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Sh=
ort Description</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Changer</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Owner</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,24=
1);font-weight:bold">Was</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,2=
41);font-weight:bold">Became</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decor=
ation-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14126" target=3D"_b=
lank">14126</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">resolvconf incompatible with bus=
ybox flock</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windr=
iver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">5.99</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">5.2</td></tr></tbody></table><p class=3D"MsoNormal" style=
=3D"background-image:initial;background-position:initial;background-repeat:=
initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks=
,<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">=C2=A0<span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><i><span style=3D"font-size:16pt;co=
lor:purple">Stephen K. Jolley</span></i></b><span style=3D"font-size:12pt;f=
ont-family:Arial,sans-serif"><span></span></span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><b><span style=3D"font-size:8pt;font-f=
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager</sp=
an></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><span style=3D"font-size:12pt;font-family:Arial,sans-serif"><span></span><=
/span></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings">*=C2=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;fon=
t-family:&quot;Comic Sans MS&quot;;color:teal">Email</span></b><span lang=
=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;=
color:teal">:</span><span lang=3D"FR" style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><u><span=
 lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,s=
erif;color:blue"><span style=3D"color:rgb(17,85,204)"><a href=3D"mailto:ste=
phen.k.jolley@intel.com" target=3D"_blank">s</a><a href=3D"mailto:jolley.yp=
.pm@gmail.com" target=3D"_blank">jolley.yp.pm@gmail.com</a></span></span></=
u></p></div></div></div></div>

--000000000000193216062ef11731--

