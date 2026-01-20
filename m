Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89AA6D2ECF7
	for <webhook@archiver.kernel.org>; Tue, 20 Jan 2026 12:15:25 +0000 (UTC)
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.5130.1768911321978376051
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jan 2026 04:15:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=k3tWViDg;
 spf=pass (domain: gmail.com, ip: 74.125.82.174, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2b6a93d15ddso5114233eec.1
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jan 2026 04:15:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768911321; cv=none;
        d=google.com; s=arc-20240605;
        b=W0ktXHuemZMEKrnJgCtY/rYNarV3k2VLLsM/pmNGnAfaGWAvMV64c1DoN079BFpXwE
         T/mB/r0k4ZzfsW/Ml7AEgH5TCNJvFepp1p+BP34d5t6wQpA6JDML8h8icJbhwj2y1mdr
         QFMbrOF/xKIucPa8A1EQlgCpcVvJweKPXoKz3x7ge2JZNeSJulL2uuHTnnPubsXohxij
         vRpPIt2Xl1UUTTod2/a7qJmSlv9R+WGKsJjSyFw22A9K94PXVmgLupMjzTaKicGS1es+
         VYEVdXd3qjizuSx5XK1wwhNAN6YKrdbqtvjboZC1FrP4MJKvT8xAV+DgUVWMLYzGYF9d
         LirQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=8UG5I//qhfAXVkYvAGOVU25HLrOs2wFLOVAa0Jjqqkg=;
        fh=rFfY9RruJq+t5veuQNSSScrSNN7PsSanE+Pw00gW4kY=;
        b=ZIZ6InvfJgoeGgyW4ciuY7hFHxSlRy2x204wzP55eRCT7WJAotdfaHnbIWco0yr7JS
         3ALIjvaekUWo8v7FwxYnWDDUuM+SBbDIMcipV1iG9uCyL3JGoOSah2Bmy3QO7Fbax6C2
         6p4TM5yimVEdR4j0eSm2xNzIivAoYClYp5f5O7vAV8Yrq6yhmZNFNkcg+rk6gafUZ9pV
         37FguxU1sMvj8FlYj8kUY5QKbweNKGkrTbDxHhwc1MvORsPx9asSvH19XEBrNKf6aFGd
         POjJQkAyv/0asRQW0jQXLQL2IAlJanakczj6mkRkVbd2cXQ/SxeLr9Ji1IRfoRZsFbE8
         ocOw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768911321; x=1769516121; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=8UG5I//qhfAXVkYvAGOVU25HLrOs2wFLOVAa0Jjqqkg=;
        b=k3tWViDgYVzeCg3LbIQA+arXmiM0Ele1BhzBKqp3YUjvS6FMn+UW+5JrQmbHGdhgny
         4ROTv0axPLKaPKXXopg+y7lU2+WUNi2SdhO43YTbe79Yf84DJhBJMYpnQmJqa3aDrvfl
         MsM/z7QKfHG9azYUS95VTT298ExKrRS1FXKoXnu/ozu50wu3Lk027QZEZRP+9pjdOnGh
         o4vJcylw+4CpanPXkW4iHcauBrx0j8BLCTuxK2QcumSUAXjzatGo4HvpD3WzN5uN+BRU
         axpg86fr+aSfhM9ZobHY9c3FQa5JjqYpNixfINW73qPDJWmInr7wQuC++l8XfCOnCQeN
         pvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768911321; x=1769516121;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8UG5I//qhfAXVkYvAGOVU25HLrOs2wFLOVAa0Jjqqkg=;
        b=o94SOUlzMC8wtCPMCyC5JY91OacAdjpmOJpnvtJKCqwXQuJHnUmTZBfMfiJ40KgO27
         mcR+YIlNgw9bcz0XA7yc0VmNP4Y+YdPx+P0d08mQA/FKLYgfHZ+CC+JkoLs/byqcr+RM
         NvppB8FyBLH80Dpy7jewQHnyYm193qUm3YEE5nmKkfbVSqNY+jIjhTXP8UMTnQCnNIkP
         /1Vw2cqkGh8dbS3kKPYjzu7eMsM/qKodyJIdL8k7KN+eRsirNqarrzm0hGxQeNzn6C3K
         EdbW1RXz1Y0mCvDi/eGrG2kr4h9rEXeqOt5Z5GuhZZdm/JIhfj6uZ54BGooZdotSdjgg
         Ptqg==
X-Forwarded-Encrypted: i=1; AJvYcCVEJUh/O3P+gyDVuWPYTPbDoMFWFYLLewK2allbSLKs3y9JUj96PRNG27uINpAnMCyxAjIJ/A==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Ywn7BOia1jto/PRGJmk+DCWC80xx2SlxkGg5hlUTuis1RqSkTAw
	AqyGUQlFfQQzYovzPYZjTbjELR3x2Jy0pxk7GBLfKifkJRo/SRF4/ox8ro4hytph5yfdLGI+YLW
	rnWpFGjtnMSToFMa+w8ms0vCw9dm/7sc=
X-Gm-Gg: AZuq6aJ1gL1vGgEGGvBG0fIH/gJkGE2MoPRCCeMB1/swSPlMBnZIgpcw+Djs5nT3eYZ
	1nhlgg16kMBOcwu79zc5suSi2mDXM5fLSGDJnwnbzhldyrwmh3lrq6ThAOzQxr6EB7WGMflRE2a
	N7cng2TCiy1x6+M0lRb83Ut/5kq+WAB6fFmpHO7q82YqqxX36t0meERGaz/QIumdvN7YBrkBReB
	BF9t0pTmKQbmTxYGPIAWeS+8P+TY6VTJDQIseKWcarcdnNZZMAqWsVbboGoLPGTUQ4F1zv6nY0U
	1ph3vTwNo7FZ23hXNHxwdZ9VH05a6IXAhdpjDIsCZnoWaIfQtTWWXqRdIX8qbdJM44zHBocOsGo
	Jh0lfUiyWlEnh9uI=
X-Received: by 2002:a05:693c:3002:b0:2ae:4fcc:7e98 with SMTP id
 5a478bee46e88-2b6fd61757amr1043516eec.17.1768911319745; Tue, 20 Jan 2026
 04:15:19 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 20 Jan 2026 05:15:09 -0700
X-Gm-Features: AZwV_Qi3OE4xGpeO114u4vbudh2ucZSEaLvONf8V22b5fzrkH1sm28l2Xy9V4Vo
Message-ID: <CAK5yBb-AdZC=peLmnQu04+JO2XCZA0d0Qo_K1hAT2xnFkhw70w@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000da45d20648d0c20a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 20 Jan 2026 12:15:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66157

--000000000000da45d20648d0c20a
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
team) are therefore going to start reporting out the currently 472
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

--000000000000da45d20648d0c20a
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
herefore going to start reporting out the currently 472 unassigned or newco=
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

--000000000000da45d20648d0c20a--

