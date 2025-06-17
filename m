Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2E78DC7114A
	for <webhook@archiver.kernel.org>; Tue, 17 Jun 2025 03:37:08 +0000 (UTC)
Received: from mail-pj1-f43.google.com (mail-pj1-f43.google.com [209.85.216.43])
 by mx.groups.io with SMTP id smtpd.web10.9966.1750131422499947134
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Jun 2025 20:37:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cNXJVLxG;
 spf=pass (domain: gmail.com, ip: 209.85.216.43, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f43.google.com with SMTP id 98e67ed59e1d1-3141f9ce4d1so1104211a91.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Jun 2025 20:37:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750131422; x=1750736222; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ziZFjQbBof9FaMShiEQroSow1Q4beftiP6WkCm3V9f0=;
        b=cNXJVLxG7Eq8CzEu0NUCxI1pLFbVrad97SEJicGYuiURIg1T8sAfkK1/nmx8StTkhr
         UCQ1eYnzdkRE506wQEn0wG54DwZNOLKuItcynvnSEoiiqL0kO89FYvXYkr8pvFA8aU0e
         LQ2iY+NRiCAKA+9E+71DLV7l/N4Az/6PFKYqV6XMP7M+o9qyrrjb3XBHJNNoKXFcQlw3
         ms7pvYI6PWU6oIOAZ2Fhpv7WvYwBqi2Jkla1dprFHFEKU3HuBVrRr1bljzUZT5eNHVEV
         gSnsZlqnI/peT52P/j4hT10kw0IWduVgJMqRl7OkXIbPUi84V+e5ZN4tGk3j5ks6cQe6
         hQAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750131422; x=1750736222;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ziZFjQbBof9FaMShiEQroSow1Q4beftiP6WkCm3V9f0=;
        b=p98l5+NlufZx+MuNSw6Dey4LRGTVx8Q7TMx8c37ubpxZ4qKZcBrcdAN6AaXuLK175m
         YtDTnygrOLF3J8mMzT+IVaTEHxgLgHcIcih9gRlxcSRBSU0F+yUqosmvrcSucNH37/0X
         8zacQHcIN16kgjOqDqOxcIOINCYvSmAPp2GhvZE4q2uOtI3L3E5qHkdHYO8oWWoSb8HU
         MC7oayRtQsp1bL1Efmg3t/t63BjLklEpuDWJ+bdRO2Lb9duW4SHPZrAHowQ6PbkVpKKg
         s7xuwFakkYIdAExZZfgQhzPj+B7PAf3Px6xyJaX/nLNKnT/W+3+yMg/Y2+q4ufhsbfDx
         RV0Q==
X-Gm-Message-State: AOJu0YyEuF+TATo6UMnLa29wuPXNMwZBz6kVkckNdRksvb3q1hZOzKzb
	QTvJRd5Eov/oc4IjPakEjzLMydM5DPExHmMkhwyjK8//3kJRufXn6XlQ8KtuCj1KfhBm/FvrC9b
	e5VRgvJ5/Dwy58pdaBOZPrmd6dcPuNFaT+kBAW/c=
X-Gm-Gg: ASbGncsYKKbktY7/q2nBATBMICBRqj8dGaUxo537I25Q6SlYxRuIXQgKZsxzmmvV0M6
	FkathDjJbqbct7ex7irS8lM2H+530cdvgQPJS2KSkfH4Jzp4m89jpRF/omvjMy6VpNwiSBJQjJ/
	uTTW+ECQuHjDDUyBtxuAFt6Ge4ClloKM/H70/LYsoLiwNsfwDNb5UlozSs/S7eKdbJ3hJaCw89L
	h3Y
X-Google-Smtp-Source: AGHT+IEn5mSN8NLC43nnwfrUjxSoZ5aiuqMBvG+rKQ0KVGmtj7vUg86KilS/qU6UEk73wPP2T1Brk2YM0EsXJfuF65c=
X-Received: by 2002:a17:90b:4cd1:b0:311:f2f6:44ff with SMTP id
 98e67ed59e1d1-313f1db806fmr23388406a91.17.1750131421662; Mon, 16 Jun 2025
 20:37:01 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Jun 2025 20:36:50 -0700
X-Gm-Features: AX0GCFs_id4ARRvr9RLUXBuxfwXcn3yHNH6ebd3Z5ia18AkGppZPJOdvIwMoTJA
Message-ID: <CAK5yBb9bkFknsYZfT2kUpUko79UOhXBJz=o5ua1=-hOoU3UvTA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW24!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b2d3d70637bc3904"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Jun 2025 03:37:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65515

--000000000000b2d3d70637bc3904
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
yoann.congal@smile.fr 1
tim.orling@konsulko.com 1
steve@sakoman.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000b2d3d70637bc3904
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
lign:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smile.fr=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@kons=
ulko.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:steve@sakoman.com">steve@sakoman=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">G=
rand Total</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold;text-align:right">3</td></tr></tbody></table><p class=3D"MsoNo=
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

--000000000000b2d3d70637bc3904--

