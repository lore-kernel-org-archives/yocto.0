Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1741BD1714A
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 23:35:21 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.6504.1729553719651841627
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 16:35:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NFjO2dTv;
 spf=pass (domain: gmail.com, ip: 209.85.216.48, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id 98e67ed59e1d1-2e56df894d4so2725673a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 16:35:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729553719; x=1730158519; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ezOaDBjMIrunaECcCYNNuYVQofvLXZjleo5w2JmS1A8=;
        b=NFjO2dTvBDsUHZlwbYRtAEexMEOU2A0a+nB1MJeOCRl8ZqQOAc0zQLI/VvSwZavLv3
         m4GbOqnVPgZERqW7ySkv+lQYu1uxXVhe+0GDumqdu3HjHSElWH2/vXh78XZqVjYPQ2mY
         Y7kwur3D32RnNVf7CTZpb1aca+P09WgybzfhLiVA0rXSl1EfFBMUh8UV6KdVHDz2DCFz
         ehaMD1OkdRg6DiMR+8b5xutp7833N1p3JWIVtC2vhhuw9Csrx8LS94N1rZbSc27Pcgwp
         pVwrkxQonwDJdZP1Od6kLRT/ASYotIfd4YagUvtRv2Pfvwh1L3d7i66p4s5OtCmWhTyP
         Kasg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729553719; x=1730158519;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ezOaDBjMIrunaECcCYNNuYVQofvLXZjleo5w2JmS1A8=;
        b=Ps4ByAT1AqKUnGbc0mJViCwLyWk7IcDhSzvdwcAoV/8kA4VxhRPuokke+RK95muTSr
         fhOD4UXQ9kudtY1lLQfMrhKmIM8cXPHvFmzZC/e4zzcwaI0QicOgHsreh2y0kNUWvxCV
         IfGXSrI2maX7jWOZW2DVJ5JM5Mvxg9I+kS4+pLfjXnuiiYTqwQsfLHB0VGeSjp3cqaaQ
         4ZP30sBSh/bdUPJGIfDi4MDzpnfOGstPvoEpmisYBZcdJZNJ9tHZaFy+p5hIqy8FJw6+
         ifwruAKtLtlkA+hrWtA6myytEXov0W8KkH3asPx4HO0Rr2E+e3glsdjMjNPYLkrjdwDQ
         i5Sw==
X-Gm-Message-State: AOJu0YxlLKlrt5wiFMKWhtOcGzOK9bPUcG/0ClkA4ZRQTps5DUvpg3UG
	zrNH5BMeKYI3pXwckNZYHAGC91krRoGARXCu0cm2Tg+HpNoF/MzXHuTp3EqR6qDSV9xDG9Isj5l
	2njKksJVG3JunPBQMBlZan7NEbJxdBK1q
X-Google-Smtp-Source: AGHT+IHBGjg+gEkUICykM4eavtPQ99Hkfn7pFNsw/tUbWi0wSCTHFKBPHs95+w1N5Bx8seCL7BpNc49Of+ujFHJ8erM=
X-Received: by 2002:a17:90b:956:b0:2e2:bad3:e393 with SMTP id
 98e67ed59e1d1-2e5ddb4184bmr904622a91.3.1729553718818; Mon, 21 Oct 2024
 16:35:18 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 21 Oct 2024 16:35:07 -0700
Message-ID: <CAK5yBb82EK9hFwBD77Jsq4MjTsEDQ0bcf_yZW4dt1AgvAUBibA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW42!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000007bf6e0625051b9f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 23:35:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64075

--00000000000007bf6e0625051b9f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 4
randy.macleod@windriver.com 3
richard.purdie@linuxfoundation.org 1
JPEWhacker@gmail.com 1
Grand Total 9

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000007bf6e0625051b9f
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
al-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">ric=
hard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacke=
r@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:=
right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,2=
29,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold;text-align:right">9</td></tr></tbod=
y></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgrou=
nd-position:initial;background-repeat:initial"><span style=3D"font-size:12p=
t;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--00000000000007bf6e0625051b9f--

