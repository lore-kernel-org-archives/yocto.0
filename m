Received: from mail-vs1-f65.google.com (mail-vs1-f65.google.com [209.85.217.65])
 by mx.groups.io with SMTP id smtpd.web11.3003.1580296515384803985
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Jan 2020 03:15:15 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jFgg7LmG;
 spf=pass (domain: gmail.com, ip: 209.85.217.65, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f65.google.com with SMTP id t12so10144774vso.13
        for <yocto@lists.yoctoproject.org>; Wed, 29 Jan 2020 03:15:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Tfeqd4vh+JLcRS1T0Ym3gXhP/WyWgXiuqodM83J1hSs=;
        b=jFgg7LmGCKvb3Lf5sxWo8INwXNXxM0GlXvPbf4t1KQT7yYardtbc9c3qfoHflufK2K
         fH8NZQzD031b0kdYMz2YN9eqs72R3hKizGPdR1Tp+iHGcDDyColZk0iXzCdm7//HR+J0
         o91/AtfKR/etj9Sg3jb0TgowOjJWE/2cl6fhAZC5RUKizQtVOe30jlYh020yDBx8T8v/
         7xRTBGluGKq9/2Ztpt7d5LdgAAVPPBfw6pyndJ48IwxiNJhWCFikIyREe0UZ3N8KrzAn
         dWsZewyf+mxLoMYMMAL3E7c38qUpT/yFXbU1FXsQLAMTyFLDc1gM4Nl94cpMqOPYkxOD
         FSqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Tfeqd4vh+JLcRS1T0Ym3gXhP/WyWgXiuqodM83J1hSs=;
        b=SoxaYOUZwoSwE6etD5+z1EGVOl0OjUZLAvIwHvDWnKEKydsIBw7XfzCIeWxkzPrxst
         0vLz+kwrcRIO+9OeEeqh5yHqoG6JZR1U2R0XSNrfQloDVt5M6hWpaKNVNfI3/CxCl5Kj
         f1bXNoLA2YvhfA+1z0pTW/TaI07P+9p7DopQicf7F70zL5tNETEr2NUUElfsbyp7fMDH
         Zz5waWI4uxJIvxBooGZr+kPAoeCgDmbMFnvItwnkIC+6lN8XfK0NBKNFJjxU3FXOL7fn
         8VsqonwqCHiVgsZqQ5Nq6mpf8hbqapfr4OCcCjXH6/tfk7ivqqUFwYKTVT/6IBmCyV6v
         atAQ==
X-Gm-Message-State: APjAAAV01AcSKDlpnPbESEK0rlf17LHXZes089leskXhNRdYiNgHyXt7
	bX3YO2cRO+oM15URKibzvk4BB5W+xko65oepJoc=
X-Google-Smtp-Source: APXvYqxvPRt+lpygyGcbY4VLjFcIGB3qwnVD9yJepg8te43mHh10MXRC8YhlMI/Xw8P7oI81GvxzvZ9wnI9rKo6b7SM=
X-Received: by 2002:a05:6102:2437:: with SMTP id l23mr17333268vsi.23.1580296514477;
 Wed, 29 Jan 2020 03:15:14 -0800 (PST)
MIME-Version: 1.0
References: <CAJgSc4wdfwu4-3ttb1hN-EydG4n788=cHB6kxahLSGjP-zX4Ug@mail.gmail.com>
 <20200128235745.GO4735@denix.org> <CAJgSc4yDkaQL+sHg3cqguRXt5XqCtCvNN4H2Tngb7eCXGptGkA@mail.gmail.com>
In-Reply-To: <CAJgSc4yDkaQL+sHg3cqguRXt5XqCtCvNN4H2Tngb7eCXGptGkA@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 29 Jan 2020 12:15:03 +0100
Message-ID: <CANNYZj9oEBOe3Rvh0HYT4=ppcRjR_LeGdLnJiYmEKyxD7+wmPQ@mail.gmail.com>
Subject: Re: [yocto] what does DEPENDS have to do with do_build
To: Alexandru Onea <onea.alex@gmail.com>
Cc: Denys Dmytriyenko <denis@denix.org>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000062a420059d457495"

--00000000000062a420059d457495
Content-Type: text/plain; charset="UTF-8"

The idea is that when a recipe build completes, you get not just the
packages from that recipe, but also all packages that are in its recursive
dependencies. So that you can install any package from your recipe, and not
have a broken dependency chain.

Alex

On Wed, 29 Jan 2020 at 12:11, Alexandru Onea <onea.alex@gmail.com> wrote:

> Hi Denys,
>
> Thanks for the clarification.
>
> Would it be accurate to complete your statement about do_build by saying
> that "do_build depends on all other normal tasks required to build a
> recipe, recursively including those of the build and run-time dependencies
> of the recipe being built"?
>
> My confusion comes from the fact that none of the normal tasks of the
> recipe being built actually depends on the do_package_write* of the
> recursive dependencies of ncurses, including that of ncurses. By that I
> mean that, for example iproute2:do_package_write_* which is a dependency of
> the do_build task of my recipe, in reality is not a hard dependency neither
> for building nor for running my package. It turns out that iproute2 is a
> run-time dependency of a package that, in turn, is a run-time or build
> dependency of other packages on the way to ncurses.
>
> However, it seems that Yocto does not accept "half-built" packages. It
> does not consider the job done unless all tasks of a dependency are built,
> hence it forces the do_build task of my recipe to wait for all the other
> dependencies, even though they have nothing to do with either building or
> running my package (because they are do_package_write_* tasks and I have
> not specified yet any run-time dependency).
>
> Is this view on how Yocto handles do_build dependencies correct?
>
> Alexandru Onea
>
>
> On Wed, 29 Jan 2020 at 01:57, Denys Dmytriyenko <denis@denix.org> wrote:
>
>> On Wed, Jan 29, 2020 at 01:45:18AM +0200, Alexandru Onea wrote:
>> > Hello community,
>> >
>> > I have a recipe which DEPENDS on ncurses. It is clearly a build
>> dependency
>> > since do_configure cannot execute successfully without finding the
>> ncurses
>> > headers. It might also be a run-time dependency but I have not
>> specified it
>> > so I expect that bitbake will take no action in that direction.
>> >
>> > When I inspect the dependency graph with
>> >
>> > bitbake -g myrecipe -u depexp
>> >
>> > I notice that all of a sudden, the do_build task of my recipe now
>> depends
>> > on basically half of the world, including stuff that has nothing to do
>> > directly with either the build or the run-time dependencies of my
>> recipe. I
>> > understand that those are the recursive dependencies of ncurses (my only
>> > build dependency), however, my understanding was that DEPENDS only puts
>> a
>> > dependency between myrecipe:do_configure and
>> ncurses:do_populate_sysroot.
>> >
>> > What does do_build have to do with build dependencies and why is it
>> > necessary that my recipe now depends on the do_package_write* of all the
>> > recursive build dependencies?
>> >
>> > Any help is greatly appreciated, as at the moment I am lost.
>>
>>
>> https://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#normal-recipe-build-tasks
>>
>> 8.1.1. do_build
>> The default task for all recipes. This task depends on all other normal
>> tasks
>> required to build a recipe.
>>
>>
>> In other words, do_build depends on do_fetch, do_unpack, do_patch,
>> do_configure,
>> do_compile, do_install, do_package, do_package_write*, etc. and hence it
>> pulls
>> all the dependencies required to perform all those tasks.
>>
>> --
>> Denys
>>
>>
>> > Best regards,
>> > Alexandru Onea
>>
>> >
>>
>> 
>

--00000000000062a420059d457495
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The idea is that when a recipe build completes, you g=
et not just the packages from that recipe, but also all packages that are i=
n its recursive dependencies. So that you can install any package from your=
 recipe, and not have a broken dependency chain.</div><div><br></div><div>A=
lex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">On Wed, 29 Jan 2020 at 12:11, Alexandru Onea &lt;<a href=3D"ma=
ilto:onea.alex@gmail.com">onea.alex@gmail.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=A0Denys=
,<div><br></div><div>Thanks for the clarification.</div><div><br></div><div=
>Would it be accurate to complete your statement about do_build by saying t=
hat &quot;do_build depends on all other normal tasks required to build a re=
cipe, recursively including those of the build and run-time dependencies of=
 the recipe being built&quot;?</div><div><br></div><div>My confusion comes =
from the fact that none of the normal tasks of the recipe being built actua=
lly depends on the do_package_write* of the recursive dependencies of ncurs=
es, including that of ncurses. By that I mean that, for example iproute2:do=
_package_write_* which is a dependency of the do_build task of my recipe, i=
n reality is not a hard dependency neither for building nor for running my =
package. It turns out that iproute2 is a run-time dependency of a package t=
hat, in turn, is a run-time or build dependency of other packages on the wa=
y to ncurses.</div><div><br></div><div>However, it seems that Yocto does no=
t accept &quot;half-built&quot; packages. It does not consider the job done=
 unless all tasks of a dependency are built, hence it forces the do_build t=
ask of my recipe to wait for all the other dependencies, even though they h=
ave nothing to do with either building or running my package (because they =
are do_package_write_* tasks and I have not specified yet any run-time depe=
ndency).</div><div><br></div><div>Is this view on how Yocto handles do_buil=
d dependencies correct?</div><div><br clear=3D"all"><div><div dir=3D"ltr"><=
div dir=3D"ltr">Alexandru Onea</div></div></div><br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, 29 Jan 20=
20 at 01:57, Denys Dmytriyenko &lt;<a href=3D"mailto:denis@denix.org" targe=
t=3D"_blank">denis@denix.org</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">On Wed, Jan 29, 2020 at 01:45:18AM +0200, Alexa=
ndru Onea wrote:<br>
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
<br>
</blockquote></div>

--00000000000062a420059d457495--
