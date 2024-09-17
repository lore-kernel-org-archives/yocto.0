Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40B72C3ABD7
	for <webhook@archiver.kernel.org>; Tue, 17 Sep 2024 05:02:36 +0000 (UTC)
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
 by mx.groups.io with SMTP id smtpd.web10.14255.1726549347613337795
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Sep 2024 22:02:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=N/tH+2TZ;
 spf=pass (domain: gmail.com, ip: 209.85.210.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-718e11e4186so5014390b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 22:02:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1726549347; x=1727154147; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=2f8KinJTi3xKq0FlQ58aVHWI2jSofDvo6RXkYGg1Vi0=;
        b=N/tH+2TZOlsI5Jp6EMS1vPtVkDUOG/auqivF97s7VsGXme1WMqaw2luwuOgK2Jk8si
         lziE92bl/LyHoXfUJCHqtcAmxxdHI4QeZwCJ7CoCGpdg+hAPhGx2kMRQyYo7ceOzAe+a
         LphBVxlzMcroB3AwvMcOh609imBYw3X5KndSFmKyQ7qT6kbUhUI17LsXPgBwpOhFq1Bc
         xUPf1ONQ4dyW4MO0UtEZSoWO/2doB7QS+Dk8kD9N/vOt7D73g7njq1e8k+6RyOwm482U
         tQogbZBh29EfDssXNRsfSBvqyX+xQZJ6xdCnHtWmQ6zmckZBSBLXV06h521Xre2EQdh3
         s5dA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726549347; x=1727154147;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2f8KinJTi3xKq0FlQ58aVHWI2jSofDvo6RXkYGg1Vi0=;
        b=DIGSahn29ZNnQWdgc3BeFgORhBpYLZT/jz0IhD9gg9YpDP+MgZdvfZB9VLmvDRgDSv
         Pm98SeqhKq6celUmeJZRuf8OaUpXZ+zowzrisxv9O5hYJUEjuie4lNgNVCUv+xWBcK26
         +hnw79FYDVdsAupMxpPCBMLxqk9mr34CKgN2YnNlgrXlfPailUj2pqDDHVPVF63jD2MK
         2rl1T/Ve+135cSI76Q+z1msnOTMUgbO4QeCsbcM5riA+BbDqIy5I84YjfpQJKiSgbQJu
         5hWlvoULPrWl2w+8jOn0p8VSFkwz0AAAWwjlqnA+HVVxDLdSzfKLp75ZOIFAZel6WRNT
         Te1A==
X-Gm-Message-State: AOJu0YwKO5TE0PV/ixGAAB9+Elm4ivh/VMw6Q7rbyLjM0grNjOLCiR9g
	x9bX1fjAU0KCADVUzyrKb3ia9QCTDQ+Qb8Cbey/sSv9qeeGrl+9e2UkLY04o1EQGg3wooiqFqWB
	LhRtrMRKeTvx5+mb15buqa8Fob+K9zeFi
X-Google-Smtp-Source: AGHT+IFi0FgaruKURPbK09IpgC4ftbIshT5NTjGGMxuKKa9xalEAgzhKAnbYxFIUViaZjgYGgo+zAgfvc2L3i6K6Phg=
X-Received: by 2002:a05:6a00:92a6:b0:714:25ee:df58 with SMTP id
 d2e1a72fcca58-719261e772amr26835376b3a.18.1726549346779; Mon, 16 Sep 2024
 22:02:26 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Sep 2024 22:02:15 -0700
Message-ID: <CAK5yBb_FxPK-4Yzi1kJaMYMx8_5L6bySDo=xXGO_BRhWPbpT0Q@mail.gmail.com>
Subject: Enhancements/Bugs closed WW37!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000808a1a0622499866"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Sep 2024 05:02:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63846

--000000000000808a1a0622499866
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 3
yoann.congal@smile.fr 1
ross.burton@arm.com 1
bruce.ashfield@gmail.com 1
Grand Total 6

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000808a1a0622499866
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
g:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.congal@smi=
le.fr</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.as=
hfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weig=
ht:bold">Grand Total</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold;text-align:right">6</td></tr></tbody></table><p clas=
s=3D"MsoNormal" style=3D"background-image:initial;background-position:initi=
al;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ari=
al,sans-serif">Thanks,<span></span></span></p>

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

--000000000000808a1a0622499866--

