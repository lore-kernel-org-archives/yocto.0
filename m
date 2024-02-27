Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3799CC54E49
	for <webhook@archiver.kernel.org>; Tue, 27 Feb 2024 06:53:29 +0000 (UTC)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
 by mx.groups.io with SMTP id smtpd.web11.6912.1709016807623855343
 for <yocto@lists.yoctoproject.org>;
 Mon, 26 Feb 2024 22:53:27 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EpiazkKT;
 spf=pass (domain: gmail.com, ip: 209.85.208.42, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-564fc495d83so4470120a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 26 Feb 2024 22:53:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709016806; x=1709621606; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=mEl5f8sVMdU4phe63YlTGObV8y3AnAPYn2+C7SWvTfI=;
        b=EpiazkKTp5gllaW9OWStghFFgmIWZLX2rlgcvEuv3tUjJFI5tSdTzU8TbhHTQz4WUo
         yVgXU2e3jO3WYzW7ficV+UNQoR86u8H4pIBgTl0tELqkN6f4H5+DgXEDJBYQdybcg3kY
         /w5USa2wvcZVzWj3sI97tUxrw7oymWah6FJ0f9mU1Tm0Iv4yYcv0hirt2RgBbRrAui6K
         w11yLM86xvoAdUELXjiv0BG5tc4n6Pdc9X1UUAyCYJ3uztMiNT1XH+A2fXmpLDI1Uyy+
         izv01lLOf7Pl5Na1/7fXqa3h3Trp68Klt6rB0OYaP5C1X5fX29z+iKeH1JzOSAV50mGc
         PX/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709016806; x=1709621606;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mEl5f8sVMdU4phe63YlTGObV8y3AnAPYn2+C7SWvTfI=;
        b=Buv5p+qvNOaoZb16k4Z1202JTg+jgRg7KljbEy4Y31wuVbbPy+TKgvL4URSurtuPL9
         xDkhkAOl0ZBcvSuUPYC0T0PJMbRuQEtnD2gm/whRdM7cUZwdWo3RJFhFQLRQsewKLOWP
         WaXvLjyGTba5iiseiEkx7lEvUkPX8Yj3VXp8xE8ejfRWPADJaW/i+gAN53X1c2myP1C/
         R9UhZfoRjn6eWL+YD+F7lQljz7nJAwB+7l44G0B3E50bFdaojxs7u6D2q/mnCNj8+/fb
         FSDWv9NJ1aoLJGaTxSOh/cTYFQzt9og49Uce/BnajlMyGqyI8iIuUTPY78HoixCis409
         2GZQ==
X-Forwarded-Encrypted: i=1; AJvYcCU1CfSIPGwNbb0iyxBT1drXvkVWBUYul9lxkRNrAzou1kWU+JbCQt4yaMt02QaAdvs3yTJPRwFtBlnTC9wUnY92asw3PAYBB30jLhhR
X-Gm-Message-State: AOJu0Yxfl7E7nH1bz8+JzqQtJv1EDlqCEYagLiMa2B5TnIpAf1VL73fz
	sYX87OG6XsU126Gf2lLrZe4HDQElOdbYKo0B77xR9W+0gM4V/kqkp22E2JSPDjGU9zvFsHbmQse
	4+MprCVBSIyExyMbcNrMp/3PKY3w=
X-Google-Smtp-Source: AGHT+IEuwm/ujhAY8lGRvl6k7yhB2AnZb/EbOB8CxDIZWvDf0qjliRT2msL27mb0TAmCStD5UuBnqqo5Ke70WsxNdTc=
X-Received: by 2002:a17:906:3789:b0:a3f:1b3a:1289 with SMTP id
 n9-20020a170906378900b00a3f1b3a1289mr6223982ejc.59.1709016805437; Mon, 26 Feb
 2024 22:53:25 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 26 Feb 2024 23:53:15 -0700
Message-ID: <CAK5yBb9JTw1Rw7tcnkT7wHCn4F7oRa1x=sAm1yHr3TsXBfH+Qg@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009a73fe0612577b16"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Feb 2024 06:53:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62614

--0000000000009a73fe0612577b16
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
team) are therefore going to start reporting out the currently 409
unassigned or newcomer bugs.

We're hoping people may be able to spare some time now and again to help
out with these. Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system. There are also roughly four different "priority"
classes right now, =E2=80=9C5.0=E2=80=9D, =E2=80=9C5.1=E2=80=9D, "5.99" and=
 "Future", the more
pressing/urgent issues being in "5.0" and then =E2=80=9C5.1=E2=80=9D.

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

--0000000000009a73fe0612577b16
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:11pt;font-family:Calibri,Arial">A=
ll,<br><br>The triage team is starting to try and collect up and classify b=
ugs which a newcomer to the project would be able to work on in a way which=
 means people can find them. They&#39;re being listed on the triage page un=
der the appropriate heading: <a href=3D"https://wiki.yoctoproject.org/wiki/=
Bug_Triage#Newcomer_Bugs">https://wiki.yoctoproject.org/wiki/Bug_Triage#New=
comer_Bugs</a>  Also please review: <a href=3D"https://www.openembedded.org=
/wiki/How_to_submit_a_patch_to_OpenEmbedded">https://www.openembedded.org/w=
iki/How_to_submit_a_patch_to_OpenEmbedded</a> and how to create a bugzilla =
account at: <a href=3D"https://bugzilla.yoctoproject.org/createaccount.cgi"=
>https://bugzilla.yoctoproject.org/createaccount.cgi</a><br><br>The idea is=
 these bugs should be straight forward for a person to help work on who doe=
sn&#39;t have deep experience with the project.  If anyone can help, please=
 take ownership of the bug and send patches!  If anyone needs help/advice t=
here are people on irc who can likely do so, or some of the more experience=
d contributors will likely be happy to help too.<br><br>Also, the triage te=
am meets weekly and does its best to handle the bugs reported into the Bugz=
illa. The number of people attending that meeting has fallen, as have the n=
umber of people available to help fix bugs. One of the things we hear users=
 report is they don&#39;t know how to help. We (the triage team) are theref=
ore going to start reporting out the currently 409 unassigned or newcomer b=
ugs.<br><br>We&#39;re hoping people may be able to spare some time now and =
again to help out with these.  Bugs are split into two types, &quot;true bu=
gs&quot; where things don&#39;t work as they should and &quot;enhancements&=
quot; which are features we&#39;d want to add to the system.  There are als=
o roughly four different &quot;priority&quot; classes right now, =E2=80=9C5=
.0=E2=80=9D, =E2=80=9C5.1=E2=80=9D, &quot;5.99&quot; and &quot;Future&quot;=
, the more pressing/urgent issues being in &quot;5.0&quot; and then =E2=80=
=9C5.1=E2=80=9D.<br><br>Please review this link and if a bug is something y=
ou would be able to help with either take ownership of the bug, or send me =
(<a href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>) an=
 e-mail with the bug number you would like and I will assign it to you (ple=
ase make sure you have a Bugzilla account).  The list is at: <a href=3D"htt=
ps://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcomer_B=
ugs">https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Ne=
wcomer_Bugs</a></span><br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"=
MsoNormal" style=3D"background-image:initial;background-position:initial;ba=
ckground-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sa=
ns-serif">Thanks,<span></span></span></p>

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

--0000000000009a73fe0612577b16--

