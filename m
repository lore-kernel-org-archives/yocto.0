Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 46BB6C02185
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 14:19:39 +0000 (UTC)
Received: from mail-qv1-f53.google.com (mail-qv1-f53.google.com [209.85.219.53])
 by mx.groups.io with SMTP id smtpd.web10.11610.1737123569528519178
 for <yocto@lists.yoctoproject.org>;
 Fri, 17 Jan 2025 06:19:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EJ/HIm5E;
 spf=pass (domain: gmail.com, ip: 209.85.219.53, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f53.google.com with SMTP id 6a1803df08f44-6d8f75b31bfso21671746d6.3
        for <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 06:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737123568; x=1737728368; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=IhWgXmM7V5v7/kH2MWAooS0yRl5eEw5syxDwHhzu9TU=;
        b=EJ/HIm5EhYo9scwF8fSpqVSKH/oM8TblODY5mdxoX/23ED365LyOvSolhYbfsypMXO
         jGxYLzg9IeZI5OpJj7z0thJT90stRBwnAiXaTxUNnvVavNR9NjyPvzgzECRyblkP/Jfi
         8dAjWzzrxJiIq21JkcUcFg+LCWOGgXjyPEVtSDQV3tqkYIFDMHGhcGnJQhBwhT9PlLl9
         bU2/v8NnJmRrsYfl9VIS2sW+rPmt3i1moO6fISMs7xhOecYvQg8gTyV8F5CNIQKegkqz
         94UV5X5MQbGkP9CaESA24CoDG6JGwn//9PBMummjB0a91mqg97GR2dbiACxjIU8pm01n
         ptog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737123568; x=1737728368;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IhWgXmM7V5v7/kH2MWAooS0yRl5eEw5syxDwHhzu9TU=;
        b=miRfH463diAPqiE0RkOG+fGo2DKqfo1Bb7lC+RWeyM/dKXmXfkz3bysxVMFm47iu/v
         jOOcShBHuvHr3mla1YVjFNq5H4ZVSO9DzVFrv3LlrX9pzNXYXSzK7x5viRJoOQMx7Xvn
         +AwgVhJltd7V+/OgcXzEXDo0xqdXp+kLSJUX6YIf891YSMO0M2Vv8KdD6iNoFNv84JeG
         7GimpOWCWXhKYEHv81vJJ3ZolFlYjNYlwCQs50Yqs31xTc/+MeAMmcWj9qtNNGXQpAiN
         Z0RcFSFS9MnOe3ZVr2rw3aEFu1NSMmZMh+W20/9Opq56aNsXwpsYdxP7JaRoUEVX1m2X
         t5ng==
X-Forwarded-Encrypted: i=1; AJvYcCU25m3B+Zw+45w1w2j75sVw7WJI1Sjs7d+0QntR048pjxzWRosrys5fqMxokz6QJkW1gVWQFA==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YxiTcYR0zvpF/0pxx+s1ro+y+2PNUTUtd2zi/EineHeS+HWXtS+
	JE41TgmnVkFt3zEQaq9VyBOlkBA70IyfXCacZLc1fPV/tw/B+xiJQnMwEqr2uUpTmzyOk5Yjkxs
	hUioKXPYo/xNSWlX8l1gmCy2MJa8dSeE/
X-Gm-Gg: ASbGnctI54yXKZ5VeY2Gn9l6q3lnr45lGBqVKLNR3ssPR5blMzN7mkV8eTm1zGbE4hy
	FW5jGUhwMmfHxReRGRU6E9caJ9Zca6VcPrPCgeGpb/4EEBgMme9jOLZXDiMwJ+ERqnZqtUi1L
X-Google-Smtp-Source: AGHT+IESdxwIewHFNkKzmBCfx/Wh8KKqGUzP4bylR+A/5ZLeuUqlPkt2FfvtZ+d8uvTzNklTwFj9X/3cQsnHmqM254o=
X-Received: by 2002:a05:6214:5404:b0:6d8:a754:9647 with SMTP id
 6a1803df08f44-6e1b217d4a4mr50054996d6.17.1737123568647; Fri, 17 Jan 2025
 06:19:28 -0800 (PST)
MIME-Version: 1.0
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 17 Jan 2025 15:19:17 +0100
X-Gm-Features: AbW1kvaSA5pjlvLXeJ8L0frKEORhx0hpc1t4e_OAThQFkdOVBhfgFH_lrQSiWUQ
Message-ID: <CANNYZj9KBw9-1sB86f_xqeYuE3rLpT1Dt2sDYbjjNC==EdBJeg@mail.gmail.com>
Subject: bitbake-setup, where we're at?
To: bitbake-devel <bitbake-devel@lists.openembedded.org>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	openembedded-architecture <openembedded-architecture@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 14:19:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64581

Hello all,

I've posted the latest iteration of the RFC bitbake-setup prototype;
the major change in this one is that it is now testable with
bitbake-selftest:

https://patchwork.yoctoproject.org/project/bitbake/list/?series=30849

I'd even say it's no longer a proof of concept, and is, in theory,
suitable for production work. If the subject of reproducible,
end-to-end yocto build setups (with a single command, against a single
config file) is interesting to you, then get it and play with it.

Now is the time where we can still easily make breaking revisions to
it; once bitbake-setup lands in master and starts gaining users,
making any changes becomes much, much harder. Implementing things from
intuition, experience, and personal preferences is okay; getting real
feedback is much better.

Thanks,
Alex

