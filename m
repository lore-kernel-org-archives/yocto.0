Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 406F1EB64DD
	for <webhook@archiver.kernel.org>; Thu, 27 Jul 2023 22:46:13 +0000 (UTC)
Received: from mail-qv1-f65.google.com (mail-qv1-f65.google.com [209.85.219.65])
 by mx.groups.io with SMTP id smtpd.web11.20953.1690497971251951462
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jul 2023 15:46:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=nn7AIoqk;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.65, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f65.google.com with SMTP id 6a1803df08f44-63d2b7d77bfso9587746d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 15:46:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1690497970; x=1691102770;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zN/umsTSPAPFb5q3xdSxucwcmX96A+giII3jSVGPoVw=;
        b=nn7AIoqkj3fGo9LX/6eosPiaw/35htZyNVQVDeB2rfrAi4baCLPEIc0Y49u7YMFr/z
         ZHy6QH+RdluyueKesOP6LWfb7nWm2x9g6OLvWHU4DKXynbca6OLEbOmwE/tbqBPSkutw
         coSPRFkddL0dNnQ4AJhqH0lL5z/OsSbRfGSMONV3y0UMWElkee1Go4sbqeKQvJDwsLDH
         Zvqck+PduxW3cSl7+aNuTdj29ibQBsyKfFMp2gRoYSMCzN4a6bdOnmUzVwe/shuM3/rP
         vLI3wDnvQyi8Nl5puzt34WHnZI5iLmamxVzm9mwg94br85+xMyCDjqfLqi9yhLsEa0wm
         1eHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690497970; x=1691102770;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zN/umsTSPAPFb5q3xdSxucwcmX96A+giII3jSVGPoVw=;
        b=UCe/jf3rzha9Tdi3Gg4C8XVTHzShBchnUxlkzSsygRJoxPgLjirsiDhOFaBJM/sk7+
         lq9j7x1h269CeuZxpdnzgc/8CK8k7hV/pekeHYlfph7gILVyHv7IrrgRSCZpeKO3jSPU
         +A/m9c8fdTJxGzlh+xFjxXqhgQXS/y8GudkIKZCme5Avdqsgfu2lQSQ8QqIwY1QKVajL
         +kkY4VugPEjetrmTFVqe2pQpuRZz5HvR6x+Y/TFIDuS3lZZktnZGBQV5EzffSe5C8CJa
         FPGLpBEzjG4dsfyou+vQDX7AGHRG5l6JTMYJNoVW5/1iBlmmVUF5COimBzAHH3isGwIE
         JNTw==
X-Gm-Message-State: ABy/qLboETclDsY5aNNWv0yGHfd+qgXHotfsZ4oUFqTc3UWq3Wh/cAAY
	cUBuxs5ZGXY8EtmgBYWKF8TjtDLXftwnQCwfCZASKRhdXjL61JOXYQeyN/T4
X-Google-Smtp-Source: APBJJlFfpY82oXay+Ua/vpNh/970auKl6DWiS2Qfga8BhMwWoAQlNzC2m8YcYx4u0HeWHhiClHsi3troZSjaR6fDiiw=
X-Received: by 2002:a05:6214:1649:b0:636:39ed:4dce with SMTP id
 f9-20020a056214164900b0063639ed4dcemr822883qvw.20.1690497970091; Thu, 27 Jul
 2023 15:46:10 -0700 (PDT)
MIME-Version: 1.0
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Fri, 28 Jul 2023 10:46:01 +1200
Message-ID: <CA+EiEZLaKctM8jE1PFpOpiDpF9QG=0Jr7Scv79i0LBGZJ_r7dg@mail.gmail.com>
Subject: OpenSSH CVE-2023-38408
To: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jul 2023 22:46:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60670

I'm a Yocto noob so apologies if this is an obvious question.

I was just checking our usage of OpenSSH because of
https://www.cvedetails.com/cve/CVE-2023-38408/ and it appears:
1. We're using a vulnerable version (9.3p1 on main, 8.9p1 on Kirkstone/LTS)
2. The ForwardAgent feature is enabled by default
(https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/openssh/openssh/ssh_config)

There doesn't seem to be a bug for this yet
(https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=openssh).

So what's the process? Is this already being worked on somewhere or
should I upgrade the version? If the latter should I do this on
Kirkstone (which is what we're using) then main?

Thanks.,

Refs:
https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/openssh/openssh_8.9p1.bb?h=kirkstone
https://git.yoctoproject.org/poky/tree/meta/recipes-connectivity/openssh/openssh_9.3p1.bb

-- 
Tom Isaacson

