Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C63FCCD1AB
	for <webhook@archiver.kernel.org>; Tue, 21 Oct 2025 06:23:42 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.web10.5082.1761027819183538851
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Oct 2025 23:23:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Om95Dmbf;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-b679450ecb6so3843340a12.2
        for <yocto@lists.yoctoproject.org>; Mon, 20 Oct 2025 23:23:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761027818; x=1761632618; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8Ou6zRrUnDSbXF2qf0R7SgiOFapd8bf9ex+lHANdMwI=;
        b=Om95Dmbf4odpXmof1lfMJuXcwRFlBSD+YGGkzDkwiVa+WD4njN/G457zyD8sokXqaG
         +c+fm/6P85cgvAXwMUNFLIZs7UtOZvm5trb86Hz6ID4sdFzc5M1TB7Mw7x+9+6JwrgAW
         Qu+RYN6BHdtxnJcXC6Ur7PzWctuOEyRcbga8OrkgHfoqvIcdX+QUD17FGDi4JtyO8LFy
         MtdlUiAywxj6SJ2j1mpCyjRL9/QRHEtb68dTfdWrT7OSUhePzqyvLVK8hfxxcdW1RZSx
         C480ubpGTxkiH6H4blCkeICiJauZ1OH/PH3/7dUYWjyUeLQiRcl8DrN1hz0STvH6lBhI
         8JZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761027818; x=1761632618;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8Ou6zRrUnDSbXF2qf0R7SgiOFapd8bf9ex+lHANdMwI=;
        b=UjlguJjRg3nRqF+6Pvc7BfclS9GXJVIOOTdRIE+c479TEWLhCN+cNN/H1RoHwwkEN9
         aEgZaU9lxZobF2hJ6jYtaQTZ49HkukIpk6m8M/7+FKFaZ9prOJwyWpHCtJBRjHc77I8s
         QK0B5pquneMOugMUrK5EW+T5lpBccueuUQ2p6tnyxb95eMDPVIKWY2Jde8ixHW8mZQIy
         Ym/XqxKw/epIdUjMxSMlHW/ijMVfFM/WI/obxguvMSoHg4H+Vtcl9mk9OlZ6ZYR0woPv
         7FanUxIk8FaERRRZHgK+eFI8izjdmABMKgMHHhiJ/pSnpqpNDinsCqAqeqRz6vncM9vD
         xRSQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFSDAINEQrAZNXbByrI6uXBjckl2Y57ndBL1s5iA5VMLFwu/ekBvZVczp/JPu7VJvmI5TeEw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzRG++4M2+kNXoC4DrPLrL520IIC0JW7gFVQbmJI9GfhHQVBJGO
	csDTFln07taz30q42n5FZ+DcpGhlfh+wBQRqXo/ErBR6o8FCy1nJrcwUvpCmO46RM2idKQ40DYB
	psvrU8dhqDvawDWsMiav5LrbvCXTfPrw=
X-Gm-Gg: ASbGncso6V6U+wdlewQPvDzAjGtpLCxPXm1rNEtQQTqycQPNdtzaz90c+06VrLY85y/
	ZUT/hBa9+tZHiHiXylxUiySL5VDFidSMcz5W9nGxjFc6xQbEoGIWBI+YX4poHvSln2ndNXiVaC1
	S2uzsbVXaUeIn5N3sAiNHhNhPJO1I49qqyX1PmUV4nyGf0DYwGDqnkVhOe5zONxT9PcfoSJx+7h
	fXa+Cr9PP6Yay4q9TNdu07E+bStz+DUJIjnZqLHwwFo6SGu1KUh7qdlZJsCcbxYwsKqMPQK79j2
	L+2Q3mlNbYjKKeeRxNM=
X-Google-Smtp-Source: AGHT+IGiu5e3L6R4BgouIvtbONblc7Tlu08id6bGz7cG+hwy+vvIpb59clqESlvNbFU3JehFWRdzl/B0mrVBetuPR5A=
X-Received: by 2002:a17:902:f78b:b0:290:ab61:6a4f with SMTP id
 d9443c01a7336-290c9cb367fmr178608675ad.15.1761027818455; Mon, 20 Oct 2025
 23:23:38 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 20 Oct 2025 23:23:26 -0700
X-Gm-Features: AS18NWDKfedXfukFTJu1rOJfauz-spy5lLBb3sEBOLJDyCDV5j54OmhAUVHXG9Q
Message-ID: <CAK5yBb_-8Q3uxOBW4O=ogGDB8nPWLu5pwEoZKyUcDi-3GJm8Xg@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008f070b0641a53d5b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Oct 2025 06:23:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65954

--0000000000008f070b0641a53d5b
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
team) are therefore going to start reporting out the currently 466
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

--0000000000008f070b0641a53d5b
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
herefore going to start reporting out the currently 466 unassigned or newco=
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

--0000000000008f070b0641a53d5b--

