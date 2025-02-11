Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61D8CC021A1
	for <webhook@archiver.kernel.org>; Tue, 11 Feb 2025 06:19:28 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.6068.1739254759103363321
 for <yocto@lists.yoctoproject.org>;
 Mon, 10 Feb 2025 22:19:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=P33CnTM6;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id 98e67ed59e1d1-2fa0c039d47so7475292a91.1
        for <yocto@lists.yoctoproject.org>; Mon, 10 Feb 2025 22:19:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739254758; x=1739859558; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=TjzbdpssHkNNkyPT9esppDWsbkZ5g9ovC+ypH29Dgkk=;
        b=P33CnTM6dnKx2m3kmK3jINFpr+QQl9sndU9UjuaT5luQPzzXoKSKZmSRddVccruvlr
         Y2MwAa8n9/lWRKAp9MQGAj6IDCPPMRUJudPEHqGKekNgFiSdNExmzZZlYd13IGC4DaOC
         6wIzHvwAZLR7Q4grcXHBwuvjhDlsCMM35kz7+EkiMZq6f5mteHrS6u1+XsVKUKKkASIO
         iWf47UDcTOz29MPfXBl0IXZkzz+M4Xm/V2QkQ9KRrXnFykYxhaH5IxD3ptZWY62aiKfy
         XrspyWiYZbYNSVAALZkd6iTxCM9bW3nb0e7XKMHrEEpjPuq9eTpTJF+85aNvKLtzfEHS
         vPqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739254758; x=1739859558;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TjzbdpssHkNNkyPT9esppDWsbkZ5g9ovC+ypH29Dgkk=;
        b=JLgEkNHzo0zihUsLXGvTI5N6Zpm3r3vRytHeCsUelZkr0cR1cRMz4Mscl7NljneLNY
         L7faWi1u85CWSR6VQF57sWJ1wlH4rlbhddQ0W75dvWQzKF5BLbNa+4dOBEkCtKjES+Fq
         bBV8401Dp+45rL1ABXOjEye6+vATMrkaMTmP9QbRvjmjWdJwNhVLQAuGtlVnwlvdz4tJ
         YrhUeTeA0Gz59SZpI0nTX1uASDeXjUn9t5FlFug7fKHtvympnJBMQScibyPVZXwFueFb
         bT5xPL0ip5VFEFh4m3Mmh2UBNqFvOkzPPxoU5Qf+RvTDtjTZzOn4A4VRwO0C9TdgnH9I
         ro1Q==
X-Forwarded-Encrypted: i=1; AJvYcCWwfrTPE4EwAI9+gRdM3/43Gdv6wi5NJnDWG7nA2U1U72D3Otp6mFy+tf98/uYZHi0Wb53SXQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yz2JGpIe5QoE2fJxNoynOo5yZ8voYOQdtF0Va8LIB0MQLINcYcu
	bwqgRtN+U8vxREOPsAQpKtLVrm3rl4Zy7HwX3Awe4cYjFLHbeFBIUEVNDtahzqJupCtfZP5242T
	KfRIDUhc+zbH+EVUDwWoJucS14bw=
X-Gm-Gg: ASbGncs/muSpLvKVyR2VY0EoBZRXQ6f70Z8/ZQdXdHI1Hz12zCViqoC39goXSFh7UeO
	CnzYPQkVfIt+ADKvm+GAQbjNYgUndHRku0BHNq+Ah1/wuMI3V0cIBjVm8WCs0gMvlsZXy78H5PC
	JDxFNGu8bt5lpa7mgf7Vw4F87eWS7l5IY=
X-Google-Smtp-Source: AGHT+IF6kmRBrTfoPOI8d/jWv3gre0uJSIKAPIcgNsFPMPn69ZgT2lj60TpCasV2r3EXE0YA1Nrfk9OlwWnWzv2xfWk=
X-Received: by 2002:a17:90b:510e:b0:2fa:e9b:33b3 with SMTP id
 98e67ed59e1d1-2fa23f55bbamr21710802a91.6.1739254757692; Mon, 10 Feb 2025
 22:19:17 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 10 Feb 2025 23:19:07 -0700
X-Gm-Features: AWEUYZkmBK70r66nbxWTTnw2CclVMREq2b2r1ClfMZn5bK5URfI9-QK6_u2TmWQ
Message-ID: <CAK5yBb9HO-=8wJBnyQK2kJm+JqMSL0Zy5Qkojjm=FrDX7N0hVA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000019b10062dd7ce0b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Feb 2025 06:19:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64758

--000000000000019b10062dd7ce0b
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

--000000000000019b10062dd7ce0b
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
herefore going to start reporting out the currently 416 unassigned or newco=
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

--000000000000019b10062dd7ce0b--

