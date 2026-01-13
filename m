Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9AF3D29DDB
	for <webhook@archiver.kernel.org>; Tue, 13 Jan 2026 06:39:19 +0000 (UTC)
Received: from mail-dy1-f179.google.com (mail-dy1-f179.google.com [74.125.82.179])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.53400.1768286352439803374
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Jan 2026 22:39:12 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Saxm02mk;
 spf=pass (domain: gmail.com, ip: 74.125.82.179, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f179.google.com with SMTP id 5a478bee46e88-2ae53df0be7so11722714eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 12 Jan 2026 22:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768286352; x=1768891152; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G2nLaZEQ0aaHTRzvOzfF3ETHaOjGbqKLw3S4/Va99vQ=;
        b=Saxm02mkJ2l/CajgVeIDhb2v7n7gTT5uwiQep9XeNq6kFppC+aSx2iOyqNcCqv2V2b
         OHkZM7OnvG9UT+9Bb5mb9EWVBUufXnepkFKTd3Wp/5CFx6jOv2RJWA3KgTGYj/z/ZOho
         mUEhjQBELp1dV9HfR18cIGl53Lzyc/6SczXN1Av6nmAGDE7B4If2aot0mddAiw9DuAv/
         VYNTX9KMjW58EV8Nt9EJVLJ2WuRi8ar9EEs1Eh/j32iFlVi94sJ01ydrkuTdktdwFat1
         Vz5DjccSiGLlEY+lcCrg/mroXKOi3NAANpKSKsxPY8nt+dL2gKgwZMKk8DmW1NadV6Ds
         YQYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768286352; x=1768891152;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=G2nLaZEQ0aaHTRzvOzfF3ETHaOjGbqKLw3S4/Va99vQ=;
        b=KxcZIc7s9wmKdtrbRSFAqPR642BZzwe1DBD9pQKM8llzg4phDy13L9vjXi/xyCkZCj
         sCsPS0sZysErSN2h4Z8Qa1NRm3ly/GbyypHsJAN5a1nJIsKfC5QuyXAuW5/eogiXKY6u
         g5tYBhBTfRvZ9oc42RtkAHmZtX4wb4+OeA2bNHxwtFnyQSwU7b+Ng77Yl9qsC84NzaW2
         JXd+d5RVEXYuhuEHAGt4jSthBwH50X2/11oH0M6RamlucJDt0n85+cNYJGYQEjWcB79I
         AecVT9X6gNRajRNuofxalR7bFI/KGENG2KYJX4HiTk31UmCg4YGupymps2Sk7nNGiL1y
         cDag==
X-Gm-Message-State: AOJu0Ywq8cvacLRMRQPqsCqX+5r05kE3OVHppAStOEiymTB3KRBmSNfx
	lMBDJWTtYfpP34dwhS8Ud6/7TIHsT7d3H6G+jwbJJ0MuAmz7VOImNBpECOfc9hsiUIRLgVagW1s
	wcmj8M9HMq4HoGGekMjFjubp7GPZorJOZ06Lq
X-Gm-Gg: AY/fxX7JW65qTe9D+7YIbWBppvoAMphdYrICWNUpLKKbQI3cx+vvC7EmOSgsVQTRM4z
	5EyeYkTC491b6lhjn9K+Oe7AqaXIf8Tfag4WgeCeyRg9117I3tGMgAOSCSP1lilReSC/j2/I7vG
	pYdhRZD6TWG5VPjBP62sQD4QHKiyG2XXO8Y8VlDUf6YJ3OvHTs2JeDZZF79HZZGJDMwoq5IHxOs
	ss7n3EXILR54LLDMdiEnyaj2oLGIkHzMhSb4lY8Ft+BwGAaFEqvv1GUzx49cNjT56mp9wVWS4MY
	4Y660oxItrCDDNC0m04Me1W6UaqEOFD863M51qbimkDvoat411YjhJVaQ7496c/5XOZX1TR8wQm
	0HO5kaq/kkwGIk1Y=
X-Google-Smtp-Source: AGHT+IG0wHJKffpEg3vX3dF++ptzsNZcIegTGmjUg0M8krnD4u2xJXJV615YGGtFwVh+oWdvXw1dbAGd4tKi9t7/yR4=
X-Received: by 2002:a05:7300:b09c:b0:2b0:4e86:8163 with SMTP id
 5a478bee46e88-2b17d240aeamr14675660eec.13.1768286351562; Mon, 12 Jan 2026
 22:39:11 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 12 Jan 2026 23:39:01 -0700
X-Gm-Features: AZwV_Qii0rSZ0Vp0pYmG-f3uD9zlc_nNs0MnFQytX-mbflA55z8C8vYd2P_n62g
Message-ID: <CAK5yBb8E1yDH3XEQGnUhamQR-RXmoqe280iSrE9fPaNVZFjMyg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW02!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d89c5a06483f3f43"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Jan 2026 06:39:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66144

--000000000000d89c5a06483f3f43
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 3
yoann.congal@smile.fr 1
paul@pbarker.dev 1
Grand Total 5

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000d89c5a06483f3f43
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann=
.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@p=
barker.dev</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Grand Total</td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold;text-align:right">5</td></tr></tbody></table><p class=3D"M=
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

--000000000000d89c5a06483f3f43--

