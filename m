Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636F0EBFD15
	for <webhook@archiver.kernel.org>; Tue, 14 Apr 2026 04:26:00 +0000 (UTC)
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.11587.1776140756030016841
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2026 21:25:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=IZcP/VH6;
 spf=pass (domain: gmail.com, ip: 74.125.82.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2d3eb307324so2631040eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2026 21:25:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776140755; cv=none;
        d=google.com; s=arc-20240605;
        b=FD7dlceUsggF0LwFbr7SSWscnvjpIRuR9m7VRi+Gxnhi/b/+AKYWM3E6KYPPu/TnFO
         k+E4E411+SJnePMK/sgmMQFwhRXkUeEnA/BsSmY0NTiKb37vYOSVL+J0s7ZKD81KNpbI
         CLxSM1jAjRYO8e0QNOxplir1C9EqiqgG3qOUi3Rsu8FbqCc2RFN7At0yA2t8wsqef3yP
         4HIu487+a2osA21rPVUW4kpX5BCGeAU/qz1MrKW4A8rxmrD4Kek8XXBW5exJidRuynj9
         6DB+WE8NNWBDYRDy9IeNHr43jjlNEPbF4e1e9410oCzGu7Powc/G0Q3LEk8CuNoycOO5
         oCag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=c9gpA5RWLQkNZeyr5o0rCse02cAXBNK5g1yt218wLkI=;
        fh=a3Rw4tmYnD7w/iZs1CBW5G3PwK2LQJNNbz0TC7UWH7g=;
        b=c+J2jer+iwRtqcu3TN/KcKdTldX3sIkxXE56lLM9M73oVFPuvfCLla57G6iEG1DmEw
         fprLFq5c9DugG3hRQ4Ts+WGM7Y27h3xzkFeZ0AwO0K9LDj/ZOs34lyC6vCT3vwpygWpA
         SoSgETy6JBSPAgNMas+DLCNxMfqUc2B7DvCC2w8FeG/1/el8+UQjIC44wk05ip7Kp3ia
         8606vqlLVEAajxXVHfMXQmwYhle8AWsmghfmUNQbaokipCQOvi2Y/ixssFCydrYDPLld
         fChX4r5DWOJIYqIBcUy/r5biLwqWDR6nE18M745XbavfvkiJSjZCMYLdvrwgVYLXpkV6
         Zr0w==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776140755; x=1776745555; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=c9gpA5RWLQkNZeyr5o0rCse02cAXBNK5g1yt218wLkI=;
        b=IZcP/VH6wieC7WYpBrlF1iyjUCcjmOnU8HOW32NWI/uVCj8/iKZeuARHEa7q66EXjF
         IaVm7Y8I9bYVkkDJWnNvVKH5HfzXY9Fz3FohuZ8MXN55TMDBHI9d/q9gqLU4ntX20qyZ
         1mFCyzXY4J0hnCecbDnapDSi1YKlCl39CL4I9uXE3r4pe97TYxLlEaBIkAh61dEtKmb6
         jSLUDDFS3mkS/vJwGccNrWIZEeP8Et/JWIY2yfhdKP/1PW4qlFNqJzRDlm7LeIaVohKi
         ehiwiegG168EgGlx4TsduQQp289XOZ+RAdceb5CPS8cFb8Qo300RZV3cJUETQahqzMiu
         rhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776140755; x=1776745555;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=c9gpA5RWLQkNZeyr5o0rCse02cAXBNK5g1yt218wLkI=;
        b=LlqbuLBkct1134pVbomurbbIko9zx5U2TNSHkX1Msq545B83+Rn4UU2Ot4r5ZJvP+3
         NNgGfCYwTOLof30RR6uOI/s0hC41GiCwT85wKkktpA4NKrJyhG+XNnCZYjndQci/6VGD
         Zjgbx5pSomgSv73B9cH2Rc6+fyCWQKxO7Xmssfk7Sra5lRam/lCTFIwT8mNjA24E+kw+
         dbOp23bME4kQDh13N+QZyYTxru9F0lCSjAthtu9XP+bbr3EjsHD6VWbLYggyMeuyy7uq
         lREcB1sg5IZ2MiMl3qF5N9qBEjUUAEOwi0FP9JtNpcZRgPcwZRJvHd/dcfpeB34RKO+Y
         FWPw==
X-Forwarded-Encrypted: i=1; AFNElJ+AGbDH7d20o54+Dl+IX2uA3qbjVrH1kUTDeL87anL7qz0XbU9fuPII3MIBKbLfGPu2eLF5Hg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YzaCAZP/v5ru4RhtrH197wPNF/4G9fZSWFxgk/H+OZSngxEzFmT
	6eWJpb71W1mut/kyjEcdiw3JTNFL1dn+ML97buGZwQzKjA9Dt5UL7i8Au70Bk2skCew5dr/rmx4
	mnSlL5dWp2fG2IUCyPTnOKuZVSe/v4+U=
X-Gm-Gg: AeBDiesVfMKJdLTkQZwxppqwXVnPnYwRLrMbA9zmjV04Ji1p/9V1V92fFj4mEN+g8AU
	6CGHMj3bXSrTnxqohPzr95FQpGeFFkADw0nE+u+pIZaZ1CPb9J88Gq548pCuRep9QZymOVs0Q15
	PiizwkoLQpnRgozfct+i5hNxucRPknT0Wysxg4YAHyBrBCAxpjcSmzQFYHEUfofTozhyp9VnQOR
	uQ49XNNecB89YMhEnnOxVjz8ioQSDgu41KWDc5m2JpjVTMUirvDSbhe3CYUgmLvfSxF29lI1MQv
	/aUVdwojAteJ1w88JRAZGx6wl04aXdywV2Y2ed/nhqsFUz3gw3d7Z3oBrFkmD1THH7RMlC/UoIE
	YSx81C+Z8NweG8soPoX/H5Sx0VxGZpVmvMJyS3A==
X-Received: by 2002:a05:7300:fb89:b0:2c1:7480:ff9b with SMTP id
 5a478bee46e88-2d4106c7c60mr9086306eec.18.1776140754747; Mon, 13 Apr 2026
 21:25:54 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 13 Apr 2026 21:25:42 -0700
X-Gm-Features: AQROBzDfJBCfO2gDGe6nWDI8T1IkkWGd2nVYHUKlavrGf3sfpA1ci4zIuHsLX90
Message-ID: <CAK5yBb9Mjth2ahOx4K-VTpTCM=c=zwz03D-swWz6Z=uhByP58w@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c203f8064f63fe46"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Apr 2026 04:26:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66411

--000000000000c203f8064f63fe46
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
team) are therefore going to start reporting out the currently 439
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

--000000000000c203f8064f63fe46
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
herefore going to start reporting out the currently 439 unassigned or newco=
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

--000000000000c203f8064f63fe46--

