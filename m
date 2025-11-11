Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28D98CCFA18
	for <webhook@archiver.kernel.org>; Tue, 11 Nov 2025 14:52:09 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19158.1762872723605808785
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Nov 2025 06:52:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LYW2wne9;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-7aca3e4f575so3588162b3a.2
        for <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 06:52:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762872723; x=1763477523; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=I9Z3i95jN1SXm+z9wixLbtRHi1tmUN9r3NEVUgMRo50=;
        b=LYW2wne9uHmyLAtgQzwEFEBw19WpnjJPwk/hTs0UHXy3w8TweEB/o7WP6qhRiYTUgX
         b1qPBXJ41JVZ1aJRdXotQ3lClM6tM+v7v8Fg2kWjTrH/MQRmFMy8T9YGSvcDI7kmi0Wr
         WEmdXjS4dniNIsRfxvkFTkEwS4duG6xe2I5qM2IPiuvkpNZLRbFPVVAs2b5+R+5/AbyB
         +oY6w0gN3i8odCy18cFRG6UQNjfJPocHaAe+jn375jVKNywWw02KP8IWTf688Hnq1OHL
         plGkLnL2zZEZoP5ShXBn/nWMuYdU9gv5z5x7xKwE7/9d1U7sBAd3/eeb+IX0zImk0gfu
         S1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762872723; x=1763477523;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I9Z3i95jN1SXm+z9wixLbtRHi1tmUN9r3NEVUgMRo50=;
        b=t7saelPotkq8A6rMehAxXHieXwn6BVw+851KpB/TdxI/7LaO7KPXjmk/AWIhftzUB0
         CHaesD1A2J0vbvsX3uOKbB4/69ElWpSXLNVj7mkZQY812DTgSLxieuEcM1CjQO3iR+AU
         vBiluVeZSwJoOB3HtY5f8R0sQiE1YOgtmdc0FKd9y8Jk2yMZ1DCYcardbsWYwEE3V8XP
         Ejhkqnen0eZIzzIIZfi+6SaenijrKYFDc8upbAIYHRcJEsFSBRnRX461FlWC2U6VE47m
         bpCwzkqm09BPj/mfzG4Ew3gifRjTWJRcSKG7dCAygLAemw43Jw3nz8fk/iU/EAZBzUFc
         Akgg==
X-Gm-Message-State: AOJu0Yx2RDagJ+/RinJqsHSZC/REgW6Dr0TIrUSP1b43lnyBKsQReg8R
	z0pe5pdcSuyt9xXZNwrfvb1azYDYEJkJfbfbY+txT/Ojq41BYikDKLOQKAHaSbCVPWE8KxxOllq
	QLarcvPMpHUid15L5Z4nDWxejU8lewuRz24sX
X-Gm-Gg: ASbGncs9pa0usL3zK+cgC9WwSq9AnwLQDZgpauRX7V0INWupYv+Qjk56JpVXyOy6j6x
	bVBVYoT4unR/dIE8aA1XcEHa2GfsgJjtKtLdFQnKI8Cj27OuTrQTVcejvR33XjmwUVKXCfjBL9f
	akMmVfJsCaqp2UCM4dLk16soOt+r8Eaqkpyp16ltCRGRrpl5qoPyukFVmxGu8C+yGrDpRDLR69p
	oLHUUSeSPhQrhRsAmrwJGtWGZtGfocbSgVJ1WyvS3Mp/siE2DQw+Lnxjnbhh2WWd1zTixvJU1CS
	iwTgMfGfbrYgJnvtuuDFRwjpAiFi5CCaRQK0U0PXEfCXLFz935SV4mP3p7R/BXu/n0rJrJY6PJj
	czYmRp5qJNUczt38=
X-Google-Smtp-Source: AGHT+IHz8aIv7SalAfpyB/PxY8TX9Uno4eLRZCyE2z8wduJRj4srsXf/Uk9BQ+ifbtTGJpSsQ53r9B8RrSTe8xtxKIw=
X-Received: by 2002:a17:903:2308:b0:297:d45b:6d97 with SMTP id
 d9443c01a7336-297e5627906mr159213385ad.14.1762872722559; Tue, 11 Nov 2025
 06:52:02 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 11 Nov 2025 07:51:49 -0700
X-Gm-Features: AWmQ_bny0uDdZ_5h-neICcVuDmzdxAhfy8g2nXDoJaAptWb66sXFTb9x1SIKwZg
Message-ID: <CAK5yBb-wGx6__=mpKEuaKh6tG+Xf0Z+P1ZRuCGPV4xKaBxyt2w@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.3
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000699935064352ca21"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 14:52:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66017

--000000000000699935064352ca21
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 23 bug owners as of the end of WW45 who have open
medium or higher bugs and enhancements against YP 5.3. There are 14
possible work days left until the final release candidates for YP 5.3 needs
to be released.
Who Count
ross.burton@arm.com 25
richard.purdie@linuxfoundation.org 23
tgamblin@baylibre.com 22
randy.macleod@windriver.com 14
tim.orling@konsulko.com 10
JPEWhacker@gmail.com 8
bruce.ashfield@gmail.com 8
pavel@zhukoff.net 6
mingli.yu@windriver.com 4
Yash.Shinde@windriver.com 3
sundeep.kokkonda@windriver.com 3
raj.khem@gmail.com 2
Harish.Sadineni@windriver.com 2
david.reyna@windriver.com 2
yoann.congal@smile.fr 1
tvgamblin@gmail.com 1
toni.lammi@tl-software.fi 1
sundeep.kokkonda@gmail.com 1
Qi.Chen@windriver.com 1
paul@pbarker.dev 1
mhalstead@linuxfoundation.org 1
denis@denix.org 1
bbergquist@canogaperkins.net 1
Grand Total 141

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000699935064352ca21
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 23 bug owners as of the end of WW4=
5 who have open medium or higher bugs and enhancements against YP 5.3.   Th=
ere are 14 possible work days left until the final release candidates for Y=
P 5.3 needs to be released.<br></span></div><div><table cellspacing=3D"0" c=
ellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:fixed;font-=
size:11pt;font-family:Calibri;width:0px;border-collapse:collapse;border:non=
e"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><tbody><tr sty=
le=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);fo=
nt-weight:bold">Who</td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);f=
ont-weight:bold">Count</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:ross.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">25</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.=
org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">23</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@ba=
ylibre.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">22</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">=
randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>14</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@k=
onsulko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">10</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPE=
Whacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">8</td></tr><tr style=3D"height:20px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:b=
ruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">8</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.net</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">6</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:mingli.yu@windriver.com">mingli.yu@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">4</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:Yash.Shinde@windriver.com">Yash.Shinde@windriver.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkon=
da@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr=
><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.=
com">Harish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">2</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:david.=
reyna@windriver.com">david.reyna@windriver.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">2</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:yoann.congal@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tvgamblin@gmail.com">tvgamblin@gmail.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:toni.lammi@tl-software.fi">toni.lammi@tl-software.fi</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"><a href=3D"mailto:sundeep.kokkonda@gmail.com">sundeep.kokkonda@gmail.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"=
height:21px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriv=
er.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=
=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pbarker.dev=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"he=
ight:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead=
@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:denis@denix.org">den=
is@denix.org</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:bbergquist@canogaperkins.net=
">bbergquist@canogaperkins.net</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,=
241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-col=
or:rgb(219,229,241);font-weight:bold;text-align:right">141</td></tr></tbody=
></table></div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNormal" =
style=3D"background-image:initial;background-position:initial;background-re=
peat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">T=
hanks,<span></span></span></p>

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

--000000000000699935064352ca21--

