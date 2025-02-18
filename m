Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8EFC02198
	for <webhook@archiver.kernel.org>; Tue, 18 Feb 2025 05:00:37 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.13043.1739854827322770066
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 21:00:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FYei5QuB;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2fc11834404so6956213a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 21:00:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739854826; x=1740459626; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=JTe54uTmc+RCWgeBIHFickfYji59zzHsxLiNtty4DBY=;
        b=FYei5QuBdW4pRSjJR1SAJVjqbFx9Bys/BKqZZVZ/DGUxYWGyVSITK5MLQONrpiE5lm
         wCPHjWbwUEOpdo7WQ8MFthirrAPWSUvny6hIfktC3IevAo79//P9TAWSakzKPhbz6eeX
         /+Ass0d252zJ8iVR9hzrC8PhVUj22zVIoPcyNSQiC8yY/I50S3439TPrWk6MwFicupmN
         RIhHuZ8B+yVCZmjNdBYM81kThXqvL3fN12vmOmn5u+zIN+DsY+nw84oqE52EPKRPNcur
         KxUprrHdA57rQ3TjJckh9atrzGKjW5oHxPJr7Ew2gbbgcQyczrmulQcDz57Pn+5IKkTw
         5VWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739854826; x=1740459626;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JTe54uTmc+RCWgeBIHFickfYji59zzHsxLiNtty4DBY=;
        b=DqM22lwBpnFtElr+PiNElXdcp4Ru5uOnmC4oByUXBry7cjOndRLCkqqPMf8X9kwaDr
         R5VYJwM/gVIyuHHra5bgOTI3D4ZPisxkniAncmhXybckJMH3B8IQPy2hM663735p88T0
         1/seEiLlCkgQAVe7RvfkL5Z1gc4lYgCVqVShfM5BCpO9Td8Do9SEAdKn6pBBqPh5UpE6
         Derdh127EJ6UCqIn2MmrclsloUEIIpnh2QuYWtONZyYGvcbPanx5JyqsYBOoVBdnA6RP
         2+dNGLt8nX9fr79F0zKVTqi10vkGXkzS3ZWtloS6QLO4a8DJR93ICwqSYRtxmRvvYQX9
         +HbQ==
X-Gm-Message-State: AOJu0Yw/q2Vrb4X34MHmf5LvxbTLmQe1T4Qq7pZgBFDEPJ14HM6npkrJ
	THF+q/JneYoUEpC0Anafr+iuFSrBYrSzKangA8GQ/AfT3kgaHzseiWUnDcYxDls0sC50cBm+32K
	a5ozX1Yt0t0A8SK+mh0RBi1iHejoU2koCtrQ=
X-Gm-Gg: ASbGncv7OFa6qDctiF0JoX6YsiGheJePTLFzzYRCuA963xwuGXfb5JzSS7kmLewtBx+
	XL8eDV1Z8UNjRSmRE2X9j40cir4B8/af3/yqZhFNFsSt6u/tKZC1/Pt5brqPerG1KiRdJ75rKdY
	tYSLLZRURrIekxuHZhTVR5aOZhB74EzQc=
X-Google-Smtp-Source: AGHT+IFxe9RgZ+D9gWGss4qSFkDJqj2zYt03tuIdHkXM/FbDCcaXMHkawi1akQz0Z3UY7vnSnSvg7GzjRys47hyJLkQ=
X-Received: by 2002:a05:6a00:808:b0:732:2923:b71a with SMTP id
 d2e1a72fcca58-732618b7e30mr17719242b3a.19.1739854826549; Mon, 17 Feb 2025
 21:00:26 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 17 Feb 2025 22:00:15 -0700
X-Gm-Features: AWEUYZkk_C42A4_6rCz62jE-BaXZHuwT3zgBS8fRax8Cr1ySj_ZN_dCTbFZU85I
Message-ID: <CAK5yBb_r0PvtT1C08rd1MUGX5gFwt2Pdefs3iMU4qTzZ0=MU1A@mail.gmail.com>
Subject: Enhancements/Bugs closed WW07!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e5bb56062e63841c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 05:00:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64830

--000000000000e5bb56062e63841c
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 6
randy.macleod@windriver.com 6
Grand Total 12

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000e5bb56062e63841c
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
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">6</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">6</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:b=
old">Grand Total</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold;text-align:right">12</td></tr></tbody></table><p class=
=3D"MsoNormal" style=3D"background-image:initial;background-position:initia=
l;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Aria=
l,sans-serif">Thanks,<span></span></span></p>

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

--000000000000e5bb56062e63841c--

