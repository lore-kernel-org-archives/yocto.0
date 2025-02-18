Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DCDCC021A9
	for <webhook@archiver.kernel.org>; Tue, 18 Feb 2025 04:55:07 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web10.12865.1739854506114850171
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2025 20:55:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KmM2A9F6;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2fc4418c0b9so3352494a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2025 20:55:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739854505; x=1740459305; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=WAVe3enCstUkJzSSdeMPjWP1XGW7X5IBWTHnueb6Rz8=;
        b=KmM2A9F6n2Y17MrNbwyafNG+0VduukyX2deef36wFH3wkSOT20YU/iWoclCUQmvER7
         NrO8WYMGz6cs8lTkDDJUzXhMdExsD+3MOEKccYXnFFSLz4CZ2IiLGKHLRC3HNcKfq/nX
         JrwDpXHAdCUi8Ortxf5lf0/k2Hvn0O7nBj16K7g6MV3kURhJEivyi+qQ+8hfeAnyMTwz
         wfGsBuFelx4YhxflEdIw/nVI89A0KcwnMGqBtVLb8sqPCwi6LHO2HPxOmow+yjVXugl6
         eUCK2nhdaayWD4iKpTu1uIO6I9Sl0N7QUHLVcsklD7dvHKEOYK1ImCKQ4BEwHqH9gM2o
         j4QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739854505; x=1740459305;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WAVe3enCstUkJzSSdeMPjWP1XGW7X5IBWTHnueb6Rz8=;
        b=mh6Ju/PCapDiOpWCMtehLWPhgV+s5PIlrouOIbIrFsYMl64fyUsPMPDfRe0FYkk/J2
         gKD0Pn7AjzK17HMpxmUfal8SKF7eaNqv016d4IAJLKz2AY2CtUYiaGiUiIrH5HH2XdUw
         4vclySlllTu6JdTts4EjOcZwvI0F/xqgf5T6aEuHkngjDUKgPMoYrG09dFN6/B/2YRk2
         J7hQJ/Xc8noIoj2uBQMT2Rja3dcZrovj6qLGOQbZ+AXEgRgYF3FY1uol9TP8GqhOTPWw
         xZm9B3POIb8QgB2O7uAa5pajbzwof0TzIsQTIqFGMIgKHlAH1TPAR+3RBPCzIdz/+jkm
         PBJA==
X-Forwarded-Encrypted: i=1; AJvYcCXnIDiglGaurvkIq2ivyqU8hnEkVWRJNgWKbvjsV5aSqfHpVYigryvX9iJrRpmYrjeRMMModA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx9RWlIbsL3VR8u1qAa419L0DZLt6Bi/dnIQCUm0gQlzf9tZwy6
	kaePEyW74/SOs1OjcJjEF5AMTr/DETZk1g9UZN5GFDll/xlhovSK7nht4vhkrzaigEvjxeKnqNT
	y98QV5fCYinfQV3euZoSm5yiQZEE=
X-Gm-Gg: ASbGncsIUdHUap2eCLX0vm6o/cVmpw6RKl8l1sfp29SaCgI1m4rn6viqnEZqXZZBXRW
	QEn0JtHdzhGxknzRRwvczAEuWeEaR5lP9B1wJQZ9VIm5YDlTNn22Js3HsoTrz/XgXFaHe0Pt0Tc
	+YW9LTDq6Ia5GTWp0GAf0BOXSDqYH7vGI=
X-Google-Smtp-Source: AGHT+IFDA2zZmN+w692Cf0gb7VUCnrnr6w32rznYEIakOEAh0enAc299RdYcI6c8rhFmbpVmuVooFrnNQ/UNSMJKThw=
X-Received: by 2002:a17:90b:3ec5:b0:2fa:20f4:d27a with SMTP id
 98e67ed59e1d1-2fc40d12e34mr20971335a91.7.1739854505354; Mon, 17 Feb 2025
 20:55:05 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 17 Feb 2025 21:54:54 -0700
X-Gm-Features: AWEUYZlbrjevHR71YKpu8Gga4FC9D_AFvvvFSmAdTnu7KDiuHkRg5BClEOrDe6A
Message-ID: <CAK5yBb8LnvGrsCfwCvSxUDhUyuMwXGGWWBHmO4veeP52eXLxxQ@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c0ad15062e63715a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Feb 2025 04:55:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64828

--000000000000c0ad15062e63715a
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
team) are therefore going to start reporting out the currently 426
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

--000000000000c0ad15062e63715a
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
herefore going to start reporting out the currently 426 unassigned or newco=
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

--000000000000c0ad15062e63715a--

