Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DAC2E7716A
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 04:25:34 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.74595.1734409527170966417
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2024 20:25:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=axMIXELj;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2ee6c2d6db0so4243078a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2024 20:25:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734409526; x=1735014326; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=FQte9WzHdC6OZ+ClJg0lQSTKefEn7hr5ronrSwjiaAU=;
        b=axMIXELjbE9KqXvX1OSdkMAXvYbJbbWmP0gCH+E0A6tTK1V6VpBwyl1X9alon6j73C
         dP7z74Z4Qme/zIi8fH5ShyuQuGHwao0NAGVIt9fwBfavnhJsAqcVXcYQNCw79iz7wTPn
         Gbb8vSDz8/1dnGY6Kn4FydCo96RInA1EIgoz5qKeCLEBzSrQP1btn0BZfo91yHo2GqZ/
         oYNOI941w2lIjSPFcG+DB9oODejhaOe6uyu91ENvAsPUCRaq1mKpUK1s4A8dgY0jDFv1
         h7X+IJr2u9vaJ9LZ4QZny00zzYmcmp6wKNll8kTg2Re+jdwr/NqHGNfufjdDmopx/2La
         U8Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734409526; x=1735014326;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FQte9WzHdC6OZ+ClJg0lQSTKefEn7hr5ronrSwjiaAU=;
        b=FLE6ovftWDDV4ErBcocTyMtCy59C4MM1uRL+ZdUzhnmiHDGE3OgckbGm1zAASg/ctY
         njJjvOGw+jW1MVXgfM/PJ2hLiQX7MMKUdbkVweX0L4huOOAzrkiQOZv9rnQK8rHa5hCy
         +I4l2mqpbifecLuJGo/i2R3yqBBn9dHSeopFnvtniv+OOey71JBKi1FsG95xj+ze3hMg
         6t17F8zeIGpKU8R2JsfLEFBy4c0TQKETqbgrjq6+IQEkPFQ2XHab3vH6oXYrbBCCjaSW
         a/pNEIPB6wxIHnEigudNj+5eGK3BYv2G8pUUfP0yiT+BHRk1aKfi5WCMpeSnpiCxEVEg
         SHSw==
X-Gm-Message-State: AOJu0Yxq3QpbvrqXpv93wO1xSVx9FczF1VSjWG35K4jDOErMua2z1VGX
	nG0hSNLUg50ANFSTiaXmxZVVwG1RfEzhn/mq7WmaU0v7NFzmObtY+YVjrEacvxoTqFlzNOT3fi0
	bjk57TwmmNWCC+wEmbsTaisheXkTEE4rbjxg=
X-Gm-Gg: ASbGncvnibm+QYYzT6SaBQdhe7SJYJ5x4ebZBBUliOzqIaIbH4hYlu5LqwxIekwCSJK
	hkirvCV8Tv6ezthJ5qBTcPijcZMnEFRtpRX6JZkM6Pz3Kxj5QOv2qzoKmXprjPa2F28sV/GU5
X-Google-Smtp-Source: AGHT+IEfRBKCcp1f4e4Pb9lDszqebCRCdqT/eKHdklXh2Eot8UECMcePuk1XPaPAnFVGyBL6yiHxQWlzNL0wsQWk7VA=
X-Received: by 2002:a17:90b:38c5:b0:2ea:8aac:6aa9 with SMTP id
 98e67ed59e1d1-2f28fd77f87mr18468053a91.21.1734409526023; Mon, 16 Dec 2024
 20:25:26 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Dec 2024 21:25:15 -0700
Message-ID: <CAK5yBb_U5oW3cV4s5-CySh57MJQrcbCjQFkO8fLawDocOBD4pQ@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW50
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b19d2f06296faf52"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 04:25:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64452

--000000000000b19d2f06296faf52
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW50 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15516 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15516> Add
testing for toaster fixtures randy.macleod@windriver.com
tim.orling@konsulko.com 5.2 M1 5.2 M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000b19d2f06296faf52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW50 a=
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
-weight:bold">High</td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decorati=
on-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15516" target=3D"_blan=
k">15516</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">Add testing for toaster fixtures</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">ran=
dy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:t=
im.orling@konsulko.com">tim.orling@konsulko.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">5.2 M1</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">5.2 M2</td></tr></tbody></table><p cl=
ass=3D"MsoNormal" style=3D"background-image:initial;background-position:ini=
tial;background-repeat:initial"><span style=3D"font-size:12pt;font-family:A=
rial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000b19d2f06296faf52--

