Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 49069C4829A
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 04:54:52 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web10.4681.1707800083511642012
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 20:54:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RKTgaJfA;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a3d01a9a9a2so18820966b.1
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:54:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707800082; x=1708404882; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=aQxKw2NTkd/Kazty+yopqAEdJxR3Is+3A1oEh2w26EE=;
        b=RKTgaJfAggnK11LZpAbGWMonYnB8/AMENbTN5wD1DHB5K9tJg1A99HniwA0k198Do7
         2loo/+kwC5Cl9CtshiEKDWr1m2sUb2npVkVDarjjAxV7ANwBsi8EL/EjO3j6gepI3GMq
         l+5wI4nfRD0Iy+84f8lskBSK915WmJS1cjH6K3UZP2S6wmnyCKoEVbGHizblH5J2yaLl
         gkXFmFDBfeK24fQJSKdD1OwTczMejTzxIpZApREgEJe7KFcmA440x1VW8BHmt9QAg9Mz
         Wvi38kuirY3FQtoudOQv9+Q35A8qtu8mV+ebF4CVdocrtYOETFJAu41nOad8gy3LsWeY
         9zKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707800082; x=1708404882;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aQxKw2NTkd/Kazty+yopqAEdJxR3Is+3A1oEh2w26EE=;
        b=jFUkZo9E4siulT1jzJdRb/cXJQL57wIkDpezl7P1YsBYJuwLKZcCxaE5obeyotbYV1
         4LqM9sZAPOEPl/KAJzKAcHdcu8QLp4/BfqNh8+fTqZZDnFlL9GI7VCMbOT9t+XMe59gQ
         BQZ/kG3VaWA0yIVPSLX98a6ldqkcrextVpi+00MT8NZEEsIMcFOQii4nYIoeE+M16mfa
         ZhIg5qxaOHrMtUjSU6IBySgNYNuK3YeAQ4UO2J4quADGtdpy8Gt0M87zz+s2Hrt+/8kx
         1XQPgKq/1qw+AGUFneQUBrHHaOKcF75BAEgqBDWe1SZvU9wFWzjQ8Kmovw6g37mHKTMQ
         /cwg==
X-Gm-Message-State: AOJu0Yx7aKcmJsQz3iewyT83G2RIbY24XbUzx5Ydgy/VCwZ/6LeCNOO4
	xY6Jwhid37ZsRvQ2QqrnawNO2nI50X44Y4ofK3TlCMDG0rgjeSkILYY9mVnMDFzHH/luLaNxFUl
	3QDZWHJ86olBESJEDTiikYPnqTWVO71ZdJ/o=
X-Google-Smtp-Source: AGHT+IEiy0IUyX4r7EcFrgwdmHNZaoO1H5ytKMu4+UTb2MD3Vx6OX5eQJ4aPxH3HUq11Um3gUABflPQ4sprFfmjHFLo=
X-Received: by 2002:a17:906:7fcb:b0:a3c:ecbe:58ca with SMTP id
 r11-20020a1709067fcb00b00a3cecbe58camr950165ejs.63.1707800081727; Mon, 12 Feb
 2024 20:54:41 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 12 Feb 2024 21:54:31 -0700
Message-ID: <CAK5yBb9tjYnmERk6f-K3Cr_XawQpX+Qx5AuxFvc5O3OwEa7Rhw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW06!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003802b606113c31b0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 04:54:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62472

--0000000000003802b606113c31b0
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
tim.orling@konsulko.com 3
randy.macleod@windriver.com 2
p.lobacz@welotec.com 2
nick.owens@eero.com 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000003802b606113c31b0
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
"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@konsulko.com</a></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20=
px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@wind=
river.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:p.lobacz@welotec.com">p.lobacz@=
welotec.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:nick.owens@eero.com">nick.owe=
ns@eero.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bo=
ld">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241)=
;font-weight:bold;text-align:right">8</td></tr></tbody></table><p class=3D"=
MsoNormal" style=3D"background-image:initial;background-position:initial;ba=
ckground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sa=
ns-serif">Thanks,<span></span></span></p>

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

--0000000000003802b606113c31b0--

