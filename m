Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B7C3C5AD49
	for <webhook@archiver.kernel.org>; Tue,  3 Jun 2025 04:43:15 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.3935.1748925790189327536
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Jun 2025 21:43:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=PCyJRolB;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b0b2d0b2843so3433463a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 02 Jun 2025 21:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748925789; x=1749530589; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iYFinMY/FvZpgy8ihesyxWFRLExzBNCpQuPq3wnpiG0=;
        b=PCyJRolB5Zzx4VztenWX+eCbc6Y8zXUFuTAWObf1LikyOcaSGYBYUQuLRYUXHB2PMV
         HfiD/ad7CRXUknJpPMH9LEMsUAU+pcxbcRNXVfLAAuWR+52GizfSQdx6eSA1aXGGjti7
         eFgDinMnFQf33YXQAAMcP31YnBjujYoGsUcH60bTeZV0O7nNxaWponF6rwkaLal/rzCS
         z1yKE3uRtrR0A+9mTkAhTXwipYhaGjn284/UCeHNjcMASl0ZRWVGZgpyoDlnCifWxtxH
         6UmFmlpB5U7R8A3Z6sVMrd7hsnSMj/yq9qBlRaCjyvW0+1v3Dd+29NS89rMSJRTM097K
         Ln7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748925789; x=1749530589;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iYFinMY/FvZpgy8ihesyxWFRLExzBNCpQuPq3wnpiG0=;
        b=K2y9INUqvr2RRlSil0mz3oiBzWH10HD5q0MfgP/3T35nrDdfK3oM7EI85HaGipdeO7
         iQ/tggT8VjawvDvnpW5s3Pmwr8UlzHH2lzdzQLuSeeonc9/wuYj4HJwn7bBZiiJkYTIv
         +tlVqG0FuFbxFWDF7p5dqKr8vzXGhR2T52VlPkU+si1amQbwumZEoO2zzHpdjNhU4Jj8
         dK4AlxU71ne/3pPhVcR/jSd3NzV+XRB2OSKJPfARA+I4LUiC90wh6ycUgOypB9GSjZAt
         Uc9goJW7i7w9kYJuPQPS9xr2rWmcqUkjp6wEGKRefVDxqD+9ZqXXbS+GhiQi0+44CszA
         Lv9Q==
X-Forwarded-Encrypted: i=1; AJvYcCXyVLRJGHWTAZynpe/8cwojAAFExzK+LSehQY+RUEDPOFTOD/C7HhHJSq01tcpK9YMCEFQfVQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzIMM/b0Wg7ywIsyeBV3GJD9qpIcgae4BAbPycCy+8LA/1rQjDS
	BPDttGBG3b9LUlnIaIW/NNynW7YzLb652Kxlfb5fvnPSj9JSCQahMU4iN2dxpbSlZ57d0zlulWM
	ZTeggyfzRgn9JfRuDru865+Mqn3qLY6M=
X-Gm-Gg: ASbGncuwb3Cr983OKbcOBGyEDp/z8imPEGfR8opWFjNnkTlYhSwWpwxCa9ahShwwHIE
	8f333ivyMn3//RdyIfjjVtwHcsFMCiKmrSVwt0Sp70rS7GAXFM6t9yHQJeAZSNcTwt/7S0MjawY
	s+SYlOuiBkLfY+LPJunk5VSCEd4CPFpaKUFLAB3J1q7di1kIb/rgCvMCtzXFrpuP5+PlU=
X-Google-Smtp-Source: AGHT+IFt9XA0bx/65dF5ihdD/HwXOSnq9Vard3DP9r/hv1pRauzJgDJ/EmpUQYfsRMelzDLsQeh/r9J4W3PQEVfaggc=
X-Received: by 2002:a17:90b:180b:b0:2f6:dcc9:38e0 with SMTP id
 98e67ed59e1d1-3123efab981mr28690263a91.0.1748925789355; Mon, 02 Jun 2025
 21:43:09 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Jun 2025 21:42:58 -0700
X-Gm-Features: AX0GCFu-Trh1tnXCX88xMpXCu3QZVLYP6hNXaNYHnYK0B4ShsKeHi66W5jFbnak
Message-ID: <CAK5yBb-9LaadJiEz2oF9fAXL2-4Mi7B9cn1gKJokCkKFkgDkYA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000069c2510636a3847c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jun 2025 04:43:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65450

--00000000000069c2510636a3847c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,

The triage team is starting to try and collect up and classify bugs which a
newcomer to the project would be able to work on in a way which means
people can find them. They're being listed on the triage page under the
appropriate heading:
https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs Also please
review:
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded and
how to create a bugzilla account at:
https://bugzilla.yoctoproject.org/createaccount.cgi

The idea is these bugs should be straight forward for a person to help work
on who doesn't have deep experience with the project. If anyone can help,
please take ownership of the bug and send patches! If anyone needs
help/advice there are people on irc who can likely do so, or some of the
more experienced contributors will likely be happy to help too.

Also, the triage team meets weekly and does its best to handle the bugs
reported into the Bugzilla. The number of people attending that meeting has
fallen, as have the number of people available to help fix bugs. One of the
things we hear users report is they don't know how to help. We (the triage
team) are therefore going to start reporting out the currently 450
unassigned or newcomer bugs.

We're hoping people may be able to spare some time now and again to help
out with these. Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system. There are also roughly four different "priority"
classes right now, =E2=80=9C5.3=E2=80=9D, =E2=80=9C6.0", "5.99" and "Future=
", the more
pressing/urgent issues being in "5.3" and then =E2=80=9C6.0=E2=80=9D.

Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me (sjolley.yp.pm@gmail.com)
an e-mail with the bug number you would like and I will assign it to you
(please make sure you have a Bugzilla account). The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcome=
r_Bugs

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>=
*

--00000000000069c2510636a3847c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span style=3D"font-size:11pt;font-family:Calibri,Ari=
al">All,<br><br>The triage team is starting to try and collect up and class=
ify bugs which a newcomer to the project would be able to work on in a way =
which means people can find them. They&#39;re being listed on the triage pa=
ge under the appropriate heading: <a href=3D"https://wiki.yoctoproject.org/=
wiki/Bug_Triage#Newcomer_Bugs">https://wiki.yoctoproject.org/wiki/Bug_Triag=
e#Newcomer_Bugs</a>  Also please review: <a href=3D"https://www.openembedde=
d.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.=
org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a> and how to create a bugz=
illa account at: <a href=3D"https://bugzilla.yoctoproject.org/createaccount=
.cgi">https://bugzilla.yoctoproject.org/createaccount.cgi</a><br><br>The id=
ea is these bugs should be straight forward for a person to help work on wh=
o doesn&#39;t have deep experience with the project.  If anyone can help, p=
lease take ownership of the bug and send patches!  If anyone needs help/adv=
ice there are people on irc who can likely do so, or some of the more exper=
ienced contributors will likely be happy to help too.<br><br>Also, the tria=
ge team meets weekly and does its best to handle the bugs reported into the=
 Bugzilla. The number of people attending that meeting has fallen, as have =
the number of people available to help fix bugs. One of the things we hear =
users report is they don&#39;t know how to help. We (the triage team) are t=
herefore going to start reporting out the currently 450 unassigned or newco=
mer bugs.<br><br>We&#39;re hoping people may be able to spare some time now=
 and again to help out with these.  Bugs are split into two types, &quot;tr=
ue bugs&quot; where things don&#39;t work as they should and &quot;enhancem=
ents&quot; which are features we&#39;d want to add to the system.  There ar=
e also roughly four different &quot;priority&quot; classes right now, =E2=
=80=9C5.3=E2=80=9D, =E2=80=9C6.0&quot;, &quot;5.99&quot; and &quot;Future&q=
uot;, the more pressing/urgent issues being in &quot;5.3&quot; and then =E2=
=80=9C6.0=E2=80=9D.<br><br>Please review this link and if a bug is somethin=
g you would be able to help with either take ownership of the bug, or send =
me (<a href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>)=
 an e-mail with the bug number you would like and I will assign it to you (=
please make sure you have a Bugzilla account).  The list is at: <a href=3D"=
https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcome=
r_Bugs">https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or=
_Newcomer_Bugs</a></span></div><div dir=3D"ltr" class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p clas=
s=3D"MsoNormal" style=3D"background-image:initial;background-position:initi=
al;background-repeat:initial"><span style=3D"font-size:12pt;font-family:Ari=
al,sans-serif">Thanks,<span></span></span></p>

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

--00000000000069c2510636a3847c--

