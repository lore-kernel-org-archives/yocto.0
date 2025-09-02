Return-Path: <sjolley.yp.pm@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0350ACA0FFE
	for <webhook@archiver.kernel.org>; Tue,  2 Sep 2025 14:34:19 +0000 (UTC)
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
 by mx.groups.io with SMTP id smtpd.web10.79037.1756823656099700279
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Sep 2025 07:34:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GzcfYJym;
 spf=pass (domain: gmail.com, ip: 209.85.214.182, mailfrom: sjolley.yp.pm@gmail.com)
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-24457f581aeso50556985ad.0
        for <yocto@lists.yoctoproject.org>; Tue, 02 Sep 2025 07:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756823655; x=1757428455; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=ZWwlDRUS04TNVmbbGw9efGkpcTuNUQuuxPDN2IVQe2w=;
        b=GzcfYJymMLVUYIgxFUwP3QzTJCledfRsPcq00eUUfVfJa4nWtZTnvtxWIZkfcma5GF
         uvsD23h4yaZjwAMvNwWHU9LT9Z0dpMZIE9G6NUHGqx50APUbdOhk1wtKFpBh3XHDlmpB
         1XIPP5B8DEqUixgBJkLz0kH7bzlu2VbDVFdIvdCUhAb5EdkUuKO1QEKXwIz9OOB7lvKy
         qNM0QT+gPFEDOROaRmNdpZN9cR47ZGXG16fE0zYxuX10h2zm6nxHkEvbKLLDULbShNgj
         wJcqRjyuK9rtxzu6y5xnokKQaKMIPaCRX6+URp5xJu6kyqEYGfOvNFyiEsO/rPmv6rh9
         7mLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756823655; x=1757428455;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZWwlDRUS04TNVmbbGw9efGkpcTuNUQuuxPDN2IVQe2w=;
        b=QxkBTnlepFNIuMA/obxpLFwwBVPKML88Tpi8RVMQO1Qj50KJGAV0YhbEhAzIK5Pmrk
         fz8g1/dTFlE6juYg/BVhdBFp26PqZ0Sde/5JuTOsn3LBVYndY+hsEbFBxIeC02plBfDz
         rDqHGKGBLiFxmZFYcbK+vUm5O+HQDTjYOLaLckUUPNyF+JAgRH/cnRyE1id3otSqP4Ft
         bdGixa0kfSdwHn5OKwcpbsKjeD55ToyNRkwG+L+vLm/O39iC9r2JzKdRl/cbjMiDoFJJ
         aJPe+5nDiZ3H7CrOIuEvARQzpfY+mnr7C4TsosGyBsnIgmFudj9Ff9yRH2vRhk/yL7Ot
         ri5w==
X-Forwarded-Encrypted: i=1; AJvYcCV6gPU2AcSLkfSA4WhnlLmKPDxtGtks9E3w+CX0h5QDajce3Puo+Jl40X7GSUnTfYt0XB0axg==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Ywyuy9G7ILtCcIg7QrkrvQjYhz6q/0V3P4unO0tOLtLbpchu9Mm
	yQvGZNncwk1oZ6l6WqcdUOwS3tGDWhN24XmuAeMHgw/GuzGUzfQLtJYHZT3SleWYJI/ajYi65bX
	Q/3aAz+8vzthJE57IotCEtgjjV/i+OOE=
X-Gm-Gg: ASbGnctLS7UJ/zTmyQcJjGnuC+v1Uz5b1YOdJSKSrKWALAfdbmr2JbNf6ADNmzJXh2t
	9jSJx+2pxrHdvQcNI4NAhWuDiwP3WcPlHiRvO0rLTOEduKbCt3+nc6IFuFVP0WpikLe6cXC91Hr
	XoM9XU2lyh+rHMvM6uMypkmH5EE0nAOP+MnNS0tPJdKjz1+EXU74FkGfm7lcxg75+X+sLbnhHRT
	MUEvJuYEjpjN7SOlT8nJTwRajMoXMvM/Eqg0u6ZAtYwqbVp0MQ2p+3w0SoC2spGvfBhhA==
X-Google-Smtp-Source: AGHT+IFgERHyVQTnKw9LBj/iXjBQ0XB6pKp+7kXjBg5s062zdAUx17P7F/gEa8SaArIQZMkuUo2UmeSpOWGIVemH5Ys=
X-Received: by 2002:a17:902:da85:b0:240:5549:708e with SMTP id
 d9443c01a7336-24944b402dfmr172335025ad.46.1756823655128; Tue, 02 Sep 2025
 07:34:15 -0700 (PDT)
MIME-Version: 1.0
From: Stephen K Jolley <sjolley.yp.pm@gmail.com>
Date: Tue, 2 Sep 2025 07:34:02 -0700
X-Gm-Features: Ac12FXyp4Y49sIe6T0M7o65SpvmrvlgLj9I9g77puKXYED6YxkKCldMhma8aCzE
Message-ID: <CAK5yBb8+g5e9OXEmNnbSraRnFYUPEgYLr9gMqRwjPmybUQzGUQ@mail.gmail.com>
Subject: Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: openembedded-devel@lists.openembedded.org, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e5a591063dd261f5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 Sep 2025 14:34:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65810

--000000000000e5a591063dd261f5
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
team) are therefore going to start reporting out the currently 467
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

--000000000000e5a591063dd261f5
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
herefore going to start reporting out the currently 467 unassigned or newco=
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

--000000000000e5a591063dd261f5--

