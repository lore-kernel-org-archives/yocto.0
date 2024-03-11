Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5732EC5475B
	for <webhook@archiver.kernel.org>; Mon, 11 Mar 2024 22:33:52 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.web11.7166.1710196424349138516
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Mar 2024 15:33:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TcJDew87;
 spf=pass (domain: gmail.com, ip: 209.85.218.48, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a44ad785a44so451559366b.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 15:33:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710196422; x=1710801222; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=95cgkGh2O4TtNp7uxs83856zwno4z8rAysb3xHI9p8M=;
        b=TcJDew87zFPRRZ+rYkWuZ+bKzf0X/uNQPSpQyk5dTGRmEHzAmZ0ixLUM7L9El33/Yj
         /qVzC0Poy72J/2w5jQs/sNiI43rD/J8ycUZr6O951buPrcqwbUNcQoEkQXwh6q7VopZV
         t39BA9Z8Q7L3V6BhBYDPVd6aPrwazlXDHatiQVpyKleb6hw0lEH/VIa30U8QIUXIZiGc
         XnYkuR0mVeif7odUE1I47oEem9zWPPaQ1w/U3r23NrPhhasJ7KxAwZdTdgq88r44NZor
         eoZ/EgYv68rvdw9gSN/EWIaKMMGeOvbwk8al6ydX0gMID/Tyc3ULIpaU9C+/pAtJu2qT
         A+CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710196422; x=1710801222;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=95cgkGh2O4TtNp7uxs83856zwno4z8rAysb3xHI9p8M=;
        b=Nx+rOmJeNEu9cU6kc+oaGhgjMgEgrNbkgJgHvP/KVeCVNBKZxADMcxPOfWynSz+2cC
         WKi38OWEp+H4gkDHSPTu7lSMgt6WneXJMEan5xQaiOmxvEWsvbC60pq/lqQNSa/uY+Mr
         fJri8H4kdHNmsapmoSz3CnV1Pu12/SGMAuNhRoBUqaHUzUb77KSkLvr8X7KORjQ3aF/I
         KGdCaPykcFQTgVCn/fyUtxBN/U2VvmntpMR+WgOrzbpMfIalyGMeOuPRNd3IReyRYjgU
         gX2QMEeCVDybnR/DcAxYKcMmm/CNlkIwsTr0y+DaSrGm0nFh9QYO3cYWAUr+j9EYAwcV
         MJzA==
X-Gm-Message-State: AOJu0YzGpfMFNOwfAgxE4BJUALNgO9zntI7EvfgqeFCUWjV5IQR1hbeF
	bmmhoTU53376tth+eESopqlAa91NScyZm3PZW010mX4ZOkLvegJ7DjKqvU2BKjBaVKb/AO2jOPt
	zW1qRYn4dS+KEx2u1jp2UlJHhLApPq3fi+ow=
X-Google-Smtp-Source: AGHT+IGLzqOjFKp6zo4LykDz3nNlH4ySjeAWdXKW9Ic7S9DuPGav0YVhfGIlV7Cc4jKwYJoRsZvXAp/uInUILfa3l1c=
X-Received: by 2002:a17:906:6897:b0:a45:a2cc:eb8b with SMTP id
 n23-20020a170906689700b00a45a2cceb8bmr4672087ejr.13.1710196422377; Mon, 11
 Mar 2024 15:33:42 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 11 Mar 2024 15:33:32 -0700
Message-ID: <CAK5yBb_RPX0VsLH_7Az3AZPrxsNLqjpuE1x3CiVmEdYPYphFdA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW10!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000040874d06136a229b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 11 Mar 2024 22:33:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62739

--00000000000040874d06136a229b
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 4
yoann.congal@smile.fr 2
ross.burton@arm.com 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000040874d06136a229b
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
g:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smi=
le.fr</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">G=
rand Total</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font=
-weight:bold;text-align:right">7</td></tr></tbody></table><p class=3D"MsoNo=
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

--00000000000040874d06136a229b--

