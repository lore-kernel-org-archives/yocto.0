Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CA5C77B7C
	for <webhook@archiver.kernel.org>; Tue, 24 Jun 2025 07:25:06 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web11.3086.1750749898746804995
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jun 2025 00:24:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F9DZ64oe;
 spf=pass (domain: gmail.com, ip: 209.85.215.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-b2fd091f826so3854963a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 00:24:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1750749898; x=1751354698; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=XN/Cvyt6JgcgYFKB3g7ATKxx/kMn2EK9buNTeYRwvbI=;
        b=F9DZ64oeZ0orAuZjhU0vBVvpPmfKNMf1W8AXHRXI8i70TWfnBCiEk9Jg59JVAFBXft
         BGHVA7J46FEAeYNQlrn17w/ue8a9JsFNjDU1qlnZLFlStBVHBVcIg3UKGQc/uG5zwCVw
         pTIv9pFD82cVOC3UOym44O8I6wjynAkVVZiYKi+1gKtgwnWlvuShWd59i0KxCXVaEJQt
         GpLYJ9Ln01+YAOOgEsFajCUSWmfzH9X8DzoGGdljzCK5KexWwXBYc4pa/Fn25NK7erKH
         4VoLi6NF2S/x7eJoAsmQOL7y+5K2rOI/K38qvGCI6IOq7hSQ1+vWYWd9NbeMMQy7AtqE
         Nmpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750749898; x=1751354698;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XN/Cvyt6JgcgYFKB3g7ATKxx/kMn2EK9buNTeYRwvbI=;
        b=Yhephy9+LHvQXqMGOR98HbaoB87AanDziwGHgkqcnJbREWCANJjSFWlduLQ0jzM1ba
         WMBIkXBCM02NLfH+8iZP9m43b/W4xtijggqFEZ552UAc5TvVZSJzgKmZV6T9LpPQ5wja
         F4wYHFBRAbv6RxsQxMXAXZfUJeY4GzFMrgXynR4tt9/MhItvnXJum3u4ODKkR6POrL5n
         sgZsYuUeFytCMmdOOZ0/+WmgM6dXicrnqwjNcZ94UEvkhp8pHo+TEaUJMvWf8ECAK/ol
         bvcZh9x+mOaxLC+XbrZbLrQNSEuvRenNal/fmRb1d/Nczm+pKyD+N3UKIS0m5eR2giZi
         BP6g==
X-Forwarded-Encrypted: i=1; AJvYcCW4cgtnIwiWs72VgZJ5HuVA87/NgrNWa/21EREDcFqSe4374dc9niebLvQ1pgpT/PZddFA5og==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yx/vyTezUzFz4ogS+eOnA+EwiR0shujqQiqa+QydsIjiKTNg6uQ
	JG4R/a1DmE5ThzrFxs8/e+K8Tm6qjMRqekkfBPPrH00Cfc42TTGEik8hStZ1iePUYthBLB3m7Ut
	Ukv/HVOGyXmiQr8HXDwl4dSU+bJ3uPKk=
X-Gm-Gg: ASbGncuboE/kx2wcczaR5ILL0sm5Jf0Ja3I0tQuDtqw3OmlthvtkMGHDWOsRmgwva79
	rTlFe6dQR2bP3IiPJlYThR+BCIV1LG42gr+RgzICaPRPqp7+w2Rifdqi8csUiWfjYCe0I7r7PlJ
	rEgiYOMVXJc55N1UypPBLfuP9FYM3I3Tosz6ZicPdOapriUWqgbXDgB0+8cxFQXcuOmJAIgtJAp
	QuWvIm5Nw2liFei
X-Google-Smtp-Source: AGHT+IEAUd2oro+pyqYq0ewVfxX80fJYXbhPbm63cXmryfivlSA18N0Z+VEkzDpIsGvfbd32S2c+GToPBa9nOKIXoWs=
X-Received: by 2002:a17:90b:1d4c:b0:315:9624:37db with SMTP id
 98e67ed59e1d1-315ccc488b0mr3250151a91.3.1750749897830; Tue, 24 Jun 2025
 00:24:57 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 24 Jun 2025 00:24:46 -0700
X-Gm-Features: Ac12FXyHYsnSvd4MPrZde_w1obPFdq0AsokWZNuEO9UXLEqqN7R4mGmuiiWYWQw
Message-ID: <CAK5yBb-1vV8S5ET4xrcTy=b8Oe9dtpq6udPE2M7S5nQ79YX=cQ@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c033ff06384c3922"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jun 2025 07:25:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65536

--000000000000c033ff06384c3922
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
team) are therefore going to start reporting out the currently 458
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

--000000000000c033ff06384c3922
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
herefore going to start reporting out the currently 458 unassigned or newco=
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

--000000000000c033ff06384c3922--

