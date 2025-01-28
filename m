Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63EF1C0218D
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 04:45:05 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.11095.1738039500381400529
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 20:45:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GdjbA3+R;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2eeb4d643a5so9126438a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 20:45:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738039499; x=1738644299; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=4Ml3u0D2P8ymEgkvZX7iLmgKQSxPPuEZlknheQxP05o=;
        b=GdjbA3+RGFSSrHtO6hhfmuMItKU/TZYZogz4yk426i2RMWKFPynhbEuA0gdG6EjsMs
         Mf5+EMZd2iVxUgU4eve85bl1rqMxTxnZ0YYAi1pFj+TS6/ass/pod9XMfJ+cmgxj0aI5
         bqXSyEHp+yZBIXWdbLnTkxSxaBQHggVJ96qqjvyKP9fFnqCxLElloVHJgC5xpyvCIlfR
         3elU2a83b5pMQbhPfT+zLhwINE5M1EPNZCqFo3sy4Vyc17pqIaxOSH6aWXoHzRtXW6nL
         CZ+BZGyr8jKxwfz/krXpV+0s8eRCMmVBi1JkaW0tTWGp6R4geo2ANGCw7YDhFLsHOgft
         vvyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738039499; x=1738644299;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Ml3u0D2P8ymEgkvZX7iLmgKQSxPPuEZlknheQxP05o=;
        b=vt8tIlBgtgba9BdC2bC8n7GudFtKyDzX6LTAdHK/21hmqtnCauGBV59dioYuX9lDVN
         scVw3Rqd2NujqKFT6XI37e8iFLqXh43euBxp2VJEzBf2ATZZqs8ZANYwqdMVIG6nx6/g
         G5if/BAzJ8cvJnvK6gScxW6Eicbw/dtcP3r0owBTpJyJWgoEgTv3vMrLoZEd3kVg901j
         mLLkDoUF0I1c4SEZLXFLCWHB5CMbQiTK9FjPQ78AcWoX01kT4KqeMfjmsdEERXv/SCDY
         XrXjAxnw1JKcK6PCxOyWbW2MmE6C7QdmQq+3NDOzrMlk8NVrAq9sKGQ/luatfOu2Go/7
         Xpig==
X-Gm-Message-State: AOJu0YwYmcPeoNsQ0TTYVjqdXnbmL1x7bRnfJUK1PobcAtmsUMd5cVIB
	tnbuovZGiDoLwdJisZ8CrTtMVf7qraI9YHY8NfLpfBbXZ6eGU7dPm46LKT7aVFvXrl1TggpCM3U
	g6XtUUKX3BiLek/njdqCdC0a9KqWTpF4I
X-Gm-Gg: ASbGncvqBq1Lm/gpG5P2yfR+cFoAeFRYY1fMiu2/tDM0b8g85JTwIDqhe0TyIrhzVKO
	kfNatvLo56ZY6Mhy5QHcGcxzChCNqgv7rQ45I6xkbDUQlNVZnTXT9J1vU4wFK9e6ujlD/MmDg67
	+YUAw+l6aobKCDEfAbt9bnBuxBlSI5gaQ=
X-Google-Smtp-Source: AGHT+IGg+G+y9ehQr+x0NrXYSwnI+76wDdjZmKyigd5QPU6hTKeuZas74zt5UNJYv8U1rAzIbxqn6v4vC9OwgnL01/I=
X-Received: by 2002:a17:90b:2243:b0:2ea:696d:732f with SMTP id
 98e67ed59e1d1-2f782d972admr60659989a91.29.1738039499506; Mon, 27 Jan 2025
 20:44:59 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 Jan 2025 21:44:49 -0700
X-Gm-Features: AWEUYZl6Fz6VWerUXzdi8o2XE7o7dTpFsmBgerZs_7ItgyT-sXoW7pY-ykx9g3c
Message-ID: <CAK5yBb8dqkk0SBLLYZJ4dhdh057q3BiHUt+HnfdS_1z8mNFpnA@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW04
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f94a88062cbcdab2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 04:45:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64654

--000000000000f94a88062cbcdab2
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW04 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15704 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15704> [5.2
M1 RC2] BeaglePlay: System hangs randomly and kernel call trace with 6.12
randy.macleod@windriver.com ross.burton@arm.com 5.2 M2 5.2 M3
Medium+ 15680 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15680> systemd
default system groups do not follow useradd-staticids and stay dynamic
randy.macleod@windriver.com jonas.gorski@bisdn.de 5.2 M2 5.2 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000f94a88062cbcdab2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW04 a=
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
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15704" target=3D"_blan=
k">15704</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">[5.2 M1 RC2] BeaglePlay: System han=
gs randomly and kernel call trace with 6.12</td><td style=3D"border-width:1=
px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) r=
gb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a h=
ref=3D"mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burt=
on@arm.com</a></td><td style=3D"border-width:1px;border-style:solid;border-=
color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidd=
en;padding:0px 3px;vertical-align:bottom">5.2 M2</td><td style=3D"border-wi=
dth:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0=
,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"=
>5.2 M3</td></tr><tr style=3D"height:20px"><td style=3D"border-width:1px;bo=
rder-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overfl=
ow:hidden;padding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+</=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom;font-weight:bold;text-decoration-line:underline;te=
xt-align:right"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yo=
ctoproject.org/show_bug.cgi?id=3D15680" target=3D"_blank">15680</a></td><td=
 style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204)=
 rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;ver=
tical-align:bottom">systemd default system groups do not follow useradd-sta=
ticids and stay dynamic</td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.=
macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"bor=
der-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) r=
gb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:b=
ottom"><a href=3D"mailto:jonas.gorski@bisdn.de">jonas.gorski@bisdn.de</a></=
td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,20=
4,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3=
px;vertical-align:bottom">5.2 M2</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.2 M3</td></tr=
></tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;b=
ackground-position:initial;background-repeat:initial"><span style=3D"font-s=
ize:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000f94a88062cbcdab2--

