Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 21FB6D69114
	for <webhook@archiver.kernel.org>; Thu, 28 Nov 2024 14:10:18 +0000 (UTC)
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web10.95086.1732802994663664245
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2024 06:09:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=WiRSiSFG;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-2ea6f821decso724549a91.1
        for <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 06:09:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732802994; x=1733407794; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ZqbwD2yXpgR2kxLv1ZAak2V4HoMgNl4cUeLm6lGXqqA=;
        b=WiRSiSFGN+4roHmycKL7cazVMQBZHzL5rgyu1B38w8jEHIW+dJJwBVQh7Dm4V5P0Fw
         EVm6rBo8xk68n9Jydi38hELl0uUoxqk/ti9Maso9tRpsF+Gm+rPBKm2VTGQKu2A3vzJb
         qvfIuxYLMyXWLp+MUW/YqlZuwgs2JIqEDLEOo0yM4cTBRK8Kfqd38g/ZPCjuILifU7nI
         Lbc1XH689I3IIT9ETs1t3MQ3bLcOpnvUfqq5cLowjI/y2snAfaDy05rX4vVvSinwBIRi
         tostuiLxLJpBdXdOatc6pLx9vSZj4yCIvQ44TpZBf81VJvh//4XTvowCbJrrybDCrUM8
         hoNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732802994; x=1733407794;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZqbwD2yXpgR2kxLv1ZAak2V4HoMgNl4cUeLm6lGXqqA=;
        b=Vq8YxHdQIKvUVEhDIE/hi1sSVCFClT/nWwjRwTHcBqipbc/XqdAFABVAKzcBEQhpZq
         QJqKoZvIW9YPBsiTbId4rTLMCVXjDkjWYsYMCAGtxJIer4QfdFj6e/Pl+W8+nrM7I1NU
         NTtxRwgRWmk4FStA46zUcRyPyaGqKnpVmPEWooH4ynqUfWsCUDlUWmQsu/SmjcDeek41
         BNS76QwbSC0D5x0KPAOyvaD0zCUoLo14+Y7KQimh7Ahc6hjv9XPB22ioBXXVWP2M43HM
         HHNOnIfOSigRqYSP7Cd0PzH8bAWGiT2WcmPKM+To9ISUjz85JBVQUSvsXzyRG+pw3WBb
         2VnA==
X-Gm-Message-State: AOJu0YwtcpG5MS2GgJNirU2mSsKloi9dO5xS4dV9rXHzBeWwbObhTQxS
	yV9kfm+oGXErAG5HhqV6lARIrVhIL530j7fdwO4VEKTitFxX/y7JgW7hkuwYaGvsu3WST9l9ydu
	k1oT1hFItDP2GpP2TjTiiY0iVu1E=
X-Gm-Gg: ASbGncv+M/lN/Vt5Wp2q6jzrxaoaKwvLqm7LVhs3rGAA0P7hLqlvOcdaqP4S0wKSsPS
	1aVNcyG5IbVZ0x6MOPx+Lq97cdxbJRB80
X-Google-Smtp-Source: AGHT+IEnsWb9rCjjOcmL3m+8N/AEVrTspoN/XDGsOyrsDhKUNQIJZ0BDhiKCej6iR+VtOuKLKqJkFaicYBnaXPw0/qo=
X-Received: by 2002:a17:90b:4e:b0:2ea:8d1e:a878 with SMTP id
 98e67ed59e1d1-2ee097e3367mr8293750a91.34.1732802993869; Thu, 28 Nov 2024
 06:09:53 -0800 (PST)
MIME-Version: 1.0
References: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org>
 <8b559b3dba538d9f4f04c9e36e7c89293038ab1e.camel@pengutronix.de>
 <CADkTA4NRRQxmoSr8_qe+msT9UMncCwjte6oed-4boGe0dVMYkQ@mail.gmail.com> <b9271c94c6e5bb2ed0c40b4286a5c8ef735f90e8.camel@pengutronix.de>
In-Reply-To: <b9271c94c6e5bb2ed0c40b4286a5c8ef735f90e8.camel@pengutronix.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Thu, 28 Nov 2024 09:09:42 -0500
Message-ID: <CADkTA4NyJgdEJrFDtOf35eavHhV7-pGSovQs86+TSXmuW7P6EQ@mail.gmail.com>
Subject: Re: [yocto] KERNEL_VERSION inconsistency using out-of-tree module
 with patched kernel source
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Cc: yocto@lists.yoctoproject.org, cgu@ivu.de
Content-Type: multipart/alternative; boundary="000000000000ea5b150627f9a2c1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Nov 2024 14:10:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64373

--000000000000ea5b150627f9a2c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 28, 2024 at 2:19=E2=80=AFAM Enrico J=C3=B6rns <ejo@pengutronix.=
de> wrote:

> Hi Bruce,
>
> Am Mittwoch, dem 27.11.2024 um 10:28 -0500 schrieb Bruce Ashfield:
> >
> > [...]
> > >
> > > I have some context on this that I would like to add since we just
> faced a similar issue in a
> > > project.
> > >
> > > The above-mentioned issue is caused by a combinations of:
> > >
> > >  * a kernel recipe using kernel-yocto.bbclass
> > >  * kernel source pointing to tar (rather than a git)
> > >  * CONFIG_LOCALVERSION_AUTO set in kernel config
> > >
> > > The kernel-yocto class creates a Git repository from the archive
> content, resulting in an
> > > unreproducible commit hash (due to using the current user's Git autho=
r
> settings and the current
> > > system time). Subsequently, CONFIG_LOCALVERSION_AUTO causes this
> commit hash to be embedded in
> > > the
> > > kernel version, leading to non-reproducible kernel version strings.
> > >
> > > I guess the correct way to handle this would be to create the initial
> git commit with e.g.
> > > PATCH_GIT_USER_NAME/PATCH_GIT_USER_EMAIL and set the date to somethin=
g
> like SOURCE_DATE_EPOCH.
> >
> > That should already be in place (the username and email). See the call
> to "check_git_config" in
> > the bbclass.
>
> yes, exactly. They are already defined, but not used (except for the
> config check).
>

Hmm. That's not my experience. Since without them, git won't apply any
patches and that's exactly why we added the check.

Something else probably changed since I added the check that pulled it out
of the environment.


>
> > If it really is just the creation of the repository that is the issue
> here, then I could
> > absolutely bring over some of the reproducible git options that are use=
d
> in the kern-tools (see
> > below).
>
> As far as we and our customer have analyzed the issue, it was just the
> initial git commit when
> creating a git out of an archive.
> The subsequent commits for patches are reproducible (at least in our test
> case).
>
> The proof-of-concept that worked here is:
>

We'd want those exported to the environment, not directly in the location
that git is invoked.
That is what it used to do .. and as you've noted, it may be broken.  But
yes, that was the
intent all along of those variables. There is also an alternative to
simplify the flags where
we can just make the committer and author date the same (like the
kern-tools do).

But those are all just minor details, the concept is the same.


> --- a/meta/classes-recipe/kernel-yocto.bbclass
> +++ b/meta/classes-recipe/kernel-yocto.bbclass
> @@ -428,6 +428,9 @@ do_kernel_checkout() {
>                 git init
>                 check_git_config
>                 git add .
> +               # create a reproducible initial commit
> +               GIT_AUTHOR_NAME=3D"${PATCH_GIT_USER_NAME}"
> GIT_AUTHOR_EMAIL=3D"${PATCH_GIT_USER_EMAIL}" GIT_AUTHOR_DATE=3D"$(date -d
> @${SOURCE_DATE_EPOCH})" \
> +               GIT_COMMITTER_NAME=3D"${GIT_AUTHOR_NAME}"
> GIT_COMMITTER_EMAIL=3D"${GIT_AUTHOR_EMAIL}"
> GIT_COMMITTER_DATE=3D"${GIT_AUTHOR_DATE}" \
>                 git commit -q -n -m "baseline commit: creating repo for
> ${PN}-${PV}"
>                 git clean -d -f
>         fi
>
> > It also depends on exactly how the kernel is being patched. If the
> kern-tools are being used, then
> > reproducible commits are already the case.
> >
> > If the lib/oe/patch.bbclass is being used, I don't see options like
> --committer-date-is-author-
> > date being used, but I suspect I'm just not looking in the right place,
> since if the weren't
> > anyone using PATCHTOOL=3D"git" might be running into reproducibility
> issues, but only if what they
> > are building captures git hashes .... which is the hint).
>
> Haven't used PATCHTOOL=3D"git" yet, but when doing so I can actually conf=
irm
> that the initial commit
> there is also *not* reproducible. As you noted, this isn't much of a
> surprise since patch.py makes a
> simple "git commit" there, too.
> The better way would be to set the env variable here, too
> ("--commiter-date-is-author-date" doesn't
> work in this case since this is a "git am" flag). Would you agree?
>

I thought it was a flag which was passed down to the actual application,
but I haven't
looked at it in detail, so I'll take your word for it. As long as they are
in the environment
and not defined at the location of the git call, it will be fine.

Cheers,

Bruce


> > > If that sounds right, I could make a patch against
> kernel-yocto.bbclass.
> > >
> > > A project-specific quick fix would be of course to just disable
> CONFIG_LOCALVERSION_AUTO.
> >
> > This is what I do in oe-core (I've never liked localversion_auto).
>
> Yes. In our specific case it was also enabled more accidentally than
> intended.
>
>
> Regards, Enrico
>
> > Bruce
> >
> >
> > >
> > > Regards, Enrico
> > >
> > > > Christian
> > > >
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > > Links: You receive all messages sent to this group.
> > > > View/Reply Online (#64358):
> https://lists.yoctoproject.org/g/yocto/message/64358
> > > > Mute This Topic: https://lists.yoctoproject.org/mt/109804058/361672=
1
> > > > Group Owner: yocto+owner@lists.yoctoproject.org
> > > > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ejo@pengutronix.de]
> > > > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > > >
> > >
>
> --
> Pengutronix e.K.                           | Enrico J=C3=B6rns           =
     |
> Embedded Linux Consulting & Support        | https://www.pengutronix.de/ =
|
> Steuerwalder Str. 21                       | Phone: +49-5121-206917-180  =
|
> 31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9    =
|
>


--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000ea5b150627f9a2c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, Nov 28, 2024 at 2:19=E2=80=AFAM Enrico J=C3=
=B6rns &lt;<a href=3D"mailto:ejo@pengutronix.de">ejo@pengutronix.de</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Bruce=
,<br>
<br>
Am Mittwoch, dem 27.11.2024 um 10:28 -0500 schrieb Bruce Ashfield:<br>
&gt; <br>
&gt; [...]<br>
&gt; &gt; <br>
&gt; &gt; I have some context on this that I would like to add since we jus=
t faced a similar issue in a<br>
&gt; &gt; project.<br>
&gt; &gt; <br>
&gt; &gt; The above-mentioned issue is caused by a combinations of:<br>
&gt; &gt; <br>
&gt; &gt; =C2=A0* a kernel recipe using kernel-yocto.bbclass<br>
&gt; &gt; =C2=A0* kernel source pointing to tar (rather than a git)<br>
&gt; &gt; =C2=A0* CONFIG_LOCALVERSION_AUTO set in kernel config<br>
&gt; &gt; <br>
&gt; &gt; The kernel-yocto class creates a Git repository from the archive =
content, resulting in an<br>
&gt; &gt; unreproducible commit hash (due to using the current user&#39;s G=
it author settings and the current<br>
&gt; &gt; system time). Subsequently, CONFIG_LOCALVERSION_AUTO causes this =
commit hash to be embedded in<br>
&gt; &gt; the<br>
&gt; &gt; kernel version, leading to non-reproducible kernel version string=
s.<br>
&gt; &gt; <br>
&gt; &gt; I guess the correct way to handle this would be to create the ini=
tial git commit with e.g.<br>
&gt; &gt; PATCH_GIT_USER_NAME/PATCH_GIT_USER_EMAIL and set the date to some=
thing like SOURCE_DATE_EPOCH.<br>
&gt; <br>
&gt; That should already be in place (the username and email). See the call=
 to &quot;check_git_config&quot; in<br>
&gt; the bbclass.<br>
<br>
yes, exactly. They are already defined, but not used (except for the config=
 check).<br></blockquote><div><br></div><div><div class=3D"gmail_default" s=
tyle=3D"font-size:small">Hmm. That&#39;s not my experience. Since without t=
hem, git won&#39;t apply any patches and that&#39;s exactly why we added th=
e check.</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">Something else p=
robably changed since I added the check that pulled it out of the environme=
nt.</div></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
<br>
&gt; If it really is just the creation of the repository that is the issue =
here, then I could<br>
&gt; absolutely bring over some of the reproducible git options that are us=
ed in the kern-tools (see<br>
&gt; below).<br>
<br>
As far as we and our customer have analyzed the issue, it was just the init=
ial git commit when<br>
creating a git out of an archive.<br>
The subsequent commits for patches are reproducible (at least in our test c=
ase).<br>
<br>
The proof-of-concept that worked here is:<br></blockquote><div><br></div><d=
iv><div class=3D"gmail_default" style=3D"font-size:small">We&#39;d want tho=
se exported to the environment, not directly in the location that git is in=
voked.</div><div class=3D"gmail_default" style=3D"font-size:small">That is =
what it used to do .. and as you&#39;ve noted, it may be broken.=C2=A0 But =
yes, that was the</div></div><div class=3D"gmail_default" style=3D"font-siz=
e:small">intent all along of those variables. There is also an alternative =
to simplify the flags where</div><div class=3D"gmail_default" style=3D"font=
-size:small">we can just make the committer and author date the same (like =
the kern-tools do).</div><div class=3D"gmail_default" style=3D"font-size:sm=
all"><br></div><div class=3D"gmail_default" style=3D"font-size:small">But t=
hose are all just minor details, the concept is the same.</div><div><br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
--- a/meta/classes-recipe/kernel-yocto.bbclass<br>
+++ b/meta/classes-recipe/kernel-yocto.bbclass<br>
@@ -428,6 +428,9 @@ do_kernel_checkout() {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git init<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 check_git_config<br=
>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git add .<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# create a reproduc=
ible initial commit<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GIT_AUTHOR_NAME=3D&=
quot;${PATCH_GIT_USER_NAME}&quot; GIT_AUTHOR_EMAIL=3D&quot;${PATCH_GIT_USER=
_EMAIL}&quot; GIT_AUTHOR_DATE=3D&quot;$(date -d @${SOURCE_DATE_EPOCH})&quot=
; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0GIT_COMMITTER_NAME=
=3D&quot;${GIT_AUTHOR_NAME}&quot; GIT_COMMITTER_EMAIL=3D&quot;${GIT_AUTHOR_=
EMAIL}&quot; GIT_COMMITTER_DATE=3D&quot;${GIT_AUTHOR_DATE}&quot; \<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git commit -q -n -m=
 &quot;baseline commit: creating repo for ${PN}-${PV}&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 git clean -d -f<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
<br>
&gt; It also depends on exactly how the kernel is being patched. If the ker=
n-tools are being used, then<br>
&gt; reproducible commits are already the case.<br>
&gt; <br>
&gt; If the lib/oe/patch.bbclass is being used, I don&#39;t see options lik=
e --committer-date-is-author-<br>
&gt; date being used, but I suspect I&#39;m just not looking in the right p=
lace, since if the weren&#39;t<br>
&gt; anyone using PATCHTOOL=3D&quot;git&quot; might be running into reprodu=
cibility issues, but only if what they<br>
&gt; are building captures git hashes .... which is the hint).<br>
<br>
Haven&#39;t used PATCHTOOL=3D&quot;git&quot; yet, but when doing so I can a=
ctually confirm that the initial commit<br>
there is also *not* reproducible. As you noted, this isn&#39;t much of a su=
rprise since patch.py makes a<br>
simple &quot;git commit&quot; there, too.<br>
The better way would be to set the env variable here, too (&quot;--commiter=
-date-is-author-date&quot; doesn&#39;t<br>
work in this case since this is a &quot;git am&quot; flag). Would you agree=
?<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D=
"font-size:small">I thought it was a flag which was passed down to the actu=
al application, but I haven&#39;t</div><div class=3D"gmail_default" style=
=3D"font-size:small">looked at it in detail, so I&#39;ll take your word for=
 it. As long as they are in the environment</div><div class=3D"gmail_defaul=
t" style=3D"font-size:small">and not defined at the location of the git cal=
l, it will be fine.</div></div><div class=3D"gmail_default" style=3D"font-s=
ize:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small"=
>Cheers,</div><div class=3D"gmail_default" style=3D"font-size:small"><br></=
div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><div>=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; &gt; If that sounds right, I could make a patch against kernel-yocto.b=
bclass.<br>
&gt; &gt; <br>
&gt; &gt; A project-specific quick fix would be of course to just disable C=
ONFIG_LOCALVERSION_AUTO.<br>
&gt; <br>
&gt; This is what I do in oe-core (I&#39;ve never liked localversion_auto).=
<br>
<br>
Yes. In our specific case it was also enabled more accidentally than intend=
ed.<br>
<br>
<br>
Regards, Enrico<br>
<br>
&gt; Bruce<br>
&gt; <br>
&gt; =C2=A0<br>
&gt; &gt; <br>
&gt; &gt; Regards, Enrico<br>
&gt; &gt; <br>
&gt; &gt; &gt; Christian<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt; Links: You receive all messages sent to this group.<br>
&gt; &gt; &gt; View/Reply Online (#64358): <a href=3D"https://lists.yoctopr=
oject.org/g/yocto/message/64358" rel=3D"noreferrer" target=3D"_blank">https=
://lists.yoctoproject.org/g/yocto/message/64358</a><br>
&gt; &gt; &gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/m=
t/109804058/3616721" rel=3D"noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/mt/109804058/3616721</a><br>
&gt; &gt; &gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproj=
ect.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; &gt; &gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/unsub</a>=C2=A0[<a href=3D"mailto:ejo@pengutronix.de" target=3D"=
_blank">ejo@pengutronix.de</a>]<br>
&gt; &gt; &gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; &gt; &gt; <br>
&gt; &gt; <br>
<br>
-- <br>
Pengutronix e.K.=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Enrico J=C3=B6rns=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0|<b=
r>
Embedded Linux Consulting &amp; Support=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0| <a href=3D"https://www.pengutronix.de/" rel=3D"noreferrer" ta=
rget=3D"_blank">https://www.pengutronix.de/</a> |<br>
Steuerwalder Str. 21=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0| Phone: +49-5121-206917-180=C2=A0=C2=A0|<br>
31137 Hildesheim, Germany=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0| Fax:=C2=A0=C2=
=A0=C2=A0+49-5121-206917-9=C2=A0=C2=A0=C2=A0=C2=A0|<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>

--000000000000ea5b150627f9a2c1--

