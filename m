Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A766AD0E6FF
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 15:31:28 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.33.1764084684539910308
 for <yocto@lists.yoctoproject.org>;
 Tue, 25 Nov 2025 07:31:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=V1D+io1+;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b99bfb451e5so3833226a12.2
        for <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 07:31:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764084684; x=1764689484; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=r2SYeYLiHZjEoUuBfwF+iyZXLnrMvfqf6Ot2Xu9oVMk=;
        b=V1D+io1+FzqIlavnSfNH2w37eVceTrOaJUdBSKqPGvYzr+ZTTDU23kz0OBklFjC23H
         OxzwxwivZhcQ+r4q2sX+rPSbHDSBGfjg5pS/SFwlj7iaFZcHqziThKv83232Uxu1M949
         AlHR5yITGtg4kIV9RkiWVA2kIb4EkSidx2wsp6up/8IdOvNOMG0sRWtVqc3m+BaWHqdX
         GNAAOkLkfr/1TIv9Sssu1Cga+AtvGePsEeyIbOJ0bDE3uNmmL3M63tKxOLwBkykVKDQ9
         ZU3ONc8hUE76KsApP7ky+emEJspGxNG0QDJca+rjNOcrGLgSbYO+GdhRAS4zhALjW+KV
         90Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764084684; x=1764689484;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r2SYeYLiHZjEoUuBfwF+iyZXLnrMvfqf6Ot2Xu9oVMk=;
        b=IRYo+jub7gAPxD/si16ZHhAPDDlB99Fldlf2W1V3BRIoqxdR72ULnL/E3rKGW9TvyE
         ebIxZM6m3Y0o8ma7s0L/2o6Ecdq0ujQJnfRD3qQnq7bN90ncpupfDUCFfIGizh2iSAkw
         ovF5mXv9i0Yl0o8MvChjRgRfKNr7ZrwhlNqUSVWbHy1wZo6o3XcSvNFOM4bcS0O8ylB6
         r+H5nxLB0YSaUWD6JaekLD8QP5B5pKkf8xdmEMMmdCWJmhsLrMXkRRwNUCvc3Ool6f6F
         oC3YXZvx5WMYD4dazZAOeyUp6tVjPk96jc4Rq5aKNXvn1oOrM4NL8ekHxvIj+zdLZKxm
         0ZmA==
X-Forwarded-Encrypted: i=1; AJvYcCX4dmQBugWJ17dPT7+/e8R5hid4rOjJ0UFD0j1Hd+i3Z104KNdxesiyviw2zxMLePgKMP0A3A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yzht+qpJtheZUXy6zwKDKlgpMBYPrMuSKrWoaIqH2bJTJJ5V7Ky
	S6XPghFTE52U3zWau01Fl18zTx8Z/NP9YCWHCwVfF1tP6BmI0tnsDNPcj6lTWsD/HGXBTUw0oNZ
	SRbS6bVItELe5kk5iYKgh+FaG0CP796s=
X-Gm-Gg: ASbGncsAAoUIVfLLnHgFoMbAWkW8OO9Tq5DDZoEkpBYotHGATOTI4189q/vYeqrtg4E
	wNmT4+KvIs9NQmHtTabN6nXrR/1mncAC40qiEmCUKfKFQgCfaIgNFtcuQLcNCc50SC80Xp7b/gW
	yxkKa925Buk7EwQgDksHhJ5+31VEIiK2OJYzZVbQRksPiQjUzojp6xu9dzseF/9y4exYeg6t47q
	4np/7/O0If3gqI4PyZNvcyL+2Qpva+QuLdN/pUqneJDRBXPF+H29+H5+iqRt9NJ7GVsPEZTvXLN
	S2D2/gkql4KYmSK9fb/+/QU1MxKLb5fbbS4MlEER1n5cbPcKRIvRaRkkauW618H4Ul9EIT0lMko
	QsN32JEYQKKs=
X-Google-Smtp-Source: AGHT+IH9yeay6A1zOzQPLDlpOvNb8fTbe1C25znIIC5kOtJZGh7Zi6ltaL6nX2loq7dUesVkgIthl3NQSPf2F72cBiY=
X-Received: by 2002:a05:7300:ce97:b0:2a4:3592:c60e with SMTP id
 5a478bee46e88-2a94188789bmr1753345eec.31.1764084683531; Tue, 25 Nov 2025
 07:31:23 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 25 Nov 2025 08:31:11 -0700
X-Gm-Features: AWmQ_blO960MPgUb_t2g3rdAaqe5aKq3m_P0U33vez-6vfPVcrXIKca0P4kW4gk
Message-ID: <CAK5yBb9heeDU1Vo8QH_Oi+pT88M=TVC1PcGprx+s=JKxxjxDBw@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ea693906446cf8ab"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 15:31:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66058

--000000000000ea693906446cf8ab
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

--000000000000ea693906446cf8ab
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

--000000000000ea693906446cf8ab--

