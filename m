Return-Path: <michael.ho@ieee.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B029DC433F5
	for <webhook@archiver.kernel.org>; Sun,  2 Jan 2022 17:17:39 +0000 (UTC)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
 [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web12.15435.1641143858245314425
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 09:17:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ieee.org header.s=google header.b=AaKzK+1O;
 spf=pass (domain: ieee.org, ip: 209.85.221.169,
 mailfrom: michael.ho@ieee.org)
Received: by mail-vk1-f169.google.com with SMTP id j4so14908715vkr.12
        for <yocto@lists.yoctoproject.org>;
 Sun, 02 Jan 2022 09:17:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WqYNu2HSllAUh8C8a8Z48XiYWtCqeL9LNPuz4mlNqzY=;
        b=AaKzK+1ONI9rKjKr95911BzGIv7yFCcF68AfVQScIHLVdl93s8QxpY2g9rLjCAPg+O
         q+rbZu5Hew0rJPLWLbWljSLhDfotRoIkCE4adl4Y3Bmf0Fc0cDtUqLe5NqOhanGrKqsi
         uNBCVy332wAPCfffBvU6b0ZxMnpm4tZMDJrUU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WqYNu2HSllAUh8C8a8Z48XiYWtCqeL9LNPuz4mlNqzY=;
        b=x5dm0fWqAFhxKVfkSPYtGiXwE7zMB63eI8wI93HKhupdvhq2hDgNuNOIF8V81Np0xv
         KqNxOgDOZTE2WeS1YXnwEFbDnuftlfH6byh5VH3Bqg0gqIhqumKakUjbJVrneu+YnSp8
         Krpi6ur/jw5eYLpMggxechOwPCPUSvNY2vBasIKJdNT/OyFaHEZYoIs3fEzFtbk0gXcC
         jtKKK0rFPKDGOzAqu49iKTpEOYGwu0YiETBrMHrIQYAMUbipzmH4+k9wHn+FGeu3h5Hd
         avuspawpZp4j0ZI1SemHU8nKSJWhxBnLf55rEuvu+oWmHwhlb+Pq2DPG+vkbGUG14p/6
         Z/gw==
X-Gm-Message-State: AOAM531LqN7V6SFR3p7A0BAhBoBm8rtR1aMiYcGCN8GskBbnt1VbZZ2h
	KcErZYtPy7ckexvdiK+kqsx5OCeqBlnyAK51/WXVaw==
X-Google-Smtp-Source: 
 ABdhPJxO5vuUdwe+Q0Rl7nW1Pq5V/kf82/rpYt7NftP5Q2vGf2JdlL6DASwtG8ltbvtgSqzc1ZbGsUYeyXz9XeJwQa8=
X-Received: by 2002:a1f:1e8a:: with SMTP id
 e132mr13289139vke.20.1641143857277;
 Sun, 02 Jan 2022 09:17:37 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
In-Reply-To: 
 <CAFC2zY1xWRvmZ75r6JG=3ZZ4xX83584Q1RDXgdGEBCi4Gr+gSw@mail.gmail.com>
From: Michael Ho <michael.ho@ieee.org>
Date: Sun, 2 Jan 2022 18:17:25 +0100
Message-ID: 
 <CALpKvHrow01J=5XCgJHyeNK8DXApsOOXwjUyUOA6jMP204YpiA@mail.gmail.com>
Subject: Re: [yocto] libquadmath
To: staticd <staticd@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a3a80905d49c94a7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 02 Jan 2022 17:17:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55701

--000000000000a3a80905d49c94a7
Content-Type: text/plain; charset="UTF-8"

Not familiar with Fortran but maybe it helps to know that this is normally
handled with the DEPENDS mechanism. When you add other recipes as
dependencies to your recipe, the task do_prepare_recipe_sysroot (run before
do_compile) will make hard links to the files from those dependency recipes
into that recipe-sysroot directory.

See:
https://docs.yoctoproject.org/singleindex.html#do-prepare-recipe-sysroot

Kind regards,
Michael

On Sun, 2 Jan 2022, 6:06 pm staticd, <staticd@gmail.com> wrote:

> okay...I think I have a more interesting question now...
>
> In the package I am building I have some Fortran code that requires
> `libquadmath`
>
> I see that `gcc-runtime` provides the library but I need the library
> present in `recipe-sysroot/lib` when my `do_compile` runs
>
> Is there a way for me to do that?
>
> My current approach is to build my image, copy the libraries/includes to
> my recipe and `install` them in `recipe-sysroot` before `do_compile`
>
> This doesn't seem like the correct approach but I am not sure how else to
> do it at this point
>
> Any help would be greatly appreciated.
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55700):
> https://lists.yoctoproject.org/g/yocto/message/55700
> Mute This Topic: https://lists.yoctoproject.org/mt/88095036/3618434
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> michael.ho@ieee.org]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a3a80905d49c94a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Not familiar with Fortran but maybe it helps to know=
 that this is normally handled with the DEPENDS mechanism. When you add oth=
er recipes as dependencies to your recipe, the task do_prepare_recipe_sysro=
ot (run before do_compile) will make hard links to the files from those dep=
endency recipes into that recipe-sysroot directory.=C2=A0</div><div dir=3D"=
auto"><br></div><div dir=3D"auto">See:=C2=A0<a href=3D"https://docs.yoctopr=
oject.org/singleindex.html#do-prepare-recipe-sysroot">https://docs.yoctopro=
ject.org/singleindex.html#do-prepare-recipe-sysroot</a></div><div dir=3D"au=
to"><br></div><div dir=3D"auto">Kind regards,</div><div dir=3D"auto">Michae=
l<br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=3D"ltr" class=3D"=
gmail_attr">On Sun, 2 Jan 2022, 6:06 pm staticd, &lt;<a href=3D"mailto:stat=
icd@gmail.com">staticd@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">okay...I think I have a more interesting que=
stion now...<br><br>In the package I am building I have some Fortran code t=
hat requires `libquadmath`<br><br>I see that `gcc-runtime` provides the lib=
rary but I need the library present in `recipe-sysroot/lib` when my `do_com=
pile` runs<br><br>Is there a way for me to do that?<br><br>My current appro=
ach is to build my image, copy the libraries/includes to my recipe and `ins=
tall` them in `recipe-sysroot` before `do_compile`<br><br>This doesn&#39;t =
seem like the correct approach but I am not sure how else to do it at this =
point<br><br>Any help would be greatly appreciated.<br></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55700): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55700" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/55700</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88095036/3618=
434" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/88095036/3618434</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:michael.ho@ieee.org" target=3D"_blank=
" rel=3D"noreferrer">michael.ho@ieee.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div></div>

--000000000000a3a80905d49c94a7--

