Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF19BE77188
	for <webhook@archiver.kernel.org>; Tue, 14 Jan 2025 08:14:22 +0000 (UTC)
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web10.39921.1736842455591583464
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Jan 2025 00:14:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XrQhHOxM;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-2ee786b3277so6587858a91.1
        for <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 00:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736842455; x=1737447255; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tmZiUMoOME79s8uEEzFBClNDZ/+tE+mJ6hh4hv6/OAg=;
        b=XrQhHOxMbk2B/80wyMPcsxKEOuSLFZCy0mQjI0sXePMu7cg5z6/r2G5Rh6SYa7TZiz
         1EE5upmwqmPjFQmadRFSb/5FJq3OFRTz6kJYDtMBXqeR6qVHmbK8cPhloYNDFdIpyhHZ
         D8sDEtH1c+MOGYfStl1cD4mgRbIy9UM31HXoRIldeG8Zr4j2REu/JGMFIrU50l34KMFx
         Ch1igEkmtGrBO5+U4Qyn5G1F3UBynetOaxtFzH8quGSBAqINvlBfrTvD5JuwZSNw0dQy
         s80UbGdJL4NGJjl2MOybyjokPGlbwxQKnq7fUGapRyAN36ETT11OKYaReTcmNzga3R27
         JlDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736842455; x=1737447255;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tmZiUMoOME79s8uEEzFBClNDZ/+tE+mJ6hh4hv6/OAg=;
        b=oldjK3qh6fQkmKTn/Ap+vQLr97/clpX1w8Q5CQjxD08Wlv50GuWqqnydt9gm1REitR
         SxaIidn02Dh4Si84lkzXLHFsQp8VXc7xdUCz1Jobti7XWjy2gwAcjzf2x8RrCNOobV+y
         y0HfEn5SQd1TMBwcKb6fRfq/aKRwi1O73Gz72sfU5bls0ugG/37el7LD+QnlNV3qZFe+
         98v7443+5tr4jLlUe90yq6BzDCpAVft0G2hRMbkleqJAy6F9GpxGUe0U1C4wDOUwko8X
         YDZXBUSIXN1M82EpJoC+Y//lhrlUMLO7XSqYiQ7tY0rZZOUyUUaXhKLqQxrqhPN7ujJC
         VJkw==
X-Forwarded-Encrypted: i=1; AJvYcCXp2SwjWClsVFkiM1hbixorflQ1SGkM8TFFO3pVI5DoceEn+phBWvPWvldxK22nmKaDt0zaQg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw/VxRLMq4ahFkFaDzqqAtYIM/aNNFz6eCJCZcVYEgn3bFfrab2
	KYiNjVJ3RFdYSl1f2b5hQWe/5LZaFb47me7s86ffjMGP/TOk3BR94X8crHK0joLoGFssbg8uBjb
	itS3E+sb5QX+Ix0KALzsCExasd9Q=
X-Gm-Gg: ASbGncuPL3sr9PPjW9Ms0snsq+sfYwHszrqlBfh6ymRwwiftVeoOYf0QWlHQY+E7fGs
	TpiWMPJ8znqP2ar9xiExdYnPgvO9RwFySIn9Z351xtlY6IjTWrO7gNYuyEnRTXyk3HFKEurju
X-Google-Smtp-Source: AGHT+IHj4D6k2EpW7R37mspZMCacZW3cNHO0Lj04iITUB4FeWEnzo19JTJH96SohrKuhXPdf69tGyqw2V2XKrdfa/ew=
X-Received: by 2002:a17:90b:2f0e:b0:2ea:59e3:2d2e with SMTP id
 98e67ed59e1d1-2f548eb9e0emr35789440a91.10.1736842453429; Tue, 14 Jan 2025
 00:14:13 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 14 Jan 2025 01:14:03 -0700
X-Gm-Features: AbW1kvbP2PSZObG39lh6Pjjn5xebuojg1ghWw3MyU74vx7hsOJs3Tbwxnh-_AyU
Message-ID: <CAK5yBb9HWwLew79_XBinWOYbVLyJ1kYMadBPBgjifGDjL3G4QA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000077b492062ba625c6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Jan 2025 08:14:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64541

--00000000000077b492062ba625c6
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
team) are therefore going to start reporting out the currently 414
unassigned or newcomer bugs.

We're hoping people may be able to spare some time now and again to help
out with these. Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system. There are also roughly four different "priority"
classes right now, =E2=80=9C5.2=E2=80=9D, =E2=80=9C5.3", "5.99" and "Future=
", the more
pressing/urgent issues being in "5.2" and then =E2=80=9C5.3=E2=80=9D.

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

--00000000000077b492062ba625c6
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
herefore going to start reporting out the currently 414 unassigned or newco=
mer bugs.<br><br>We&#39;re hoping people may be able to spare some time now=
 and again to help out with these.  Bugs are split into two types, &quot;tr=
ue bugs&quot; where things don&#39;t work as they should and &quot;enhancem=
ents&quot; which are features we&#39;d want to add to the system.  There ar=
e also roughly four different &quot;priority&quot; classes right now, =E2=
=80=9C5.2=E2=80=9D, =E2=80=9C5.3&quot;, &quot;5.99&quot; and &quot;Future&q=
uot;, the more pressing/urgent issues being in &quot;5.2&quot; and then =E2=
=80=9C5.3=E2=80=9D.<br><br>Please review this link and if a bug is somethin=
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

--00000000000077b492062ba625c6--

