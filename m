Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C0C2C4345F
	for <webhook@archiver.kernel.org>; Tue, 23 Apr 2024 05:14:10 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.11672.1713849240066075345
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Apr 2024 22:14:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RcTZjrSg;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a519e1b0e2dso577746366b.2
        for <yocto@lists.yoctoproject.org>; Mon, 22 Apr 2024 22:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713849238; x=1714454038; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZozqAF1P806MXXEUSSeWanjidF5vdmVzu2r4+rptdaw=;
        b=RcTZjrSgBmtj+w2gZB0ydzOoxTA1xSZCGFbKZAe7aGG8Tvt65QCJwgtHsIHgtNL2/k
         uhKmypEWbGHqNpoycdebTbPHwrF4KEiFdDMLDcWp2ZrcUf8FRks+Lko1bCD/iz1WsWzz
         4TniTX4xCRadqAVGZcpWyRcbHNej3NYQ2PqAHrNko5dZWaLk1Bl/51sqKR4ZP8AasSyw
         gQcF24Fi7R6fKvwywFNNiHC0KmvWn+3xTAYfOg1DXx4CQPzgaZ0ZkJvpQQktWouNTgdi
         H2UA+mjtlhNQcOcn+AhKa2IZQKLiV+F/mOgByhPT+d4xYuLYBFqatjIG3noeN1F5hoSV
         ry6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713849238; x=1714454038;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZozqAF1P806MXXEUSSeWanjidF5vdmVzu2r4+rptdaw=;
        b=Zq43sm6iju6ijrbzuuVQcASJDVkxhfwYgQLNPgvtJ2YRmdnGegUOn9/EQtltptbrOP
         TJPepitw1R0PERIhL/cpC8QeNvAA+eKzYI4jDsC8UKB3LDx1kJrmQIQbR2mZAzLG97eY
         HQcW3itLPSX+C4OWwFJXWOdQNucC//LURyhJMlJR0jQzRQZFri855DKN+1rDTaMjJYO1
         JBR/i7G0X8/5ARldlYMc1oBE8HD/gZjsCY9lEtZ3u0GTfIk/xZ3F0dWIBc5/HDlr+XGR
         C53ogEUt1A2jvVZYYABpEh7YVIWi/FsnxGRKH1yPmZ9ZwxW9qRtRo1JKykhSNZcWYPoJ
         eRRg==
X-Gm-Message-State: AOJu0YwxjSxUx8epGo6NIGUpkfhLGkB5IH0aqHm1kxlAeQ2Cs2PwM6P+
	+tl0ftbR0WRb5ykAhmUanJf+DdU4v+XzFPQlmXERthfRH4uVlAwaZdrj34UH5xpt84KJB8f7BJH
	wHG1pW5kKxNhEbDrdM35O3cDeX4rdroRj
X-Google-Smtp-Source: AGHT+IGfSnqyegKLCzBeTHOv5cULmoRp8vcFgDmeSCSE3QzkeBXqVWnqmc3Ttb87ahGutd3jWECWnnBKmtgN4mjlY1c=
X-Received: by 2002:a17:906:4e95:b0:a55:bfc4:7d61 with SMTP id
 v21-20020a1709064e9500b00a55bfc47d61mr2580027eju.56.1713849237932; Mon, 22
 Apr 2024 22:13:57 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 22 Apr 2024 22:13:47 -0700
Message-ID: <CAK5yBb8-y9--SQV_WQEEnOGSTzoWOnC8LiA68mhOrM1cwC_0qA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW16!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000693460616bc9f3f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 05:14:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62982

--0000000000000693460616bc9f3f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
steve@sakoman.com 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000000693460616bc9f3f
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
"><a href=3D"mailto:steve@sakoman.com">steve@sakoman.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">1</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgroun=
d-image:initial;background-position:initial;background-repeat:initial"><spa=
n style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span=
></span></p>

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

--0000000000000693460616bc9f3f--

