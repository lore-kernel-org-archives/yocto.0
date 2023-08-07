Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7F8C001B0
	for <webhook@archiver.kernel.org>; Mon,  7 Aug 2023 19:23:14 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web10.44085.1691436190406481255
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Aug 2023 12:23:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=UtZJRo5N;
 spf=pass (domain: gmail.com, ip: 209.85.218.44, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-99c47ef365cso728990766b.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 12:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691436188; x=1692040988;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c7vigv2OBdR6OHsk80p3T5HisUeJky00CtsiFnbOvMk=;
        b=UtZJRo5N8DK4fx1aOQFrfVJvFqpkB48qDudqsDSzsJe5ReTrnUypyVJVSCnHxCr89R
         KkgP7WbE/ul1kNztBt+x0sdFcDIlhOKIax3wlqO8r7D/hO0fG0gpRgapvPJyXZ+1bbhv
         S0qsjj4Gmlyi4Y167wOQDVeQdn4xotI3wE5e0Ze/Uj3MvWCiwMMtwNgL1McqxSe0OTWa
         DeKNCZiJUCJg0HdwmGMej2KvKUANiob1crxjGujU7KW+y9pYboY1JyvInkxQLiYv9C9c
         w4rYYCXEFlhKXY9LD+Zgz30SeB+0V5hCNtBEK2GfQOUye9VgLN+SWs0PEkXp/YUhlyCQ
         MSUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691436188; x=1692040988;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=c7vigv2OBdR6OHsk80p3T5HisUeJky00CtsiFnbOvMk=;
        b=Og1V2aVskSlMm/IRdxOnSa+8ZNzwOCo+vuzYzkBs6qKwDvJkqHvhpBxqlPKhEa63W8
         uLUQIQ3VddcWymq6HVW9zG1nq7MtSM5GpjWNJ3Rwegg7ArtfuP8NxhP26qFIVpUrDk9+
         lmHVjm9BAXSTr416WKenBN0cp5ImB6oJvuQyGi2grlWhN6D8l5qWpk9g+Y0Dx8LFeFPJ
         XYyPl1JpiAW5xJyLAfZVbx9BJSTqnVO9qd6/8SlXLY8mmA4MW1eARGmW3RnbI869fZLB
         vWWsPdEWj9UWFaTq1feHs/uAnmYIY6alwveANzmayOiz5bQ7o9vty/GFrKY3WfUgsOd0
         Pu1Q==
X-Gm-Message-State: AOJu0Yxa2PvbY7eqcrXzGoi7zRXVXdDfkCvj/WROxM14xZNkQTzXj70f
	0A08jMYeZLsDMYWQy0GTmWuXYTCw9uz7LgkS8J475nTCGTWttQ==
X-Google-Smtp-Source: AGHT+IHfeYkyx7+HOTmVv8mzSU8+lPeTiCHaVd2QsyAIWRZLMPbCp3bmMbtW9/FcsvUT4iMB+A6XrlCh64pNQlVLWaU=
X-Received: by 2002:a17:906:18c:b0:994:542c:8718 with SMTP id
 12-20020a170906018c00b00994542c8718mr9711860ejb.76.1691436188390; Mon, 07 Aug
 2023 12:23:08 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 7 Aug 2023 12:22:58 -0700
Message-ID: <CAK5yBb8UzrGwZKygWM1-Oi_wia4A=sA7hpCUD58ADwsMK+Bg+w@mail.gmail.com>
Subject: Enhancements/Bugs closed WW31!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002b580706025a2d0c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Aug 2023 19:23:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60725

--0000000000002b580706025a2d0c
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 2
yoann.congal@smile.fr 1
steve@sakoman.com 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000002b580706025a2d0c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><span class=3D"gmail_signature_prefix"> </span><ta=
ble cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"t=
able-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-colla=
pse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"></=
colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@wi=
ndriver.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.=
congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:steve@sakoman.com">steve@=
sakoman.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bo=
ld">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241)=
;font-weight:bold;text-align:right">4</td></tr></tbody></table><div dir=3D"=
ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"background-image:=
initial;background-position:initial;background-repeat:initial"><span style=
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
amily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager<spa=
n></span></span></b></p>

<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:9pt;font-fami=
ly:Wingdings;color:black">(</span><span style=3D"font-size:9pt;font-family:=
&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=A0</span>=
<b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&quot;;color=
:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&quot;MS San=
s Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(208) 244-4460</span=
><br></p>

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
u></p><p class=3D"MsoNormal" style=3D"background-image:initial;background-p=
osition:initial;background-repeat:initial"><u><span lang=3D"FR" style=3D"fo=
nt-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color:blue"><br></s=
pan></u></p></div></div></div></div>

--0000000000002b580706025a2d0c--

