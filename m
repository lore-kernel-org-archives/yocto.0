Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2CBF7CCFA18
	for <webhook@archiver.kernel.org>; Tue, 11 Nov 2025 14:56:39 +0000 (UTC)
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.19396.1762872997926016321
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Nov 2025 06:56:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DeaVWUDe;
 spf=pass (domain: gmail.com, ip: 209.85.215.175, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-ba507fe592dso2617092a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 06:56:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762872997; x=1763477797; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=SbESjwn2yoblR8ITU01E5IJrYG0gErd9UieKjWnTCtI=;
        b=DeaVWUDem6dUQptYeEV2XXuzlcAMQNhVa2brp24G/hzgF6fF5sUx+cEVWIW8CAgvqn
         DiNYKewECvI3WX9uTJyZ8NXrAhE7O8uKabfqHvs5PpIbpBlxVeS4OGViY4N5G2Yd8Cao
         OT+MZ05ZcI3W7HGMNBpGXaAhp3rb/DhfQpBAoV4uP2UT7NhQIRCZApmDS71aG/iZPMtu
         3vmBR+zyvy13iBRrnMOP2f40LkrDf9zc0ZvnAlwSpnwG1rbkmFc7zRx4rTWWg3N0IVTW
         itD70qFwcjvCbk0PMdcLqOqgm1bEhLtQA4fMqkj1zGeTN6pWEH6GUWVJsaOQVvW5vVwM
         92Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762872997; x=1763477797;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SbESjwn2yoblR8ITU01E5IJrYG0gErd9UieKjWnTCtI=;
        b=pdutrCVbXgI/LHCOkEkHkn+frIRjCFaaauhiCXnbPUZ5i5eCBW7qiW0598OWJn2UvV
         JwrwLcjXhA7Tt20pY2eD8jduwBPGgKbRwLTrPSfXkq9gixsXDpIQaDiLnqrQEx2lP5+0
         r7dxMCPdxObA+6Syu/yBXssIaS5D8bcJaY930S1ruRmmiHeNt1nqoIKNe5nTDDfKmRsZ
         T+k5eip4oUh5eYTTsWb4C5BW6IGtNtDeXknirX5FYUHbYa8ThhD4vUXX6L3SkcyGO5v4
         cM2JXuy3Po3Zqt6AtzGMdIGOx0brA6vRKq7FQc3a8Ctouf3vEGITRlMVGVe9QXq0bsVH
         fwJQ==
X-Gm-Message-State: AOJu0Yw+h3hkZJgUgeJv8Zlr+/JsnzmLASxo0lDfIQoB2EQmiJpq+Vyz
	QQ/CldS+42reeQ3Z+4oowovQ10eh77YRTXwKFKnm+ooAzh2MOHL0l6SEO1E1l1RR+yRJZxBoebx
	l0s9vrUnqTi0SAO8aI8J8UP1CG+YzxBiekl1o
X-Gm-Gg: ASbGncve5OG2GWIDDzmpanhSsJ4wV3imgbmNY/GKKnsYhZNKFDL095E5lvrvzEXNa8k
	YERatYZtDRo9g3667rdycvoRp8OZDczks21pBkJyiKfau3LycgKza20G5q44xgk4pHZosM84+Go
	+t5hyrXqappPugu+09ZjziiRmWv63cOy1NIvg4eLW1g6fRoVXD/4Ng/GyxE5Su0Iz3NbUQn0Ynd
	4fIhXaMSazSxGsgdej87y55X+o7up+uenobpYkSMUUUBidrav9rkihHZ8fTbCra8mpKev+8Y+D6
	Qwr7yU/o9RpU9w4rkkeedY4T5TgUXgA6wrv0tae7/AVRBFlPepSOZDphw3hxEzH/AIbyLk9Aqjh
	YptlE
X-Google-Smtp-Source: AGHT+IHsQDAGlwPXBTXur5BS7nrzLBUfFfvPT0N4dzG3J30QHOD4mQyAm8M1D/EwF4qI0sBknK+8IccWhFtCMLcCCgc=
X-Received: by 2002:a17:902:e888:b0:295:8a21:155a with SMTP id
 d9443c01a7336-297e56d6144mr166735825ad.35.1762872997170; Tue, 11 Nov 2025
 06:56:37 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 11 Nov 2025 07:56:24 -0700
X-Gm-Features: AWmQ_bmcUX2Qm6TOstyFprhhVrmLZMEvU-DOWwvPIvxI5kid5JHFpruQ9kXIvgY
Message-ID: <CAK5yBb8+-T1eG3CF13Ks_8VGDC8YGHnF=17W277y_THHJKvAqw@mail.gmail.com>
Subject: Enhancements/Bugs closed WW45!
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c7d233064352dabc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 14:56:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66018

--000000000000c7d233064352dabc
Content-Type: text/plain; charset="UTF-8"

All,

The below were the owners of enhancements or bugs closed during the last
week!
Who Count
ross.burton@arm.com 10
david.reyna@windriver.com 2
yoann.congal@smile.fr 1
sundeep.kokkonda@windriver.com 1
mhalstead@linuxfoundation.org 1
Grand Total 15

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000c7d233064352dabc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The below were the owners of enhancements or bugs closed du=
ring the last week!<br></span></div><div dir=3D"ltr" class=3D"gmail_signatu=
re" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><t=
able cellspacing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"=
table-layout:fixed;font-size:11pt;font-family:Calibri;width:0px;border-coll=
apse:collapse;border:none"><colgroup><col width=3D"249"><col width=3D"42"><=
/colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px solid rg=
b(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-c=
olor:rgb(219,229,241);font-weight:bold">Who</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204=
,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;background-=
color:rgb(219,229,241);font-weight:bold">Count</td></tr><tr style=3D"height=
:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-a=
lign:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com</a>=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;text-align:right">10</td></tr><tr style=3D"heigh=
t:20px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:david.reyna@windriver.com">david.reyna@wind=
river.com</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom;text-align:right">2</td></tr><tr st=
yle=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3=
px;vertical-align:bottom"><a href=3D"mailto:yoann.congal@smile.fr">yoann.co=
ngal@smile.fr</a></td><td style=3D"border-width:1px;border-style:solid;bord=
er-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:h=
idden;padding:0px 3px;vertical-align:bottom;text-align:right">1</td></tr><t=
r style=3D"height:20px"><td style=3D"border-width:1px;border-style:solid;bo=
rder-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0=
px 3px;vertical-align:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.=
com">sundeep.kokkonda@windriver.com</a></td><td style=3D"border-width:1px;b=
order-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(2=
04,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;text-alig=
n:right">1</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px=
;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:mhals=
tead@linuxfoundation.org">mhalstead@linuxfoundation.org</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;text-align:right">1</td></tr><tr style=3D"height:20px"><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Grand Total</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;background-color:rgb(219,229,241);font-weight:bold;text-align:=
right">15</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"backgrou=
nd-image:initial;background-position:initial;background-repeat:initial"><sp=
an style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></spa=
n></span></p>

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

--000000000000c7d233064352dabc--

