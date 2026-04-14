Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 35B1DEBFD29
	for <webhook@archiver.kernel.org>; Tue, 14 Apr 2026 04:26:50 +0000 (UTC)
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11594.1776140805150146258
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 21:26:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=gUzs2SJb;
 spf=pass (domain: gmail.com, ip: 74.125.82.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2d64c756111so5479616eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 21:26:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776140804; cv=none;
        d=google.com; s=arc-20240605;
        b=EPwpefm/f7Ot1rceirFf4+8VcAZdXXTq+Wp5j24IfrzN96+SLfwh6gpuSxylMVKjKQ
         rC4VIEuLxmo/+ByQnL80S9yfcK5wDE+TbbGGddBnQJ39mf4UCHWuX0Z2L+f2f2e+LFHh
         0muHTriwBwQpZyAGMeNHSlI5gNPXTFm4AS6GMAhCIozmlhWuNXbWxyVgoyYBjvZtrjRS
         6fL8Seuqi7EbUKJaIfoHQnwYiDm+hx2yoK1ObfjADVfusJ/nUMp6gtQzqVqc1YmRLkek
         3vkyeaORIBZKfeXIMP8VZ3r/LTuycr2Js76L+U7hTvp2IqEoEWMdpWBlKmK4RvCCV29V
         iLUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=ZXu2jcBjFiBeBO2QKBprzzOWN8f+QQA+w9Ff+J9fy6U=;
        fh=lSe5TfEyXCYSNXfy2gGhk1YUz8/0VlieKE2hlMfyV6s=;
        b=LkneItZkJ3/455IcvSzHByJNvgw0cFmXs/rEvud+bcSFOwrsVWiaWWe0vHc9tYx+oq
         THNZqTFfbpvuVwlLsNvL0X/OhVQWUte536PIAqSzP14JWjj537PkGaWdW2uO5n7dT2CA
         cXHlz8KSRfFSMPmrpuAhCjAya4d3XTtcu/ruUHbLzYfrf+kzdDYsUBi00uYKNSoqHnd9
         dRGKc80DAtxlI5+kJCIrZO3Ae5qLeRjswDkxIpMXKFqJhqq0FPqOwhrzhXnkJhfNbKD8
         dOfbpyRM+KaiTegHZqqVT5ROKaYA3T2l+CCqma1y2ELRgiGZ1Gghq8yciorhcXKXuq8e
         IfOQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776140804; x=1776745604; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZXu2jcBjFiBeBO2QKBprzzOWN8f+QQA+w9Ff+J9fy6U=;
        b=gUzs2SJbNYZND6y/LbEcjC3nC6wzjBT5bBYATFqyD6507pC8f5St77EAr89AsK18MS
         Rtw/YIyTINFm+QDeVkNNiZ1bd+T6EvF728ZRP6kkbhil6Ym0jU/o8l01CYrdImISXM0M
         ELWazfZFHzZL2WtSYJIVmWTWg1N2IEN0n56yLVteOKQWPNsyk+Wd9uYQl+UUV6qBpL0R
         002vsLCUu6tqdfV6S+TK2NMMIfKzE1sTKT97DTQSws6tl2DN4rb9mgODjxNoGvV63EYb
         c2Jjsm340AdODzehhmcQjkbJrB70rZe11gkYPWQvUiSw2Y5UGXJ6x02/fxI9mNk/0imP
         nlZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776140804; x=1776745604;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZXu2jcBjFiBeBO2QKBprzzOWN8f+QQA+w9Ff+J9fy6U=;
        b=MwQQyQlSz7SMuzrhdUVnmVQiX2cCh1WRn2uL1QVVU5kOlFEq4MqmzaSBcDJdkt8/eh
         ZT3NErDrj1t+f0+vhB37wC3FO7YeyUpkgyubHJUmhU5oAP9YwCnC/OKHdquwJvZnypAN
         YTwcMmi3Q8/dVNUZ5vIVy8YS19c6ISGd8jximyLxbfKNmfIbD9q97xpLQoBnCOlEojnu
         u+u5YWQTJofTMBBEWlWU/KdJWVgAIFtaArz7TLFD4NQAQtbwF7ZVtZF5nrKOlMqUJMYa
         xGv4CGhZ0ReGOlopidigIks7HO6jm7lORplvWWrzSN3OobuCZ2snaV44lHM8XHuYvFgk
         YIwQ==
X-Gm-Message-State: AOJu0YxTGE9oD0Nbq6ERKy8fUrbW1DTqZIm7UdX8dY+d7MFPedFvoYk0
	2TuRaKc+HUKvdXLPu4qqlAidZ5uY3+gGZdu2mAGRQ9pcB3Vd4ORovylsoWlQyBtGOzFw9+slh9f
	4FMBeU7wWRadWkRTrJETdNrhvf+UgdSeaJjK1
X-Gm-Gg: AeBDieuCnaqeoQ0QNYeuyVS6hVH9SBRsg7dPmf6hsUjU6v3RQPna6MAFh9Xg0SutNeA
	EqKzmVS83rtxu+fDNVHYDHHnWh/WLQQpHL1R5ZuUj+xVTehSOvsMkvmFkpGN/vHHBTl4I1lCd64
	6v1Ix3X45oCrfTrpV3tNPOF6zGnf+pc7AhBFH8jO3v4Tkuhzfxk0grs7nB/h1j6FxcDYZiSh0F+
	+K/om0ronxE8+oHSFxpyf+/G1Wl1c8JFNfnSN/mcuG6a8UklwpoCvaNbUUNPgSl7fusKxHt9uyJ
	rcLr/AMcmoxaFTP5s0NkX4CMd2CaGxCkTDAFcudY8YpN/8pJgFLGCH6//Wggl0V6SeH+NIxLjSD
	lrSuNCl0JNv/Aq1kxPUgAfy5AZN0=
X-Received: by 2002:a05:7301:fa04:b0:2c7:ea98:da0 with SMTP id
 5a478bee46e88-2d5881acc5dmr8713604eec.19.1776140804237; Mon, 13 Apr 2026
 21:26:44 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 13 Apr 2026 21:26:30 -0700
X-Gm-Features: AQROBzDvTzdZF_gBomwzlQGndJI1ZGHCBPN43sTkcSGqV8aQcx_1yn0YwYZGm4k
Message-ID: <CAK5yBb_-pG80NOPBsYdV6at1SC+kSLCPmqs3jCe11M442d1ZVA@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 6.0
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b52de6064f6401d3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2026 04:26:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66412

--000000000000b52de6064f6401d3
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 25 bug owners as of the end of WW15 who have open
medium or higher bugs and enhancements against YP 6.0. There are 9 possible
work days left until the final release candidates for YP 6.0 needs to be
released.
Who Count
richard.purdie@linuxfoundation.org 22
ross.burton@arm.com 21
bruce.ashfield@gmail.com 14
tim.orling@konsulko.com 12
tgamblin@baylibre.com 10
randy.macleod@windriver.com 8
david.reyna@windriver.com 8
sundeep.kokkonda@windriver.com 4
paul@pbarker.dev 4
raj.khem@gmail.com 3
pavel@zhukoff.net 3
mingli.yu@windriver.com 3
JPEWhacker@gmail.com 3
Harish.Sadineni@windriver.com 3
yoann.congal@smile.fr 1
twoerner@gmail.com 1
toni.lammi@tl-software.fi 1
Qi.Chen@windriver.com 1
pokylinux@reliableembeddedsystems.com 1
peter.kjellerstedt@gmail.com 1
mhalstead@linuxfoundation.org 1
mark.hatle@kernel.crashing.org 1
liezhi.yang@windriver.com 1
denis@denix.org 1
bluelightning@bluelightning.org 1
Grand Total 129

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000b52de6064f6401d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 25 bug owners as of the end of WW1=
5 who have open medium or higher bugs and enhancements against YP 6.0.   Th=
ere are 9 possible work days left until the final release candidates for YP=
 6.0 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"=
ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" st=
yle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bord=
er-collapse:collapse;border-width:medium;border-style:none;border-color:cur=
rentcolor"><colgroup><col width=3D"249"><col width=3D"42"></colgroup><tbody=
><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229=
,241);font-weight:bold">Who</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,22=
9,241);font-weight:bold">Count</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie@linuxfoun=
dation.org</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">22</td></tr><tr =
style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.bur=
ton@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">21</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">br=
uce.ashfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">14</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsul=
ko.com">tim.orling@konsulko.com</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">12</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tgamblin=
@baylibre.com">tgamblin@baylibre.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">10</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ran=
dy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">8</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">8</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda=
@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><=
tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:paul@pbarker.dev">paul@pba=
rker.dev</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">4</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.khem@gma=
il.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukoff.n=
et</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"=
height:20px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:mingli.yu@windriver.com">mingli.yu@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhack=
er@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr=
 style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.co=
m">Harish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:r=
ight">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.co=
ngal@smile.fr">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:twoe=
rner@gmail.com">twoerner@gmail.com</a></td><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(20=
4,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align=
:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:toni.l=
ammi@tl-software.fi">toni.lammi@tl-software.fi</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:pokylinux@reliableembeddedsystems.com">pokylinux@reliableembedde=
dsystems.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:peter.kjellerstedt@gmail.com=
">peter.kjellerstedt@gmail.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:rig=
ht">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow=
:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@=
linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:mark.hatle@kernel.crashing.org">mark.hatle@kernel.crashing.org</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"heig=
ht:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:liezhi.yang@windriver.com">liezhi.yang@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:denis@denix.org">denis@denix.o=
rg</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"=
height:21px"><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom"><a href=3D"mailto:bluelightning@bluelightning.org">bluel=
ightning@bluelightning.org</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241)=
;font-weight:bold">Grand Total</td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:r=
gb(219,229,241);font-weight:bold;text-align:right">129</td></tr></tbody></t=
able><p class=3D"MsoNormal" style=3D"background-image:initial;background-po=
sition:initial;background-repeat:initial"><span style=3D"font-size:12pt;fon=
t-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000b52de6064f6401d3--

