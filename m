Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1422DC4332F
	for <webhook@archiver.kernel.org>; Thu,  3 Nov 2022 21:14:06 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web09.3935.1667510035404429504
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Nov 2022 14:13:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20210112.gappssmtp.com header.s=20210112 header.b=5Xm2OYl5;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.44, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f44.google.com with SMTP id n12so8585021eja.11
        for <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 14:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=eeQJF9mYPsg1bTz6HmJdwX9kVAQcotlS7F+UnGk01HA=;
        b=5Xm2OYl5qkI44ZZOG1GJoz+NMq27hCWrHeTJBIxAGhjAnwOOa1Ldvf5l6cLY33fXCF
         4nSJ4X0ZiOsIP5KBVyiu1epN5l/twMzvPm1kCGGVe90X+/SR6KaXt//CIHA3XWdiO+OX
         UUbdOLiDpK1bFG3MIXWlwZKRNOm8E9fQ2bWM8ULIKRkih+y5i0EEz1fHbTnsT8t8VerM
         Rz7AezULriafPkJSrMJOZTMmtV4C2Tn9I80z0yIXBzIoGOXz7DRnRKhsKXLGLG88/shn
         /ryR+Xf5qrxXEv73ECxISA6B5TaMeSpV4pxDvysQoHOY23MDa83plJKIdfhwfKfCjtMN
         mUEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eeQJF9mYPsg1bTz6HmJdwX9kVAQcotlS7F+UnGk01HA=;
        b=AaLgjMMzpjH82rvFh36OQZ5O5xlxIYIcfHtw0jgVYA0C07Rh+uNwmLDX5vtT/Noi8P
         HDIY54atubSffSHlTohe6XLUkzFUWN9phTWzVsS+X3syX/u9PhFGhcuiqhWuX5WnDedx
         cYU7Sc4gu7/cmTrV4DNjD4cR9a3E5wKzmVulzyPSV9JFEjBQN638iyTAjwDV/zyROVL8
         Fgg+TszhF2z9UqCcAI0wonJ06uv0mCg4M2rTrZBmLuSxYKA9GdHsME95GNaEteJlkJ8h
         C2OPKJl7Fx5tmr+px9Cbm7kC3lSWGD+naKJNJS9Iz+GWNQXrvb6Xex5rdGJCdxnVl4zy
         shEQ==
X-Gm-Message-State: ACrzQf1I7GKKFWSDMDB5fJgtN+qh+AWiQ2JmDpUTJ01owRk8+dwFqHXU
	bK25C0uy4S0xzC3aRFd3Bz4et5odhaGCj5o42XRAUw==
X-Google-Smtp-Source: AMsMyM4SViT0rouc+dBMP+Da4BIHVq2jop0k2NKr4vB+oHneIKmXlH4fztSmNaj34wy7s3FRc/KbRBiKbdD0X7eA9Hk=
X-Received: by 2002:a17:907:75f1:b0:78a:f935:647d with SMTP id
 jz17-20020a17090775f100b0078af935647dmr30701392ejc.587.1667510033834; Thu, 03
 Nov 2022 14:13:53 -0700 (PDT)
MIME-Version: 1.0
References: <EJtz.1667505293534778480.65wW@lists.yoctoproject.org>
In-Reply-To: <EJtz.1667505293534778480.65wW@lists.yoctoproject.org>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 3 Nov 2022 22:13:27 +0100
Message-ID: <CAEt6NwoaVDgwO5-5ins-RWUp7jkc61cdFrtGeCz03hKwK2Z6KA@mail.gmail.com>
Subject: Re: [yocto] Scope of the build parameters #systemd
To: martin.leduc@luminator.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000039f91705ec976f08"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Nov 2022 21:14:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58478

--00000000000039f91705ec976f08
Content-Type: text/plain; charset="UTF-8"

Hi Martin,

its Yocto chant #1: "Recipe data is local, configuration data is global."

Means: whatever happens in a recipe, other recipes can't see it. Whatever
happens in a configuration file (local, machine, distro), it is visible
everywhere. An image is just a recipe, in the end - so whatever you do
there, it cannot affect the distribution. In a nutshell: you can't set
DISTRO_FEATURES in an image.

Greetz

On Thu, Nov 3, 2022 at 8:54 PM Martin Leduc via lists.yoctoproject.org
<martin.leduc=luminator.com@lists.yoctoproject.org> wrote:

> Hi everyone,
>
> I'm wondering how to figure out the scope of a set of parameters.
> Example.  I have an Image (my-core-image-minimal.bb) recipe containing
> the following parameters
>
> ###########
> # systemd #
> ###########
> inherit systemd
> DISTRO_FEATURES_append = " systemd "
> DISTRO_FEATURES_BACKFILL_CONSIDERED += " sysvinit "
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
> IMAGE_ROOTFS_EXTRA_SPACE_append = "${@bb.utils.contains("DISTRO_FEATURES",
> "systemd", " + 4096", "" ,d)}"
>
> SystemD isn't deployed in my image as the init_manager.  Now, I put the
> parameters into local.conf
>
> ###########
> # systemd #
> ###########
> INHERIT += " systemd "
> DISTRO_FEATURES_append = " systemd "
> DISTRO_FEATURES_BACKFILL_CONSIDERED += " sysvinit "
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"
> IMAGE_ROOTFS_EXTRA_SPACE_append = "${@bb.utils.contains("DISTRO_FEATURES",
> "systemd", " + 4096", "" ,d)}"
>
> It works!!!!
>
> I'm confused because my comprehension is when I run bitbake
> my-core-image-minimal , the parameters defined in this image are defined at
> the top level of the bitbake configuration parameters no?
>
> Seriously, I have a lots of difficulties understanding the scope of a
> parameter, where to put it.  At the limit, my comprehension is that I can
> have two recipes:
>
>    - my-core-image-minimal-sysvinit.bb
>    - my-core-image-minimal-systemd.bb
>
> The systemd one define the systemd parameters, the sysvinit doesn't
> implement anything else.
>
> What does I miss?
>
> Thank you all :)
> Martin
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#58477):
> https://lists.yoctoproject.org/g/yocto/message/58477
> Mute This Topic: https://lists.yoctoproject.org/mt/94791874/4689568
> Mute #systemd:https://lists.yoctoproject.org/g/yocto/mutehashtag/systemd
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000039f91705ec976f08
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Martin,<div><br></div><div>its Yocto chant #1: &quot;Re=
cipe data is local, configuration data is global.&quot;</div><div><br></div=
><div>Means: whatever happens in a recipe, other recipes can&#39;t see it. =
Whatever happens in a configuration file (local, machine, distro), it is vi=
sible everywhere. An image is just a recipe, in the end - so whatever you d=
o there, it cannot affect the distribution. In a nutshell: you can&#39;t se=
t DISTRO_FEATURES in an image.</div><div><br></div><div>Greetz</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu,=
 Nov 3, 2022 at 8:54 PM Martin Leduc via <a href=3D"http://lists.yoctoproje=
ct.org">lists.yoctoproject.org</a> &lt;martin.leduc=3D<a href=3D"mailto:lum=
inator.com@lists.yoctoproject.org">luminator.com@lists.yoctoproject.org</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi e=
veryone,<br><br>I&#39;m wondering how to figure out the scope of a set of p=
arameters.=C2=A0 Example.=C2=A0 I have an Image (<a href=3D"http://my-core-=
image-minimal.bb" target=3D"_blank">my-core-image-minimal.bb</a>) recipe co=
ntaining the following parameters
<blockquote>
<div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-fa=
mily:Consolas,&quot;Courier New&quot;,monospace;line-height:19px;white-spac=
e:pre-wrap">
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(106,153,85)"=
>###########</span></div>
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(106,153,85)"=
># systemd #</span></div>
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(106,153,85)"=
>###########</span></div>
<div><span style=3D"color:rgb(206,145,120)"><span style=3D"color:rgb(156,22=
0,254)">inherit s</span></span><span style=3D"color:rgb(206,145,120)">ystem=
d</span></div>
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(156,220,254)=
">DISTRO_FEATURES_append</span> =3D <span style=3D"color:rgb(206,145,120)">=
&quot; systemd &quot;</span></div>
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(156,220,254)=
">DISTRO_FEATURES_BACKFILL_CONSIDERED</span> +=3D <span style=3D"color:rgb(=
206,145,120)">&quot; sysvinit &quot;</span></div>
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(156,220,254)=
">VIRTUAL-RUNTIME_init_manager</span> =3D <span style=3D"color:rgb(206,145,=
120)">&quot;systemd&quot;</span></div>
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(156,220,254)=
">VIRTUAL-RUNTIME_initscripts</span> =3D <span style=3D"color:rgb(206,145,1=
20)">&quot;systemd-compat-units&quot;</span></div>
<div style=3D"color:rgb(212,212,212)"><span style=3D"color:rgb(156,220,254)=
">IMAGE_ROOTFS_EXTRA_SPACE_append</span> =3D <span style=3D"color:rgb(206,1=
45,120)">&quot;${@bb.utils.contains(&quot;</span>DISTRO_FEATURES<span style=
=3D"color:rgb(206,145,120)">&quot;, &quot;</span>systemd<span style=3D"colo=
r:rgb(206,145,120)">&quot;, &quot;</span> + 4096<span style=3D"color:rgb(20=
6,145,120)">&quot;, &quot;&quot; ,d)}&quot;</span></div>
</div>
</blockquote>
SystemD isn&#39;t deployed in my image as the init_manager.=C2=A0 Now, I pu=
t the parameters into local.conf
<blockquote>
<div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-fa=
mily:Consolas,&quot;Courier New&quot;,monospace;line-height:19px;white-spac=
e:pre-wrap">
<div><span style=3D"color:rgb(106,153,85)">###########</span></div>
<div><span style=3D"color:rgb(106,153,85)"># systemd #</span></div>
<div><span style=3D"color:rgb(106,153,85)">###########</span></div>
<div><span style=3D"color:rgb(156,220,254)">INHERIT</span> +=3D <span style=
=3D"color:rgb(206,145,120)">&quot; systemd &quot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">DISTRO_FEATURES_append</span> =
=3D <span style=3D"color:rgb(206,145,120)">&quot; systemd &quot;</span></di=
v>
<div><span style=3D"color:rgb(156,220,254)">DISTRO_FEATURES_BACKFILL_CONSID=
ERED</span> +=3D <span style=3D"color:rgb(206,145,120)">&quot; sysvinit &qu=
ot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">VIRTUAL-RUNTIME_init_manager</s=
pan> =3D <span style=3D"color:rgb(206,145,120)">&quot;systemd&quot;</span><=
/div>
<div><span style=3D"color:rgb(156,220,254)">VIRTUAL-RUNTIME_initscripts</sp=
an> =3D <span style=3D"color:rgb(206,145,120)">&quot;systemd-compat-units&q=
uot;</span></div>
<div><span style=3D"color:rgb(156,220,254)">IMAGE_ROOTFS_EXTRA_SPACE_append=
</span> =3D <span style=3D"color:rgb(206,145,120)">&quot;${@bb.utils.contai=
ns(&quot;</span>DISTRO_FEATURES<span style=3D"color:rgb(206,145,120)">&quot=
;, &quot;</span>systemd<span style=3D"color:rgb(206,145,120)">&quot;, &quot=
;</span> + 4096<span style=3D"color:rgb(206,145,120)">&quot;, &quot;&quot; =
,d)}&quot;</span></div>
</div>
</blockquote>
It works!!!!<br><br>I&#39;m confused because my comprehension is when I run=
 bitbake my-core-image-minimal , the parameters defined in this image are d=
efined at the top level of the bitbake configuration parameters no?<br><br>=
Seriously, I have a lots of difficulties understanding the scope of a param=
eter, where to put it.=C2=A0 At the limit, my comprehension is that I can h=
ave two recipes:<br>
<ul>
<li><a href=3D"http://my-core-image-minimal-sysvinit.bb" target=3D"_blank">=
my-core-image-minimal-sysvinit.bb</a></li>
<li><a href=3D"http://my-core-image-minimal-systemd.bb" target=3D"_blank">m=
y-core-image-minimal-systemd.bb</a></li>
</ul>
The systemd one define the systemd parameters, the sysvinit doesn&#39;t imp=
lement anything else.<br><br>What does I miss?<br><br>Thank you all :)<br>M=
artin<br><br><br>
<div style=3D"color:rgb(212,212,212);background-color:rgb(30,30,30);font-fa=
mily:Consolas,&quot;Courier New&quot;,monospace;line-height:19px;white-spac=
e:pre-wrap">
<div><span style=3D"color:rgb(206,145,120)">=C2=A0</span></div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#58477): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58477" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58477</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94791874/4689=
568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94791874/4689568</a><br>
Mute #systemd:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/systemd" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/systemd</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000039f91705ec976f08--

