Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD845EE49A0
	for <webhook@archiver.kernel.org>; Tue, 22 Aug 2023 00:21:55 +0000 (UTC)
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web10.6697.1692663713985364983
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Aug 2023 17:21:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=dYZFIdvH;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-52a069edca6so2245978a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 21 Aug 2023 17:21:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692663712; x=1693268512;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=MWKdi7C7MA9Z86vpO5XnuXz1C9oESmxPhCxfUnU1q+A=;
        b=dYZFIdvHu1FMxu6A8lpx7Vk60HGY73QnfXrJb4vLPN1X9ox5kuUdncWGC0mBcGhYYs
         0lfxgFooKHMgC+s0Vre+9NPpZRiIh+AAvGTY0etorDYekvVOfm1As459MIXEbts46VLv
         HVcPNxpsJj4U69CpvzNWAIa/zCYJ31tpPOolU6c/y4YS86fm/YTShE7kdmDS+6uHQU5j
         Z5UdfoZoVvqf4tDr8r9tvXzr5oskf71XcgSbugS3th3vOB3KujlNazO6KAX/DX8OnGM6
         zdjvrai81h8wm0qDM7VXYlXCJ8Q6LCMCE4QSoVi1unEMaAsRHD2tCqiPFBUUK4lj0+xn
         8REQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692663712; x=1693268512;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MWKdi7C7MA9Z86vpO5XnuXz1C9oESmxPhCxfUnU1q+A=;
        b=EoiIU2TBx2OhptkCBO0vHT9sUJRbBdALEfomQ/8MCM0ROcciqwKtvxv66FozSJ/MEk
         7wTC0uZigeqByFNJiPmjtP8icpMgljsHBnhrfB8TSV7NhwnCeKImniBkNVE5pVwlFEBf
         uucJAHTuSOy1G2XpWg/spUrNJ5TByWYAh/TTDym3tI6d1H72ePeAINZzwZCw4T4/Cbyo
         qRfxLxaaVLyq0ta7KzF2LNOjgkow+MUq8kNmHzkfU+63P3TP3rCs9tGPIjaooXCzWd+a
         +hjEOfSW/xy8psRniOayVx1hS8V+i16p2kvDz49tKlSqnJphy5unKFMPUTdGg6EZaD3F
         PKgA==
X-Gm-Message-State: AOJu0YxKbYb3H5JuniIVo4TiYqQGrdpu41J58skMt2W1Z5k575Nx16AY
	dCr4f9vVNMBlck1/SKTiU+Jj0sWlJbzFHNHrLAHDrQlJ9K2AsQ==
X-Google-Smtp-Source: AGHT+IFnfNB1CsMoOxnLuKo4x2Jhc8xunD1KiPcyKlZwQwqNGr7WS3bbCuOyEqoiu/X+nbMhStt5AvBK91UIhGNPUOA=
X-Received: by 2002:a17:906:1099:b0:99d:5adc:fdff with SMTP id
 u25-20020a170906109900b0099d5adcfdffmr6234639eju.45.1692663711834; Mon, 21
 Aug 2023 17:21:51 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 21 Aug 2023 17:21:41 -0700
Message-ID: <CAK5yBb9kgr0SjcOhbx3_34DnoaM2NqhqwqeOxdADiriah5bTdg@mail.gmail.com>
Subject: Enhancements/Bugs closed WW33!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000044a538060377fb52"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Aug 2023 00:21:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60844

--00000000000044a538060377fb52
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
richard.purdie@linuxfoundation.org 1
randy.macleod@windriver.com 1
frederic.martinsons@gmail.com 1
Grand Total 3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000044a538060377fb52
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The below were the owners of enhancements or bugs closed during =
the last week!<br></span><span class=3D"gmail_signature_prefix"> </span><ta=
ble cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"t=
able-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-colla=
pse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"></=
colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rgb=
(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-co=
lor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height:=
20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-al=
ign:bottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.p=
urdie@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-align:right">1=
</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@w=
indriver.com">randy.macleod@windriver.com</a></td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;tex=
t-align:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto=
:frederic.martinsons@gmail.com">frederic.martinsons@gmail.com</a></td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td s=
tyle=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-al=
ign:right">3</td></tr></tbody></table><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr">=
<p class=3D"MsoNormal" style=3D"background-image:initial;background-positio=
n:initial;background-repeat:initial"><span style=3D"font-size:12pt;font-fam=
ily:Arial,sans-serif">Thanks,<span></span></span></p>

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
u></p><p class=3D"MsoNormal" style=3D"background-image:initial;background-p=
osition:initial;background-repeat:initial"><u><span lang=3D"FR" style=3D"fo=
nt-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color:blue"><br></s=
pan></u></p></div></div></div></div>

--00000000000044a538060377fb52--

