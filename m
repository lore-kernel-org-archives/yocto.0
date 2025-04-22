Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6A4BC369D7
	for <webhook@archiver.kernel.org>; Tue, 22 Apr 2025 06:57:42 +0000 (UTC)
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
 by mx.groups.io with SMTP id smtpd.web11.34197.1745305059328427616
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Apr 2025 23:57:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ctM0jpYm;
 spf=pass (domain: gmail.com, ip: 209.85.216.51, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-30572effb26so4305624a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 21 Apr 2025 23:57:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745305058; x=1745909858; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=swMhCTBINdBg970nWWE0OUj3f0jYh7qIRS/tHxDIGro=;
        b=ctM0jpYmhWq7svgOLDBFZNuARZB7p97y1tnoL3rbLl8pPCxn+ft6ggBtcapYCcfGBZ
         RvpjiUScElCVWOZY4KAcdefeysQufKrnNSUAdokffBz19sEY1Y8dBZuGh2Hzsk8VhZt0
         FUT1lBJu5/lTh07XJeL74gMRAIA3DIKFgxSWLh5G6Zd8jMyC8jWsztZCZjuVICc93mRA
         rNrok15QRz/nR69uIGuFPwCK0lKFk5nyo7oW/k0RlOy88UGgHeIE4YAuQSQivxS7gqRb
         JTh2VhPubY1pYLAuYZP6YL1bu6Hl4pKe+qYKh8NDtlVF62NsUhVBTC1D49Bk0guL3crc
         21+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745305058; x=1745909858;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=swMhCTBINdBg970nWWE0OUj3f0jYh7qIRS/tHxDIGro=;
        b=ivMXXO4RpC7dXjvoYSzj+aUGuy6dU3BuBrEOP8SR/vXLsd4IbvDVdKUNGrfvS1RBNT
         QLCVwu91FLtcMOf47aevCi9dH1gclPgLveFLDG+/lGm2DG4U1ABHBnXEKoo3GuaLQi8b
         IopBBwGSJSt8AScilvm1XzO4QuBX39lQi1/gBUiQUdFn+/QpDjnnkU2tYHltrEV0wO1N
         5WgNpUayHBa8+Fd7+gv8NE+uRJ7CO952wtj06YwzMFHvzkPbunlP/u8v5O82iS8bk3ec
         HG3PsVZHFUbVoX2liRZA6Mqvf6knAsp64J/BhZqJ9yD5uH8GFAiNbSPQBVTmJetIiLf1
         wK3w==
X-Gm-Message-State: AOJu0Yxv5acvW7nvWt3NHOGybgA+uavskyUj6cpzNbDC87VXjzDfcrQ6
	gMNjt5QzwyhCkMJbK4nIklhARq1YzZyb2WVdpf/nuaQBWPA/nKNpBFZFIy2q689PATt6Xsa7GR9
	7Rd+bP2ZE6H0N/rHij9fTWnPALUdm+sBO
X-Gm-Gg: ASbGnct5jdUxyhk4tkkzytQBdyYFWy6q6HGPuqNBtcU7nF1V9pdMmB4Ku42eVyFkxc9
	NG6iSlHtptRpO9mo9KxM1tgDxvRiFU2/0dSBW+lokN1f21ygexiIPrpYuC+W0wgOtnX4pmQiLzQ
	QeOhIiZxqsoJQ1/+QtcH1XvV0HxvSRCU3JyVdYe28TrGJ3QJ20m2qssl9jQbhVkRh/kw==
X-Google-Smtp-Source: AGHT+IEAqt0GG+HSILphD0wrge3R8t6JDo0gR4mtbXEkjMRPmtdcu3SGwtspkkv53qZwCnXAHU95RD79KoKM79a5qgg=
X-Received: by 2002:a17:90b:586f:b0:2fe:955d:cdb1 with SMTP id
 98e67ed59e1d1-3087bba2748mr17688028a91.23.1745305058413; Mon, 21 Apr 2025
 23:57:38 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 21 Apr 2025 23:57:28 -0700
X-Gm-Features: ATxdqUEnUI0mEP1I6LC-3SVLSmk7nMEBg4mXZOCwv2HWCYvCa6KZTdbxHOOXfx0
Message-ID: <CAK5yBb_BNxdCqG5rzAWouE_c1_+Uz9KGS0LNGokN=B3qhWkf7g@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW16
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000008146406335880e5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Apr 2025 06:57:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65221

--00000000000008146406335880e5
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW16 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15830 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15830>
poky-altcfg
genericarm64 images fail to start agetty on AMD KV260 serial console
sjolley.yp.pm@gmail.com ross.burton@arm.com 5.2 5.2 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000008146406335880e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW16 a=
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
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15830" target=3D"_blan=
k">15830</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">poky-altcfg genericarm64 images fai=
l to start agetty on AMD KV260 serial console</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a=
 href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm=
.com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:=
rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom;text-align:right">5.2</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0)=
 rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align=
:bottom">5.2 M4</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"ba=
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

--00000000000008146406335880e5--

