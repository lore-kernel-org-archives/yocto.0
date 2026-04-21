Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D43F4F8FA86
	for <webhook@archiver.kernel.org>; Tue, 21 Apr 2026 14:31:55 +0000 (UTC)
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.32150.1776781910675393996
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Apr 2026 07:31:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=NpKASuZx;
 spf=pass (domain: gmail.com, ip: 74.125.82.51, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-12c6df0b9bbso479562c88.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 07:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776781910; cv=none;
        d=google.com; s=arc-20240605;
        b=BnUPE40WjUJMj9xllEaTtmSAERnpC6GiBA8gPS96Ju09agGWEtl99FeKeqU/tnRS8Q
         5Q6yqBqbRlR1r8xiyNDIOtJyNmUIW+bPo6m8URjNaBnyZPXk4E+uIYqLm+uYI/sg74zj
         k/5x9T87xZ/tCCaXG+cAvQUMOGdnAuze4uyhcTXIzElrmCuB2bf1Dxj4dE/GPHGm0Z7j
         GhdJTgje95opBfTj5VszmGVEYdzbMdsHLsjy/UCOiy9peL7uBdtDDsD5F70HSpIq3OtG
         8PxIyYhIJ15LkmqqWGxb4TFe9DemnFYhXoHEFHcZ4PAbsiNxGz6vk9ihi0YozPCAyzWB
         8gMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=YWQBQ0/Gyo3+K7dAPlvMP3OHBsszAxAcOSpdr0VumAY=;
        fh=1AQ7odmOtzI7RhVmiw0cbWEjBjrj/hgfC657TNlgyv8=;
        b=Vc0RFZ7gzoIouLnkV1G+aIZ0pHuFUJlUO0LA4OTNSz0bBMJ998a/TMfSZUrP3qG7GR
         mFz4LkJzRhqQtxPnhH0fy5A2yvYjlSf+JPHNZYp80ttkTl1MDaO0V3+Mm8n43Ni1O5pd
         35gmypYxihCrS7hq6Kwc2ZNyRM/8WFJX5tjz2k4NzpUWfcdQTS8L8/z6OrtyzN3cDJlQ
         AjZvmvPTe5ush0Bz8h8qG9yWRCEOm4nHQ9qkc3cBOFTFX9IC5x/euO32X9RkJXvG9Y7H
         vghYLZ+I52+F4CMSm1veRdUmEq71T54oYqae8jU30oz9i1M5DF3qHNu+i9v3ILkIHvJ6
         5Bcg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776781910; x=1777386710; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=YWQBQ0/Gyo3+K7dAPlvMP3OHBsszAxAcOSpdr0VumAY=;
        b=NpKASuZxO4o73LTsu3dstRE1ERvxj9ioLp+u5h0JT0QYLpwmfxdAluEgAIDBWrbl9r
         zwSqDxtl7diNVpjaferH1F7xCHNjIh6KbXX/gRKg5ym1yH0pArM1DWleE5qzndkIRYLV
         r+iStFMcwdK9x3+L3udEOYHRW15Hw/C9/oyR9AcyqmEpMLBRzSNYY8gkOYNTBMlslq+w
         ZGnCk/XcuNjRE3bSx4BwgmaXSuk8GA9FBMKC2fkEyBX+Ib2acP8pKKcgDbkvKq/CnzTq
         ZZ/ZEr85MYIG/RZo253S1QiFGCp20J/5JxGpHvV2Q5Iv/EWTrXYFNbDsAI2InED3JrJw
         FBYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776781910; x=1777386710;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YWQBQ0/Gyo3+K7dAPlvMP3OHBsszAxAcOSpdr0VumAY=;
        b=L/0fTYdaKmxUHn73VyotnLR3wAkuwYioBqtrdEyL/yYaTwY226Blgy+qYgSzM2djw+
         sFbvnf4PCphFrqurLaUzAZyBLkKRXurpWR402iCjfRhBW7jNakPhtFtDvr/UVSRVoRco
         rwCW9LCF2iFOzrAIOMckNOqHrsVdDBssEnyvyFOgXSwN1szyyhje+US2aI8nLzvr9ASR
         N2nPqnzx5TNhZJof47xspltDvtXq55DH9/XpUAfYCjyqL3iw6jn8InHMrkp2VzuvH+1l
         s/k1LLMZ/7mUkW7sYJm2NSco/ED7s4uWTeqeTXAoq6D7OUM+FenYXx+fpNg7LegwJlPx
         JkfA==
X-Forwarded-Encrypted: i=1; AFNElJ/Ymbfnmq7yaXUKDaa28HoQofB8o2Uchx0ifZyxfHw3aYwgdLz4YKZp6mXDn7PiMjr9glJTAw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxlJ9HW8feSjUolpNs5MhZ+viP7qO4eCYifGfgi7jal6olhDGBK
	r6poeoULaw5aom9O0TW4WUIMIyzF9SgL6YhQvj8omK9DwvUYzSvYDlyZdu+jKvv9XpXdaykQFVw
	wx7IX2athxLTRYAexarZph/fGh7Y9NRo=
X-Gm-Gg: AeBDiestAzQ6H0zg8H7QgSk9eqL/EyapGnpe7ZeqWBu4dqaku7J7rMAWj1BdNBDotst
	cmM0AdQNGfZJULK06LwnFoi7Az2cd0dGUWVP4EggTM24byg0zbe8fxht/nDbaAtZQSpj9Tekx5u
	LfopR6h+LkCbshiXLtP/1GSVQMBlaPX3AkyoEYR/S6F5btNcrj5Is4hym5adwKVer5e5URWzRSO
	qbUAc0zDaMe9v0TeL5mDRN+vkL7cho3zxcTbsVDLRm45qn7qQNfSPE7xF62nD5rcBa1N+pi9H9D
	lBbtXx1GuhPNGYiuWTR6cGrs6wIwrLFZBE/fmo80h0lhX3B6nPbz0tEzuUoZkeFVubh9SXLOpwt
	D6rpQJNgaj6m9bOJSHXaVsPtqh1kSNSh7RKv5DnRWaj8yYRfMewaXx0LPJaJj9A/gseJOZ2f4JV
	x+DsFAYo9e6l/THMCl
X-Received: by 2002:a05:7022:458d:b0:128:d51a:5161 with SMTP id
 a92af1059eb24-12c73fa2244mr9270905c88.27.1776781909863; Tue, 21 Apr 2026
 07:31:49 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 21 Apr 2026 07:31:36 -0700
X-Gm-Features: AQROBzDNGl6I0-iOVvieZMi-g7QlbyBMM9aHxvf_UfAgGKYZqGYUS48rsvfy6XU
Message-ID: <CAK5yBb9hAtsScEKpVeUWcjTRqo3H8pCje72P_spgHuf2CU8iRw@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000094b351064ff9465f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Apr 2026 14:31:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66425

--00000000000094b351064ff9465f
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
team) are therefore going to start reporting out the currently 446
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

--00000000000094b351064ff9465f
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
herefore going to start reporting out the currently 446 unassigned or newco=
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

--00000000000094b351064ff9465f--

