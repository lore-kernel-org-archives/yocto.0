Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0278D3B7ED
	for <webhook@archiver.kernel.org>; Tue,  9 Dec 2025 14:02:02 +0000 (UTC)
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.8289.1765288920939096401
 for <yocto@lists.yoctoproject.org>;
 Tue, 09 Dec 2025 06:02:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QQ7aYgLa;
 spf=pass (domain: gmail.com, ip: 209.85.215.170, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-bb2447d11ceso3519388a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 09 Dec 2025 06:02:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765288920; x=1765893720; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=kLjFExnE+5go1KuvipOk1G7iTm4uR2EeGCXwyd3dGdQ=;
        b=QQ7aYgLa4O3wAzdq+9UfSxvMpRZPzTF6/rHxWtybM9fTzW06aOp3Wv0YNAQaZC0RZP
         t+6+lXdNNvTEssU0X4UiRkmm46ED/6Iad/HGuJQecyTah082r0qqW3v6ZEph7CsYaViD
         p8gMthWUHs0jnrjcH/vl0h8i0S3cZdb4etyx9Ymnqennium0jGO/OPZyxnBro+Dfr1yg
         OplZV522lTNlZ4sKO95FNLPQgJa5gqXk1tDuZJj1FitYqvpy2GKS8DGMI23jFOg2lMs0
         3JytU+irEDO5MeKvhvg4oXCu9zNSa63PfPtUXrRyUDTHkn1k4vIaFswi8rHjG++ulYz/
         su3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765288920; x=1765893720;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kLjFExnE+5go1KuvipOk1G7iTm4uR2EeGCXwyd3dGdQ=;
        b=AMrcBiwX2dlh1McpmlJAd6T/far6s7a+LGcmtZT+63t22ev4K2HP3enYX5nwdK8G6t
         riyNo3tFeeizwL5GIR4XTiQ8FqCAEHJ6iESLGWMTjyxhyoUWkS09tmIzFczhYLlKYMDP
         l7tBm7XzOHaOzVnWYe+IU9uA/+Z19j0wb8d5mW6coUKkxK+H7ptyvYb8/dS02kIxPiPS
         8/L/q+8iJOBHtg55KX6WcMfNVrt+cOvhJjSe7TyjKnYiFgZwkRaNO2DB1rrVQh3exOGw
         DeREDTGL9hWoyLshtWgo/L6G4FUC4Kc+Kgf1vXuxbcFId0sP3VHAsD/LyOyJzA5He2dN
         3sXw==
X-Gm-Message-State: AOJu0YxLBi5GRaXkF6hVhM0dh7vkXbsPyqeAGxfquq/tGf3mNwRj/BZt
	npB/0h/vvH9O9ajnNgzs7Ac0r8BnnvPZaewguAiEqfnfsqUBksZZyNt8OHtRAHbqb92z9vP3QS9
	bfCVS0ymMjQzumw6oO/IpRTMmxhp0yl4wchjR
X-Gm-Gg: AY/fxX79WUMA+Os1OrYUpl58V1EPmqEMOkSMRuMijc0kZ9SjuD1RFI7cG5iUJmLke/i
	2EmND3KwcxSDJWjOLV7La2ci9xWrlnAn6LWIixk5K589C0q87sosLEVw9GsUGUNmSMWEaLqv3Mv
	YF9PXN4tT0GSBM2wGbUVVpESKs6sn5p95+b0wP4L5izPyLS7dNBDiRYwaI2IW78pzp2zK0zMwOG
	opXMfR/PNO+Az/Rt9fb1XwmMXmLGkrMhX7lOBE763edSv4YSAAMZbUi2K5YpsSoUkKHota1FRUe
	zRqrL2PNFZo2yo4ZbhCFzoQVpu95TbToe69+N9dcP7twRWx+ngxO4JU+9XLrW2Zcvetc7hMH88r
	o6o6wf7IfbmF+RSA=
X-Google-Smtp-Source: AGHT+IGuYQ9Zq7mGbevVG9Fsgnk+uQFJsCGyeWyVk0svZJMBmoE6uxS2aJn+CPEBwkp6f7LsOWN59WWsj/46ABXLXXk=
X-Received: by 2002:a05:7301:db0c:b0:2a4:3592:c60b with SMTP id
 5a478bee46e88-2abc71e1afdmr5352937eec.28.1765288918554; Tue, 09 Dec 2025
 06:01:58 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 9 Dec 2025 07:01:47 -0700
X-Gm-Features: AQt7F2qqWBLorjblJ3f5c-g0CvzdzQmgNB1nK9EAHXWc6c5jpRwgwwMzw_-XzmU
Message-ID: <CAK5yBb-xt5Co0soPB8+2auJpKRodHfUdpbDJnf950AoJ1nawOw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW49!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ea9dcf0645855a9c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 09 Dec 2025 14:02:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66105

--000000000000ea9dcf0645855a9c
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
randy.macleod@windriver.com 2
mingli.yu@windriver.com 1
david.reyna@windriver.com 1
Grand Total 4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ea9dcf0645855a9c
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
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:mingli.yu@windriver.com">min=
gli.yu@windriver.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.reyna@windrive=
r.com">david.reyna@windriver.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:r=
ight">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold;text-align:right">4</td></tr></tbody=
></table><p class=3D"MsoNormal" style=3D"background-image:initial;backgroun=
d-position:initial;background-repeat:initial"><span style=3D"font-size:12pt=
;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000ea9dcf0645855a9c--

