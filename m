Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12BA2CA0EDA
	for <webhook@archiver.kernel.org>; Tue, 12 Aug 2025 06:23:02 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web10.68433.1754979780359148085
 for <yocto@lists.yoctoproject.org>;
 Mon, 11 Aug 2025 23:23:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SxqZcqTp;
 spf=pass (domain: gmail.com, ip: 209.85.216.52, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-31ecd1f0e71so6014199a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 11 Aug 2025 23:23:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754979780; x=1755584580; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+iy2q0KVa4BQX1mfGjTa7sQ1ubO4uEzCpJ4CaKDrkCU=;
        b=SxqZcqTp/jtfZsXZCSUxfQGkTR1H1G3wJ6CkfFbnb1BnoGKLkpxqyLdmohwF5Eim+U
         ZA2gaS9uKSOIl20vYUpH1g9TAT8qt634Y6VLXi/8cLtWD02xTdwF3DRe3EqdYdfD1TVM
         miGSPPDcso49reI5RIohCklBCVtSf1m+6+L9Z5mW1WpAhNywkSmfQ6mOwBEikuDTfxnu
         TZnTmNJ5OfyPPG/hWT8KBp7cE3FK5fnj+tcbP7jfpvcKawAi2adCyZ28qUGBMXKxgUPi
         CB6vkt70qeUElZbFsL3vh43QVE/Ge3NpDQZG3x5Uv7x+JahADM0ALNSAmQfPJSQXxTXk
         LZlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754979780; x=1755584580;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+iy2q0KVa4BQX1mfGjTa7sQ1ubO4uEzCpJ4CaKDrkCU=;
        b=VV6N6cvIcB2wrEjzpnulAr9WOD8uIf5N4EqRN/kKko8dhddmLrkpW1yapoxBzppBir
         jXbdE3b5Iu7bF5eRGucQD21rsE0Dkn4NmpyWenB8N7l26lvrhioa7UgGK945znK/u++W
         Y5nv56zfTrFPItIYU4zR/upIcVbCZdIw/izERni+4gOjz5/RQjQKBT6hS1GDOrX5fYqz
         OCV2YC3srwG6f7zgJTp0feZCdOhq7ee6PRejqySr88UIiFRga9Hcpv0LXP4c81kkBDbc
         oRy2V4IouNoqhWwawbOSiODHwGIaY/ZngfDkJ9jh1a02CZ2u+c4LDzNG2gtmdS6R+OJJ
         8NNA==
X-Forwarded-Encrypted: i=1; AJvYcCU/4ENoK2VjOBIh9iOcfCHHbeUg3V08t5302lNyWes2EKNIagKfic7F7kEnmQYAmVztur4hQg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxzX/yS4mZ2y/3tLBzeRs5D1XOvA97TLQ1AwWYSKC43AcVvLA37
	idPieq71uKZWaP9z8EHvw4doMKf5bM0dE65RHlWB8uaDnJqGcVCAX6ZRr9QWOX2v8WYR8Kr4ZGj
	W6cfdRLCXCCtH7MyOaLdg3xsGPXg+jmc=
X-Gm-Gg: ASbGncvDMNkiPR6BiZnKKe8D8hgVCniAzZxveI24joydFwSkzo2tVPWz79DR1BWLq1O
	PSSVbIuRdMSllTeQL1wClsUGDrY5cBlDvOYIZAIwHFmqn1fkgNPT9Z48OmO61vvQxZ79SGIxY6p
	9ZD5r/uNqn+CCyjWOTkKE176CgBj3A+ltZ22zGApcHQs7uniKAWZBDxIqn14XuSD6dwbEREc+6K
	lKQER4=
X-Google-Smtp-Source: AGHT+IEayGc19TfUH8Tll1PhsaqB7tTPNLjHmnthfOjuxBw5p/MP3CPxOtq4iBv4Dwt/7NZ7roFE7qACHJRcHgRjLFY=
X-Received: by 2002:a17:90b:1f91:b0:31e:d2a5:c08d with SMTP id
 98e67ed59e1d1-32183e55963mr25880736a91.33.1754979779584; Mon, 11 Aug 2025
 23:22:59 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 11 Aug 2025 23:22:45 -0700
X-Gm-Features: Ac12FXyal511xUje1aQUoyg7KEvSqdtUV6T2TYttWVZxyNPbJH0BkN0pK1d_pCw
Message-ID: <CAK5yBb_FpNzCFtxdtU+Q4wyA_joSFwRJ92ZN-UD8pSS31UuEcA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000059a886063c251245"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Aug 2025 06:23:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65749

--00000000000059a886063c251245
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
team) are therefore going to start reporting out the currently 465
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

--00000000000059a886063c251245
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
herefore going to start reporting out the currently 465 unassigned or newco=
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

--00000000000059a886063c251245--

