Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1073D6ACEC
	for <webhook@archiver.kernel.org>; Wed, 27 Nov 2024 15:29:10 +0000 (UTC)
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
 by mx.groups.io with SMTP id smtpd.web10.74260.1732721346443168065
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Nov 2024 07:29:06 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nE9yT+XU;
 spf=pass (domain: gmail.com, ip: 209.85.214.170, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-212884028a3so7058375ad.0
        for <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 07:29:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1732721346; x=1733326146; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ePYjBwvO0xgvk/q7yWEaD61hbgEfu2g3J1VmQWutp4A=;
        b=nE9yT+XUS80VFXsbyRKLy7DZtIB44f/GS64XUALTHxlAzkfsObgESAEAa0mMfUDmwd
         CiW3AY7A9UTClaLsmBvy/kgcWobhKZxLomWLbU5o8fq7kF3SvsTog3NO9wgjxbc2At/q
         Jz8cVxDX0ZVNqae4zsnSZ4GjAU9Ml3U3Ih9AFy1QIUxPIFKe1vuyD8l223E4MZWKtvvS
         PsyUcaQmkC9BLh4rMabtPY+O1iQ4EGLc7nMI24lFhvtmlwE2w410KftreNvgiav8zsCe
         g0ollaAUg3rQoJ5t6dj8Th3a51FYPXdyNOczimEYa6XTQ5Lovkeygo6lWJtp8reqVcSl
         k8PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732721346; x=1733326146;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ePYjBwvO0xgvk/q7yWEaD61hbgEfu2g3J1VmQWutp4A=;
        b=NIx1ETsyOvXycCD/5+3jhzAoOyvahy/QKj6ro9X/ObNNPht31CRzGGOYO8C85ognaL
         hBp9KFbW6kK6/te9o6ELonPXQJ+eM4M3T+0TQcEki0rElcKz4RJJXLHkKIqEpsDvPEFI
         sNFYG/shV35D2p+fDtw6eCL/SCntW4dREyAYqhSiwAQmPwfcaCAX1xoJ6VERnNhsGi6Y
         GHj25w9cjsp5/0mNMQEdOSGXJZ78i3QshSY4iJ8DXed2OTvICitxi0gq1MiRMPOqXj2H
         C5r3mw5ff9klDI3//4oMh0Cdrz1YfwN1BFhkxutkrYUpfTdYx8uZk3vL3jq1kEbPPevY
         qJSw==
X-Gm-Message-State: AOJu0YyeoUHX6Z0DKCUswn0f4Uqm5FN+xJTOXIZIzOquLLEJp6G4alPR
	aeWE+T5IdYO4dauURIYyCGgbOtidL9Ow1xvTE4WI+WdPwdNa+UJCDV3s2MV08WAUdn4Vw3wRKfp
	TDgaN9bpGUgGfDtVkku7L0//WegE=
X-Gm-Gg: ASbGncsUOj+ICzqqTbrt8eHgk6nFB+6kCLEh0TgH+xeQ5xAPu2xTP8UyZXdcf3Ss9FT
	9lDRifgOh7+bBFoTs6/E6wB4pCl0h3dC4
X-Google-Smtp-Source: AGHT+IFPLQ4kD55ipscfneOMwH6M1grAjwCexFL2iWSUA60w/lgSc72SvB4wcimADsy1TeeNf6U/Zr4rADz44WiJH7s=
X-Received: by 2002:a17:902:f54b:b0:20c:7196:a1e9 with SMTP id
 d9443c01a7336-21500f68830mr56354035ad.13.1732721345573; Wed, 27 Nov 2024
 07:29:05 -0800 (PST)
MIME-Version: 1.0
References: <gJ1l.1732699768315470195.YfEf@lists.yoctoproject.org> <8b559b3dba538d9f4f04c9e36e7c89293038ab1e.camel@pengutronix.de>
In-Reply-To: <8b559b3dba538d9f4f04c9e36e7c89293038ab1e.camel@pengutronix.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 27 Nov 2024 10:28:53 -0500
Message-ID: <CADkTA4NRRQxmoSr8_qe+msT9UMncCwjte6oed-4boGe0dVMYkQ@mail.gmail.com>
Subject: Re: [yocto] KERNEL_VERSION inconsistency using out-of-tree module
 with patched kernel source
To: =?UTF-8?Q?Enrico_J=C3=B6rns?= <ejo@pengutronix.de>
Cc: yocto@lists.yoctoproject.org, cgu@ivu.de
Content-Type: multipart/alternative; boundary="0000000000004c38d90627e6a0a8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Nov 2024 15:29:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64367

--0000000000004c38d90627e6a0a8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 27, 2024 at 8:24=E2=80=AFAM Enrico J=C3=B6rns <ejo@pengutronix.=
de> wrote:

> Hi,
>
> Am Mittwoch, dem 27.11.2024 um 01:29 -0800 schrieb Christian Gudrian via
> lists.yoctoproject.org:
> > Hello!
> > Kernel modules depend on a specific version of the kernel package that
> includes the Git commit
> > hash of the kernel source tree at compile time (KERNEL_VERSION). When
> using a patched kernel
> > source this Git commit hash changes each time the patches get applied,
> making each kernel binary
> > effectively unique. This KERNEL_VERSION, however, is not part of the
> shared state hash signature,
> > as for this purpose it gets replaced by the plain LINUX_VERSION.
> > Building out-of-tree kernel modules depend on a locally compiled kernel=
.
> Doing this in a clean
> > working directory leads to a freshly patched kernel source which in tur=
n
> results in a new
> > KERNEL_VERSION. The out-of-tree kernel module then RDEPENDS on a kernel
> package with this new
> > KERNEL_VERSION. As the shared state signature of the newly compiled
> kernel matches the existing
> > one (the LINUX_VERSION hasn't changed) the new kernel is not packaged
> and doesn't end up in the
> > package feed.
> > Consequently installation of the out-of-tree kernel module fails as the
> required kernel package is
> > not available.
> > I have tried to make the packages aware of the specific KERNEL_VERSION.
> But as this variable gets
> > re-assigned during parsing I get unstable basehash values.
> > Another approach would be to apply the patches in the upstream
> repository to circumvent the need
> > for local patching.
> > Is there an easier way?
>
> I have some context on this that I would like to add since we just faced =
a
> similar issue in a
> project.
>
> The above-mentioned issue is caused by a combinations of:
>
>  * a kernel recipe using kernel-yocto.bbclass
>  * kernel source pointing to tar (rather than a git)
>  * CONFIG_LOCALVERSION_AUTO set in kernel config
>
> The kernel-yocto class creates a Git repository from the archive content,
> resulting in an
> unreproducible commit hash (due to using the current user's Git author
> settings and the current
> system time). Subsequently, CONFIG_LOCALVERSION_AUTO causes this commit
> hash to be embedded in the
> kernel version, leading to non-reproducible kernel version strings.
>
> I guess the correct way to handle this would be to create the initial git
> commit with e.g.
> PATCH_GIT_USER_NAME/PATCH_GIT_USER_EMAIL and set the date to something
> like SOURCE_DATE_EPOCH.
>

That should already be in place (the username and email). See the call to
"check_git_config" in the bbclass. If it really is just the creation of the
repository that is the issue here, then I could absolutely bring over some
of the reproducible git options that are used in the kern-tools (see below)=
.

It also depends on exactly how the kernel is being patched. If the
kern-tools are being used, then reproducible commits are already the case.

If the lib/oe/patch.bbclass is being used, I don't see options like
--committer-date-is-author-date being used, but I suspect I'm just not
looking in the right place, since if the weren't anyone using
PATCHTOOL=3D"git" might be running into reproducibility issues, but only if
what they are building captures git hashes .... which is the hint).


>
> If that sounds right, I could make a patch against kernel-yocto.bbclass.
>
> A project-specific quick fix would be of course to just disable
> CONFIG_LOCALVERSION_AUTO.
>

This is what I do in oe-core (I've never liked localversion_auto).

Bruce



>
> Regards, Enrico
>
> > Christian
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#64358):
> https://lists.yoctoproject.org/g/yocto/message/64358
> > Mute This Topic: https://lists.yoctoproject.org/mt/109804058/3616721
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ejo@pengutronix.de]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
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

--0000000000004c38d90627e6a0a8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_defa=
ult" style=3D"font-size:small"><br></div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 27, 2024 at 8:24=E2=80=
=AFAM Enrico J=C3=B6rns &lt;<a href=3D"mailto:ejo@pengutronix.de" target=3D=
"_blank">ejo@pengutronix.de</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">Hi,<br>
<br>
Am Mittwoch, dem 27.11.2024 um 01:29 -0800 schrieb Christian Gudrian via <a=
 href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank=
">lists.yoctoproject.org</a>:<br>
&gt; Hello!<br>
&gt; Kernel modules depend on a specific version of the kernel package that=
 includes the Git commit<br>
&gt; hash of the kernel source tree at compile time (KERNEL_VERSION). When =
using a patched kernel<br>
&gt; source this Git commit hash changes each time the patches get applied,=
 making each kernel binary<br>
&gt; effectively unique. This KERNEL_VERSION, however, is not part of the s=
hared state hash signature,<br>
&gt; as for this purpose it gets replaced by the plain LINUX_VERSION.<br>
&gt; Building out-of-tree kernel modules depend on a locally compiled kerne=
l. Doing this in a clean<br>
&gt; working directory leads to a freshly patched kernel source which in tu=
rn results in a new<br>
&gt; KERNEL_VERSION. The out-of-tree kernel module then RDEPENDS on a kerne=
l package with this new<br>
&gt; KERNEL_VERSION. As the shared state signature of the newly compiled ke=
rnel matches the existing<br>
&gt; one (the LINUX_VERSION hasn&#39;t changed) the new kernel is not packa=
ged and doesn&#39;t end up in the<br>
&gt; package feed.<br>
&gt; Consequently installation of the out-of-tree kernel module fails as th=
e required kernel package is<br>
&gt; not available.<br>
&gt; I have tried to make the packages aware of the specific KERNEL_VERSION=
. But as this variable gets<br>
&gt; re-assigned during parsing I get unstable basehash values.<br>
&gt; Another approach would be to apply the patches in the upstream reposit=
ory to circumvent the need<br>
&gt; for local patching.<br>
&gt; Is there an easier way?<br>
<br>
I have some context on this that I would like to add since we just faced a =
similar issue in a<br>
project.<br>
<br>
The above-mentioned issue is caused by a combinations of:<br>
<br>
=C2=A0* a kernel recipe using kernel-yocto.bbclass<br>
=C2=A0* kernel source pointing to tar (rather than a git)<br>
=C2=A0* CONFIG_LOCALVERSION_AUTO set in kernel config<br>
<br>
The kernel-yocto class creates a Git repository from the archive content, r=
esulting in an<br>
unreproducible commit hash (due to using the current user&#39;s Git author =
settings and the current<br>
system time). Subsequently, CONFIG_LOCALVERSION_AUTO causes this commit has=
h to be embedded in the<br>
kernel version, leading to non-reproducible kernel version strings.<br>
<br>
I guess the correct way to handle this would be to create the initial git c=
ommit with e.g.<br>
PATCH_GIT_USER_NAME/PATCH_GIT_USER_EMAIL and set the date to something like=
 SOURCE_DATE_EPOCH.<br></blockquote><div><br></div><div><div class=3D"gmail=
_default" style=3D"font-size:small">That should already be in place (the us=
ername and email). See the call to &quot;check_git_config&quot; in the bbcl=
ass. If it really is just the creation of the repository that is the issue =
here, then I could absolutely bring over some of the reproducible git optio=
ns that are used in the kern-tools (see below).</div><div class=3D"gmail_de=
fault" style=3D"font-size:small"><br></div><div class=3D"gmail_default" sty=
le=3D"font-size:small">It also depends on exactly how the kernel is being p=
atched. If the kern-tools are being used, then reproducible commits are alr=
eady the case.</div><div class=3D"gmail_default" style=3D"font-size:small">=
<br></div><div class=3D"gmail_default" style=3D"font-size:small">If the lib=
/oe/patch.bbclass is being used, I don&#39;t see options like --committer-d=
ate-is-author-date being used, but I suspect I&#39;m just not looking in th=
e right place, since if the weren&#39;t anyone using PATCHTOOL=3D&quot;git&=
quot; might be running into reproducibility issues, but only if what they a=
re building captures git hashes .... which is the hint).</div><div class=3D=
"gmail_default" style=3D"font-size:small">=C2=A0</div></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex">
<br>
If that sounds right, I could make a patch against kernel-yocto.bbclass.<br=
>
<br>
A project-specific quick fix would be of course to just disable CONFIG_LOCA=
LVERSION_AUTO.<br></blockquote><div><br></div><div><div class=3D"gmail_defa=
ult" style=3D"font-size:small">This is what I do in oe-core (I&#39;ve never=
 liked localversion_auto).</div><div class=3D"gmail_default" style=3D"font-=
size:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small=
">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">
<br>
Regards, Enrico<br>
<br>
&gt; Christian<br>
&gt; <br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#64358): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/64358" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/64358</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10980405=
8/3616721" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/109804058/3616721</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a>=C2=A0[<a href=3D"mailto:ejo@pengutronix.de" target=3D"_blank">ej=
o@pengutronix.de</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; <br>
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
</div>

--0000000000004c38d90627e6a0a8--

