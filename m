Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2EE9CE6C606
	for <webhook@archiver.kernel.org>; Tue,  3 Dec 2024 05:10:22 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.12463.1733202616455346681
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2024 21:10:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=fmpWK4PK;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2ee46851b5eso2874761a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2024 21:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733202615; x=1733807415; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=xD5VCV6VDh7wAAQUkdj4MwiJIN9A1BQJwuw4T+2q+f4=;
        b=fmpWK4PK1/ATmV2a11srxzAmCILErUS3ghEYDPSN7p0wJpuQb0JaDgmtQWW52xr8oF
         uPcr+JcTxn1PabbRgeTXC7ZEAQUl7I747CTvb27tnyzEXNI8TW9gHCr86t/NigHsLCL5
         65Ms7tBDiHruSwjH56s1VJUBe3t9HJfO31v0gz320QBGElMocy336b5OzGi3XAFw2IoO
         DF4XlBghQ+2ah53OuokTGx2+wmLougfmu6iICSxUU/VeovaTCg1tPxBW6UTD6FmYR5KA
         QRTjRsx8FFsnk/Vh3zc8rC1egJ5B47P/5u0/9fug9pi9Ba6YAYEDsf/xtMly365z9UQq
         RArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733202615; x=1733807415;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xD5VCV6VDh7wAAQUkdj4MwiJIN9A1BQJwuw4T+2q+f4=;
        b=hY5ZNnTFB384Z2cxzIRG+4v0cx99RVGtkJXZNZIZAy1jH9mMfhwSD+jngU8BrHtY4w
         neZkBAbd59AKHQwDuQkA36IGir7eFoWNEBowDSKwhC/sH21vwa52IJAHfPGcKzcAnX8A
         +d/+RN2dJigSA2L0EsFnLNNmFmAkgyWY465YoBqjkaBXD1n6GXZqNqIv0RMi4avTRYu/
         Don1RNyBzI5wVzfvvnwIZLtvCBc+On7xKKukudmaCg3i5WEThwL5lzX5yECqi0LZHPTH
         61Gi2wpXYDvszkV+nm3s6RC8yjwcS8zDIaVKmfXTQ96JVJ9i10mh2noAigSZIKPRhlHr
         SCNQ==
X-Gm-Message-State: AOJu0YyW2oPzGngrzdGqQim1vLlxjuJ4SOsSvSKyn4ajWSkFmtDzaQO2
	0MvW4eIZivvJ13Z9OvJ7ev0EH1Y0zhL+VlhY/zIme5LgM4O/h2uGG/7BAVnVtFoDPJ1Sq6sLED8
	dXvgf9kwq51qS05h2NELxOg2TdL1kz/V5z1Q=
X-Gm-Gg: ASbGncvpHpMi2oWs4acyP5a5KTOgJfczDHM1ZJJEB1C1k5Nd5US6Vdd1C7eeb+Vlozs
	5j6RFcsHoDNRR5ITi2nN88DO4fgAmv50H6K4mBjj2CiXAnn7FQIBoy1Saikf6zbkziQ==
X-Google-Smtp-Source: AGHT+IGWBk2QjnFoB0JtXeZaV/9GugAvTSctJ1IcYtJ7+daH5P+Sq2YgM6PD1eRouehyVps4pfvc4dhsGsA5t8Pqpm8=
X-Received: by 2002:a17:90b:1805:b0:2ee:d024:e4f7 with SMTP id
 98e67ed59e1d1-2ef0101ade6mr2463073a91.0.1733202615515; Mon, 02 Dec 2024
 21:10:15 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Dec 2024 22:10:04 -0700
Message-ID: <CAK5yBb9wNntKTDKo_PpXVeQwKv387tQGwC48ckkJDw9b_KUztA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW48
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000038c0a3062856ae4a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2024 05:10:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64389

--00000000000038c0a3062856ae4a
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW48 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15672 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15672> gcc
poison functionality doesn't work on missing paths
randy.macleod@windriver.com tgamblin@baylibre.com 0.0.0 5.2 M2
Medium+ 15153 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15153> AB-INT:
qemu USB timeout randy.macleod@windriver.com unassigned@yoctoproject.org
5.99 5.2 M2
15656 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15656>
cve-check.bbclass
reports REJECTED CVEs randy.macleod@windriver.com
pokylinux@reliableembeddedsystems.com 0.0.0 5.2 M2
15662 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15662>
do_rootfs_wicenv
is not hash safe randy.macleod@windriver.com unassigned@yoctoproject.org
0.0.0 5.2 M2
15663 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15663> quilt not
in OE-shell PATH randy.macleod@windriver.com gavrosc@yahoo.com 0.0.0 5.2 M2
15665 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15665> buildhistory
git repo keeps getting corrupted randy.macleod@windriver.com
unassigned@yoctoproject.org 0.0.0 5.2 M2
15675 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15675> qemurunner:
format_exception() missing 2 required positional arguments
randy.macleod@windriver.com mathieu.dubois-briand@bootlin.com 0.0.0 5.2 M2

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000038c0a3062856ae4a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW48 a=
re listed below:=C2=A0<br></span></div><div dir=3D"ltr" class=3D"gmail_sign=
ature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"=
><table cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=
=3D"table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-=
collapse:collapse;border:none"><colgroup><col width=3D"63"><col width=3D"43=
"><col width=3D"543"><col width=3D"235"><col width=3D"242"><col width=3D"53=
"><col width=3D"53"></colgroup><tbody><tr style=3D"height:20px"><td style=
=3D"border:1px solid rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom;background-color:rgb(219,229,241);font-weight:bold">Priority</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Bug ID=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,=
0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Sh=
ort Description</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);font-=
weight:bold">Changer</td><td style=3D"border-width:1px;border-style:solid;b=
order-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,241);=
font-weight:bold">Owner</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,24=
1);font-weight:bold">Was</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;background-color:rgb(219,229,2=
41);font-weight:bold">Became</td></tr><tr style=3D"height:20px"><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;font=
-weight:bold">High</td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decorati=
on-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D=
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15672" target=3D"_blan=
k">15672</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">gcc poison functionality doesn&#39;=
t work on missing paths</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.=
macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:tgamblin@baylibre.com">tgamblin@baylibre.com</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.2 M2</td></tr>=
<tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding=
:0px 3px;vertical-align:bottom;font-weight:bold">Medium+</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom;font-weight:bold;text-decoration-line:underline;text-align:right"><=
a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/sh=
ow_bug.cgi?id=3D15153" target=3D"_blank">15153</a></td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m">AB-INT: qemu USB timeout</td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ra=
ndy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctop=
roject.org</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom;text-align:right">5.99</td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom">5.2 M2</td></tr><tr style=3D"height:20px"><td style=3D"bord=
er-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td st=
yle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rg=
b(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom;font-weight:bold;text-decoration-line:underline;text-align:=
right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoprojec=
t.org/show_bug.cgi?id=3D15656" target=3D"_blank">15656</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">cve-check.bbclass reports REJECTED CVEs</td><td style=3D"border-=
width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.c=
om</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom"><a href=3D"mailto:pokylinux@reliableembed=
dedsystems.com">pokylinux@reliableembeddedsystems.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">5.2 M2</td></tr><tr style=3D"hei=
ght:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration=
-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"h=
ttps://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15662" target=3D"_blank"=
>15662</a></td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">do_rootfs_wicenv is not hash safe</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">rand=
y.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:un=
assigned@yoctoproject.org">unassigned@yoctoproject.org</a></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;borde=
r-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hi=
dden;padding:0px 3px;vertical-align:bottom">5.2 M2</td></tr><tr style=3D"he=
ight:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertic=
al-align:bottom"></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoratio=
n-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"=
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15663" target=3D"_blank=
">15663</a></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom">quilt not in OE-shell PATH</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macl=
eod@windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:gavrosc@=
yahoo.com">gavrosc@yahoo.com</a></td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom">5.2 M2</td></tr><tr style=3D"height:20px"><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom;font-weight:bold;text-decoration-line:underline;text-alig=
n:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproj=
ect.org/show_bug.cgi?id=3D15665" target=3D"_blank">15665</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom">buildhistory git repo keeps getting corrupted</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@=
windriver.com</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:unassigned@y=
octoproject.org">unassigned@yoctoproject.org</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">5.2 M2</td></tr><tr style=3D"height:20px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:und=
erline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bu=
gzilla.yoctoproject.org/show_bug.cgi?id=3D15675" target=3D"_blank">15675</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">qemurunner: format_exception() missing 2 requi=
red positional arguments</td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy=
.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:mathieu.dubois-briand@bootlin.com">mathieu.dubois=
-briand@bootlin.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">5.2 M2</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"ba=
ckground-image:initial;background-position:initial;background-repeat:initia=
l"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span=
></span></span></p>

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

--00000000000038c0a3062856ae4a--

