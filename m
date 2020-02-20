Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
 by mx.groups.io with SMTP id smtpd.web10.7756.1582214943972922045
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Feb 2020 08:09:04 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=IqFvKXdl;
 spf=pass (domain: gmail.com, ip: 209.85.221.180, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f180.google.com with SMTP id g7so1320970vkl.12
        for <yocto@lists.yoctoproject.org>; Thu, 20 Feb 2020 08:09:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6UCzX3wFr5iypgsi2TIceIkJLI71YIodvMo0yqGVUuU=;
        b=IqFvKXdlo4P0o9rtXWtzwTL37Qc+S5TSapg8+GXh3QVfh26o7yDevU70cqTyd0Y4qe
         twPTrsIRtUV0l8ji7HrSbgIdO9ERv59wtZCkizh4wKju3Gk90nYNjdR+oU1zdF2aNanJ
         BCr6Zoea8NKhZhyk3J6EYETD7YJV7QVx9UIl3m8QEEL4SCkEF+m5S7eRUC3JndHVpu49
         I3Bm3XelpBZMjExm7fk/WXCuuqNkEHkJ31cPdF2aYPNOUYd4XibMQvOz5mU23BfKE8Ij
         RUjyiKPoxzaL54cP+gQWvZqWAmfIE83WzGQZcqmDHh7ygFPIvn9iYeoupDH/K8HSRqlk
         47Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6UCzX3wFr5iypgsi2TIceIkJLI71YIodvMo0yqGVUuU=;
        b=A7MN9v37TUbX4xv4rUESL9VWYPmQw0qhskHvDK4jcQspYBXyzGj2fcfH1wDSY69Ra2
         ahZSk75RpYaEir5+a8JkMejpVNaM7bRiptimDcunm28C1QtLIeudyWf6R5SfY1wUVGfT
         8dbRMyQ2RCb+lsU6awApgh/djWUx09NyemptAGVX7Xv3JpQv8ATgG7Vi75wyHqZlBJDK
         bFTwJhx7CnAL8dPnOY8zCKT5vHEHb3VZzR0QDA/a7MvxIjsVYGYtRBFaVD7t51mDMNFI
         Ctzqwgps4Ma2XSNPG7uqhQxKBh+ZNXpIcKUHty9cqIanwyhf7tcxgpzrxHWduINnCbWo
         oN4g==
X-Gm-Message-State: APjAAAWhhZOCi9RHHShQfDrIlU5c4MkvbaUZTNjEFyD9P3Qwudb53G+M
	I5AhgASg8dqgZOATy2hiHiVSq8kGpQyjqLUI/RI=
X-Google-Smtp-Source: APXvYqytlRsqP7P0Tq3w9rtPYaepxCeSFiNmOWezM7V4NEFPqHmof8my1qMDjtZsebvfhBFXixijT+n2Y1g9npn3vsE=
X-Received: by 2002:a05:6122:2b6:: with SMTP id 22mr13734915vkq.49.1582214942972;
 Thu, 20 Feb 2020 08:09:02 -0800 (PST)
MIME-Version: 1.0
References: <RlLC.1582214577544571845.5egw@lists.yoctoproject.org>
In-Reply-To: <RlLC.1582214577544571845.5egw@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 20 Feb 2020 17:09:25 +0100
Message-ID: <CANNYZj8SE1uH2AF1FhybZ2oiEjT1XExdWrYJ1ACo+WudiVpbXg@mail.gmail.com>
Subject: Re: [yocto] Lots of basehash related errors
To: Dmitri Toubelis <dmitri.toubelis@litmusautomation.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a25d3d059f041f0a"

--000000000000a25d3d059f041f0a
Content-Type: text/plain; charset="UTF-8"

It's an issue with a recipe in your custom layer. If you can show the
layer, we may be able to help.

Are you sure a current timestamp isn't sneaked into the build by
something in that layer?

Alex

On Thu, 20 Feb 2020 at 17:03, Dmitri Toubelis <
dmitri.toubelis@litmusautomation.com> wrote:

> Hi,
>
> I'm migrating from yocto morty to zeus and I'm receiving a whole lot of
> errors like this:
>
> ERROR: When reparsing
> /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loopedge-std.bb:do_image_wic,
> the basehash value changed from
> 8dd96e09d0b7defa552e586e626933ca37ace5180918ea65addbfcb6c1247b1c to
> e38fae3f400b3e3de114fcd668d46a1f7c3eec436ec72962e78df906714a6fb0. The
> metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake loopedge-std -cdo_image_wic -Snone
> ERROR: Then:
> ERROR: $ bitbake loopedge-std -cdo_image_wic -Sprintdiff
>
> ERROR: When reparsing
> /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loopedge-std.bb:do_image_ext4,
> the basehash value changed from
> a8209ab35324ce59bb193b80871c12c492f69f42fd97b03801165bd4a12670f6 to
> 1ab2d25ef217fe87b4cce1106d122acd4286043b04dcd74d98df30a01aa6a0b9. The
> metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Snone
> ERROR: Then:
> ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Sprintdiff
>
> ERROR: When reparsing
> /srv/yocto/poky/meta-loopedge/meta-loopedge-dist/recipes-core/images/loopedge-std.bb:do_image_tar,
> the basehash value changed from
> c5ab62cac832e502a338d59124efc690e66560a4e877bc4ba3487c3a734c2497 to
> bb7ca72863614cb5c9915eb502259b1ffa8b98992f7ad3280d1e049a1824b930. The
> metadata is not deterministic and this needs to be fixed.
> ERROR: The following commands may help:
> ERROR: $ bitbake loopedge-std -cdo_image_tar -Snone
> ERROR: Then:
> ERROR: $ bitbake loopedge-std -cdo_image_tar -Sprintdiff
>
> I search around for answers and there are here are reasons and solutions
> for this that I found:
> - to make sure any date related variables are excluded from basehash via
> `do_task_name[vardepsexclude] = "DATE DATETIME"`
> - clears state cache with `bitbake image -c cleansstate`
> - delete tmp directory and build from scratch
>
> Here is my observation and interpretation:
> - this messages occur when running with pristine build directory, i.e. it
> only contains 2 files in `conf` dir - `local.conf` and `bblatyers.conf`, so
> I can rule out contamination from a previous run.
> - same messages reapeat over and over totalling ~900 errors at the end of
> the run
> - I have few custom classes and I removed them from the image to rule out
> contamination from my own code.
> - Tasks that give this error are coming from image.bbclass from poky and
> none of them have been altered in any way.
> - The image build runs through the end but because bitbake exits with
> non-zero exit code it breaks lots of our tools, so just ignoring them is a
> bad option.
>
> So, am I doing something obviously wrong? It is a known issue in zeus? And
> if so is there a known workaround?
>
> Thanks in advance.
>
> 
>

--000000000000a25d3d059f041f0a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">It&#39;s an issue with a recipe in your custom layer. If y=
ou can show the layer, we may be able to help.<div><br></div><div>Are you s=
ure a current timestamp isn&#39;t sneaked into the build by something=C2=A0=
in that layer?</div><div><div><br></div><div>Alex</div></div></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 20 Feb=
 2020 at 17:03, Dmitri Toubelis &lt;<a href=3D"mailto:dmitri.toubelis@litmu=
sautomation.com">dmitri.toubelis@litmusautomation.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-style:solid;border-left-color:rgb(204,204,204=
);padding-left:1ex">Hi,<br><br>I&#39;m migrating from yocto morty to zeus a=
nd I&#39;m receiving a whole lot of errors like this:<br><br>
<blockquote>
<div>ERROR: When reparsing /srv/yocto/poky/meta-loopedge/meta-loopedge-dis=
t/recipes-core/images/loopedge-std.bb:do_image_wic, the basehash value chan=
ged from 8dd96e09d0b7defa552e586e626933ca37ace5180918ea65addbfcb6c1247b1c t=
o e38fae3f400b3e3de114fcd668d46a1f7c3eec436ec72962e78df906714a6fb0. The met=
adata is not deterministic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_wic -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_wic -Sprintdiff</div>
<div>=C2=A0</div>
<div>ERROR: When reparsing /srv/yocto/poky/meta-loopedge/meta-loopedge-dis=
t/recipes-core/images/loopedge-std.bb:do_image_ext4, the basehash value cha=
nged from a8209ab35324ce59bb193b80871c12c492f69f42fd97b03801165bd4a12670f6 =
to 1ab2d25ef217fe87b4cce1106d122acd4286043b04dcd74d98df30a01aa6a0b9. The me=
tadata is not deterministic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_ext4 -Sprintdiff</div>
<div>=C2=A0</div>
<div>ERROR: When reparsing /srv/yocto/poky/meta-loopedge/meta-loopedge-dis=
t/recipes-core/images/loopedge-std.bb:do_image_tar, the basehash value chan=
ged from c5ab62cac832e502a338d59124efc690e66560a4e877bc4ba3487c3a734c2497 t=
o bb7ca72863614cb5c9915eb502259b1ffa8b98992f7ad3280d1e049a1824b930. The met=
adata is not deterministic and this needs to be fixed.</div>
<div>ERROR: The following commands may help:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_tar -Snone</div>
<div>ERROR: Then:</div>
<div>ERROR: $ bitbake loopedge-std -cdo_image_tar -Sprintdiff</div>
</blockquote>
<div>I search around for answers and there are here are reasons and soluti=
ons for this that I found:<br>- to make sure any date related variables are=
 excluded from basehash via `do_task_name[vardepsexclude] =3D &quot;DATE DA=
TETIME&quot;`<br>- clears state cache with `bitbake image -c cleansstate`<b=
r>- delete tmp directory and build from scratch<br><br>Here is my observati=
on and interpretation:<br>- this messages occur when running with pristine =
build directory, i.e. it only contains 2 files in `conf` dir - `local.conf`=
 and `bblatyers.conf`, so I can rule out contamination from a previous run.=
<br>- same messages reapeat over and over totalling ~900 errors at the end =
of the run<br>- I have few custom classes and I removed them from the image=
 to rule out contamination from my own code.<br>- Tasks that give this erro=
r are coming from image.bbclass from poky and none of them have been altere=
d in any way.<br>- The image build runs through the end but because bitbake=
 exits with non-zero exit code it breaks lots of our tools, so just ignorin=
g them is a bad option.<br><br>So, am I doing something obviously wrong? It=
 is a known issue in zeus? And if so is there a known workaround?<br><br>Th=
anks in advance.<br><br></div>
<br>
</blockquote></div>

--000000000000a25d3d059f041f0a--
