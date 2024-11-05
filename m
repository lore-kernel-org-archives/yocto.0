Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16C06D1CA36
	for <webhook@archiver.kernel.org>; Tue,  5 Nov 2024 06:09:57 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.11409.1730786995250178213
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Nov 2024 22:09:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZTgjqlSV;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7ede6803585so4365931a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 Nov 2024 22:09:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730786994; x=1731391794; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f4esd1oDVXLK/WQTYQKrWX/+AZp3xFJ85OUpxrkvMe0=;
        b=ZTgjqlSV6Hf8SeAqAzxn26Hf/V86A5uZQoBXeK98eu8n00cL1cxYTHMSVR3fKckK+J
         bvD+AmUXh9yiuEN4p6EevNnOjRrQK2j/bIQexE6pvwLIvkd8v6I+JTYXqwVjoL3ymmyU
         whxBWKvznHANqXi5NivN/ZjHLM+9VFGiaqKPkFDYjxNU+UCsCqu2KD30EVsV9lad2n56
         rFDMb0EiEIYQ98VK7o3iWKq0DEq2RcoezuQutdRvA9IJbVHXrOR2hlwGdK2Eu6EQg7F1
         BBTQpWKG/XbIwWanWzUP68CiiKT4bRtGYElMpSbtTEGlaaf6HGdv2oGjisTVICkHivuK
         ULQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730786994; x=1731391794;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f4esd1oDVXLK/WQTYQKrWX/+AZp3xFJ85OUpxrkvMe0=;
        b=Pv1OOUi5xgd+se50SN8bLWbPoTxuzPzt4Ryr0Z1wH/rBL8xEXUMVsfbCdYDj/vaYSH
         zRgbhIctveOuU2x2meMxVMwIdoI0/nXp6tPnitlvGMI92tUdsn3SbZz5i4y85IeqDEW7
         LKfAEfnEB+QmmVOtcsVayZaaSQUUTmDgBusTKo3l7J43EKHAuiFtRm3hlsxpFy8H6HEd
         s+ozkQe7azr5OXu0J458pSIWdnck/iWQNI79PuzvXqgJQ+9kSrmXqflq4KfozPuIzlGZ
         tvntL2uvcIreXafVRAGnwI1h4A37GJ7Qdw9+SJhgDY13vW/RqRvYCGsIW5iN85/P1OFZ
         FOTA==
X-Gm-Message-State: AOJu0YzoapBVIaA8dTZwin+QNtJuTwyRmQcMFp2TDZa9Fsmf85j6lnHo
	oIlpNcMrONyo3+Of13t9qqmQMs4J+hzg3q5Yq+URQ0aK3LN5hk53PucPaffdGPlixwjvAznQANa
	TV+e7NcdNnZ74rk1KnpeigZCL9SLqLiVu
X-Google-Smtp-Source: AGHT+IHshVe17AlJoOjs7tDU1VHj8TgD0ToVz4oK9I4UDfBtOPHfSyR58SIEstoGr0/m2+z0HxPKC0JdrDoOgZpPcoY=
X-Received: by 2002:a17:90b:278c:b0:2e3:bc3e:feef with SMTP id
 98e67ed59e1d1-2e93e0589dcmr26525549a91.3.1730786994406; Mon, 04 Nov 2024
 22:09:54 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 Nov 2024 23:09:43 -0700
Message-ID: <CAK5yBb9y4fD+efeYJwPoxyWD_1KE2PaF_Fgud=AJ6F2PhJZ3Zw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW44!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fbccea0626243fa2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 Nov 2024 06:09:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64222

--000000000000fbccea0626243fa2
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 4
randy.macleod@windriver.com 2
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000fbccea0626243fa2
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
"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linu=
xfoundation.org</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold;text-align:right">6</td></tr></tbody>=
</table><p class=3D"MsoNormal" style=3D"background-image:initial;background=
-position:initial;background-repeat:initial"><span style=3D"font-size:12pt;=
font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000fbccea0626243fa2--

