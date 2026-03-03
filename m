Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D3DD58E6F
	for <webhook@archiver.kernel.org>; Tue,  3 Mar 2026 03:35:44 +0000 (UTC)
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.10585.1772508940123009446
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Mar 2026 19:35:40 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F92qb00N;
 spf=pass (domain: gmail.com, ip: 74.125.82.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2be0e24d627so1654186eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 02 Mar 2026 19:35:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772508939; cv=none;
        d=google.com; s=arc-20240605;
        b=dey/OZWgMTX0SVoarscDDW1/0UiwvM2fbOsKpSQhVTj97NHuQVHpBMdsxclG2YGZXV
         LiKLLESiF66RyiEJXll4BHoH7cKlVcbisiGr9IYOXKplnoZy6+JrdNE5vRaWs7Jp9Hn+
         G3Ej4HFkp303Lyqih6jJWnGJZkJOrkotbm/zIaSLNOus+A0F/3eBZ7YgDxId89AVoypI
         PchCefE6CvxNngadAUFEleEI2adq+T6Nd+VYVgGcbXEHH2NtWbpAoqNqkccWHetI1bjE
         emLo0LBgdl8s7V4OrTz54ODZGMaH5EnuHv9sLWV89xcvCMFm98a1TOc84pUbQVlME+Do
         D/nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Nk3a45olFxA21kDt9wbaO9lVOejjYJyy47jwjYy5HhA=;
        fh=X5/gy7/UBKMrOlZmLPnt6lV9d3xDBr65b7EZ/ghocWk=;
        b=EFzygJufMQFsw1Lj6LABve+Ts14UmSt6WvS539Zljs2JCaYInMZgBy3MwOyd3a9vSd
         /JazoAAegvMryDlaIWV9o/tRo2L/sk422e+z2fXpRC06dheFu5IIaTlQNVIVrqJKGBpg
         XR8Hz1QN5HgfrGWFTAab5OWZfSAG5RTQl7sH37ND7WVdH5/a+WwfW6hI8eyCFOEwPj9j
         dDkZidUbrMM+Wmh3mqxnzSMfO7aSuONBkbOBn97uKfsV1UHI9nzZGsWw7AVu5hSjj/3V
         EojVl8lHEFwyeEBIzVGQten+zjt/eWZaPDj7wL8eWLR/QZ7PywWaAYUGcZMZ7niVJJ2w
         eaFA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772508939; x=1773113739; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Nk3a45olFxA21kDt9wbaO9lVOejjYJyy47jwjYy5HhA=;
        b=F92qb00NIFGQWHslKBbqMy6VZB70aR/5UjDC/RzVSz4ihfR3w1qGEx77Xk8teNIvC5
         QQqT6mhgi5x+iu/DKFd/YLwKmy8WHssu7RjOICFoRZUPgm4RTADZEEKeoGf55b9GKjxr
         jcAtr8EWEokMqAEnqTlw/0672rV1BBvQe6nTceLcxulfT5ePNfHxkt7mTs61WY7szrjn
         /IP0U0MoCJCVSO/f+Zxan4+SbL9aHljGiZa03NYPTK08+ieew2S2ICEIJ5DpaL2NOtID
         eI0HsjR1JHEH2OMr2mvK4JAG/je95Zba4AnaI0OLEUtHCnORTOvx18s6ftlzr9UQt3qx
         qbyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772508939; x=1773113739;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Nk3a45olFxA21kDt9wbaO9lVOejjYJyy47jwjYy5HhA=;
        b=V+jUYIAANa9ZJBT66z1MNVNk71TNMfLGAqHm1tWFzzBtdpkov6ShTj7dseGsXSYbws
         z9pHec4AXyy+4/d7ZE4vtMpXW/zurW4LA8OVxQoJNpiG00IiBEsbklApJfxf0ZRv2eOO
         2X6kCgywdINhoNHJDqx19TVkXcfLe0bmxg4QGBn8zWqCJZTF/uL1w1YZsymn+YAPCSkk
         +npy5buydl5RxQIBingOSCR9pA1MnqEAZklb70cnUvWIFfOHwKHAKAoIzRNOfgzmdnXv
         cZVWTQ87Dgzkr3iVKyuNGY2uo2AIJXeh7Mo/LjkLauVrvsyh85NptEBuj3UaXlR97fQc
         6ejQ==
X-Forwarded-Encrypted: i=1; AJvYcCXesMn2cbO9Rq07sD6hHC4d3mgF8eS5RrIbWYT4v/AS+4Y26a9zx1kgpQq6q5G6pAxmDM9cxw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yy9y6mzcjNTDiFxC6UcFcJlwz0GhenJSh2iQ6tOqvgFpTYQRtOJ
	1dIvuO5mMA7lPJ1y1sv9Q6BSrfQqgtyrZCfGhq2//lS6o2bCQ9zDoHWrcJcHyMdPimrOluIjFGO
	T36VOyIDLUBQR831RfMASthA4r6X2oXM=
X-Gm-Gg: ATEYQzy/dipyWCa2XRSKu3uYgVG+CH3wJf+VR1K7/e5p4L7Eio3XIMwNXwR7OfK7Okr
	ZtWS1xDvsyVawKhpQkaF2mq8hF+IDbWNh30YkF9qFnwyLzaAJxblfIDzGCJ9MNR/EscO+VJzRPe
	oVImQIFwIXh1xEXtEQCixaP7URT8J8LpDmpsdzwD3w52YaY7Ta2jnBhZ4wHyLPY+zukqpoOk4V4
	Zs7zejAXhooNELj0zKk8UhzoITQxF0uVNWkN88+9YhE071dCNgZDYYOZ6yZn16L0P4XBzhSdiZS
	6Vddnxd99rasI2aPOnRgiBoUqu6MCdZrAMZeM4NctHwJ3rah+Cab8m0ATLMsuzDAFZslPe78NZL
	dk71KlEHhTv/dZbkb8ID76IkS+54MM1JC9UNzaw==
X-Received: by 2002:a05:7300:d4ce:b0:2bd:c872:415e with SMTP id
 5a478bee46e88-2bde1e6b822mr5264513eec.37.1772508939376; Mon, 02 Mar 2026
 19:35:39 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 2 Mar 2026 20:35:27 -0700
X-Gm-Features: AaiRm51dYItJ48VMZR3Ib1UrM0souvoYNKh9MS2VfsICeGcxtJVvovAnL40wTG0
Message-ID: <CAK5yBb_j9S_kLMpoZNdj0Wg7C2_4GZxiCgGcMB0iU5L5sQtHAw@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b15afb064c1665a7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Mar 2026 03:35:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66291

--000000000000b15afb064c1665a7
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
team) are therefore going to start reporting out the currently 455
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

--000000000000b15afb064c1665a7
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
herefore going to start reporting out the currently 455 unassigned or newco=
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

--000000000000b15afb064c1665a7--

