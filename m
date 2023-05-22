Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AC5AC77B73
	for <webhook@archiver.kernel.org>; Mon, 22 May 2023 12:26:19 +0000 (UTC)
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
 by mx.groups.io with SMTP id smtpd.web11.20406.1684758370748963152
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 May 2023 05:26:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=NaWmXI0d;
 spf=pass (domain: gmail.com, ip: 209.85.208.177, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2af2e1725bdso25943271fa.0
        for <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 05:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684758368; x=1687350368;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uxTZ1BjsKenKXF+ZxkXMafkr7Gh2Ayv6PhCrx1a3JkU=;
        b=NaWmXI0dnmimZByRXHwSjcJ02TCiFLJKKJ0F9F4+6RgH8Mj/MJWuBpdOMVrsVwPYsd
         3DoIaREOVKxoRtA7AAaDyiLnuUIQjHPOuOgRwlZU8ZRz4NrHW86daJ9DiE8SWN0C1hhw
         HAKeXhMqknRc4BppEU+314mH/MGFuaU1AJFhb/17nIUj8uqwpO8BxXd7guZX6g4CTsh2
         /DjGWa6qVAjf16CyxA0MAOV3GR3wOqR8PZ+7jXjbMEo2UkNgwKByYQHFUNquZAbZ2KjM
         AUEZ1hnuAg3cIxEb1qHBp0hzDXn32L2/rhhE22iMzmyHUILNFO9dPrOh3sO1Mw8lNLll
         Oe1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684758368; x=1687350368;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uxTZ1BjsKenKXF+ZxkXMafkr7Gh2Ayv6PhCrx1a3JkU=;
        b=c5S2z8e7cEGN4iDOJQ1HFAXnqUw+37TTKxDAWo48hJvyMk3YvGycz7qv9WjxnjbK6t
         8T0LC2CmiBnPB2QzyDXG4JipQ4sSbzi4Rh/LOTrvALnzHv31zC6exJ+iSN4R8m2dYprr
         pFXgMYh1/ribriJlsdUg8vbxJE1YQHp/tujAaXT9AzKvvs5dX1DQSdHcqZvb4fjQ8667
         0NRc1U4FurpFxwAdKDK/3M6iFFC+vlCLWdEUWm9yVHC9K8YQVFH8rLVyUwN2nDqTCg6J
         /NtwKK8So2jg4FMvb0ni4Kk6wxIb8UkaWW9OmzLa4OPDPDA68l/oZLLvH/x5i2RGJae7
         7h8Q==
X-Gm-Message-State: AC+VfDxEq9hALyC49rXvykHWudMyE/gflCUELZIY1GErmoA0Fnfm/Pyq
	uNDX1lGNrreG9G105KiI9ehl3tyL8wKEFDlVq6i8dHJXAYM=
X-Google-Smtp-Source: ACHHUZ6dGOP1Tsuq34avpSEskjRltDsHBu+ulBf87dYwsVKThl9jEESxP90nLh+sdwtvO+zl50lZeWKsZqK4Xvfwg34=
X-Received: by 2002:a05:651c:33a:b0:2a8:ea26:5c72 with SMTP id
 b26-20020a05651c033a00b002a8ea265c72mr3118939ljp.8.1684758368086; Mon, 22 May
 2023 05:26:08 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Mon, 22 May 2023 14:25:56 +0200
Message-ID: <CAAfyv37WLAeDSnxvWRHjeqPWBcG0eOP71SzSLfW1odT=VrO90g@mail.gmail.com>
Subject: core-image-weston mickledore
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 22 May 2023 12:26:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60079

Hi,

I'm using core-image-weston and adding chromium to the final image.
Weston is properly started on the hdmi monitor. I'm trying to start
chromium when weston starts with following:

[Unit]
Description="Chromium browser start"
Requires=weston.service
After=weston.service


[Service]
Type=simple
Environment=XDG_RUNTIME_DIR="/run/user/0"
ExecStart=/usr/bin/chromium https://google.com
Restart=always
RestartSec=5

User=weston
Group=weston


[Install]
WantedBy=multi-user.target

but getting this:

May 22 12:23:26 orange-pi-pc2 sh[254]:
[250:250:0522/122326.671204:ERROR:wayland_connection.cc(186)] Failed
to connect
to Wayland display: Permission denied (13)
May 22 12:23:26 orange-pi-pc2 sh[254]:
[250:250:0522/122326.674692:ERROR:ozone_platform_wayland.cc(233)]
Failed to init
ialize Wayland platform
May 22 12:23:26 orange-pi-pc2 sh[254]:
[250:250:0522/122326.674738:ERROR:env.cc(255)] The platform failed to
initialize
.  Exiting.

When running the terminal from wayland desktop chromium works fine. Am
I missing something to start it properly?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

