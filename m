Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B516C61D9C
	for <webhook@archiver.kernel.org>; Wed, 22 Nov 2023 12:53:19 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web10.18690.1700657596726107232
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Nov 2023 04:53:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20230601.gappssmtp.com header.s=20230601 header.b=jj3x1VVg;
 spf=pass (domain: baylibre.com, ip: 209.85.218.43, mailfrom: jstephan@baylibre.com)
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a02d91ab195so220362166b.3
        for <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 04:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1700657595; x=1701262395; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PUPtgyQcZC9yyDqXellg9HMNBR47f4im7V/L0/VnHqs=;
        b=jj3x1VVgtVaNJSLfYGq5RTCWfea9KHEyYOdi7TN37kKtRwTMiaim9+aqhvc68scBGr
         owSi0vAWDh10sU7FnEZylswRdmdw+Rr3NJeCqeXJ1K3ejcuR084xReSaUUCkZO0RsmHf
         3bcrBGdJaAmx+gX0QSlVvZG7fSgZzZgq2gM8njB13jCJVBTXlyjYM5SiRtTPJtRz4G8k
         hn5197nGaCecrp4NTLlHxGdl4Qdlb/aKFW2Rkg9p1WLElkPaPfTSsZvLi4+hqGQiNf+m
         X0a6rYvSExKvbTsYZRT73miRAN3T+hPIcQKFyS7LWHVKXtzrdl4bTOl/z2x7kwTHZTnk
         c9qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700657595; x=1701262395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PUPtgyQcZC9yyDqXellg9HMNBR47f4im7V/L0/VnHqs=;
        b=Ec3sm+mPr76Pv8rAyx38V97tg0g1qMvqF/KDiwA/gNMB6ZPorAUAjk0M69+IKbpTn+
         wz+uhYtzxJQZ7IOXlIBU4gijTe1xtkcbTpapAiBrQA0Z5HyjtnwTfK/NEmOZ6W//qPlX
         VrcOAl5Scz3Cyn+RkW9VKSypZbhbgfT9P+oLm+ZJaLXB+KHqiuvhjvsT6KL9/1aXPONS
         8+zpOt4lUD5csxXZQgLV+vcULvmP5vZspWi+jihhiVEgNz1wxJNvlbBQHfZSU4ZLXmBv
         0l0hdoNANIlN1RBb4taj524wAu34FhaOS12nh/Qt+I5H/MrNAtdTj/i8RwyvUR/JE2qn
         SASw==
X-Gm-Message-State: AOJu0YyEL1CB100B4pBDLA69GkD9dqKAGQMZDvofBH8eLQP/PUBPIxt9
	JUTslio+oFNfokHKcpuy1PfKUbF6BkRqopnnovDu6g==
X-Google-Smtp-Source: AGHT+IFtP1PMYVKRr7rnJQq1jjQW0LIuKBvtbOYUf2dVSzGaDIYIzg1ttp1ECZJzfNEyDclwwneVbkBGDBKR1p9dQDY=
X-Received: by 2002:a17:907:7e91:b0:9ff:7d76:148c with SMTP id
 qb17-20020a1709077e9100b009ff7d76148cmr1465063ejc.66.1700657594761; Wed, 22
 Nov 2023 04:53:14 -0800 (PST)
MIME-Version: 1.0
References: <CAEHHSvZYOg73Gx6Jv_UM+7Ot9TGf3fOzCxxZMQ9s1sq89mJtfg@mail.gmail.com>
 <CANNYZj85qmQp=UPpTCd08n+VKq_06xOur2bEtDQ7yVi8CR8_8A@mail.gmail.com>
In-Reply-To: <CANNYZj85qmQp=UPpTCd08n+VKq_06xOur2bEtDQ7yVi8CR8_8A@mail.gmail.com>
From: Julien Stephan <jstephan@baylibre.com>
Date: Wed, 22 Nov 2023 13:53:00 +0100
Message-ID: <CAEHHSvb9dajTiP358fEJzqcbRZcpuJd74jmkg168qiS-tN_jOw@mail.gmail.com>
Subject: Re: [yocto] [RFC] devtool: support multiple sources
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, jon.mason@arm.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Nov 2023 12:53:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61729

Le mar. 14 nov. 2023 =C3=A0 12:21, Alexander Kanavin
<alex.kanavin@gmail.com> a =C3=A9crit :
>
> I think no one actually anticipated all these corner cases when
> devtool was written. In general it's simply not designed to handle
> multiple sources in SRC_URI, it can do (tarball or git)+patches, and
> not any of the other options. No one is expecting a fix for all of
> them, perhaps it's best to keep the scope to plain gitsm://.
>

Hi Alex,

I sent a series to add submodule support. As you suggested I focused
myself on gitsm recipes, but I had to handle the situation of a git
tree extracted into S because it was throwing an error now with my
submodule implementation (while it was not working but not throwing
any error on master).

> I don't have specific advice for the broader issue; if you have ideas,
> it would be good to at least document them.
>
> Alex


For the other cases,  I was thinking of using the newly merged API
"unpack tracer"
(https://git.yoctoproject.org/poky/commit/?id=3Def3e46afd910d4b7727d42c4c18=
b501525c65695)
(suggested  by RP in this thread
https://git.yoctoproject.org/poky/commit/?id=3Def3e46afd910d4b7727d42c4c18b=
501525c65695).
I really think that we could leverage this new api to create a devtool
unpack tracer, so we can have a better idea of what is unpacked and
where. This could help to solve the corner cases I described
previously but also the bug 15162
(https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D15162). I think it
may also help to simplify devtool code in various places.
Where should I document this?
Should I open a new ticket?

Cheers
Julien

>
> On Fri, 10 Nov 2023 at 17:24, Julien Stephan <jstephan@baylibre.com> wrot=
e:
> >
> > Hi all,
> >
> > Sorry for the long message here, but I would really appreciate
> > feedback from the community :)
> >
> > I am currently working on bug #14141
> > (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D14141). The main
> > goal of this bug is to correctly support git submodules with devtool.
> >
> > I currently have an almost ready branch here:
> > https://git.yoctoproject.org/poky-contrib/log/?h=3Djstephan/devtool-sub=
module-fix
> >
> > I asked Jon Mason (reporter of the bug) to test the branch, he
> > confirmed that its working for git submodules (i.e recipes using gitsm
> > only) such as vulkan-samples or hafnium (meta-arm), but he also
> > pointed out a new issue highlighted by the recipe edk2-firmware: this
> > recipe is using gitsm for the primary source then extract another git
> > repository inside S.
> >
> > This issue is not related only to gitsm + git recipes, I reproduced
> > this kind of error with   cross-localedef-native recipe, using git +
> > git or https + git.  But I think the issue is even more global: as of
> > today devtool doesn't properly handle recipes that unpack secondary
> > sources inside S. Let suppose we have:
> >
> > SRC_URI =3D " \
> >   http://<some_url>.tar.gz \
> >   http://<another_url>.tar.gz;subdir=3Dmysubdir \
> > "
> > If I need to patch something inside mysubdir I would expect to have
> > something like:
> > SRC_URI =3D " \
> >   http://<some_url>.tar.gz \
> >   http://<another_url>.tar.gz;subdir=3Dmysubdir \
> >   file://mypatch.patch;patchdir=3Dmysubdir \
> > "
> > Of course this is working, but if I run devtool modify, create my
> > patch and do a devtool finish I would have something like
> > SRC_URI =3D " \
> >   http://<some_url>.tar.gz \
> >   http://<another_url>.tar.gz;subdir=3Dmysubdir \
> >   file://mypatch.patch \
> > "
> > where mypatch.patch will patch files inside mysubdir as if they were
> > originally part of the primary source.
> > That might be acceptable (but I personally would prefer to have a
> > patchir parameter matching the subdir parameter).
> > Besides that, there is actually a bug here: trying to modify inside
> > devtool a file that was added using file:// will add a new patch AND
> > modify the original patch... (Tested on master branch with bzip2 with
> > the following: devtool modify bzip2, modify Makefile.am, commit the
> > modification, devtool finish bzip2 will create a new patch file AND
> > also update the originale Makefile.am inside the recipe space)
> >
> > But things get really bad when using a git source as secondary source:
> > SRC_URI =3D " \
> >   http://<some_url>.tar.gz \
> >   git ://<another_url>;destsuffix=3Dmysubdir \
> > "
> > mysubdir gets automatically committed inside the primary source
> > ("Commiting changes from do patch"). This is an issue because doing
> > "git add" on a git directory adds it as a submodule (in a wrong way,
> > the correct way of adding it would be "git submodule add url path").
> > Here we end up with a submodule which is not populated into
> > .gitmodules then "git submodule foreach" commands just fail.
> >
> > My hack is to detect that git directories were added after unpack and
> > properly add them as submodules (" wip: support git tree extracted
> > inside S" in my branch) but I am not 100% satisfied with this because
> > it implies that devtool is managing secondary source differently if
> > they are git directories or not..
> >
> > So the long story made short:
> > * current implementation of devtool is buggy (at least with the
> > scenario described above with bzip2), I may try to work on this latter
> > * is the current behaviour of devtool acceptable ? (i.e not adding
> > patchir parameter on patches)
> > * is my "hack" acceptable to handle git secondary sources as a real
> > git submodule?
> >
> > This is giving me headaches and I would really appreciate the feedback
> > of the community on this.
> >
> > Cheers
> > Julien
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#61651): https://lists.yoctoproject.org/g/yocto/mess=
age/61651
> > Mute This Topic: https://lists.yoctoproject.org/mt/102509834/1686489
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin=
@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >

