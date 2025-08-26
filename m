Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54C6ACA0EFA
	for <webhook@archiver.kernel.org>; Tue, 26 Aug 2025 13:29:16 +0000 (UTC)
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
 by mx.groups.io with SMTP id smtpd.web10.64298.1756214947842609606
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Aug 2025 06:29:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jwR+faxa;
 spf=pass (domain: gmail.com, ip: 209.85.215.179, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-b4c3d8bd21eso11499a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 06:29:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756214947; x=1756819747; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=KOIj4x4XQkNmEW6Mtg6VYufAA39SfHDuxxcwTonCIK4=;
        b=jwR+faxaf2MC4uE/JrrFWnW4ZQCWDQgXgi0Ox5cAbXKzb7n0VWgp5glfX6fQ1QJbbX
         DnrgOrdrYPjyzbrr6ybhD5f3G6Enfn31DDNriDakYFEAuitYVmayu4LYVItjxMOZWDrA
         WkF44fHCXhYe2W+h7I1MsCopNpnH8DbUpPRVlEsR8Q8OULI1hCai6qNr5bEwEdSExoHX
         nFHWUpeX8+zsx44BdGaB9FJfpxY2cx3ga53pT4u5SvaZrfjE4Z/T30y1zu0OrKhYt87e
         6M+QY94USbS1NCR8lrSqXEflkcE/Osi/IMIKzFMeA0ip6q3QlcCwMehTT/OT4cwgBwHQ
         lFNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756214947; x=1756819747;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KOIj4x4XQkNmEW6Mtg6VYufAA39SfHDuxxcwTonCIK4=;
        b=QoqMWRMGR/BMC45EP3x+1BjXTciBLjDts2HAnlaWr+pJZa1H4OiNevK8Uzeci/2Ogb
         maafYSAD++GaDcSoRr9vLEGZy3WQ3fMrdjRHHEb6FxkTwTarymFo9eSaTi4ECN+fZjNR
         ZF5OMcItiURpn0XC+hxJdOZjkslB15BrHOtIfwdoBnlJJTn2vM75G630JYS4o97Qso9O
         FsTTW6/9Jz41y3tpZ0j9/xjCmVWm4BRZUd8nIhg3wvHjDY4KySkVSruUFnuiG9OSDCGC
         2dat1kod0wIF7YwR0TW7vXIzCY6W6IHJaXqYMGnvcfpYteHrQDER5a/RD52lp2ESbhJz
         rIYw==
X-Gm-Message-State: AOJu0YyE+5AkGBH8Gss8liKZulr/pOozGttjbvmVvijv388FbN3NCLxB
	Nrj0T6i89Ka7QXqr3TK7Osb06kmF/qAw1SZuKsxKN0pcVNWznNtfS9ajj15Xg4/mB5zov8986qG
	tVljS7AxGphZHpI3LE4z1uwCFcIycHPzqCJY9
X-Gm-Gg: ASbGncvDIihl6sgGgxVxKbHpxPgb+chvhoutl+Uh32BlZuFPcncsd16O4Z73brZeFbS
	TQg0U3iHJgFkrOoBb4PVjwEGvV1rjb4F9WCHRz9aau5eT/K8ppBsPEFl0eqqhva/wHblnKP+OBd
	Yzdj36iQs1qqJ19+mfm2BIC5WwUwJzUxrLTvzcpSlgCtmMdZleRyd3VDvoAFEqJBaeWBO1wyzGW
	0mXdvOdVGX/Vs9D4toC52+v4uhlNNydcoiZlXLHQVE3v9VQefRlviEfcL8zYkCeo0oLX+PmGwGA
	zUwzul+Y44nogrxN+nFLmaL2Q1E=
X-Google-Smtp-Source: AGHT+IEQz40KtU1Nb9nF6xWyfGzSV91bT8Jt4fW40hw9vdoonIlgeWGOydzfIQsoKOUg9e1tKLvVkU3fUeTlRHXxfz4=
X-Received: by 2002:a17:902:cec2:b0:246:61e:b564 with SMTP id
 d9443c01a7336-2462f1d82c4mr189895065ad.61.1756214946947; Tue, 26 Aug 2025
 06:29:06 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 26 Aug 2025 06:28:54 -0700
X-Gm-Features: Ac12FXyEW1qAduehq7fZ-F-H9ysB9W3140wYQwmsDLo7_SoF039FIojnOZB6V8U
Message-ID: <CAK5yBb_WcD1vRedXzz4kaXyb4z6N6gQmg2xUHdpiP-iCr7rudA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW34!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000fe962063d44a8a3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 13:29:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65799

--0000000000000fe962063d44a8a3
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 5
ross.burton@arm.com 1
raj.khem@gmail.com 1
Grand Total 7

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000000fe962063d44a8a3
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
lign:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">5</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bu=
rton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.khem=
@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold;text-align:right">7</td></tr></tbody></table><p class=3D"M=
soNormal" style=3D"background-image:initial;background-position:initial;bac=
kground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,san=
s-serif">Thanks,<span></span></span></p>

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

--0000000000000fe962063d44a8a3--

