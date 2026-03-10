Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69FF5EB1064
	for <webhook@archiver.kernel.org>; Tue, 10 Mar 2026 14:58:39 +0000 (UTC)
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com [74.125.82.49])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.42029.1773154709607214526
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2026 07:58:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GTBUkrgM;
 spf=pass (domain: gmail.com, ip: 74.125.82.49, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-126ea4b77adso15924757c88.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 07:58:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773154709; cv=none;
        d=google.com; s=arc-20240605;
        b=ZxquOzw3DEOJRol8+ICgvo0aToZM4M182g06bdRQPV9IMY1+YA277EMFTFaJSBo/lW
         HsT2itgvcckxm3BJJd27b/JWXql3uighDtyb+zo7ciWQE6daBDScSLsvmMvjU7ED3ZVv
         YjD2SB7Fp3c0Kn15ZmjVLzs1IQlcJyVyT8IAlbBIoqTKvbVrmAQRwy9w8xC/Y5ZvCpHR
         YREQo9U/Hd6sBnTM1NAzKYF7Slj+zNW1wCesDoNZhZ2hNrosSDK4Pzq+AUsIzUVxE5EM
         +9MJtu21i8qrgzbkhPacud/Ti9+xhaT+ZlMICAi47Tfcndvnm+1aiZh3bvV/IbFRBQON
         eRFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=A1QIrsyK1lC9BcaNRW2k0qeTAC9CVbE6NxBdd1wz7Jw=;
        fh=1yLgFnSp0TB1n68Aq7+t8my45Zzlnbx+XWL9kdJmdQg=;
        b=GXWwy9xh/E3Ji61q5vbIuI19oOlCdjnhlm7gZLPns0eQ8aQ+IhfhtT7u1aB/wfSwa/
         +/RGUbxKPhMWFGjudUuQWU/Sz7VHHjpvHGQR6xh0s+0Uq+DSb+fSw7xOePHbdlNWnLZF
         juSLrTej8pL7QQkx4eIMUoUejgTBo+u+LZgfRztQ035Cv5uKy69EHlXo8GYnMqJntjfb
         RawUutJj89ZGKaM4x0EnjHzu9FWtrrhU54GL6F9qZQVWWCSGJm0xRlIfOKznN4A6XJvY
         jMIXt1U/9m8MT6APPPUtuqDHuIJxqResNoxEtzi8ImIcyvZ5Z7X26OQ765T44R8yYELG
         UyeA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773154709; x=1773759509; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=A1QIrsyK1lC9BcaNRW2k0qeTAC9CVbE6NxBdd1wz7Jw=;
        b=GTBUkrgMB0kTwolOTQslRRjAPzHfojSqcG6N8Tk3VTpZn3hfgqJSjqfr7mwMGvwDbJ
         rpVNXn/Fod/fcPtAHGjtB6iYzQmLnUbvo6jgRyQfOXq73gUic5vUWw16eWQjNdAi3Fph
         mDahkvq8lAv9PoyRF25GowsQ6uBtlEArruSMrGmbAuPO1dfFBv8XR/ka3v97+EzATCy/
         ChLH4haGx7UbjLhJOzrgrz1sixA9oNmrWss4ToXKC1R3HEWifvfFm4mgODxuWvHtCoD3
         lsRnsqHVEY/00hrsYVV7xwaoHkoWVsfSWUkqjL4EnffQFAD4KVXoUJ8gC7hnsgDQHnAm
         /K8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773154709; x=1773759509;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A1QIrsyK1lC9BcaNRW2k0qeTAC9CVbE6NxBdd1wz7Jw=;
        b=Pf2gsYLA6ZqLITkpd6V7Ky5hzAKwDUi8mjVV2z1JkISgbTTpFaFwJRDGRB4Cy6B7Yd
         z3uiDfFxtTOy2FncDnhJK1efly6JUHNVJbXm14sp2Y0jHPdx9ZBYePGRxsgo67j0hFA7
         lpDngRdBAmidXdF2hQ2HGB4mA9cMUgbcQHexIpMJXC8juyrG9v0gafrSEKZNt6y9N1BH
         FlF1xeqzvTQDD3xixDEfpqEGvXP+v+1bNw7T2ZYY78vjUpi3Tl63M6NQnkCTR30GYpqF
         ysRxoPrt1lJE+WjXQH7yweNXDPgdaZour8Uv08cJPBzI0ZoCE2nsFJxhDddDIn1hDwGn
         7ajA==
X-Forwarded-Encrypted: i=1; AJvYcCW7llxRVRBdfTlV5DZnLviUmf1ONAGVXh9SNxFy3r+9Vwi3L6BI2KKkhMshWAoz439bMaHPfQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yw48YuxHuRvTrlJT9ZT+4x9CUuCJxNfdMB/H0K63KGHE9q12CuS
	B5qGYhulEfe86c6kVCJKelnDpL6OsSrn3Y4xjuDHevB+apyLSygZlEEw5WnbHjAzQJtM9Ao3bV7
	CXr0ON1EWlEOxhSd7l/dWrtKkytz8T2s=
X-Gm-Gg: ATEYQzzArJbXugOyJiaumkHeP/FucRwzKCQTqmU9FABSojSgQvBTA1PnyG8vjO/xjbp
	f/9OTcoVyYT/gpiFaL/jgu6mtysfcxiLCq8vg8l2Q/Tp6LNb3zB3GIeXUnwkO/W5GqMFMLNsFxQ
	S2pelm1gUAW2v7MW8t2JsVl1zuDZps2KObyXLKn2JHuc/PXusbEha3FFcc9cJAMlEsip4QcWt7q
	R6Vc4Sq2oT50BrCH8766hz0fNJRAu2FsPWLHoBkw0mbLr9S7XlfJjA+cpR7vpM8doYrwtvyZwd/
	4pwxlQbraUeok38C6OeDS2GLKvWGg9c870thggLb8sBrqYmyOyJkCa9ZhQAsduQf9ZSPAf/h4Rg
	PuIkHz83bK0ShzgCect04ohhBFqeedfLsnc7hAg==
X-Received: by 2002:a05:7022:324:b0:123:3488:89a3 with SMTP id
 a92af1059eb24-128c2e71a6fmr6240721c88.24.1773154708832; Tue, 10 Mar 2026
 07:58:28 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 10 Mar 2026 07:58:17 -0700
X-Gm-Features: AaiRm53x7oqsOVuwjB7u66MvoKzG-h0DQO1rzuq7ohF1izezlabItZ-BUoiPxPo
Message-ID: <CAK5yBb9hwRdO+cis9Yud0U3W8iyyzdjy=2qL_7OqTZN0amR8MQ@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008d435e064cacc067"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Mar 2026 14:58:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66316

--0000000000008d435e064cacc067
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
team) are therefore going to start reporting out the currently 447
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

--0000000000008d435e064cacc067
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
herefore going to start reporting out the currently 447 unassigned or newco=
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

--0000000000008d435e064cacc067--

