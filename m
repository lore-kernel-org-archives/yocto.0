Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D9BC25B7A
	for <webhook@archiver.kernel.org>; Mon, 20 May 2024 22:44:40 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web10.6460.1716245075489150146
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 May 2024 15:44:35 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZdK7DSF1;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e719bab882so22666521fa.3
        for <yocto@lists.yoctoproject.org>; Mon, 20 May 2024 15:44:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716245073; x=1716849873; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7S5xyHJr2i/s7kOnhUrj3wX19Hwf9gv3yVu4/nhKvnQ=;
        b=ZdK7DSF1JFIZ3iTvVxfbPF6lF1DZJbUVrfMWZQTTpT2zaVLSc9dQrSrRp6n19ia3EJ
         dCIc5cAslHkgdRh4jDTyS/PdyPxwUXgcSyXyizVsN4WAalcv12wMAAPwP0NdyahsNoca
         DvfjDROk3MtGT7LbODfnAk/b056UzSwFOXmh/lKmbjvtwIf86Kdk2jcGDH6iGB/rgPAp
         yVfSFQgBAhGEyrqO1/suxlkmHFyTLVWaHyW86IUz2GKs+jPU5oauwpSMWuPWCrUYfEk3
         RZy1/FQU8j24JfSMlQ8w6Rtb3UZQk0ixRwRY9N8myIJmn1SjV8lDUuq/vUY+hP6rMxgq
         P5RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716245073; x=1716849873;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7S5xyHJr2i/s7kOnhUrj3wX19Hwf9gv3yVu4/nhKvnQ=;
        b=izoeF56jBnpMnx9D+AhzLLB0rcN4Z8RuJ0FHQVaiINvWmMGeEwwwUilVc8FwqSOEvT
         T12zRugNC6bPmMPr9yPd5VnYefsNe9BtXf9v/7pxBD5J+W0h0FvNGod8mt3OR+iMn/DN
         ADB3ASkEh+/jaea21fSVwuqFV+Q2AyjqFXD/1ScvseucV8zkmzgaL4vM2+HIk2ZoYJg3
         2AkBsAMyCejqsUGVrXu6ZMOf+igEIo0lOsyNuM2LsW8ZYDvWcO+6iaYM0H2ozKUSNj2Y
         HYFH9R+83QLpH/0OG31d+ZPNNbwjF3zBl7k7tjak4cMRReT2byeq49iETY+eYhdfs/0I
         idnw==
X-Gm-Message-State: AOJu0YzpJra0ANu9jLTAOTfb61Pg5Ee1Lm/APkIlAAtPw3kFTbnXsZiV
	Wu3ebxf7E3AdQRX93cjbpsHQ7pLizHjV9NaHS9mvR7ymMqdxa5/SzMC2e3Cmspv0gm6Fc7CQxTB
	ahxwzO60z69e+Rd472yQ24bAc44bLpRwj
X-Google-Smtp-Source: AGHT+IFY8TcprNK4zaDT0R/Sdu+acw982DSIKp/OOdhYDZTCxMRkyUyAsDM9DyD64efbd+r62Fjb8LGUWiVs4Xn8IHg=
X-Received: by 2002:a05:6512:3d19:b0:51a:b110:3214 with SMTP id
 2adb3069b0e04-5221007029cmr23219738e87.49.1716245073372; Mon, 20 May 2024
 15:44:33 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 20 May 2024 15:44:22 -0700
Message-ID: <CAK5yBb_tNw5iwUDH5U-axxdTF4+vtZe78HaFV450Fbk45oZqhg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW20
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f22c580618ea7147"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 May 2024 22:44:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63143

--000000000000f22c580618ea7147
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW20 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15352 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15352> AB-INT
PTEST: gnutls naked-alerts test failure randy.macleod@windriver.com
simone.p.weiss@posteo.com 5.0 M4 5.1 M2
15485 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15485> meson.cross:
wrong host_machine fields in SDK randy.macleod@windriver.com
ross.burton@arm.com 0.0.0 5.1 M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f22c580618ea7147
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>YP M+ or high bugs which moved to a new milestone in WW20 are li=
sted below: <br></span><div dir=3D"ltr" class=3D"gmail_signature" data-smar=
tmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><table cellspac=
ing=3D"0" cellpadding=3D"0" dir=3D"ltr" border=3D"1" style=3D"table-layout:=
fixed;font-size:11pt;font-family:Calibri;width:0px;border-collapse:collapse=
;border:none"><colgroup><col width=3D"63"><col width=3D"43"><col width=3D"5=
43"><col width=3D"235"><col width=3D"242"><col width=3D"53"><col width=3D"5=
3"></colgroup><tbody><tr style=3D"height:20px"><td style=3D"border:1px soli=
d rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bottom;backgrou=
nd-color:rgb(219,229,241);font-weight:bold">Priority</td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;ba=
ckground-color:rgb(219,229,241);font-weight:bold">Bug ID</td><td style=3D"b=
order-width:1px;border-style:solid;border-color:rgb(0,0,0) rgb(0,0,0) rgb(0=
,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:botto=
m;background-color:rgb(219,229,241);font-weight:bold">Short Description</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0,0) r=
gb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;verti=
cal-align:bottom;background-color:rgb(219,229,241);font-weight:bold">Change=
r</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(0,0=
,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold">O=
wner</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bold=
">Was</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(0,0,0) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom;background-color:rgb(219,229,241);font-weight:bol=
d">Became</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;=
border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);over=
flow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+=
</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px=
 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;=
text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.=
yoctoproject.org/show_bug.cgi?id=3D15352" target=3D"_blank">15352</a></td><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;v=
ertical-align:bottom">AB-INT PTEST: gnutls naked-alerts test failure</td><t=
d style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204=
) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ve=
rtical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">randy.m=
acleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:simon=
e.p.weiss@posteo.com">simone.p.weiss@posteo.com</a></td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om">5.0 M4</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">5.1 M2</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom"></td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line=
:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https:=
//bugzilla.yoctoproject.org/show_bug.cgi?id=3D15485" target=3D"_blank">1548=
5</a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom">meson.cross: wrong host_machine fields in =
SDK</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.co=
m">randy.macleod@windriver.com</a></td><td style=3D"border-width:1px;border=
-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,20=
4,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"ma=
ilto:ross.burton@arm.com">ross.burton@arm.com</a></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom">5.1 M1</td></tr></tbody></table><p class=
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

--000000000000f22c580618ea7147--

