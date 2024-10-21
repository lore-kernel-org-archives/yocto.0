Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1B4E6D17149
	for <webhook@archiver.kernel.org>; Mon, 21 Oct 2024 23:31:11 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web10.6475.1729553464730422163
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 16:31:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MBAe4YxV;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2e2e23f2931so4013483a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 16:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729553464; x=1730158264; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=T6ayPsDAUjz1aXsTBRzBQO25mivODpyWggHxdSZ5rI0=;
        b=MBAe4YxVHs7aXvpqAniOOya9UOm06qzeMCe7lDY8s01c6X7iJrYjstzT/5L9h1US7j
         eX3VYiZ6oOt6NF1kMeu3q4/Jwyxlwi0d0ComCcX1v+t6zKMatQHbI7EIfpV6Q+Q37YBs
         6uKKFeeD/eHFW6XGDV6Qv/N2Sbq0azdpwOB3aWk8DL9mO0qi6naxhkAp22ztDEF8mbQi
         eCSND0okyfzD0tF9BLO7v6unA1gLrDdAty4iP6bxnQ0Sy11/ySaCp+RHZ1P5eGvIa0gf
         zmv1RkFcAeHlFaJlNcLQJ11NtMeyxvMWguRN9+t2cUv708YT9CFD9/DOJiRmYx6XjYIW
         gooA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729553464; x=1730158264;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T6ayPsDAUjz1aXsTBRzBQO25mivODpyWggHxdSZ5rI0=;
        b=iNPTRPuYVSLuWufJrHSdLFwcvvQFf/NhwxrsJM0FZWJYkgHMo5dNea3RuE6wB1TNtl
         aZb417jcVsRRQMm2xmwafjuEuBBQdhM5eCSPKw2gazNIH2BuilAUP0wmoyCqRo3FjKW0
         CUVGxV2UEsJANa7BNM5A2qXO0FP/D/Sf/mbH44fvzcGDO7kjJsFVZMAEjAr19sTRfj7i
         pSGy+vIlxurRYR7sQDNzLnG0EehWOPXd/H2jQmfX/VgErvVPL/AqeCk2pnYa2IiZ5ksN
         lh4GK09uM3kAJSnZXdBYqt+VNl6nPFWA2zHYnRr724uBXl7Oh+1gjVlMChYvWwP793C6
         RpEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUNiz6h14fiMwLlHr9ZnqAfH9sWDKtgSDYWDcIkSAHybSa4e4ddUS4+/r0d/6AZsv5ggJ1oeA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyU8Oal4Y8+j2yzWnnGIyPNmJxwZn/X+PATrUvQ1q9m7PBqifLi
	f0SZhr+fuFzz3IgDsLz7EtalySEmqsDVMks2IEM+ULA7VIcQV5DuBKVpxBak9R34C1y9419j02C
	JC97DqKKARxw8eXDdxtz/4g34ZgA=
X-Google-Smtp-Source: AGHT+IGApSu+rUMxDErPBVh2PdlUqOTBqM7qYTRprb44K7cYq1SN3ILitwozTpKf6ydO0Iz82K5xyrsOCUWOIjsujPs=
X-Received: by 2002:a17:90a:640d:b0:2e2:af04:8b64 with SMTP id
 98e67ed59e1d1-2e5616c5550mr16127734a91.7.1729553463853; Mon, 21 Oct 2024
 16:31:03 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 21 Oct 2024 16:30:52 -0700
Message-ID: <CAK5yBb_QbkoTDuOTR6djvfQL8GWUKS-cYkTKLoSPn2jJSAt4=g@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d54a0e0625050b1b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 23:31:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64073

--000000000000d54a0e0625050b1b
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
team) are therefore going to start reporting out the currently 410
unassigned or newcomer bugs.

We're hoping people may be able to spare some time now and again to help
out with these. Bugs are split into two types, "true bugs" where things
don't work as they should and "enhancements" which are features we'd want
to add to the system. There are also roughly four different "priority"
classes right now, =E2=80=9C5.1=E2=80=9D, =E2=80=9C5.2", "5.99" and "Future=
", the more
pressing/urgent issues being in "5.1" and then =E2=80=9C5.2=E2=80=9D.

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

--000000000000d54a0e0625050b1b
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
ore going to start reporting out the currently 410 unassigned or newcomer b=
ugs.<br><br>We&#39;re hoping people may be able to spare some time now and =
again to help out with these.  Bugs are split into two types, &quot;true bu=
gs&quot; where things don&#39;t work as they should and &quot;enhancements&=
quot; which are features we&#39;d want to add to the system.  There are als=
o roughly four different &quot;priority&quot; classes right now, =E2=80=9C5=
.1=E2=80=9D, =E2=80=9C5.2&quot;, &quot;5.99&quot; and &quot;Future&quot;, t=
he more pressing/urgent issues being in &quot;5.1&quot; and then =E2=80=9C5=
.2=E2=80=9D.<br><br>Please review this link and if a bug is something you w=
ould be able to help with either take ownership of the bug, or send me (<a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a>) an e-m=
ail with the bug number you would like and I will assign it to you (please =
make sure you have a Bugzilla account).  The list is at: <a href=3D"https:/=
/wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcomer_Bugs"=
>https://wiki.yoctoproject.org/wiki/Bug_Triage_Archive#Unassigned_or_Newcom=
er_Bugs</a></span><br><div dir=3D"ltr" class=3D"gmail_signature" data-smart=
mail=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr"><p class=3D"MsoN=
ormal" style=3D"background-image:initial;background-position:initial;backgr=
ound-repeat:initial"><span style=3D"font-size:12pt;font-family:Arial,sans-s=
erif">Thanks,<span></span></span></p>

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

--000000000000d54a0e0625050b1b--

