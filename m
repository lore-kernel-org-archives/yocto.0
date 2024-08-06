Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC5E2C3DA4A
	for <webhook@archiver.kernel.org>; Tue,  6 Aug 2024 03:31:08 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.9212.1722915058903877551
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Aug 2024 20:30:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KieXdg1f;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2cf98ba0559so216522a91.2
        for <yocto@lists.yoctoproject.org>; Mon, 05 Aug 2024 20:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722915058; x=1723519858; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=sBcqHDJHN+IXtyO9TUXHpdE+Z3wH0q0fFmSIs/7s0h4=;
        b=KieXdg1fwdsECV/K35XZNm7W0bFwA9q7kKXWl6fraJQoghGuT3R/5xex9FPFZMcE+t
         jQP+5tEItHfzFDV7NiXgR3sh0b7rlRwxf8c5/ZsVyoAhWXNmJuSJIKB6JICbZSTIgALN
         Pdr2xRrTlPScNYDzUKt27nqfuDSJ+Jox0y3I8I0R/3Nd1uJXIdo8xPbVNUTm9oejdfj7
         KMKc/jc/7/BEoI+koMKUXDdc4SOyuacmCts7wQ6LDwgTdy7s4kYT25tMEm4k9jCUb54f
         Zx3Uo25OqJUQyuUiBSvPsUdQIJMmFKMOpAgfKdMlENjtfOL4wxYPwFinhZ4cIeTxQ3hy
         iZqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722915058; x=1723519858;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sBcqHDJHN+IXtyO9TUXHpdE+Z3wH0q0fFmSIs/7s0h4=;
        b=rPD+krV8M6AeYXf+y9cn1cCOiQ5uqGwqS55WoXMGsTpg1aTK80GxvTkwO+DkJyFcuG
         +2ix3JvKj+8K6s8XRYtDdEocNSK6ImI+zfqYThiVg7ORLLluJ/4U5Vwr9HztTXuuf1bk
         d2bgQyn+FZ3GxnboMMK6qysuw2BnzLZVsxzPgyJ4kvxPHX1JCI+cwTmaSK0QpJKSyU6V
         JQyajVljSAiLtD7GI5cUg2lC9LQjVLT7ajoAN53gi1WS4+6k3jiZddfTrSwZ5bmvGSXo
         CuHRjt0TNXhHtniGu6v3AJ3QLGZCpB/sWfYV64WYtaEonuJWpJtxbkC6cDBXXb2iaiH6
         /dAw==
X-Gm-Message-State: AOJu0Yz+/8lk0TjqllaY5t9u8dLBoyq2d8Y6UJFKTaaWta1aR8qfeeVI
	vLkosad0ZQnwydU2uu3HV0juQyDjPpA4DofjygBT+STG0RTJdEGRU5E0wjxx3cRU0yQU0tq9124
	QR8eMT3emTZ+BjnU8M5eUjA5fkO5Y+6pL
X-Google-Smtp-Source: AGHT+IFwBJyNiMXD9hor7mMF4UNEBmZFwEZQ6hFa7XC/ID7YNafywAC1K99/Kj0Hq5CmRe+uagFYzK90MYD6FYaXafo=
X-Received: by 2002:a17:90a:17cf:b0:2c9:7d09:1e7b with SMTP id
 98e67ed59e1d1-2cff952be16mr13579143a91.27.1722915058061; Mon, 05 Aug 2024
 20:30:58 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 5 Aug 2024 20:30:47 -0700
Message-ID: <CAK5yBb-5p1x0xgxrfr1+Jvz5MLOOHuL3YQ7e-dPKc5720N6xxQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW31!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000039932061efb6c19"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Aug 2024 03:31:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63660

--000000000000039932061efb6c19
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000039932061efb6c19
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
"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weigh=
t:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,=
241);font-weight:bold;text-align:right">1</td></tr></tbody></table><p class=
=3D"MsoNormal" style=3D"background-image:initial;background-position:initia=
l;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Aria=
l,sans-serif">Thanks,<span></span></span></p>

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

--000000000000039932061efb6c19--

