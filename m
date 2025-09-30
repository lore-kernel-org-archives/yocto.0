Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6D27CAC5B9
	for <webhook@archiver.kernel.org>; Tue, 30 Sep 2025 05:47:07 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
 by mx.groups.io with SMTP id smtpd.web10.18628.1759211221114694447
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Sep 2025 22:47:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=loM/ONT4;
 spf=pass (domain: gmail.com, ip: 209.85.214.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-2570bf6058aso78381605ad.0
        for <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 22:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759211220; x=1759816020; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YApaKtw3BG4TvpR+ovYC0Bse0M9vzt7wdst36UDJBc8=;
        b=loM/ONT4UDQgRCs1BIrpbqChiANqd5JbixNGNrnELyUNCacYfLs3ZIXSSza1VgQ9bO
         l0rAsw9ciBZ+sXLMr8OK//pjmI7xOKYxLC1p/gQSbICTBy5QGdnXHQ2CuWc8D7NyEEU1
         4m8nZc+oJBEpDTbeqDYyOCtxTDDX4K/dLvf7y5zDqaL3ZHJgOFsSwTVsSRdrs7GIukB0
         jwxduBubJvPryPfdCjO7IqzxEwzZpSCClegwHS5/+Wl7ywrYsUrx8ygvqYgl/4KcwhzC
         waZVS+6fWGJptU2WA9gVQl3aCXY8IppNH4MxiOcM1WsEkZjYecdQW6kxUzHp8+0v7Ja7
         5bAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211220; x=1759816020;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YApaKtw3BG4TvpR+ovYC0Bse0M9vzt7wdst36UDJBc8=;
        b=a1MgdAHT+0iEezlA9zHfUVoR7Kp3uQCR3FQR5Z3aJXrHlGv01BK4Rzil17cJXdIA+d
         8++RNT7Aq6mOQuywHrnM0vWWGhPesxOBFrqnbNgW3rwn3m0uOO8/sWn6xVdrDgs6H81F
         HamDTVNLITQxhwKCwW5jeplDAtNLaU/SMgXjhU7qZYl94oqMeVmkR74WnPDohBnaGUwN
         JIXNAgK7EeIjQWc1gr/kchhTGVxLXaYgzu6ElZgf9qpxrBtEN68usX1gTTVpHCedhgxz
         wZvO0UVw69TR38ThU0XRWZKLgh3XTnkgY3nixt6KwJB9DWK5BQWVtaMQAa+urusTy/Tn
         BWHQ==
X-Gm-Message-State: AOJu0YwvsEfFD7wyJmATWlfVi2mhEpbkQnwITLfcUj+MG2xtepk2l7rm
	DYHVsQkP+VFh4WeOc81Jn9g1pK5JOqkcJmg1xf3BNPc4IFKtCE8PZ/6hVWrsUZs9n1IRHiIG7HX
	6vf0wzyaRc1TpFQ+hJzMsxLfKEwhirQN2+64w
X-Gm-Gg: ASbGncuDECQlEDfXyUa8q+1I35VRaioo92kaQAFfrsO4+pLsz4lQ2pS7tuaZM9kXRxU
	4sdPBUiImxlr02ASmeoJVzM7rDHvHBmq8Y8yW7QTwnAqQHrebJK8jgynUd6x9nwBdyZTZI5BZzV
	6Afhl1hzmEDWz1kOf/ibNFwz8Wg5FbvLORz68B3F4heRU7geeaWQIz6LUlRtV6CytNvweBr1s+E
	NwKTUdo5Fz/q0mrAqSjQTHEiAHQUCtEPfoAgH9c/ZNzKKSO4R4q9CYoTfr5HFEiCRtTR1SzNPgn
	AuDzOJ0I15eCaFUM7TD3yWrwRBwnQdTxz1YJjB1L+7GvXAo6fXE=
X-Google-Smtp-Source: AGHT+IFMpph1W9/xP2+EW5tbF7UrqAPftF1mzny0jVEUZUg38p3nrEZF71IuwBPg+f5CRbKw8oLdF9wjzP3SUjHXqEo=
X-Received: by 2002:a17:903:1209:b0:267:44e6:11d3 with SMTP id
 d9443c01a7336-27ed49d2bf5mr229240705ad.21.1759211220215; Mon, 29 Sep 2025
 22:47:00 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 29 Sep 2025 22:46:48 -0700
X-Gm-Features: AS18NWCOimVtmWuxx5VwI2bRzcmbhs0WJ8nHeAC7wJEKO1Typ6KLVSW4uTRZCBk
Message-ID: <CAK5yBb_amtSbPWhgMsBzARdqGC8ye5KKwvBB8GAjT+M0w7-D+w@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW39
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ddad3c063ffe47dd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Sep 2025 05:47:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65891

--000000000000ddad3c063ffe47dd
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW39 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
High 15978 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15978> AB-INT:
perf implicit declaration of function 'perf_evsel*'
randy.macleod@windriver.com ross.burton@arm.com 0.0.0 5.3 M3
Medium+ 15909 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15909>
crate://crates.io is not a valid download_location for SPDX 2.2
randy.macleod@windriver.com sundeep.kokkonda@windriver.com 5.3 M3 5.3 M4
15977 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15977> python-core:
importlib.metadata RDEPENDS on several other packages
randy.macleod@windriver.com colinmca242@gmail.com 0.0.0 5.3 M4
15979 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15979> Document
the development phases (M1-4, feature freeze, ...)
randy.macleod@windriver.com antonin.godard@bootlin.com 0.0.0 5.3 M4

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000ddad3c063ffe47dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW39 a=
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
"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15978" target=3D"_blan=
k">15978</a></td><td style=3D"border-width:1px;border-style:solid;border-co=
lor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden=
;padding:0px 3px;vertical-align:bottom">AB-INT: perf implicit declaration o=
f function &#39;perf_evsel*&#39;</td><td style=3D"border-width:1px;border-s=
tyle:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,=
204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mail=
to:randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td sty=
le=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb=
(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertica=
l-align:bottom"><a href=3D"mailto:ross.burton@arm.com">ross.burton@arm.com<=
/a></td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(2=
04,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:=
0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;bord=
er-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,=
204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td>=
</tr><tr style=3D"height:20px"><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0);overflow:hidden;pa=
dding:0px 3px;vertical-align:bottom;font-weight:bold">Medium+</td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom;font-weight:bold;text-decoration-line:underline;text-align:rig=
ht"><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.o=
rg/show_bug.cgi?id=3D15909" target=3D"_blank">15909</a></td><td style=3D"bo=
rder-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) =
rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:=
bottom">crate://<a href=3D"http://crates.io">crates.io</a> is not a valid d=
ownload_location for SPDX 2.2</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:=
randy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=
=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0=
,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-=
align:bottom"><a href=3D"mailto:sundeep.kokkonda@windriver.com">sundeep.kok=
konda@windriver.com</a></td><td style=3D"border-width:1px;border-style:soli=
d;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);over=
flow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M3</td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom">5.3 M4</td></tr><tr style=3D"height:20px"><td style=3D"border-wid=
th:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,=
0);overflow:hidden;padding:0px 3px;vertical-align:bottom"></td><td style=3D=
"border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,=
0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-ali=
gn:bottom;font-weight:bold;text-decoration-line:underline;text-align:right"=
><a class=3D"gmail-in-cell-link" href=3D"https://bugzilla.yoctoproject.org/=
show_bug.cgi?id=3D15977" target=3D"_blank">15977</a></td><td style=3D"borde=
r-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb=
(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bot=
tom">python-core: importlib.metadata RDEPENDS on several other packages</td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom"><a href=3D"mailto:randy.macleod@windriver.com">rand=
y.macleod@windriver.com</a></td><td style=3D"border-width:1px;border-style:=
solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);=
overflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:co=
linmca242@gmail.com">colinmca242@gmail.com</a></td><td style=3D"border-widt=
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
illa.yoctoproject.org/show_bug.cgi?id=3D15979" target=3D"_blank">15979</a><=
/td><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,2=
04,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px =
3px;vertical-align:bottom">Document the development phases (M1-4, feature f=
reeze, ...)</td><td style=3D"border-width:1px;border-style:solid;border-col=
or:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;=
padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:randy.macleod@wind=
river.com">randy.macleod@windriver.com</a></td><td style=3D"border-width:1p=
x;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rg=
b(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom"><a hr=
ef=3D"mailto:antonin.godard@bootlin.com">antonin.godard@bootlin.com</a></td=
><td style=3D"border-width:1px;border-style:solid;border-color:rgb(204,204,=
204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px=
;vertical-align:bottom">0.0.0</td><td style=3D"border-width:1px;border-styl=
e:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204=
);overflow:hidden;padding:0px 3px;vertical-align:bottom">5.3 M4</td></tr></=
tbody></table><p class=3D"MsoNormal" style=3D"background-image:initial;back=
ground-position:initial;background-repeat:initial"><span style=3D"font-size=
:12pt;font-family:Arial,sans-serif">Thanks,<span></span></span></p>

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

--000000000000ddad3c063ffe47dd--

