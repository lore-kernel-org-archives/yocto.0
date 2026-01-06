Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 47A93CD0430
	for <webhook@archiver.kernel.org>; Tue,  6 Jan 2026 02:42:35 +0000 (UTC)
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com [209.85.215.176])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.82018.1767667353808882979
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jan 2026 18:42:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JHMXMZ5t;
 spf=pass (domain: gmail.com, ip: 209.85.215.176, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f176.google.com with SMTP id 41be03b00d2f7-c1e4a9033abso403769a12.3
        for <yocto@lists.yoctoproject.org>; Mon, 05 Jan 2026 18:42:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767667353; x=1768272153; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=RbExfWABu+zL4Qlaeu2/Vm+y/WLyg7IMjdqMc1xTm6M=;
        b=JHMXMZ5t5v7e+0ZxsNINJZxJMhyw72G2AZA/g+gY6MQ/mlWM2p/dExEnm080Bf0YFi
         Cuc/BsrIdaz3BV7Mq+baEGubnwtdq+eKM/oktDXL3eWcP3HklxTx0f7bQ14ePu8ATci4
         Ukm7eQ/5Zj+EXLW2w7XcMSLsDXXHbYqrenbo8tZhwfBEQuX/wGsDT8U7xoOE3p+YyIKX
         6Mbo6yHe8Ec+HSa8kURR5VjAjFvO52CjJYgC/7Xq+cBsK84kx3rTxNMtOu5AOkaBZ6Lc
         DNMSJ1O6M+18DhLwVZolNKyEhNjG/J3zwDETugVfSGZmVgsoMFwh5wZZlX6CwqsNyn0Z
         jy4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767667353; x=1768272153;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RbExfWABu+zL4Qlaeu2/Vm+y/WLyg7IMjdqMc1xTm6M=;
        b=mo+MCV0BYRZ7cJEyfaTe1+swgWorRgySiAX6wy8y/WK4LsUGp6oAsr1ziwYSgyoS+h
         CudE2KWU8JauURGl3W+QRzdHhzffJXpu2zpPJSirSgf3x8eQP/a68kDaMVvqpAryywwK
         Qo3lFfc2x0wHb2R7BSlHEj57/XF0gi1fKrZEXJ1D3ojd0cCxZVKWNYGcwPIHlZlnh/ME
         zm0N9tqDS/u8n4qj3VQ71AIGxFSzueovRGUwt2OTrU+DnFX+Z95QKl56PVrRJeNsWbkl
         lNU377nmNc4V8KIrRNlCBYFPQ79zkRXVN9NYkBx6fk8w5Wlnwi/TNxIcxSxEAMDW03AJ
         kd1g==
X-Forwarded-Encrypted: i=1; AJvYcCXhlN+OxfADkaf0YECNbaY2Ac+yPi0r8InOA+rEKn3G7ZuXxAc9ennFL1CoJvay16dHpeE4/Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwaWykxvZUUEthyIY8eSg8bDrBC3MPf8l1AIjJ845SCL7HS61uw
	MkVKzvE4EMqLzZYO4uMqZF1PuLeY4gBnYoLNXSLb+CcEX3mp8YnNaI4y6i4fAymmnR+hFWirSWa
	HWCE6/OR/3+uYr8lQnhILPFmUivem8bQ=
X-Gm-Gg: AY/fxX4+90Ws5CWEvaE4rVkWX0bcHfoBTA1i5jYzGXE1t3OgrejPQ5kWBbgG+Vi0wRY
	m5Gn2KGDh89HUvLXrMCHMB2t2evwEdqMcnaLHu4SHiGrDb1ZYQJ3rvRn/F8c+zz2mLP8No5RrCg
	BriNvqwIvyzwRaYH9YkLxhNQs+sD51EKDckXjNLIUDP2Z7nQ1bR3d/Cu+hoiCuAs1ZBR1bHTjGV
	pwvPMCzEyy7Wkpu/lrUaOfK415PisAR0zii1DyqmkIZuaxZAKFdv4nF7nGBPA9gY2vfwzfwtkz9
	tQgDZuvydhFEo8pwXhiDEBituRVpw4X/p3WKCOwuKrOElikMm9JopfPA055YqM7oH/g/bkzFL3j
	2750V51IEjsp3FUj9drNGgJndRw==
X-Google-Smtp-Source: AGHT+IHQ9HJh+Mve1js8EQxhwccJjSSWzEfXMpaDTJUN+6wx3a9DXDwkr5hInZC4KDj/uliqiajdv+5JOA19UMQ8Xy4=
X-Received: by 2002:a05:7300:2713:b0:2b0:542a:227d with SMTP id
 5a478bee46e88-2b16f861347mr860410eec.2.1767667352791; Mon, 05 Jan 2026
 18:42:32 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 5 Jan 2026 19:42:20 -0700
X-Gm-Features: AQt7F2pYHqGNsKSqVhmwGEPcBxgptCZOF3nCDfDEoskzHykJ6UvAqAT-od1UqeQ
Message-ID: <CAK5yBb9yfKvsXK4279NWJtiHXBB+q7ZoPzwwko78A=zLuiKPyA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a4f1e20647af2002"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Jan 2026 02:42:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66132

--000000000000a4f1e20647af2002
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
team) are therefore going to start reporting out the currently 477
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

--000000000000a4f1e20647af2002
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
herefore going to start reporting out the currently 477 unassigned or newco=
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

--000000000000a4f1e20647af2002--

