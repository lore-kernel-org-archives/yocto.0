Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89BC5C5B552
	for <webhook@archiver.kernel.org>; Tue, 10 Jun 2025 07:13:04 +0000 (UTC)
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
 by mx.groups.io with SMTP id smtpd.web11.80624.1749539574641380993
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 00:12:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RpXrD8mg;
 spf=pass (domain: gmail.com, ip: 209.85.214.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-235e1d4cba0so40971175ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 00:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749539574; x=1750144374; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QRxxNcr+u4axxzWHrE4eSVk9rR1nNwyfbAFGef4fF+M=;
        b=RpXrD8mgFj9Iw6gr5l71iSRl36i7sGZIkNYLQtJGGfVtD7xxQU5ANFFLZymViNr082
         X7f9gHsTnV98mFt/ZucCUlJTeVEM33pL5HRwd1uXRKIvFQt5YlLCMCepfaI31D+1vZqc
         gJyYzFeBD2qZAtwqA99GBtIqiwA+GrD4lLUYN3Vq9c/0EK18ppuz2vpYM2+ez9LwNj4v
         GnwCz4Nlk6ElAazHVPKGMMEmkhG7DJGiMEyhUCDtv9AdMkw3JRi98k6T94oazkPlXDPX
         XGuMA3LV+ofuoc0dxSL9B3ayS8Q9QRm/qLSZEwxm3pj1xJp+pn76cOL7A/JpvCC/oNXf
         K1hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749539574; x=1750144374;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QRxxNcr+u4axxzWHrE4eSVk9rR1nNwyfbAFGef4fF+M=;
        b=E1SVjfFCCDBgQOCA0vw8COSOXyYjdGxBcG1ovrWzjStECsR6WoehbP9o+jjCp014h4
         WW4SOCFg3Ub1wgM8BWh/CXoE5mHxB2dwV/sfpzZhkTBVFlIz2jmFeaP3dZD9ayNTQAoJ
         lS5VoFRU+2JwdHJ3SwhOWcd9LFMPznbsuYYmpIQs5jhgtEg//HDm1lH2JsUPiJb69RdB
         WxDgefLqri7Npxp9yiZ/IZh6qccmSXMYR+s/xj++UNW8FzuigebZcmEbGZJa4jbkUWh1
         uif9zLfYTd9ZSyufiz8lFM2AasIsCMUqduDwvmbtH45VMotBSeo0do4SGlC5oMiZgpkJ
         2Syw==
X-Gm-Message-State: AOJu0Yx9y/h18kk+UWlIp734qPadUZNLfuFUWOOwFfQBq+XpA0/xgDA+
	zq+orMG3VTVxcmhUtT+dnE1oKJ4hO0LUlzM4+07q97x1Lavnz3xxm95u7Ht/MOr8g3CeUbg0GJK
	JJae9+IVY6U+xR0OM1pYoTQCpCWBKH9B9MJ1a
X-Gm-Gg: ASbGncvRtkK35xQQM68HERZ7P3JuEWURh6b1wEJy1OVY6LDQGiVdhs3P7oCpIIVCait
	UUbTzmBIjI9sfGkBLtHHfKmd7i5nLoMrHQ/3Ua5J8fSPvpyw90O20Wbyl5ml89nuNeAdeeAmjT+
	wdDIPBdFcrqhi57diCJVUbfpVvrl0VCnru1p+jrmTObuxK4cQZ465MLUC39eCIe57OPfvf/6hHK
	o2A
X-Google-Smtp-Source: AGHT+IHujWszCcVSoacPGHpAWbFxoeKy2OI8Fa+ZeRDD5erWRL/x76bHG8GanACVs6CD8rbEAZYajV+NVyDBqC+LBC4=
X-Received: by 2002:a17:902:ea0f:b0:234:e0c3:8406 with SMTP id
 d9443c01a7336-23601cf42b2mr236004805ad.1.1749539573736; Tue, 10 Jun 2025
 00:12:53 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 10 Jun 2025 00:12:43 -0700
X-Gm-Features: AX0GCFvI3N62h76F3FzHlhto8w-fx8Wg_19FSSUhFlbxMfAX475hFvTeCC57Nh4
Message-ID: <CAK5yBb89Ez_kvxQtKTzmMY4SBgdNySZ5uN6rVQyRMTBxFb4LEA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW23!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d028b00637326c6c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 07:13:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65493

--000000000000d028b00637326c6c
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 11
ross.burton@arm.com 5
richard.purdie@linuxfoundation.org 2
mhalstead@linuxfoundation.org 1
Grand Total 19

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000d028b00637326c6c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">11</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.b=
urton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundat=
ion.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-=
align:right">19</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"ba=
ckground-image:initial;background-position:initial;background-repeat:initia=
l"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span=
></span></span></p>

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

--000000000000d028b00637326c6c--

