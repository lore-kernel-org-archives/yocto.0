Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C99B5C5AE59
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 04:47:34 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web11.4033.1748926052534237669
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Jun 2025 21:47:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gL5lvRL/;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id 41be03b00d2f7-b26df8f44e6so5578223a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Jun 2025 21:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748926052; x=1749530852; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=v85K0GtE5x5uT9/QsN1ewu+sRZ/1NmS21qo4FVSBloE=;
        b=gL5lvRL/qY5YwKt4d+kK1hZVpvWZHzFNMRQDiqpQtnWDjc2jP/wFiN2/wJ2CynS5M0
         lZfX+DC2efa3r17i0Y4wxprjkmIw9OhjR3swGQcac77VT1Am4NO2xhIeUMoE1j9EBhV9
         bEIQaYYsycw9/fP9yWd357aaClNDGj1EwlJZh+44vaDhb5m+3i5xPhvMw3iOZ51JvqkR
         JBAtwko1C4IieAl1woJo+U+8G+UOW+j57JSKY6KmFyTH4r6YjjfxonR8Mu/2vCjsIuzI
         vPpvBAicBp0jphLKf/SuHqyaEPJKt6NFQGdstk3Wt92qPXHKWrRuwvUGM5KpXnF9ofmd
         YcXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748926052; x=1749530852;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v85K0GtE5x5uT9/QsN1ewu+sRZ/1NmS21qo4FVSBloE=;
        b=OSEnzsjjY7jWnuNdvk2YncpkzZCG1Unpavn5eSybZEmOyc9B6Lp80oDKJo+QT9wORD
         uNfztk1bvDdx4UuRJju7ZB8DPAne/+MWze2mq1kbk9YcGClx0xWpvbiw95x1IeI8v03n
         WHMYIyj4VMwm9KeocpKisCSCcrnoWU77h3lrn1NB0gp9c14Ne9/b/ireZOh+8TlRoyEO
         CPpohCS3M2oJ6Dw0JMBVistnpOxse0jFLa2UdP25PRlIQFqE8/6FtUxxjVg0pvTiRtAA
         YdOO159+8YQmnTpJngRyTNZ7j5LrzK5j6KQ5T1fiWtAuDuDNkY0T8RqRwwFkyVKMCo3I
         lw9Q==
X-Gm-Message-State: AOJu0Yy8S8hBRexDlTjuhkpcGiW9IjLN7MYHdflHPVrG32wEZswQPmHn
	mrTIAVGVYPv7C3usHI37k0Fd9VM2hAZnBwzPLEhA+XSKZz3pGllw5vqYhVvoHj/OSUwdfWUXvje
	5BFOYEnbshjyb/n2qGROaW2DiIpEVYRy5PSko
X-Gm-Gg: ASbGncvvUrPvQ1Te3RoYCnorCKQND2jopkppHv+AiiSjiTZoxZBiJc+QPF5Oz07YubI
	xRU+flwfY5rlj2+893NTrKpRFmL7lwvrOySAxck51aEQ9fZqXKyXiMfLyKmIC+/XJBcg25MOnHV
	oXLKVAMbLmDQWVsE3hXHmLIbMjp4IAYmDT8MgLX2bmy24D/lllQoaLWf3U7l/B5viVTdA=
X-Google-Smtp-Source: AGHT+IHBtTBd7ujERIf4MELOXgSxX809dGz5kzF4dXNx8A8vanu4RJ60Cowyj0sSTUY43teukSrCsPuCN7gR0RUFX9I=
X-Received: by 2002:a17:90b:1c03:b0:311:f2f6:44ff with SMTP id
 98e67ed59e1d1-3127c73d47bmr18132345a91.17.1748926051650; Mon, 02 Jun 2025
 21:47:31 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Jun 2025 21:47:21 -0700
X-Gm-Features: AX0GCFsX-xAY7L_ir4Q6bCFHgedBKXcm7ygNWMRpNavVy7Bn5TfKlfD4glB3QT0
Message-ID: <CAK5yBb8kchnj=K5vRLg8S7sVc7tM5aEnO58bcEnae4P=jfpcAg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW22!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000c10fb0636a394b8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:47:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65452

--0000000000000c10fb0636a394b8
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 5
yoann.congal@smile.fr 1
mhalstead@linuxfoundation.org 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000000c10fb0636a394b8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann=
.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundatio=
n.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold;text-align:right">7</td></tr></t=
body></table><p class=3D"MsoNormal" style=3D"background-image:initial;backg=
round-position:initial;background-repeat:initial"><span style=3D"font-size:=
12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000000c10fb0636a394b8--

