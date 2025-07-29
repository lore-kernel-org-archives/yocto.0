Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF73EC83F26
	for <webhook@archiver.kernel.org>; Tue, 29 Jul 2025 14:55:32 +0000 (UTC)
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
 by mx.groups.io with SMTP id smtpd.web11.9715.1753800930484834247
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Jul 2025 07:55:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b+tRK0/k;
 spf=pass (domain: gmail.com, ip: 209.85.214.178, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-23fe2be6061so9433615ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 07:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753800930; x=1754405730; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=HIpCE1HPxekqiSviOS0z77zNj4bjx2eEdVY7r8NddXg=;
        b=b+tRK0/k+8Y+/fCpSg7HUbdn+g8Ta2oEUBU2M90KaW47wLRMEV7irHWJFdVdgJxhn6
         6t4XoWC59I+7ogDlvswKWS47HOQ/3JbWH1XN72VsU/4Lx1JvXUXhSDz5+Tn/MnfZH/gc
         +zdi0ActjX7QSu4ZQpAWbXSELbhY87/Qw+RXhJxsxeB+htoiowCbDZBZEeuSb4N7QbxC
         kgsgmNIo1YBaj1pIMqq2PLBq05DwNURl6mCl5YOq5qnqkLfM0PIC4OplVkuyyRtDFDtY
         lIUiHBmJdcBJRALadhUtaPXuZu3aBQtN60OO771S1jLxsKWIJVfUkQk58/X8Wxue32bF
         4rSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753800930; x=1754405730;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HIpCE1HPxekqiSviOS0z77zNj4bjx2eEdVY7r8NddXg=;
        b=NjR5k+MyOSnU4C+hh6GUBL65b4oXkwh4/vZGHBdKSPM6ppvg8qFtsTTWBZ+gIQjj6q
         SEg0sFZ8qEacyGVpJP+h1oqvht5ZQqVv/RL97ke5TsblrdNrwhWlH3Y8DFX68EE8GQcJ
         Pd8awLQP8omhXeLRewi/zaUalbNLzbN6tN02r0/gHR/b1rQOCvxQ0Q3FU1mU/EMwjSVs
         z+C5ERKB170yOVsPUyH5XLaTjrU3A/Hcv+iKfJ1VCVE/fyDqB1tsUDSbT1zn9O6aC1gH
         WARKBIaFOPFPw2rzlCwwnqhTlMXGI/PtRGX7j+SjNwioFNk7vZUJVPrQd2rjUC+SEKiu
         Ku9w==
X-Gm-Message-State: AOJu0YyvAb9MD36qs1MRa9VEk0Fpc5scnwfsOeIakstuG1B7ondXEw6e
	LqqnaibXHXWRlCQJv41zzFutkoZw7sNYCgQ/4YhFPmz8KQTJecDLAD9jytdGhtInE1ya7Ya634Y
	iTnAJ50XzxiZbQE7rhPYjwgk2PYaZoR5ka5EG210=
X-Gm-Gg: ASbGncuzKXp+igfTklpRSB1BCXSukC58S1mpoSdVZFau2rkM6dfwoBLeq3w8BIxXucU
	orw11BlvrvkpmOw5SGTIE+XoBN0s774Z4cDfO9KOma+IyIrhPQQ3m5wTpDiNbfzt2thqramdW8e
	9PPUMXh2cEp9yK/AiyB5l9zYI05Qwa2qf0kSLY/1AzHG2BYYvqsYIkvEp6TUeAKQ2JGN6rSfla0
	heOOO6lhCC5vIlzHadSod5tRraxsgX1pZxII6DmhA==
X-Google-Smtp-Source: AGHT+IE6PY4nka2e2jpV1cuQar1wLZTbV/FEmO2BjxWMZ8EJG1MCwC4gtD+n+TtpNAZiJqV7WJwIjB1HR0GKG0rI8W0=
X-Received: by 2002:a17:902:f64f:b0:234:595d:a58e with SMTP id
 d9443c01a7336-24063dc8e0fmr57319915ad.25.1753800929492; Tue, 29 Jul 2025
 07:55:29 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 29 Jul 2025 07:55:18 -0700
X-Gm-Features: Ac12FXy1Szi9jSmgVF1CRX8biCFAIXb98bcTe1V0SN8PtSVtA2j3cPHIQWpBD-E
Message-ID: <CAK5yBb9iH2xGXenXoAeGk0=dWcMKim5C058SXoyEHEBAEwVhcg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW30
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000068c402063b12992d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 29 Jul 2025 14:55:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65719

--00000000000068c402063b12992d
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW30 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15935 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15935>
swatbot:
fix buildid clash between different buildbot instances
sjolley.yp.pm@gmail.com mhalstead@linuxfoundation.org 5.3 M2 5.3 M3
15937 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15937> Terminate
release builds if output directory already exists sjolley.yp.pm@gmail.com
richard.purdie@linuxfoundation.org 0.0.0 5.3 M3
15938 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15938> metrics and
python version on rocky8-vk-1 sjolley.yp.pm@gmail.com ross.burton@arm.com
0.0.0 5.3 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--00000000000068c402063b12992d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW30 a=
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
-weight:bold">Medium+</td><td style=3D"border-width:1px;border-style:solid;=
border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold;text-decor=
ation-line:underline;text-align:right"><a class=3D"gmail-in-cell-link" href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15935" target=3D"_b=
lank">15935</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">swatbot: fix buildid clash betwe=
en different buildbot instances</td><td style=3D"border-width:1px;border-st=
yle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,2=
04);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailt=
o:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:mhalstead@linuxfoundation.org">mhalstead@linuxfoun=
dation.org</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom">5.3 M2</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.3 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D"border-w=
idth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,=
0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom=
;font-weight:bold;text-decoration-line:underline;text-align:right"><a class=
=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/show_bug.=
cgi?id=3D15937" target=3D"_blank">15937</a></td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">Term=
inate release builds if output directory already exists</td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom"><a href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom"><a href=3D"mailto:richard.purdie@linuxfounda=
tion.org">richard.purdie@linuxfoundation.org</a></td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>0.0.0</td><td style=3D"border-width:1px;border-style:solid;border-color:rg=
b(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;paddi=
ng:0px 3px;vertical-align:bottom">5.3 M3</td></tr><tr style=3D"height:20px"=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"></td><td style=3D"border-width:1px;border-style:solid;border-color:r=
gb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padd=
ing:0px 3px;vertical-align:bottom;font-weight:bold;text-decoration-line:und=
erline;text-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bu=
gzilla.yoctoproject.org/show_bug.cgi?id=3D15938" target=3D"_blank">15938</a=
></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204=
,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0p=
x 3px;vertical-align:bottom">metrics and python version on rocky8-vk-1</td>=
<td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,2=
04) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;=
vertical-align:bottom"><a href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.y=
p.pm@gmail.com</a></td><td style=3D"border-width:1px;border-style:solid;bor=
der-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:=
hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ross.burton=
@arm.com">ross.burton@arm.com</a></td><td style=3D"border-width:1px;border-=
style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204=
,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">0.0.0</td><td =
style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) =
rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vert=
ical-align:bottom">5.3 M3</td></tr></tbody></table><p class=3D"MsoNormal" s=
tyle=3D"background-image:initial;background-position:initial;background-rep=
eat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-serif">Th=
anks,<span></span></span></p>

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

--00000000000068c402063b12992d--

