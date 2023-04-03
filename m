Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E902FC761A6
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 15:59:25 +0000 (UTC)
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com [209.85.166.54])
 by mx.groups.io with SMTP id smtpd.web10.75117.1680537558090429626
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Apr 2023 08:59:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=omEp5MiD;
 spf=pass (domain: gmail.com, ip: 209.85.166.54, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-io1-f54.google.com with SMTP id y85so13021220iof.13
        for <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 08:59:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680537557;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=m7ujYsBGTVVey/yxblb5yn/8R5O7SCg2Y3tk4qo5BXs=;
        b=omEp5MiDrWGMY1Y1wzMCNob5n6JsNZT6qdtkuni/t2aQvsDsWIDW5+pPxq2bJp3p6C
         wkMh4r4iMZWmuNnvLx01CLZjdelJprUaPcHQPlcO2k1CYWX3o/Li/1w7sANtG+FrfNV8
         leQW3K5PNk9UBH9oEJTY+bXpWrG+KgdqBBmn0svJLhDOBJx5/RBoICZlHiBdX/Zld12P
         YuHsaC/DklC/NVgv90rjJGy6YZ289+udS82oW/S/vRU7507iO8BSmysQXIi2vcqSkVoT
         HuKuKdd0HC4qCGAsSyRs+kL/AlSEcgLgCP2q0SGhs6sXSoIKtydgrNCJYfFzPzRmAU8m
         Yf5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680537557;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=m7ujYsBGTVVey/yxblb5yn/8R5O7SCg2Y3tk4qo5BXs=;
        b=7zJyPZGKi+XMMsvqgr3DURjO5Dj6EqrbRrpN4k5pUfmQ2pfOMmRrbS6WAlvzdkskds
         G/x2bXbJOeFd7ZzpFzgXQR3Oy2dctPUF/k4Wzd72W+QE49heU3IymFeW1o+gkESFqRmo
         GS1dQQ8e0CHni4cKQ24Pi76DRHWH3OCaNRG8IAxTEwEjH7TtSLYjJ7V8uvtWj3fM3ntz
         fT+ZJDDTHbHNS4tnznqBP9XRIpYB476U989F6Fo6VTfQeNiRWYzxy8rmN5xdlrSy2X+1
         2/tudfKHRQdUgOoWfX4oXb0orvupOXZ9lQdNFHwM/OTeV4PKwsdjBzN9eFv/mKy9KUFi
         5i3Q==
X-Gm-Message-State: AO0yUKX0A4PqWwxg62jju4dagHR/Cs6UGpHmU++5GuhuXTPhF5jASE+W
	D180rO7vVnF3gVVNOEh4iTiglOe2B5raeAbx86M=
X-Google-Smtp-Source: AK7set9daa/RT2si7J0giSb1uPgFF8GVIvvh+N5GBjF9XihAa93/SahimTOw7gBgwE8MmpSahAyexKJR6cNtFAimK9g=
X-Received: by 2002:a02:9504:0:b0:406:346e:c86e with SMTP id
 y4-20020a029504000000b00406346ec86emr14031438jah.5.1680537557084; Mon, 03 Apr
 2023 08:59:17 -0700 (PDT)
MIME-Version: 1.0
References: <2304c6f228db24096ac44b1e14132bb70981986b.camel@linuxfoundation.org>
 <6415.1680506699920545280@lists.yoctoproject.org> <CAMKF1sp1e0A88eGB3xVcamY16GB2H6dBwHet4tvYtUf2_GpS7A@mail.gmail.com>
 <DB6PR03MB2901095F3F450ADC7E19061891929@DB6PR03MB2901.eurprd03.prod.outlook.com>
In-Reply-To: <DB6PR03MB2901095F3F450ADC7E19061891929@DB6PR03MB2901.eurprd03.prod.outlook.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 3 Apr 2023 11:59:47 -0400
Message-ID: <CADkTA4NNLMXYSGjsd9w=JJ4z7f4jRh3r6e9cf8FKS-aLtPMGZw@mail.gmail.com>
Subject: Re: [yocto] error when try to use sudo command in recipe
To: Adrian Dudau <adrian.dudau@keyfactor.com>
Cc: Khem Raj <raj.khem@gmail.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001f2f3005f870a47f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 15:59:25 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59602

--0000000000001f2f3005f870a47f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 3, 2023 at 11:42=E2=80=AFAM Adrian Dudau <adrian.dudau@keyfacto=
r.com>
wrote:

> Hi Khem,
>
> Thanks for the reply, though I am not sure I fully understand the first
> part of your answer. I'm trying to do something similar to the thread
> creator, i.e running "podman pull" at build time to populate an image sto=
re
> that I can later install into the target rootfs.
>
>
FWIW. The above is something that I have almost working, but had to drop
the completion of the support for the upcoming release (it was too late,
and I had to get some kernel changes done). I'm hoping to have something
usable in the next few months.

If you are trying to generate containers (I don't recommend pulling them)
and installing them into a container store that is part of the rootfs, then
collaborating on the meta-virtualization mailing list is a good starting
point.

Bruce



> Still, I am failing to understand why /usr/bin/sudo doesn't show up as
> owned by the root user, even when running under pseudo. Also, why has thi=
s
> changed between Dunfell and master and where exactly has the changed
> happened..
>
> Best regards,
> --Adrian
> ------------------------------
> *From:* Khem Raj <raj.khem@gmail.com>
> *Sent:* Monday, April 3, 2023 4:57 PM
> *To:* Adrian Dudau <adrian.dudau@keyfactor.com>
> *Cc:* yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
> *Subject:* Re: [yocto] error when try to use sudo command in recipe
>
> You don't often get email from raj.khem@gmail.com. Learn why this is
> important <https://aka.ms/LearnAboutSenderIdentification>
> CAUTION: External Sender - Be cautious when clicking links or opening
> attachments. Please email InfoSec@keyfactor.com with any questions.
>
>
>
> On Mon, Apr 3, 2023 at 12:25 AM <adrian.dudau@keyfactor.com> wrote:
>
> On Mon, Feb 6, 2023 at 01:13 AM, Richard Purdie wrote:
> Hi Richard,
>
> Jumping on this thread to provide some clarifications as I hit the same
> bug.
> I can confirm that this is not an environment issue. I could reproduce it
> by adding a sudo call in an empty recipe like this:
>
> SUMMARY =3D ""
> HOMEPAGE =3D ""
> LICENSE =3D ""
> SECTION =3D ""
> DEPENDS =3D ""
>
> SRC_URI =3D ""
>
> do_install() {
>     ls -l /usr/bin/sudo
>     sudo ls -l /usr/bin/sudo
> }
>
>
> Build already use a fake root environment using pseudo to intercept the
> calls so this might not be out of line here. What is the original issue y=
ou
> are running into ?
>
>
>
> Running bitbake barebone on my x86 machine produces this error:
>
> | -rwxr-xr-x 1 nobody 65534 232416 Mar  1 13:59 /usr/bin/sudo
> | sudo: /etc/sudo.conf is owned by uid 65534, should be 0
> | sudo: /etc/sudo.conf is owned by uid 65534, should be 0
> | sudo: error in /etc/sudo.conf, line 0 while loading plugin
> "sudoers_policy"
> | sudo: /usr/libexec/sudo/sudoers.so must be owned by uid 0
> | sudo: fatal error, unable to load plugins
>
> Indeed it seems that ownership is broken somehow in the bb environment.
> The issue was introduced somewhere between dunfell and kirkstone. I know
> it's a large timespan but it's a bit time consuming to narrow it down.
>
> Hoping to get some help on this. I would try to investigate further mysel=
f
> but I have no idea where to start to be honest.
>
> Best regards,
> --Adrian
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59601):
> https://lists.yoctoproject.org/g/yocto/message/59601
> Mute This Topic: https://lists.yoctoproject.org/mt/96733939/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000001f2f3005f870a47f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Mon, Apr 3, 2023 at 11:42=E2=80=AFAM Adrian Duda=
u &lt;<a href=3D"mailto:adrian.dudau@keyfactor.com">adrian.dudau@keyfactor.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div class=3D"msg-3121859093955495881">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi Khem,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Thanks for the reply, though I am not sure I fully understand the first par=
t of your answer. I&#39;m trying=C2=A0to do something similar to the thread=
 creator, i.e running &quot;podman pull&quot; at build time to populate an =
image store that I can later install into the target
 rootfs. <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br></div></div></div></blockquote><div><br></div><div><div class=3D"gmail_=
default" style=3D"font-size:small">FWIW. The above is something that I have=
 almost working, but had to drop the completion of the support for the upco=
ming release (it was too late, and I had to get some kernel changes done). =
I&#39;m hoping to have something usable in the next few months.</div><div c=
lass=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gm=
ail_default" style=3D"font-size:small">If you are trying to generate contai=
ners (I don&#39;t recommend pulling them) and installing them into a contai=
ner store that is part of the rootfs, then collaborating on the meta-virtua=
lization mailing list is a good starting point.</div><div class=3D"gmail_de=
fault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" sty=
le=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid=
 rgb(204,204,204);padding-left:1ex"><div class=3D"msg-3121859093955495881">=
<div dir=3D"ltr"><div style=3D"font-family:Calibri,Arial,Helvetica,sans-ser=
if;font-size:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Still, I am failing to understand why /usr/bin/sudo doesn&#39;t show up as =
owned by the root user, even when running under pseudo. Also, why has this =
changed between Dunfell and master and where exactly has the changed happen=
ed..</div>
<div><br>
</div>
<div>Best regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
--Adrian<br>
</div>
<div id=3D"m_-3121859093955495881appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-3121859093955495881divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.k=
hem@gmail.com</a>&gt;<br>
<b>Sent:</b> Monday, April 3, 2023 4:57 PM<br>
<b>To:</b> Adrian Dudau &lt;<a href=3D"mailto:adrian.dudau@keyfactor.com" t=
arget=3D"_blank">adrian.dudau@keyfactor.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank=
">yocto@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctop=
roject.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] error when try to use sudo command in recipe</f=
ont>
<div>=C2=A0</div>
</div>
<div>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"100%" alig=
n=3D"left" style=3D"border:0px;display:table;width:100%;table-layout:fixed;=
float:none">
<tbody style=3D"display:block">
<tr>
<td valign=3D"middle" width=3D"1px" bgcolor=3D"#A6A6A6" cellpadding=3D"7px =
2px 7px 2px" style=3D"padding:7px 2px;background-color:rgb(166,166,166)">
</td>
<td valign=3D"middle" width=3D"100%" bgcolor=3D"#EAEAEA" cellpadding=3D"7px=
 5px 7px 15px" color=3D"#212121" style=3D"width:100%;background-color:rgb(2=
34,234,234);padding:7px 5px 7px 15px;font-family:wf_segoe-ui_normal,&quot;S=
egoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:12px;f=
ont-weight:normal;color:rgb(33,33,33);text-align:left">
<div>You don&#39;t often get email from <a href=3D"mailto:raj.khem@gmail.co=
m" target=3D"_blank">raj.khem@gmail.com</a>. <a href=3D"https://aka.ms/Lear=
nAboutSenderIdentification" target=3D"_blank">
Learn why this is important</a></div>
</td>
<td valign=3D"middle" align=3D"left" width=3D"75px" bgcolor=3D"#EAEAEA" cel=
lpadding=3D"7px 5px 7px 5px" color=3D"#212121" style=3D"width:75px;backgrou=
nd-color:rgb(234,234,234);padding:7px 5px;font-family:wf_segoe-ui_normal,&q=
uot;Segoe UI&quot;,&quot;Segoe WP&quot;,Tahoma,Arial,sans-serif;font-size:1=
2px;font-weight:normal;color:rgb(33,33,33);text-align:left">
</td>
</tr>
</tbody>
</table>
<div>
<div style=3D"background-color:rgb(255,235,156);width:100%;border-style:sol=
id;border-color:rgb(156,101,0);border-width:1pt;padding:2pt;font-size:10pt;=
line-height:12pt;font-family:Calibri;color:black;text-align:left">
<span style=3D"color:rgb(156,101,0);font-weight:bold">CAUTION:</span> Exter=
nal Sender - Be cautious when clicking links or opening attachments. Please=
 email <a href=3D"mailto:InfoSec@keyfactor.com" target=3D"_blank">InfoSec@k=
eyfactor.com</a> with any questions.</div>
<br>
<div>
<div><br>
</div>
<div><br>
<div>
<div dir=3D"ltr">On Mon, Apr 3, 2023 at 12:25 AM &lt;<a href=3D"mailto:adri=
an.dudau@keyfactor.com" target=3D"_blank">adrian.dudau@keyfactor.com</a>&gt=
; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
On Mon, Feb 6, 2023 at 01:13 AM, Richard Purdie wrote:<br>
Hi Richard,<br>
<br>
Jumping on this thread to provide some clarifications as I hit the same bug=
.<br>
I can confirm that this is not an environment issue. I could reproduce it b=
y adding a sudo call in an empty recipe like this:<br>
<br>
SUMMARY =3D &quot;&quot;<br>
HOMEPAGE =3D &quot;&quot;<br>
LICENSE =3D &quot;&quot;<br>
SECTION =3D &quot;&quot;<br>
DEPENDS =3D &quot;&quot;<br>
<br>
SRC_URI =3D &quot;&quot;<br>
<br>
do_install() {<br>
=C2=A0=C2=A0=C2=A0 ls -l /usr/bin/sudo<br>
=C2=A0=C2=A0=C2=A0 sudo ls -l /usr/bin/sudo<br>
}<br>
</blockquote>
<div dir=3D"auto"><br>
</div>
<div dir=3D"auto">Build already use a fake root environment using pseudo to=
 intercept the calls so this might not be out of line here. What is the ori=
ginal issue you are running into ?</div>
<div dir=3D"auto"><br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<br>
<br>
Running bitbake barebone on my x86 machine produces this error:<br>
<br>
| -rwxr-xr-x 1 nobody 65534 232416 Mar=C2=A0 1 13:59 /usr/bin/sudo<br>
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0<br>
| sudo: /etc/sudo.conf is owned by uid 65534, should be 0<br>
| sudo: error in /etc/sudo.conf, line 0 while loading plugin &quot;sudoers_=
policy&quot;<br>
| sudo: /usr/libexec/sudo/sudoers.so must be owned by uid 0<br>
| sudo: fatal error, unable to load plugins<br>
<br>
Indeed it seems that ownership is broken somehow in the bb environment. The=
 issue was introduced somewhere between dunfell and kirkstone. I know it&#3=
9;s a large timespan but it&#39;s a bit time consuming to narrow it down.<b=
r>
<br>
Hoping to get some help on this. I would try to investigate further myself =
but I have no idea where to start to be honest.<br>
<br>
Best regards,<br>
--Adrian<br>
<br>
<br>
<br>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59601): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59601" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59601</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/96733939/1050=
810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/96733939/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div></blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gm=
ail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signatu=
re">- Thou shalt not follow the NULL pointer, for chaos and madness await t=
hee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II=
<br><br></div></div>

--0000000000001f2f3005f870a47f--

