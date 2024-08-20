Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29504C3DA4A
	for <webhook@archiver.kernel.org>; Tue, 20 Aug 2024 06:27:38 +0000 (UTC)
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
 by mx.groups.io with SMTP id smtpd.web10.12487.1724135255469159731
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Aug 2024 23:27:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hhLDgi97;
 spf=pass (domain: gmail.com, ip: 209.85.215.180, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-6bce380eb96so2981975a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 19 Aug 2024 23:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724135255; x=1724740055; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=F16X2A6quUqwu6nn442zRGG4eMJHMpcg5MSOuTMOKWY=;
        b=hhLDgi97VIVUAL9wqvh8xXFvAC7uSdhXYRBoQ9X1Gapwcyy9SqOj5727BGDkZGXm+K
         vW3OE+kpVt8t+80zmti03jw6S1w0TKXXhnL8fLrPbVKEjgB1eBuapIUCPuRhV9KFNK+v
         7wk6ETNUFcC3nqy3/0Ow5nUAO/2JQPoUWUb3S+pNZpfeXfpksUR/tCWJVhETJMDh3Syd
         zR2Yx9nKRwYcbnPnKUqRWeNNq/3E0KGCdqsgFwUm3N/Mtc/V0BwPylZeqILMC5DsjNYD
         wP4Y/6ELt3IwY0lXlFK3P6BEfKSERx7YPjfmsICN6S6jpjAP5t5faa78X5EOAvfr5VC3
         fnGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724135255; x=1724740055;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F16X2A6quUqwu6nn442zRGG4eMJHMpcg5MSOuTMOKWY=;
        b=htSXKA6H/adtfTdWjoQTf5o7kZ7DqgdDhTJ9KHGg1dtlv24GbCPfVUJ5KlzN/F6/pt
         3PEhVrHuWCtHzyOvnWfFDMxje2++QKMMC/yJxchFGyRkxGi30k7iWuyyrz+CvG47xdkH
         2jTfURDWkGmzwkHrRGpOnxurQqyZBp4kvqu2HCeptPP20lCOduVT/uSReeZ00Z7vMgWu
         R75KM+xY3X6lXN63JiL1MnAxcO85jz76+YTDjJ21Gccg1Tu5VmzYEXuXe2DRec0I3t2W
         +Y0XXrFZQlL1szU85uHprjDVPBrHImTOXDomSr9AGnTqOOMLFWqbVO+jXaQe6oOieexB
         ak6Q==
X-Gm-Message-State: AOJu0YyAXYotxKzim9/OKvUakgxyNreez1eFf5blGW5kjn/BqzlJdJLT
	RK4tktVpfBm1YSeInHx/rgghycqv70bczrbwffp4V8mm60UTic9e2UA59KfyNJ0YS49ZHlC1+SF
	FN0X/bSjnOI77Uy3M6fwIWFAtArrYx3Jn
X-Google-Smtp-Source: AGHT+IFeM48IujgySpVYsgXbhVFSk0LzgnjsgStBS1Zcs+gb8Rdbn6y/t5OwSP54VH0Q7Ho9NMSCs2Z+0xICafx9Pv4=
X-Received: by 2002:a05:6a21:3944:b0:1c4:ce43:7dd1 with SMTP id
 adf61e73a8af0-1c904f90c9dmr13398804637.20.1724135254616; Mon, 19 Aug 2024
 23:27:34 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 19 Aug 2024 23:27:23 -0700
Message-ID: <CAK5yBb_XNFN1rT7EcfdqmJVWGABgzxoWbuMVHAHdkxT4UYmqOA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW33!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006572eb062017853c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Aug 2024 06:27:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63726

--0000000000006572eb062017853c
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
jon.mason@arm.com 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006572eb062017853c
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
"><a href=3D"mailto:jon.mason@arm.com">jon.mason@arm.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">1</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgroun=
d-image:initial;background-position:initial;background-repeat:initial"><spa=
n style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span=
></span></p>

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

--0000000000006572eb062017853c--

