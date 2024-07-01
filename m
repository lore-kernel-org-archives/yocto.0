Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D28AC2BD09
	for <webhook@archiver.kernel.org>; Mon,  1 Jul 2024 23:28:55 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
 by mx.groups.io with SMTP id smtpd.web11.12353.1719876533081974819
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Jul 2024 16:28:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=hOMkdpA7;
 spf=pass (domain: gmail.com, ip: 209.85.167.46, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52cdd03d6aaso4071549e87.0
        for <yocto@lists.yoctoproject.org>; Mon, 01 Jul 2024 16:28:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719876531; x=1720481331; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=eNJWl2CGBtoGS2W3AzbPwjY6B2vJBRfvXzN9eM9Ufrw=;
        b=hOMkdpA7mlH5QE6X/rUGfyHo2uAVrqRETgXnBFBh7zf73j3+lTbsKNbUt1Xta2sdmO
         LTVZqk+Yf663lJW7UkhUkfuxlFMGwMfybhw+CK4iaF8roXo4QJKD67djmQeveSDFDrQ7
         y4NuMQ2LxcV206p8vvS6TsKEZFwprkz7+MyN/cZuF8VH3Ob46ypsXTgJRQ7/VedPzNtR
         EuS2oc0L0iCky7fTpMH9VPgivpr0CJHGbnq5M+17QaxIfNlhuE2kK9/kuWfj39C8Z0kI
         P0kyyiLDtt6FnfEjrsXSYl6OXJDpzesv8aKeX8ri3ELBrk5Z030b32VcLRTiWxdvGv+o
         xoaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719876531; x=1720481331;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eNJWl2CGBtoGS2W3AzbPwjY6B2vJBRfvXzN9eM9Ufrw=;
        b=ADQAex9OS4Hc6WDqGqOJ/qofo1r0gO02yNl0NLfWOng7L10+I2XmlVse7Z2xfJeCje
         MiQBV+kX+itUktx2k7oNq+ciowJWDOdEoIMYZrxVD61HYIhB9YztL1zHdDjTHpZumFs+
         sG5R5rwmYJRdZnhRa2leAW1RF4UHCZLdy0U6lH7UK7jI3j97C77DfsVfreUPwe1GtRMH
         JINebbYinRndlMLbshyfpWKZoV4wfF4IMkciq5g1EwY2bZIMMsyGjNDlzDvNq0g7mjmj
         Hm5LSB5mHwUewobBnG1HBn30RZONHu9667m/GX24DRO4wHW3vcDborH4xkJ3Ffz5Nm4m
         l33Q==
X-Gm-Message-State: AOJu0YyS9LrXrPRkw003Rzv8CtX17wot2EBeLtk7ECbFVdFI8sc5Ygom
	tH/e4zQnG48rRPiPkuWNmNBtVWXNj2RzaMl2NLf7iCCOjwYLc+pn5quSaWu6UKnBYvIvfvoCQED
	7jpVRalBkv1iiMioo02gaMxxLg0ZRV1Zt
X-Google-Smtp-Source: AGHT+IGf0Cky5omLSyKq9p0suL4ZU2P27FJDAwSzJ0yfNIQxSgbfg1BzRYyGrbHubOrw0+Y1esNkn/eqq0SqC4jHHOU=
X-Received: by 2002:a05:6512:31d4:b0:52c:da38:b2c6 with SMTP id
 2adb3069b0e04-52e826ff085mr4873306e87.50.1719876530872; Mon, 01 Jul 2024
 16:28:50 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 1 Jul 2024 16:28:40 -0700
Message-ID: <CAK5yBb9+Ao97=NEi46UcPGi74_D3aTNBVpxP58Ado-X1z+eGwg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW26!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ae28bb061c37f54e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Jul 2024 23:28:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63422

--000000000000ae28bb061c37f54e
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 4
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ae28bb061c37f54e
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
al-align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-ali=
gn:right">4</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgr=
ound-image:initial;background-position:initial;background-repeat:initial"><=
span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></s=
pan></span></p>

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

--000000000000ae28bb061c37f54e--

