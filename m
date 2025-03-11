Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA9BC28B2F
	for <webhook@archiver.kernel.org>; Tue, 11 Mar 2025 03:42:56 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web11.971.1741664569247924584
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Mar 2025 20:42:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=COmJNnRt;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-22403cbb47fso94767565ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 10 Mar 2025 20:42:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741664568; x=1742269368; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=NQPSwcHuyKEEy2TVv8KucQKHl7nm/qZZ9rUDbbZhoy0=;
        b=COmJNnRtEZMfTevdCH5ovsQFfL14ZMo2KPIv744cmmhb6cEdg38Iopj0EHKJE9EyEo
         JluU8qHCyd/6bIzydVZmfAJyDs/9Yr9OM1QuOuviHDv906ttRH/r0JzC5ESNGF04EWmG
         5MexjGZtZIvGVRF4cP9+dc3zv9JZpWjYOzHewir//0zOjy+nwIN1PliPuO3bDYdLbiai
         WZQ/zRVLAkgcEmVEJH6hpcY9uw8qHe+TjcIdzbA0Ld3NuYAozjOq+hQNhHABzw8hWCVH
         QVwzTEOG/EDmCmyLIGz8jy13dBm7Rx79++BMGnEH4oWZ8UpxD5/DnQGKAhNmDZdSSCT1
         ClIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741664568; x=1742269368;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NQPSwcHuyKEEy2TVv8KucQKHl7nm/qZZ9rUDbbZhoy0=;
        b=QK4UQ5o9aXQzvO/7KnpfzYTMX07vWSyJFNeZACyiptfVy/23GvdQl+muGC+jc/7QMl
         exxWb9sq3lqtjoi7RTvdsnQk+eG6sITWyvFGar86OU2koAbYGKEzQnK4W8lKU2DB+rZm
         MuwQT8bX6C+e66l5VzZF+aL6bd9E85n1HuBKhya23teIqbJKKJW4enZHcclCqeJwhQIy
         gyXLqngXncSrh2QmglNmr9dElkxCFLC8vMcPxx8fDwHu6juLeiYqqLjzVl9Nwk9x0RWF
         FHYsUNeYSnnzR0VBJB5LngwpNEhuFUPBeX1Vbbpcc8ivrWLhJORnwj30TeuehWUTldI1
         S2gw==
X-Gm-Message-State: AOJu0Yy0GYrAi03JLyFQGzwh8laVjRu3qWI11tNYYb9jljyugi1kjKE6
	kyuk+R9hvj7RuzvksoTyJMmU0CnG6mil+91j5Ex45Uf2kDWRhw5ZmyR7rSNMGtS2/cGcGzb3ZiM
	ku3qUqwIJTMPq4CqunH1Tnj+r7o2vA0D+LxQ=
X-Gm-Gg: ASbGncvtKYSd0UX1UcBvnda5gSxkGtfNW/Tkn8ZRrMCbv/NUOsSb3fBKfqbbITVS+Zw
	bZk3nIq4mPpGiaBzG0ZnyuckHwJRudR6vUlpuSO+HthHbdycNrODJawOjVjjTuX7Q5HeHAXYd/K
	4vF1E0obbCB6qnBloh+AtbJYjvehB+sQUjcHX96oVZJ/+yM9/FxNSaHARtXQG//ZpC4s6XX/4=
X-Google-Smtp-Source: AGHT+IEfITdOegLQ3UrslYkV+DtSs71uaCjIZpFy7r/r6LPRoDvWMdMkv87hVCshUXAMFfrHu2IgNHqBLtTsKpY8NWA=
X-Received: by 2002:a05:6a20:ce4b:b0:1f5:8c05:e8ee with SMTP id
 adf61e73a8af0-1f58c060f89mr3713045637.11.1741664568537; Mon, 10 Mar 2025
 20:42:48 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 10 Mar 2025 20:42:37 -0700
X-Gm-Features: AQ5f1JpPoYAvnU8IwbhSz4s6ss-xemouW7uvwEZ5inVcaOKHbZB2RTLUkpaUKfY
Message-ID: <CAK5yBb_jyagSaM1ykEx8Ld+moRMZiUpMDKabrsz=KPc39+ncww@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.2
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ecfa39063008e18c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Mar 2025 03:42:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64939

--000000000000ecfa39063008e18c
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 27 bug owners as of the end of WW10 who have open
medium or higher bugs and enhancements against YP 5.2. There are 1 possible
work days left until the final release candidates for YP 5.2 needs to be
released.
Who Count
ross.burton@arm.com 33
bruce.ashfield@gmail.com 27
richard.purdie@linuxfoundation.org 25
tgamblin@baylibre.com 20
randy.macleod@windriver.com 17
david.reyna@windriver.com 14
tim.orling@konsulko.com 11
pavel@zhukoff.net 8
yoann.congal@smile.fr 6
sundeep.kokkonda@windriver.com 4
JPEWhacker@gmail.com 4
Yash.Shinde@windriver.com 3
mhalstead@linuxfoundation.org 3
william.lyu@windriver.com 2
Harish.Sadineni@windriver.com 2
tvgamblin@gmail.com 1
thomas.perrot@bootlin.com 1
rpjday@crashcourse.ca 1
raj.khem@gmail.com 1
Qi.Chen@windriver.com 1
pokylinux@reliableembeddedsystems.com 1
pidge@pidge.org 1
nayakksanjay@gmail.com 1
jens.georg@desy.de 1
fathi.boudra@linaro.org 1
ecordonnier@snap.com 1
bbergquist@canogaperkins.net 1
Grand Total 191

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ecfa39063008e18c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 27 bug owners as of the end of WW1=
0 who have open medium or higher bugs and enhancements against YP 5.2.   Th=
ere are 1 possible work days left until the final release candidates for YP=
 5.2 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmail_=
signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"=
ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" st=
yle=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;bord=
er-collapse:collapse;border:none"><colgroup><col width=3D"249"><col width=
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
tom;text-align:right">25</td></tr><tr style=3D"height:20px"><td style=3D"bo=
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
0px 3px;vertical-align:bottom;text-align:right">17</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@w=
indriver.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">14</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">ti=
m.orling@konsulko.com</a></td><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">11</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net"=
>pavel@zhukoff.net</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">8</td></=
tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr"=
>yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">6</t=
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
:0px 3px;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver=
.com">Harish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">2</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgam=
blin@gmail.com">tvgamblin@gmail.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:thoma=
s.perrot@bootlin.com">thomas.perrot@bootlin.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><=
a href=3D"mailto:pokylinux@reliableembeddedsystems.com">pokylinux@reliablee=
mbeddedsystems.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></=
tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:pidge@pidge.org">pidge=
@pidge.org</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr s=
tyle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:nayakksanjay@gmail.com">nayakk=
sanjay@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr=
><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:jens.georg@desy.de">jens=
.georg@desy.de</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><=
tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:fathi.boudra@linaro.org">f=
athi.boudra@linaro.org</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</t=
d></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ecordonnier@snap.c=
om">ecordonnier@snap.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1<=
/td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bbergquist@canog=
aperkins.net">bbergquist@canogaperkins.net</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:=
rgb(219,229,241);font-weight:bold">Grand Total</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold;text-align:right">191</td>=
</tr></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initi=
al;background-position:initial;background-repeat:initial"><span style=3D"fo=
nt-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000ecfa39063008e18c--

