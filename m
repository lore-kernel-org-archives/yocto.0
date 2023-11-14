Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E4A8EC4332F
	for <webhook@archiver.kernel.org>; Tue, 14 Nov 2023 11:22:10 +0000 (UTC)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
 by mx.groups.io with SMTP id smtpd.web10.10460.1699960921004346711
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Nov 2023 03:22:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=dDWCMgi5;
 spf=pass (domain: gmail.com, ip: 209.85.167.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-507962561adso8559538e87.0
        for <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 03:22:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699960919; x=1700565719; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=o5cioV5hqTK5U5A/gMULMUCRnaUFdbATVUpxNLyq7xA=;
        b=dDWCMgi5CIlMIgwz8ZE8HpBnNDiIocOjsXVN2pM4inyPz51TCppMpW/ngtqDrSM4Ih
         GYVTOMx5kPplHSCZMWQ6TCOP1vKjeT7N52BFVzsZ7tf4NbinVQ7TsaSC30uT9zbnH0a4
         wHjuCGCV8yZZwvS5uZoh0Y7kc1mZRzeyC3g6kfNVTktEE+PMBW1ZTP+MLTh56jt21ioO
         y5nFsdLvBw9D5f7sVltRePCs+Qx7OqK94938PUawEOK9Fo9tK1ayl5kV84cQYGSMCB/7
         JcpISTMhUvAR/WY3s9bVBmK/iXbgMag+dxPgkPTtaLNES/gydeZJxhErXwFv6urt2IOE
         kEZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699960919; x=1700565719;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o5cioV5hqTK5U5A/gMULMUCRnaUFdbATVUpxNLyq7xA=;
        b=WhjXNlRH3z0ecn3ihk37lrFHBcVnG9eKOghSLT02Uq/aK4M1VgjusbyYQ8xuFBw+32
         GwfY7HQipjhb21I4RyA2eYIc4bDJdA1ioB7LgPxH03jgcrL87Obod5lNm4RncQAV3rcO
         d5jVfj+Yt/zhXiB4acAA2M5M5irVBCoyeDBPJRsJNT2cbpeoDuTLLnF0MHsB4bVZnQJ1
         8K7tQRo4JtyUJ7Anuz8qEeafWyBjhPL+aj6ZG/LUB7VnP+H0xW4SYdGjq/WbmvctKZv7
         0C06OnDFWFHniRKOuXntfVo0mlHdZL87X0ajXnlAITQZ38i/A5z3UeKDC+PrmIvXUl98
         6o/A==
X-Gm-Message-State: AOJu0YxlMHlLU4YetPf584ie4kR0a++WsZtsCPhRXBKwr89Cror8FUse
	hiQqn8ZAUYMdaZdmzW0gQxRBoxwX/FSMvMSzZsk=
X-Google-Smtp-Source: AGHT+IGJ83COUD/yqm/R3XsFLJ1Kwqn6HVO7WzVHs19hgugiW2F3sQ/mpu2TzyJNWZ7KCQ+AgvaMMqYsRDUNtrEGSDc=
X-Received: by 2002:a05:6512:73:b0:507:a5e2:7c57 with SMTP id
 i19-20020a056512007300b00507a5e27c57mr6080886lfo.18.1699960918823; Tue, 14
 Nov 2023 03:21:58 -0800 (PST)
MIME-Version: 1.0
References: <CAEHHSvZYOg73Gx6Jv_UM+7Ot9TGf3fOzCxxZMQ9s1sq89mJtfg@mail.gmail.com>
In-Reply-To: <CAEHHSvZYOg73Gx6Jv_UM+7Ot9TGf3fOzCxxZMQ9s1sq89mJtfg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 14 Nov 2023 12:21:47 +0100
Message-ID: <CANNYZj85qmQp=UPpTCd08n+VKq_06xOur2bEtDQ7yVi8CR8_8A@mail.gmail.com>
Subject: Re: [yocto] [RFC] devtool: support multiple sources
To: Julien Stephan <jstephan@baylibre.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, jon.mason@arm.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Nov 2023 11:22:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61678

I think no one actually anticipated all these corner cases when
devtool was written. In general it's simply not designed to handle
multiple sources in SRC_URI, it can do (tarball or git)+patches, and
not any of the other options. No one is expecting a fix for all of
them, perhaps it's best to keep the scope to plain gitsm://.

I don't have specific advice for the broader issue; if you have ideas,
it would be good to at least document them.

Alex

On Fri, 10 Nov 2023 at 17:24, Julien Stephan <jstephan@baylibre.com> wrote:
>
> Hi all,
>
> Sorry for the long message here, but I would really appreciate
> feedback from the community :)
>
> I am currently working on bug #14141
> (https://bugzilla.yoctoproject.org/show_bug.cgi?id=14141). The main
> goal of this bug is to correctly support git submodules with devtool.
>
> I currently have an almost ready branch here:
> https://git.yoctoproject.org/poky-contrib/log/?h=jstephan/devtool-submodule-fix
>
> I asked Jon Mason (reporter of the bug) to test the branch, he
> confirmed that its working for git submodules (i.e recipes using gitsm
> only) such as vulkan-samples or hafnium (meta-arm), but he also
> pointed out a new issue highlighted by the recipe edk2-firmware: this
> recipe is using gitsm for the primary source then extract another git
> repository inside S.
>
> This issue is not related only to gitsm + git recipes, I reproduced
> this kind of error with   cross-localedef-native recipe, using git +
> git or https + git.  But I think the issue is even more global: as of
> today devtool doesn't properly handle recipes that unpack secondary
> sources inside S. Let suppose we have:
>
> SRC_URI = " \
>   http://<some_url>.tar.gz \
>   http://<another_url>.tar.gz;subdir=mysubdir \
> "
> If I need to patch something inside mysubdir I would expect to have
> something like:
> SRC_URI = " \
>   http://<some_url>.tar.gz \
>   http://<another_url>.tar.gz;subdir=mysubdir \
>   file://mypatch.patch;patchdir=mysubdir \
> "
> Of course this is working, but if I run devtool modify, create my
> patch and do a devtool finish I would have something like
> SRC_URI = " \
>   http://<some_url>.tar.gz \
>   http://<another_url>.tar.gz;subdir=mysubdir \
>   file://mypatch.patch \
> "
> where mypatch.patch will patch files inside mysubdir as if they were
> originally part of the primary source.
> That might be acceptable (but I personally would prefer to have a
> patchir parameter matching the subdir parameter).
> Besides that, there is actually a bug here: trying to modify inside
> devtool a file that was added using file:// will add a new patch AND
> modify the original patch... (Tested on master branch with bzip2 with
> the following: devtool modify bzip2, modify Makefile.am, commit the
> modification, devtool finish bzip2 will create a new patch file AND
> also update the originale Makefile.am inside the recipe space)
>
> But things get really bad when using a git source as secondary source:
> SRC_URI = " \
>   http://<some_url>.tar.gz \
>   git ://<another_url>;destsuffix=mysubdir \
> "
> mysubdir gets automatically committed inside the primary source
> ("Commiting changes from do patch"). This is an issue because doing
> "git add" on a git directory adds it as a submodule (in a wrong way,
> the correct way of adding it would be "git submodule add url path").
> Here we end up with a submodule which is not populated into
> .gitmodules then "git submodule foreach" commands just fail.
>
> My hack is to detect that git directories were added after unpack and
> properly add them as submodules (" wip: support git tree extracted
> inside S" in my branch) but I am not 100% satisfied with this because
> it implies that devtool is managing secondary source differently if
> they are git directories or not..
>
> So the long story made short:
> * current implementation of devtool is buggy (at least with the
> scenario described above with bzip2), I may try to work on this latter
> * is the current behaviour of devtool acceptable ? (i.e not adding
> patchir parameter on patches)
> * is my "hack" acceptable to handle git secondary sources as a real
> git submodule?
>
> This is giving me headaches and I would really appreciate the feedback
> of the community on this.
>
> Cheers
> Julien
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61651): https://lists.yoctoproject.org/g/yocto/message/61651
> Mute This Topic: https://lists.yoctoproject.org/mt/102509834/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

