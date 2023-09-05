Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1A8CC71153
	for <webhook@archiver.kernel.org>; Tue,  5 Sep 2023 00:00:48 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web10.10784.1693872038194784127
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Sep 2023 17:00:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=YtcWfYjn;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9a5e37a39ecso260652666b.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 Sep 2023 17:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693872036; x=1694476836; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=m53Bkmi03XOKNK2QKgTEyWoXGX5sgeMfcmPgl3zLTKk=;
        b=YtcWfYjn1KlS1JRP3n2mo5evlRheoFVLsDHZZdg2Z0NxfEx7Nip0f3w7iAVu9UPSMx
         b1NVQRslLXsF7DYOtUB4QYUgfNAZEEEIJLTTW3vEe/PN2o/cD94snfY5sAjbRIoBfR71
         vSxW7Al3FWRKsguJYFMUuIRWgrjplpj0tU+n6Sg5PrqwMtMhYG9FISbrMl9i8KZ+OuhM
         pMxrkM5T+YLuBqZzMsYd8jr7pM8o9OEGOlj7fVwrw6g5UHDZsqodPFMLESSbg5lIdrST
         dkfMmwIJAfXv1Zlfm5d3sVmEJKgOP+vC2rLm0biLEkAOgadrjrtspvEqdjgN7E5+DKvX
         6Kyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693872036; x=1694476836;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m53Bkmi03XOKNK2QKgTEyWoXGX5sgeMfcmPgl3zLTKk=;
        b=YbetynN+vvWMjmxLC4BmYxAUll2CPjDMvB7/z1Qt8ojwJCvRXX7nFAhb+xUN1wKQ+Y
         xLhj0S0UXCwfyQZ0Npjz4k/FKjuuHew1GcpIwDfIiND8QHTiweUx4tI+/4Z+aW3Ws7+6
         gBW3WWHRXt+jQOUZgfvlZi93QHVnrNGDxOu2qLpzl7jjoanQgULwUd8NU96PV2Nklc6f
         dCkbhiB9XTt8etWht1+jfm+HaYq4LDtbJsCu0Rwm8OoV3vYgTVDc1DSFGPnEDoPirwMD
         Re6ZChn0RETJhWS+BA76NcuLDEm/k85zoye4WSChZvFiI86ebeXjjtFONa+FPli7QsgL
         t0tw==
X-Gm-Message-State: AOJu0YwDstiNmhUyqFk6asyuf/ps0BkN9lY13WdnNXycP/JG6PZhGrDd
	3qo7ctkENw/P64/zVyRIdlF6Jj7lhbbysUrzqJPnM3+1Vuo=
X-Google-Smtp-Source: AGHT+IHxScDRZYKpcEgn1+koV+C7/ksq203XKxeJsYnjyd+D0Zb+3uOTqnYTCs7DaqLoWS8ChcosRpJTJkZ+Xpfrdt0=
X-Received: by 2002:a17:907:2c75:b0:9a1:d29c:6aa9 with SMTP id
 ib21-20020a1709072c7500b009a1d29c6aa9mr6671277ejc.11.1693872036280; Mon, 04
 Sep 2023 17:00:36 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 Sep 2023 17:00:25 -0700
Message-ID: <CAK5yBb-30mTys8y0-bQh_u21ymQoDSzv8Qu++gmX5Nck1WiTsg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW35
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000047b3f0604915172"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Sep 2023 00:00:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60928

--000000000000047b3f0604915172
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW35 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 14901 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14901> lttng:
collect TAP output randy.macleod@windriver.com alexis.lothore@bootlin.com 4.3
M3 4.3 M4
Medium+ 15202 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15202>
Replicating
a Build Offline does not work as documented randy.macleod@windriver.com
unassigned@yoctoproject.org 0.0.0 4.3 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000047b3f0604915172
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW35 are li=
sted below: <br></span><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellspac=
ing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:=
fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collapse=
;border:none"><colgroup><col width=3D"63"><col width=3D"43"><col width=3D"5=
43"><col width=3D"235"><col width=3D"242"><col width=3D"53"><col width=3D"5=
3"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px soli=
d rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Priority</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Bug ID</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold">Short Description</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Change=
r</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0=
,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">O=
wner</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
">Was</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Became</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">High</t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D14901" target=3D"_blank">14901</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">lttng: collect TAP output</td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:alexis.lothore@bootlin.com">a=
lexis.lothore@bootlin.com</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">4.3 M3</td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">4.3 M4</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:=
bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-li=
ne:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"http=
s://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15202" target=3D"_blank">15=
202</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">Replicating a Build Offline does not wor=
k as documented</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@=
windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctoproject.org</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">4.3 M4</td><=
/tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initia=
l;background-position:initial;background-repeat:initial"><span style=3D"fon=
t-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000047b3f0604915172--

