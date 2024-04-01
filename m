Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C58D9CD128A
	for <webhook@archiver.kernel.org>; Mon,  1 Apr 2024 21:57:06 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.50715.1712008623351810315
 for <yocto@lists.yoctoproject.org>;
 Mon, 01 Apr 2024 14:57:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mWIse4xP;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a4e65dec03eso184545166b.0
        for <yocto@lists.yoctoproject.org>; Mon, 01 Apr 2024 14:57:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712008622; x=1712613422; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=VOi+AKCw0mOprqE6A4w+TpxmFO+nq2QcSulRkR49+Ds=;
        b=mWIse4xP4zL/qki0DTBXR/F3mxdBl2ESAwJEFF+XZ/mrvavDBtGfXEE0iMMEVf2mYb
         t3wMQSEOorfjRi+uEuaAg6+kjO1zaPJSvHGpSZn1Jr7QHuGAvk4hfPGn43mib8kL3Dob
         I5AvWjETBJovz+xEDKiuLVMfJqhZMjX3TsWCxV/xRnB2YsH23aNZzKillF0HPaQlzMuI
         HfA+iUVJXpfB0JYufer+mca+9gbW6MUn4utqTviSCHAnfrP+gIj6TZzwrzTzZc3iy3eG
         uXMgDeFT+LI7lEKBlMb69HdG0q0d9E8NRzvoteo6CHMPcOvKCtlbg+beoOHO+ST54ENu
         m8lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712008622; x=1712613422;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VOi+AKCw0mOprqE6A4w+TpxmFO+nq2QcSulRkR49+Ds=;
        b=VWbaXKKJTZXi+kE8fwqWHCnwAEnTwU8GE27JhyJ6+4e48RfbbrfJFBLdHPwabuTmfh
         doaWd99148wxyNPsDqZDSsLwDfaJ8AW0DBoQNvkC5UbfVgkxyXu3ANwMPA/HmwuwryBr
         YcpwDt+B+4e3BczVEpWtikXb+tUrpJR0DzySxiu9Q+sHaSfjlz1bsM1YBzKDsMssZqKG
         bJQ0queMXIQqj5+GPKvKnKcCYxYlJWxGWbUCWYB2rD/rJ9SX2vGEZV97IUrGMY9G550P
         XQ887pMcdAJydj6AuEAb5Pz3CUohiLnZe9LYzgmyNNo6vA2gxjOnAcdIBfZejmRScJpw
         9SbA==
X-Forwarded-Encrypted: i=1; AJvYcCUJAgA6euoM1dDBk4y3YjQZ3O8o4zS0iXg96Y195QqqY9lN8dw5PB3TQOQqG+ZM1+0oyO8nGo7MzCldRq1pOD9qyoZhpfVnuhb0lmFi
X-Gm-Message-State: AOJu0Yy1fqVgoIkQba4XkvDI9lWXNtF/KJudTxjT/5sb2HxR3wfvxZPU
	0UyAgm+uHsj2hWl5iXyPkz6w0Qr8NGIwAE/S6ehLxVQnxVPBRg5pPKifaLqv0iJLSHAo1LyDThF
	QwxbaxftPEesj0bmdM3+dX0Vm/Bg=
X-Google-Smtp-Source: AGHT+IFK79Zu7Kawx13J5a9N3Pw/w/8yE1T2OaR6bmlLVcvBO+jQGZwXPH8L5Lqi5HZN1qd+f8NWeXEYnlzmLTsxZZM=
X-Received: by 2002:a17:906:4113:b0:a47:2203:95cb with SMTP id
 j19-20020a170906411300b00a47220395cbmr6312031ejk.17.1712008621497; Mon, 01
 Apr 2024 14:57:01 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 1 Apr 2024 14:56:50 -0700
Message-ID: <CAK5yBb_Pw-Ho2vnM1f+CLjJ0-AygRR6ocvB58nmVRAuLn0=kig@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000bca51706151011a3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 01 Apr 2024 21:57:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62868

--000000000000bca51706151011a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

"All,

The triage team is starting to try and collect up and classify bugs which a
newcomer to the project would be able to work on in a way which means
people can find them. They're being listed on the triage page under the
appropriate heading:
https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs  Also please
review:
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded and
how to create a bugzilla account at:
https://bugzilla.yoctoproject.org/createaccount.cgi

The idea is these bugs should be straight forward for a person to help work
on who doesn't have deep experience with the project.  If anyone can help,
please take ownership of the bug and send patches!  If anyone needs
help/advice there are people on irc who can likely do so, or some of the
more experienced contributors will likely be happy to help too.

Also, the triage team meets weekly and does its best to handle the bugs
reported into the Bugzilla. The number of people attending that meeting has
fallen, as have the number of people available to help fix bugs. One of the
things we hear users report is they don't know how to help. We (the triage
team) are therefore going to start reporting out the currently 413
unassigned or newcomer bugs.

We're hoping people may be able to spare some time now and again to help
out with these.  Bugs are split into two types, ""true bugs"" where things
don't work as they should and ""enhancements"" which are features we'd want
to add to the system.  There are also roughly four different ""priority""
classes right now, =E2=80=9C5.0=E2=80=9D, =E2=80=9C5.1=E2=80=9D, ""5.99"" a=
nd ""Future"", the more
pressing/urgent issues being in ""5.0"" and then =E2=80=9C5.1=E2=80=9D.

Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me (sjolley.yp.pm@gmail.com)
an e-mail with the bug number you would like and I will assign it to you
(please make sure you have a Bugzilla account).  The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcome=
r_Bugs
"

Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:                 *s
<stephen.k.jolley@intel.com>jolley.yp.pm@gmail.com <jolley.yp.pm@gmail.com>=
*

--000000000000bca51706151011a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&quot;All,<br><br>The triage team is starting to try and c=
ollect up and classify bugs which a newcomer to the project would be able t=
o work on in a way which means people can find them. They&#39;re being list=
ed on the triage page under the appropriate heading: <a href=3D"https://wik=
i.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs">https://wiki.yoctoproject=
.org/wiki/Bug_Triage#Newcomer_Bugs</a> =C2=A0Also please review: <a href=3D=
"https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded">h=
ttps://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded</a> =
and how to create a bugzilla account at: <a href=3D"https://bugzilla.yoctop=
roject.org/createaccount.cgi">https://bugzilla.yoctoproject.org/createaccou=
nt.cgi</a><br><br>The idea is these bugs should be straight forward for a p=
erson to help work on who doesn&#39;t have deep experience with the project=
.=C2=A0 If anyone can help, please take ownership of the bug and send patch=
es!=C2=A0 If anyone needs help/advice there are people on irc who can likel=
y do so, or some of the more experienced contributors will likely be happy =
to help too.<br><br>Also, the triage team meets weekly and does its best to=
 handle the bugs reported into the Bugzilla. The number of people attending=
 that meeting has fallen, as have the number of people available to help fi=
x bugs. One of the things we hear users report is they don&#39;t know how t=
o help. We (the triage team) are therefore going to start reporting out the=
 currently 413 unassigned or newcomer bugs.<br><br>We&#39;re hoping people =
may be able to spare some time now and again to help out with these.=C2=A0 =
Bugs are split into two types, &quot;&quot;true bugs&quot;&quot; where thin=
gs don&#39;t work as they should and &quot;&quot;enhancements&quot;&quot; w=
hich are features we&#39;d want to add to the system.=C2=A0 There are also =
roughly four different &quot;&quot;priority&quot;&quot; classes right now, =
=E2=80=9C5.0=E2=80=9D, =E2=80=9C5.1=E2=80=9D, &quot;&quot;5.99&quot;&quot; =
and &quot;&quot;Future&quot;&quot;, the more pressing/urgent issues being i=
n &quot;&quot;5.0&quot;&quot; and then =E2=80=9C5.1=E2=80=9D.<br><br>Please=
 review this link and if a bug is something you would be able to help with =
either take ownership of the bug, or send me (<a href=3D"mailto:sjolley.yp.=
pm@gmail.com">sjolley.yp.pm@gmail.com</a>) an e-mail with the bug number yo=
u would like and I will assign it to you (please make sure you have a Bugzi=
lla account).=C2=A0 The list is at: <a href=3D"https://wiki.yoctoproject.or=
g/wiki/Bug_Triage_Archive#Unassigned_or_Newcomer_Bugs">https://wiki.yoctopr=
oject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcomer_Bugs</a>&quot;<br>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoNormal" style=3D"backgr=
ound-image:initial;background-position:initial;background-repeat:initial"><=
span style=3D"font-size:12pt;font-family:Arial,sans-serif">Thanks,<span></s=
pan></span></p>

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

--000000000000bca51706151011a3--

