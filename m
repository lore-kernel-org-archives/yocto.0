Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CC24C4167B
	for <webhook@archiver.kernel.org>; Fri,  8 Dec 2023 16:19:55 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.40016.1702052386622313853
 for <yocto@lists.yoctoproject.org>;
 Fri, 08 Dec 2023 08:19:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=mZU5C1AE;
 spf=pass (domain: gmail.com, ip: 209.85.219.180, mailfrom: mattwood2000@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-dbc4df9fb11so1060167276.0
        for <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 08:19:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702052386; x=1702657186; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=suD9RdH3NjE+qbLsWlXXK0ufG4tWkYOUOuQAETOWRR8=;
        b=mZU5C1AEzm7lQIXjVDvHQti6bqS0pBiAH2/Ax70ORDjhXyvmCKTb1mpNUUrG/1fH+k
         NM8DDuH/RrWsbNt9TNQ5ttpTQybiTkeOiH4mthkKRzfQ9kaKsF024mR7gMw/MGGdTiN7
         t4IS1iQTqZ5LEo2y7RcY4JXL2jsX3REdyd+1mHdwwzjB6jy2S0lfG2qY7+apYEyi2Ny3
         EIEQdFpR74i2TJK/As9SiGoJAahLllIkyS3u0ZZzI7iRDAgENcujOFJ5JVZp1JRfhPVR
         BxuBDIErFRw31r/qzvtLC2hHPyGz4CpVBXOk/H9Zx2Q8LmBx7mc7gBy10P988G3bqbUh
         FBXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702052386; x=1702657186;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=suD9RdH3NjE+qbLsWlXXK0ufG4tWkYOUOuQAETOWRR8=;
        b=HDmXji5Gi3wjMKQEYvOcFTzRysuADDfiXrsLIOhE1evEIEcxq+537m8FFqy34mW8KJ
         xzjPYOs3nwF5Z0vURQIqYmdSnOVEsh1Zn3zfloxjwtxALyemC3ndcS6EfH5Be3oPR7Uy
         RxzQBTIMAE5NQGhQw4OzG0Biud4BMGB0zUiwjbOij8ST1Wce6pAEKsbp26ASag1r0qhv
         wz7evOrkcue7DERtaLYfDRB3ssp9mhtbmoD3syFwF+92J3bjE0eSl76SqRHYekOOCW7A
         9jPUjk8q4NHFzYaYPU5qpmyS6VwUtLXwU31n1h0wnBv9sAXOPWftuynV5KKtcHMBfuxj
         c0Tg==
X-Gm-Message-State: AOJu0YwrNwbq97RG3mY53zyGIWFJDslIqpbPjbExwOW5fchxGfuKcuoi
	0KL8hyAQ1VAGjSJBPqxGn4xBrQfEUkAPelv5B1Y=
X-Google-Smtp-Source: AGHT+IFzeuFT9u7zT5V2fRFngkMMd4T2UmgPfba1xo73COUSafuQ33ko+rbqCotIQGLlmUih5szzIOKS/6pesq3bZlQ=
X-Received: by 2002:a25:97c4:0:b0:db7:dacf:59ef with SMTP id
 j4-20020a2597c4000000b00db7dacf59efmr150556ybo.99.1702052385690; Fri, 08 Dec
 2023 08:19:45 -0800 (PST)
MIME-Version: 1.0
References: <CADjezmYYxWD8YgFKQyboDhbO7V8OXrzHm5_N+aOJvjxth53btQ@mail.gmail.com>
 <35CEFCFD-4EFF-4EEE-A151-132DBF65E58D@arm.com> <CAMKF1spaN_MxCUui0JdAqV2qbuawuyEdkp0NEUoUuudmttnYAQ@mail.gmail.com>
In-Reply-To: <CAMKF1spaN_MxCUui0JdAqV2qbuawuyEdkp0NEUoUuudmttnYAQ@mail.gmail.com>
From: mattwood2000@gmail.com
Date: Fri, 8 Dec 2023 11:19:34 -0500
Message-ID: <CADjezmZndd5oPJFu=50YyfQ5ECBcxYE2e4XOPzqexa_hs3d2ug@mail.gmail.com>
Subject: Re: [yocto] initramfs creation
To: Khem Raj <raj.khem@gmail.com>
Cc: Ross Burton <ross.burton@arm.com>, Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d69a14060c01f311"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Dec 2023 16:19:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61843

--000000000000d69a14060c01f311
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks all for the suggestions.

It is not an issue with kernel modules as I have them in /lib/modules/...

I managed to get a bit further and create a working image that boots
fully.  However, the only way I could do this was to use the
ROOTFS_POSTPROCESS_COMMAND to manually create a symlink for /init ->
/lib/systemd/systemd

What I don't understand is in a normal build (i.e core-image-minimal, etc.)
I see /init get created automatically.  I cannot find in what class or
package this is actually done.  My recipe below.  Any thoughts?

Thanks again!

Matt.


On Thu, Dec 7, 2023 at 5:37=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote:

> On Thu, Dec 7, 2023 at 3:04=E2=80=AFAM Ross Burton <ross.burton@arm.com> =
wrote:
> >
> > On 6 Dec 2023, at 21:47, mattwood2000 via lists.yoctoproject.org
> <mattwood2000=3Dgmail.com@lists.yoctoproject.org> wrote:
> > >
> > >  Hi,
> > >
> > > I'm trying to create a custom initramfs to handle some things before
> switching root to my actual filesystem.  I followed the docs and have bee=
n
> able to use INITRAMFS_IMAGE =3D "custom-image" and INITRAMFS_IMAGE_BUNDLE=
 =3D
> "1" to generate a zImage for my ARM platform.
> > >
> > > The custom-image.bb recipe is based on the
> core-image-minimal-initramfs recipe and is in a meta-layer that has anoth=
er
> image recipe for the actual eMMC filesystem image.  Both the eMMC image a=
nd
> initramfs bundle are created.
> > >
> > > In custom-image.bb, PACKAGE_INSTALL includes INITRAMFS_SCRIPTS which
> seem to be geared towards live-image things but that's not what I want.
> > >
> > > The image boots but hangs waiting for removable media.  I figured out
> that /init is not pointing to systemd but the live-image script from
> recipes-core/initrdscripts.
> >
> > The problem is most likely that your kernel is missing eMMC drivers.
> They=E2=80=99re most likely built as kernel modules, but you didn=E2=80=
=99t install the
> modules into the initramfs.  One easy fix is to just add kernel-modules t=
o
> your initramfs.
>
> Right, this is how we tame bbb to include some USB drivers into kernel
> proper so that we can read the USB stick in initramfs
>
> SUMMARY =3D "initramfs image"

LICENSE =3D "MIT"

PACKAGE_INSTALL =3D " \
        base-files \
        base-passwd \
        systemd \
        ${ROOTFS_BOOTSTRAP_INSTALL} \
"

IMAGE_FEATURES =3D "debug-tweaks"
IMAGE_LINGUAS =3D ""

PACKAGE_EXCLUDE =3D "kernel-image-*"

IMAGE_FSTYPES =3D "${INITRAMFS_FSTYPES}"
IMAGE_NAME_SUFFIX ?=3D ""
IMAGE_ROOTFS_SIZE =3D "8192"
IMAGE_ROOTFS_EXTRA_SPACE =3D "0"

ROOTFS_PREPROCESS_COMMAND +=3D "install_init; "

install_init () {
        ln -sr ${IMAGE_ROOTFS}/lib/systemd/systemd ${IMAGE_ROOTFS}/init
}

inherit core-image


>
> https://github.com/YoeDistro/yoe-distro/blob/master/sources/meta-yoe/dyna=
mic-layers/meta-ti/recipes-kernel/linux/files/updater.cfg
>
> >
> > I do have some tweaks to the initramfs images to post, but they=E2=80=
=99re not
> quite ready yet. You can see the WIP in poky-contrib:ross/genericarm64.
> >
> > Ross
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#61824):
> https://lists.yoctoproject.org/g/yocto/message/61824
> > Mute This Topic: https://lists.yoctoproject.org/mt/103022933/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/6692173/1997914/1837948400/x=
yzzy
> [raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000d69a14060c01f311
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Thanks all for the suggestions.</div=
><div><br></div><div>It is not an issue with kernel modules as I have them =
in /lib/modules/...</div><div><br></div><div>I managed to get a bit further=
 and create a working image that boots fully.=C2=A0 However, the only way I=
 could do this was to use the ROOTFS_POSTPROCESS_COMMAND to manually create=
 a symlink for /init -&gt; /lib/systemd/systemd</div><div><br></div><div>Wh=
at I don&#39;t understand is in a normal build (i.e core-image-minimal, etc=
.) I see /init get created automatically.=C2=A0 I cannot find in what class=
 or package this is actually done.=C2=A0 My recipe below.=C2=A0 Any thought=
s?</div><div><br></div><div>Thanks again!</div><div><br></div><div>Matt.<br=
></div></div><div><br></div><div><br></div><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Thu, Dec 7, 2023 at 5:37=E2=80=AFPM Khe=
m Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Thu, D=
ec 7, 2023 at 3:04=E2=80=AFAM Ross Burton &lt;<a href=3D"mailto:ross.burton=
@arm.com" target=3D"_blank">ross.burton@arm.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 6 Dec 2023, at 21:47, mattwood2000 via <a href=3D"http://lists.yoct=
oproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</=
a> &lt;mattwood2000=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 Hi,<br>
&gt; &gt;<br>
&gt; &gt; I&#39;m trying to create a custom initramfs to handle some things=
 before switching root to my actual filesystem.=C2=A0 I followed the docs a=
nd have been able to use INITRAMFS_IMAGE =3D &quot;custom-image&quot; and I=
NITRAMFS_IMAGE_BUNDLE =3D &quot;1&quot; to generate a zImage for my ARM pla=
tform.<br>
&gt; &gt;<br>
&gt; &gt; The <a href=3D"http://custom-image.bb" rel=3D"noreferrer" target=
=3D"_blank">custom-image.bb</a> recipe is based on the core-image-minimal-i=
nitramfs recipe and is in a meta-layer that has another image recipe for th=
e actual eMMC filesystem image.=C2=A0 Both the eMMC image and initramfs bun=
dle are created.<br>
&gt; &gt;<br>
&gt; &gt; In <a href=3D"http://custom-image.bb" rel=3D"noreferrer" target=
=3D"_blank">custom-image.bb</a>, PACKAGE_INSTALL includes INITRAMFS_SCRIPTS=
 which seem to be geared towards live-image things but that&#39;s not what =
I want.<br>
&gt; &gt;<br>
&gt; &gt; The image boots but hangs waiting for removable media.=C2=A0 I fi=
gured out that /init is not pointing to systemd but the live-image script f=
rom recipes-core/initrdscripts.<br>
&gt;<br>
&gt; The problem is most likely that your kernel is missing eMMC drivers.=
=C2=A0 They=E2=80=99re most likely built as kernel modules, but you didn=E2=
=80=99t install the modules into the initramfs.=C2=A0 One easy fix is to ju=
st add kernel-modules to your initramfs.<br>
<br>
Right, this is how we tame bbb to include some USB drivers into kernel<br>
proper so that we can read the USB stick in initramfs<br>
<br></blockquote><div>SUMMARY =3D &quot;initramfs image&quot;<br><br>LICENS=
E =3D &quot;MIT&quot;<br><br>PACKAGE_INSTALL =3D &quot; \<br>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 base-files \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 base-passwd \<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 systemd \<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${ROOT=
FS_BOOTSTRAP_INSTALL} \<br>&quot;<br><br>IMAGE_FEATURES =3D &quot;debug-twe=
aks&quot;<br>IMAGE_LINGUAS =3D &quot;&quot;<br><br>PACKAGE_EXCLUDE =3D &quo=
t;kernel-image-*&quot;<br><br>IMAGE_FSTYPES =3D &quot;${INITRAMFS_FSTYPES}&=
quot;<br>IMAGE_NAME_SUFFIX ?=3D &quot;&quot;<br>IMAGE_ROOTFS_SIZE =3D &quot=
;8192&quot;<br>IMAGE_ROOTFS_EXTRA_SPACE =3D &quot;0&quot;<br><br>ROOTFS_PRE=
PROCESS_COMMAND +=3D &quot;install_init; &quot;<br><br>install_init () {<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sr ${IMAGE_ROOTFS}/lib/systemd/systemd ${I=
MAGE_ROOTFS}/init<br>}<br><br>inherit core-image</div><div>=C2=A0<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<a href=3D"https://github.com/YoeDistro/yoe-distro/blob/master/sources/meta=
-yoe/dynamic-layers/meta-ti/recipes-kernel/linux/files/updater.cfg" rel=3D"=
noreferrer" target=3D"_blank">https://github.com/YoeDistro/yoe-distro/blob/=
master/sources/meta-yoe/dynamic-layers/meta-ti/recipes-kernel/linux/files/u=
pdater.cfg</a><br>
<br>
&gt;<br>
&gt; I do have some tweaks to the initramfs images to post, but they=E2=80=
=99re not quite ready yet. You can see the WIP in poky-contrib:ross/generic=
arm64.<br>
&gt;<br>
&gt; Ross<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#61824): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/61824" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/61824</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10302293=
3/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/103022933/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/6=
692173/1997914/1837948400/xyzzy" rel=3D"noreferrer" target=3D"_blank">https=
://lists.yoctoproject.org/g/yocto/leave/6692173/1997914/1837948400/xyzzy</a=
> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.c=
om</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div>

--000000000000d69a14060c01f311--

