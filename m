Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1B27EB64DD
	for <webhook@archiver.kernel.org>; Mon, 14 Aug 2023 21:10:05 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web10.119446.1692047401389180769
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Aug 2023 14:10:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=p7wZsKlC;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-5236a9788a7so6538347a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 14:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692047399; x=1692652199;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=14JcGMbvJTGVAiVe2zsoBOcGguvTDeELSpn/+9TlSG8=;
        b=p7wZsKlCZEkZzOA5c3GUkELWvtSl5+E+R22boSBU70DWQFa8IkTrYHXewN6n8eMI1W
         ejawZyi7Gt9e17w79kHbyhwEJo4jBZjYutL2h8roJ3mHMDQi/ems0Zo/IIcJSQ9jFTcJ
         Yf+xdG4xAEMG/grD2pxq6PYxPF/n3OV5SvCwVsayuqZJv17LtgKco0Aip6GsfIg/QIB+
         HQRnYH8U3HzdS8oseq5ISkZROpiVafJgGgWuB7m1wf3bFzYVpDr3piHffR+F39mI2Xhl
         ScA0HlLc+Wn8MZPGV5bUH1ihN9sUf2izavg/uUJ//n2C0zuLX/Do1kS/BUjmZM8k19+c
         BUOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692047399; x=1692652199;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=14JcGMbvJTGVAiVe2zsoBOcGguvTDeELSpn/+9TlSG8=;
        b=ayb2g0X9tX0LH7m8idYDihTowkKqOrnryKddBqb+BdWbSQ3fwJfaKxeX4de/GR1Vxk
         VQi1/IZspPg1Kacf6oVgSKsepKnbafN5razUHOb5x3G1zlVxcPuiAIhfLdvk+16laTFR
         w2VY0NCA1reJINf6rgCMyRJLvlyx0A8EN0IKwJsKiUd6FNyPeZyWUk1Xu4uz01ZfGAFN
         C/Sg4o1y6UKteOO6pyfmx10kpa5QRwVV6Y53sm8VIT3YV4W3w0/s0h1cl7i4hi1A5/m5
         lbBDiAH6AcZk8Qwyo8jvZNDtOGOKPLM1llH6zrCEmScQmPoUeKLKSCE9u5FSm+SDD6b5
         E7SA==
X-Gm-Message-State: AOJu0YzTA/GIqArYFFzxy6h4GTlN5hpwi+xod7xc1HspLmdmIy/lNsec
	D6qjpdBmp0vOxdDNYIZqf4CQoxiPp7woIAwHB74OKb/qdv+BaA==
X-Google-Smtp-Source: AGHT+IHc/1XPw56Jmajgskn3A9xiv6W33gELK7cAxkrN0WEjVSP5UitC+jF6wNrnP0tTAQ2Q6D+3dFZuNL12/4jsWwM=
X-Received: by 2002:a17:907:7851:b0:99c:6da0:31d9 with SMTP id
 lb17-20020a170907785100b0099c6da031d9mr8617770ejc.58.1692047399400; Mon, 14
 Aug 2023 14:09:59 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Aug 2023 14:09:48 -0700
Message-ID: <CAK5yBb901OgWgZqnhmJ03dhBrw3Kh-dODjcNvCzHcVQQXd57HA@mail.gmail.com>
Subject: Enhancements/Bugs closed WW32!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002f37620602e87ce1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 21:10:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60794

--0000000000002f37620602e87ce1
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 2
randy.macleod@windriver.com 2
richard.purdie@linuxfoundation.org 1
frederic.martinsons@gmail.com 1
anuj.mittal@intel.com 1
alexandre.belloni@bootlin.com 1
Grand Total 8

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000002f37620602e87ce1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><div><table cellspacing=3D"0" cellpadding=3D"0" di=
r=3D"ltr" border=3D"1" style=3D"table-layout:fixed;font-size:11pt;font-fami=
ly:Calibri;width:0px;border-collapse:collapse;border:none"><colgroup><col w=
idth=3D"249"><col width=3D"42"></colgroup><tbody><tr style=3D"height:20px">=
<td style=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Who=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Co=
unt</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@=
arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right=
">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleo=
d@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"hei=
ght:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"><a href=3D"mailto:frederic.martinsons@gmail.com">frederic.m=
artinsons@gmail.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:anuj.mittal@intel.com=
">anuj.mittal@intel.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:alexandre.belloni=
@bootlin.com">alexandre.belloni@bootlin.com</a></td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;t=
ext-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color=
:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold;text-align:right">8</td><=
/tr></tbody></table></div><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"=
MsoNormal" style=3D"background-image:initial;background-position:initial;ba=
ckground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sa=
ns-serif">Thanks,<span></span></span></p>

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

--0000000000002f37620602e87ce1--

