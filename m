Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A322F109B479
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 14:29:42 +0000 (UTC)
Received: from mail-dy1-f172.google.com (mail-dy1-f172.google.com [74.125.82.172])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.21484.1774967377516822311
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2026 07:29:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=YXnS23Rv;
 spf=pass (domain: gmail.com, ip: 74.125.82.172, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f172.google.com with SMTP id 5a478bee46e88-2c4db6bca03so1394879eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 07:29:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1774967377; cv=none;
        d=google.com; s=arc-20240605;
        b=NGbGhWMP9ARA5q0o5gTsCk0tLGvoqo3AhA6qj14zS08dWvfBafb2wkAYaGMMpQy/oZ
         il02vCuddhuKq0e3c1PTU7n5uJNBzrljDrtOgy7dUPMbX2+0Obb7pIpJr+YwbC5Tcf/B
         onTLjOkn6zQ7wXQcCdQnpsfhm5m96+1FbDRyF2WiHXgd86R/mx9vZbfCgE1NdiFJfOBY
         3lN9rcvnSJxS+TljKReZ86CTZUTyaEVbR7xzUtO+sMbe82XX88puW2kQZ/dKa1iohi6J
         cnuNe/w2pZkrCoiXzjM+BqlPMaM2x/NpNcQnOQOUkk2AkJ1KCd8y2ZkjpgSTKGwdHgjb
         a31w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=awpbEO/T/vFuYSoWNp0bRlP3kP/AYYnnHKaOHuI1Lxk=;
        fh=t7A+B5Md6MaEixpkG14xSMGCWd4NavHphIRjHG6p8dU=;
        b=Q6BC9sbjzPf8N8N+Av9XVBmhhjlhZJtTTxmGo460jCSRNkA63/Eyp3ztTeY2gPYtbK
         GKTmQRXzpBBJHQi0SL5IHE41FeNrcvgLoBYV1vzY0LOJh5+VoH5SpvSZHOcoKbuq9gah
         Cu3JDgZo0X28+vYKY8pVLDA+ybndWc+s04qfjSg5ouy0Df3okHyLpu0Igp/goxGCbKK2
         DjiKexiqzyvUAOoQoTEoCgOty+NIy/zqlIIfEo0PxOJqLyp1PFpN+i3T8Px1q0OezCoz
         RdZ9mV4miniknbpdgCY2f1TGW0t+CKJ8Ep3MFwUOyg/Wt+0MApqYHZAHarVzuvFlUSkf
         68vg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1774967377; x=1775572177; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=awpbEO/T/vFuYSoWNp0bRlP3kP/AYYnnHKaOHuI1Lxk=;
        b=YXnS23Rv88CAz99hWpJqS3E69QqfZTy6i4n6aBXHjeywSAdmL9NC+kmgC6N6EU6XzK
         1WyEqDQMoupXjtbTQ5lgBLeep0kx56ZlAOnKL9GtFgV2DpTQIwGjKs094X/ghJb5IAj8
         A21wGNDaZ/KHDEeli8NQKL6RY/kB0R4kNsZKY5HSARV6cm+TiLn+pUzPpmu6OgXVo0+r
         YZ8o0PKHzGQV2FZYmRJUI1WN9/cbtfXZbSJdAFmIjeXimAdEtUG5SP5jUDHViKr4HulB
         IS6EKb7XDvmCQecIHLJzmlHWf82cxFz1hJvolZz7uO0pk+d16ieExNVoS/WMIL9Q+Y8c
         jBUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1774967377; x=1775572177;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=awpbEO/T/vFuYSoWNp0bRlP3kP/AYYnnHKaOHuI1Lxk=;
        b=niOmYX8eCu3Ag1iOyV6d5kM74yOUjkXaFBCyl3wXILYIoIL+misYckeW/mbBhJyKZw
         W75WQyFsjNA6DiMiIe8loOmzgRxvh0l/nF+5gNei32ulM0Y0Kr8UgaSvdNRW4+Mphfe7
         qW2JpGUQ7LznanfdO2icR9DmBJYZ/0OeSioJoCmm7O+85MSZffpPMRJhOGBHKVyslY+1
         wi8EtbR+gmDh7kDR/rskf1lPTscaC4NTxnuago/sxew9GyaKQPcUGPxNZw6Ck4rNN0oU
         BBHrl5E1Httn8R1awZ7f00upnCewRx28liyEaKLcNDZgrO3NRO1r6jyhr/MEsLL0b1c7
         00DA==
X-Forwarded-Encrypted: i=1; AJvYcCVyQzFdE6qvRyAQs9f/wrx/iCT3Imasnjs8s74Gg+zyU6vDtQL/2i9wuBmKLX4Xk/bXLNL72Q==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzCaprsZ6RnRv0muscAYGi+drSzI9CAtlqUsT8PUpzSVki9pVX5
	LSNvLDjuBmZBjCkRrQ7LEHGoDyjbVtOg9F87iJAEkj6AgFQAipBFpH5379VV0ZoNyTTf75iVYZp
	dtyGoUShRXfk8wATt+ZqD97d5KhUrUDY=
X-Gm-Gg: ATEYQzyMFBFT52g/3JH7+d7EUI4YZICq8LTslQBqwGFqWsdFDG6VXdgfmSd8UePEJ6W
	05RW+ZXUVDXwgnTd2PhHHJ07HAn6MGaNu0wXjNyWzQIhc1aIZD8w4zwPkZ8aXyXOeztt4gGB0ZI
	FDd03iXxTiJw9zRlacGxt/pRulxO9FEIYZd7las7WTYGFhwJv7IxCUJgJrZE1qDPbNYyeo5VJTI
	nWhIIP7W2sz4hKwi8fZRlWS+p8pJxMSh8pfynfbysq4KqeRwq5gRO7kja9+tuhTQEJE6ow+FZ9O
	gAgz9/Fk0rH2N6JOvvcXpKUTVXr5z2AKfWyujpI2qfA6mCI0vCHTIcnjYxJ/FDSVKwsjGBmmj7Z
	tyqI6GevqhCwTdo83WxNCcSm2eOqfThpl6ui3
X-Received: by 2002:a05:7300:8185:b0:2be:6693:9b4d with SMTP id
 5a478bee46e88-2c7bba67f5emr1968962eec.9.1774967376681; Tue, 31 Mar 2026
 07:29:36 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 31 Mar 2026 07:29:22 -0700
X-Gm-Features: AQROBzDJGeQREOMrJrFtoL4xfqoZ0PJjmrst0kR51hz41nJfY25Va4jPaFCrnGY
Message-ID: <CAK5yBb9NRHpyoBuu0d-6E-AxGSL7g=OPJuPkPJE=eqN1NAJNKQ@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000f9a023064e52cbe6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 14:29:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66367

--000000000000f9a023064e52cbe6
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
team) are therefore going to start reporting out the currently 437
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

--000000000000f9a023064e52cbe6
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
herefore going to start reporting out the currently 437 unassigned or newco=
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

--000000000000f9a023064e52cbe6--

