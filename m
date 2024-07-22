Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 15384C3DA5D
	for <webhook@archiver.kernel.org>; Mon, 22 Jul 2024 23:21:28 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web10.32143.1721690485947909601
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jul 2024 16:21:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=NUGXSlzL;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1fc2a194750so529115ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 16:21:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1721690485; x=1722295285; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9dTxYrr2bp9yoAx2K/fGAZdhxG5zWmYlGRfJfjxFfJQ=;
        b=NUGXSlzLJNvrlgKlZMLVXpyTS7QyreRYiPfjSp2kW3tF9LgWsJmtUoD5P68rU2P0y+
         jR/5VXQCucY0kq9+AmeJQEVHRoijOu0th6FNQBTEnlJlkGKxYnsstBCONOGy1dPuVLUR
         0GgGhNIS5qMR6qC0FvO2IalhTfktwb6FvwYd4SWhxMFYhKLGHoDar5pNizpd23Ls4Gua
         r3F3U4caIp6dghFmy2xWAjVt3S9rdulkCNCMy0AD5XWaES3y+wU2+DgmUHEbxNowkyUD
         siW+36ttiDEuccVLktFC6bxy1g/3HyordawIfq+CmwcOt+XYkVNzM0GgmLpEAU8MhciQ
         OFJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721690485; x=1722295285;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9dTxYrr2bp9yoAx2K/fGAZdhxG5zWmYlGRfJfjxFfJQ=;
        b=NZmasLe9A9kOlskfqPJ7khwFTERC5bBb+olqRjJcDQB+B7xd3MroX8oQySBzZMPFQX
         dntKJqOvt9kiJmsYIPMU/RYkcLkzm/QG4Vf+4pqy6padEnACqLQpLSIRw4FQTuG0Ihqk
         hkv5kQhNMGKE8ehqJw2PvnQbeLdZH0AN1ILRAM0kNyAIaAy8GFzPLPfTX59w6WMyavcC
         5yjdaY0cWN7ep2mgzglLLzOq1ZgYM8r6PjfPc54++A2jH1BwUQFrjkvGnnGBghyhY056
         dAtkBhCifq6jJnMqpmuo29LYLoEz2xbJAotkE81hu5ELmqKE0j5JXIfAgdN2TsjkmXKI
         q8dw==
X-Gm-Message-State: AOJu0YyL+rLd7RZ3QXfKmq/AXfr0sgYQIBuClvD/xnEr20ZyUJNPmUIk
	MF968JNzq0Z+UTc60k7QgENROPLbrJnSpjTgxMDbsN1j6dPoYSJQ5tTw3XDp3pcQQI7axJxWfyl
	QPizXwEuaZZEM8mQ/ACMIOeEpFUYJUGiD
X-Google-Smtp-Source: AGHT+IEqPygOYyN1dMYPiuDaig5Vk799WB8AvKPwhUnyA/E3NOfACoN4mJ0MIwYX25Viq7JnFIEehJnWjcKC0VJTrr0=
X-Received: by 2002:a17:90b:224d:b0:2c9:95ae:b0ac with SMTP id
 98e67ed59e1d1-2cd274da207mr5669232a91.40.1721690485068; Mon, 22 Jul 2024
 16:21:25 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 22 Jul 2024 16:21:14 -0700
Message-ID: <CAK5yBb_B1XUrPUkvqNsqNuRXRg0MgmhD=_Lqb3qoVoWVzqS-Sg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW29!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c69a01061dde4d6f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 Jul 2024 23:21:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63553

--000000000000c69a01061dde4d6f
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 6
tim.orling@konsulko.com 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c69a01061dde4d6f
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
"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.co=
m</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;text-align:right">6</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@kon=
sulko.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold;text-align:right">7</td></tr></tbody></table><p class=3D"Ms=
oNormal" style=3D"background-image:initial;background-position:initial;back=
ground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans=
-serif">Thanks,<span></span></span></p>

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

--000000000000c69a01061dde4d6f--

