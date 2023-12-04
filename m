Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FCFCC46CA3
	for <webhook@archiver.kernel.org>; Mon,  4 Dec 2023 23:58:55 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web11.86522.1701734328193423990
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Dec 2023 15:58:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=R1B6lld5;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-a1b22a31649so243147466b.3
        for <yocto@lists.yoctoproject.org>; Mon, 04 Dec 2023 15:58:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701734326; x=1702339126; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NLcf/FxKFH9pz6PrYUrF5xNrcKn976pom4ZRs2sf0g0=;
        b=R1B6lld5wqinv2kTdVyTctuZMhlWYS/axtqRcoOJbYCGpgWfnvFZYGR488qRNRG4lF
         isiN2RKOaBC/Nd3MmXQynnx2uaiH42/P9QonFcnshRNCU4eyYUvyVeez5SgR1e04Wr/G
         7W+dDEBTUzXcVlD1nQRfuHUKHWWqqQoKdFqPrrgnMiIaiwIyksn7N+lV73AHGE9zuaq5
         fAICnxgpinbkZDef7z4bTEbinG+A/LW5tZZoa1PQKWTc1G12x4da27c8rMw7er4zTOtA
         LUlq5bPcRjC2CxF6j7lTEPHpLLw1Ey9ITW2/7h2Ughr9FpLMx4zjGLDwsxZXBZlmAwrW
         /3ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701734326; x=1702339126;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NLcf/FxKFH9pz6PrYUrF5xNrcKn976pom4ZRs2sf0g0=;
        b=KjQn9Uo6c/W9Yq1/goQnfLC2Ys348IcdKI+i+5cQI32eNIkJlpXmFYzvJh0v7cT526
         7q82lVaEwwXjy7WfR6ggbKS6Wka69Rn8wl3S5H1W3TMZ0ojflksXD5I0oPTThsKnSwia
         VzYpJTJmqr7rzFtpVHwXSCIEvwvHDZyz4rEwz5NdtXRDDWy8tWpEAFO/4Jx0oeA2+W8x
         du8mQQsOFPUqsst+7UzFPcwAa6aNZ9qLxMcLkDcTIIoOoQ/jMDd7RC8iE02uNa7z6FUL
         /zRHhdI3PfM6Oo8uj5AMx0/fKPVfnY4Uq21kN5S76/dVrxMWJyVAfX4Lb/r/glqbqY0p
         pMrw==
X-Gm-Message-State: AOJu0YxdYUK7UKscXDo5zQpxWjqvh7rjTOFhgGUMM8PA/tyheoXdxGhS
	wPBMpa7A/RqC/FtgHTI6DMsUePWpZK5z2SNx6jW8Wg/vPp0=
X-Google-Smtp-Source: AGHT+IG66HmInDea3t8DEdEbVsYExzUZUkoTzJmQVNDp2EgJImuEvMZq7PLhKtmIPaDsb2FSsoB69AdpISqqvyqONts=
X-Received: by 2002:a17:906:d011:b0:a18:e5f5:7841 with SMTP id
 z17-20020a170906d01100b00a18e5f57841mr3802701ejy.32.1701734326318; Mon, 04
 Dec 2023 15:58:46 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 Dec 2023 16:58:33 -0700
Message-ID: <CAK5yBb80BF6PS0hH+r8=Zwri+MaoDuSXKcTHCxAuV=S_yCNikQ@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW48
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000005bad0060bb7e696"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Dec 2023 23:58:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61797

--00000000000005bad0060bb7e696
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW48 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15300 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15300>
bitbake-layers
create-layer does create a new example layer with 'kirkstone' in
LAYERSERIES_COMPAT randy.macleod@windriver.com pavel@zhukoff.net 0.0.0 5.0
M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000005bad0060bb7e696
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW48 are li=
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
yoctoproject.org/show_bug.cgi?id=3D15300" target=3D"_blank">15300</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">bitbake-layers create-layer   does create a new examp=
le layer with &#39;kirkstone&#39; in LAYERSERIES_COMPAT</td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windri=
ver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net"=
>pavel@zhukoff.net</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">5.0 M1</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"bac=
kground-image:initial;background-position:initial;background-repeat:initial=
"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span>=
</span></span></p>

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

--00000000000005bad0060bb7e696--

