Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4BC42FB5183
	for <webhook@archiver.kernel.org>; Tue,  7 Apr 2026 02:50:45 +0000 (UTC)
Received: from mail-dy1-f169.google.com (mail-dy1-f169.google.com [74.125.82.169])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.71320.1775530236784628624
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Apr 2026 19:50:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=JhjouAur;
 spf=pass (domain: gmail.com, ip: 74.125.82.169, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f169.google.com with SMTP id 5a478bee46e88-2cf1646bd11so3116977eec.1
        for <yocto@lists.yoctoproject.org>; Mon, 06 Apr 2026 19:50:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1775530236; cv=none;
        d=google.com; s=arc-20240605;
        b=fcytICs5AOfvnjfY2n4GpLz7zY8/tPEl4N21ol/tIifjJdtD1MFS8ZGUsl1PUa3wkR
         YbJQj2MWXS8BhcE4VmXT3YJFl5P5CCjZ6LI2JcE22i12P1xPfqos7ygsUFxYbbws154K
         B88vPvNI8c8ZHIec5r0xmwjYcvhTBElUI05zZlSEoRT+KeqO9KRPV0s3QegA8kpiVP9g
         tefcvU7+pEdjjl93V97F+HdBT+arcc96mRAeeA+WaqhhjEcxNri9QBzmSyF/FPMjfWX9
         YphGQ3anDGkdpuDhsWjy+Y2EJ5p97oVpe0ln3ePdsw1ZEpnCQ9bsRaIbxSQF/7gGzrR7
         Hh1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=qOaHtKVocrC0q59dfApOVWaVmdslsS+hGVzkGn+UZzU=;
        fh=e/zLTafGCXz5wZjhYfuAIAix4QLTNYw2M551ExGKTMQ=;
        b=KvxOkHIccMnRXpWm8f/FYxHlyW2MHoj5TpNEeSydn9x26SRDC1m/opkEmTo4Vip971
         L6jVnLBO183hYV7XlJ1/FrIzS4sEUY86PGTbOJTwHzl1J1qmCrxXm5Jq44b8Cx03Bmw7
         9Xy5UQsVfoZI0diHRrEdhWUBwjI695W15eRhI3h2NxgipYNt9z1Sg3WXI5tg6OXdhbT5
         neeKARSyGlqPr1KQzXbMdK4+gVXsluCJL2sAeKuxoj+aNIEkwjZBrrvZFZDQhf6mLLFO
         TpJ3nJQ2vLv9QJcfxP9fFyj66RlfXew/Yrj9tMMBIa6I4/4YawVu32YBn8MSmyywu8d5
         IOtw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1775530236; x=1776135036; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qOaHtKVocrC0q59dfApOVWaVmdslsS+hGVzkGn+UZzU=;
        b=JhjouAurjgId++DWGkhn6V2Siv7J+UWQ2INzgeOaW9bOpa+ExQ4qRJXoElzrpnyb8J
         Bhxxg3MmlMygt8fqkf5iRXpvvWMTXJKdlFhF4vRK3TalmicJ+5pDry4h4VMV7EGMhvmf
         m3mFpU3K3JxtFhjqXIop4nYh8yMukxFUfu1GjpVyPMD/rHLUUPoScZCOVRFBHrXrmESr
         qbhn/v2aP0lhDqdT9zdTa1guPIprgXXq/xGvytu/9E45JC3sssF/824cSkyNSYelAle3
         Ppup3IWY6UYhmyD3FCay/+NOY8LLGcBv/7KvdrlJdhda/jlNTb5ERMEbDlJs79jhSI66
         Wg4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775530236; x=1776135036;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qOaHtKVocrC0q59dfApOVWaVmdslsS+hGVzkGn+UZzU=;
        b=BPfGL9f67DbqlSqeRfsw8Ehr/8LukZrBxaDT4gZhVp3CtdsRa6W7B2kgHtdZduJfgd
         jyqDblBrzY3PKdiiH+HFmtgpXjXJ38lKuqEQjVvV7albL6n8FpcSjZr21+X3GYl5yfUo
         IbZSaTYG9IY93trJpOY5cyhoAeQSXcotrkvSlVrh6Neo8SMbuDU+OpMbDB7+Hj3XLm6Z
         77i31q6BxVN7yMS6i+7NYLvhYTZns8hm+971tep4SwRStiY+dJXA3P+WHn6nR5MOfAIz
         Sh5g6OCUiwNwQJcjX6nzHAUtFlaFfvA9fwA15KVNPpE2tij37XL0Z+GJNFOjZO7Oug7S
         VfcA==
X-Forwarded-Encrypted: i=1; AJvYcCUSon12/6Yy+pUxyJ+1zyvyY0nllKRs13wA8NppE7FU8A+YQDTp6lXT/FzrYjXSYwOjCUzXdA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YyubJpkVwBt1cfQF04Z6KGL1EL+tw7+LHQsFW0UEQn/+DgdPjXv
	UH6vlwkuSeOOYpK1AQjjGRlEbrEvL0nMRxUlA7Gh4Iekn6tkrCbnoLuWkrYGMbpBoNETxDXem7W
	mffLbd1QYY93LB++JLu0QxCp+EwdDjng=
X-Gm-Gg: AeBDietVR49KDNEMwnyqWzwykmTXcaRuU0pCtUMtkkqfeEo/ELCNwspjdn9i0hNs4th
	7OANfUDnXx0gO2oKQH5NSond/QIzdKKR7QXzJOifLhYQFgeIGclMJDyK+tw2mr8vNGYFAHtlPDg
	I6a5fEO86obpFD4nsDjRCa+yAhSeWGVWkGF5TpbKbWjJO2gmgCvGydP4P08HGj83DeS1lz1ruYd
	F9+XJSlv8j6gNDtjyHOH2uASS/kjK8EuPdZUy1DTJ2tuKNEa/qZIbjYR0w0ZMfaXQuTD5nLWoew
	M8aMUIyu0QN7Ubt6j0+yJIKgJJVMkbQgELJh7ZH1BhLG6Ys2Vr/rZl6bli8JnLQE+F58yPUIhsD
	BgrH51IvIw77bh7gd+PzE8GNMb64=
X-Received: by 2002:a05:7300:e207:b0:2ca:8099:ffc0 with SMTP id
 5a478bee46e88-2cbf97f5e68mr8009865eec.7.1775530236026; Mon, 06 Apr 2026
 19:50:36 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 6 Apr 2026 19:50:24 -0700
X-Gm-Features: AQROBzA32I_ZD9bS7FHw_8m9FVCYtaEpeoNR2-A6Xf8_posowLU8TB9-mYTWCNA
Message-ID: <CAK5yBb8t-LwdyWQnXELLMBUWKD+ZxkMkb1xTde-3qDZkSqNK0Q@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000001a461064ed5d9eb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Apr 2026 02:50:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66386

--00000000000001a461064ed5d9eb
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
team) are therefore going to start reporting out the currently 442
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

--00000000000001a461064ed5d9eb
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
herefore going to start reporting out the currently 442 unassigned or newco=
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

--00000000000001a461064ed5d9eb--

