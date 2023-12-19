Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80EC3C35274
	for <webhook@archiver.kernel.org>; Tue, 19 Dec 2023 00:14:24 +0000 (UTC)
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
 by mx.groups.io with SMTP id smtpd.web10.6472.1702944860478300046
 for <yocto@lists.yoctoproject.org>;
 Mon, 18 Dec 2023 16:14:20 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LPscFe9R;
 spf=pass (domain: gmail.com, ip: 209.85.218.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-a22deb95d21so457475166b.3
        for <yocto@lists.yoctoproject.org>; Mon, 18 Dec 2023 16:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702944859; x=1703549659; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UwM/uEgvsdxaP1qA5xNtDnfTACivVZsbXqvazkD+BPA=;
        b=LPscFe9RKx4NR7COp3bKvGxQafq76/IsUaMhcMbWEqZql3W2yXUBwjNXU5ktprE/dW
         sm8F43mjzohIxnUiYBjtnuHC3Q2dOXxRmeqSOIgVx8QgO57uBPyqyLnaya9aBXbHXbFO
         hdl5ymTivjTVr/p3vdvnOw/U+6NuRdVY/Bu0R6alzg+xusnizfdBgzLt/6u04mxXt3Mc
         o0XMhx1TzIIerek7AVntojcaoN8m9jGgWmyH/zCTT527u51HRYVqzaTlU/jSY11LWNpC
         xpAfvJQpYoks/zYmKDXLSOl/hmEZV6gdLNO3ipMl1Cfj3VzVe/PZjvZVtcnLVdAgu0Wf
         sPiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702944859; x=1703549659;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UwM/uEgvsdxaP1qA5xNtDnfTACivVZsbXqvazkD+BPA=;
        b=wp1p9n5jMyqDGd71eSofLGByADXAjd4zJDzOfwhrZv7u+N46yL2lQWd7hZgM5GTq3b
         32Eo5yA0B1qwr2zjmnLn2LxW/ro7t7TOy127ET+h57fM6DLJttLyf0UtgTwkoPUSxxv2
         /Bt+c1pxIaxJgnnPqfxUhY8ej3OUmJCsuKQMMJyqsGmzM4RrLFgbLAOE5fgDRBcYX4Y1
         1sEVHX8KKinChh6exAgLiGdEVx2uTHitONORJ9FhKV9oJCigeQCrI4JjS38J40rSm4au
         ul7T31PaCPUOVdTqG5Tk3FKscI7btrVpsc93WSs/f/ccWbsqZkseQKOBGiyMYZu+uCSO
         eF+Q==
X-Gm-Message-State: AOJu0YyPPAKmF46JOzVw2E+sv+ssr0nMJDTv6r1CE59dnPtLumU3NWZD
	7Pf5bRZ+shwtFbiOW6Q4EVGdLGq4mmbdmSgA5rBC0BqOz+8=
X-Google-Smtp-Source: AGHT+IEGJwhlT9muaI/88VOuXK6b1fV+9KxoeapltjxSyI136HRA6mb5W9LCsp0OP9WSM9XXVq376/hIef68QAp9IVY=
X-Received: by 2002:a17:907:9408:b0:a1d:4f7c:4428 with SMTP id
 dk8-20020a170907940800b00a1d4f7c4428mr11619724ejc.63.1702944858632; Mon, 18
 Dec 2023 16:14:18 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 18 Dec 2023 17:14:07 -0700
Message-ID: <CAK5yBb8vCAt-G3eSrhNLqGQQVfZUKmvo=ZJ65F7UMGeN_dw9Gg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW50
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000005ef43a060cd1bfed"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Dec 2023 00:14:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61975

--0000000000005ef43a060cd1bfed
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW50 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 14125 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=14125> busybox
wget ssl is exposed to MitM attack due to CVE-2018-1000500
randy.macleod@windriver.com randy.macleod@windriver.com 5.0 M1 5.0 M2
15070 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15070> AB-INT
PTEST: glib-networking glib-networking/connection-openssl.test failure
randy.macleod@windriver.com tgamblin@baylibre.com 4.3 M4 5.0 M2
15323 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15323> A default
poky/core-image-minimal does surprisingly build bluez
randy.macleod@windriver.com yoann.congal@smile.fr 0.0.0 5.0 M2
15324 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15324>
nativesdk-python3
doesn't support PGO randy.macleod@windriver.com ross.burton@arm.com 0.0.0 5.0
M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000005ef43a060cd1bfed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW50 are li=
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
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D14125" target=3D"_blank">14125</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">busybox wget ssl is exposed to MitM attack due to CVE=
-2018-1000500</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wi=
ndriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) =
rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom">5.0 M1</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:b=
old;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-c=
ell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15070=
" target=3D"_blank">15070</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">AB-INT PTEST: glib=
-networking glib-networking/connection-openssl.test failure</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin@bay=
libre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">4.3 M4</td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom">5.0 M2</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></t=
d><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;tex=
t-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoc=
toproject.org/show_bug.cgi?id=3D15323" target=3D"_blank">15323</a></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">A default poky/core-image-minimal does surprisingly buil=
d bluez</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windrive=
r.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom">5.0 M2</td></tr><tr style=3D=
"height:20px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decora=
tion-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15324" target=3D"_b=
lank">15324</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">nativesdk-python3 doesn&#39;t su=
pport PGO</td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windri=
ver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">5.0 M2</td></tr></tbody></table><p=
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

--0000000000005ef43a060cd1bfed--

