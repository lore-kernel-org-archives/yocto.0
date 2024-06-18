Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1193BC2BA18
	for <webhook@archiver.kernel.org>; Tue, 18 Jun 2024 14:42:54 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web11.88140.1718721772703191385
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Jun 2024 07:42:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=YRckPL75;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a62ef52e837so709973366b.3
        for <yocto@lists.yoctoproject.org>; Tue, 18 Jun 2024 07:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718721771; x=1719326571; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ciH6wR3dDJzhvnjaZbML1GR3Joe6fcTsYBB2F++ugJA=;
        b=YRckPL75V/KZPEWH/1XLeQ+W6zvFGCuK84G1fcawsTv8eIEi/bwJ5FHJPgLWgnKi10
         AZFOTIMDDitjAyuXlmdzwnY2Ee2Z9wsb7NldvtVtUveatBKRzpaW7In9OgOygd6jyGRd
         UlZH4D81/jZYYR5RZHf/DI69x5h5u3GYBQi/BlDw7xpYvGN4mKO/6+2/R80EULZ66sTo
         vg31BLmH9bJjI8sQg1iUqUfwxfWgSMSHwuBhQyJBESli7O3xdXRr+vxiCDoTAFxyhf0o
         RY6bxjh6JgzIugX4KqprlK4ucpO23cuzoOinXLt+qRu6APyaY3UOALPvW9Yzis4Ma5hB
         s4jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718721771; x=1719326571;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ciH6wR3dDJzhvnjaZbML1GR3Joe6fcTsYBB2F++ugJA=;
        b=IeZTIHWuLZrFEGBRGdFyn8xaCSfapDGEfIra5orMAq/4LpAFREYOw/hdKg+tFrOBXO
         9xzdLh0ioIKQQUPO2ccfztjz6ucImd/LM40N7Q1+SOPeUof5jdo3l7QMq7nZlZGXWr5B
         m4hf8ivzV8aA8h2ON7wdhiTM3JHgZXzcSTzwZSN6lImAyu7mBBsSiasO2FOJo+J+go9n
         +vaYQ7nmPeN1feNIq7zJH2PXHtIMX0Z7a3vB/PIdZp4djMwwD32fXymK3V+sfCJdMdFX
         KZxKodQvftHjd3p20ko0VAowN2aXJJnSJasM1d80l42Vva1tbl6JsO5MsceFIPhqVx1a
         8b2g==
X-Gm-Message-State: AOJu0YwMIukv1aJuptog5vDg1ruX7E8oyVmdK7b6kTx4PKcLjzZ0w4AQ
	oErYNG4y6rj9PQAHHjPPZ3UXcmXKqaMqm38TokF1B0UQOMK3OR/+Rna8HdZN8WkD57FunI4COqE
	BJJpDC1ZlXKHft/GIa7y1a8XIz3uzqZrO
X-Google-Smtp-Source: AGHT+IFXr2ISS7tH8vJ5FwRKsBWZle1Fy642rX8oApVZZ42EmQymgqR8+QjwYzUVVqYkp9xI/26Vc3MA75iwqHWR0F0=
X-Received: by 2002:a17:906:195b:b0:a68:e335:3e62 with SMTP id
 a640c23a62f3a-a6f60de5fc3mr802949266b.72.1718721770709; Tue, 18 Jun 2024
 07:42:50 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 18 Jun 2024 07:42:37 -0700
Message-ID: <CAK5yBb8Tg15JMbUO6=yw1wYP7ttyiq+cHF2qsiTb-EYV6DxUcw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW24!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009c698d061b2b1867"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Jun 2024 14:42:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63359

--0000000000009c698d061b2b1867
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
mhalstead@linuxfoundation.org 2
JPEWhacker@gmail.com 2
richard.purdie@linuxfoundation.org 1
david.reyna@windriver.com 1
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000009c698d061b2b1867
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
"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundatio=
n.org</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@g=
mail.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.o=
rg">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:da=
vid.reyna@windriver.com">david.reyna@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgroun=
d-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;background-color:rgb(219,229,241);font-weight:bold;text-align:right">=
6</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image=
:initial;background-position:initial;background-repeat:initial"><span style=
=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span=
></p>

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

--0000000000009c698d061b2b1867--

