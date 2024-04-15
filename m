Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A467C4345F
	for <webhook@archiver.kernel.org>; Mon, 15 Apr 2024 21:39:44 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web10.5037.1713217182335047978
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 Apr 2024 14:39:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nYE+FNA/;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a5269c3f9c7so193663166b.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 Apr 2024 14:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713217180; x=1713821980; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IeIq+52B30mjPX8EspO4771OqL329+y98AzeE3Mgvuw=;
        b=nYE+FNA/QPErY48EDCKmMaxcpdsSPxPX99lcZSgPtvukLudYpNE+upjjGQnYgcrnOS
         2qkuCPg91dfRGi4SZNOjZt+bvSDm4CLsiz7gj8lW+Doq9bqVJt18ThvFClQxD+zmrpFC
         OX2sV8GJatocBzS2aY6U3V2zosmDOYPEp/lUvfZ8h7SZxU9M9Z1kzO1qCgdm+NE7sy5Y
         XAB66u27VrxSca0x4iyIadUWFNnckHuXqo8a1pxbV0Hnaal4/xarGvXpV1Zz6LosKvlx
         O/1xVABNyUW3RVD+n/1HMd1oJuhKuf99Q45ORpX51phXb/gJmaOw2RP44Ez+ev+NJmI4
         scsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713217180; x=1713821980;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IeIq+52B30mjPX8EspO4771OqL329+y98AzeE3Mgvuw=;
        b=KCot92xY1Kytwzkqn56MSeWX1CgFlpo4F9+UAUH6glEkvoPcLiExwNBGFYp1cnlU6k
         oLzv8Am7eARikNGNVzoZR7HXW/R4HF2si6OKKPphAHyq9HydBjPTlG7LaWhw/maSMkjH
         UBwSrYxPqV2CiuWvTdR/yDvztuR/6PASJ9l4zpjUHOgBR9tCC0E2ux3Giqvv84RAq1s1
         YlFWZlJRY7kb0tYOzlb0gANEFDdE1nwUWSA/IvQgYqmPFeRYxv4kZAMJSTHPWU7+v8el
         O2VxV8+CbC3Wcr8K866SUBGEkf0sY0wVia/PxoPD2uGf2CyU4wWpdlMo9puzK6uN1ySg
         DHfQ==
X-Gm-Message-State: AOJu0Yx5Yl26wOfrV2oMkcujmAzM1RP2bpxgjhull1v4hScZYUNOz+tE
	Jf0aSGh2KIzNBkj/fiKKw4mbKpJ1bfuXnWSdDULZibfQxACPSjPQFp40mV0h1tM0varm6Zs7hwD
	v8xCgVt4lyWUeleqa4N7eRdKIWIFgSE2k
X-Google-Smtp-Source: AGHT+IEbO2eP7LQJU3yN1PQ4ahlMICznzG6WMQC7GfNcbgJTXS28KKGoXqHPJA3sJpVSeeqHgSy3A2ycDIyU864XFro=
X-Received: by 2002:a17:906:f2d7:b0:a52:5789:9c5d with SMTP id
 gz23-20020a170906f2d700b00a5257899c5dmr3532571ejb.39.1713217180326; Mon, 15
 Apr 2024 14:39:40 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 15 Apr 2024 14:39:30 -0700
Message-ID: <CAK5yBb_78w5AyYS+G8gF8VfaY66koxC+P6vbPOaSKwLj8h_c5A@mail.gmail.com>
Subject: Enhancements/Bugs closed WW15!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000074e41a06162975b2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Apr 2024 21:39:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62933

--00000000000074e41a06162975b2
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
alexandre.belloni@bootlin.com 1
Grand Total 2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000074e41a06162975b2
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
al-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:alexandre.belloni@bootlin.com">alexandre.belloni@bootli=
n.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">G=
rand Total</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold;text-align:right">2</td></tr></tbody></table><p class=3D"MsoNo=
rmal" style=3D"background-image:initial;background-position:initial;backgro=
und-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-se=
rif">Thanks,<span></span></span></p>

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

--00000000000074e41a06162975b2--

