Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9FDC25B78
	for <webhook@archiver.kernel.org>; Mon, 20 May 2024 22:43:10 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web11.6453.1716244988641331586
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 May 2024 15:43:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eM6Txw9b;
 spf=pass (domain: gmail.com, ip: 209.85.218.43, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a59ad344f7dso626115466b.0
        for <yocto@lists.yoctoproject.org>; Mon, 20 May 2024 15:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716244987; x=1716849787; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=e0pLgi/Ie9mwUu+JG7FdsWCZvilGZsgDCVTNuG94dR4=;
        b=eM6Txw9bPlHpuDGAJh+uKRR0K1NeTAtJrojqeX1ey/7MxMurQ6z/K2G9bPhpR4S0zn
         Iq5kTu1J2+1fNiInS1Mxt0HpmsgRoMe1bfymNPDKXPaqdQtgvFpthUGKR8Cyk/2A+Yhx
         /K2RHzvlQDYK6DVjMIaNZNb30CNVNe46oRi06/Cuou0SMHrbnljS4hy5hXdsa7j+Oh2d
         dqGC7fpgiU7E+ncGQA4D04utpj1Sjm72RPMAjevAZOsFjRynneF4PY6wwy8Et9D9dZpa
         9tLsePsyXqyyPG8X/E4kiTO7ZQZDYPuVWMcVA7qUvtdXLXEcaG2wE0tZdYE33Q+8tiNd
         QrVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716244987; x=1716849787;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e0pLgi/Ie9mwUu+JG7FdsWCZvilGZsgDCVTNuG94dR4=;
        b=FVzZINQY+l/vemhjIHp7ba9/MGOlsIZKFdrw/TqSt8py1oek7MYlVLYpePyWIi4jPe
         MvRyxNRF8yN02QD0TWUTU2DWlpvq3pechyAUeis08zUw6qYt8kkiECFge9qUpJzrXuyA
         pq0ojU1fg2xxX+KRxblfVPK30AdBqIu9AkLVQk1OO441Mk8owWCZYqrHXOtMV8wUVaZ/
         nUPZ7T/IlVX4/BaNrWwtim2/HhvV6bjFuxoLSt1r1V40P4Zt+TmmdY/wt77JeIwWrzfY
         JiG8IWe3wVxThIjuX7ItNeRr0CETIP7OAHkXZ33pq7zXlfpIsM2BOuFWGEdLthBDZKyu
         u26g==
X-Gm-Message-State: AOJu0Yy7lpJwGi7p30NU98LDbDXxPGKUhPSJXx3hqBEJJtDNOENHAiWA
	PbOLm7r38dma8WDyZjUc6OAyJJ/26W7VUHXgutYx7qM0w1pH6Af8UokLoqe6mL61hsvciN3kVYY
	fhe5A9o+swQ+cNHtGPOtENVQM+fWkDUkX
X-Google-Smtp-Source: AGHT+IHQn3mMZNBqoOql+tg+RLAj3f/piTBcYgNkrLOOSnLLQmBsy5cCTB7ftqxY1bphexr8KsPuO3jJ3uxOLYKhjXQ=
X-Received: by 2002:a17:907:7816:b0:a59:8cd2:5b2c with SMTP id
 a640c23a62f3a-a5a2d5d497cmr1976268566b.39.1716244986830; Mon, 20 May 2024
 15:43:06 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 20 May 2024 15:42:56 -0700
Message-ID: <CAK5yBb8fXVKOzN1VuZ43yJ8SZeDKjB-3PGbx7JW7+EBoJjbiOA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW20!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c9a7270618ea6ce0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 May 2024 22:43:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63142

--000000000000c9a7270618ea6ce0
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 2
randy.macleod@windriver.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c9a7270618ea6ce0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div dir=3D"ltr" class=3D"gmail_signature" data-sm=
artmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellsp=
acing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layou=
t:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collap=
se;border:none"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><=
tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand =
Total</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold;text-align:right">3</td></tr></tbody></table><p class=3D"MsoNormal"=
 style=3D"background-image:initial;background-position:initial;background-r=
epeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">=
Thanks,<span></span></span></p>

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

--000000000000c9a7270618ea6ce0--

