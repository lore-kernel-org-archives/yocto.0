Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E68D3CAC5B9
	for <webhook@archiver.kernel.org>; Tue, 30 Sep 2025 05:44:27 +0000 (UTC)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
 by mx.groups.io with SMTP id smtpd.web10.18598.1759211064325308951
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Sep 2025 22:44:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=AeGZmSUi;
 spf=pass (domain: gmail.com, ip: 209.85.214.179, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-27d4d6b7ab5so82809565ad.2
        for <yocto@lists.yoctoproject.org>; Mon, 29 Sep 2025 22:44:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759211064; x=1759815864; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=6jpAGnTCrXK9Euj+Yc5/fuNqdauEmZ4WTYIKkgSrYY0=;
        b=AeGZmSUiNEl1MybxM0FSrXmytVe8uNm0nLQHoAvx46gIRE/8Dn9fxcSAOwise0uVwT
         z9aGRSaqTVVpY2bG7Gl3Sc6Rl4mPXLWQE/1ltKLujQyZxlU2sBlKsoKjzFfEwlIi7bds
         hwU2F/8xmO7+UMyOxAN0uKCwIYIPj7uKnfHMuH4AGtIsxRL9PoLBl3abyCZpZ3MwIjpv
         T4VyBLvZM4qCvzngorAibWgWpCqZSjz+68H5mLIQts4mS3736MTGOWIHJqNTXzfaP1t4
         pe/7JWPWmERAee6i+7wq3sE55/8Bpdsst3Irj74HFUo9oau2dy1kgUxZ23hQEGsj9k8W
         kzJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759211064; x=1759815864;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6jpAGnTCrXK9Euj+Yc5/fuNqdauEmZ4WTYIKkgSrYY0=;
        b=Z3RG7MvDrsGJ+jOzyrgerjzmpkfPk2OVaJVscPKdWcRvJ2O+mMs+rff04amv/VQd5j
         nQf+28qeQhI3WJub1+cDoWk+QGq9mdODYAXU2QVzmPGkvg21hmFxfJzaV+UwBPCyX82m
         MPNV4hbGkwMM2BReeZJamN2ZY5CRNN3Ky7+tXv+Sg+Damn/XxgZJ26apzPg+7aGhO8d4
         qI/z8QR4c2AaSxYtvAOJWqleDHuI4X4Q+KjPjyicXoflqjq4Onnvzsskti5BKVYyke1z
         JSe5Ff4i1RFMRTfFEBIYYw4BsN+n79hJpd0mvhAoDtPfPOp4truzlq06/jX3Opw7xGba
         ipGw==
X-Forwarded-Encrypted: i=1; AJvYcCWPrf1v7+WEHR3qc/oLZFJufxUjkMVq/L8bWtoScHZMofuyHvNZ9CZrHO6jXDJBgC73thBKdA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwLgdjkMrUxq0QVCiYscSGyLptB0j9Yjuac4scU7AwKaQBB35RD
	8AhNVa5GUwY0lbINFdc86xkkqb4UF4m0uMH3woVJtny++veLUcHikSkSAcPhfq3Q7SASNeikN+d
	2BUiph+peCryN09Y3g3v7kshHo1vFqrY=
X-Gm-Gg: ASbGncuSEX6uCpr8rDfzTL6P20IV49X0Ka/hrm6mILY43Pkzedo+gOOmcsRY3X4nnfZ
	W1fpFlEvOgIeULyDAraRl2ZtwL4Dg1SdVMeYVJdQ6BKIVAArp58HVExk5Fybvm/OX2iRVbgwDay
	GLMQ/BL8vdRoGKMwrdWDlujOgtvI27J/G+KezVYK0m/MEVZTocUtmPrrCUJL4U20/id/67WlKVO
	41I+sxI0oB4Rn+q8sEyYGfP904w1zkxPXxD7wLIjvUzDB6K6oU0pWQMh57e0aM+VhVN308Fj/gj
	eHK95vg7AHHBVxm+17HGN/jk0kukRWqRKlL/g0I6nZ1fYDTGfmo=
X-Google-Smtp-Source: AGHT+IF5x1JidUB3vyAAyEH4jEpstBCZRWA9lTBRklDlFvyVr22NiaA60yd8UTg6XiXvkQq67A92VYqv62UXMKdrQgs=
X-Received: by 2002:a17:903:27cc:b0:269:63ea:6d4e with SMTP id
 d9443c01a7336-27ed4a3de18mr145304315ad.37.1759211063580; Mon, 29 Sep 2025
 22:44:23 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 29 Sep 2025 22:44:11 -0700
X-Gm-Features: AS18NWALejbyHdhTltCjo3zvbdHD3v4HRkGg2wHA2JKAAjtGMQCRVCDew3f9gb4
Message-ID: <CAK5yBb-PtQyOr60E8cy=rmSy_8r-2YnrZqiEkz0=LVtJaqiaKw@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000087a03b063ffe3e71"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Sep 2025 05:44:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65888

--00000000000087a03b063ffe3e71
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
team) are therefore going to start reporting out the currently 468
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

--00000000000087a03b063ffe3e71
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
herefore going to start reporting out the currently 468 unassigned or newco=
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

--00000000000087a03b063ffe3e71--

