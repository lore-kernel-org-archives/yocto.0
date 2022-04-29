Return-Path: <scott.murray@konsulko.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 603DBC433F5
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 15:07:29 +0000 (UTC)
Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com
 [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web10.11414.1651244842454166598
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 08:07:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=L0TZl2uG;
 spf=pass (domain: konsulko.com, ip: 209.85.160.176,
 mailfrom: scott.murray@konsulko.com)
Received: by mail-qt1-f176.google.com with SMTP id fu47so5959355qtb.5
        for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 08:07:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version;
        bh=tTm6NyYpFfOgOu3qlGH95wBi5Z6dlPNlQLOXRCo4RYo=;
        b=L0TZl2uG8R4uV4JIsOvorYgj3UAvi07t1G0dyz0Me6DCDepG9gv0WSMHxPY5zlsFII
         gnd66ciaaPQSeABfMEhmbW0RO0znWUme0gj8QQj0AOoBS0ckcHuOnu7zjuuSsEP8Vi4R
         fk8Mp3xjM/z+ZUbxDXH3CQWPjwyTtl/y8rtso=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
         :references:mime-version;
        bh=tTm6NyYpFfOgOu3qlGH95wBi5Z6dlPNlQLOXRCo4RYo=;
        b=E3lTzCDdEYN6OUhvcIw80Rqj/v0m8GlBi9KRmi1m4lNuCFkohErrW6t3Mx25DErQqx
         yXbKRdUdJOFhUK+dAjAzLmOfhMJzd0Sf/CprSL0TTYmco4isZKTb54PRJRB7KTbIG6tS
         iRNC9vx5FKuN4+ZBS/23yDEcz3IsUphpDKQ/Em+e/w3cGFavYf7dVjyKRhwxioZ2vvsf
         YN+itDRl3P8k7t7WJL8VLpr5PC8bkWPLkPlQQ6tW/3xaqH+51JHoRUJYcg04pUbYOhe1
         8OrV9HhuWpyNEsTos7byPP++bnMrSFeTJtJXsgbxzre0zNxbK687zqtfU4rXRCuAiGH5
         gjYQ==
X-Gm-Message-State: AOAM531QZMWFGHK5vU9T8OFps1ueiS/Jyi2RArZrRkoiSrFlVO+AdAXe
	MIN3b95LadkIHqyxiFYp21WNCQ==
X-Google-Smtp-Source: 
 ABdhPJyBPtMPzoWnO59lP399v0/wOyP8hVnxZYokfi46D4tW80au6ZETPiOK8PlhyTjZuU5OTJEuMg==
X-Received: by 2002:ac8:5f53:0:b0:2f3:7318:aafe with SMTP id
 y19-20020ac85f53000000b002f37318aafemr15857152qta.231.1651244841126;
        Fri, 29 Apr 2022 08:07:21 -0700 (PDT)
Received: from godzilla (192-0-174-222.cpe.teksavvy.com. [192.0.174.222])
        by smtp.gmail.com with ESMTPSA id
 i25-20020ac84899000000b002f39777e722sm643320qtq.27.2022.04.29.08.07.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Apr 2022 08:07:20 -0700 (PDT)
Date: Fri, 29 Apr 2022 11:07:00 -0400 (EDT)
From: Scott Murray <scott.murray@konsulko.com>
To: Joel Winarske <joel.winarske@gmail.com>,
    Edgar Mobile <heideggm@hotmail.com>
cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Adding systemd to yocto
In-Reply-To: 
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
Message-ID: <5c7ccb89-5af6-78f8-f6b5-416d8e83369@spiteful.org>
References: 
 <DM8PR16MB4357BA2349F9D42C1786A5E8C7FD9@DM8PR16MB4357.namprd16.prod.outlook.com>
 <CABKMkPLwm1e_S+pdqw4j_J-oVokVWphdXiMAkiaME3MZvnyg3Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 15:07:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56963

On Thu, 28 Apr 2022, Joel Winarske wrote:

> Line 30-36 include changes to convert a sysvinit image to systemd.
> https://github.com/jwinarske/manifests/blob/honister/conf/rpi64_config#L30

The INIT_MANAGER variable added in zeus removes the need to tinker with
DISTRO_FEATURES and VIRTUAL-RUNTIME* variables, all it takes to use
systemd is INIT_MANAGER = "systemd". See:

meta/conf/distro/include/init-manager-systemd.inc

for what it tweaks.

Scott

