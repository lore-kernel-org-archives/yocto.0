Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EB263EB64DD
	for <webhook@archiver.kernel.org>; Mon, 14 Aug 2023 21:01:05 +0000 (UTC)
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
 by mx.groups.io with SMTP id smtpd.web11.119400.1692046861104328678
 for <yocto@lists.yoctoproject.org>;
 Mon, 14 Aug 2023 14:01:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=npC6FBrZ;
 spf=pass (domain: gmail.com, ip: 209.85.218.41, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-99bfcf4c814so637569966b.0
        for <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 14:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692046859; x=1692651659;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=bzBbScufnjiVkUAnwt0s1sk5Sv8fN2RaGe6qpc3cbV4=;
        b=npC6FBrZRvm5azp2hezw4w6BZT4hVnrVJpRZhBpYt8QcgJxAF4AgQXjZTEaVWhzakm
         7teslHBSLWEoUFGRldIgyqSuFXpUn0pW6A5oOprNQSHdYjggIjwC/qeZfvLuC4meEyHq
         1sQ7NKTSyx4CNR8s3NqFCOluQZTJalj0hJ3TrX4gqEpEikeybiysvX7J0gTo8Vj1qqw0
         hpgv8Vau62LqbjhpOt2FKzetAGMLgjFl37m33biWtkn3H2lW1+Kx37Z0TKfogRI/1NYs
         IhZE2SrrPcXnhfvHBpFy9LHgGg4/wsQSH2JZJ1Li0c3JNziPBA+sjmhE1NjUkD57xN1d
         oI6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692046859; x=1692651659;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bzBbScufnjiVkUAnwt0s1sk5Sv8fN2RaGe6qpc3cbV4=;
        b=YfGOmDprjORhStusdx2VKZ3AxkkH0A+R4DqB5K/9HF+ruldyy7t2p4ypxQ09fLI/fO
         JGXCpQlV238ENc09YZAW8yKQcbsP4K6sJ9UhtTombeHwxaBKQhwzqIxrfSBiLSjvL+zS
         t0+HwNA/SzaTOGRUUqMWb7v9Iws1Zdz1sd+s1Zh+3FkF4i0NEGGAqFlicdORigxS7mqO
         m19xkj7e5LOqS6AnR934J5/+Yvh7y6Dyo9G5m82Jqhxtc0NH4escszW0E+VQWNb1YYCP
         VxXh9jYDoPulkREoKsJEhLCEmWqJonJ6N+Q1DUaw9nVIdFdFM5EYFrOoNYO4Ngdzpdr5
         muFw==
X-Gm-Message-State: AOJu0YzGFmuL6Q+xi4Hsp/5EaVzDdVTlMvXgZRVhV8A5jiWSp+t0gbBg
	QsAu4uVrHVD3gkm68quDTsf1hBS4dgKMy8dhklOxo6ghFNyAZg==
X-Google-Smtp-Source: AGHT+IHyYvi5Il2CxQxXbHR0a09EzbcC5yh7oEMsULJ2yyNuJjA4DRGKCfQFjYw88u+mWxHSAyGSGyprSdqcZjnbZAY=
X-Received: by 2002:a17:906:21c:b0:99b:d4f5:a518 with SMTP id
 28-20020a170906021c00b0099bd4f5a518mr10083807ejd.13.1692046859085; Mon, 14
 Aug 2023 14:00:59 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 14 Aug 2023 14:00:48 -0700
Message-ID: <CAK5yBb-ctWy8Gz9FzvgKir2dfbaxMREGJ8x7SdLVXbA+vgqxig@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-core-request@lists.openembedded.org
Content-Type: multipart/alternative; boundary="000000000000faaab00602e85bd7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 21:01:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60792

--000000000000faaab00602e85bd7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

All,



The triage team is starting to try and collect up and classify bugs which a
newcomer to the project would be able to work on in a way which means
people can find them. They're being listed on the triage page under the
appropriate heading:

https://wiki.yoctoproject.org/wiki/Bug_Triage#Newcomer_Bugs  Also please
review:
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded and
how to create a bugzilla account at:
https://bugzilla.yoctoproject.org/createaccount.cgi

The idea is these bugs should be straight forward for a person to help work
on who doesn't have deep experience with the project.  If anyone can help,
please take ownership of the bug and send patches!  If anyone needs
help/advice there are people on irc who can likely do so, or some of the
more experienced contributors will likely be happy to help too.



Also, the triage team meets weekly and does its best to handle the bugs
reported into the Bugzilla. The number of people attending that meeting has
fallen, as have the number of people available to help fix bugs. One of the
things we hear users report is they don't know how to help. We (the triage
team) are therefore going to start reporting out the currently 423
unassigned or newcomer bugs.



We're hoping people may be able to spare some time now and again to help
out with these.  Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system.  There are also roughly four different "priority"
classes right now,  =E2=80=9C4.3=E2=80=9D, =E2=80=9C4.4=E2=80=9D, "4.99" an=
d "Future", the more
pressing/urgent issues being in "4.3" and then =E2=80=9C4.4=E2=80=9D.



Please review this link and if a bug is something you would be able to help
with either take ownership of the bug, or send me (sjolley.yp.pm@gmail.com)
an e-mail with the bug number you would like and I will assign it to you
(please make sure you have a Bugzilla account).  The list is at:
https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcome=
r_Bugs



Thanks,



*Stephen K. Jolley*

*Yocto Project Program Manager*

(    *Cell*:                (208) 244-4460

* *Email*:              *sjolley.yp.pm@gmail.com <sjolley.yp.pm@gmail.com>*

--000000000000faaab00602e85bd7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal">All,<u></u><u></u></p><p class=3D"M=
soNormal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">The triage team is=
 starting to try and collect up and classify bugs which a newcomer to the p=
roject would be able to work on in a way which means people can find them. =
They&#39;re being listed on the triage page under the appropriate heading:<=
u></u><u></u></p><p><a href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triag=
e#Newcomer_Bugs" target=3D"_blank">https://wiki.yoctoproject.org/wiki/Bug_T=
riage#Newcomer_Bugs</a>=C2=A0 Also please review:=C2=A0<a href=3D"https://w=
ww.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded" target=3D"_=
blank">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbed=
ded</a>=C2=A0and how to create a bugzilla account at:=C2=A0<a href=3D"https=
://bugzilla.yoctoproject.org/createaccount.cgi" target=3D"_blank"><span sty=
le=3D"color:blue">https://bugzilla.yoctoproject.org/createaccount.cgi</span=
></a><u></u><u></u></p><p class=3D"MsoNormal">The idea is these bugs should=
 be straight forward for a person to help work on who doesn&#39;t have deep=
 experience with the project.=C2=A0 If anyone can help, please take ownersh=
ip of the bug and send patches!=C2=A0 If anyone needs help/advice there are=
 people on irc who can likely do so, or some of the more experienced contri=
butors will likely be happy to help too.<u></u><u></u></p><p class=3D"MsoNo=
rmal"><u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Also, the triage team =
meets weekly and does its best to handle the bugs reported into the Bugzill=
a. The number of people attending that meeting has fallen, as have the numb=
er of people available to help fix bugs. One of the things we hear users re=
port is they don&#39;t know how to help. We (the triage team) are therefore=
 going to start reporting out the currently 423 unassigned or newcomer bugs=
.<u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p><p class=
=3D"MsoNormal">We&#39;re hoping people may be able to spare some time now a=
nd again to help out with these.=C2=A0 Bugs are split into two types, &quot=
;true bugs&quot; where things don&#39;t work as they should and &quot;enhan=
cements&quot; which are features we&#39;d want to add to the system.=C2=A0 =
There are also roughly four different &quot;priority&quot; classes right no=
w, =C2=A0=E2=80=9C4.3=E2=80=9D, =E2=80=9C4.4=E2=80=9D, &quot;4.99&quot; and=
 &quot;Future&quot;, the more pressing/urgent issues being in &quot;4.3&quo=
t; and then =E2=80=9C4.4=E2=80=9D.<u></u><u></u></p><p class=3D"MsoNormal">=
<u></u>=C2=A0<u></u></p><p class=3D"MsoNormal">Please review this link and =
if a bug is something you would be able to help with either take ownership =
of the bug, or send me (<a href=3D"mailto:sjolley.yp.pm@gmail.com" target=
=3D"_blank">sjolley.yp.pm@gmail.com</a>) an e-mail with the bug number you =
would like and I will assign it to you (please make sure you have a Bugzill=
a account).=C2=A0 The list is at:=C2=A0<a href=3D"https://wiki.yoctoproject=
.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcomer_Bugs" target=3D"_blank"=
>https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcom=
er_Bugs</a><u></u><u></u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p=
><p class=3D"MsoNormal">Thanks,<u></u><u></u></p><p class=3D"MsoNormal"><u>=
</u>=C2=A0<u></u></p><p class=3D"MsoNormal" style=3D"break-after:avoid"><b>=
<i><span style=3D"font-size:16pt;font-family:&quot;Times New Roman&quot;,se=
rif;color:purple">Stephen K. Jolley</span></i></b><b><i><span style=3D"font=
-size:16pt;font-family:Tahoma,sans-serif;color:purple"><u></u><u></u></span=
></i></b></p><p class=3D"MsoNormal"><b><span style=3D"font-size:8pt;font-fa=
mily:&quot;Courier New&quot;;color:blue">Yocto Project Program Manager<u></=
u><u></u></span></b></p><p class=3D"MsoNormal"><span style=3D"font-size:9pt=
;font-family:Wingdings;color:black">(</span><span style=3D"font-size:9pt;fo=
nt-family:&quot;MS Sans Serif&quot;,serif;color:teal">=C2=A0=C2=A0=C2=A0=C2=
=A0</span><b><span style=3D"font-size:8pt;font-family:&quot;Comic Sans MS&q=
uot;;color:teal">Cell</span></b><span style=3D"font-size:9pt;font-family:&q=
uot;MS Sans Serif&quot;,serif;color:teal">:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span><s=
pan style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif">(20=
8) 244-4460<span style=3D"color:black"><u></u><u></u></span></span></p><p c=
lass=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Wingdings">*=C2=
=A0</span><b><span lang=3D"FR" style=3D"font-size:8pt;font-family:&quot;Com=
ic Sans MS&quot;;color:teal">Email</span></b><span lang=3D"FR" style=3D"fon=
t-size:9pt;font-family:&quot;MS Sans Serif&quot;,serif;color:teal">:</span>=
<span lang=3D"FR" style=3D"font-size:9pt;font-family:&quot;MS Sans Serif&qu=
ot;,serif">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<u><span style=3D"color:blue"><a href=3D"mailto:sjolle=
y.yp.pm@gmail.com" target=3D"_blank">sjolley.yp.pm@gmail.com</a></span></u>=
</span></p></div>

--000000000000faaab00602e85bd7--

