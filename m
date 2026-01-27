Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFE1BD25927
	for <webhook@archiver.kernel.org>; Tue, 27 Jan 2026 03:14:53 +0000 (UTC)
Received: from mail-dl1-f43.google.com (mail-dl1-f43.google.com [74.125.82.43])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.1586.1769483692481829712
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Jan 2026 19:14:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bWa+Ylb/;
 spf=pass (domain: gmail.com, ip: 74.125.82.43, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f43.google.com with SMTP id a92af1059eb24-1249b9f5703so1227356c88.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 Jan 2026 19:14:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1769483692; cv=none;
        d=google.com; s=arc-20240605;
        b=LDaJbmvM+ZQkTz4gJcMtnfsxGC1U/B2Ijvi/KhLbWjbgGtcRFU7nzEk7ZBMPyf98R4
         GaWwz6sIxtYRiw0mBmlxKdXbRJzkAmr0WnFD0KKzUbMCVL+tS/1046cMxZMsaH35bWRX
         8nJtgvfTsnATLLJdR5KASZecFBkE7Uvgz+ImaFbcCrXLdrSMOf17e3p8Jgig3nG4gvy7
         QTBgIcoKKs/Fjh2j56BE6UMB0M5fc7xsdVVx76xMJa3AaGZP64LiAIYtQV9NcKSr4xlb
         mkFavZGnULipGqE3dtz0WaQ9hlu7rKYo8ffeLhQQUKWg5t5Xp0uYXwuxmgmDcIXNNXbb
         VNSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3Uil/j0WdgTrEvuNtD9XBnNSaooeSxcqTjqTycASRt4=;
        fh=Y+S+GK2HhurZxvIeDhecRY+ebE5FrYCpolbBHDr0rkA=;
        b=FCRAbfoVELVqzbY2Brtx3QiTT7WtkOTxlHioTGR31yB5xhqMQVd+GFTwzzXoK+rcmW
         ECAJerNRcpcoJ8ke8eLcEPOEyPtudMnSM4FFLlqhecG4XT0+UqAA4tDELozO74Az5QSL
         rsr3PeqEAfMstGnxcNByXrpa2paMYksGddcGPJG0EC+Jf+pCi15/7ep7q+DQmpnRAT4c
         bu/a4KQEgqNq1phatoDb84C0PREM8MfWt4uQO0yt/JdUgJvhe4L8UA6aU2vELrxPyo8n
         gt1K6nIcHCpUMSfc9EJfSqBe1c8ekJDVNgsoBorTLitMsc6HEYRz6xU9Gzi0fmEU42OC
         IHDg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769483692; x=1770088492; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3Uil/j0WdgTrEvuNtD9XBnNSaooeSxcqTjqTycASRt4=;
        b=bWa+Ylb/sI10LlizHrGSPzjTwKk+sVIvC65TeWh66Fm0Imj2mIx8JJbJqxuN51k/+Y
         m/xTOPsKGYyQ7dJyqUhku1zpSpVMGo7GtEptvk51P52ft/qLeZM3zEuvECVzq3NTmDot
         2aDhYUE+9m7+UvRiBFUI+jLggNrp0L2UkyXHKuVw+TWxvkwzCubXhoy9E9QlieZhCgAl
         dQN1NvN2hMNZ1VGaj9RpXYa4nd3KJ4kqTpoXysj9m9ClzZ58wRJz58wNO4UsvqtKAeAu
         l3MKtC9//cD6DPQkxXB06G8qnDwcKJCLAJzMJkgOEGnVT5nYcnenCpobyy82TnePZamI
         Gnyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769483692; x=1770088492;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3Uil/j0WdgTrEvuNtD9XBnNSaooeSxcqTjqTycASRt4=;
        b=W06mu5KiHNnebkEDKD8bZVI3SxchidExrdlcwQftS9kgG+bcw0pb6MMxdo5HowenBP
         Y0PzkfAAAa8IWhs8twTQTd1uUtpdr/I0MchIzDwWJ+gEIVgcQQK5Xl1LFSMtfPsuXgOt
         UkkdNlJSaKqxn2lpYDusv7ODh4baoxN5rNuKW7fEZ/+fr3dQt5+x1hKPCKd9TMlYYXGU
         xXSOXDQ1q4jeGoJ3NldMPZRttvEQB2E4DBLGfvyu20NL6QwGkkO2fSP+SbPw5RVIIE5Q
         zjOx0DFi8EHsaYO6HRPEa8YOCeA7BXZEFZ6rD2e+Y/duckYgK2Kaq9hDwXFlYwj9yqRB
         +zCA==
X-Forwarded-Encrypted: i=1; AJvYcCWIJVib9u1XPG/SNmtAZcF5Z2hqli7N2MeGL1XiqlUAYzndLMgolr1kyvXWC+LcS7f92MoIEg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzcP6IMQ6ZtXckwL3o4RaLIL3klIBrpDL+QBQdPkrPhJIeTA2vQ
	CgpeL7ewu1Ed4GjIwfY6SPu7q7Js+nqHIBNGIgeNYtJo6bXJCStA+TJ3rgaJOyp2XWrFMbLzGAJ
	wSAhCOeg6sD250d+BxYr+AORFdhVExos=
X-Gm-Gg: AZuq6aJ8cnJNisdYYckEbAEuMQp701GkWnpkqxkSegYQDkoQPXT0ienfYO0kJrp2Szg
	wE6OdFRExzmYWv58y4zX+fUYIVg8rm5zDa/6LzD0ug+MBxU5CLzIYkZtlPH3xEpiNt11BKPScvP
	XGkK4ITAlKstz3ZT3KTP1DV7Mx4LMHVTaTUjbxkHu92W74VCBlte/bNFOQyWIg0aKjv6x1UD5es
	Fv+oFO19KDuhntvRuE0PK8njszEXmku+9n2D2V4fN9SGXYhSuHRgoloyWxoVBbKGIBgzynTffi6
	tdEPCFwknIZPPovfs1FQ/EEH1MV9Robx/2rRQUFMly2rFUxTB3UKCW4SOiBAtmRCpZiIghV8oto
	ojq0uScKf9RAMNZC1k0JKFV+S8w==
X-Received: by 2002:a05:7301:6086:b0:2a4:3593:c7d3 with SMTP id
 5a478bee46e88-2b78d93306cmr295629eec.19.1769483691538; Mon, 26 Jan 2026
 19:14:51 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 26 Jan 2026 20:14:40 -0700
X-Gm-Features: AZwV_QjcJBmwnAc277OHowgoENH_QxvVAfxRclW0WpA-_pxq9FM1yWNBW7-ylnk
Message-ID: <CAK5yBb8L3nbR1=vL8cqLH+_F4xvgk2i1g1JNLLNvPSs+HxAGqA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000debf0506495606eb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Jan 2026 03:14:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66188

--000000000000debf0506495606eb
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

--000000000000debf0506495606eb
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

--000000000000debf0506495606eb--

