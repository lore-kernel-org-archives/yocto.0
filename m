Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2A336C54ED1
	for <webhook@archiver.kernel.org>; Tue, 27 May 2025 06:51:57 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web11.45487.1748328707521754020
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 May 2025 23:51:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KGT2jN88;
 spf=pass (domain: gmail.com, ip: 209.85.216.50, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id 98e67ed59e1d1-30820167b47so2071054a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 May 2025 23:51:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748328707; x=1748933507; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=AbgOdsCxSMZV3n7RYf1ZEpCxk0LH85UA6QpWxJLUSWU=;
        b=KGT2jN88+fWrIQmBlMmVzRnqEZAxRbSNDIbDKJ7NVmuWfmWwVoUTfO1RJq9XG2izma
         BO8ClFs4cT4WKBlBJssecmclaUdFgphqsabTNLy+4JM3sUX68z8koOrja8n5glflNdCt
         uxQfroTKO+xVq1/8bzqZmy9jZdHeBvQI8jEM5iRGHQFNNJNyYetlQJud7SvzBf5S+5rd
         ObQ+cZnxYEEYWx5z7FvY3Y0ywj7beYmBHYEcO3boRxGNxR5cNqsznTk5WdSj97j2IXb+
         EKkZ501maFG70bcaBhkGCM5nFm4Hpcy7P97TmWLGcJj1YuEsH6yFy804GPO5YvhtxHX9
         RyCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748328707; x=1748933507;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AbgOdsCxSMZV3n7RYf1ZEpCxk0LH85UA6QpWxJLUSWU=;
        b=Wuz9W70U7sq4NSSZLJyG1j3fG2HQXsL2kL4+l5fMC4r5POrHytaKnJUxpwodLEeGMc
         dIK0tuyME1rrK0QekBfpvgw1WsXvnALnPVhZreaDvscTms2xJYQeKI8lehMOf+BUye+l
         LrbfOdUfyITqIM2Jp3+gEoRGNA9HqX9Gsv3IjJEtJhkzxnAQLvUPIZAZK0mr7yqa//Py
         T6w7woZEPTGomVHWQtoZrvk56A/SNb6bc5EF20mTcnyQBjNjMvKLsrV1TCZCvA7zH/E1
         ZTXwYIPjv4U3HgY4nvY/sMDcC+hALVsz7qxyMoENo2QygGcgkdI8zarJXCfnj6wsKY/a
         xN3g==
X-Forwarded-Encrypted: i=1; AJvYcCVp+gT3yvgQz6m4XAbC5tfLN9YE08EjgqzjX9kWgx92jv3Zr+7aB7emmq2gtZthjUSrVEY+/Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzzP+MaiiwWcy/2CRIrBxcJfcyDy90MkqCwgwocdzKMbnyM6/WJ
	qeP/0CjfjGuH+FIBJC3f5m0unw2qGwOUbbnFBA1KWVxYmodI/n6LEdE5WWl8CtxvQntKOvKRer0
	r5g18MiG3RNQuz2HBbrGzcdWQNQaVrDc=
X-Gm-Gg: ASbGncumXKmehS55872RBQGRkkmQrZkQtdyFe13JEp+YFMA+fPgsZMcGLuDzdeHaV0I
	dIxPet0zSIgGGa6W6UeGzRiH8T+TZJJMMMPybRyix4RHUnKGIQspkBPz0Iu4Nvj15rhCPByEnAb
	BjDVNgbSgUS70A+Vf9a2g/l5LP8GkGzkI7bzRwDxOQjjt3wtihaLtUaKLePRx3xdGarnOko8gql
	qyv
X-Google-Smtp-Source: AGHT+IFLkX+FgEew8EYo0ycs1hNRwEj0NnQbj06HNPDh0XNsPsg/nDVPdobG40+lEDlSvOShkBXx7mL5+vf1GW+k44o=
X-Received: by 2002:a17:90b:4c8c:b0:2ff:556f:bf9 with SMTP id
 98e67ed59e1d1-3110aab1d18mr17251182a91.4.1748328706765; Mon, 26 May 2025
 23:51:46 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 26 May 2025 23:51:36 -0700
X-Gm-Features: AX0GCFsH30nveK8hdZyxjiHtmxZKPO7rJNtKum4fp_0SBTRKjRGTa5llt966JjI
Message-ID: <CAK5yBb8gSsqRFvYMUFa_LVifmV-sA7A=+8T9vEkTOnF1p8CFDg@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008479160636187f15"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 May 2025 06:51:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65425

--0000000000008479160636187f15
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
team) are therefore going to start reporting out the currently 4447
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

--0000000000008479160636187f15
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
herefore going to start reporting out the currently 4447 unassigned or newc=
omer bugs.<br><br>We&#39;re hoping people may be able to spare some time no=
w and again to help out with these.  Bugs are split into two types, &quot;t=
rue bugs&quot; where things don&#39;t work as they should and &quot;enhance=
ments&quot; which are features we&#39;d want to add to the system.  There a=
re also roughly four different &quot;priority&quot; classes right now, =E2=
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

--0000000000008479160636187f15--

