Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3076C47258
	for <webhook@archiver.kernel.org>; Tue, 23 Jan 2024 04:18:45 +0000 (UTC)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
 by mx.groups.io with SMTP id smtpd.web10.4284.1705983523133991859
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Jan 2024 20:18:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Lcngr5RR;
 spf=pass (domain: gmail.com, ip: 209.85.167.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-50ea9e189ebso4087032e87.3
        for <yocto@lists.yoctoproject.org>; Mon, 22 Jan 2024 20:18:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1705983521; x=1706588321; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z70937qmNZtnBzXSzoafDdtmd8vZy/A/v3bdLiydWBE=;
        b=Lcngr5RR158/B7jDyyrpa3RmpdqqO6h/bt/x++WGqmiMG39FRSI70GLCcip1qjCNug
         MvLsInSEBROLYyqTomv6Xb0sswccYn+EwSM6DjXLq3+5pR+rPNJUcpKT2CfF81gg1ESe
         8St/GYOSVRKqefunuDaxBvKMPzKI9ppAyr7jC0bOGj2R7LcY1Dw0WG7sQGGG+2Pz24Y1
         NmoJkWHp/raOZorYHr/zkm1GIKB6KAKgGkLvLa+v2dcfh6q7Pvjjf9N/tCxgoGB9dFTI
         EdmYOVSUEdiQhC0y+sJAqbfTA2fRLBfFVAUNjphnw/KL2LLmIgZKv1QlNkhGjN7Zj+tk
         TZJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705983521; x=1706588321;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z70937qmNZtnBzXSzoafDdtmd8vZy/A/v3bdLiydWBE=;
        b=k00/sxSv5p9hjrMIuqpIUcyA94XixAY8fxYVAJRQQ5u9dawXFFVwkgniLxBFR2H/Ab
         Vbd92D2Oh4ZkwW6/DcPrtHeoFvSVm4DFVtccg+TSATeJFCNmDciY6SN2RxJVQusFhvQd
         YudFnP7dpXY26Iz+DsEoIyldq9BdCIZdGEmv29UBMqgu4HrOIhst+g+eZZk0tjWCaeiE
         mGrWC5FWYNSuJNUjdImfYF8eB9Y6kxqM7//NJck3sJpDbLQjTwn/44/pCgRIYJiwgXHU
         N+P1M1Vdq/us1ofvp/0gTMwGCzG4HXnoyk9MpnibF+oC2cf9bXDEV1nYSzz+/5+wT3qH
         51dw==
X-Gm-Message-State: AOJu0Ywc7hXeDsQpJob10Ok6ss7T6b8WmJRWORb/k0nYibS9d3FTv/h6
	lZpqbU/9PJH66p2qiCNJp8dggHZIwG4duNo1esnTqkG51iBBtRlG46EB5erY/VJjGz45n1h+mY+
	icM0z82J7nqVNopeEwfkGAqD14S927jf4+5U=
X-Google-Smtp-Source: AGHT+IFpwW1uySWZDH6Yicmc2mpODZa303+23daLjR0peHZvzDG5stpc1oJvPaJFNumBihfkPrhHNsZ5sDMcWFrFGjg=
X-Received: by 2002:ac2:4252:0:b0:50e:7cc2:a640 with SMTP id
 m18-20020ac24252000000b0050e7cc2a640mr1800456lfl.75.1705983520776; Mon, 22
 Jan 2024 20:18:40 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 22 Jan 2024 21:18:30 -0700
Message-ID: <CAK5yBb8u22+HN1v+wWw4ai13DSJv4RCak_5Eyrud6zv7bwcwFw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW03!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bfa4b1060f953d37"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Jan 2024 04:18:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62238

--000000000000bfa4b1060f953d37
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 5
alexandre.belloni@bootlin.com 2
ross.burton@arm.com 1
richard.purdie@linuxfoundation.org 1
pavel@zhukoff.net 1
Grand Total 10

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000bfa4b1060f953d37
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
g:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:alexandre.belloni@bootlin.com">alexandr=
e.belloni@bootlin.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com=
">ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td=
></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linu=
xfoundation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;background-color:rgb(219,229,241);font-weight:bold;text-align:right">10<=
/td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:i=
nitial;background-position:initial;background-repeat:initial"><span style=
=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span=
></p>

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

--000000000000bfa4b1060f953d37--

