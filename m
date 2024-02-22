Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957B7C48BF8
	for <webhook@archiver.kernel.org>; Thu, 22 Feb 2024 15:11:38 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web11.14876.1708614586292858386
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Feb 2024 07:09:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Tk5nW0xA;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: aladyshev22@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3c15d1bd5b1so3299593b6e.1
        for <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 07:09:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708614585; x=1709219385; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=V1o49HMxNpOsta3VLS71Xfw672zeK4F9veOMpyiCwVU=;
        b=Tk5nW0xATA+FATAy2crTfedD+lAG9SIoKxzgM4XH9w3BR238xFYrAI3gzUfehhobtP
         6SluneMh2+pxUs00YzAFta/Si6EiRJyk0s/yUxhx/8gyffw2jYXWX8hPe5gwfyUXeuN4
         QtsBr6pXT+x7XHanb76GbmIEqDvZidcRRnef9FWLEnf2dh++91AWiFZD4G/ozFcRzncc
         YUqx79EEZpp9Bs6BNMGuxhmtzQ8fIuxawO+nclg3wRIkU9z/7dOwP/0AIR1Ey21zn6oi
         Dsc8OwntQhrJO3KF9YS73HOZExtFSSA7XOmYMEB9yFijk9vLQMapNj4T9rhe0O361SMu
         HHsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708614585; x=1709219385;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V1o49HMxNpOsta3VLS71Xfw672zeK4F9veOMpyiCwVU=;
        b=n6rXnJn0k2dvjimR1tA8aduk3YkGGfQaCesG6AOVp5FVTdmRFQ+ApEiaqs0BBh5Kih
         0WvAzdBLKy52PyYezOQ3tsb4fhzouAu3qUwgpqUCuL7BhNLk3qNq4KrFOVwBKLYwpBzt
         OHtNfAb/GgZgbOv5haGwADdLOOrzfbaKvMXX3+nMCuZFavmehfE1Cmu0ITPQieIzWJaX
         58gzmZqAvpSOqZclvls7x1SKCplhk4J/kIeo38RxHsz43J/T+mM+2Ezwtd0jtKXj6t7f
         x+dVwlULS9xLxcr+lJqOi58WIMhmDeeUCeWAypOWVClPxQ++aB2rb52KOOZEEoUbEAmW
         9AgA==
X-Gm-Message-State: AOJu0YwciYcocv+XY6mUuDKfDQTsUr7Lk9w2Il1SPscw9BB88MiPR0eR
	WbVWSyUbiKTmK7PYuYfjEvlo7stRYDWh28/RhFndhkS3VRDGmTMnbgni7bCyygIfspVEspAHgA2
	gLTFyLPwT+OscyfrMOod6a/GCzLsUbPV4e1drUlWJ
X-Google-Smtp-Source: AGHT+IG6ayvgkAWo30Qa2Y3fUYmaTZmOlcZ5Kn0C2momUgO3Rva1TbvjTOVXqpGx4xA7LF8/q0aPNSB1hFgRyYoYj5o=
X-Received: by 2002:a05:6808:170a:b0:3c1:33c7:68bb with SMTP id
 bc10-20020a056808170a00b003c133c768bbmr24967538oib.31.1708614585395; Thu, 22
 Feb 2024 07:09:45 -0800 (PST)
MIME-Version: 1.0
From: "Konstantin Aladyshev" <aladyshev22@gmail.com>
Date: Thu, 22 Feb 2024 18:09:34 +0300
Message-ID: <CACSj6VW3yitnPuAeg=VOXnhB7D5dN2_UD7KStSaDYug39YL3vg@mail.gmail.com>
Subject: 'yocto-kernel-tools' requires git version much greater than general Yocto requirement
To: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Feb 2024 15:11:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62567

Hello!
I was investigating some problems with the `devtool modify linux`
command and have discovered that part of the problems is generated
from the commit
https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=923a9de418b3ca8592c3fd0a0d0b1e4b29533891
This commit is very simple and just adds the `--no-verify` flag to the
`git am` command. The problem is that this flag was added pretty
recently  (Jan 5 2023 -
https://github.com/git/git/commit/566902f2db3bdad9be7fb083c713f0d21acf111e)
and my host git doesn't have it.
Is it normal that yocto relies on such modern git? Because the yocto
documentation just says `Git 1.8.3.1 or greater`
(https://docs.yoctoproject.org/brief-yoctoprojectqs/index.html#compatible-linux-distribution).
And `git am --no-verify` works from something like `v2.31.6`
apparently.

Best regards,
Konstantin Aladyshev

