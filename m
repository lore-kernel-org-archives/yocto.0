Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79FE7CD13CF
	for <webhook@archiver.kernel.org>; Mon,  2 Sep 2024 21:25:04 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.9481.1725312302781133431
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Sep 2024 14:25:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LPSJCUsT;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-1fc47abc040so36560525ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Sep 2024 14:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1725312302; x=1725917102; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KhmSBBU2P6TXb/8kG0eAMg0v0QHY5xNRfXQo3XA39KA=;
        b=LPSJCUsTrml7U+kDIwAmq+xsoie/sYmR8C/O97mgdtwj9C7U5vBTiajm7g2aGi3EHd
         JaS+aZS4mAW7wZCTGYLs/mR+eiQLzKeY6JWo4cHANU9oEm+lR3uJ/8C+SSndePDVo8rk
         f/HZdsIbey5bIkjJgNwTP+GpvRTTC3m+Us9y7Lk2pQOHcQDH4st+QXnOiMkR/6K0DB2n
         BA8sohfgSI3kRpoqMWTcgQojcJf4wRUwDhPCZqye0TKPhoOrHys4eMKXknA/aIc6zm0Z
         PD5lJido6nwAQv/UkhPSN97ts7HU7WldjOxdPOgRz46FP/jZdsVLOOYoxyUYQcZnTnkn
         h6wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725312302; x=1725917102;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KhmSBBU2P6TXb/8kG0eAMg0v0QHY5xNRfXQo3XA39KA=;
        b=Sp3q1quQZAagNsD7575dXAdgTBVtm4/kexSKOW7c+wlaqfTsOJyYe32fpBl2Cq2+9f
         q4O099/4xMbCsc2RvXOPMgGP4j6tWgqT3w8TlfAoNg21FIFweFCHvRv21rIKUME1if06
         zY8JZVaXP4B9VG0WvEYOQeVZFCwu79m7GoSnIG2jLasT2EMWfQ4+VT91WNrgppAjIJOe
         0nGlWANBslEw7+VBzhOqIdLJ078jgYyOIXRaaeCivwyV0N2fz7dVYFl1eO0/6rDP7LWv
         dv+umVTKnAhUd/+uVoLPdhBHske7WF/Axy0G31BVHPTQk5L3Ige48bGUfm47wcI6+a5c
         mrvQ==
X-Gm-Message-State: AOJu0Ywk6+oAwkAx5k6zibS/xfDXWv2eE6AVteYCrG0clTlOkBB7kKJj
	offCo7M2087PdyeIBOaqKsK2PIZFMWexDEAapYJTBpim1lB2VTwUquGCtZpQT+0Mh6ejWUrbcpC
	WIWnVjlUKVkmaOryunD54wqvBB2KdXTXS
X-Google-Smtp-Source: AGHT+IFJjRHMo6B0O0uQvHrs6iNA8Xp0Esbnxd7lr1jt1DUAWzBpZZDNDbe0jZH3ZOPRnat/RamyODaRygMROnvgYN8=
X-Received: by 2002:a17:903:18d:b0:205:8121:e99b with SMTP id
 d9443c01a7336-2058121eda2mr33703935ad.15.1725312301971; Mon, 02 Sep 2024
 14:25:01 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Sep 2024 14:24:51 -0700
Message-ID: <CAK5yBb9K5jCHgNZoD1mNTqpXxi2CEG1nDzncdEYXn58Y9p+oxA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW35!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e2c09906212992fb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 Sep 2024 21:25:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63778

--000000000000e2c09906212992fb
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
Grand Total 1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000e2c09906212992fb
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
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weigh=
t:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,=
241);font-weight:bold;text-align:right">1</td></tr></tbody></table><p class=
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

--000000000000e2c09906212992fb--

