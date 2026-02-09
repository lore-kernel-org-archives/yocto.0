Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81E67E94613
	for <webhook@archiver.kernel.org>; Mon,  9 Feb 2026 21:42:09 +0000 (UTC)
Received: from mail-dl1-f47.google.com (mail-dl1-f47.google.com [74.125.82.47])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6026.1770673319285467330
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Feb 2026 13:41:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gvQso7KX;
 spf=pass (domain: gmail.com, ip: 74.125.82.47, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-dl1-f47.google.com with SMTP id a92af1059eb24-124a635476fso213606c88.0
        for <yocto@lists.yoctoproject.org>; Mon, 09 Feb 2026 13:41:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770673318; cv=none;
        d=google.com; s=arc-20240605;
        b=Kw35bS0+m5Lw33WbSY0hA//AHUtznDO7i92RPxfO8uz7krQbtYt7Hhx4RLmwHk2qI9
         e+pMD6iObyh/s9/SWsMdReBWt0Cg2zddl7U8JyKaAGgLvZp7OtAYTbIGw9ckeENeqhjC
         J1DBvQCeD6KosBHoWk5HmvG1zsuBKXBqYQRBX8ADHDhL5BQr16K6ygNBGyBZW00UH2uS
         NdD5lRLOwbzcDYLD2yFG8LUYfQZVay1hZIwFGvMAt/JafpDScaOvvb5Z8Yec8BBI4kIz
         6tC5dlyO4HIxDLxvwpQl6j5M9UORW54FtRq+gjvx6NgI2EmZ6NeyDHcZCf9YhBLBp/4v
         nxLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=3P2m3Wbr3TeA3hPX93GFWTd01xxH/GT6dW4jH1fGrI4=;
        fh=GoaOB9qfg1GZ4n8tkM+MheiVwaMgzRZTlhwoWja2oyk=;
        b=FkTdJYGhHtYd1Qz609UFXc+qhAY1aAFYrn4cDDaQ0NGdQp5sYMoraMrZv40S3/Swy7
         L9msj5gkkltO2okP4qqsJpgDIPXzAO2sSKWFxw8pj/U4+0+haX6/ypvF1pyqWXmfdoWq
         W8pfKe/0LaPOSi1L7yQhm2fQ/uVOyqLqoYaFLmUW9T10HEvigersO9yipdcPYiWevG5W
         bUtgIhBvhbjPYHCAJwRpOV/m8E5mPd3ebkDK7SBQLm13ywgQeF7mo1ZbMpnxwnpSbzjL
         rhgIuRgQpRUE/hMPJX694SUzvnivt7v5jpcfqLvRGhtmZxahwtSv921ivgsrI2cdbmVH
         +VoQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770673318; x=1771278118; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3P2m3Wbr3TeA3hPX93GFWTd01xxH/GT6dW4jH1fGrI4=;
        b=gvQso7KXxE5mVVDXs9gIBdPGi/n2G8RHJw/kXjhiK5P+N/XecBBhB07+35l2JTM9U6
         ZcMa3LNIeWA2Z9ZZuFg7J/rPdOygf1bvnl/t9F2mnXvl5UAiUEfwb8+WMmsAe7T1Zzd8
         ZTsg1HemHGvh+cwaoEM+pOB9rWW2/9+SadmRmDwVA/6ObxCZNYtQJjIrskTZksnIGkYU
         ha3iIip/8sUuijNZzIgdoyBFofIuVKi5XghZUpryNRyTWj6u4wVgBFqZMkL2fy4hG89a
         T7mFfrSGRB9ODfu+OWlukeb5YgwgKZxUo1aB/4hm96Bacarhcg4+XGt76er8z3HMk1A6
         djsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770673318; x=1771278118;
        h=to:subject:message-id:date:from:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3P2m3Wbr3TeA3hPX93GFWTd01xxH/GT6dW4jH1fGrI4=;
        b=KR4jGCtPQNck9L82N8okZ2O6jfAg8m/iGBI7KkuOcxDF8guDhC9c4hcdvE9uMWDIwp
         KAvMK6OEPQa6nzw5T30yvN9BkpDJhv5xLCdzHFgPnlaoCw23QGK+YY6Ux4xCUW7VaLxA
         t8+KSu80y8JII4CJpn6Zq5GeKvGCrK0JSt0dP5iSDpbMHiUb2FzRGV9MjAUVsp6z2WEz
         l+HxwG8mN3e8405hDLwPkEgfOvAxvnrHLnZo8+VEJS3XuhgWHWNfK0KPPtG2rirbLPFt
         IAjmaQANW3Ey9nySMTM2kE7zfI6MWaxhxARWWDkoiltfa3uX5n0CXMwaXsnI8a9uaKbQ
         yg0g==
X-Forwarded-Encrypted: i=1; AJvYcCWlZvTG5eveeKdIwgld0JtH/8tQ0aQpuAvGrGpzFz7yJ1K/35cPGzJyzV7XIR4QWCyJZIDBfw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwKBom9hhN1PWBqOyDfFp7+OGg1U1f8pTxt5+3gc5oO7bRSXIYJ
	aDjo/LZoEdZqCfN55O0p5YuSUzXK916wj/2Mki+FMh8TMyOi6ciYt02a4SRhmHrLJx3Auu5AZmu
	ez7rD/T7TM7xMvRkVMGvEFFTgz6teDYw=
X-Gm-Gg: AZuq6aK3y+ElNigP39nvktF/avflGGexkLZP6UWdRyrcGRH94wOJ9fYVRgIimsn0jet
	3JFrCwu48yWl+BKbnP5va3gxuD0mVAG7MMJteVM2Sq1k3SugW3LZDzctjer2LO/f3rPXX1ktKqV
	QX2LD4yO7tHNCpgqEh/p+okmeU0CYikca9gUpaGF25RkyoRR+x0Up+ptodAEVGKMd+W2AcYhw+2
	KNiqPuRnXkYN64pyqITaNMnRBunkCbyuiF2xcvtRFd+Z70NtP/XYkKCqeHgTaOXnU2OWAzwPCOI
	ZxuRReWkQ5J4vrUkGtAPF8RyFrPCzbj5RRGltPMuT9PjVcnHD+qaKHr32A==
X-Received: by 2002:a05:693c:40d3:b0:2b8:f1b4:ca57 with SMTP id
 5a478bee46e88-2b8f1b4d6c1mr2282322eec.20.1770673318346; Mon, 09 Feb 2026
 13:41:58 -0800 (PST)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Mon, 9 Feb 2026 18:41:47 -0300
X-Gm-Features: AZwV_QgvvUu9zojBFLErZxvYFYo1H8NZWs8WJ3yx4PenYnIyyq7zUzhCiMEExZI
Message-ID: <CAK5yBb-19dCEjQubF7kZ+fc6GhycwZR1KQKcLU-MmtxHPinSWA@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002744cb064a6b0227"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 09 Feb 2026 21:42:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66233

--0000000000002744cb064a6b0227
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
team) are therefore going to start reporting out the currently 466
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

--0000000000002744cb064a6b0227
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
herefore going to start reporting out the currently 466 unassigned or newco=
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

--0000000000002744cb064a6b0227--

