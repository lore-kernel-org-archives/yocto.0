Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C09BC4332F
	for <webhook@archiver.kernel.org>; Wed, 21 Dec 2022 00:25:29 +0000 (UTC)
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
 by mx.groups.io with SMTP id smtpd.web10.7472.1671582323655055972
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Dec 2022 16:25:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WMQHmQI9;
 spf=pass (domain: gmail.com, ip: 209.85.218.42, mailfrom: ticotimo@gmail.com)
Received: by mail-ej1-f42.google.com with SMTP id ud5so33179151ejc.4
        for <yocto@lists.yoctoproject.org>; Tue, 20 Dec 2022 16:25:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=H2HlMCD4wdCFyQlVld8bHt1wq4S4FLJXGrrAieuDtZs=;
        b=WMQHmQI912ypVTx9flmPCV6IExmn/uxz9nwSZfZgasLsn+q63g0Se7o2/f+o0Tb1yp
         xcfL2ngUAY86dyPGRZ0IZn0bVk6NLo+ccaoIVXJ65lzw0NeeXMiAJQNoLkvlzqsZb/UP
         a+38OlYvwhj73m+VCcVoXp1eescyCI10qJlI0crIOgS4IXtSiYBSau4Y3D0F97T7v6ow
         UA/Thr/ws74heQp5bR0k+o4tC5KZht3dJuMbhTbhorgUE4MRbQoIP98OA9DTHipCGYZM
         CI5VyNb6GcevWjcaitXIRU7yHoOnwM+XuKER+C/NhLQJ4j6kdsZsIoiY1arS80PPCLPM
         viWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H2HlMCD4wdCFyQlVld8bHt1wq4S4FLJXGrrAieuDtZs=;
        b=EwzswLq5JTsOPTEgavRrwSOoMRzgWb6HBmqOh5enLUwBPwfMb3DmEKJw0bXBxipn3F
         kkRzwGeMwhsumh4yoQw68jJkTBAL9VuWWz4mBcBlYqs544v7hEkms0auTVWJjnCZWeuE
         bjeUKCNhU2T2g+RmdbZVzu8zE4/RVD8TWMtntDMqkH64t+FxrshV2yzvuJqtDzalemm4
         VqWY6Q2OLGEL+0LelvRU+76QWu2Ib/mALuBLLTNOjJUradllcnSfVmk0KB6qEhKemcWM
         dEv7ELGRaACmH9kaI2QexPQFRKIQa88Ihr/o4pK6hmCf7vRqet2IIA8aID+oJnTGnnqN
         8sWA==
X-Gm-Message-State: ANoB5pkj9Loj2nadGX1qCMXS+zyEP9BgxdlLwrCXGUOuSXTi+iyBdxds
	zgFUiDimJ5n7BwXD6H6UQDghqE/55sTMnuM5Wbc=
X-Google-Smtp-Source: AA0mqf4ETSN2u3dVYq1Qd1oP9E6O+WgTES42oxOoBRmVWA7NqKIWaym9lwgSHb3nbQNV8MAwL+GsMLJlhcdzrWWWaaA=
X-Received: by 2002:a17:907:29cf:b0:7c1:1444:da3c with SMTP id
 ev15-20020a17090729cf00b007c11444da3cmr10669107ejc.564.1671582321526; Tue, 20
 Dec 2022 16:25:21 -0800 (PST)
MIME-Version: 1.0
References: <pPov.1671568109608511538.Jut5@lists.yoctoproject.org>
In-Reply-To: <pPov.1671568109608511538.Jut5@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Tue, 20 Dec 2022 16:25:10 -0800
Message-ID: <CANx9H-B1_A33pdrkaHi4TjBa486dJL5xg5vO--FSg-Bov+eSYQ@mail.gmail.com>
Subject: Re: [yocto] Error creating recipe for Perl DBI for postgresql in Kirkstone
To: Fernando Luiz Cola <ferlzc@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007ccc7805f04b96cc"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 21 Dec 2022 00:25:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58845

--0000000000007ccc7805f04b96cc
Content-Type: text/plain; charset="UTF-8"

On Tue, Dec 20, 2022 at 12:28 PM Fernando Luiz Cola <ferlzc@gmail.com>
wrote:

> Hello, I'm trying to write a recipe a Perl DBI for postgresql. I'm
> follwing the same recipe found in:
> https://layers.openembedded.org/layerindex/recipe/192563/  and
> https://layers.openembedded.org/layerindex/recipe/190989/
> Howover I'm having errors regarding *db_config* path, which cannot be
> found during the do_configure
> here is my following recipe:
> https://gist.github.com/ferlzc/9234ccd5c5a084f958ff52c7a08899a9 - I'm
> using Yocto Kirkstone
>
> Any help is highly appreciated!
>

There are several layers of problems here.

If you look at
https://metacpan.org/release/TURNSTEP/DBD-Pg-3.16.0/source/Makefile.PL#L42
you can see that we could set
export POSTGRES_INCLUDE="${STAGING_INCDIR}"
export POSTGERS_LIB="${STAGING_LIBDIR}"

But, even with that, do_config will fail to find the postgres version. It
depends on https://metacpan.org/pod/App::Info::RDBMS::PostgreSQL to find
it, and we do not have a recipe for that? (even if we did it is probably
going to be wrong... not cross-compilation). There is another variable
POSTGRES_DATA, but it is not clear what the structure/value of that should
be.

Also, there is no native version/recipe of postgresql. In theory you could
use that to be able to run /usr/bin/pg_config, but there are likely to be
cross-compilation errors elsewhere.
(The lack of postgresql-native also means BBCLASSEXTEND = "native" in your
libdbd-postgresql-perl recipe is a lie).

Short answer: this is not cross-compilation friendly

>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58844):
> https://lists.yoctoproject.org/g/yocto/message/58844
> Mute This Topic: https://lists.yoctoproject.org/mt/95793801/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000007ccc7805f04b96cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Dec 20, 2022 at 12:28 PM Fern=
ando Luiz Cola &lt;<a href=3D"mailto:ferlzc@gmail.com">ferlzc@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div=
>Hello, I&#39;m trying to write a recipe a Perl DBI for postgresql. I&#39;m=
 follwing the same recipe found in:=C2=A0<br><a href=3D"https://layers.open=
embedded.org/layerindex/recipe/192563/" rel=3D"noopener" target=3D"_blank">=
 https://layers.openembedded.org/layerindex/recipe/192563/</a>=C2=A0 and <a=
 href=3D"https://layers.openembedded.org/layerindex/recipe/190989" rel=3D"n=
oopener" target=3D"_blank">https://layers.openembedded.org/layerindex/recip=
e/190989</a>/=C2=A0</div>
<div>Howover I&#39;m having errors regarding <strong>db_config</strong> pat=
h, which cannot be found during the do_configure</div>
<div>here is my following recipe:=C2=A0=C2=A0<a href=3D"https://gist.github=
.com/ferlzc/9234ccd5c5a084f958ff52c7a08899a9" rel=3D"noopener" target=3D"_b=
lank">https://gist.github.com/ferlzc/9234ccd5c5a084f958ff52c7a08899a9</a>=
=C2=A0- I&#39;m using Yocto Kirkstone<br><br>
<div>Any help is highly appreciated!</div>
</div>
<div></div></blockquote><div><br></div><div>There are several layers of pro=
blems here.</div><div><br></div><div>If you look at=C2=A0<a href=3D"https:/=
/metacpan.org/release/TURNSTEP/DBD-Pg-3.16.0/source/Makefile.PL#L42">https:=
//metacpan.org/release/TURNSTEP/DBD-Pg-3.16.0/source/Makefile.PL#L42</a> yo=
u can see that we could set</div><div>export POSTGRES_INCLUDE=3D&quot;${STA=
GING_INCDIR}&quot;</div><div>export POSTGERS_LIB=3D&quot;${STAGING_LIBDIR}&=
quot;</div><div><br></div><div>But, even with that, do_config will fail to =
find the postgres version. It depends on=C2=A0<a href=3D"https://metacpan.o=
rg/pod/App::Info::RDBMS::PostgreSQL">https://metacpan.org/pod/App::Info::RD=
BMS::PostgreSQL</a> to find it, and we do not have a recipe for that? (even=
 if we did it is probably going to be wrong... not cross-compilation). Ther=
e is another variable POSTGRES_DATA, but it is not clear what the structure=
/value of that should be.</div><div><br></div><div>Also, there is no native=
 version/recipe of postgresql. In theory you could use that to be able to r=
un /usr/bin/pg_config, but there are likely to be cross-compilation errors =
elsewhere.</div><div>(The lack of postgresql-native also means BBCLASSEXTEN=
D =3D &quot;native&quot; in your libdbd-postgresql-perl recipe is a lie).</=
div><div><br></div><div>Short answer: this is not cross-compilation friendl=
y</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div>=C2=A0</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58844): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58844" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58844</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95793801/9247=
29" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt/=
95793801/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000007ccc7805f04b96cc--

