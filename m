Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
 by mx.groups.io with SMTP id smtpd.web12.55481.1594034218856095094
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Jul 2020 04:16:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BjdgEfwU;
 spf=pass (domain: gmail.com, ip: 209.85.221.178, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f178.google.com with SMTP id d64so8482109vke.4
        for <yocto@lists.yoctoproject.org>; Mon, 06 Jul 2020 04:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SDwmCS6V5MoAIEEZFmnqJIA9QW25H5/+VeTkcitjmig=;
        b=BjdgEfwUBPWeQmweuLLY7mcd4u3Tk/LRlxfyWnD4bV3h9LV3xBmXPQi60X1HtW7CJP
         YnJ/QrJenYujZNahkD+2SyEOmall+88TiZ91e0u/LYiSeGMXpy0jGc241jCetBOx+kPi
         z56EmjC/EGjmbEhFscT7TOkDFFqmfLglRZwualXjSb/iyF/mPUHZlbgvWMNulUk5rQFq
         AetMcDBo7wIN0gH42rFgmvP3gJQv/5w2aZ6dedTLJLCnQTPsR/1bWLj/IhyP8UyhHS9e
         pDcDTKQ+jd+yUwIl+3iKhAzxmcj4OF17QeuRaQqkRNjQmCCuYPLLAV2PU5D2O+XXWNRO
         UPvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SDwmCS6V5MoAIEEZFmnqJIA9QW25H5/+VeTkcitjmig=;
        b=Ebc8BYh+ebyfmJGXSygUWA8GTQBAZzlj1eUkwxKClpvFpgR5SzyevWRBJFn1YXW8f6
         mW8cY0FVN1dC7XrZdEFb/LzgSsJ5zha/YnPnuZCMjM0oCGLgIetfyqrgZVq4BBIJ/6+U
         1weVceCMaL1ABCZlgActoowe0bNtUFWh+D7Fax9rIbMsuvp6eX6PtqDM3WsTOSYD7bhk
         rq38YReaH16bs02gJQijCE4k0Q6HeKs8A16ySfntkoGDo7wHWNV5mPRVB8y/DzfZyP93
         II4fH5ataFmS/BZ9QCe1q8w1PTPEGVWFLoE0dG9CxEJdqC+KFfP+g70FkZhRnvmqNoDP
         NpkA==
X-Gm-Message-State: AOAM530Ufw6oJLJ+0htTTYLbhuqHzKDGeFs3n/w4HuHNqKOQka3l6Irx
	OJi962jhGgm62md1L+w0ua78ULndgXbtUMPTEUdMAa1a
X-Google-Smtp-Source: ABdhPJzzzy8Khyn12noIKnP91ZCNxRgOILpKyHxp1AzZJ7UAEpH11XMF4O2YADahvVAAMklCUSzuBj3V6jMsxOzpveQ=
X-Received: by 2002:a1f:a14f:: with SMTP id k76mr3724942vke.0.1594034217850;
 Mon, 06 Jul 2020 04:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <qZOx.1594033211826466725.wfsG@lists.yoctoproject.org>
In-Reply-To: <qZOx.1594033211826466725.wfsG@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 6 Jul 2020 13:16:46 +0200
Message-ID: <CANNYZj8NE5iGycy5sK_qvjq2aZaj96_+nC+A9rFTEvPskcYgwQ@mail.gmail.com>
Subject: Re: [yocto] #yocto howto use deltask
To: Hans-Ulrich Schlieben <hu.schlieben@codewrights.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000050991d05a9c40338"

--00000000000050991d05a9c40338
Content-Type: text/plain; charset="UTF-8"

You need to look into what the postinst_ontarget actually does, and why can
it only happen on target. Or do not use a readonly rootfs.

Alex

On Mon, 6 Jul 2020 at 13:00, Hans-Ulrich Schlieben <
hu.schlieben@codewrights.de> wrote:

> Hi,
>
> my image build fails with:
> ERROR: ims-image-fieldgate-1.0-r0 do_rootfs: The following packages could
> not be configured offline and rootfs is read-only: ['apparmor']
>
> The image build succeeds if i remove the task pkg_postinst_ontarget_${PN}
> from apparmor_2.13.3.bb.
>
> I tried to use deltask in my apparmor_2.13.3.bbappend with different
> settings:
> deltask postinst_ontarget
> deltask postinst
> deltask pkg_postinst
> deltask pkg_postinst_ontarget_
> deltask pkg_postinst_ontarget_apparmor
> deltask pkg_postinst_ontarget_apparmor_2
>
> and
>
> postinst_ontarget[noexec] = "1"
> postinst[noexec] = "1"
> pkg_postinst[noexec] = "1"
> pkg_postinst_ontarget_[noexec] = "1"
> pkg_postinst_ontarget_apparmor[noexec] = "1"
> pkg_postinst_ontarget_apparmor_2[noexec] = "1"
>
> but to no avail - I always get the rootfs error.
>
> I know how to patch source files. But it seems there is no way to patch a
> recipe.
> My workaround would be to make a copy of the apparmor recipe without the
> postinst part.
>
> Is there a better or another way to do this?
>
> Best regards
>
> hu
>
> 
>

--00000000000050991d05a9c40338
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You need to look into what the postinst_ontarget actu=
ally does, and why can it only happen on target. Or do not use a readonly r=
ootfs.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 6 Jul 2020 at 13:00, =
Hans-Ulrich Schlieben &lt;<a href=3D"mailto:hu.schlieben@codewrights.de">hu=
.schlieben@codewrights.de</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Hi,<br><br>my image build fails with:<br>
<div>ERROR: ims-image-fieldgate-1.0-r0 do_rootfs: The following packages c=
ould not be configured offline and rootfs is read-only: [&#39;apparmor&#39;=
]<br><br>The image build succeeds if i remove the task pkg_postinst_ontarge=
t_${PN} from <a href=3D"http://apparmor_2.13.3.bb" target=3D"_blank">apparm=
or_2.13.3.bb</a>.<br><br></div>
<div>I tried to use deltask in my apparmor_2.13.3.bbappend with different =
settings:</div>
<div>
<div>deltask postinst_ontarget</div>
<div>deltask postinst</div>
<div>deltask pkg_postinst</div>
<div>deltask pkg_postinst_ontarget_</div>
<div>deltask pkg_postinst_ontarget_apparmor</div>
<div>deltask pkg_postinst_ontarget_apparmor_2<br><br>and<br>
<div><br>postinst_ontarget[noexec] =3D &quot;1&quot;</div>
<div>postinst[noexec] =3D &quot;1&quot;</div>
<div>pkg_postinst[noexec] =3D &quot;1&quot;</div>
<div>pkg_postinst_ontarget_[noexec] =3D &quot;1&quot;</div>
<div>pkg_postinst_ontarget_apparmor[noexec] =3D &quot;1&quot;</div>
<div>pkg_postinst_ontarget_apparmor_2[noexec] =3D &quot;1&quot;</div>
<div>=C2=A0</div>
</div>
<div>but to no avail - I always get the rootfs error.=C2=A0<br><br>I know =
how to patch source files. But it seems there is no way to patch a recipe.<=
br>My workaround would be to make a copy of the apparmor recipe without the=
 postinst part.<br><br>Is there a better or another way to do this?<br><br>=
Best regards<br><br>hu<br><br></div>
</div>
<br>
</blockquote></div>

--00000000000050991d05a9c40338--
