Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66883D5B17D
	for <webhook@archiver.kernel.org>; Tue, 29 Oct 2024 14:15:02 +0000 (UTC)
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
 by mx.groups.io with SMTP id smtpd.web11.20663.1730211295042818400
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Oct 2024 07:14:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hCQfy39g;
 spf=pass (domain: gmail.com, ip: 209.85.215.171, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-7ea12e0dc7aso3878364a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 07:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730211294; x=1730816094; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M5CZfo55e3q3geJ2DQBAnwiZlQR7caoLYK0drE5zFq4=;
        b=hCQfy39gVTVbxtbtd4nxLLYeDq2IofcAz2h64tySWtUJs8FAYDsVgKRqfXOhtb6b+O
         SqqdT9JbduWYeKXM2ZOEXg9D/4s5EK0O3FAaYzf4+XGRqfT1MA+jMyfDqyjTHoFXTHbc
         TgzphpytfuYeiaH7a2P2CO/S7QpmsiPhTZs3VQcQc7m3PMCe/i9sb+urmqL1QFGpVE4x
         E/bL9clwbg3Z2zISsbwCRsCToSKSlJPlHgRaQBTLUUBKHiHIlsn1YCwx8Th/HA1adHVP
         d+6Me0kAOqQ03zEdRC0QyuYFi/TDtqkTsCsah/bvHFMIeA2ONLyBA4eaCqP8kAxwPSBE
         Nmfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730211294; x=1730816094;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M5CZfo55e3q3geJ2DQBAnwiZlQR7caoLYK0drE5zFq4=;
        b=er7bMr6LJFtXf6KBuKqVv/EnZKsRNTCh4/K5SiHmakKBLNUQz4BeSlBVmUJ/+Z+Yvf
         KhaHg/3jIFSkh5/YtxEsAfxZJjhk+5xMClScrYT75lk2EjC//ney86nNHh3rjv4MEUoK
         r+Fl1WtCwApVPUPFuvPPGJyMmWnZRPF+kaYTAS7yFCs8E8uKQ86pkA1juW46ZsoBx3iy
         iBzRynxZH1SdKvahISe5TIiMP+QsRsvjEw4Uwht2KilVmSlZZ29Di/Ifam7OVgpGZaN5
         WXm+08qIRxco3TRZYN+tLAtDzWEHI0/GNfWjyAf5Z7xPVP4kkXPMkioOR4p2TZa5BAgt
         Wqlw==
X-Gm-Message-State: AOJu0YwsxswGboqHLJ4pKUcmi3A1Oggd8QzkPGUwJpbx1Prg1VUR/Ksr
	2Zuqlpdj0gyKRhY6z2IMZXa+maKdzY1r0pZWf3vvpUBTTc5YQRRU66WQqauZsxE0UIz/aMAaDcB
	fDGgi5cZeBeWhVFQrnNwNH6XzWRSFNNCC
X-Google-Smtp-Source: AGHT+IHZ+IAR4b9bd2oh3pVF0Tk+1tHS75fIG21xV2iiZXBI/+j1neuNOd9TXYq0lbvfqhJwcjsJRYQXevAHmKh1ZWg=
X-Received: by 2002:a17:90a:1fc3:b0:2e2:9077:a3b4 with SMTP id
 98e67ed59e1d1-2e8f105562bmr13690072a91.7.1730211293987; Tue, 29 Oct 2024
 07:14:53 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 29 Oct 2024 07:14:43 -0700
Message-ID: <CAK5yBb-V+Sp+0jsToH_5Ysza3kHJ9zdKTEkFOWOma5d=1VbROQ@mail.gmail.com>
Subject: Enhancements/Bugs closed WW43!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000908ccf06259e3573"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Oct 2024 14:15:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64170

--000000000000908ccf06259e3573
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 3
randy.macleod@windriver.com 2
kweihmann@outlook.com 1
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000908ccf06259e3573
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
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.c=
om">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:kweihmann=
@outlook.com">kweihmann@outlook.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219=
,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgroun=
d-color:rgb(219,229,241);font-weight:bold;text-align:right">6</td></tr></tb=
ody></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgr=
ound-position:initial;background-repeat:initial"><span style=3D"font-size:1=
2pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000908ccf06259e3573--

