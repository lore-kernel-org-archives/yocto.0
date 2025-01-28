Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B3BC02190
	for <webhook@archiver.kernel.org>; Tue, 28 Jan 2025 04:38:55 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.11096.1738039129885690546
 for <yocto@lists.yoctoproject.org>;
 Mon, 27 Jan 2025 20:38:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ejS+mTIG;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2f441791e40so6844683a91.3
        for <yocto@lists.yoctoproject.org>; Mon, 27 Jan 2025 20:38:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738039129; x=1738643929; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=cIdxniZcNP5iAiQipnrFL4meu+FUEInK1WV42TRAzQI=;
        b=ejS+mTIGa5piaEL3M6VA9q+b/ABp/cBwEZFZ0fYmM9DNgQ1NbPKOBDx0aqJDtu0IUB
         Yv+Ys7WcMdt0P/cuSMZMVOI9W5SgGShkXu0EdtltZVSQePlvcQEfXa27NMy1Kk/U6Rlh
         VLT2IDDY8Tn5/YcK5fVliS3H37BOGwgL3prgZo5PnHS5gUWcNAiAYUaNEN+vDXnc02WF
         dM4DMZ/u2k/UqQK64IMv7MgueDjfJBbuN/exgjtdZyoFoDHTyYv1mmRzh4baIcfJUJxL
         Pa4WBR05BuT3oxjRmKqwF5LVFW+XSOub7nWXTlMSS4ykasgfNBkeMXMhC71vCQGaRrB8
         tVsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738039129; x=1738643929;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cIdxniZcNP5iAiQipnrFL4meu+FUEInK1WV42TRAzQI=;
        b=hX4MYH9euJCo9U6BWjBF7aIOKHaGFLcpp9Whasf7hazNF54eBpmsc3xZLUaYHb62NS
         H47wOEePrQHGviR4Jo5JlpS2K5aiejMf4Iosr52zTttjykyVI6iQInUvJSayHW5c78QW
         GYv5pvQB3GTkyVeN3rXw3yffhpmG8LFd/EOOeLyHPl+BftorFsao1wQoa2ae//N7jVmH
         NgrHXZSov1TD1uPKDgDKHJqeClqdQotfACnwm+9ANEXiX5MscpcttswAQ7I/8CQI6JxC
         t/qkzyzwsJPDHhkEz/CAlK0KzrzD7m9FlXM99PG9Js4dLWrcbZHgYJBAzGxPczfkQJzi
         Xoyg==
X-Forwarded-Encrypted: i=1; AJvYcCWFM6NCqcn0MPELsHWF64JB+aB6zG51qniwzg2CnLey4U3sfV4Pg67VGEeOEecsKtrmHsqI5g==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxK10FmhXmtS7meaU4pkMorA81T/d3I9cxi0MX+Djt1Cxf882+3
	8RIdC2kQ18Ntc61a6eP/xdDgV5pj84J0vvSmVnJ11QyK0tqFJJBcXQjNb17WJ4qYLQ29cBSynS4
	vO8ovCuDEDLe0p9K6ZfDMSIoTsCg=
X-Gm-Gg: ASbGnct47oEXfajiJuTTTxW05sG/tVQNQd31ygPx1q+PSlkgJCQ0fAiDnP94TkJF5z7
	3eX0H2SuCBFOet6YK6EIxU7ebdNj38L226SmUC8RqQZmuM/w1ZVqQHdkHD9/x3BwoR0QZdwL86r
	TKgT4SHKmf81hFLGjD2Zzg1usaOpFIjpI=
X-Google-Smtp-Source: AGHT+IHC73t2VbUSDFDWwCntWvlfdaJLmP4VmRqGXqTknEazNrO1kR6ZlA8VJ2O93b8VBFUG7mIGuS+5ShBSN+UzMow=
X-Received: by 2002:a17:90b:1f91:b0:2f1:4715:5987 with SMTP id
 98e67ed59e1d1-2f782c92749mr64286208a91.9.1738039128349; Mon, 27 Jan 2025
 20:38:48 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 27 Jan 2025 21:38:38 -0700
X-Gm-Features: AWEUYZnzJ7z0PqxqReLauHL8VLtiVtOSJtOzSfceDAcb9OZhZZgbxge-IThJXFw
Message-ID: <CAK5yBb8oneL4CG2-W3tHDpoZ_NTgm_LkKceZKSda2tYrMoJuHA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d9e34e062cbcc422"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Jan 2025 04:38:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64651

--000000000000d9e34e062cbcc422
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
team) are therefore going to start reporting out the currently 415
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

--000000000000d9e34e062cbcc422
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
herefore going to start reporting out the currently 415 unassigned or newco=
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

--000000000000d9e34e062cbcc422--

