Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C5ABFF885A
	for <webhook@archiver.kernel.org>; Tue,  5 May 2026 05:08:58 +0000 (UTC)
Received: from mail-dy1-f181.google.com (mail-dy1-f181.google.com [74.125.82.181])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.32638.1777957733889446405
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 22:08:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=BDHknKGc;
 spf=pass (domain: gmail.com, ip: 74.125.82.181, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f181.google.com with SMTP id 5a478bee46e88-2f36da5c8fbso1167341eec.0
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 22:08:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777957733; cv=none;
        d=google.com; s=arc-20240605;
        b=e5k2dULrp86AmtlGdg81OwmTc5lDYX0TUysLt2MTXjG65k47az8EsU6MnhY2OhHuVb
         dr+OoIS4iUC3WcR3nWyzImjNhpsg99VW1ok5278+hJPlbjobZnjWaRp69agG2YbCeTkI
         qHqPgHh5I/hC2pEPsF0QPtusB7Hh7nXbhQdxtbRa5rAdWGdZsOltbCjpMluGc+5ArU1X
         ihqvwFPQOFyXGYru5/n37gXijpqUL5Pb03VnxtxQ03dTrPgNgbnzoBqlymzZtAB05ooQ
         fYLk9ny4hxDryrxC38a/p+QfrBgPsRP+Hz6rYyYtO7WHMkAp7rCDpFZjZcqIvN30FSZm
         2sSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Tj9pF9+FpSBmVP+YCQ6eQByNqKykO4h5CC6ixNWxFDM=;
        fh=t3ZJBogPYlqkZkiYSub1Lk00t13h5NP64KQGEPXavTg=;
        b=IoiBQE9NIDZuNq8/g5hnLFfkxNcEHaM7Xl78B6DrXPAL8Sr+D/659uO/flW4jvOIj8
         P88EQ0nFpVhf6bKtY9uvUi7ANAarqBTZdyMnu1p+RLNeQw89Gc/hCfkx+QgUMETT/B02
         RozYAOME1rOGTc3aDvTNJq4YAeMt/c+lOrFAa1J7CmGSWrMkJ5V+PJq7192JqbaCvXHL
         UQn/l1bPxfQEboJtBma+qIED35/+uVlUu+vo2Ff7OihzDJy7RauNj3nffNDPogx/JCIr
         jdzhIAvZRbpmK3lWnybpnxgcvrb/k2sVHhI3fKZPBTf9jwm/Ojj1tNI/sjhSpUyeA9QP
         huSg==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1777957733; x=1778562533; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Tj9pF9+FpSBmVP+YCQ6eQByNqKykO4h5CC6ixNWxFDM=;
        b=BDHknKGcRWejE0oO31oCyldB49Yrel3WrRttzGzBJ9ZFm9aJQ1Vt8JNHcM6uqbNzm4
         beMT7wM43X5UWGlG0P1YHY7OurNK9akhZX7Rd8EJ4hmhvtfJiYPTsruJ50CupPA6OUzU
         09Tjn1z0oImQ6CvQCSxuOAp+pFZTEAdh5ZYzroh/pXGP+mV47Prp8VlyN/ZOICI2bA/1
         KjC2cNyjBMV1mK2RhD6tBDw7Wx8ulFOOPQ4UNb2IACHy5jM3s4P2o68jk8t9UyQ7uutV
         847FfQXox4jairFOFXNPOyS8RWuvR2MUYN+TO6Cn16ErsYC2gx4F0mA9tXWqgfyqAWmj
         gc5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777957733; x=1778562533;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Tj9pF9+FpSBmVP+YCQ6eQByNqKykO4h5CC6ixNWxFDM=;
        b=Afyni57W2pxQkihAR20ipaSlR+zDf7pT1ppf7JygpC7J1m0uIS55QVUNGKKh5fUPKv
         V9ILdgDgcfb5CqWSRdnODXH4GLvN36eIzyBlmnPFnTeTl0y/WE4rKKUMNBu0Mkmis5Kg
         Xpozr0qG1E/WSsFUCdjnbIIQuy1eTShRpUFhNF81PVCwBGRbbTrz40lUMPBUnN83tOO3
         Y/PmEhsVCdkM8ZuU1PeWh7YWAn+53Yymm4OkAqFjMmybk5qQyy3ZMhsxUvs3A+1wVdk4
         1s3TSJETpLuQYWi+iBhinsiIlYs5tkDBeTW/LkIfaafRC5orGCgSGoi4+dbwv3fSwJph
         5DMw==
X-Forwarded-Encrypted: i=1; AFNElJ/5m0Z21sSsaH/BXTOiekgP+ST9Nd9nzOCbi5+yhun494mgPAqeWUiEzFl7fwFftYJa9895WQ==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwSn/As+HnnXUmmxv1qR1Ep/eLNVw15P+MdvShw2WuF2BmfbcD+
	KBe81XjNU45fj6PJfWuAMbOOFoctDQX6kYLN3J1vz8bHs1spKJuKNWLptXBaOpTYqlz9knO32fD
	qQwOfk+0a6bGx4eQHyv/XlORYxBS4DwE=
X-Gm-Gg: AeBDiet1hKd44C9LiNliiGRxFeJI6eKDNnoidsdSMAFnphZ5LXJytO3GRe44cBu2JjE
	lFLlemQBNkbU6W4yVh5MfRaAJ9tCSh96WtBNj07OcV7VCnRS+pI33rP8FV/jfLPUub0XcdpMbqi
	mpdW8NGYXHgUd8GPwIdEbs+WhYdBH2i6uBEXn9koyksOuSn7aon+9Pj5R/XMY9WHLVKTIaHrTNW
	hCMrRnZ7KIMZzD6OOk+Bq+/mMbnRpn4+8GrAEHRdj2fL9qclT92c08p6EyTerHjNzvaKZktKpPv
	47VCRHFrlUEpuJV/vcCkKxzXrmCM4qOZNDQSW4TxFVR4WqlL+hVRrfx2iY7nwpi43/MeIsoJEXz
	Bv0QKmxsP3O595zn43+Yq4//mpdQvrIsdpzgBacd4Klq7Q8iSP6ZMMqzIZq2W18ir10itoaDbto
	oRi6KegzZDM/snV5IpzA==
X-Received: by 2002:a05:7301:3b8f:b0:2da:44ac:6d17 with SMTP id
 5a478bee46e88-2efb9c865e9mr5264904eec.17.1777957733136; Mon, 04 May 2026
 22:08:53 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 4 May 2026 23:08:41 -0600
X-Gm-Features: AVHnY4KtGVtQH1lo_UvIfg_YZIkEFGT-Jwd3Y-80v-CgRgUiItYVbydgJBaaSro
Message-ID: <CAK5yBb_YVwNRkT4veo2gV5rKhV=UVwOmhuY+kxGpHeYgHjfw5A@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001bfc7306510b0bec"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 05 May 2026 05:08:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66478

--0000000000001bfc7306510b0bec
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
team) are therefore going to start reporting out the currently 427
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

--0000000000001bfc7306510b0bec
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
herefore going to start reporting out the currently 427 unassigned or newco=
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

--0000000000001bfc7306510b0bec--

