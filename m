Return-Path: <pvanberlo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0A8BAC433F5
	for <webhook@archiver.kernel.org>; Fri, 28 Jan 2022 19:34:02 +0000 (UTC)
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com
 [209.85.216.52])
 by mx.groups.io with SMTP id smtpd.web08.977.1643398441582246720
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 11:34:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=HbK1XlY7;
 spf=pass (domain: gmail.com, ip: 209.85.216.52,
 mailfrom: pvanberlo@gmail.com)
Received: by mail-pj1-f52.google.com with SMTP id
 nn16-20020a17090b38d000b001b56b2bce31so7261694pjb.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 28 Jan 2022 11:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oJhOsXU8NQTyt52qzn+4s43MjSFiMMMMUiIXYkcRBVQ=;
        b=HbK1XlY7+wnzaRdzSqYOdjWF4sy+FefSkRW2r07p4agoSvRtPxf0rPSAS62VFCxESq
         7+BpvrqSy+cqsuilPj7+MjHq+azHNYfyepcd8ftS88S7enWks6PUqfefTDp4BPOQVThx
         tpYeNCNtwOGBmCqLIkd0254x/2gtluWXXSlgUKagKDpvHyiWfuKr3AyUcniWLYvd63Jd
         KuKyyUmduuEzEp6DzkeSFn7bWpp0TnPf2O8AsEdCMutoSL2Wr6kqjjnHZ1C5TeGldtkS
         oKTkYxkkHCJUr1kSmfaFZL5fAnD0SAS9n3y2RiayJu/mWbAhwMYC96oOTBcku4KGtN3E
         Np0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oJhOsXU8NQTyt52qzn+4s43MjSFiMMMMUiIXYkcRBVQ=;
        b=aziq4DqDDN7ZFmZfjyaSVTJw/jr+pqZlnQWbHNlVttVDIxSrOxXYN4ur/JxMg8VNdL
         ZVR3zr9unUF+FTxCuuY//ChTIeqdHvsrM0l2NgolxrTBKmeKYAW6vE9k9tYxxCdpYe0b
         y2a2qMdxt1JITaZpUG5F6JzOGAtJcT401eSRxAD5QKpWfH0as1Sr7wzB77jjqOTDY/uv
         xfQDUvml5+nVRVLfGhccXdv8jQjArobe4kw/UisDK6e4hB175ZPOzBkynCMS6B40D8gr
         QkeucDJnrkmew36kL+De+UKwTdPTFJ+0AH7CT4V5cH5yAWHcxMsXu57nqWJYwWvK/D1C
         i4ug==
X-Gm-Message-State: AOAM533zlJLzkUJE30EL2DIoDqDl5TQTJwR35hcOOHOu6hjgRM1ZBOEE
	iQFtnogfC7r7NeuRgD3L/1N3ipqlpTPsHBe8fQE=
X-Google-Smtp-Source: 
 ABdhPJxRhhVzzyHh3qPvnhZtMa9+wt++r6zCgh9oHNLE2sAB2ha4Yjjr/GM55x1rAJYmNPHeH6R+AiHbyHgWgnxsyAg=
X-Received: by 2002:a17:902:7784:: with SMTP id
 o4mr10059533pll.173.1643398440834;
 Fri, 28 Jan 2022 11:34:00 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAJxFkmoN9caLE2QkWhniQf8pMWNGFEa=suHMWFqESUi=pvMCYQ@mail.gmail.com>
 <52a7b807-5c51-b89b-53f0-01a8d86fa31e@windriver.com>
In-Reply-To: <52a7b807-5c51-b89b-53f0-01a8d86fa31e@windriver.com>
From: Paul van Berlo <pvanberlo@gmail.com>
Date: Fri, 28 Jan 2022 20:33:48 +0100
Message-ID: 
 <CAJxFkmpmzSCCtY=mO4x3LL-rO2OCqf08OPJNP97StyFg=hO_oQ@mail.gmail.com>
Subject: Re: [yocto] Preferred provide base-utils issue
To: Randy MacLeod <randy.macleod@windriver.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004a58c705d6a984fe"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Jan 2022 19:34:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56015

--0000000000004a58c705d6a984fe
Content-Type: text/plain; charset="UTF-8"

Hi,

Adding that line results in an error:

ERROR: Nothing RPROVIDES 'syslog' (but
/yocto/poky-dunfell/meta/recipes-core/packagegroups/
packagegroup-core-boot.bb,
/yocto/poky-dunfell/meta/recipes-core/initrdscripts/
initramfs-module-install_1.0.bb,
/yocto/poky-dunfell/meta/recipes-core/initrdscripts/
initramfs-module-install-efi_1.0.bb RDEPENDS on or otherwise requires it)

The kernel panic ends with "not syncing: Attempted to kill init!
exitcode=0x00000100". This is using the genericx86-64 machine.

Regards,

Paul van Berlo



On Fri, 28 Jan 2022 at 18:43 Randy MacLeod <randy.macleod@windriver.com>
wrote:

> On 2022-01-26 11:17, Paul van Berlo wrote:
> > Hello,
> >
> > so I'm a bit at a loss. I admit, I've not yet been using Yocto for a
> > long time. I'm trying to use base-utils as provided by
> > packagegroup-core-base-utils to have a more full featured set of base
> > utils instead of busybox. It all builds just fine, however, whatever I
> > do (using dunfell), it ends up with a kernel panic during boot.
> >
> > I added the following to local.conf on a clean clone of poky:
> >
> > INIT_MANAGER="systemd"
> >
> > IMAGE_FSTYPES="live"
> >
> > PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
> > VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
> > VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
> > VIRTUAL-RUNTIME_base-utils-syslog = ""
>
> Hi Paul,
>
> Try adding:
>
> VIRTUAL-RUNTIME_base-utils-syslog = "syslog"
>
> as shown on:
>
>
> https://git.yoctoproject.org/poky/tree/meta-poky/conf/local.conf.sample.extended#n371
>
> I would expect that since you have systemd, you'd have the systemd
> journal as well so
> you wouldn't need syslog but it would be good to do a sanity check.
>
>
> If that doesn't help, show us what the kernel panic is saying.
> Is this with a custom BSP and if so can you reproduce with qemux86-64?
>
> Try the same things using poky on the master branch if you can.
>
> ../Randy
>
>
> >
> > Does anyone have any idea how to get this to work?
> >
> > Regards,
> >
> > Paul van Berlo
> >
> > -=-=-=-=-=-=-=-=-=-=-=-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#55979):
> https://lists.yoctoproject.org/g/yocto/message/55979
> > Mute This Topic: https://lists.yoctoproject.org/mt/88700100/3616765
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> randy.macleod@windriver.com]
> > -=-=-=-=-=-=-=-=-=-=-=-
> >
>
> --
> # Randy MacLeod
> # Wind River Linux
>
>

--0000000000004a58c705d6a984fe
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"auto">Hi,</div><div dir=3D"auto"><br></div><di=
v dir=3D"auto">Adding that line results in an error:</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">ERROR: Nothing RPROVIDES &#39;syslog&#39; (but=
 /yocto/poky-dunfell/meta/recipes-core/packagegroups/<a href=3D"http://pack=
agegroup-core-boot.bb">packagegroup-core-boot.bb</a>, /yocto/poky-dunfell/m=
eta/recipes-core/initrdscripts/<a href=3D"http://initramfs-module-install_1=
.0.bb">initramfs-module-install_1.0.bb</a>, /yocto/poky-dunfell/meta/recipe=
s-core/initrdscripts/<a href=3D"http://initramfs-module-install-efi_1.0.bb"=
>initramfs-module-install-efi_1.0.bb</a> RDEPENDS on or otherwise requires =
it)<br></div><div dir=3D"auto"><br></div><div>The kernel panic ends with &q=
uot;not syncing: Attempted to kill init! exitcode=3D0x00000100&quot;. This =
is using the genericx86-64 machine.</div><div><br></div><div>Regards,</div>=
<div><br></div><div>Paul van Berlo</div><div dir=3D"auto"><br></div><div di=
r=3D"auto"><br></div></div><div><br><div class=3D"gmail_quote"><div dir=3D"=
ltr" class=3D"gmail_attr">On Fri, 28 Jan 2022 at 18:43 Randy MacLeod &lt;<a=
 href=3D"mailto:randy.macleod@windriver.com" target=3D"_blank">randy.macleo=
d@windriver.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On 2022-01-26 11:17, Paul van Berlo wrote:<br>
&gt; Hello,<br>
&gt;<br>
&gt; so I&#39;m a bit at a loss. I admit, I&#39;ve not yet been using Yocto=
 for a <br>
&gt; long time. I&#39;m trying to use base-utils as provided by <br>
&gt; packagegroup-core-base-utils to have a more full featured set of base =
<br>
&gt; utils instead of busybox. It all builds just fine, however, whatever I=
 <br>
&gt; do (using dunfell), it ends up with a kernel panic during boot.<br>
&gt;<br>
&gt; I added the following to local.conf on a clean clone of poky:<br>
&gt;<br>
&gt; INIT_MANAGER=3D&quot;systemd&quot;<br>
&gt;<br>
&gt; IMAGE_FSTYPES=3D&quot;live&quot;<br>
&gt;<br>
&gt; PREFERRED_PROVIDER_base-utils =3D &quot;packagegroup-core-base-utils&q=
uot;<br>
&gt; VIRTUAL-RUNTIME_base-utils =3D &quot;packagegroup-core-base-utils&quot=
;<br>
&gt; VIRTUAL-RUNTIME_base-utils-hwclock =3D &quot;util-linux-hwclock&quot;<=
br>
&gt; VIRTUAL-RUNTIME_base-utils-syslog =3D &quot;&quot;<br>
<br>
Hi Paul,<br>
<br>
Try adding:<br>
<br>
VIRTUAL-RUNTIME_base-utils-syslog =3D &quot;syslog&quot;<br>
<br>
as shown on:<br>
<br>
<a href=3D"https://git.yoctoproject.org/poky/tree/meta-poky/conf/local.conf=
.sample.extended#n371" rel=3D"noreferrer" target=3D"_blank">https://git.yoc=
toproject.org/poky/tree/meta-poky/conf/local.conf.sample.extended#n371</a><=
br>
<br>
I would expect that since you have systemd, you&#39;d have the systemd <br>
journal as well so<br>
you wouldn&#39;t need syslog but it would be good to do a sanity check.<br>
<br>
<br>
If that doesn&#39;t help, show us what the kernel panic is saying.<br>
Is this with a custom BSP and if so can you reproduce with qemux86-64?<br>
<br>
Try the same things using poky on the master branch if you can.<br>
<br>
../Randy<br>
<br>
<br>
&gt;<br>
&gt; Does anyone have any idea how to get this to work?<br>
&gt;<br>
&gt; Regards,<br>
&gt;<br>
&gt; Paul van Berlo<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#55979): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/55979" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/55979</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88700100=
/3616765" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/88700100/3616765</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:randy.macleod@windriver.com" target=3D"_blank=
">randy.macleod@windriver.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
<br>
</blockquote></div></div>

--0000000000004a58c705d6a984fe--

