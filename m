Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A512CAC5A5
	for <webhook@archiver.kernel.org>; Tue, 23 Sep 2025 03:56:38 +0000 (UTC)
Received: from mail-pg1-f177.google.com (mail-pg1-f177.google.com [209.85.215.177])
 by mx.groups.io with SMTP id smtpd.web10.8857.1758599792332293516
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Sep 2025 20:56:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Kgh8b/rr;
 spf=pass (domain: gmail.com, ip: 209.85.215.177, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f177.google.com with SMTP id 41be03b00d2f7-b49c1c130c9so3435673a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 22 Sep 2025 20:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758599792; x=1759204592; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=pUOfh/hid+H+hGfazu2hrDqNyzJ1T61VvJf3xtN11Sk=;
        b=Kgh8b/rrtlk0iYnmv6KXtQqaDc5TzwteJujdgwIiYd7B9dULP33N6XSPlF4tUtV2VZ
         5/JsJzCOy1thwVwUpNS7TQcppopRmxZOoTPHsGhXsApWNxD005axbQPtCXyDvSlxbGGX
         aNxNFkKB9l162l3mVRJxdoDmyT9DT8kU6e5VbipH3QaYyjRFAS/K/5iADuUUFELa6aMr
         ZN90P+EAt6ogOO9aFEHxRkxslgFpgwTAjMcSDQW2vI2C08aqhnfuqRlJT37j1NzpYaW7
         d+HXGakknOK2soUcdGtOgaOx2Tn8AXrccH2/9y4vBVCRxDFQEhhyuRKgsgsAg+gTxtG7
         Q1HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758599792; x=1759204592;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pUOfh/hid+H+hGfazu2hrDqNyzJ1T61VvJf3xtN11Sk=;
        b=fH0Yn/goS1O83LYGpFuock0cN+KXiFiazkih6JmAujGYeDhgKHXYyBNBw+RnZwstk7
         JAoFXAv0l3Sd9wu6aARIkHP3RtgvBTgMbKgTq9wkGCtROUy7aS6DAOf/1ZwlE2FdZWQL
         LmuTIyH4voviB8zCrWhPabFUzNJoVdcGrqk9NHoh2yrzCARjAGjHU+kFKDKQ4nciK5oj
         0sGzYI4KuQj+Y+6zVC0EdRfglzqv2/9nNhr7y1zPWAyOS5d6/hzG2TLZej5Py23MdIOX
         9RqY+ePaDTT4fFdVtDJk6bbe3v9WOwrWYyZ/fxCcaMSzqDSViXpSs0s8LRM8xrnbPZKj
         XYSw==
X-Forwarded-Encrypted: i=1; AJvYcCUCZOP5LLLqtzODcCYyqcQze5PjNFme0NTA74+xggZi31enS7wCxD5BZRtahryMhWQsC3xOgA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzaIyS0e7oRww11MXJo17/xBC6mMDjdp5f7wQ6+TXHM0Jmw79dX
	TEM3kRfyMDkxfcQmwoTQ+r+mPnMC82TZKaZyB2HRmeJ1UxKVcWK4tfgok4mHWdfR+2gpWkuYWA/
	zt3M05qZRM57gvbcSRW3D20HmsfUnrfc=
X-Gm-Gg: ASbGncu0GIREUPVG7o+6hSqMTmUj80O44247ERBypACxn7iRtlVD/qNjTHtYQS+RAD4
	drbjEzEV8zuAbl4T/mGATGE6cX0HncdVgWRAiu+pF1G6pFlSZDBmBC90rGEYXA7E6LuS7ugFcwY
	0gz41X5wYJYqI1Elshq81G2jYxZDSjpZIoPN3HHp6dtTB8Eh+ryj0wgNGKvJCwaIsCVI2X3fn9h
	RYypfzMuOdetbZscskrwy6BckUDdUhZOoGm6AnwU1UJG9PRLswOYOpGU6g40Y5YUDflcrBPWMv/
	bHAuy0VUXTsMGlqnbARwMZJC8lM=
X-Google-Smtp-Source: AGHT+IGUlUCSaKrVXBfXDSUg3A3GpkHjwU7Q9cBjNUOOx8A3CcoCei6lWT+Z9GPy5Ny+5S5ecOLid2TPP+N1uUBuvKA=
X-Received: by 2002:a17:903:a4d:b0:25c:5bda:53a8 with SMTP id
 d9443c01a7336-27cc561f897mr12428825ad.37.1758599791530; Mon, 22 Sep 2025
 20:56:31 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 22 Sep 2025 20:56:19 -0700
X-Gm-Features: AS18NWADSKLmk-7OuoGB9F5CR4i9Xpkua5m-5iFdvbSQO7RHPmk25hFUVRLIjvM
Message-ID: <CAK5yBb8hk+qROmkUfWectpVUdc8K_ZoDfarUTJJf2NoQGOnaXg@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e05829063f6febdd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Sep 2025 03:56:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65864

--000000000000e05829063f6febdd
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

--000000000000e05829063f6febdd
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

--000000000000e05829063f6febdd--

