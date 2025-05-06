Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B8DC3ABBC
	for <webhook@archiver.kernel.org>; Tue,  6 May 2025 05:38:52 +0000 (UTC)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web11.70209.1746509924482611097
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 May 2025 22:38:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k9fB827X;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-af5139ad9a2so3482251a12.1
        for <yocto@lists.yoctoproject.org>; Mon, 05 May 2025 22:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746509924; x=1747114724; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bMk/uNu5Yja05HO4UIzImhUi0yKtPJH1osxE2eCCAdc=;
        b=k9fB827XGBu/b9lFq31Re0TcxtmKXDZD08hP9rhadBbTIcpp06MitaXbhH+z0+LpLV
         o56N+ctD0VUbdB46k7bOC54fKR3EGk9qxRPatHLkxPIuOMj1UenEsdkeRgCupTZwi7Lu
         qKkGqjxCoIxOYxfn9gtkhNLXBH4bwP1VxRB9H0al7AQIyNvBv2tIUFmQ9Xfe+SW0VyoM
         +jZZ+AqoBwvdj7jPWgoFpsfcGbCXr4mTinhTpva86zm4nJ/g6VA6UvUjn/DnIHpaf6Ka
         ZMkjckGez56mhMYcG6CjpHOT99I+2vkNxmyElxn6FPH9CsQzZfzJzOyCSyOcaA1xOnO+
         yOIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746509924; x=1747114724;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bMk/uNu5Yja05HO4UIzImhUi0yKtPJH1osxE2eCCAdc=;
        b=oFqMmPrTEUj8vDTfi2n2xPIWTVkYiYzwMNy8H8jMF+5UlQAX/6KsiBTHyFkxWkE+Gy
         ClFfG4njuYHoa+rOMPP52twlTm9bc/Qdoh73DiQx6bmg5ni46IOCGX93ejh3X0X0kkof
         W43jKsvyI/EmGotgQE1HEeyoAhKBeV3G49gtHKa7aJWTjvU3UoPYdxAac+sx0ZmJvprB
         AyZzwe7iD1x4WI6qYOajtp2sUkJySY7GZkUmSwkJXC8KQzbcgfUQjH5ACr7QypQBKAmf
         hk4JXfFl9Kfy+Nbxkvgy5lXHadjeNJin05J97CAgg7qicXUTEj8mawd7OIEGx0O7lZ2S
         H0cw==
X-Forwarded-Encrypted: i=1; AJvYcCXCOTI4G9DNbedFQmQGbOO6Q/+E3PiacI2PRAo3I+kvBjMI0DmdHmlX0aYxt930vHTUEfOZdA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw9SeKPOzf8JOk3FbQzBRqeF7JBOtoNM+b5GKMreo1Bfc4pLmf2
	XuMumCTB420rQaVJl9x9RDqbSKSHzWLr/S3DqB/DR9OIEJbzhe7LhFRtiL6lR/SrM3fNYKX5D1B
	xF+XDQmsU9x3EQbgch02H2Kb6vuk=
X-Gm-Gg: ASbGnct9kcsW+FJc7sIFo/9PXx1UEn0T/2A/CGEIcERDfxokWaS+y3CjBx95Gl+ydQc
	1TmllJaop6Y+AzaITQbyvduwuHKgicn5fbVCMEkyNCuR3JHdy2wiL3JdDpTA0PqAnwTWNv0ff0r
	ICzX8UCNOK7Ce4IVukdTDAipMH4tCp0SUdXgtDbdnvI4iaAsYUg2ng1jU=
X-Google-Smtp-Source: AGHT+IGxNmMFFcVSyinJujYD1LMnklMSIz6tB+VnkyVcTobN5CrQxDDmqPO7p2cZ3jRtxyYdN5moDp/gBJPT03tXEsQ=
X-Received: by 2002:a17:90b:2711:b0:2ff:5357:1c7f with SMTP id
 98e67ed59e1d1-30a61a44ef7mr15487758a91.30.1746509923564; Mon, 05 May 2025
 22:38:43 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 5 May 2025 22:38:33 -0700
X-Gm-Features: ATxdqUGQuuh7HfvpKmHwNuRtqQQ3KGuUEYRhMkAFRuOgnLyd4Lt5CqrNOhumVT0
Message-ID: <CAK5yBb8fOcB2e_sa3ZAYMG+_Y5DtjYUd+q8S8paSD-WyDxkamQ@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009740cf0634710755"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 May 2025 05:38:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65282

--0000000000009740cf0634710755
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
team) are therefore going to start reporting out the currently 441
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

--0000000000009740cf0634710755
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
herefore going to start reporting out the currently 441 unassigned or newco=
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

--0000000000009740cf0634710755--

