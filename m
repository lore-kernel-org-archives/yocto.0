Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
 by mx.groups.io with SMTP id smtpd.web10.8996.1604913405552218470
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 01:16:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=tz/UN02l;
 spf=pass (domain: gmail.com, ip: 209.85.217.45, mailfrom: nikhilvp29@gmail.com)
Received: by mail-vs1-f45.google.com with SMTP id l22so4554287vsa.4
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 01:16:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r5Rq9ONqQalFPaLecuXm7pDTbJ3KftOmxiXdV06pnN8=;
        b=tz/UN02l8cZ70IpUz9FmlxM3j5AuReCIZIbWC3ny56VHsNp42pawTWx9QSHtC8gDNx
         CZodu38wnUpLLuaTHXWZDxc/w1sZMhQaYDqL46ZfYQr21Q0H5wtV8W4Z1IS1AuxkBrlr
         XCKf8rBpPYupA13j+dXX0zb5cNtqKeXO6wAa9DB1eadDX+kb8WOUsMf+zGvdhbyIr/0z
         SD0cWZuX+tgEeKareMq+coEs3oDLUE7oFkxxcaJxv6XCRoWLzNRV3XansoFVDBAY57PH
         o9e8YXjyfDC8bcQUrokihTzoB+Kfbi9CPic0UTFa0SmSikNgLSIJXR/ldcp2r/5FonxG
         EPmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r5Rq9ONqQalFPaLecuXm7pDTbJ3KftOmxiXdV06pnN8=;
        b=MUy5Mhl5AheKYnklmMoewXzSuYa+zvBl0L9KtNXY39schY/xmmAyHs7ENCHHQ+yvmh
         hCFuoeCT2+kcWycmaIJkr5cXPSWlh9F5vutWTGP4upghv8LmAip3buNUDvmmKRRfTzr0
         +1sqgCQfjSGkvR5P5S2kdjF3A74MF8PBImKCLsm20d1LfWPAKWnUITWsGGczHfolVy7T
         lYUlhYVfkj1nWp6dw2tO86ISqvHKnb4q2EL9H0aaIQQV54hQFhnIdjfyHz3F9tfp1wE7
         xG96G1oJq3f9rykwj05n8qI87w3IdnLn+RHQBKRCvFOfyMfECZljVqa2b6VpTjs88AfO
         p8OA==
X-Gm-Message-State: AOAM531kOXg7EOXbVKo7rmm+ZcOhsmTCP8DULf79nkofSzc9+qLbfqzR
	SmyI7aNkEwCuaGi0eHx8JperuDHFglBi4YpdBpE=
X-Google-Smtp-Source: ABdhPJwik76fqMpNV/Ty4R0PRNo1ApQQCEy0wtqzbab+oHrzkaPSizhEnKndA5x5PCK/0DB55sUkMMHCevb4WxwoFAs=
X-Received: by 2002:a05:6102:309a:: with SMTP id l26mr7177446vsb.4.1604913404600;
 Mon, 09 Nov 2020 01:16:44 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9pQ+Xqs-UajoUcCHGNJANmaXagCW0ePx3YxBfq5SRyUw@mail.gmail.com>
 <CAM9ZRVuZSozpD8X4nOCkGeNEvOTmR170kU1cQMd+EhuWPN3+7g@mail.gmail.com>
In-Reply-To: <CAM9ZRVuZSozpD8X4nOCkGeNEvOTmR170kU1cQMd+EhuWPN3+7g@mail.gmail.com>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Mon, 9 Nov 2020 14:46:33 +0530
Message-ID: <CAJw=dJ9Gc75mA_AAxWsAYsTpvhkrxzdU0aw+G64Rwd=pdRXMLQ@mail.gmail.com>
Subject: Re: [yocto] Dependencies error while compiling .
To: Paul Barker <pbarker@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000060630605b3a90520"

--00000000000060630605b3a90520
Content-Type: text/plain; charset="UTF-8"

Hi,
     when i am compiling package using
     ->  bitbake ostree-initrd

        ERROR: ostree-initrd-3-r0 do_install: Function failed: do_install
(log file is located at
/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163)
ERROR: Logfile of failure stored in:
/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163
Log data follows:
| DEBUG: Executing python function extend_recipe_sysroot
| NOTE: Direct dependencies are
['virtual:native:/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',
'/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/quilt/quilt-native_0.65.bb:
do_populate_sysroot']
| NOTE: Installed into sysroot: []
| NOTE: Skipping as already exists in sysroot: ['pseudo-native',
'quilt-native']
| DEBUG: Python function extend_recipe_sysroot finished
| DEBUG: Executing shell function do_install
| install: cannot stat
'/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/init.sh':
No such file or directory
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_install (log file is located at
/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163)
ERROR: Task
(/data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-sota/ostree-initrd/ostree-initrd.bb:do_install)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 288 tasks of which 287 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-sota/ostree-initrd/ostree-initrd.bb:
do_install
Summary: There were 3 WARNING messages shown.
Summary: There was 1 ERROR message shown, returning a non-zero exit code.

On Mon, Nov 9, 2020 at 2:39 PM Paul Barker <pbarker@konsulko.com> wrote:

> On Mon, 9 Nov 2020 at 05:12, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
> >
> > Hi team ,
> >       while compiling a package i am getting following error :-
> >
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
> >
> > if anyone knows , please help.
>
> None of that output looks like an error to me. Could you share some
> more context? E.g. the bitbake command you ran, the initial output
> showing the layers, versions and key config values, what expected
> result did you not get?
>
> Thanks,
>
> --
> Paul Barker
> Konsulko Group
>

--00000000000060630605b3a90520
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>=C2=A0 =C2=A0 =C2=A0when i am compiling package us=
ing=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0-&gt;=C2=A0 bitbake ostree-initrd=
=C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div><br></div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 ERROR: ostree-initrd-3-r0 do_install: Function failed: do_install (l=
og file is located at /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all=
-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163)</div>ERROR: Logfil=
e of failure stored in: /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/a=
ll-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163<br>Log data follo=
ws:<br>| DEBUG: Executing python function extend_recipe_sysroot<br>| NOTE: =
Direct dependencies are [&#39;virtual:native:/data/nikhil/inti_dmsv/yocto_b=
uild/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot&#39;, &=
#39;/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/quilt/quilt-na=
tive_0.65.bb:do_populate_sysroot&#39;]<br>| NOTE: Installed into sysroot: [=
]<br>| NOTE: Skipping as already exists in sysroot: [&#39;pseudo-native&#39=
;, &#39;quilt-native&#39;]<br>| DEBUG: Python function extend_recipe_sysroo=
t finished<br>| DEBUG: Executing shell function do_install<br>| install: ca=
nnot stat &#39;/data/nikhil/inti_dmsv/yocto_build/build/tmp/work/all-poky-l=
inux/ostree-initrd/3-r0/init.sh&#39;: No such file or directory<br>| WARNIN=
G: exit code 1 from a shell command.<br>| ERROR: Function failed: do_instal=
l (log file is located at /data/nikhil/inti_dmsv/yocto_build/build/tmp/work=
/all-poky-linux/ostree-initrd/3-r0/temp/log.do_install.7163)<br>ERROR: Task=
 (/data/nikhil/inti_dmsv/yocto_build/meta-updater/recipes-sota/ostree-initr=
d/ostree-initrd.bb:do_install) failed with exit code &#39;1&#39;<br>NOTE: T=
asks Summary: Attempted 288 tasks of which 287 didn&#39;t need to be rerun =
and 1 failed.<br><br>Summary: 1 task failed:<br>=C2=A0 /data/nikhil/inti_dm=
sv/yocto_build/meta-updater/recipes-sota/ostree-initrd/ostree-initrd.bb:do_=
install<br>Summary: There were 3 WARNING messages shown.<br>Summary: There =
was 1 ERROR message shown, returning a non-zero exit code.</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 9, 20=
20 at 2:39 PM Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com">pbark=
er@konsulko.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex">On Mon, 9 Nov 2020 at 05:12, NIKHIL PATIL &lt;<a href=3D"mai=
lto:nikhilvp29@gmail.com" target=3D"_blank">nikhilvp29@gmail.com</a>&gt; wr=
ote:<br>
&gt;<br>
&gt; Hi team ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while compiling a package i am getting follo=
wing error :-<br>
&gt;<br>
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
&gt;<br>
&gt; if anyone knows , please help.<br>
<br>
None of that output looks like an error to me. Could you share some<br>
more context? E.g. the bitbake command you ran, the initial output<br>
showing the layers, versions and key config values, what expected<br>
result did you not get?<br>
<br>
Thanks,<br>
<br>
-- <br>
Paul Barker<br>
Konsulko Group<br>
</blockquote></div>

--00000000000060630605b3a90520--
