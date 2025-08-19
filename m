Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B7DCA0EF8
	for <webhook@archiver.kernel.org>; Tue, 19 Aug 2025 07:50:01 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.8328.1755589791397015510
 for <yocto@lists.yoctoproject.org>;
 Tue, 19 Aug 2025 00:49:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b1mgIGOh;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2449978aceaso7831145ad.2
        for <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 00:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1755589791; x=1756194591; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=UlPomi/zIf4f0OYI0xrI2dyVk3Kjmyg2SeNuNs2I2G0=;
        b=b1mgIGOhNfjZ3xc7ATmzv/Bcc/u+hsHuCnd2EnHzZCzeafchlsPK5PBFPHplmv09xU
         Zj9WPhRgE0PaUCdLmEWQuA298vudEnmu5EY9An3Dup4Q4N4AoRQtDhW03rREud5L+EU7
         uT+HbDt4CHnLoLJc5L9omNMLRwwRxkvXkS4d5KnnOQZC/3F4TRB6Flgd52adTYdOq/yd
         0+HAtZAm9iP+4rOmI5mjb3exxu4ZUzfHJvWHa18JgzKOZZTtAiJs3I9z9ECyVh6ksEPJ
         dQ6Xby4Q4GM6vYf8n3Jh8L1BWan9p8Xp60phn4bn6r+sAdgD9BG44PHBHmivD9TLGnp8
         ixBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755589791; x=1756194591;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UlPomi/zIf4f0OYI0xrI2dyVk3Kjmyg2SeNuNs2I2G0=;
        b=AFjYTpqrN4DOGBV6qXABYD1Lv9h9s2LYMjmWygNnrcRj6E+EnErelKp6gsQPfl2nam
         3Mmw9gcPIKOPPKRUmsNw/YszW2M17Wzqxinyg4qzrGmserH+LLG7gliyc8y9V7dBrm5L
         obkFNYdzXUmI37P1Z2/5W1PhAkEwb0/sMoxdIqKM0l48Y6uqUeKqakEdFOqP2yIvgmhg
         AEzRlHnkz05vhWTERTcw/5gHfJImVBhDddDTXpqqW87a/hvcw0PdjE7OHYC2QjmroHYe
         oKllRilU93VbcO0UBxj6PMYrKpuYrL4D88AzOdiPTKFOtMKYgIuzfnNSdqGCnBwK3bMw
         K/lQ==
X-Forwarded-Encrypted: i=1; AJvYcCV52As/ZSTwrx6LJAuQ6ZE76M/SJ+WeEMIBc9+IbEwEdV3BadnyITEbHQikYhtKSxCi3HLM7A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzIY3w+ZJudH4c63rYtK1PgbK7xflFoyclGYbVmO90AaFWaVAZu
	KF3dRgeIto0mrUlGl1K+Pcq6wTZ5gv1SqKZjdUoXDsBZspruWfEKboe3qqdO5HbcuSZGTa/wwgf
	WMTYMrTv0lmBT/iH78rWZIlTo2qdM6EU=
X-Gm-Gg: ASbGncutSZVmLb8Q3r8q6GYKcmsMDCcwUYNvJwrQWD8cZYiPTaXz604USDM8fWXuXdX
	269MnrTQzLZqkR7LO87kpWM0siu+f2FuAqDdbmnngmz9CirfT8REepOn1mZ1tqDcBQS4yBt174O
	XWfqZ9jxKupPULbB5I4ulYzYCFebM99fgabrHizJG3cp1B9dkLwNgUI7a5n5vsMUBDMNAKBoJCo
	kxl2s22sB1cH4IkKPAr5yJDOv89gtfdgfdkLbsoLXkUsOuE+v4=
X-Google-Smtp-Source: AGHT+IGTtstLRLbCxDBUiINmKaICd1mc8oEusx7h6lNblA/W41/RqyLxR3puCH0KLCxfLnGHwdV+lcL52AtYLEnnOGA=
X-Received: by 2002:a17:902:d549:b0:240:2e93:8a9a with SMTP id
 d9443c01a7336-245e04b33famr18224165ad.42.1755589790608; Tue, 19 Aug 2025
 00:49:50 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 19 Aug 2025 00:49:39 -0700
X-Gm-Features: Ac12FXxiAOhHIC19wmxueKLaLjWpFjofo0xJH29d2RDjGrljGa_UJAF7JMF_qSI
Message-ID: <CAK5yBb9+vR=96DxqNs+dOvj2u_sq9=2kT2TKKPooRc3W0M9aRg@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d736f2063cb319b7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 19 Aug 2025 07:50:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65764

--000000000000d736f2063cb319b7
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
team) are therefore going to start reporting out the currently 462
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

--000000000000d736f2063cb319b7
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
herefore going to start reporting out the currently 462 unassigned or newco=
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

--000000000000d736f2063cb319b7--

