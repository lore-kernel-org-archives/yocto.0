Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0C490C433F5
	for <webhook@archiver.kernel.org>; Tue, 15 Mar 2022 19:13:44 +0000 (UTC)
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web11.15444.1647371622770293152
 for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 12:13:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20210112.gappssmtp.com header.s=20210112
 header.b=0pGY3y5J;
 spf=pass (domain: burtonini.com, ip: 209.85.128.47,
 mailfrom: ross@burtonini.com)
Received: by mail-wm1-f47.google.com with SMTP id
 m42-20020a05600c3b2a00b00382ab337e14so1983809wms.3
        for <yocto@lists.yoctoproject.org>;
 Tue, 15 Mar 2022 12:13:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pNzc07McsEeWjMMphjo/Ifcq+zEg+6CXraPbeCdr6uQ=;
        b=0pGY3y5JmFVd1PXTcbie/KvkK8vFEqug2zf8OE18Lb3qfxe6KvgzoRE9nOxY60Wy+1
         cWVmc/7m23/7FUPeSZjkEMDpKBaXVMu5Vk1fGxsRv1+J0//wwYmjF4rF9BXA39H9Pe4D
         0aNeyafT7uu06i0EH5J7OxTzcbWm+RQalh0sCQYZAkUZUkp8KlzauEIwQNXAee2Osy8a
         qWZLPYsFiRbQ3zw7o7g56C2X6WLrhwVjXzFmnR1eL4A6sNFZmHw6Fcj4JyNYbg1c04uh
         AEvOvz1NuaR5MpMvmqI/SR9e96g8rFsZ1J1oyvYkTGcfRAFKx9kAqTqgfdtMmc02E2sr
         IjSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pNzc07McsEeWjMMphjo/Ifcq+zEg+6CXraPbeCdr6uQ=;
        b=YdMGeS9iem7PX2nWorw1UyqepJD3R+7HMpAqBBAvtZyiUGt3TSQl/iI4mDukabRym8
         5ch2VasF/LaB28lF8siIRlZCe0FWQzwjJGXX7+0b0YFab+56PDfJuTW/HZZaF527fu+V
         X90XIFxHkU2q3uOTaofy7Ty5GBvt2HS1Pxk/vv/u2809VbobpcGwaXJGk5VHCteWPsYI
         XuqPfSWXW8gVhG4aKjLcOxXREEtpuAGYHQPgpKMi5UriA7luQn7RGhbx0Iyk/5jk4rmS
         GmkCZGbEnBk2zt13Cpebq1c1Viqio1d1w+XEoeEJeF3F19Vn6T+8zAgZhwHvuYmOKURU
         yxGQ==
X-Gm-Message-State: AOAM533txdCeyxNNd4idvrh5NdLTi3V8mbw1qgs4OVcU4ooTF5AWzTPU
	gDoMXBh5mVrLC8keVEYpGpVB3uNFGUQX4pbe/5fkmQ==
X-Google-Smtp-Source: 
 ABdhPJwxRAvC04cI6b+9MwcgRshQcI2i8QXOKZbzgxfbG+f/dxc4D5JMjmFHI8yTMlF1R3QkAndTTHpjTSoRAeNl4ZI=
X-Received: by 2002:a05:600c:2219:b0:389:bc8b:ac48 with SMTP id
 z25-20020a05600c221900b00389bc8bac48mr4438033wml.14.1647371621137; Tue, 15
 Mar 2022 12:13:41 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CADKSc-hd-e=X83ot5KN=4tLQZqYVvGAnZBK-na6zRi=Fvb-tOw@mail.gmail.com>
In-Reply-To: 
 <CADKSc-hd-e=X83ot5KN=4tLQZqYVvGAnZBK-na6zRi=Fvb-tOw@mail.gmail.com>
From: Ross Burton <ross@burtonini.com>
Date: Tue, 15 Mar 2022 19:13:29 +0000
Message-ID: 
 <CAAnfSTv05zOvXd+NmH-57H6f4t==d11wFUot+Y34WSaTAyt4eg@mail.gmail.com>
Subject: Re: [yocto] Query regarding yocto build
To: Nupur Purohit <nupur100299@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 15 Mar 2022 19:13:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56453

Looks like the libraries are unversioned.  This is pretty bad practise
but https://docs.yoctoproject.org/dev-manual/common-tasks.html#working-with-pre-built-libraries
should help.

The best solution is to get OMADM to version the libraries, instead of
working around their unversioned libraries in the recipe.

Ross

