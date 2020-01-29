Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com [209.85.210.67])
 by mx.groups.io with SMTP id smtpd.web12.3020.1580296260122219629
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 03:11:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V0pjR20/;
 spf=pass (domain: gmail.com, ip: 209.85.210.67, mailfrom: onea.alex@gmail.com)
Received: by mail-ot1-f67.google.com with SMTP id g64so15125514otb.13
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 03:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=363P7VYQdiMEbeONoFRxlIqJPA6ECNMz+VQqIOtKCUY=;
        b=V0pjR20/ON8XeufzWI5Q7OkKPxLrtS+8hJDPF+ZlawA2qvHWt/idcngT/ju/cOgHfe
         VY7YTFMNhMpN6zB4W5UAqYuvDBVhTCY7Kh2i67hP/NHVMC+WcZIFNESe3AwYc5xf6HBz
         E7TFEj90TW6rXlT23WY70Kzm/QxFIrSIGugNuPAA7NbVf8jLPH5zRxZM8/WvV4zgoela
         nYXdyVfjjTLgSAq32BaEIuryEIJuYxovWnS3gE1YyjgzavkK8t5b/nrR8gKkgINy8ygW
         v19TKmqLcgRVbds2qv/sG3CNur3SnZaUT59Je8TA1Aaa657xIqKR8wOGmXBoMctoInwA
         ag/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=363P7VYQdiMEbeONoFRxlIqJPA6ECNMz+VQqIOtKCUY=;
        b=BK83t5LJEW9MWeYxlXU9ljd9Rz9HO11VMVjeNJiSRvmGsac6zjvWlYAClvCXHVkdOb
         xr5qmJKQzjd72UgGcP4IZ3mIgC6oO7gOQIO6WLvZiGZb9AqztaoQxCtquVnzt5arG1R0
         STYeazFCW5xymD3EqnvXO2HKGXoUNr2nFpFMuEUDLEbOjl/BX/OQS1xWWu0fXYemfWZh
         sSrz4oxRtAgZm+BN5F60MA/xFJ5Rk7GY0eu4ZNMMtjwJC3h10mblnp0NcbE9BHLol7SM
         osM4QPA5rwGKq5rSBBqbs6XiQFu9wcYzP9stN5OVds6QsaUv+tEL1Itgtrgk6ULOn/xR
         o3jQ==
X-Gm-Message-State: APjAAAUMmT4xPVzgr7Qt6egB/efM316d5fkvDtNBD8L5I+2aFDWbni+n
	0N7zru8Cg6z8QJuayhsAkVjU0EFPX8r+VF2qF1XQVUlS
X-Google-Smtp-Source: APXvYqztqrLPLCq/YsotBGnDknTqRjII5puoVTw4dbe4aR0yjUvNYOJ2Avk9vUUPfUvXgD0c+S5LhGz/5peiuJSNPoI=
X-Received: by 2002:a05:6830:22ca:: with SMTP id q10mr11169955otc.280.1580296259254;
 Wed, 29 Jan 2020 03:10:59 -0800 (PST)
MIME-Version: 1.0
References: <CAJgSc4wdfwu4-3ttb1hN-EydG4n788=cHB6kxahLSGjP-zX4Ug@mail.gmail.com>
 <20200128235745.GO4735@denix.org>
In-Reply-To: <20200128235745.GO4735@denix.org>
From: "Alexandru Onea" <onea.alex@gmail.com>
Date: Wed, 29 Jan 2020 13:08:06 +0200
Message-ID: <CAJgSc4yDkaQL+sHg3cqguRXt5XqCtCvNN4H2Tngb7eCXGptGkA@mail.gmail.com>
Subject: Re: [yocto] what does DEPENDS have to do with do_build
To: Denys Dmytriyenko <denis@denix.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002c3ed3059d45651f"

--0000000000002c3ed3059d45651f
Content-Type: text/plain; charset="UTF-8"

Hi Denys,

Thanks for the clarification.

Would it be accurate to complete your statement about do_build by saying
that "do_build depends on all other normal tasks required to build a
recipe, recursively including those of the build and run-time dependencies
of the recipe being built"?

My confusion comes from the fact that none of the normal tasks of the
recipe being built actually depends on the do_package_write* of the
recursive dependencies of ncurses, including that of ncurses. By that I
mean that, for example iproute2:do_package_write_* which is a dependency of
the do_build task of my recipe, in reality is not a hard dependency neither
for building nor for running my package. It turns out that iproute2 is a
run-time dependency of a package that, in turn, is a run-time or build
dependency of other packages on the way to ncurses.

However, it seems that Yocto does not accept "half-built" packages. It does
not consider the job done unless all tasks of a dependency are built, hence
it forces the do_build task of my recipe to wait for all the other
dependencies, even though they have nothing to do with either building or
running my package (because they are do_package_write_* tasks and I have
not specified yet any run-time dependency).

Is this view on how Yocto handles do_build dependencies correct?

Alexandru Onea


On Wed, 29 Jan 2020 at 01:57, Denys Dmytriyenko <denis@denix.org> wrote:

> On Wed, Jan 29, 2020 at 01:45:18AM +0200, Alexandru Onea wrote:
> > Hello community,
> >
> > I have a recipe which DEPENDS on ncurses. It is clearly a build
> dependency
> > since do_configure cannot execute successfully without finding the
> ncurses
> > headers. It might also be a run-time dependency but I have not specified
> it
> > so I expect that bitbake will take no action in that direction.
> >
> > When I inspect the dependency graph with
> >
> > bitbake -g myrecipe -u depexp
> >
> > I notice that all of a sudden, the do_build task of my recipe now depends
> > on basically half of the world, including stuff that has nothing to do
> > directly with either the build or the run-time dependencies of my
> recipe. I
> > understand that those are the recursive dependencies of ncurses (my only
> > build dependency), however, my understanding was that DEPENDS only puts a
> > dependency between myrecipe:do_configure and ncurses:do_populate_sysroot.
> >
> > What does do_build have to do with build dependencies and why is it
> > necessary that my recipe now depends on the do_package_write* of all the
> > recursive build dependencies?
> >
> > Any help is greatly appreciated, as at the moment I am lost.
>
>
> https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#normal-recipe-build-tasks
>
> 8.1.1. do_build
> The default task for all recipes. This task depends on all other normal
> tasks
> required to build a recipe.
>
>
> In other words, do_build depends on do_fetch, do_unpack, do_patch,
> do_configure,
> do_compile, do_install, do_package, do_package_write*, etc. and hence it
> pulls
> all the dependencies required to perform all those tasks.
>
> --
> Denys
>
>
> > Best regards,
> > Alexandru Onea
>
> > 
>
>

--0000000000002c3ed3059d45651f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Denys,<div><br></div><div>Thanks for the clarifica=
tion.</div><div><br></div><div>Would it be accurate to complete your statem=
ent about do_build by saying that &quot;do_build depends on all other norma=
l tasks required to build a recipe, recursively including those of the buil=
d and run-time dependencies of the recipe being built&quot;?</div><div><br>=
</div><div>My confusion comes from the fact that none of the normal tasks o=
f the recipe being built actually depends on the do_package_write* of the r=
ecursive dependencies of ncurses, including that of ncurses. By that I mean=
 that, for example iproute2:do_package_write_* which is a dependency of the=
 do_build task of my recipe, in reality is not a hard dependency neither fo=
r building nor for running my package. It turns out that iproute2 is a run-=
time dependency of a package that, in turn, is a run-time or build dependen=
cy of other packages on the way to ncurses.</div><div><br></div><div>Howeve=
r, it seems that Yocto does not accept &quot;half-built&quot; packages. It =
does not consider the job done unless all tasks of a dependency are built, =
hence it forces the do_build task of my recipe to wait for all the other de=
pendencies, even though they have nothing to do with either building or run=
ning my package (because they are do_package_write_* tasks and I have not s=
pecified yet any run-time dependency).</div><div><br></div><div>Is this vie=
w on how Yocto handles do_build dependencies correct?</div><div><br clear=
=3D"all"><div><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D=
"gmail_signature"><div dir=3D"ltr">Alexandru Onea</div></div></div><br></di=
v></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, 29 Jan 2020 at 01:57, Denys Dmytriyenko &lt;<a href=3D"mailto:den=
is@denix.org">denis@denix.org</a>&gt; wrote:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">On Wed, Jan 29, 2020 at 01:45:18AM +0200, Alex=
andru Onea wrote:<br>
&gt; Hello community,<br>
&gt; <br>
&gt; I have a recipe which DEPENDS on ncurses. It is clearly a build depen=
dency<br>
&gt; since do_configure cannot execute successfully without finding the nc=
urses<br>
&gt; headers. It might also be a run-time dependency but I have not specif=
ied it<br>
&gt; so I expect that bitbake will take no action in that direction.<br>
&gt; <br>
&gt; When I inspect the dependency graph with<br>
&gt; <br>
&gt; bitbake -g myrecipe -u depexp<br>
&gt; <br>
&gt; I notice that all of a sudden, the do_build task of my recipe now dep=
ends<br>
&gt; on basically half of the world, including stuff that has nothing to d=
o<br>
&gt; directly with either the build or the run-time dependencies of my rec=
ipe. I<br>
&gt; understand that those are the recursive dependencies of ncurses (my o=
nly<br>
&gt; build dependency), however, my understanding was that DEPENDS only pu=
ts a<br>
&gt; dependency between myrecipe:do_configure and ncurses:do_populate_sysr=
oot.<br>
&gt; <br>
&gt; What does do_build have to do with build dependencies and why is it<b=
r>
&gt; necessary that my recipe now depends on the do_package_write* of all =
the<br>
&gt; recursive build dependencies?<br>
&gt; <br>
&gt; Any help is greatly appreciated, as at the moment I am lost.<br>
<br>
<a href=3D"https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.htm=
l#normal-recipe-build-tasks" rel=3D"noreferrer" target=3D"_blank">https://w=
ww.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#normal-recipe-build=
-tasks</a><br>
<br>
8.1.1. do_build<br>
The default task for all recipes. This task depends on all other normal ta=
sks <br>
required to build a recipe.<br>
<br>
<br>
In other words, do_build depends on do_fetch, do_unpack, do_patch, do_conf=
igure, <br>
do_compile, do_install, do_package, do_package_write*, etc. and hence it p=
ulls <br>
all the dependencies required to perform all those tasks.<br>
<br>
-- <br>
Denys<br>
<br>
<br>
&gt; Best regards,<br>
&gt; Alexandru Onea<br>
<br>
&gt; <br>
<br>
</blockquote></div>

--0000000000002c3ed3059d45651f--
