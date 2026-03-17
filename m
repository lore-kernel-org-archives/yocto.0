Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5326FB5EBF
	for <webhook@archiver.kernel.org>; Tue, 17 Mar 2026 05:26:27 +0000 (UTC)
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.69801.1773725184616874526
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Mar 2026 22:26:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cFVNHoWN;
 spf=pass (domain: gmail.com, ip: 74.125.82.45, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-128b9b7e3edso1143143c88.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Mar 2026 22:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1773725184; cv=none;
        d=google.com; s=arc-20240605;
        b=X1SXK33U+xIaaGe+hiTNz8VCdDOzT708Lnb9DTCGdDPmgvdYWBQ4khGXw8K/iFxa7f
         xzvMOjOt2F1XpxNywLoYDNdVDIpazH7u/C7k8lZEvXeoUK/LJnJdtOfb0NFG8vXSALKy
         bJYmCwrV15J5KLt32MemtTy/acLTwfHa05GyFx18A7BQ6WdLcY5FioIS+VNKy5qk/bi8
         tF01axhYk2VA7X6XyjhPIjxj0uUmW0E704o5GXwZiVnQg1gzIci8aly3k6UP4QVlR+nF
         uwsZGIWDjU8I2N5vXU4zDVKuS2DMpC3e8ZWJjr0QrLbW43+u444AdOKaq1LOY018jAWO
         UqvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=QDJksY9myhq4ja4aUuOUCx6lXiH4BxGIJW3G5gT4QEA=;
        fh=Nwg4V/HJLbCnCQ+COEg408cmtv44L7pFSAJL3gIqL7k=;
        b=LvfRbfhAaj7scErdMuSCyphQdWCnerMfduXrR2DVTYCGzarIVb1v9REjn6lC7spS5d
         BX9N4T83idH/8tq2TfmV3RdUT3MMECKYFGJ3h838mms6FgGz1ncqrqgjDYP0clWo5xvU
         BGqYGhYlvdiVrAB8esMunf9UCXiNQ+aSkKRJnk5b6tX8oQyRiI8WSWT1DJAxEXZ5KHnB
         UeK4oL40PVsUJEWy7z9Cv1aXC3jBgHdTljCgeITRIob4RMZdEA0ScwPn7ESqixaMx33I
         z+C0Didh/dCMfRVuVnlu2WHzPPgvTihY3ov+DUWI0SBCWxi+NlgFGzidgxS6+DmV7mWN
         aAsQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773725184; x=1774329984; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=QDJksY9myhq4ja4aUuOUCx6lXiH4BxGIJW3G5gT4QEA=;
        b=cFVNHoWNGpNnXq+Bpxp3tzCU4CzknKfF9gt0P3sBQOh9FrI0vejqNKB+JSfT0HL87F
         JFMaI3bXdi6if00uV2XDzIbMch+EtIL6g375zu73y2GM/374qdHk/Z86156Lf9U3J6JA
         i3MddErlhZpic8fhvLVpHThXrxJKdAA9P2xNdMssMra62WRp1tveNejdhFlGVrD3qMUV
         K2cKddUwGtUCz3r6risbA4h9+nOpkoIgjzdIYA/cZkMkiI4YKzUeoKV5YXpppxdHdJHu
         G8NmYTJPbUhkSyQnbGI1IA/89Lu3ig1FcF2GJZ86u13GFeTtrccqbuv7XJLb07gLxKJM
         MLNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773725184; x=1774329984;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QDJksY9myhq4ja4aUuOUCx6lXiH4BxGIJW3G5gT4QEA=;
        b=kwaLopAT0C4i132G9a2+YsdRcabKEyhLkdjaU6n5iPG5Dov9yNYlcx2cwiVrEYZf98
         pM/C3yS32kxnkvSMGPHvYiXwCYVQ1moTVx/g2u4sAg/qmgVbTC0OW4E0WN+Sa4r0p6Q3
         19Xi+BOuOZB+PCRh7GWTgL1Q1sVmRGrr+c806fxtocPHBNETAa+vW/8Of1/QdSS7z5zg
         K0/NT1sANTTwhs8yRbLpyiehsZgaschm2icIt6y7NXdElJsTYsE2rrd3PPw5ub8k1jbi
         aIbzisgEUOYUNT5GciKBbrC/66gP1NGTaSa9vjTGGcPSpt9k3zhwmS+eoiHYQjb34aif
         OGdw==
X-Forwarded-Encrypted: i=1; AJvYcCWtTGDhdAI3OKzEMf4PSeGayr0hzyRKVdbEOOAQzCHWlTu+K+lPhVCNONc0efWTqddM3R2V1w==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxbK+NVa1xGii0vcbwDfVSkbAHogVSnhmhkOkCeXfQ0VpGR/rTJ
	6rTP86cM4bLSSS5VMuKO6bdVJ+UU7MFn1TRLJW7ABkEMzSuIZ0JXeS7VBbrni8dcH1B//T8C2NP
	BTh1K0D2Exq0or4p0NRj5zTNRunALHeo=
X-Gm-Gg: ATEYQzyYLAuIXHcGHq5X8ocPqJ6AgqwXWui0xeOuCb3JsCpQ5Gbs4TRQSGEtF3A/0uA
	obERdaSg8RkR46NjNM37XAZEPlZOLjsR1jHgLRUdjCB7aGdykmAGom8a745G/WJqzy6FlRwErea
	iU1ZXBlxsHkMrNW9v/fP02YZIx8QPxmy0GjGIda/GUsEFUwmIZUVR5/i5kRq6l8CPggsm23J0Xr
	FGCUMm+Nw+/lwIxKwLBOdAWSTnMLvJR1TR0g9hKFCuLvYlUxTn97bpqDCKm6OHid2a8BsRmSdk+
	Y4UcSPQyd9kUgj7z1OwyrubOYi5ihjPsUuz71qzjSI1xbg8ZZAVbkwsxbG63nfMygrFyiFTysOj
	W5nhT8KScqzp3am57oWWpW+6Aavs=
X-Received: by 2002:a05:7301:1f17:b0:2c0:c63d:e02e with SMTP id
 5a478bee46e88-2c0c63de76amr3084607eec.3.1773725183881; Mon, 16 Mar 2026
 22:26:23 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 16 Mar 2026 22:26:12 -0700
X-Gm-Features: AaiRm50TpLYJWtEx_1-ULy104X2VA8l20kyEsiXFQ-1RNxza_CQhaqUseWvf7GM
Message-ID: <CAK5yBb8aTfi8mbBZGMqWvkFOixu4cZK13yXe8y21r8sycY7FDQ@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000083b599064d319380"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 17 Mar 2026 05:26:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66335

--00000000000083b599064d319380
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

--00000000000083b599064d319380
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

--00000000000083b599064d319380--

