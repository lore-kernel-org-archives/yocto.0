Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06A0CCD13D2
	for <webhook@archiver.kernel.org>; Tue, 11 Nov 2025 14:49:29 +0000 (UTC)
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19101.1762872564321410361
 for <yocto@lists.yoctoproject.org>;
 Tue, 11 Nov 2025 06:49:24 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=OXgEgPo1;
 spf=pass (domain: gmail.com, ip: 209.85.214.173, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-295ceaf8dacso44463295ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 06:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762872564; x=1763477364; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rUpNP+AookQshCnMm7TeKNBxqt1hirQkEYmSGKZyvG4=;
        b=OXgEgPo1X1NJIYNDjC65Q2YWq0cfPzWmF8sv2IyZ2BuCJoFvDMCMrHURxS2p0f8ePl
         y9526GyzrPu2xoGzP9MyysgbCMdM3Tf5PSIpD8FwaNsZp1HIcrQczo9MFn2aOekQ2sYA
         8O1dMIiHkrG0aqNwkRPd5i0IrQrWVYc/4BFTu5Nw/kgOuJU0cIgIU9vlqCttYqTVVVOo
         G+dw3eE/or6jgeHfVWE7SSs+g2t/JmJL5jQaxu1DXN5+Tf22UtptIGg3iKTgqabbjBaD
         Z7tYIJ+Q9KV1J9/aVB68eb8pFiiEpyIeO1tg0K3tDi/elf5hbp5rp9bLUAJQGN35Vqep
         qWPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762872564; x=1763477364;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rUpNP+AookQshCnMm7TeKNBxqt1hirQkEYmSGKZyvG4=;
        b=GEUegYaddROEwicOC+uKq5GhP3Jl2fTlHLLOxcDHzRFmRWCIJU0ozxtOuQHQ2VbaMq
         Ji37vpx0k8Wd8g10MuyRSmjmReNc01oa/7uRzsvWxJqx7uVlWuSDc+gWBLya5UKcjeMb
         m4W4n79uH+2PX6DB13mkVCxFIu6j9odB12tGv/k7vEfThJ7eeZTKPyUc3k9wDltNgEiC
         NgHyTPcHCohSuOOa7wOUsSdf3iQyncVnaQBoCQ6sFXXW/Elp39X80XdqHkHE/+00WQNC
         912FvlnESKaw9XsHvVkp1+B+1VHm4M0Hgif6fR8h0kwS18dK+E+OHZJsSKHGbrceeXr+
         RW9A==
X-Forwarded-Encrypted: i=1; AJvYcCV2qVqku+C99MrC9nS30e3C6IApFELO2HDDH9GYseKurZ2DnQ1+CQcV3x5DQ6f4+Jurj/ZS8A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yxn5gqqesvFvJa7u8zAtYNuv28v8tvyt+42BcXcuPcOUDY/j5gw
	OoHWvM0vhVrWoiSW+qTVa41UszZ4JtDlsG7WtpQoFQ1jRtPWPKbFj/+tMyqYGvNFAVTlpOFLT7t
	2yfuQK7VeDW+AQIpdhDhfP/nEftVUKJg=
X-Gm-Gg: ASbGncusK384fTkYCrny7OD8EODOtblIfS24pvR/o5ymRV7ar+0J4dMYzLXjLfMQJKm
	nBF/I2pPvtBi++cfiBbXp9QkTgtKEHAFnzmMnAQYclQfoMFvZl+5i9Kjv/KJzGGXbhJnoaFwr1I
	gqkcLuDsmnm2W42+B0/yg0YjeFmh0q1sy06XtMNsxFml39ZDutlHatbobnOtTsSotgBBwlnDcHV
	lgadYAHxYtBVjnOwz9EEWYpQOWCw4IK10qPQGqh6IUJeokiJR1uVqgCG9OfdF7mn01pdA4NniG1
	PBxk0MdjoVRbaj0nStKNHKqSgQGifHSkuOBZRrin8a1p9uZfpIgw35hK8Ajo/Oyz0DvFzlDz+OO
	cGkNQ
X-Google-Smtp-Source: AGHT+IEVzFHbwlJYaswv8nllO2axY6vuvzvAAqoBnj5KDiKy3e4UDEVFHbkrVUkgYXc8FySqur+ZCHboCijZPlbz+dQ=
X-Received: by 2002:a17:902:d549:b0:295:57cc:cfb5 with SMTP id
 d9443c01a7336-297e56d494amr175450345ad.37.1762872563434; Tue, 11 Nov 2025
 06:49:23 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 11 Nov 2025 07:49:10 -0700
X-Gm-Features: AWmQ_blsAE2awFi3Kg982LqKY6MWxh5IIljTAS-9tn0699CnxuDpV79-yVq9IMs
Message-ID: <CAK5yBb_4NAe6kDq_bDG5MsuuqjD-qeNOT17TVx+uj2QT2tPRww@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ed85c2064352c0a0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Nov 2025 14:49:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66016

--000000000000ed85c2064352c0a0
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
team) are therefore going to start reporting out the currently 467
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

--000000000000ed85c2064352c0a0
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
herefore going to start reporting out the currently 467 unassigned or newco=
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

--000000000000ed85c2064352c0a0--

