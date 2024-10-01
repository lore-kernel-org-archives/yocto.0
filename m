Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26351CEB2DC
	for <webhook@archiver.kernel.org>; Tue,  1 Oct 2024 02:07:36 +0000 (UTC)
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
 by mx.groups.io with SMTP id smtpd.web11.72292.1727748448015261962
 for <yocto@lists.yoctoproject.org>;
 Mon, 30 Sep 2024 19:07:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TmDJlS0W;
 spf=pass (domain: gmail.com, ip: 209.85.210.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71971d2099cso4048731b3a.2
        for <yocto@lists.yoctoproject.org>; Mon, 30 Sep 2024 19:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727748447; x=1728353247; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IPhEqy5LD4xyVAoZPsoThC55KXITehgOnvJWtIuJOw4=;
        b=TmDJlS0W05NE+Ep9a1fr/XKzLWIc+pIK7pECWCEyMtgYcY27Q1lG1uxE12Ik6D915f
         RJ86cgY5DCT70eBD9zNbxVVMtAhGR8ZeX7lUgQ70S9Gkwuocd4Y+56Rvwyk+uOjulVpt
         SJ5A+PS89SqzavWVCODgRctpDDJhRwLojpOy+bgWyysMGWvu0LRUh2ZCPYg7JRCJKFvW
         3bTO0em0jGYRwSLIOX/l32LXDWBKHYiJeDpOQ4IvHJVCPGKpGJpV1k+tPQmBY5QPzmVl
         ZG0mA5GHG8v0jZ6WaGFpqkDw+RfVyMZDJ6rf3En52lTeR16zgY2fwGY9CYqrtBgcpTdZ
         HGvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727748447; x=1728353247;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IPhEqy5LD4xyVAoZPsoThC55KXITehgOnvJWtIuJOw4=;
        b=Fsv5yZbf6a4XEnPOqdUyNnwpZw/7fZtWb5F2RgdSHVCGiktkVE11Olc+BvdjnTwJ3U
         +j8cTxeFV6psRzcCxu0OAMwLQXXrsyDkLQk0TQRgZVKdvMqcMzU/gVwuV25tFVD3AEXA
         SMnZBRlLC5yqoonwsAEhasRRXXAPQ3Jz9cA9ChLkHsQDED4cFQ9MFXAgjIgRpIyc8kCN
         DcEwAS0CHXsTtvrqZ1Rah0ivMi9rvA4m+XWYi3MLH8IOdpIO8EV1BLphVVqNxuXzARjQ
         RfVfMS7H2l/SH3Zjzv7ouIOTHxS+BpdDLWA5C9QMrXjf6cLkoHtGn0kx0ujxT1Y9NlGk
         fJ8A==
X-Gm-Message-State: AOJu0YxC+tztvlKIAg1BgIwsFSDWm16bRhhbAH7AKJ0rpp6FUMtTg/ks
	YLVzZd1IS/yWWyZZfOhoUWqo53O+sxGFTmfW1cTym1FdZagryRsuuxbZDGPbUez0T4h3YnvyM8O
	2bKtesP7IrxMeGwGcfxsbja8e/GIvoZBW
X-Google-Smtp-Source: AGHT+IEUi3aMD1v0nRugyDajBmET63etIiaLIu8jaDDRQdfi59QPDRJLKVnMcA7zIHJhF/yGQQzydI6XGOoR5fomeG8=
X-Received: by 2002:a05:6a00:cc3:b0:70d:21d9:e2ae with SMTP id
 d2e1a72fcca58-71b25f00fd2mr22126954b3a.6.1727748446854; Mon, 30 Sep 2024
 19:07:26 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 30 Sep 2024 19:07:16 -0700
Message-ID: <CAK5yBb9gvOaO_7tO4zs-uJp4kds5hTvxvp=uNr73VgY2ys56Ng@mail.gmail.com>
Subject: Current high bug count owners for Yocto Project 5.2
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006fa909062360c81e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Oct 2024 02:07:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63915

--0000000000006fa909062360c81e
Content-Type: text/plain; charset="UTF-8"

All,

Below is the list of top 31 bug owners as of the end of WW39 who have open
medium or higher bugs and enhancements against YP 5.2. There are 128
possible work days left until the final release candidates for YP 5.2 needs
to be released.
Who Count
ross.burton@arm.com 43
bruce.ashfield@gmail.com 29
richard.purdie@linuxfoundation.org 22
randy.macleod@windriver.com 16
tgamblin@baylibre.com 15
david.reyna@windriver.com 14
JPEWhacker@gmail.com 12
tim.orling@konsulko.com 11
pavel@zhukoff.net 10
simone.p.weiss@posteo.com 4
yoann.congal@smile.fr 3
Yash.Shinde@windriver.com 3
william.lyu@windriver.com 3
Harish.Sadineni@windriver.com 3
sundeep.kokkonda@windriver.com 2
raj.khem@gmail.com 2
Qi.Chen@windriver.com 2
pidge@pidge.org 2
kweihmann@outlook.com 2
jon.mason@arm.com 2
Deepthi.Hemraj@windriver.com 2
tvgamblin@gmail.com 1
thomas.perrot@bootlin.com 1
rpjday@crashcourse.ca 1
peter.kjellerstedt@gmail.com 1
nayakksanjay@gmail.com 1
mhalstead@linuxfoundation.org 1
jens.georg@desy.de 1
fathi.boudra@linaro.org 1
ecordonnier@snap.com 1
bbergquist@canogaperkins.net 1
Grand Total 212

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--0000000000006fa909062360c81e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>Below is the list of top 31 bug owners as of the end of WW39 who=
 have open medium or higher bugs and enhancements against YP 5.2.   There a=
re 128 possible work days left until the final release candidates for YP 5.=
2 needs to be released.<br></span><div dir=3D"ltr" class=3D"gmail_signature=
" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><tab=
le cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"ta=
ble-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-collap=
se:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"></c=
olgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb(=
0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-col=
or:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;text-align:right">43</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"><a href=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmai=
l.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color=
:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;text-align:right">29</td></tr><tr style=
=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org=
">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(=
204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-ali=
gn:right">22</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ran=
dy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom;text-align:right">16</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a =
href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom;text-align:right">15</td></tr><tr style=3D"height:20px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@windriver.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom;text-align:right">14</td></tr><tr style=3D"heig=
ht:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:JPEWhacker@gmail.com">JPEWhacker@gmail.com=
</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;text-align:right">12</td></tr><tr style=3D"h=
eight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:tim.orling@konsulko.com">tim.orling@kon=
sulko.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">11</td></tr><tr s=
tyle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:pavel@zhukoff.net">pavel@zhuko=
ff.net</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom;text-align:right">10</td></tr><tr styl=
e=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:simone.p.weiss@posteo.com">simone=
.p.weiss@posteo.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">4</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr=
">yoann.congal@smile.fr</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">3</=
td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden=
;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:Yash.Shinde@windr=
iver.com">Yash.Shinde@windriver.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:willi=
am.lyu@windriver.com">william.lyu@windriver.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om;text-align:right">3</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"=
mailto:Harish.Sadineni@windriver.com">Harish.Sadineni@windriver.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom;text-align:right">3</td></tr><tr style=3D"height:20p=
x"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align=
:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kokkonda=
@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><=
tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:raj.khem@gmail.com">raj.kh=
em@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:Qi.Chen@windriver.com">Qi.Ch=
en@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflo=
w:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr=
><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid=
;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom"><a href=3D"mailto:pidge@pidge.org">pidge@p=
idge.org</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr sty=
le=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:kweihmann@outlook.com">kweihmann=
@outlook.com</a></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr=
 style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:jon.mason@arm.com">jon.mason=
@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr sty=
le=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3p=
x;vertical-align:bottom"><a href=3D"mailto:Deepthi.Hemraj@windriver.com">De=
epthi.Hemraj@windriver.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
2</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:tvgamblin@gmai=
l.com">tvgamblin@gmail.com</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">=
1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hid=
den;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:thomas.perrot@=
bootlin.com">thomas.perrot@bootlin.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-a=
lign:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:=
1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:rp=
jday@crashcourse.ca">rpjday@crashcourse.ca</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;te=
xt-align:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:peter.kjellerstedt@gmail.com">peter.kjellerstedt@gmail.com</a></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px"><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom=
"><a href=3D"mailto:nayakksanjay@gmail.com">nayakksanjay@gmail.com</a></td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;text-align:right">1</td></tr><tr style=3D"height:21px=
"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204=
,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfou=
ndation.org</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr =
style=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px=
 3px;vertical-align:bottom"><a href=3D"mailto:jens.georg@desy.de">jens.geor=
g@desy.de</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><tr st=
yle=3D"height:21px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:fathi.boudra@linaro.org">fathi.=
boudra@linaro.org</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></t=
r><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:ecordonnier@snap.com">e=
cordonnier@snap.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td><=
/tr><tr style=3D"height:21px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"><a href=3D"mailto:bbergquist@canogaperk=
ins.net">bbergquist@canogaperkins.net</a></td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-al=
ign:right">1</td></tr><tr style=3D"height:21px"><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(2=
19,229,241);font-weight:bold">Grand Total</td><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb=
(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgro=
und-color:rgb(219,229,241);font-weight:bold;text-align:right">212</td></tr>=
</tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;ba=
ckground-position:initial;background-repeat:initial"><span style=3D"font-si=
ze:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--0000000000006fa909062360c81e--

