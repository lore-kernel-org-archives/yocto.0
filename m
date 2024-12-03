Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EC70E6C605
	for <webhook@archiver.kernel.org>; Tue,  3 Dec 2024 05:09:12 +0000 (UTC)
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
 by mx.groups.io with SMTP id smtpd.web11.12597.1733202542426282771
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2024 21:09:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BPHdpzvv;
 spf=pass (domain: gmail.com, ip: 209.85.210.173, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-724f0f6300aso5701819b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2024 21:09:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733202542; x=1733807342; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hEEYhAe3pcpbMNIUPfKFZVQvIkZD3RI2ocs1yaskzB4=;
        b=BPHdpzvveLqSFy/I2e5ilfuRhdS5Y7PmBFGnkNV+oj+QkcEsQFAxOgic02sAZzXSef
         baPvtREvMhbONaYBHOWI8XGL+Tj0F/Vcx11bJbslE07/eoUE3ayuCz4d3AiYvaegPhFb
         frLS+6f1BevRcBHeqchbPO8Es/h0s9citOEe9YBuHm1N/sWinCzayNjVD6mzyQP1NsCO
         vHbsqcdr6XTeoxN1mK39nAnoAZzy12svJWepJgP6eeY0NMoDB8ocmoq3FFuVvt6wfl23
         jcNZOMErXF3l4GAh/m/dHngqgeM4XHS3fOMu5i860fOglbEoeM8IBFIAQ82fe6K8mlB/
         Re7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733202542; x=1733807342;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hEEYhAe3pcpbMNIUPfKFZVQvIkZD3RI2ocs1yaskzB4=;
        b=sevBOGMW+iyewnLVZKoheIkmU1lUhH4CDFrYYVlnCqi4yOyTXFZ5SssfIHRmCoyaqk
         1ual9sLOU8pyBaHT1LiapROUbAfJaA1IoPUfZvcC3aMxC4cDxWdMZiePZArZVA+kaMO9
         XjfFkxo9pMmG4pWRUg1JYve1iAvPPmpEoHmb31V4MUbXCaRWFvfNPT5F2eyTF7ORBI4S
         lszRU32b3pf2sYVTetOHiQ5usKlH0ex5A106FFGcdankOUXUNyPxwfjlea2diuwACHbw
         +fUJz7HeSb7FA2HLRmc0p9uaia/VqXZFI8VO13SvJ0ZfegOmRiLv3WIucS/cuacGHqJr
         2i0g==
X-Gm-Message-State: AOJu0YwPkoT9jMjHaT+PBywg07xpHOQeqcCfs+TfWxhplJlAm8NHW/qT
	W9Rwkz0D3Id8Sw3/ltpEan9mLIozO6LsK/KcSTnXuMaPfoNreb5E0tAd04iyNF5bEETh7xfdbML
	8gXq1ES2dcah2Po5d6FjtSxBwrWbhhzSG/6A=
X-Gm-Gg: ASbGncuWMa0rWXPw/yXJgpCJiUj5Hw9VxsRFXrq776iQaltWEsJgev1eHvtjBJNDazr
	1Ec2obtEH+sY/0tH1pxbAqQorZViKywZhMuC8aSUrCj7RFzCeJMU46eerx/WrzHTUrA==
X-Google-Smtp-Source: AGHT+IE53zwYF7+Jj21kP3tbg2zvqdrbUooiRWBL00iflP4l4K1qo31JSY1LissVdVrumI7jty0IdOw2bHRlmXOSDWU=
X-Received: by 2002:a17:90b:1d03:b0:2ee:9e06:7db0 with SMTP id
 98e67ed59e1d1-2ef011fbabcmr1664525a91.11.1733202541679; Mon, 02 Dec 2024
 21:09:01 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Dec 2024 22:08:50 -0700
Message-ID: <CAK5yBb9LJfhddp7aJ1bgjG6ed19idxqXgVoN4DOEiBZ7GVQVoQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW48!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d21f38062856a98f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 05:09:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64388

--000000000000d21f38062856a98f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 3
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
Grand Total 5

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000d21f38062856a98f
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bu=
rton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:=
rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold;text-align:right">5</td></=
tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial=
;background-position:initial;background-repeat:initial"><span style=3D"font=
-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000d21f38062856a98f--

