Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63AC7E7716A
	for <webhook@archiver.kernel.org>; Tue, 17 Dec 2024 04:24:34 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.74795.1734409472232845452
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2024 20:24:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VA3vieOz;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7fbd9be84bdso4525478a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 16 Dec 2024 20:24:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734409471; x=1735014271; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xM21cO00w4yHOtb1+ThYra/1+MXrNv+fVnHZhgHRo/E=;
        b=VA3vieOzddkYH07peo5NtcXuU19Cvur4FPLB4LF4lgndqtMUONo4+kITfLwptbRQPF
         Lzbugc0ZL5yWTorVVnJGS6wOJlKkMk6xEShH9hPrii6IuybLpxwXneQv+K9SqABefcOY
         xotIZc1aat2n4DWM9Nth8NUfT3yPNWoP1PRiAkxkN6KuD5HF7W2Jwto23S0BHWqlb/V7
         8/Ndjoc8eni+0LSXxX0SMQQCxtYqds0I7/t0Xj/11Sb4ZAyevrc3kgYPa3+f6sDON7oi
         bdAUbKiQ3QElxFs8ZFzjpBqrBbUhIt9NZovprc81BvMSnykhrghNja8FqNiHxRQaug7t
         Ub9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734409471; x=1735014271;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xM21cO00w4yHOtb1+ThYra/1+MXrNv+fVnHZhgHRo/E=;
        b=ka05I9rd005LrK7/IJlAJa/eBXZI6+AamSLRItFLl25zY+CVbHIpESvDrwgQNqH/Dx
         Br4+DhRdx+7sNPUhV+UgVo8nXfdU1mwIgxwZSu6Eq48RfGDBHNe088w3VNKQws5x73kf
         VAVwEXBjZwuTRjRH7/dXLPinnfjPvaoFc28+4g+0P+A0cpupoWS0IwirvT8Ob4szuSEd
         Dr5RrSwG3d+UmCP+ugpEBvNBebsweqoBJ7PWfJ4hbZO+LPvU7rP2iUWWOZaeZ4AG6X2k
         oHIML4l2ld7coXUT+i460mY85q6WEOiMYDGiZTBCEzxDCnu9WLJObRNQVMWaONTX7H2j
         1jeA==
X-Gm-Message-State: AOJu0Yyt9pHGLx/XAOqvFYgpd7rXQj0pMB4af6vwq/ygxDYGzLGyyLj2
	VaAIkqBLP7XBE8h1t8hjjscvbEBUug+8hxZUvdaDp+KDBNSb/QgoH1+qeX+Zj8ed2dv7UrSGxEf
	zHwxSx+jYJ1aodEEyoauTHl0T6/Y2dlSITWA=
X-Gm-Gg: ASbGncvf0gzXfYBN1zU4UJ28RjsTSCbD9uVWQMKgIAa0KafIMuP+HRFAY3uJRwk6bWt
	IRnZdp5xD/sMGofTnbt1pPoUW13StypKYewqbz3XGGXsq61rNjjN1nEqA9hi9NLq1wUTnht0s
X-Google-Smtp-Source: AGHT+IEsAd7S1vphAcdZ5cir1zrZKZLrAcR968ti8bgXgTwxr+ZnKIkhtRHx6OTdHkS9+QTkPBJ+ZJSbV8nAzIDb8K8=
X-Received: by 2002:a17:90a:d450:b0:2ee:d024:e4fc with SMTP id
 98e67ed59e1d1-2f2901b3661mr22899548a91.33.1734409471221; Mon, 16 Dec 2024
 20:24:31 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Dec 2024 21:24:20 -0700
Message-ID: <CAK5yBb9ogGHTH67JN0GO1R0YiE+KqRFCmj=HjAwZnn_97t=EqA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW50!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006d694806296facb8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Dec 2024 04:24:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64451

--0000000000006d694806296facb8
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
denis@denix.org 2
ross.burton@arm.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006d694806296facb8
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
lign:bottom"><a href=3D"mailto:denis@denix.org">denis@denix.org</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">2</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-=
align:right">3</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"bac=
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

--0000000000006d694806296facb8--

