Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCA14C83F33
	for <webhook@archiver.kernel.org>; Mon,  4 Sep 2023 23:59:48 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.10836.1693871983694789410
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Sep 2023 16:59:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=W+6WNUtI;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-9a5e37a39ecso260562966b.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 Sep 2023 16:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693871982; x=1694476782; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=awd4J9MDI8h5Ah3oTfc3p0pUrR72w5MQwwHRc/D2uzg=;
        b=W+6WNUtIXM4TkNpDJf5ZcU/THchAccJSUeeF3yuGKAsFGFodXu5oxzSCmLWn4h2l7o
         Aa8tbjXSisyLX1AS2Uf1z4oLySIRODCTYsFUOrzGbmgysLWOlHou1DLxEK+e53qmZwLw
         ow1zjEJaqIFr3NwbCc6kyZ8SIU+ShxW+hDZc847ZVUyH+eJy8dBKhShCUx8O+TiHjMPV
         s5InmAIkJ3SD6go9rhwMZKgJxov5wW4yTzB5gCaWmJIA722sSYgP+rVeuY/ksAHya+Se
         Ylk8B9349oda051+s+7pLvyJ/Hw7Y3JbG90kAIgCBBQPkUuqf6yNyTPFOEuO4FtkpKXu
         WIMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693871982; x=1694476782;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=awd4J9MDI8h5Ah3oTfc3p0pUrR72w5MQwwHRc/D2uzg=;
        b=jJpCfm1XGyUcoP/K0grYDNfypj8xYIXiDCA+ojl/lTyz0Ugchk+sUEQHf2TQu/UjTA
         l+5bzi7HtbyJih0ZPxiiT862aZo7HOUWVKQXZsP7rEnSjNBwrQwZWpip9KQzaWHRQ0JN
         yENslwWn2oBAcIiZlB9Jy2TS2pj1nAtuuytre1wvHy6NK6osIYghZP+GY2iAofEZaZkh
         2a3qcOrKOQDJaXJAdKnkuNxS7Onhc/JqAv4ZjG/zAm2a4HsGnAC/sVilC82wOYoGwGqz
         tNuUmQvBBNvQm+kJNv2qSc3IX5uoQi1/HfSpnbIsTtV0OpUymHO2gMVxtArg/UG7n4qy
         8VgQ==
X-Gm-Message-State: AOJu0YwCnlGPkbSHcv5DJymEkUTRhsbq4nS0DAjy0zxMXoQp2nHhpiXO
	clKpnZTEEbjIEA/jJm7ZuwkjfbbxXNKV64P3ziqXuCA5rnI=
X-Google-Smtp-Source: AGHT+IH8FMewsOoxuKCHTAsCtI815mnU84akSbM5aFcZBir4tHaYag7ztpr8P4NHX0P/Z+qCYRQvtMckY32K28cAO3Q=
X-Received: by 2002:a17:906:304b:b0:9a2:86a:f9b7 with SMTP id
 d11-20020a170906304b00b009a2086af9b7mr6337168ejd.59.1693871981702; Mon, 04
 Sep 2023 16:59:41 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 Sep 2023 16:59:30 -0700
Message-ID: <CAK5yBb82ViSRkmMXjL9+4O0Bo8RXTzYqMUwiAsB6hGdZVG2QOg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW35!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c3af890604914d3f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Sep 2023 23:59:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60927

--000000000000c3af890604914d3f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 1
randy.macleod@windriver.com 1
mhalstead@linuxfoundation.org 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c3af890604914d3f
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
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstea=
d@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(21=
9,229,241);font-weight:bold;text-align:right">3</td></tr></tbody></table><p=
 class=3D"MsoNormal" style=3D"background-image:initial;background-position:=
initial;background-repeat:initial"><span style=3D"font-size:12pt;font-famil=
y:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000c3af890604914d3f--

