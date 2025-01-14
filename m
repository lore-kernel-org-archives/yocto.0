Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7CF3C02183
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 08:15:32 +0000 (UTC)
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web11.40461.1736842530621415327
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 00:15:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=X1OooSQH;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id 98e67ed59e1d1-2eed82ca5b4so8645679a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 00:15:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736842530; x=1737447330; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=yCGb6y56qvRk2ndzRTQtuTSjQBRlefeLjDNeLzhdMmg=;
        b=X1OooSQH7nDTR+C39u5JDvGWf2YTliV0OBV0mlgL2YyfK+yrQ/AnHwYWekbUiVZfwo
         OzhgyKgyj8x/7DHpikrRF6fzx8gkvVRk0dpCWV2i23vlXqPNc97w/aNCKXPCg08aG348
         ypgas17sCzsk5swAx4YzAti31QZQuS9ifmLjOehJuYOdX+FNiZkcijopuUsbvKOVCYjI
         2JtUp5eEfDDvSMclz2fkIW5PaqDhqfjQSvaMu7F5/CABv8Q1Q3ENNC1JbovioLp0FhDA
         c2NHBLq+YdG4vy/gfe2Sq7W9gSGf4gfdA46JLJUnBUIBGJxP+CTAR1xrrzPbno84x9m9
         L/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736842530; x=1737447330;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yCGb6y56qvRk2ndzRTQtuTSjQBRlefeLjDNeLzhdMmg=;
        b=Y66xMLeUal93JDgAmYF8bgQEAWiw9aj8zd5qW0aI27AGDqpuHYbX5cw0NqJmqrZ4oF
         nmR/noVhiA8FwMGvU4C9KGj48E1xxyGBdmfEIZyoh4OC46qpEfDDeAysuts/0SvpVsQ0
         iC/Xg+Dq0FinzaXIJTVM+5fEudjYQQ04nkxYPRsawZFRaOXSVM82sLw+DjRPrs9V0BA9
         JdFr8W2zCwmU++To3uXjBRJ7xWQUuDgR+dlPHdpVm9Vx6NiW4v5BMauWFRNo9r3MzfKJ
         4RQdsooFCnqye6py3I9Jtu+1jM5qk9x6GHXJdf3eykPbJr4U6/p6VbZF8Xwb1+pLaSp2
         oYkw==
X-Gm-Message-State: AOJu0Yy421zS1zMJTW4yMVt0nNFgjlSJHKJh2qFap2M2H4EDNVQxhEB9
	pvcnHdQGXid51iaIfCC2EsKkTdsBwVn+03v8w5Ifj97ocp72WzCN9D5K38n5ZQPa7KZX4JQWtVa
	hNtZ9Jgndieb5IBOtTveeWH1AccH+8MDW
X-Gm-Gg: ASbGncthGcLLXBvWtJvXnd0S+vGvY53omrnp27dk8UDs47ZvgHwTmHEJPRhWezese3s
	N9Osd9BTXjMOeSXdyt2X1f1NNYXMYsqn2njZCA75sfRdgJ95HwaB/tCHkRavlOXPofZDukFZc
X-Google-Smtp-Source: AGHT+IHbjDdQtRtAcVwv2PeEp/LQEWKeqyZifLXuLvRP+JZFDxz0FDlqMSnczCRGwkFJK6Iw+zdiCJvc7Wi3GjSkOOw=
X-Received: by 2002:a17:90b:538e:b0:2ee:c4f2:a76d with SMTP id
 98e67ed59e1d1-2f548f59a46mr31832487a91.21.1736842529761; Tue, 14 Jan 2025
 00:15:29 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 14 Jan 2025 01:15:19 -0700
X-Gm-Features: AbW1kvYyynPHJfIdEkHjBIjlei-N-b60hiwqEGaz05gDeJ8liGQ5QYpUAYXevSA
Message-ID: <CAK5yBb8n07x1R=hUzDDgFuMDg97yvFGd3rgRNCaZFX3VVzxF6w@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.2
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000047359062ba62acf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 08:15:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64542

--000000000000047359062ba62acf
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 31 bug owners as of the end of WW02 who have open
medium or higher bugs and enhancements against YP 5.2. There are 123
possible work days left until the final release candidates for YP 5.2 needs
to be released.
Who Count
ross.burton@arm.com 37
bruce.ashfield@gmail.com 27
richard.purdie@linuxfoundation.org 24
tgamblin@baylibre.com 21
randy.macleod@windriver.com 16
david.reyna@windriver.com 14
tim.orling@konsulko.com 13
yoann.congal@smile.fr 8
pavel@zhukoff.net 8
JPEWhacker@gmail.com 5
Yash.Shinde@windriver.com 4
william.lyu@windriver.com 3
sundeep.kokkonda@windriver.com 3
simone.p.weiss@posteo.com 3
Harish.Sadineni@windriver.com 3
pidge@pidge.org 2
mhalstead@linuxfoundation.org 2
tvgamblin@gmail.com 1
thomas.perrot@bootlin.com 1
sundeep.kokkonda@gmail.com 1
rpjday@crashcourse.ca 1
raj.khem@gmail.com 1
Qi.Chen@windriver.com 1
pokylinux@reliableembeddedsystems.com 1
nayakksanjay@gmail.com 1
kexin.hao@windriver.com 1
jens.georg@desy.de 1
fathi.boudra@linaro.org 1
ecordonnier@snap.com 1
changqing.li@windriver.com 1
bbergquist@canogaperkins.net 1
Grand Total 207

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000047359062ba62acf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>Below is the list of top 31 bug owners as of the end of WW0=
2 who have open medium or higher bugs and enhancements against YP 5.2.   Th=
ere are 123 possible work days left until the final release candidates for =
YP 5.2 needs to be released.<br></span></div><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr"><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1=
" style=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;=
border-collapse:collapse;border:none"><colgroup><col width=3D"249"><col wid=
th=3D"42"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1=
px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;b=
ackground-color:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
background-color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@=
arm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">37</td></tr><tr sty=
le=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.=
ashfield@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overf=
low:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">27</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxf=
oundation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bo=
ttom;text-align:right">24</td></tr><tr style=3D"height:20px"><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">21</td></tr><tr style=3D"height:20px"><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom">=
<a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom;text-align:right">16</td></tr><tr style=3D"he=
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
erflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">13</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile=
.fr">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
8</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.=
net">pavel@zhukoff.net</a></td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">8</t=
d></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.c=
om">JPEWhacker@gmail.com</a></td><td style=3D"border-width:1px;border-style=
:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">5<=
/td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@wind=
river.com">Yash.Shinde@windriver.com</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">4</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ov=
erflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:will=
iam.lyu@windriver.com">william.lyu@windriver.com</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom;text-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D=
"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda@windriver.com</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"><a href=3D"mailto:simone.p.weiss@posteo.com">simone.p.weiss@pos=
teo.com</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;text-align:right">3</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:Harish.Sadineni@windriver.com">Ha=
rish.Sadineni@windriver.com</a></td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right"=
>3</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:pidge@pidge.o=
rg">pidge@pidge.org</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td><=
/tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhalstead@linuxfounda=
tion.org">mhalstead@linuxfoundation.org</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">2</td></tr><tr style=3D"height:21px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:t=
vgamblin@gmail.com">tvgamblin@gmail.com</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-=
align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
;overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:t=
homas.perrot@bootlin.com">thomas.perrot@bootlin.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=
=3D"mailto:sundeep.kokkonda@gmail.com">sundeep.kokkonda@gmail.com</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse.ca</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Chen@windriver.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height=
:21px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:pokylinux@reliableembeddedsystems.com">pokyl=
inux@reliableembeddedsystems.com</a></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:r=
ight">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:nayakksa=
njay@gmail.com">nayakksanjay@gmail.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ke=
xin.hao@windriver.com">kexin.hao@windriver.com</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"m=
ailto:jens.georg@desy.de">jens.georg@desy.de</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;=
text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mai=
lto:fathi.boudra@linaro.org">fathi.boudra@linaro.org</a></td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hre=
f=3D"mailto:ecordonnier@snap.com">ecordonnier@snap.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:changqing.li@windriver.com">changqing.li@windriver.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:2=
1px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:bbergquist@canogaperkins.net">bbergquist@canog=
aperkins.net</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:b=
old">Grand Total</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241=
);font-weight:bold;text-align:right">207</td></tr></tbody></table><p class=
=3D"MsoNormal" style=3D"background-image:initial;background-position:initia=
l;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Aria=
l,sans-serif">Thanks,<span></span></span></p>

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

--000000000000047359062ba62acf--

