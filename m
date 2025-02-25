Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 38095C021B2
	for <webhook@archiver.kernel.org>; Tue, 25 Feb 2025 05:53:29 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.2036.1740462806165177439
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2025 21:53:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E2rZZQRo;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2fa8ada6662so10392415a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2025 21:53:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1740462805; x=1741067605; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fmyLk7x5vezbhp5YPt8+EePGllpADA54403hWfsvnR0=;
        b=E2rZZQRoYOyVQ3HE43hRFmOgMd42f+v3umaaMhjm0U9QgYzt7ezo/L5UnQSj3DbUCt
         z6OB9H5ghEz1cJaIzGAq/uDyef3IXfVrvZ6s3YNSWig2MwbOAiT8DWhsr76JuJxjcuTF
         g5t/tMtuNtLKGNJhW8GVNLhaUGs+c6ZDUp5wDI5UUNFsuAuC/UoOj/dK3uqKVhln5X4Z
         86JhpeHf1jFnYogJr0/e+9lQ6YUMEfjhbmVNega5okuNA3WzBC/xYY4eRmtA3wmQtLgb
         cn5Go9WpkpyMFNZ3+j4dOR8EFdnL2gM0DOhHNIm2LUVEOrEpMOMM7sNL9OVcBefh3Mbo
         RL/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740462805; x=1741067605;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fmyLk7x5vezbhp5YPt8+EePGllpADA54403hWfsvnR0=;
        b=tVAIhlfwULZR8npQQP2oMsBx50p8XcPwsHcDfSDZZc8Lu5xNB+ttdWQQt6Hx77zEZD
         HG5OovfO6xwLdRw3aqG7wH/QYGZVZf2vU5V7CE/p360DvHHd1Thzvie9fiBq9FmwXf6u
         C6O8xABml5nAsPNsQBhy4IVCKxhZmJnTjM+Y7v/8PSl+aMsMKBK87JJGC1s3zJFJbygw
         yjTCb/sqGJ9OXgOsxxkpuuhsOpUTZBkJ8R1jr979Nat3/dJxxw74JkdnZfYNla0iJuXB
         Z2+iEbgehViOtwzyt0NyGcKx952ZWZwsE3WwMDDCoKbaqpwHvMp2vr6Qwdv6yhzNQbol
         LYsA==
X-Gm-Message-State: AOJu0YxJKHu1Prp2jIueNzR3DQhhmdKqockMLa5BK6sRzxjKw31os6bo
	tuEUpIQhrKrT9qKM7ge+SS9aPE4QcMKk9doBeDtxD0x/vYf23E2GH+NcL6A4tPF8hp4NyG7w818
	QoiGn19VNTk7sUxTpuE+Z4QqI72vqZSvFkDI=
X-Gm-Gg: ASbGncsI2mtF7V8EOXhBsIb4dAT04usfNX/oaKEIpQBs8C1QQshIVjjB0EiVo5QaG4m
	bpgk9WOK2075CfJK/MumV0GFsYamgAl3o9z6eFvRfqRWSPyOca+RaRuOgArN7LKqX9Pvb7mKYj1
	97B9gHjXbaA7BVLH88uYqXNP4nwinSyypjkeVQ/KQ=
X-Google-Smtp-Source: AGHT+IGRFbL9MIASpUL1mwHGa7pIi8X9VX9Tbu35W8MbbeE3/Ngw+QFUWfcCfdXClyU9yMxSpwKV8fXO9N9acrLxGr4=
X-Received: by 2002:a17:90a:d40c:b0:2ee:fdf3:38ea with SMTP id
 98e67ed59e1d1-2fce87243b6mr22561695a91.23.1740462805498; Mon, 24 Feb 2025
 21:53:25 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 24 Feb 2025 22:53:14 -0700
X-Gm-Features: AQ5f1JrEPMncs2UFs4fov380S78RZqAe2v4gE_v-C8DTD4uVZIPPb0c91MRtvzU
Message-ID: <CAK5yBb_qH0RBq=p945j9_qE1A5H53KRCP4Pb8JNgdD5xthZHSg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW08!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004441ae062ef113f1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Feb 2025 05:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64862

--0000000000004441ae062ef113f1
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 5
richard.purdie@linuxfoundation.org 3
yoann.congal@smile.fr 1
Grand Total 9

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000004441ae062ef113f1
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold;text-align:right">9</t=
d></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:ini=
tial;background-position:initial;background-repeat:initial"><span style=3D"=
font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p=
>

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

--0000000000004441ae062ef113f1--

