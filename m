Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 484B3C5B543
	for <webhook@archiver.kernel.org>; Tue, 10 Jun 2025 07:13:54 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.81138.1749539625361278098
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Jun 2025 00:13:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=boAlw7Up;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-313910f392dso1216391a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 00:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749539624; x=1750144424; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VcSLoIBbZxZPocOdeZDF4JDT0iA7uuMnGCj8Z26rB8U=;
        b=boAlw7UpzveVlIo2ySjTitvts0KX0itQ3+SUuScfCI8IMZVbg/xcxPM4eX1Yk+au43
         cfEju0uNPwkhhkmSxQr7JNxr5M+41iEQHjJN+3xOC2+eWiI69wSPYE0iov5Xq7PBAluE
         B/7xEA/IkmSQbwMIcvST0nLp4jU/7jsAT6p6cyBEOOfQssV4sPVBMucIrjGY8jkytDZC
         DxdTqv6WB40an0izdzQw7JomeZYcgumF0f1RASt2byIfNmdLcJuag30r1NwGsPJTS4Lh
         VhnnZuq5XEr6XRihkNXkL8oQhNBrpIBktm655kO1nb7eZbOeEfQr5XrgGsDkmDfDhnAi
         juhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749539624; x=1750144424;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VcSLoIBbZxZPocOdeZDF4JDT0iA7uuMnGCj8Z26rB8U=;
        b=XVrsoae6q2XZX9daedIxdBfua21MvAODyahe3mAL2vFtBfnwO9pmfkvr+lYX/B0yov
         rZT5UWj4j59OgXu/kyN1YCYMcZ5GT+FIXopblNhOeUw/9yVwB3REw9kxVrc86TCsjYiA
         8nrMDa1EknCsvhnkz2p1geTf6ykekR6k0KHKqYSC87pYlIIAFC0EgNS29EF9fJcRBzNP
         D9BjFJuog6XKP1gwu+ZL8r2+A2DIz92LHeCD/Wh17v3mpbfmlvCnOfVvnwUEKeKhRnbK
         kvwiFTgKxN1BQjhPM+zaU4PdOt9aEGFVIn2YMViLqN/DZ7vnOhhzfwpa/O8CoZUV/eKt
         wdCw==
X-Gm-Message-State: AOJu0Yw9CLXgOSU66A4TYmjHKT0whgYxCl+/JpPkBcNTCpPUcCQItGNE
	SIVXmM3QfKvcX7ymCAUFKUWuv7Y9qR/e4Sd7gduQ79LVCifdHlEQTVwYAJyogRm8aVXPubRQ9dK
	sdn4jmnM9blWd+LBOUJBG7AledRBg0YDyI4Y/
X-Gm-Gg: ASbGncvHI6IxdplSpqAZF9KEUPSwWEWNUyIoWOCVZPGwj77VJZeNfzg/6+b+U+Ann/4
	QfKzCB5s669gsPPN2utOcREa+1rEWCaRzAKmAscw9jZaOTVfHKErvsiEwYIso6PAhgb0JJpDS3p
	y7biXo+20RvuzhxEI4JYmI4wqfng/wnESCDyQ97X9HyB349EqPtUqOJti099RbiMvAtWmdcQjy/
	w4d
X-Google-Smtp-Source: AGHT+IG11Ae9eCjqOY7da4jU7Utw+qXLC3/GukDRiDbCPlAT48FvJWeiHe6h9UIrjUwQL4WJB9EuYVgwcQABhvT1KD8=
X-Received: by 2002:a17:90b:50:b0:312:f0d0:bb0 with SMTP id
 98e67ed59e1d1-31347302a8emr28091339a91.12.1749539624240; Tue, 10 Jun 2025
 00:13:44 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 10 Jun 2025 00:13:33 -0700
X-Gm-Features: AX0GCFtYsDg-Vh_9-yW_umzZbkxbAq47sdXSWw2YLURV8LISJ_j5LLj756lJnO8
Message-ID: <CAK5yBb8Ouxv+ypHzm7q_9SRZGWYeX9FkzO7xOq-6jQoe74L9kg@mail.gmail.com>
Subject: M+ & H bugs with Milestone Movements WW23
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d2ca480637326f5d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Jun 2025 07:13:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65494

--000000000000d2ca480637326f5d
Content-Type: text/plain; charset="UTF-8"

All,

YP M+ or high bugs which moved to a new milestone in WW23 are listed below:
Priority Bug ID Short Description Changer Owner Was Became
Medium+ 15886 <https://bugzilla.yoctoproject.org/show_bug.cgi?id=15886> qemu
riscv64: fix skipped ptest: unit/test-nested-aio-poll
randy.macleod@windriver.com unassigned@yoctoproject.org 0.0.0 5.3 M3

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>*

--000000000000d2ca480637326f5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>YP M+ or high bugs which moved to a new milestone in WW23 a=
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
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15886" target=3D"_b=
lank">15886</a></td><td style=3D"border-width:1px;border-style:solid;border=
-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hid=
den;padding:0px 3px;vertical-align:bottom">qemu riscv64: fix skipped ptest:=
 unit/test-nested-aio-poll</td><td style=3D"border-width:1px;border-style:s=
olid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);o=
verflow:hidden;padding:0px 3px;vertical-align:bottom"><a href=3D"mailto:ran=
dy.macleod@windriver.com">randy.macleod@windriver.com</a></td><td style=3D"=
border-width:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0=
) rgb(0,0,0) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-alig=
n:bottom"><a href=3D"mailto:unassigned@yoctoproject.org">unassigned@yoctopr=
oject.org</a></td><td style=3D"border-width:1px;border-style:solid;border-c=
olor:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0) rgb(204,204,204);overflow:hidde=
n;padding:0px 3px;vertical-align:bottom">0.0.0</td><td style=3D"border-widt=
h:1px;border-style:solid;border-color:rgb(204,204,204) rgb(0,0,0) rgb(0,0,0=
) rgb(204,204,204);overflow:hidden;padding:0px 3px;vertical-align:bottom">5=
.3 M3</td></tr></tbody></table><p class=3D"MsoNormal" style=3D"background-i=
mage:initial;background-position:initial;background-repeat:initial"><span s=
tyle=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></span></=
span></p>

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

--000000000000d2ca480637326f5d--

