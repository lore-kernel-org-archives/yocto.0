Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3FF94CCF9E0
	for <webhook@archiver.kernel.org>; Tue, 28 Oct 2025 05:07:25 +0000 (UTC)
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.1853.1761628044863437429
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Oct 2025 22:07:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Bh1oMdGX;
 spf=pass (domain: gmail.com, ip: 209.85.214.180, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-27eec33b737so79234805ad.1
        for <yocto@lists.yoctoproject.org>; Mon, 27 Oct 2025 22:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761628044; x=1762232844; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ex37eQfpJq6vkq4NNyNkBAHO4NFn6HwO4MFE6YrzLEg=;
        b=Bh1oMdGXFegY2sYTetkmovM0d2A4Ihm7TM116RX5Mc6d4DiomTYFePldvOIotJ7K4T
         +4Y48HHUp5U0KpBsJCnS3ebMvSyB6uNP+CAMnqn6m2v4ho6/Ha9rpRfVBLafsYrKahP5
         EcyT7Bo9LdRdOGCIkaJQNPvxpYB92Iw9f7hybAGXfyRLdhbuboEJ7SP8ekrMImqar+gn
         q/+zahMwm4Mvl5uO67q53jOEQrYjfXbkhFuS7NwpKgrPcMFHHeVT63g9GHgkOLkMabNQ
         93AFDSpeIthwKbm49R0TBX6FMb+zIwmd8lKjCkuqJN/6vwGvvMYEOMUEtOvrKkkU6uua
         7Nug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761628044; x=1762232844;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ex37eQfpJq6vkq4NNyNkBAHO4NFn6HwO4MFE6YrzLEg=;
        b=fyj60soK9b6HJotSK0yb7x84y+XQYULvlCRr8r6LCwhuo+pkVV6L838y6/BcUWBLXP
         FihLK0wQAcRqHuQz53qwGBGfiAbWOzrjHFajIxlcSDyHDN649VrWlQmvecLQ2lvXn5Li
         Jrb3kOg7UnQeJz/aFmvpqu29ECxvaKYS5GKPmVqIjbD0VhvxSYz8ulyXO+sx86P8LojA
         Jn3qOtOApZpQ2K3I3q3FBCcUuEkNZluZ0M2m+e4P7AS6Kzoa1hrVvzca1v6qeQYC1Hdk
         9erJxdD3LTaAd9Sz33M1m7+Fu731nTkCDSKL47X1IgmOU10fMpFm4Jd2DkBIBsKNgqBp
         GVHg==
X-Forwarded-Encrypted: i=1; AJvYcCWXq5mencUgsu5lqO+yA0svcapLG2rTY6TPVjMiJOEtPDaUyx4og336C/bwyg43J0JfNhF8gQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyWCrQ3fUPMrWwlehDcynnx79NVwCADud8f8sSnxqc1rYjRjkqd
	UKuzMnZTqRWmEZwA3SHCNwpYNSQdf14eIET6KpTEAPCbJY6TZCfLZ/0/SCxqzXs1QnNKybxlc+P
	s4ONgCdYTlXxx4cjxqPxu0JoCrEzS9VI=
X-Gm-Gg: ASbGncuBEi5ZO5uRUcW3cWiO/rWKtK3J2xFrExQwPpsPVP6TKLRn4PgbwaOakkLg96o
	fd0p4njDwLmSIixIuF7XK56eIEWSG57vwtlFW4Jk9ci6m6+pWTwIJT90+f0LfoudoCJ7tX9OMZL
	wl0bYgxPhBCFTt0BfrDU2uRYnsffUqPuy+EjMr61FAKqPMg9S1YF5S6FSThRV8mWhCvX0G2e6jH
	1JqawaNVpNB4xBiD0/6Qa+JyLnF8dpHfxv2vZ3QxtWI+J/TPSe5AH4Qi8LZ5jEOFuGFLmDE88DW
	DG1rMxwdaUbvpgzWCQ==
X-Google-Smtp-Source: AGHT+IElNCxfeiA2WZXLnbe+NLTpu6HaJ4BpF4jfA/sg+rHCTUv2v2MGmlDalSYOp4VfQZwzha6UWw2I+lE6/aI8CrI=
X-Received: by 2002:a17:903:186:b0:267:6754:8fd9 with SMTP id
 d9443c01a7336-294cb507c55mr35495615ad.39.1761628043912; Mon, 27 Oct 2025
 22:07:23 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 Oct 2025 22:07:11 -0700
X-Gm-Features: AWmQ_bmFhGl1kbrQ25q8PVhxJB--bO1JRhJHodfXHdhWmI5Ufw7vwM7Wl8Xw_jM
Message-ID: <CAK5yBb-dVXMjyoDFNUWxk7oSuG_Ljk8XeDUbfa_3JCnL20q0_Q@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c8a787064230fd6b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Oct 2025 05:07:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65970

--000000000000c8a787064230fd6b
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
team) are therefore going to start reporting out the currently 467
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

--000000000000c8a787064230fd6b
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
herefore going to start reporting out the currently 467 unassigned or newco=
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

--000000000000c8a787064230fd6b--

