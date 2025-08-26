Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A3E9CA0FE7
	for <webhook@archiver.kernel.org>; Tue, 26 Aug 2025 13:25:06 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web11.64557.1756214704605147907
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Aug 2025 06:25:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=P7eYhcyd;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b4c21867cceso1647245a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 06:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756214704; x=1756819504; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=caGj7J29HIii6wfta6RPevejPm/D3RZKIAuJNIrELh4=;
        b=P7eYhcydAWO7AtWOw0xlkue0qAodPLqC+zWWqpudbZirX+eStMXMCiE0GMAXugRBGu
         pxTcF7MB/O9udUSINm7uP1gXQKrMFuZZyT+iG8rvOKbdsrJ++1o0wN3Cin//rchnUk78
         3X0oPxz3cktgxPGd3EVoIoXotYd4Lbt623m7WsYr5ItAeHxVxqWG3vMbAT/Tgjtp6UZV
         /rvb4rmU1VqwBTC/r5Enc6Qbd+cwyIijeXZ/kmg6/QFoq/I1nLH85/MDUllO4at07Ehm
         RA1hZcgcG1PAycuYUpTsJytS/w4YCYQD5oB3aky+M0FIkMG1YjxtXyEAGYxic1knXt6V
         NChw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756214704; x=1756819504;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=caGj7J29HIii6wfta6RPevejPm/D3RZKIAuJNIrELh4=;
        b=RPw4sdZzmW0o2K+w/xfQl6lZWiCv42ej37Y+yMwSmI893H10v0Kuu8XTaejmJLXd6c
         mgqNjCHRTss9L0hJS9qBmwrNliffrS3HBlab2/u9AWfujsf912mm/mvd6c438fdlBjmn
         Efdro2JMeJwdSjOlynsl64jh05bB/v7SeI4tKPEJTUYBzTA3hekY5wlEiIitUCcB2ifF
         jdoe1NTKAlKi9P1y2AKmLfMmNgSt4LfjUBn05tVZ7DbckWYk9k56VjslpfykBPZUmIiX
         M059XThi5vYU99HlbU612qbhGPGfUrhdz5WCto/HxQCCPKYHYa4Y5fQIxZbctN7UZGOo
         Nwtw==
X-Forwarded-Encrypted: i=1; AJvYcCW9Ok9JwIYhIJastrWdPvbVz8e2vOijjLQci9mZ1jp92jfWLpq3I19ZETwMN1+ocOUU2hi0wA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy4woov1uv9ghHMJ7tV5kmP7RyGFFNpFB/lDwuq5BwvQF40UQDO
	KWJHNYeAg1XZ2M0O/XfbiTqvlFBdcMNJU8iH44CC/iJ8VRxZZ453qJjcpuXeVCkUaD/Mtnxpf2H
	i951pzRzqfoO4dZ909o+zn/R1uCNTxdo=
X-Gm-Gg: ASbGncuy7qSb8PT5xKZzwebAHxb6/2ihXv8aeLE83v2b76ni4r7xiY01d8jJWXhAS6N
	WGjwy07hZFtVIG7j7GPa+SXbQ4P03UamWXBCBzXRgzOfNxJEm54py79uDxtqmuONfU3cKIDTGli
	tsfawxgyVez9guRf1E+am4Vv30m+JpNrkNRBRvnjnxjgtPaIG4Ru7tkshrAjSFXhu3VGPhfkRjN
	+xqsmqGiXRHRgxMC57tt2qR2F11+Se9suJIEaD3bSWzuQd4YwiUQkayR2CxwksgSm5wX8fTiEmw
	hORH5rMu/nNz6qdjuws1ES/U3NVWKUPPC97dLw==
X-Google-Smtp-Source: AGHT+IHs4z4Ce6nhnwanbN+b1wgKuDuRfUyuX51bJkVEjNjW7TZkj9AXEtIU0hoogVNJ8B80CqXwh/+OBwWJm1sglzY=
X-Received: by 2002:a17:902:d486:b0:246:b46b:1b09 with SMTP id
 d9443c01a7336-246b46b2296mr118152405ad.30.1756214703674; Tue, 26 Aug 2025
 06:25:03 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 26 Aug 2025 06:24:51 -0700
X-Gm-Features: Ac12FXwFAnIAZZ0ggQVOdOA0i_EDhkdOD_1tOVab8BxvLvZpVgRzVuLop2Wyygc
Message-ID: <CAK5yBb-tGmC5-Zm_n4fA_aE9K-f-PD85wyNa2ncUD0dSW+r_dg@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008fdc82063d44993e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Aug 2025 13:25:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65797

--0000000000008fdc82063d44993e
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

--0000000000008fdc82063d44993e
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

--0000000000008fdc82063d44993e--

