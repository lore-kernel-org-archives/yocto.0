Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A704C282EC
	for <webhook@archiver.kernel.org>; Tue, 18 Mar 2025 05:32:52 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.4830.1742275963111271273
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Mar 2025 22:32:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RYhsiYgz;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-22423adf751so87208345ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 Mar 2025 22:32:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742275962; x=1742880762; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hgwtohi4QDHF36vCl+6IBPwWjz7dU+ymgyyhMQkke6E=;
        b=RYhsiYgzn4wRE5zzVDENhITWB3p+cE2CmOrpqlZekprS7XibJ+2+EE/pBpoKO/UB/2
         uX1/d9G1hOZAhP2RUgQZRUjxeu8qFd2+46B/ebezpce+GHaXZyBQzpJPCOAWwdbWTfYM
         x3Ac6B4kfOfGmZCLVlFsLkMe7tGsumkFXgEmZ07/EO/njORhILIF/w8DolzCMzqR42HM
         zS2iEO8mciBtPEqxefI63qxia3E87hDmlTEfUnqPFuT+WCoOibRIS4OqpNg3oPGQOlTK
         Hdw7DibHELUm0KLmKSP2TUZNSUeDZOelW0Zln25ZB8N2Yk9Rq4tXh/01LSuNYBHJesV/
         VN+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742275962; x=1742880762;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hgwtohi4QDHF36vCl+6IBPwWjz7dU+ymgyyhMQkke6E=;
        b=kGRDKhCLMf3gUrJqPBG+4sue5bKI0v/dtf3CBJXttt+gpV9oZI3orRpbl4+HKmlToL
         0pOHU6sRyKhzntAEGa9SZ9cxCF2EkD2OJIKDmGMo7/qQKzHOzPI7q6MpWpv6Ze0oR5lf
         ukHZQ4aT6zS5u8mOZ8uR7UnwnrDud93mRCVW310VLhkE6gEnbzzW0Z/HcfhGsyQb07jz
         f0b/f2BC4R3njUe4zFV05XMYwl3bwCD/DXPFJjr/pDajSyuEa68dBvNrN06nFQWatCjo
         A7iTOiR3rWeAdmDH6neZyA8CMgCevFRhtpv/OZVfKwvFHdJgwbVuCcU/qXIUc11sU6na
         9fQw==
X-Gm-Message-State: AOJu0YxQTxTQcNh6kALHZ8/Q8lnuj5rXwopHbZULHQOVpaD4uP3B/6Ho
	tEW9T1WYcv6zOytex4TS7tbiBDONTMDjl/6uC1z8RWg9zRnC0xhaZI2PnCo5WhdDLLPsQgGRbAK
	HIiB6bC2dIiHpjsO/nIoLV5uz0WESjNyaMWM=
X-Gm-Gg: ASbGncs6jqHGijKdN+G1Ra/zCaRPfNM9HbvcKh84tJss0R86OHqihjHUDMjHoIRY+N0
	Khc/cY8/G9M4bfJHGYUjfz9ijwR4yFUkFIJ0Q1lzGW1uD5Xig2lFzl3kl3GjtwB9eqjKl0otFEt
	SrKcPKAj3rDwt/3WvUaVOuGwnzp/U5eYimj9Jl1QQ9GXblcJj63L12fZPUUWM=
X-Google-Smtp-Source: AGHT+IFoOHB8eUzv8wE2ir83JeOqdHFTu1sr5cw00GKvveGp4fjHWAJIVCHlfT+qQOYPPkYONuX//n+aWtYUARHjgzE=
X-Received: by 2002:a17:902:c948:b0:223:501c:7576 with SMTP id
 d9443c01a7336-225e0a546dbmr187603415ad.12.1742275962183; Mon, 17 Mar 2025
 22:32:42 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 17 Mar 2025 22:32:32 -0700
X-Gm-Features: AQ5f1JpwtwUH95Lqi32j1uTlBhmdj4zzgSyj3Yqn1VcAVu7Qd-T-Oz1bzFU1IaI
Message-ID: <CAK5yBb_DUSZsK7utJ61uuBpEuDprXRquanxwr67k2o21fgk6_Q@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.2
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d3a8cd0630973b52"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Mar 2025 05:32:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64968

--000000000000d3a8cd0630973b52
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 27 bug owners as of the end of WW11 who have open
medium or higher bugs and enhancements against YP 5.2. There are 28
possible work days left until the final release candidates for YP 5.2 needs
to be released.
Who Count
ross.burton@arm.com 33
bruce.ashfield@gmail.com 27
richard.purdie@linuxfoundation.org 26
tgamblin@baylibre.com 20
randy.macleod@windriver.com 14
tim.orling@konsulko.com 11
pavel@zhukoff.net 8
david.reyna@windriver.com 8
yoann.congal@smile.fr 5
sundeep.kokkonda@windriver.com 4
JPEWhacker@gmail.com 4
Yash.Shinde@windriver.com 3
mhalstead@linuxfoundation.org 3
william.lyu@windriver.com 2
tvgamblin@gmail.com 1
thomas.perrot@bootlin.com 1
rpjday@crashcourse.ca 1
raj.khem@gmail.com 1
Qi.Chen@windriver.com 1
pokylinux@reliableembeddedsystems.com 1
pidge@pidge.org 1
nayakksanjay@gmail.com 1
jens.georg@desy.de 1
Harish.Sadineni@windriver.com 1
fathi.boudra@linaro.org 1
ecordonnier@snap.com 1
bbergquist@canogaperkins.net 1
Grand Total 181

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000d3a8cd0630973b52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 27 bug owners as of the end of WW1=
1 who have open medium or higher bugs and enhancements against YP 5.2.   Th=
ere are 28 possible work days left until the final release candidates for Y=
P 5.2 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D=
"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" s=
tyle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bor=
der-collapse:collapse;border:none"><colgroup><col width=3D"249"><col width=
=3D"42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px=
 solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;bac=
kground-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@a=
rm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">33</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.a=
shfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">27</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfo=
undation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">26</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">20</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">14</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@kons=
ulko.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">11</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhukof=
f.net</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">8</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.r=
eyna@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">8</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr"=
>yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@w=
indriver.com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">4</td></tr><tr style=3D"height:20px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:Yash.Shinde@windriver.com">Yash.Shinde@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoundation.=
org</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D=
"height:20px"><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom"><a href=3D"mailto:william.lyu@windriver.com">william.ly=
u@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgamblin@gmail.com">tvga=
mblin@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow=
:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr>=
<tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom"><a href=3D"mailto:thomas.perrot@bootlin.com=
">thomas.perrot@bootlin.com</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:rpjday@crashc=
ourse.ca">rpjday@crashcourse.ca</a></td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:ri=
ght">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:raj.khem@=
gmail.com">raj.khem@gmail.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:righ=
t">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Qi.Chen@win=
driver.com">Qi.Chen@windriver.com</a></td><td style=3D"border-width:1px;bor=
der-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:=
right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overf=
low:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pokylin=
ux@reliableembeddedsystems.com">pokylinux@reliableembeddedsystems.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:pidge@pidge.org">pidge@pidge.org</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:nayakksanjay@gmail.com">nayakksanjay@gmail.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:jens.georg@desy.de">jens.georg@desy.de</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">Harish.Sadineni@win=
driver.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:fathi.boudra@linaro.org">fathi=
.boudra@linaro.org</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></=
tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:ecordonnier@snap.com">=
ecordonnier@snap.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td>=
</tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bbergquist@canogaper=
kins.net">bbergquist@canogaperkins.net</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(=
219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgr=
ound-color:rgb(219,229,241);font-weight:bold;text-align:right">181</td></tr=
></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;b=
ackground-position:initial;background-repeat:initial"><span style=3D"font-s=
ize:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000d3a8cd0630973b52--

