Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3D5C25B10
	for <webhook@archiver.kernel.org>; Tue,  7 May 2024 02:09:41 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.2036.1715047779662020948
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 May 2024 19:09:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ADyPnoDx;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a59a8f0d941so661104866b.2
        for <yocto@lists.yoctoproject.org>; Mon, 06 May 2024 19:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715047778; x=1715652578; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XlKkbhkQnhgdEwhy77j0mlRdyQz/uGcj65H5zxO0+R0=;
        b=ADyPnoDx5u6ML52gS8129X7XHqSfU7YsRUNa4intZHfkYUotT+aolWulKOPz/oWrHB
         0a3T/7ddOfloc5h2S+VX5C5q6qa3ZVCLJDYPJdVehvJMcOM14SxueoSfJ/4bxl5jpyoA
         oHCra9u7DO3SQPpnhtzrWmPlTLHwkmLOiwYcm/7i5ouqb4HW5YbkiaMpzZZkLjxwFQ/G
         ie+LuwEOX+f9hFes5tYcrTi5TpCGbY3eiDy9ajqRd3AgsrjyJlzyE6QWu6S03O0yFnbU
         tRa+sHhFubPbM1AorKdp511RC6v4ekryORx9quiIqFZi73eOnaI1gb5D0Jdq6LrW5sXn
         GYqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715047778; x=1715652578;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XlKkbhkQnhgdEwhy77j0mlRdyQz/uGcj65H5zxO0+R0=;
        b=AwK3JCHf9XZzVrQhHWLjgwOo96dq9FoN4vaLL12g3Usfl3Hchu5PejWkCgptcvUU5p
         8hE9918I3f7e4zE380O9pPjxqXMGPNv1g0xaQ9beZJYJDlzaz+nFGZ55U2UcWWHHaCuy
         3eOTjim5sVNuJ9AUKSf41FqB/W122PB4PA45i9uaaWuneYeoknywxMvKw/0T8g+YjAc8
         JH4MVSjO3nRsIRKMCTPE6xlYWWyOS1D1qZIhR/jVTNpqvwjjyuZ4qNaIURn/CQ6PRDEX
         Q1bdzG4HLDjxMhlGg360TzIzuHKZqrEs0kab7F4NzmusMoJfewlW93Uzynm3KPunP4Hk
         cKow==
X-Gm-Message-State: AOJu0YzRFkCZu4z2aByoh/6JTv4jd//MFcqgcQv7Ccwz1WJyB5RS3etO
	OMGvlSDkICAVD3O/YtSvyZ06qpwn/0BTDBDb5BD3voOJTPqKOCnE7QoAU+whyqUMXfpehYxe5M8
	LhFLlTLffGRuVpYZbCJIZS6AF9R5i/89R
X-Google-Smtp-Source: AGHT+IHFptIODNl+7y1iX7FbdqPYVaPNQxiFduGEVxhYPhdOOivc81SdXfKKBbahqk7xV9ugQqogbGlFtktp0f7HLgY=
X-Received: by 2002:a17:907:968f:b0:a59:de2e:98e0 with SMTP id
 hd15-20020a170907968f00b00a59de2e98e0mr2407626ejc.56.1715047777561; Mon, 06
 May 2024 19:09:37 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 6 May 2024 19:09:26 -0700
Message-ID: <CAK5yBb_1hBYoCyn9SDcU6_-=pKeP5g-cb-aYCHMJgxYy+T-8mg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW18!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008df1410617d3ade6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 02:09:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63037

--0000000000008df1410617d3ade6
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 6
randy.macleod@windriver.com 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000008df1410617d3ade6
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
al-align:bottom;text-align:right">6</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Grand =
Total</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold;text-align:right">7</td></tr></tbody></table><p class=3D"MsoNormal"=
 style=3D"background-image:initial;background-position:initial;background-r=
epeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">=
Thanks,<span></span></span></p>

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

--0000000000008df1410617d3ade6--

