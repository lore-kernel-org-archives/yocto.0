Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web10.9467.1604916849767807897
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 02:14:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vAqxWEFI;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id x11so4620974vsx.12
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 02:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=2TBXUUiJNYJrNFSc3RWfZGbpApd0uZIzlxYQiLq4vZc=;
        b=vAqxWEFIGzFHUAgoOvk4KIJSK8LlbyqYaga51KIfVJYj9LZrpuZH6RAnXdIqAh/bIO
         QoqnkyVRHw4vK9+qQ7Nc/G+dovX3w3FzR80c6Fvl1JT0WO+Vwwsrk8eUw9fOFU9AgA+M
         MedXItddVFm1zY8XGMMLMy5iVX7nD7BxKAHjwB9Zzd5rPpdv8xTLB1argB9uwT2uiosQ
         JOQ1E6NTyeexewVaI5EYY1oKDK72vfMFkHWXNubgWPdx9gr0w/2Frs+KmNs6Za/B0zl+
         MdDDya5JmfA8imbFfDH2xoZpXEjXfRUwitlaYonbpZZCAX73XyTTJ7vHQOZlz6eGX0Hu
         24aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=2TBXUUiJNYJrNFSc3RWfZGbpApd0uZIzlxYQiLq4vZc=;
        b=BdoBtJtfpGRb1nyxamW3eSUNdF2c4yACkAa+7y6kvJwUNELYxCUHprub2iZbcp1efP
         7eiCIftcnfOkrv7ocO03kpRaOg8hvPGlQlCgZ4fzLHtiChTdjo1nEp7Iustklvk97ftJ
         2GwASM6lvyyWoSFsrnccWzG9V0Ms5dnzzwJSw3jXPr+nfhgegwHZdAdYhCvjy+QQEyex
         pqWVHZcVugnIQEr2xsqYLxFwXGp4ACRDw2DzfkdMln7X7T72HIJuGNjvrS5sWghzIhcc
         b7d8F1ROFBf+IICRijIum8qT5Q5WGebNVGO4oUnpHBwOkbVkLys6kEE1SsQx6z/4xpVY
         BX3Q==
X-Gm-Message-State: AOAM533Fba7OLiSieoMhKfdjejQ6pFTBq67iN5qpO4JZ3UnWTNfGNFwd
	rQJVjANkx+KNOiN1+uDftFkMRhYEAwAcoBEroeU=
X-Google-Smtp-Source: ABdhPJyVJ1fNnmtUlyYfXGWj6CGmYuz7B1F7Rr1jWdgeGZUB0XgZ3OYOezlwRidtnbCpxc0Lni2QUqynHOs1hDAYg+E=
X-Received: by 2002:a67:ead4:: with SMTP id s20mr6525352vso.23.1604916848903;
 Mon, 09 Nov 2020 02:14:08 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9pQ+Xqs-UajoUcCHGNJANmaXagCW0ePx3YxBfq5SRyUw@mail.gmail.com>
 <CAM9ZRVuZSozpD8X4nOCkGeNEvOTmR170kU1cQMd+EhuWPN3+7g@mail.gmail.com>
 <CAJw=dJ9Gc75mA_AAxWsAYsTpvhkrxzdU0aw+G64Rwd=pdRXMLQ@mail.gmail.com> <CAM9ZRVtbZra=TcsCsirxsqFnt3qepa4SGpWVM_RFmcs-j8EaiQ@mail.gmail.com>
In-Reply-To: <CAM9ZRVtbZra=TcsCsirxsqFnt3qepa4SGpWVM_RFmcs-j8EaiQ@mail.gmail.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Mon, 9 Nov 2020 15:43:57 +0530
Message-ID: <CAJw=dJ-m43BmUh1XtmzVft7OSLtc5fyvXtqCN0VKH2XJw6+Shg@mail.gmail.com>
Subject: Re: [yocto] Dependencies error while compiling .
To: Paul Barker <pbarker@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ac47ce05b3a9d27e"

--000000000000ac47ce05b3a9d27e
Content-Type: text/plain; charset="UTF-8"

Hi Paul,
    I didnt get u exactly .  so for these what i can do can u please
suggest .

On Mon, Nov 9, 2020 at 3:25 PM Paul Barker <pbarker@konsulko.com> wrote:

> On Mon, 9 Nov 2020 at 09:16, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
> >
> > Hi,
> >      when i am compiling package using
> >      ->  bitbake ostree-initrd
>
> We're missing important output here which would show the layers,
> versions and key config values.
>
> >
> >         ERROR: ostree-initrd-3-r0 do_install: Function failed:
> do_install (log file is located at
> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163)
> > ERROR: Logfile of failure stored in:
> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163
> > Log data follows:
> > | DEBUG: Executing python function extend_recipe_sysroot
> > | NOTE: Direct dependencies are
> ['virtual:native:/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
> '/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/quilt/quilt-native_0.65.bb:
> do_populate_sysroot']
> > | NOTE: Installed into sysroot: []
> > | NOTE: Skipping as already exists in sysroot: ['pseudo-native',
> 'quilt-native']
> > | DEBUG: Python function extend_recipe_sysroot finished
> > | DEBUG: Executing shell function do_install
> > | install: cannot stat
> '/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/init.sh':
> No such file or directory
> > | WARNING: exit code 1 from a shell command.
> > | ERROR: Function failed: do_install (log file is located at
> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163)
> > ERROR: Task
> (/data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-sota/ostree-initrd/ostree-initrd.bb:do_install)
> failed with exit code '1'
> > NOTE: Tasks Summary: Attempted 288 tasks of which 287 didn't need to be
> rerun and 1 failed.
> >
> > Summary: 1 task failed:
> >
>  /data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-sota/ostree-initrd/ostree-initrd.bb:
> do_install
> > Summary: There were 3 WARNING messages shown.
> > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> >
> > On Mon, Nov 9, 2020 at 2:39 PM Paul Barker <pbarker@konsulko.com> wrote:
> >>
> >> On Mon, 9 Nov 2020 at 05:12, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
> >> >
> >> > Hi team ,
> >> >       while compiling a package i am getting following error :-
> >> >
> >> > Log data follows:
> >> > | DEBUG: Executing python function extend_recipe_sysroot
> >> > | NOTE: Direct dependencies are
> ['virtual:native:/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
> '/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/quilt/quilt-native_0.65.bb:
> do_populate_sysroot']
> >> > | NOTE: Installed into sysroot: []
> >> > | NOTE: Skipping as already exists in sysroot: ['pseudo-native',
> 'quilt-native']
> >> > | DEBUG: Python function extend_recipe_sysroot finished
> >> > | DEBUG: Executing shell function do_install
> >> >
> >> > if anyone knows , please help.
> >>
> >> None of that output looks like an error to me. Could you share some
> >> more context? E.g. the bitbake command you ran, the initial output
> >> showing the layers, versions and key config values, what expected
> >> result did you not get?
> >>
> >> Thanks,
> >>
> >> --
> >> Paul Barker
> >> Konsulko Group
>
>
>
> --
> Paul Barker
> Konsulko Group
>

--000000000000ac47ce05b3a9d27e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Paul,<div>=C2=A0 =C2=A0 I didnt get u exactly .=C2=A0 s=
o for these what i can do can u please suggest .</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 2020 =
at 3:25 PM Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com">pbarker@=
konsulko.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex">On Mon, 9 Nov 2020 at 09:16, NIKHIL PATIL &lt;<a href=3D"mailto=
:nikhilvp29@gmail.com" target=3D"_blank">nikhilvp29@gmail.com</a>&gt; wrote=
:<br>
&gt;<br>
&gt; Hi,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 when i am compiling package using<br>
&gt;=C2=A0 =C2=A0 =C2=A0 -&gt;=C2=A0 bitbake ostree-initrd<br>
<br>
We&#39;re missing important output here which would show the layers,<br>
versions and key config values.<br>
<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ERROR: ostree-initrd-3-r0 do_install:=
 Function failed: do_install (log file is located at /data/nikhil/inti_dmsv=
/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_i=
nstall.7163)<br>
&gt; ERROR: Logfile of failure stored in: /data/nikhil/inti_dmsv/yocto_buil=
d/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163=
<br>
&gt; Log data follows:<br>
&gt; | DEBUG: Executing python function extend_recipe_sysroot<br>
&gt; | NOTE: Direct dependencies are [&#39;virtual:native:/data/nikhil/inti=
_dmsv/yocto_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sy=
sroot&#39;, &#39;/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/q=
uilt/quilt-native_0.65.bb:do_populate_sysroot&#39;]<br>
&gt; | NOTE: Installed into sysroot: []<br>
&gt; | NOTE: Skipping as already exists in sysroot: [&#39;pseudo-native&#39=
;, &#39;quilt-native&#39;]<br>
&gt; | DEBUG: Python function extend_recipe_sysroot finished<br>
&gt; | DEBUG: Executing shell function do_install<br>
&gt; | install: cannot stat &#39;/data/nikhil/inti_dmsv/yocto_build/build/t=
mp/work/all-poky-linux/ostree-initrd/3-r0/init.sh&#39;: No such file or dir=
ectory<br>
&gt; | WARNING: exit code 1 from a shell command.<br>
&gt; | ERROR: Function failed: do_install (log file is located at /data/nik=
hil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/=
temp/log.do_install.7163)<br>
&gt; ERROR: Task (/data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-s=
ota/ostree-initrd/ostree-initrd.bb:do_install) failed with exit code &#39;1=
&#39;<br>
&gt; NOTE: Tasks Summary: Attempted 288 tasks of which 287 didn&#39;t need =
to be rerun and 1 failed.<br>
&gt;<br>
&gt; Summary: 1 task failed:<br>
&gt;=C2=A0 =C2=A0/data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-so=
ta/ostree-initrd/ostree-initrd.bb:do_install<br>
&gt; Summary: There were 3 WARNING messages shown.<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
&gt;<br>
&gt; On Mon, Nov 9, 2020 at 2:39 PM Paul Barker &lt;<a href=3D"mailto:pbark=
er@konsulko.com" target=3D"_blank">pbarker@konsulko.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Mon, 9 Nov 2020 at 05:12, NIKHIL PATIL &lt;<a href=3D"mailto:ni=
khilvp29@gmail.com" target=3D"_blank">nikhilvp29@gmail.com</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi team ,<br>
&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while compiling a package i am gett=
ing following error :-<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Log data follows:<br>
&gt;&gt; &gt; | DEBUG: Executing python function extend_recipe_sysroot<br>
&gt;&gt; &gt; | NOTE: Direct dependencies are [&#39;virtual:native:/data/ni=
khil/inti_dmsv/yocto_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_po=
pulate_sysroot&#39;, &#39;/data/nikhil/inti_dmsv/yocto_build/meta/recipes-d=
evtools/quilt/quilt-native_0.65.bb:do_populate_sysroot&#39;]<br>
&gt;&gt; &gt; | NOTE: Installed into sysroot: []<br>
&gt;&gt; &gt; | NOTE: Skipping as already exists in sysroot: [&#39;pseudo-n=
ative&#39;, &#39;quilt-native&#39;]<br>
&gt;&gt; &gt; | DEBUG: Python function extend_recipe_sysroot finished<br>
&gt;&gt; &gt; | DEBUG: Executing shell function do_install<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; if anyone knows , please help.<br>
&gt;&gt;<br>
&gt;&gt; None of that output looks like an error to me. Could you share som=
e<br>
&gt;&gt; more context? E.g. the bitbake command you ran, the initial output=
<br>
&gt;&gt; showing the layers, versions and key config values, what expected<=
br>
&gt;&gt; result did you not get?<br>
&gt;&gt;<br>
&gt;&gt; Thanks,<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Paul Barker<br>
&gt;&gt; Konsulko Group<br>
<br>
<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--000000000000ac47ce05b3a9d27e--
