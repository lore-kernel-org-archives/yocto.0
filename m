Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B66C6D11702
	for <webhook@archiver.kernel.org>; Tue,  2 Dec 2025 16:03:15 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.684.1764691386267557388
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Dec 2025 08:03:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WwvT3OgX;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-bc29d64b39dso3408527a12.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 Dec 2025 08:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764691385; x=1765296185; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tYzvKr9ff77Fwz91glhcmHBgVYU9H/0SPSeWF5QipA4=;
        b=WwvT3OgX6JKrDt1qcR5JMiOBIwa237tONaLCXX/2fLKJoU+p5qpXRAPLdZiYK22FEA
         YxZzGeqvBw7gVHUmW0c1tE0RN7E1LS1GIHI53zp1RjK8vxynmGQicfx4a2zTlPhbZX3p
         pC8j5bcd0SL78SQF1NGz2xsppvW+qcUtMqPfpLSTw7cJ7ZiaY4jIJSeCQsE9kUlozBiM
         uQjZJD6hXWqZGB8YVdYkttuV/NKs80KuEnM83E49SDarKn/XqMtuXNUEP19bwVul+Ztc
         CPKYMeRna73b0QfqU+WfhxNmlYiA7gXt8EBMlEbQTguwbOqts6O13oCiLzRab/SNWG+1
         zLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764691385; x=1765296185;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tYzvKr9ff77Fwz91glhcmHBgVYU9H/0SPSeWF5QipA4=;
        b=qBGnU3KLfcYLr8JTPAUSiZ1iQ6T6yGsjxEYJoCOVb21YjIBKWGBJzQ6nD3Na+HXv/u
         m3nCqkYDkgJ0rNz6jPgWeEp+AB6JJni8Uhn+jt+fbEqT8sH79nWN5xFeZUR0M1aSuFLR
         KsoMu9CVyC/t2FB42RMFylKh9Z1divUKnwyC5B0OJJKGS1z064TyZoTHLNTGS4JrwuBA
         hNq0FXD8kvMJQqtWpzQkKa6YAaGCP2lBRB9C0jLSCSHIAhlEda2T6P0VoapKQWdEvW2c
         nnhl9HwdraxmrOTyy518RfXUFNwJ7YA13gnA5lVO0F1ZSkARfeFZztlT4zWzuxz44DTx
         ngZw==
X-Gm-Message-State: AOJu0YyoNbE7K2an779PsyK9fqCq9BFtwzKPJUKEtRjGHMp45/+WRhbr
	CFphIhWiv9bKpAHdZoLXEVScMO5KcQyTC2OO3+2qo8DsWg6YHWgRIgZpOLPRHsHVCwmHaByUM+C
	kagaeg33S7HDSRnFlwI85oX5nahPiqmyig/E5
X-Gm-Gg: ASbGncuEthunnpa+YnJmvf9MgvLUG2aebEy0pP7Ig+iRqCvKixnz/Pf6XmNkZ0Dm0cU
	QItzW9x1nhK0TkqciqH+gVMEHlZwiZF4g43Y1+mfGcK9H46RZcqeLqdRz9HXhe18brSNKuTWt9N
	3JZ1WdQA0b2LwdAYlafXj30Wkt5+MaHOcfLvoOKueR80aQcSzqFIuHjO+j7qd9JDLSHrSLJJoED
	whkmKoxBOkJaeWSX+udLUm6gP/czKXaOQQDO93u5NSW8n4scPe/VP/C3ciDFAkwNlJz6vU7S9Vh
	Z8m2vDzIkgcatlvDBAgtxsYMUDugNprnapS88Ns6Ok1z4lECO1LBKzXo0FnEsdCE9lBFNfcZFtc
	/BGrPAlIvEvwRRFg=
X-Google-Smtp-Source: AGHT+IHDVwIv2kAeR8wba4GORMtOzjnub8ObiIcHJIw2yVGu4vCrW1zn5jmMLqQs8t27Xwr0QeRCczAxpeqcGSZDPuY=
X-Received: by 2002:a05:7300:8c2c:b0:2a4:3593:ddd8 with SMTP id
 5a478bee46e88-2a71953caf7mr26449737eec.5.1764691384170; Tue, 02 Dec 2025
 08:03:04 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 2 Dec 2025 09:02:52 -0700
X-Gm-Features: AWmQ_bk4npXxgtsK67VW_yGKybiLnkfQWakbCTywkMl1s3B13uNis2y96NlfjEY
Message-ID: <CAK5yBb-xDEdQUa1umYMKoNtfjw77n00+_kG8fLvupS=PieN-sw@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW48
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000177c0c0644fa3b02"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Dec 2025 16:03:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66085

--000000000000177c0c0644fa3b02
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW48 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 16079 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16079> bitbake:
A builtin fragment is used while MACHINE has already got an assignment.
randy.macleod@windriver.com richard.purdie@linuxfoundation.org 0.0.0 5.3 M4
16082 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16082> buildperf:
Unable to find 'commit' value 'b0b3c7515249447b512e7f3b76e2efed3f957288'
randy.macleod@windriver.com richard.purdie@linuxfoundation.org 0.0.0 5.3 M4
Medium+ 16077 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16077> opkg
in SDK fails to validate server certificates randy.macleod@windriver.com
Moritz.Haase@bmw.de 0.0.0 5.0.15
16081 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=16081> bitbake:
SemLock usage error on fedora43 randy.macleod@windriver.com
richard.purdie@linuxfoundation.org 0.0.0 6.0 M1

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000177c0c0644fa3b02
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
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16079" target=3D"_blan=
k">16079</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">bitbake: A builtin fragment is used=
 while MACHINE has already got an assignment.</td><td style=3D"border-width=
:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0)=
 rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a=
 href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfoundati=
on.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0=
.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(=
204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding=
:0px 3px;vertical-align:bottom">5.3 M4</td></tr><tr style=3D"height:20px"><=
td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,20=
4) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom"></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb=
(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddin=
g:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:under=
line;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugz=
illa.yoctoproject.org/show_bug.cgi?id=3D16082" target=3D"_blank">16082</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">buildperf: Unable to find &#39;commit&#39; value=
 &#39;b0b3c7515249447b512e7f3b76e2efed3f957288&#39;</td><td style=3D"border=
-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(=
0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bott=
om"><a href=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.=
com</a></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfo=
undation.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-colo=
r:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;p=
adding:0px 3px;vertical-align:bottom">5.3 M4</td></tr><tr style=3D"height:2=
0px"><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,=
204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;font-weight:bold">Medium+</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:b=
old;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-c=
ell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D16077=
" target=3D"_blank">16077</a></td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">opkg in SDK fails =
to validate server certificates</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td styl=
e=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(=
0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical=
-align:bottom"><a href=3D"mailto:Moritz.Haase@bmw.de">Moritz.Haase@bmw.de</=
a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(20=
4,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0=
px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;borde=
r-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,2=
04,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.0.15</td><=
/tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:so=
lid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pad=
ding:0px 3px;vertical-align:bottom"></td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:=
bold;text-decoration-line:underline;text-align:right"><a class=3D"gmail-in-=
cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D1608=
1" target=3D"_blank">16081</a></td><td style=3D"border-width:1px;border-sty=
le:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,20=
4);overflow:hidden;padding:0px 3px;vertical-align:bottom">bitbake: SemLock =
usage error on fedora43</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.=
macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:richard.purdie@linuxfoundation.org">richard.purdie=
@linuxfoundation.org</a></td><td style=3D"border-width:1px;border-style:sol=
id;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);ove=
rflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">6.0 M1</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"b=
ackground-image:initial;background-position:initial;background-repeat:initi=
al"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<spa=
n></span></span></p>

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

--000000000000177c0c0644fa3b02--

