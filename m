Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4224EC48260
	for <webhook@archiver.kernel.org>; Tue, 13 Feb 2024 04:51:12 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web11.4779.1707799869630593671
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 20:51:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=TCxdtKkQ;
 spf=pass (domain: gmail.com, ip: 209.85.218.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a2f22bfb4e6so530790066b.0
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 20:51:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707799868; x=1708404668; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=lf+TrrorM1hwsAEgMqc93p48P4wqTDyMDrEyyjcJKLk=;
        b=TCxdtKkQOLnJX6pahwiSJYAAvD9XNmCc6HdSD1GsU9xPfJohIOBWtV3N2PGboVaT/p
         lywCRSf26crF22Sn2SHaEoKAR6HultmbxV+2oFJLbeF+d9h9XWHLX9PAxdYVKaN1uDqz
         aO7HbVHTD+UWuOwEHBIjlaJ/pTQQt/U/CaK0z1G+AoDsxgDixIbXYJSNZ/5wm4ITREX2
         y2+87W3okA5jlZXqEJbW2Gka+ibipD+KLQPKm+TQfwVxkwLualy32EEUcCgMIsdu8Iaq
         KikQB9jR3nSR2+cyPzsVB8lH2Z8YgEMDsdQTQ5bN+9/XgxWRNyM+jtXBPlqPPOMLI33b
         1Rgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707799868; x=1708404668;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lf+TrrorM1hwsAEgMqc93p48P4wqTDyMDrEyyjcJKLk=;
        b=aG8Wne792kBxgg+/AyqKRHJJXPg4Jlr/p9y7nyZuKna2Iqw7qxwKinbsYnRRmrXXxP
         1viibTjI2PgF+76G80d0I/J7AZWV38zw0Jda9h5hA7YOlDsiiZ7x+y5xpzBN07kD1irw
         XveQaRqN00p9RkRMZ/N8DFkQkE+2yuJ/z/cUnj5fTQFnLGfWLeOmygZ148hgyMdWWfa5
         J16T313XhWs0aApzLRNIFxhO7Wuf2yaPUT++81T+Tq1blWoMK28Z+J7SEGnw5SRBuruk
         uyZNwChzLeAasAd47kQv7yTstoZdJC7z6DWDPxHjQ4QoSWx3/PvrslzjhPHcu3iI+k8U
         5voA==
X-Forwarded-Encrypted: i=1; AJvYcCUgG1J6pEnif/wFaIze2kVC3BW+qCUZj3Ad9dxSqzyKUGlQ7KA1pN4fA8dmjLDZlCjVZkW66E8BwJElGNgOwhs5VZBQpZUpwgFBzdmk
X-Gm-Message-State: AOJu0YxcUGQCOPwl9DRoQMGzEWbSzPvavh7vqhSOzEYjRcKt7bEnlGV9
	I8S9eu3A7TZUvY9TLxhE/gbwZZH+pAScWW7JWcfR9sezruQlXrHtObH6Yj4bKuXEDmJtor8dG+S
	x1DZWcAdKpf/IFkykWBaBIhbJwA4=
X-Google-Smtp-Source: AGHT+IGc9lo0V6mm2VXCtmC98VVYAzGrfXvVs3e2tUrpB2+HNzexCL4VmKOt/uewbOXtLHw9K854E5SNP0rbDUN7mPo=
X-Received: by 2002:a17:906:b245:b0:a3c:f586:9e1f with SMTP id
 ce5-20020a170906b24500b00a3cf5869e1fmr678909ejb.31.1707799867701; Mon, 12 Feb
 2024 20:51:07 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 12 Feb 2024 21:50:57 -0700
Message-ID: <CAK5yBb8Bv-9K800JJaf0-2LAhDse=7K=Q16qbUDrrUdtGd6zvw@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000763c3306113c240a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 Feb 2024 04:51:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62470

--000000000000763c3306113c240a
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
team) are therefore going to start reporting out the currently 416
unassigned or newcomer bugs.

We're hoping people may be able to spare some time now and again to help
out with these. Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system. There are also roughly four different "priority"
classes right now, =E2=80=9C5.0=E2=80=9D, =E2=80=9C5.1=E2=80=9D, "5.99" and=
 "Future", the more
pressing/urgent issues being in "5.0" and then =E2=80=9C5.1=E2=80=9D.

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

--000000000000763c3306113c240a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The triage team is starting to try and collect up and classify b=
ugs which a newcomer to the project would be able to work on in a way which=
 means people can find them. They&#39;re being listed on the triage page un=
der the appropriate heading: <a href=3D"https://wiki.yoctoproject.org/wiki/=
Bug_Triage#Newcomer_Bugs">https://wiki.yoctoproject.org/wiki/Bug_Triage#New=
comer_Bugs</a>  Also please review: <a href=3D"https://www.openembedded.org=
/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/w=
iki/How_to_submit_a_patch_to_OpenEmbedded</a> and how to create a bugzilla =
account at: <a href=3D"https://bugzilla.yoctoproject.org/createaccount.cgi"=
>https://bugzilla.yoctoproject.org/createaccount.cgi</a><br><br>The idea is=
 these bugs should be straight forward for a person to help work on who doe=
sn&#39;t have deep experience with the project.  If anyone can help, please=
 take ownership of the bug and send patches!  If anyone needs help/advice t=
here are people on irc who can likely do so, or some of the more experience=
d contributors will likely be happy to help too.<br><br>Also, the triage te=
am meets weekly and does its best to handle the bugs reported into the Bugz=
illa. The number of people attending that meeting has fallen, as have the n=
umber of people available to help fix bugs. One of the things we hear users=
 report is they don&#39;t know how to help. We (the triage team) are theref=
ore going to start reporting out the currently 416 unassigned or newcomer b=
ugs.<br><br>We&#39;re hoping people may be able to spare some time now and =
again to help out with these.  Bugs are split into two types, &quot;true bu=
gs&quot; where things don&#39;t work as they should and &quot;enhancements&=
quot; which are features we&#39;d want to add to the system.  There are als=
o roughly four different &quot;priority&quot; classes right now, =E2=80=9C5=
.0=E2=80=9D, =E2=80=9C5.1=E2=80=9D, &quot;5.99&quot; and &quot;Future&quot;=
, the more pressing/urgent issues being in &quot;5.0&quot; and then =E2=80=
=9C5.1=E2=80=9D.<br><br>Please review this link and if a bug is something y=
ou would be able to help with either take ownership of the bug, or send me =
(<a href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>) an=
 e-mail with the bug number you would like and I will assign it to you (ple=
ase make sure you have a Bugzilla account).  The list is at: <a href=3D"htt=
ps://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcomer_B=
ugs">https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Ne=
wcomer_Bugs</a></span><br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"=
MsoNormal" style=3D"background-image:initial;background-position:initial;ba=
ckground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sa=
ns-serif">Thanks,<span></span></span></p>

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

--000000000000763c3306113c240a--

