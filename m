Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D549AC3ABC0
	for <webhook@archiver.kernel.org>; Thu,  8 May 2025 08:31:11 +0000 (UTC)
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
 by mx.groups.io with SMTP id smtpd.web10.10652.1746693068933780643
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 May 2025 01:31:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=lHPNnIA7;
 spf=pass (domain: gmail.com, ip: 209.85.219.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6f54d3f3607so5781696d6.0
        for <yocto@lists.yoctoproject.org>; Thu, 08 May 2025 01:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746693068; x=1747297868; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=S10N84RgJH9X6qf2twkvddK8APYrGXNv+lmUU1gT/Z4=;
        b=lHPNnIA730G7rJMAEXEgvxDZkYwY/9imJMILB0qrRQE3vbAbrdVPoA650u6Jlibm52
         0gEJJswGL8PJMM9yJbzSxxrdNmqoi5+fFHFP3P7CKkMza6PTGVmaCqOaOQ+vtE4EaF+B
         dZF3L2s8OyU5Xtf/npl7Lfj3S2qvANjWIQ1/gHpl4xbk9vg3Ywk8LrvRlPgewWyZOxuX
         s1oH6UbLILO6tXVFmWHCll+b6BGPGD4E7fboYsiCxcpcd1KeOO6p9W5R9ZW/2CDRiiKT
         1rXzLQXAJ0lvqxNHCRO7CkV6zii+LnIvXuzHS7uXxbNrkfQcxylx2Q1PB+twXV8yXNVT
         RB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746693068; x=1747297868;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=S10N84RgJH9X6qf2twkvddK8APYrGXNv+lmUU1gT/Z4=;
        b=NMsFUkvLHU30/yInL/P02lB1wfx6sRnG7PWE8KcjHUs17XGbgth+T1o8YMq7X84Qvz
         /JL77eLlB2HdFqznpEc8nEhx8LK5ZDClF9ey0rjQ9FgNuZszBVqIurFMJKtnBMsvHml/
         G7z7AyGNUg8AhtAdm4XtGL/1672ExgZc11qFfX7aiycax+AVYVjXjs+Ab/MhnrI9lENN
         9hzrVIIv8kaLXBthSnPw5ikzv6QUva15coUEkKO/VGwvf54oMZB/ozTrfcQWMAKNPZ3s
         xJneLCm6sxLaDrqvNV0hBJbbFkhvxOHOrpFgw46QSMwamUs2K4G+s66l0FHYFRkUHCf5
         4OXw==
X-Gm-Message-State: AOJu0YzxTrzdvhTj5+MTjuyqbvfZa9S9dvoyO0eG3wA1HYIGr1OOlZxa
	wtfnNfGaSfiy4RCyKnjiul9DAXj8A0osIDGoHUa92bQohpJqinLfx9UUL62leIszgmaPx6sZPCH
	Q1v20t0+NbNxAFpx1RAvL7UduPCc=
X-Gm-Gg: ASbGncuuX9JSz1U5uHRd4aO7BMHOYhIP/uyeKcNrjUyDf+NV6N8AdWFpxjPCnkK7QN5
	o8nKK6ksS5K22MG3KyykY+87VQyEOtAbLmNBiclZid0LUiLR+EsT34P+og06+G/aI/SIlpiEZg6
	j2tyN2vYl06ZIZS72tW0LJ1Gs=
X-Google-Smtp-Source: AGHT+IHS5/2RwOk2+eC95S7nna2GUiJVdwjHwhWct7tRQ+KXVcIE1FQroiyoNKhMgsjoU/bnIBDkn3LhDTpZgynlNKQ=
X-Received: by 2002:a05:6214:e8c:b0:6e8:f166:b19e with SMTP id
 6a1803df08f44-6f542a0684cmr106029796d6.17.1746693067838; Thu, 08 May 2025
 01:31:07 -0700 (PDT)
MIME-Version: 1.0
References: <MW5PR13MB5632A56007A8DF3CFD6C3CF6FD88A@MW5PR13MB5632.namprd13.prod.outlook.com>
In-Reply-To: <MW5PR13MB5632A56007A8DF3CFD6C3CF6FD88A@MW5PR13MB5632.namprd13.prod.outlook.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 8 May 2025 10:30:56 +0200
X-Gm-Features: ATxdqUEncEyOVBVR15rKve5an95LMEUj62iztGbQLS7dhXn4Y0S9GMNKD7n7iUM
Message-ID: <CANNYZj_m08-F8B5K6-URB8nex0dJC7v04Jwt+jNff253Nfz6=g@mail.gmail.com>
Subject: Re: Status of bitbake-setup and kas?
To: "Bird, Tim" <Tim.Bird@sony.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, Jan Kiszka <jan.kiszka@siemens.com>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 May 2025 08:31:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65299

On Wed, 7 May 2025 at 19:08, Bird, Tim <Tim.Bird@sony.com> wrote:
> What is the current status of bitbake-setup?
>
> I'm basing this question on this email from January: https://lists.yoctoproject.org/g/yocto/topic/bitbake_setup_where_we_re/110666239
>
> Has this been integrated into the upstream yocto project yet?  Is it on track to be?

Various lower level pieces that enable bitbake-setup have been
integrated upstream:

- openembedded template tooling (oe-setup-build, template creation)
- formats and tools for layer fetching
- openembedded config fragments (this is most recent and only
available in latest yocto release)
- pipelines and tests for sstate population on content delivery networks
- smaller tweaks in bitbake, buildtools-tarball installation, etc.

Also see the proposal for 'providing official yocto build
configurations via bitbake-setup':
https://lists.openembedded.org/g/openembedded-architecture/message/2126

Implementing that proposal and getting bitbake-setup merged into
bitbake repository are the two last missing pieces. Bitbake-setup ties
it all together with about 500 lines of python code (which is far less
than kas :). The code is as good as I can make it, given the initial
set of features, it has tests, and has been ready for review since a
few weeks ago, but everyone's too distracted (as seen in the other
responses to you). On the other hand, I can't ask people to use it for
'real work' before it officially merges. I hope Richard Purdie finds
time for it in this release cycle.

> Also, what is the situation with the 'kas' tool?
> Will kas be submitted for upstream use?
>
> Is there any relationship between bitbake-setup and kas?

kas is successful and widely used, but it will remain an external 3rd
party project. We'll pick up the best ideas from it, once
bitbake-setup starts gaining users and feedback from them.

Alex

